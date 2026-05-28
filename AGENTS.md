# MacroUIResize — WoW Addon Context

## What this is
A single-file World of Warcraft (Classic Titan era) addon that resizes the macro
frame to a 10x12 layout. Runs at **login** — no events, hooks, or saved vars.

## Source layout
```
MacroUIResize/                # Folder name must match .toc filename
├── AGENTS.md
├── MacroUIResizeConfig.lua   # Dimension constants (loaded first)
├── MacroUIResize.lua         # Layout logic (reads from Config)
├── MacroUIResize.toc         # Metadata + load order
└── README.md
```

## How it works
1. `.toc` declares `## Interface:` with versions spanning Classic through Retail
   (11508 … 120001). The file entry loads `MacroUIResize.lua`.
2. On load, `MacroUIResize.lua` calls `UIParentLoadAddOn("Blizzard_MacroUI")` to
   ensure the Blizzard macro UI is loaded, then:
   - Clears `MacroFrame.MacroSelector.customStride` to allow 10-column layout
     (default stride is 10 — setting it to `nil` keeps the default 10-column grid)
   - Rescales `MacroFrame`, `MacroSelector`, text area, scroll frame
   - Repositions `MacroFrameSelectedMacroBackground` and `MacroFrameTextBackground`
     to the right side of the expanded frame
   - Moves `MacroFrameCharLimitText` below the text background
   - Removes `MacroHorizontalBarLeft` anchor (hides decorative bar)

## Frame dimension convention
All `SetWidth`/`SetHeight` calls use `base * multiplier` where `base` is the
default Blizzard dimension (338 for width, 326 for height). This preserves
proportional scaling.

Multipliers are defined in `MacroUIResizeConfig.lua` as a `MacroUIResizeConfig`
global table. The main file reads from it — all dimensions are tunable in one
place without touching the logic.

## Non-obvious facts
- **No SavedVariables** defined in `.toc` — addon persists nothing.
- **No XML** — all layout changes happen in Lua.
- **No slash commands** — runs exactly once at load and does nothing after.
- **Chinese comments** throughout the source; title/notes in `.toc` are also
  Chinese (宏界面大小(10x12布局) = "Macro UI Size (10x12 Layout)").
- The code was originally posted on NGA forums (Chinese WoW community):
  https://nga.178.com/read.php?pid=855753147&opt=128

## Git workflow
- Remote: `git@github.com:salphal/MacroUIResize.git`
- Branch: `main` (single branch, single commit as of writing)
- No CI, no tags, no release process.

## Testing
The only way to verify changes is to copy the addon folder into a WoW Classic
install and log in. No automated tests exist (addon has zero testable logic
beyond frame API calls).
