if UIParentLoadAddOn("Blizzard_MacroUI") then  															-- 加载系统宏界面插件，成功才继续
	MacroFrame.MacroSelector.customStride = nil       														-- 解除宏图标固定每行数
	MacroFrame:SetWidth(338 * 2.48);                  													-- 设置宏界面整体宽度
	MacroFrame:SetHeight(326 * 2.12)                  													-- 设置宏列表区域高度
	MacroFrame.MacroSelector:SetWidth(338 * 1.51)   														-- 设置宏图标范围宽度
	MacroFrame.MacroSelector:SetHeight(326 * 1.83)  														-- 设置宏图标范围高度
	MacroFrameSelectedMacroBackground:ClearAllPoints();   												-- 清除选中宏背景的锚点
	MacroFrameSelectedMacroBackground:SetPoint("TOPLEFT", MacroFrame, "TOPLEFT", 338 * 1.51, -60); 		-- 将选中宏背景移动到右侧
	MacroFrameTextBackground:ClearAllPoints();            												-- 清除宏文本背景的锚点
	MacroFrameTextBackground:SetPoint("TOPLEFT", MacroFrame, "TOPLEFT", 338 * 1.51, -132); 				-- 重新定位宏文本背景
	MacroFrameTextBackground:SetHeight(505)               												-- 设置宏文本背景高度
	MacroFrameScrollFrame:SetHeight(500)                  												-- 设置宏文本滚动区域高度
	MacroFrameCharLimitText:ClearAllPoints();             												-- 清除字符数提示文本的锚点
	MacroFrameCharLimitText:SetPoint("TOP",MacroFrameTextBackground,"BOTTOM",0,0); 						-- 将字符数提示放到文本框下方
	MacroHorizontalBarLeft:ClearAllPoints();              												-- 移除左侧装饰横条的定位
end                                                     												-- 结 束判断
--网友提供
--https://nga.178.com/read.php?pid=855753147&opt=128