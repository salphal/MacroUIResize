-- MacroUIResizeConfig.lua
-- 尺寸配置模块 — 所有宽高常量集中管理
-- Dimension configuration — all width/height constants in one place
-- 基准尺寸参考 Blizzard 默认宏界面大小 (338×326)
-- Base dimensions reference Blizzard's default macro frame size

MacroUIResizeConfig = {
	-- 基准尺寸 / Base dimensions
	BaseWidth  = 338,
	BaseHeight = 326,

	-- 主面板缩放倍数 / Main frame multipliers
	FrameWidthMult   = 2.48,
	FrameHeightMult  = 2.12,

	-- 宏图标选择区缩放倍数 / Macro selector (icon grid) multipliers
	SelectorWidthMult  = 1.51,
	SelectorHeightMult = 1.83,

	-- 选中宏背景偏移量 / Selected macro background offset
	SelectedMacroOffsetY = -60,

	-- 文本背景偏移量与高度 / Text background offset and height
	TextBackgroundOffsetY = -132,
	TextBackgroundHeight  = 505,

	-- 滚动区域高度 / Scroll frame height
	ScrollFrameHeight = 500,
}
