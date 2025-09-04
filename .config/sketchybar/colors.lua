local M = {}

local with_alpha = function(color, alpha)
  if alpha > 1.0 or alpha < 0.0 then
    return color
  end
  return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
end

local transparent = 0x00000000

local rp_moon = {
  base = 0xff232136,
  surface = 0xff2a273f,
  overlay = 0xff393552,
  muted = 0xff6e6a86,
  subtle = 0xff908caa,
  text = 0xffe0def4,
  love = 0xffeb6f92,
  gold = 0xfff6c177,
  rose = 0xffea9a97,
  iris = 0xffc4a7e7,
  pine = 0xff3e8fb0,
  foam = 0xff9ccfd8,
  highlight_low = 0xff21202e,
  highlight_med = 0xff44415a,
}

local rp = {
  base = 0xff191724,
  surface = 0xff1f1d2e,
  overlay = 0xff26233a,
  muted = 0xff6e6a86,
  subtle = 0xff908caa,
  text = 0xffe0def4,
  love = 0xffeb6f92,
  gold = 0xfff6c177,
  rose = 0xffebbcba,
  iris = 0xffc4a7e7,
  pine = 0xff31748f,
  foam = 0xff9ccfd8,
  highlight_low = 0xff21202e,
  highlight_med = 0xff403d52,
  highlight_high = 0xff524f67,
}

local odp = {
  base = 0xff1e1e1e,
  surface = 0xff282c34,
  -- overlay = 0xff17191d,
  -- overlay = 0xff23272e,
  overlay = 0xff282c34,
  muted = 0xff5c6370,
  subtle = 0xff8b949e,
  text = 0xffabb2bf,
  love = 0xffe06c75,
  gold = 0xffe5c07b,
  rose = 0xffd19a66,
  iris = 0xffc678dd,
  pine = 0xff56b6c2,
  foam = 0xff61afef,
  green = 0xff98c379,
  highlight_low = 0xff21252b,
  highlight_med = 0xff2c313a,
  highlight_high = 0xff3e4451,
}

local theme = odp

M.sections = {
  bar = {
    bg = with_alpha(theme.overlay, 0.6),
    border = theme.highlight_low,
  },
  item = {
    bg = theme.overlay,
    border = theme.base,
    text = theme.text,
  },
  apple = theme.text,
  spaces = {
    icon = {
      color = theme.subtle,
      highlight = theme.gold,
    },
    label = {
      color = theme.subtle,
      highlight = theme.gold,
    },
    indicator = theme.love,
  },
  media = {
    label = theme.green,
  },
  widgets = {
    battery = {
      low = theme.love,
      mid = theme.gold,
      high = theme.pine,
    },
    wifi = { icon = theme.rose },
    volume = {
      icon = theme.foam,
      popup = {
        item = theme.subtle,
        highlight = theme.text,
      },
      slider = {
        highlight = theme.foam,
        bg = theme.highlight_med,
        border = theme.highlight_low,
      },
    },
    messages = { icon = theme.love },
  },
  calendar = {
    label = theme.subtle,
  },
}

return M
