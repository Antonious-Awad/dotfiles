#!/bin/bash

# Exit immediately if any command fails (good practice)
set -euo pipefail

# Bundle IDs
CHROME_BUNDLE="com.google.Chrome"
SLACK_BUNDLE="com.tinyspeck.slackmacgap"
KITTY_BUNDLE="net.kovidgoyal.kitty"

# Function to check if an app has at least one window on workspace A
has_window_on_A() {
    local bundle="$1"
    # --count returns just the number; faster and cleaner
    count=$(aerospace list-windows --workspace A --app-bundle-id "$bundle" --count)
    [ "$count" -gt 0 ]
}

# Check if ALL three apps already have windows on A
if has_window_on_A "$CHROME_BUNDLE" &&
   has_window_on_A "$SLACK_BUNDLE" &&
   has_window_on_A "$KITTY_BUNDLE"; then
    echo "All required apps (Chrome, Slack, Kitty) are already on workspace A → skipping arrangement"
    exit 0
fi

echo "At least one app missing from workspace A → proceeding with arrangement"

# Optional: small delays to avoid macOS focus/move race conditions
sleep 0.2

# Activate & move each (if already on A, move-node-to-workspace is a no-op)
osascript -e 'tell application "Google Chrome" to activate' || true
aerospace move-node-to-workspace A

sleep 0.2

osascript -e 'tell application "Slack" to activate' || true
aerospace move-node-to-workspace A

sleep 0.2

osascript -e 'tell application "kitty" to activate' || true
aerospace move-node-to-workspace A

# Now switch to A (safe even if already focused)
aerospace workspace A

# Force root container to tiles + horizontal **only on this workspace**
# (this affects only the root of A; nested containers keep their orientation)
aerospace layout tiles horizontal

# Now arrange the grouping
# Assumption after moves: windows appended roughly in order Chrome → Slack → Kitty (left to right)
# Focused is on Kitty (last moved)

# Focus left → should focus Kitty's left neighbor (Slack)
aerospace focus left

# Join Slack with the right window (Kitty) → creates vertical container for Slack + Kitty
aerospace join-with right

# Optional: balance sizes after join (looks nicer)
aerospace balance-sizes

echo "Arrangement complete"