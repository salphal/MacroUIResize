# MacroUIResize — 宏界面大小 (10×12 布局)

Changes the macro frame to a **10-column × 12-row** icon grid layout, with the
edit panel shifted to the right side of the expanded frame.

## Installation

Copy the `MacroUIResize/` folder into your WoW `Interface/AddOns/` directory:

```
Interface/AddOns/
└── MacroUIResize/
    ├── MacroUIResize.toc
    ├── MacroUIResizeConfig.lua
    └── MacroUIResize.lua
```

The addon activates on login. No slash commands, no configuration needed.

## Compatibility

Supported WoW versions (declared in `.toc`):

| Version | Client |
|---|---|
| 11508 | Wrath of the Lich King Classic |
| 20505 | Mists of Pandaria (older) |
| 30405 | Warlords of Draenor |
| 38000 | Shadowlands |
| 50503 | Dragonflight |
| 120000–120001 | The War Within (Retail) |

The addon runs on **any** client where `Blizzard_MacroUI` exists — Classic
through Retail.

## How it works

`MacroUIResizeConfig.lua` defines all dimension multipliers relative to the
default Blizzard macro frame (338 × 326). `MacroUIResize.lua` reads these
values and applies them to the macro frame, icon selector, text area, and
scroll frame. The addon runs exactly once at load and does nothing after.

## Customizing the layout

Edit `MacroUIResizeConfig.lua` — every width, height, and offset is a named
constant. For example, to make the frame wider, change `FrameWidthMult`:

```lua
-- MacroUIResizeConfig.lua
FrameWidthMult  = 2.48,   -- default: 2.48, larger = wider
```

The main `MacroUIResize.lua` file does not need modification.

## Credits

Code originally posted on the NGA forum (Chinese WoW community):

https://nga.178.com/read.php?pid=855753147&opt=128
