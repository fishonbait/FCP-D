<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20211223" releaseVersion="11.0.0">
<TableDataMap>
<TableData name="表格1" class="com.fr.data.impl.DBTableData">
<Desensitizations desensitizeOpen="false"/>
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select trunc(sum(运货费)*10)/10 as 总运货费,date('now') from 订单 where 雇员ID is not null]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="表格2" class="com.fr.data.impl.DBTableData">
<Desensitizations desensitizeOpen="false"/>
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select trunc(sum(应付金额)),count(distinct 运货商),count(distinct 客户ID),count(distinct 货主省份) from 订单 where 雇员ID is not null]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="表格3" class="com.fr.data.impl.DBTableData">
<Desensitizations desensitizeOpen="false"/>
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select 货主地区,trunc(sum(运货费)) as 运货费,'元' as 单位 from 订单
where 雇员ID is not null and 货主地区!=''
group by 货主地区
order by 运货费 desc]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Desensitizations desensitizeOpen="false"/>
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from 雇员]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="表格4" class="com.fr.data.impl.DBTableData">
<Desensitizations desensitizeOpen="false"/>
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select 姓名,trunc(sum(运货费)) as 运货费
from 订单 left join 雇员 on 订单.雇员ID=雇员.雇员ID
where 订单.雇员ID is not null 
group by 姓名]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
</TableDataMap>
<FormMobileAttr>
<FormMobileAttr refresh="false" isUseHTML="false" isMobileOnly="true" isAdaptivePropertyAutoMatch="true" appearRefresh="false" promptWhenLeaveWithoutSubmit="false" allowDoubleClickOrZoom="true"/>
</FormMobileAttr>
<Parameters/>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<ShowBookmarks showBookmarks="false"/>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-2500135" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<appFormBodyPadding class="com.fr.base.iofile.attr.FormBodyPaddingAttrMark">
<appFormBodyPadding interval="4">
<Margin top="4" left="4" bottom="4" right="4"/>
</appFormBodyPadding>
</appFormBodyPadding>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="雇员统计"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="雇员统计"/>
<WidgetID widgetID="88c6784d-22ae-4827-acde-e937089d835e"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="雇员统计"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" showArrow="true">
<TextAttr>
<Attr alignText="0" themed="false">
<FRFont name="PingFangSC-Regular" style="0" size="96">
<foreground>
<FineColor color="-1" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<buttonColor>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</buttonColor>
<carouselColor>
<FineColor color="-8421505" hor="-1" ver="-1"/>
</carouselColor>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="true">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-1118482" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-6908266" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0" themed="true">
<FRFont name="simhei" style="1" size="120">
<foreground>
<FineColor color="-13945534" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<TitleVisible value="false" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<SwitchTitle>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[默认]]></O>
</SwitchTitle>
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-1118482" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="true" themed="false">
<borderColor>
<FineColor color="-1" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<AttrBorderWithShape>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor autoColor="true" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
<shapeAttr isAutoColor="true" shapeType="RectangularMarker"/>
</AttrBorderWithShape>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
<Attr showLine="true" isHorizontal="true" autoAdjust="false" position="6" align="9" isCustom="false"/>
<TextAttr>
<Attr alignText="0" themed="true">
<FRFont name="宋体" style="0" size="72">
<foreground>
<FineColor color="33023" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" themed="true">
<FRFont name="宋体" style="0" size="72">
<foreground>
<FineColor color="33023" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${VALUE}"/>
<params>
<![CDATA[{}]]></params>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="center" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
<gaugeValueLabel class="com.fr.plugin.chart.base.AttrLabelDetail">
<AttrBorderWithShape>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor autoColor="true" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
<shapeAttr isAutoColor="true" shapeType="RectangularMarker"/>
</AttrBorderWithShape>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
<Attr showLine="false" isHorizontal="true" autoAdjust="false" position="3" align="9" isCustom="true"/>
<TextAttr>
<Attr alignText="0" themed="false">
<FRFont name="Verdana" style="0" size="80">
<foreground>
<FineColor color="33023" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<PieCategoryLabelContent>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" themed="false">
<FRFont name="Verdana" style="0" size="80">
<foreground>
<FineColor color="33023" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img data-id=&quot;${CATEGORY}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${CATEGORY}"/>
<params>
<![CDATA[{}]]></params>
</AttrTooltipRichText>
</richText>
<richTextSummaryValue class="com.fr.plugin.chart.base.format.AttrTooltipSummaryValueFormat">
<AttrTooltipSummaryValueFormat>
<Attr enable="false"/>
</AttrTooltipSummaryValueFormat>
</richTextSummaryValue>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="true" isRichText="false" richTextAlign="center" showAllSeries="false"/>
<summaryValue class="com.fr.plugin.chart.base.format.AttrTooltipSummaryValueFormat">
<AttrTooltipSummaryValueFormat>
<Attr enable="false"/>
</AttrTooltipSummaryValueFormat>
</summaryValue>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</PieCategoryLabelContent>
</gaugeValueLabel>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="false" duration="4" followMouse="false" showMutiSeries="false" isCustom="true"/>
<TextAttr>
<Attr alignText="0" themed="false">
<FRFont name="宋体" style="0" size="72">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" themed="false">
<FRFont name="宋体" style="0" size="72">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img data-id=&quot;${SERIES}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${SERIES}${VALUE}"/>
<params>
<![CDATA[{}]]></params>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="true" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground">
<color>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</color>
</Background>
<Attr gradientType="normal" shadow="true" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-16777216" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-3355444" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="false" themed="true"/>
<FRFont name="simhei" style="0" size="88">
<foreground>
<FineColor color="-8747891" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" layout="aligned" customSize="false" maxHeight="30.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor autoColor="false" themed="true">
<borderColor>
<FineColor color="-1578256" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false" themed="true"/>
<FRFont name="simhei" style="0" size="80">
<foreground>
<FineColor color="-8747891" hor="-1" ver="-1"/>
</foreground>
</FRFont>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="true"/>
<PredefinedStyle themed="true"/>
<ColorList>
<OColor>
<colvalue>
<FineColor color="-12999178" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-7287309" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-600992" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-422004" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-8595761" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-7236949" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-8873759" hor="-1" ver="-1"/>
</colvalue>
</OColor>
<OColor>
<colvalue>
<FineColor color="-8935739" hor="-1" ver="-1"/>
</colvalue>
</OColor>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<GradientStyle>
<Attr gradientType="normal">
<startColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</startColor>
<endColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</endColor>
</Attr>
</GradientStyle>
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="66.0" supportRotation="false"/>
<VanChartRadius radiusType="auto" radius="100"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="姓名" valueName="运货费" function="com.fr.plugin.chart.base.FirstFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[表格4]]></Name>
</TableData>
<CategoryName value="无"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<UUID uuid="7b6eeca1-2a68-4744-9260-7ec885ba64af"/>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy" controlType="zoom" categoryNum="8" scaling="0.3"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0" themed="false"/>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" themed="false"/>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="" isAuto="true" initParamsContent=""/>
<params>
<![CDATA[{}]]></params>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Attr gradientType="normal" shadow="false" autoBackground="false" themed="false">
<gradientStartColor>
<FineColor color="-12146441" hor="-1" ver="-1"/>
</gradientStartColor>
<gradientEndColor>
<FineColor color="-9378161" hor="-1" ver="-1"/>
</gradientEndColor>
</Attr>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor autoColor="false" themed="false">
<borderColor>
<FineColor color="-15395563" hor="-1" ver="-1"/>
</borderColor>
</newColor>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
<ThemeAttr>
<Attr darkTheme="false"/>
</ThemeAttr>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2" allowFullScreen="true" functionalWhenUnactivated="false"/>
<MobileChartCollapsedStyle class="com.fr.form.ui.mobile.MobileChartCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
</MobileChartCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="267"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="293" width="375" height="267"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="雇员统计-标题"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report0" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="雇员统计-标题"/>
<WidgetID widgetID="8abe9903-b13f-45ec-95ad-5a2b20d246cc"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="雇员统计-标题"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" borderRadius="6" type="0" borderStyle="1">
<color>
<FineColor color="-5000269" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[609600,12039600,1600200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__1A6E251559DBF8BE574DAB65A8BDF6E8">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n(7;XMM^W,WiLl!e?N9Vi,%U`LOF#2Y&U/#V[6cIlGV(W&>nk+i
ImHNdjZjqrNmOD-6<PF3Bhc.U(K?0(IYr/CtZoR!GY(=XDE[##A;bQZZ%09`P~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[雇员统计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[详情>]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="网页链接1">
<JavaScript class="com.fr.js.WebHyperlink">
<JavaScript class="com.fr.js.WebHyperlink">
<Parameters/>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<URL>
<![CDATA[https://help.fanruan.com/finereport/]]></URL>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="1" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="0" size="72" underline="1">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m?i6"dTO3&Bq2GrB%4sP1J94@lIb=$B&jD<9'p)MPB[<NajENH9h,X,BVoD.VG?.TbA0+JMB
[qPi<AV9=$gt%nUcp\Ortqk+<pC9>lHndSor?<[h]A?8q[8<pmJZD?oB^nong,BQ/\AIl!!&d
8B?tr-!.9s;nbUa32c=Y1HjKd4#s3@nPlK![KuqZI_\0`OQJ?3-\)5[+USh=Go8EJ9l.)e0&
"Gp+*8YntDKbdeUKpBa01'!1"PqDtGr0%L_D;]AcD7+GCpSXL04<WI*d-9rJoCdCqs/Y5O(@^
E3`VPt4H1#1e+a`@f8<9!arW7lT)Q"qXQD"q,NHZJ*\st0YJIDN5rt\F;lJcMt1X*u$'LUa5
[KJ,ts0)]ANrIqNn!%>*sFU^$NbD<&9q]ASt8qqgBtCP-fJR!ifR`]AVa_!8tc@I&,7%0C`nCS2
(,H%X?ukp\(hN!J!*ui=:C*G!i6T_39ua!8KmG'dKQMitG-*K+N[^@7?OiHo&R2a4$DdTGl\
j!&RDsfrNt-4B1&_n+Q;[')L@'fM8Cr99FhZM^(kF<:*mnc#k/$o=\UA$k^2"ka*q`S71Zr>
4J#[FXdR`(@Qq7InNF8cj$M%lZW+g3BfZ9ikG?Qn`7:5VQ60G^YBV&*QKd^nD2$Xeg?Zlo"l
p`=ET+?eq7*P;2\)r^k\gl6:%"n;`WT%]AlL-\P0P)+/9YrA.5W4H1/Oh.[T5p6hq_mu&,*g9
4P,g'.`D1B`P)3>'7R7@m#tZE/"_tc-E>QmU(Xu_[K?2-VQ:n*Y#u:V.&Ifs>]AoWc$joBpa3
S^GUF*/@Mlg-lY&k'5bWXFmi6gBp'/?d@V@#LHT6<?&^VGR1[dqOB$Z:*6g(5c\2kE1XHZj%
j3j:Cs7af:K9GbqlW%1dR'E3>I1./RQi*OU<Lkj`md3`FjfFLai2JN_./^fZ:&75K.+Lm^<I
.T*!g'G)Bl78`B@VQ#qT1NdUkU/1]A9)bjE*p5GcK4\VURJ(e2OTL@KWP'a+T-b7f#D9fL8S;
PD[d]A:G2'r(lR&)`;:D7-po07'"]ASUqs*hF4t,3`j#HH#:-g[A<gBIhFL&*U0'E%UAU]A,I)!
nA`&T^rk5cV"WV/MeC$;P1fQM/iUP"bhZ$GGnMWEd442;HQ-8!i9"Zk8]A;K^krcCZ3NsLO-M
'!F/Ve$s93kGKD+K'h<;q"W3YG1g&Y6$>S&L=GE_u0#l5Z;/.JStphhgjQAKqb!8L&X\(!9'
IJV9KklO-lR%2((8ISW5^8CnL4pJ0;X7uTgG\S&hH#2jk"@iNFp:*5>^]A$O[*D\-bo+^e*%O
B7a/FocaVL*.NU.M\kO9\*Nb?+[ilTAQ31Qm/90s)?Ub5:191p"PuAfFD1iW#G_Pl277i>L_
t:\(2$'0'0Fu6_q^.+()p6T:M.[:(arbgB?NaBM'SR7.@]A]Aqf#d\SMip`C6W-!664fp7!h(a
*P]A%H2Fo'SF-Haj\hc]A=T8lcsr\V?Re!p?8T,:tF#/+PRfRfOEPOC,RHNd9o7X,j=+n?uXP?
MtnNO-0hi,r,YKYd!)dt9%W,BfeH=P?q:]AQ,e/ZcJgVUDE.W7r+5P)e#Aohqb<0DjB:0PP,.
E=u(B?hYbs@O,)c!N2KljAu`F-N#Mn@BM6Pdoh[C[VkecZqkBm#-Gq^-=;!O/9c.j4iYQ@Ad
:h_9h^6^pU:*[4?hBobXQW1bL0r"bb!0)+$_N]AfPl:6bfm8VsS9h:Rf/SI!)T]Ab>o`^Ij6rN
K"9=_rIZ&`A'AXReE/Q"ufBC)dF%8D&BH.9gZp,Q;DMGbV6;lMNQnZdqtiU/Tn#6nTY4'k-+
ifE+:\+VnL?FacCWJl:.h6\Z1oEZJZfet+B>11K?B8,lQ0*T*(rb0jkq>bNFZ)$pUcZ-?-E,
C`Tq,Q74VHLB;MqMYOJ'\R$qQc//40dUQY8mr72lB@WK7Pca=t9ch_8T/<1>Mt&AF,i5c9(i
t,4Ub;+Dr=QX\iKoa4^&D's<,2jeTudj&J:<j9OPn^sD7R'4h4R,1`\SU3]AjPM-lZo'o53l6
Snn90kN>SYe1UQG?9L#&X_,1q$0T-dR:1B'WX!GFq"%%KN+jN`<K(:S>bhjA<p`gNkhh0#)-
sj+T?@;F=mdRdQei*b\VTNHSa'dXL5T^&_U>G(?NiFFFADKW3sjL6HLNej-%p1c*nHc12tCD
H`q&)Yj"Gh%--cY]AX;nb'+R_(lT"gH2r]A5\D<?i':,BglN%7O(*N7lG3fnC=$ESr.K`/I;b:
DuE&aM4_NUMdj4!6_TQ5Y7Ho[Q*'?qbT*/88q/)<Js)S4XB/a=$cY+nF-bp]AR!W89(Noc(An
!ZU]A>Bl6[J'`moF0nB_P5^f@_?87qQ*Sa#^:1QTc@i\IZL"E!3a*u&oCkSZ8Z4ZCt\`Ut$,#
Jpcc\X"I,=9=p>/G6k!;Imk^_=SB5@W$"+J@k.JOmkta(9'Ka5-&4,<5Ve)`IeKpILUDOd4X
;')DoeV4R=JEOlbMQ#srZr.-_VLM1ilkL<O5(#QRp(!g3$8ZP.O5\oT?]AN>u2!]A&,SRQ5lTI
EFT4!EQL4^QrO1q7mCWJ-d97n0u:F-KFXg&I(PO(<g>EVM]AkL%]A#Ll;OL=de1Z'Y0!H8MsXt
*5g1q$+<@!4h,E<qLF__]A&B>_<16QN"g=_R:V3X#%jWWdt'd!p+3uYj$mPkC878"$To>R1*s
[\j^&=o2sAffjW>R[f"H>0kiDhni;^EoK9E'N222n0oefioA!7Y`$Yj]A5\sK+L\AD1`(`QBF
^,XS/XsuHD%@.gMflaY_></TA^P@)QOgX&=gYP=e1`&BC,a:E]Aeak(>/4SthVC(=Jl:+%FIq
Sd8Nq%Vo)/fNEYOq@B$NBGHae%aSc8Em9Z+;>m[H3HfcCg_N7sT*l0QJWCF.LW_&=TFk`(MS
1L^/8Z)o-n=24;t<t>fZ0LKL!D3XT%RjVDuE><$]AUpoH7&5$jOO49<3]Ak"=@;/d_3#Rt&%T_
4.$KY=CcY(--1kBoA<lUpO?QRd9Y/OPk0EGbL#0T6s"D$>0s?P3\,kC93&^DRY(f[kBXn>gC
Rc^e4^,hctqmdIA_N0_fD&QIS,7?Z5CU0dcAlTkO#XpC)A+oWomWcV:5$V&93&^2^jHuF,A8
a=H?)M(q#E?]A"ZnjN0XEW4&I;_KJm\/G!^k<^hC.&Vo1Scq,7I0VW9+E!F7,l2X(3_SNYC9G
9MaVt;P'T\$Y=/9s0)"h1IjLn-[hh!Hr]A$NFcpoHK[Y)r>EI`:'"\e;+TFPilL8/HE$Ek1)'
TL=-@P1KV@=)7?aabJES2$JB*Ij%^Y@V-Rfd]Aogt=0)=l]ASF0&C#e_dF;!KX4_pk"L\KVr`>
r)RPk3mOkeNe8:thYaL&m;N:gTUq08=7jTGMi`m+9Zskt:Z79D"N5#k\'\EeLVJ8;k@C%Neb
iXBg@A2::DpY*(L]A#fk.UWp+S#J2rZs7PN[t25JB0D#H)p#_0sV^bEkAQ>;1+XM!Q)*]A<9im
>Q+Q]AJ9XV77_-]AR2p\Bh\mK(3;lpSYQql>_W3.01BCA^`n`mTJm$j^%s@8-G%]Aa5W[uqC0#d
KT'bbT@NbqhRCK*o4lC+O'mb!MRp%Hm6aN62<:afKcBI=:W]A;gcHh_f\AJ%k%qd/.EHQ\Djl
'DV8(/NMECMg9<=O)B@9h(;]A:,39Y+\u!IfWkN?Yrl/DdY.tCV=c/?d_7lU^bNYF??[2Pg/k
olo)QB7q.4iH6`Mo-+.OAtdiUQQIQY)qT\m!B)R<A+sN2-G!::tF/PIT#l0&K-BnnM=Q^BuE
XTTN9\H0U)ZD85Bi^r4A(;d"r`k!idjCAH'W`i0iZTBhp09$g^8?LBW5j/-JAq6YELhs*ZP5
ari)VWlef[^"RbH`1g8rT$-.aH\jnQbnn5jX(QVcANVRlTJ1E<)-tQo)b1k9+(JUI_W;,0?`
,J%hmhX?gIYj9e+#Y;KR!B]Alf4j<5ds#('S]ApMV`LqXn5]A4pLGGS4]A\!(q-:;^iU<A^`a5Jt
OgZb&pFkH''t*@]A-jQ')hjbd7:FJ813BdAS\lCI;49+hMF<qehcA=&G5Cor.;V]AH,f.d)BC^
*A668IL1/>G&>7I[YA-[HitM*jZQN"m:O;"i8kZ+:S6]Aitp:p2<&<0QG6SDK,$0c").Y6g.#
P_-k51dYt&l-Br"<c1f-:>C*t(qp8uj,J^Yu]A"WO4kHasm]AJdil^od$$I(+6HB)#sM$AF9G`
a;<\F$gF$o9ojZ\%P(A/kjNkrj)Xnp?!%e3Y*56@X*r!%98((_c10u6VR:Q+28W<?[2M7qe$
FU=,E^Yr3SiPNTPFnkkBXJ"CrFT]Ao3.U&_A+l]Ak`e2\J8BD?-XQLmC;.+i=o;D[oCC!''-r]A
KSBaa%dQEb\gAJeUSm51`!Iobk75@)O1-kaEkIsTf2ON;7>9P5JFNA8Iih+]Aa=&6b8)fkDjt
W2P$TZ]AP4pbEGf4rt-J]A<*W;XrJ*I=%`u]AXh0(B=-)g^R\%(8K#55R40AkB7Cht-.f4.7F-B
mjg/:dn,o'a+c3-n]A$Uha=X#&gXM,[A\ODJfbD1?Fm6VblerIb,#6TKHXO<Nuo<JCX[b(5uj
NN;L$6sP=X7,sohN,`NN<DI2OG=FO`9$GDRUM4JGT5pTE+U-rfQXe%Bj6?<TDXj<=]A>sf!$=
&Ud'DZYXlK_:2S]AG?J_24fr*beef"=LXp\3A,Pcs$tUXB,#n9.a>"LB,\!:<";9k^Xm!<E,l
b816!kCAQTWogOn_8_84pNliZ32?BD`q(VIMiB[AK6gZRlXdc2Qh@Xjf#rAB0C*2_XI&Uc?I
m;Gq>ZYkUg4h>h153I"Q=ge'!$?uOR$]AWk@INZ21Qb@W(0#9;3-%QUE9*,7m6-7O*]A<N*qcI
%4oX?S>N<-49ffe,C45/bSu9p.9n8[JIpIq<q!5(^O*^_2^lQdP,08/i%otXQSCaSneR)\^n
NR~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="272" width="375" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="地区统计"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="地区统计"/>
<WidgetID widgetID="2dd82d36-9a0e-48c9-8e5a-eb37a79e547f"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="地区统计"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="11" bottom="11" right="11"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5715000,5715000,2870200,2743200,2768600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[货主地区]]></O>
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[运货费]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[单位]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="表格3" columnName="货主地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="表格3" columnName="运货费"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="表格3" columnName="单位"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="0" r="2" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="2" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="2" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="0" r="3" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="3" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="3" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="0" r="4" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="4" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="4" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="0" r="5" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="5" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="5" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="0" r="6" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="6" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="6" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="0" r="7" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="1" r="7" s="3">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
<C c="2" r="7" s="2">
<PrivilegeControl/>
<Expand>
<cellSortAttr>
<sortExpressions/>
<sortHeader sortArea="A3"/>
</cellSortAttr>
</Expand>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="0" size="72"/>
<Background name="ColorBackground">
<color>
<FineColor color="-12999178" hor="0" ver="0"/>
</color>
</Background>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="黑体" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style style_name="默认" full="true" border_source="-1" imageLayout="1">
<FRFont name="simhei" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<WJGP?HIS*5PMU$7BF#"YGk1-tWN).Ll_f.YpD&OJ"j(5c02G";HtAQ<4\d5t)Z%#S?,A&J
-,i!Dst)+Ai1C#UCZ,Oq<f3T\Wm\ID&\UXkV[tId:=s[IW?LEqVM?T7-E^cJEKV3I=tun!(N
g!!"dP:*09M!8*CEnr_cWq53(9rYtoWdHK(7l\j^tB1=f2\9LI+c5k;h4*,N<_^!U!efU/`F
*-f@q[\/4@(el*`Q@Mua*tOjIiuDg^o/r!k;M,uUDnRg?WU9"SplbCUnFaIF_1)O#c+-!\@B
$M+.V?h/:n/EA,nCi.5TR1=Q/U%gB-Q_F>gpb#tkrXB)(34A4,ggVl"n,\7I<YZq#pc<jK$?
/\^pum7?(N@U6u.ksmGhCJMDZ41+?"5M_.I;uBMO\i%R,1pZp<!"^/#S[ukWHH4\(J)q2dK4
S_):rk%Y$sdI@>SY#dJnXD_Ud\]AT;nYN^+c?4b5!lahr$Z+fkH5=QPGng&IOq?Vq.>P3Ad"U
**ISgP;R:?HZ!fBcBc#99IO<8f*`NJLAj=X_F$^r]A7$0BDF,kZ<SH"c/L`'AKZ(`r;qKCk)>
S4<SP:NpqZ38hE0j+X\\bq&UW6pA39YU@>q*b:)3OHri?EO"u=o_r<Hfm]A'c,,dhnQ>=l_ZK
q[/$H?bpE`cHcSkV3[T?h!*seea8)aWfH8f'"0?/FVZu]AEIq#!P5r'fdVO%N.`,4f<0p>rmV
.oAs,G`Yoj[]Ao7a"(L<n?"77$/6T[u0p=_UJ%<n'<)q(]A.AO'd%l//Im*XqL<AIa[#5S0mI6
G0$0KU13KF"b;Ri\SZF1Bprml&u!.Pm849U;%l$>9(/fWELaS>>R$PneVFP5Btp9ke=%,s!+
47Z?rY9;cC4?j[Nf5/D3)>LH47=IN%3H";Bj3.lW]AS`a*(=9cKj)d@tRZ`Q_,GG0ljnQ&N3l
u6$\;&C]AlDG^)@a<L)n^Y(u[D=%SY"\9_9SZQDk:<!I:ZB9-29BP53$afN2"X=.ol0r(?(`n
5il]A%tgbFh9F1`PDZR<7S0MoXmF4t&Hp<b+5,?OR8'cM"Z$/I00<R\HStPa9h;pF+#2#2irj
DB20*5eoC\$D'f\C>e;bOLD'5YF2:V[-I?chO_B<<cd"-nm_Z@5:>9#I]A*$R![Z&nBRod!W5
!I]Aoo701ipC&SYIDJ[_soO)r%K,D=?&'UGSfUNMJ<#?LbKIcif2PX0gLR4-@RY`=33cSK=cZ
OVF4.$-g;s=\$O;?]A';M$X_+(*cqLJZ4+\D&4b9#3QI]AG%/`.3fOSqK)^TMeQ,*`"YP;joj,
jK%$Mh\>3rP9_nF:6AO7V6Gg^M.s:F>1lo>Kh65rj_$"76TE"0t"WtMTeS+:qY2jdL0QsGUu
lcO,c\0:43K7]A]AgKL'Lfbj3+A<3<kW;Y(O3Lt$et1^'SCGWn(a)<OebgaD9^ibVHBJu_REcZ
`]Ap#Dj?o'O6b8DZd?j^jSJmkKkhRq*i+=dJjjW;>KhWI3Obh0EQ^PQc(8K,*MG8a'U;_6uD]A
EoPaq"b.[`B3BG*<*ZOLiDFj@.hC\^\cf/:Q=FF+\;hW7o3-LPq=:f.iXE0%KD)8o9p5LQWm
\L=Ent*rp1$f/Yk-MTr00VSA)a=g3!b&61:;U.V>]A=YWSb[_eF5=620`*5g@iESFgc,B6E_@
;:o@/+F]Au$5LW+gN?"r'&8+#/J;\D(R'_\`Y.+_i`i7b6dEOn3i']AFbDS^]A+@#"W4O?lFAU=
[MgUu%7Gn3m/s)[Pc3kCt;2iM"t_Ta]Aab3EVC0dr==`&?'^plUTBP&RI-3:+:Kc6*5,CiRb(
:`:+6.SLN%2!h._X]A.Rc6M:aC'kQj6827Z\+&k5JY:F2')M2jcN9b2'kG\RL`0=J_h1+<hKt
5m4HF9If`?SGr,Mr1e,qt$\pdpiG8uglZZg#NZ+7_lRX8f7Ri4\/'pVdHmg8fCq7^./Bg8//
9?9bQq^j9@$3?3jY5pbuodp70ne?IOf'/UCY7a.l_'_ET'rRbp0q:_FB?]A`RIJXIkRE,,"t8
4j$"Ri(%Bmqe?cWh\(a7SK6[!i7Yf1bjo.KBEVlYnAq!8?E28UEXt3k?^q^8]A>RSU\iAsU%e
%4*@AJZ\MFqJC[FOdkiVLVr1>D=8p"GQN9/DfSNN:i;eQLY5(Qi*B2764#C]AJtJ``j8it"!?
B@MA%d0#qRFPG4#OTIZ]A1?[G`?)k"O]A/_`SL!*]A[&91i;Db=:;!"A8",G1/!Tlh#hPfp\8k'
i?4OU!.Qm!seUG/0hkG">uH=$1J^ht6bDH^^_]AWUUc?(5Fn:+$S*V,^$8&h@OM\k5JQqhXKb
$5RQe:$KcdS$18o+3Cg!cAqjaT0:WHg'+OO>a.H\iL>r']A*2DcQo6H.@dWW,D&g;?H7ij<C]A
t+(52T*tj"PofSVVJ#ZN>h7U?lTqj;l>$Eh2BJ69W)Rj:)Q:R&U:Z+#K0Q6dPE0%+dcV1eLI
klGuWTq`%R*jjY.4oZ\"Wjj!E-a_9D>`g^9l'ioJ:E4Ss*LRD@/:IA8gfL@3>>C>1S_E%X^s
,E;+WOb)E9C+fahA"Mfc+<"q#-q7sW42WOTP1;oY%(Y$Pn33nTnRn0F3$b\Mlq6K)([&t'=4
Wh=Q/$Mg;'Wdq=9m4k4m&nc@i?#-MhggUn?uV-Zr8cfA%_>T@oQ_;g)0TpVI'tP'^kr.Z*Ll
Y_?lg>(*Sf"F,DChD'J7K9YQ:R&7=e-`GhOec9ssbQi*$bebfPba33c+p%KBhKAM9<V6Pt_0
$Wk%'q$uI0khobMUbHBIK']ADj3',h(PZ`UF^NPYFL7cMoG&^2X;<VTWDi/&@Ls0eXX\)0D43
!5`U)X1g]A+EZo@VR5$KPc<H1rUIN`DH]A`p1UDe>2Rt6oA>j3C9D6Cr]A3VLIRhprqn6J;`g-6
%cY:eEAs0t<dV1=G)F=bSRW(g\UnEUj3+`W$_M(ECbHF4knstA9jUX^P7FWHjfuIEU`,tbE>
)tEj-0A*B+Jdh&qB2#RIG&A-/Q5A*>p%tKi%(kWH?_Uc$ndBHs^r4e5M/Kb+UR/EZdD4fQ#f
_iOarq3N&0H`r+B-4[K!6C.AVY2P'9$qWrW\VOZd0!2.15AT@Dij]A:#C^i/R8ft^gl,I6YDn
kJK6+e7o_J-PJ8i*'VP:tS;[hS+oH@-=a]A1B8n<%(R:)@uXdp)GV)ki.lSj#4^"mqNM%kS&\
@G<J1nJdtsCM/uU,,\$M;TA(PDkm.d89cp\]Au&W_@1@?,#=kA>S^XUF!(4&R'G"^B)0&oS_d
h+sTe?o>g+e2)?5:"Pfp2&6hFO-E_Q'"!Vf*pnT7kTZ=Fn`d1&BsFkV0QEuEh!i(UiA3<[nA
rp)MY3qn3ahXfFfI=([IZ3CX]AkX8>IXSEl,RL@bIsB+7ZCH)_@*$FmAAAQi:0R;`)P4:EO%i
M\;_H,%b$<7np[]A0^S/ZJ<[-d@?X\^i3^Vr?<uX`'e2?cFA!>%\aujM*TL0mee2uR/cZPrCj
;]AU>7K;IW5&?[`'#Zb.a>%"ER@U,u6C56'^eALr[";M\RdjbUd%n!/6jn;\3I:kbK8\eh96S
isbr1VCLr+[#Q=O`YHB(qN#SXYoK%[bO651qYc.AILYE/T<?6Vf[9PXLrE@#TW>"oHEWm9,&
;Zl2K2%cUnl*l*C4oXWUC>Yq1^>7Q.<LJ&*&(m_CL5W8Ve%6hcAn@0J.2'p-\3o$$1j!b()>
=9-rS</X%kj33oh7[%no%b"3aZ7]A<mPTAGe`<,Iec$XPQ5i:+^HY:?-Sq.=pQ1+W^TW-'fAa
2;MhEsEJ=&7FXI7QCK*hsUlR4k>bYSSP;Pbk7'-Om'fgFdX;>/ZZ?Etm5$cEfIVkkXhu$33o
)f]AB5PXh7>P/r6a[Z1TUYrnnWTTujb/)FWAa\L-Lop6B[Y-Joj-mJGp"`%eAk1?kEl=8Yrcc
J1r-'D`DH;<tH;7T367;r`C#WcK"]APU@fj^&`Dh;gI?@&it+I0JO<QTC8lGXT%=n#YmSp9;\
-"P`!5.DI)W8'jd^_&<rO`[J:f8L2%3otid7B=n6FR6Qk!!>WO8OYO2[g[:+I[<gQS3Y;m9S
[%@\!;WAOh1*]AY$mr@VY=OT"@V8PG*]A4!MMer#h2>EhN%VoZ5O]AQYMV8+3I+[`0ri*[P?ot9
^7?XJ1&73$m#$@fhR<K!`>;=.8'B>!e&Yi=J>lB@,gjF<hHWXf"6WchsNi:`o#@bqICRKl.q
>McWP%&QSl49E([n1<\o#LYPkCK.CM0A%;hW#F-c<%JMaugCYQi7/cEr+e[LR7:&B5u+Gh$%
[a:6?):`4r<A_sY_)4J_Gg+j7O$QV\)$2=i[m[)*eAG(pOH;scpG2W36:oS`K67Wg_tAamrS
V'K]Abrjo&-K00%=^qI;piNpr(/B:oKpq`'g#9o2PGH!Jr0E6jAjoXSq:(oc8?_@P0a?PdFo:
6!*J/^Xo([,VYFO3>TPlISlm^;.FP=85I]AS^Lu&`71bHp-%T22K*5H]As480pAE+ZR0mFhW9)
DE&=r>ZS<L\J%4s,HK._X1#QTj+h@aRfn'Kr=UL9Uek/pQ*#Hu,pdPe7^kGu;n0S^si)aFT'
K83+)EDq3@YAc]AD!hZQdHJ1+XR^VZfesr5lhGpREt1Q(B1Mf#!DADp;A!nCXSj0M=%,!>*Em
/5rIHrY'!@$HbXZ`;-;@rm1GC?$1gQXs+al&p\eh"[OIM95\*)ceJ$dB?4;Z`sLjHCj\>!)]A
[Qn=WGXT`^H'63#5Ep1?+_/6kA's@<LerJN5r69\-!4us!<=N2,cAb3-(VVk1ATK3QFGn.7a
G?"b7sk_`)r%*CTFSfS#u3%3sP.F/co,qYUMq[.4HqmIC5ju7%GEK(2..N1`rjd..b,pd*jR
80S/lA[cUK5"]ADL3-=-BSbiSJXatZ=&3oCr)MVkf`U'='Cr#RY`ith&dD)8m"=CO)hR[Z[QW
K=g^N'CZVhsGTT!_33In'rW0.>oNkT%@VCaC"Ht@<fUjg#j-W`MgOcmP+f">m%3dl7>BhmZE
4rPH)SDbF+h]ACIZ`_75g)(>r.[]AQ:H^(3oPb^C.Bj,(S/]ACG^+1E^3*qu\pr%<UES"$)fH1g
C7"dTX"$pr0.4]A=X:7sS?h[#o2bCA?%RZq]A+_H+sMR*pp^-L%f^E*n49bhYXZbmrO1CG5P3L
`0Th"Cc7*EK<USmI)>.MM5!-&(d6LV\Ju-9.U`M)XNs3=u3+1j@^1l]A_O*%2.q[Y4.eIZR'*
[q/0KUbEhQ\!WYa7-[9Ye&I$bSccDnBr8m/AGWg92T&9Q&XeuGLIf42oh^K]Ako[?t'999.hb
]AN=Ahs^0Fn?lB<#5+<9i%`s#Mb>e2@ml#,`1&<DpT?_&q[fa&SLkEZGcjZ(3)FFq'-fNW2*i
[oU%]AHiY$JmsB&tjd^clf*TfYl/j0DO'Ys`q>i$,M)L-Jc^l&M+6jYkd&2,^'BZq.`\g#*T?
\9)Xj'eCE?qLM(84``s;7Nt2/AH,[[6_]Ak7)adqp[ft<]AAXb_t?p\E,Ido,[)L!H#lqX=`f5
b_s+)(bR::X(N>6MVKRI@GKmmLdlGF@GqP;dTBN(YnJn7lG/BVMZ.&j%/8Z9pleGNapF;V9+
_'*Nk$G<!+er.O@e.4p/s!O3(HK,C2C_6R@7:nj7%^YL&JP#9O>*?dU$oG-UAk\La1YCY/sc
:A]AGSlO-*cap,Ze'ee6'tp%Pj9YZ_8lJnne"`9a$I"c)lVj'XHk+FG#"IRP0"^(."XJIDFqt
]A5\8Gubc*AlEb(8Lkg9Sqp(PgCO9Cc(]AG6u.Obgp?S2aUII#5Z?#:]Aq$;mdX*<jRRiq>Ap3;
MeYD+-bIFr<5$2VLRL3<!pXFK)Tn9o?FF1)S*@\0RmoaXU4n=?SSYiHcVbAUroB]Au_3-&Ue*
[pIMjVhd7%V5Z$k%s%VtPR7eC]AcBP$sS'Z&jmEobB*!-sITOR[nCjI:6Y7]AiZ;g0toeW<]A\b
Sd4=["cu4nh=jUmU]A>[jP7=j0Erb<u3(Fqb?9V=L:diWC:L%mI8N=/Kqg<OMW.Fm/pXIN2?(
YNI\9YO3=DSs-VK^7*f2dlib1CJ>`'qagr<t+tY?Ae&^[i>$!Y`]A*S064V4hT=M)cV>$,R<7
W=nP]A:5aQ6$d5-*F8fq^kT]ARdVRT*r,.2i7bAVRIOH7B3q;O^)<k-X,uHD`&XnlILs7np^K/
OS\#np8)i/f6eia]A%/_OJ/CG"XGl5HR21`HUd4\Wckd>D,&=U1[,McZN*+@VXcp/[F#1:GZY
VR!P:&5&R#+H;qH7;>;AD;qBsVC_P4T)$/H+!<T@PD+1<#H%.hPF?42Nu02_ahHfY$P44!lO
iq*lYM7J?DO$VPpG-Kt2%37X6A_)(oQNh-G&M<\NeJV]Ao=9r1s>?'\m]A"h1"c]Aq=W+g9Sp-c
?3dapKCtnG,hj>N1d^*q+e!018HU)g=%iuPW"en*T]APeZdC`6Bq'C0-#c^2hD;`2k.D@1$>(
uJ]AQldYU&:((M%bY!CT&[Q]ACB&thWJ!Nj,aER6FjrCmE9RUVm$P]A\nZN^o<56Ppj)$l.&XYZ
;Jkl5MHC4ShE"D#>)AJ\e>N`WZ6N!>,pFtAUIe(+GucsR4omkMB41N(D3Ak6H#SgM-n6oQE(
XSUC;YFcJ8dVjLX=/ik\=9!EqojQKOMatm1=TS[3h&E86fK8:C=k2E^drni*t9fp#cE1#BcA
_d]Ag?o39%-&.=iOB:q[q:n@%-<fN!"#^9T]A[p;j1d**a0]Ac>A5*iU[I4qpqCc,L"1%:+6h2Q
Ul6>0CAMJ9%8Q>gq+Hebqd*23B)Vt&6gAEmWip4["0-3YhVnL4gJ,JdKln]AXTS=Ygo4BV6dW
mkYH_?e9GUqt%8Z[G=0e3>Pq'BD_!QmB5]AmFRXJB:kd2D;dr*A<cqME`7\rgBQ()(YADT_PS
AI>X.Wh@+CDEBnlFeiq@0[+#K.]AF:[pIJe2bG$fbZWKSYY+h7E)^f?gS"R@G1Rh`Z]A$0AH\@
K5_%Fnn4$hg=PS?V>mZ<(GPJ>Z'(TGL?lOGa*f1;"uk3Hj*52d_VI6n3qc=O#904^a\Wl5WX
Q9l2CqP!P>8)L[I&((^8cb^Cr0URqj+@'sQ%QA8n^Jn)HS428*M(h@[2T%ISh>/m@.T\_#1`
*lN(L'8t8hQdhtEk1W3'^h.$\nX\&[(+r@[l^e>!^K-=hfa[!=BT?Ze3#rFmlKudOO#"\N&.
6=p#lC[[DP9(ra+T8mgXIYgsPD7Md;c(7-n%ndIC:G#0ojVdsaSPNi<tkl%]ARe%</b@Ar0n=
cUuhh@i6NB]AVRYA$q6q'"g<(-;uHqQL`lmG5PeC-9D:NL%a\[1G!R)@Tjg_4l7e`*9+s>6\3
%T-6[I''Jjk'Upr(<dBqLrm7b'e@kG/+:)-dL"F&S_0&D:UZDUn]AAHQE0C<^b!mR@85PcagN
-N5fmm.Xd`+LW,b24[M_o\d``*DFg4$pL/$"UOk%eRI+0nGVh^to-M[4Y3DVWGOL\YFhs1K$
@.Um>N#nDKpr3Z*_R$K0K[uL&JU<kTWZE'lWb9=PaQ)3lu=iJ7g=IYf)O*%WApfOk-O*N`.F
%:!I^:>C(,XGH%k=FZl4Tr`KpBC)I]ANAgR1qa*A#SCMeWj%PII@;)Qf6'<`bpsbHA`\EmJ?T
[("PM:trj"0.Oc-![bNa;W*28bKX/%H-ho?]AAcTqD;!5>aQ';b`ush_(+7c1h4+TWbI/>=*>
%`"3`6%,2@`N)%3+i?+$FZuK\e?j=Y\NG4-5>hdIF99b774NEYpfgVQ0*CHSXLuR6;0TRMF"
:Zb8T*A<=8lNlOsPHIP%HMG1E>c3cLfOuS23L9P<1rR+3:%(j%lYQBo$]AV^lDiF*?.Ib)k:J
`Wu%I_4/!*>kB^:tn7sX%N=Y7k"hQN`)Z[miB#KhmTZ@1hSL2qF4Oa$VfY]Aijml\Vo[.(aW`
lsKs]AFp3J!6HFSPrlq?n[gn9_m95K$jFO+koWGZ:fT,!-J=Pjlbq0>pMT01IlR23c\W`,lV]A
Ai&/6Z47FqA`0cJ$#af^8.aB;76''?%a;gT-[-D8Yp]A19DknC<WJ5:ZALQ;Za.Zb'"V>EQ14
nlHchs6c0t;OAE_'ZPN3^j:f<?th_AH%u(irnt;&@L=L3G"62<f<e@T=$U3R?nlk@GKun>Kc
s[pp,(PgaNtkWMUNCRCG^Q]A9KXd1n2=dZKC)0D6-g-<3"&Jpp1^>R]ASPc,FEcb`"ZXI+Ebjp
aXrtP(CDkH^i')F)PjIC&i94CqQ'$]A<8B#"%(XE36pSVlQ,@,,q4/1"_;N(j5Dm9e8[H!H*1
SMbq]ASXDgeYWl14%5*&"@Nh-lVG9TjmFD#O?@>*feE(,p&.8%K-,.Ij;f5/CfWgGIB<"gBC>
VbciV"*Pch(heR2FH4[tcV"n7'QM9r7mt$8V&&LPH]A?%Z5W*s.0p1F\]A\?tC5PT@?;nfT'SN
f:M(VXsaaP2Y+I$=5(e/AV5@-dMjYCD<s#jI09l'iJQ$o%I0"c3?=2lq!l\r+n#Kj6?>^iHi
\C;Sj8\)+nmfB3XlHI?JL]AVE*TFnd/hO%8.rR5-+sZ2CK=O->F^q(E5;2HC6C%*^O?T0RX42
(J%'f7/BDN]Ab1gUUm[8\uY>MQ&K4:jGJh#ihQB9_1[([[iO`'On&i_GD782:_q('?J[B\P)I
TUd[co^N7IE^QFO0tPBQ]AkQ6bRDQ6_qj'G=4_&>>g6BsUX-ll=qUOBSI67a)j2CSsLS>\<%#
H/>"=Q)Yit:edaKAf)djOeBH[J:L=_N>aC/^+Z^H2qkDMPQ.V!?V'#3Ar=]A)&>grnMFK'2Sl
JPcKe)qt=&:tFY;_-[<YD0"lF!>J[[2d7ZNcME/M,:c7M!Q/J\9;\f7ohceEV[#XkK<#lpqp
C.khGD]A.cSr$Vh\aSn,F([4&ZD5\\_!8`UMdT/bknfm`U)G$=S0YmM2F3>`gj%1?^P&&mFC5
F_I:?+$\jpF',4qRfb&U-,Cc[uAEEc3WEf]AoSgk&EeBUQmK>PkV:=WatNVW--98g1S[P?XU9
=JUak$9E)u!nRF.JImi>u0nWnS*>KSi)"$H$4#Ob*j^f1Mn6U.)U>CpR$]A,;N_$F76Am^9g6
I#?,B2/H5qYZs@PBUXl,gbau_]AsV_Rp*^qbDDq'j#ZL,tcpK4j2+i'X\&IjkWuu$'5j\]Aab$
j`b_'s8F1n(EtT6:8[Hau5;"F]A.pkL_PsS(s@,#MTcG$IHo`$dOJ[0;&eQ.XWTG2?_k2oEfc
=c7dD:>s`GlX,ibMl8.]AuIrg5T9S-6]AMnFUr1:b*aTL<orB`._g(2Y<".pO>SB<F^$9D*&!L
)4H]A/b9:N#Im^<WTH6#Wt$_H&`"A6#Y&1HI8(.lSRZsXEq,$m<SVu3cSo0S>rBse2$JR\NgI
FGN)l;RJS>bG"jLQK:[$0XWV5JZ&:(r&S"j'IU#_#^IRR7sYaVa"1ifOP+LK/)U5cT7m%m66
Ft(`*#bBc[864(5a52"$=jIGbq3]ADF&"+ALH[a&t?B:&QJ%HBc..`lE0BMrY(g@?9o%F4i8U
)A%GWqs>*7)1M/i_8'\D4j53A\B?I'[`6?']ATA*QM'tYo)'2lD)B@l^n0#/1,B&YUg0q[>\A
@p@mBtTRaAp63JpsM6(?QgfQM##lLtgPIGc)d0]A@dh6kIA<.%2Vl$Nc\+7FTU(ZC'fmJ/#V:
4AoMpluVIpYV7_@Pqt'Xj'bW^"f//TCCe]A3+Z-N:7h!JeH`P?q,deD=amA(W[50q<Z*7Od^4
]Ak391D>$*F_9D.t&leG&kq#3ho]Acm"]A1h+)b[\StlJE"C#(88^g,_W?V&);0r2A5\FOgZmp\
5V9a;DD/q?;2crdo+$MBZft\a]AC#K'$]Aulq=jJML40*9P;?i>m36Q%tP;g&K@3;G=.tQiV;C
#os)L4')hZIt5hj#8kNQREZ@Yl3EE.BUshtPEa-EPpk)ZTH7s#H=$:-r4f(Pf"i62r\PpXo1
_J-)r;o,?u=5#S%Z>RP>"?!L;G2I+f3HVNMdrhXA3R(7UU1e)HZC=S9t9DE3U3uik0oV3d=L
t(<p\(06;S!H>o.R>r\P2)&i#cFLt<P_H_42\U:X/,MHX?APl4Ti@Mn(lYebQeSNTf$[o":E
C`@)Rkkf!5fGGd4k`AXfRIT!j5FO'pi5M\F0SKRj-"$=K`N!#D]ADH!_+8:$RMs.t7+>A4Ti:
ST%!+q/*!Yh:*g#\eunl^A0`;Tk7gWr-h`_R9TU-8<o8nbAnYhQYS*\G;21NGR4dM(,n&p+L
so"!R63CEi>jZ/+u09R&:3C/M,("f[1J"!`sd.p[i"LPYC-M8mVGuY(R_41:r%=eu:rj+X-+
4)u[?*4H*YUlMbRc7@'RpNL@_-=62CgHi"OiDg6AmVg#$e=?1[_#@m]AEf+bNl]AH7Lrh7gA%,
TO#O82+O+@h#\--0^hS`)@1%=KFQ\CK9TbOJ#nkSCW4TR&r1"JA4:Rah>r?UDeC0'917]AE(6
Uhf+j%2^IKUk+40ITn<uLlC2dBrhQ!b.?ZZnJ*Y_kc>kfWe%+6TQ]AP#aXc@19flq#GJ'*MOV
4(W`j09m`,o*'f8`]AFA5E/_,n,Z<qER*EdLd]Au2pDRq-cdp"q-A,#Y%I]AEZHh\k!QG-o0-6^
LenZ]AM6`R'En2<od0%^6AH\,hH]AtO7-o6Y>;"lDU[ga2H&1pd0H1(H(Q=r(%44'ZWW((Ni"%
L(<:bk]ANG&J)q7Ycc%5Mr)O,uh5LlO95Ke5]A.e(L91j>of#[(n.glX;/F!^[q.cfRP=Jd_9>
pWp&lSmuU9a*mc-s#*oQ6b*E^N+$"eV6"6NQA*mPqW3fkV;P?JN\,/V3]Abg41TC#\dnl2&&*
LT;&OQ45]A&omesq26l*h9p/b:S<TeRiYLO63f=?U]A-.C67[C00]A,,EVHY_N18L%6ds5nZmjU
/[CPO&F7"2.H$$d[04"&_&95P?h8?djSB\%<AeXTL0RX)p,LQN]AmL4?+or>h9V]A#9<oq8J9C
E>uRj==,o>(4lm-3kD<Dnu"[pJ?sf281,.9?+ke$cX?Rplf`W]AD3Dg2N$@4-Wspi*#.Miacc
\e3/4)pkp1n?]ApF4gDC_rYBun,rK:gGJPOM#c"\qe$nY!ahGaOK2Xc6I^*?&fi:GVN4"nE)\
@oA!_'c]AUfcKF9:EIpX!P``a\sE;:G_Slg8Ur,DS,>#UQSalqS$J@E)TmDfIQ%?2kiDod)V`
QVk+'Wdgt4RY\g(K^D#XgZcb2W+LGrksRHIH-I#=^DeqXqTQ=XTnC"mFp/+t)?3?5>B9TN6/
j`bZ5,F;YPgnFU1=5(RfPM3a<VG.7@B+!#K4!,m\^L!m"7>F'me)U_,=RTFVZG407)L"JS_;
L]Au:_u22c:r]A3S<87Zb-uNZmi)4j8Y7t[@W\T)o&J:s!T7h#S,;Lu_HPeu5M=;B!*3$_3c]AD
l030(rV\h:F'iAh)BK%YSq?7aRi95&lnm0>`KtJIgL<jW]Ao*?ucgcdF6(,qREkT1q_">t5(D
2aPKkR[#k1uI+?f(-k+Fei/7C#cA0%5uJ1cSAAik'T^gp6bR0L+1pqB%eT@;M]A\5''?O;;61
W!S!f.JJbf4,)T1PPc"Nq[)"5Y.`bShj!p1;M\'^&S:tF3:0`ErGbi@A"nD!I2gDs@sW^-Rj
]AMV`fW;a<,nscp*Hh8'J8X>',Irblc`0##V1fU,`ZE!5mAncPm,f6^2r9kGp8'h3=KBuq7NX
F+fltBNUE0'W`FjYQZ[l3ikcFD[@e!7;H=89tJ[teFQJ1ri"ZPt$_WpYcjmd'3N0Pa*BkCF2
/ML%&YE;J2$p?j`j+(iTrBE&r5DK,'J<Q:eS^JF[50P^Qo0Y5+;^Qq/CfAB^[9.''%<[\,fr
(EaUpCVlZ[qt'k2Y`%W)=;g=nZ<H#D9BB^5DPk#bC6jU:MJlK__tkOD^W4VU7dAAbsb]A?_><
%DlMn*h]AScPiM%-<]A39&7lP;VWT[/75%WFaj'^uHNHl5(`c=!(pe)/TiROo+0>rY_6pn2;;a
ER!_Ye&;3crpaV)V#8D^gfeLhO*Baj@DcGFq0uW?T>Fd(A,j7AnTP'6krD10fBnaBqbJ[rjD
kD$+5M^%q_@t0!IsK"r*dO9_-bb`rY,%Nh#-#(k3*o=r*OFLC(&s)q(Ufu7,6"1Ihs^:H1_!
C)s+gBk[^gK,#Rij,;/m3X>";cO+RL%B=G^l2>[7^#YXtFf)a9[`rFIbeAFrD8Oi^^7p'K=r
PKp]Ae4+Z]AB79I1D3Y&JaM>Q_')aUBHD\biPA'T\A2H5sf4=elpYgUN=B]AFOoAhe2cFs$XoGo
.Y^-:JY4ab@mC?61Wan+_3Nu\5Qp\!WB!8ur4/$B*V!"\h+o^Dm3h5=;bp(Gh=>%uDXQFCd4
^oDob!NQ9&"fr&5'sK1Gs+5cHnR.dJ$Ac,+p"Q."fREkn([[0bP28D!2II9&_H")Q=5bW6Kr
]A/-Y/42K$<Q19>_T4t's>DR\-i9!_b*`&g(b12>TBqk-Y8nQ>\j@?*DQE379tVJE##Om<VZS
UgqX>hO1K:o)>(=lG23(!ajFlYrsJ~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="115"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="157" width="375" height="115"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="地区统计-标题"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report0" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="地区统计-标题"/>
<WidgetID widgetID="8abe9903-b13f-45ec-95ad-5a2b20d246cc"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="地区统计-标题"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" borderRadius="6" type="0" borderStyle="1">
<color>
<FineColor color="-5000269" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[609600,12039600,1600200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__1A6E251559DBF8BE574DAB65A8BDF6E8">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n(7;XMM^W,WiLl!e?N9Vi,%U`LOF#2Y&U/#V[6cIlGV(W&>nk+i
ImHNdjZjqrNmOD-6<PF3Bhc.U(K?0(IYr/CtZoR!GY(=XDE[##A;bQZZ%09`P~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[地区统计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[详情>]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="网页链接1">
<JavaScript class="com.fr.js.WebHyperlink">
<JavaScript class="com.fr.js.WebHyperlink">
<Parameters/>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<URL>
<![CDATA[https://help.fanruan.com/finereport/]]></URL>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="1" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="0" size="72" underline="1">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m?i`/P?7M!A$&i`JlXI7<tSCC-m/^s`?g`]A70H"$J/';eO9cH8*d:l)BFt<O.Ks@FYciVB+p
JZ\+TtI=2%)rG!W`ps5k5;kS_s;d]A^sG0c9*oWo6d1@F7+J%4m1VtnD%0ED;T,V%fcU<3WF-
b492T7D>j9*8cGUZdHc&X_!7?Z.7]AGdS@OJn<=nA4KMU@u>ODTBrT2ge%=:mKm^i:/chH<Zg
Z<[-htc_JJr^_<=$!X*T-^G;pdfhrlTO"g?Tr_anR-9%n.(Sdj8#$6HD_:fIspqFq;WCiYQ<
1j7T,4B\rg"A6T\[10P@:&ccrd^ZEBjR'1-8i,JiR,/aUW>J;_ktZI+X3^dk9TlaI;eWm]AtP
L>t&^DT_aV"KpP,M*2%^s0N9j'+hO=h^nfq`goe7!5%Ms6EYM+ZjHde\8C.UUEn/u*0(ulGZ
/AI'O/1H7,%\AZoEZ&DFTU+Dspb9+>s<%1\[[<)W6Nh_O9Hkl#3&q'm"L^i`#nM:N'rmr%iH
XiamRmY.`b_26F6Kr.oR^;_K]A*N<8.=dgu)BX<bc^'"!e.=4b\YNLVIWkh0W@G$A5=?&;mr.
Pbr-'F]AUl23q=(;Ss:AaV;u,QE%$D-r&bFAkPcj`aYie;3=e6_ScX.rZIjX="3^q^\6P.C0&
6`)"HDDT]Adt5R]ArYb4,qq88)nK.+4NPnLQ2VEHF'K5%p5(@#mk1k<;,uF,_\9e0:@0''8CNO
/NQjH339'U-RPnZ8l9++D`/SbaM!rF&boC4l=ccNT&+FCZg7=$Pm[D)WRaTBpFfuOU=ODiBS
t6Z?_p\9eedMt2KgM$^HRn;qh#8"7=F\e8W:YWm5+gHSG"kod<p0]AcVANJe!3es*H!\k*6D^
_Uo@cQm=_i8VcI[C>C5OaZ`C?.3G'7_rS#]Ah1klL@l;2N75b`S;]A:`%/Y+5*2r\Hqr*^`_gQ
2"9krf^?$C34B=_hZTZR@sbcFc>3Kk1ePL%ZcjcUWs17^D(<R9E/<IEDsW:o4YTF/.D:E5oF
,l-XO\#Kek%Zig5Nrf3ZJM2P>>O&89K9HeF41eUebkBO\Zb`l76$aUn?LaC$FM,gSsJ88ACj
B$HH>*u=*B1fVD#*T@"VS<e7?A&+O=J]A0=(+]Atct,^X.g>^i4rI&uTlU[5iZY//s)F_Dg;WJ
;SAXceRp%MQ9U-U[Zu3T3.LS,C)u9lSgOZnjc%l<.o3.;l9rHOVkCB%pD<[KaZt\qe>kaBjV
)78N*AUh-k?o.5?@WD?ghks?G\M>MFt-g).`13OS\CD0HdWS5YtGt.gC^l>&:Y)pS51B(Y]A-
AmI2Q+>F@jfkPp?M<FtgG9nLgoiNE'V<`o+?c`IY(hVM0Wbe7-((t,L!O'#e4>b-(HC<$N@:
H`$h%a=FA]Aa0pb`(oM;4f\0)X@X@i?RJek"Wh:sk\9IsQshg(tR"^!0e^Ve\<A.t-:+l#TR1
9!CnG1\QhPI/rEQTkM!cU8T4]A\J^^^DL&!&&^U3io$b9"PGUZgc.$\"LBKWU9/qnJp6Y[@cK
U$$FpJ,KR,:XY=n`:i8Uchia:dMDZ@2<5&Ps!MGrjhs_OM]AH%N<t87)I'5kaH`h-gQ;F(p<`
jkRIM"bNrotl2gu.@$fjK;q-`h6@?O+!-$Dm_?fqa[lm#6V3\1r2\X/p_!?_?11-D/;T-MH(
4$JOkBN#-)Q5?F8qFD]A$qCW'j2nE`p6J*C0CoXI%`>T6:!9Ut??p%\Y(Q@IW$kn4l$,d*MMV
Z;KnGHN5d$*.e<fCf<rD&%qrktX@4)LG]Adfbd*>DFj?!e7A&q8LRi;?m6^uV&<aLO6hPAspo
T")#pRNe)W_qrf35A:F>(U9A(#;OD]A'@Bc\SYVNHnla/92;u(1K_%!&R5F#6h=:\LL+c47Ep
Tn(4^7\,DTW+11ll(NMd.s"Z(9X"1d@!h2:IFsco`$I@W)W&rb$HS$J#6pB\<+H+(!bDk$,e
Vbn*&EIGo%ddW6sLma%CU$gSM2I;!KT;9>66<BJ$!?q<Gi5/!$H6sF]AR]A2?MhG473*=*CSJ`
PJekfJZ%=Ris@JcYm:"hj-(+NNe2CS6h,)_i$,VW'>s$">*$F-e)3\_QS>d2h=n'a]Af`IWOh
5Yjj\;OA;po6`9+A#N4^WAYAE0[&b[;+!BP`HChK!J1EC]AsNl<m[/b<]A%q?B3)*]AF4&(j%7E
c<R`A>X+^JRQ&a6P]A"S!h:HLJia3Sc5@1\#H6#o]A>5[!@E!h;$D@1CYgW<eA%7?_Jq%TS7\i
YoP)lT)F)^gas\5)6?`%oTIhhn!,:M1jUm"FI?!bZl6j+me_0q\IY>NtV*^&I1!?pfg:I/ug
HIjXS7rIQ(=-)PL0QI)Q,=qA0V*<1V-J"@H0O61Qem`j^f#fD311W7USbi2h?;W`]A8M)?OaI
J?qYblb$GG`"gS"G5ASgfB@=g-T;BMfH`jq>'Z#29>HNiS5$FAhLOG,'uUD?G!qCYEfO]A6i%
[sDlW,`6/O^j@>rTHh55N.-s&ohn&tYR\on=+k>6+G2%THu>gkHMK\dN4n#u-jrh8c6/H*XH
I'PKt(Zp[e/&LD@I0DDROP%f)ketfX6_?l1lj9G5)'moY'Csee$IbNaNe58`d7%X.Q/[Hd<%
MFS?%k&J2`36V+(TYP)t27K9ps+$'=F[7AQ'U=+\=(o-8@Sdo&PK6P0;=Y>MM_'CUTR]A;Y-I
lg("jp,p*kBQ<IO#q[3YO$(TE=ooqFl*\G[ENKM70s2_J&P5V?A62XpEa7@$e/X<2F#$<P*p
PnVYU;^gTEen"qqgO*hM`O"]A:\b+$KKH'kj-o]A.8-s`Wl"Y%=$WsubG)DI3"5'4O$$*%9X-b
%'WKEP1T9ssoN[Lq\;e/Y[-AD1b/YVsTC^I[0!B5\affki2_%kZ2?Tg<(Hf__Jd+*<uXmcD*
*d,0Vp*S=bEITRSYXci;?/4sY<uNN.9C%/*h.]A0gR1#OReT>U/'IHsB!M6s4*m^g:n17]A#OC
Ws29L`-`$#,3H\^1ZUko<)U:-_l]A2eND5\4q'0-JR;c<'M*!h1%f*#a3j&OrPmBih>.NI&?I
SroM=cg#O]ABk#%[+A;GZ/qfaC_3Slt`&W0`IN'K%B4T>0QL+Ucc_,O#\rX]Ao,A7hJ=]AmF$HL
"&'Y!DRP8:R7emLGaRMm-o]Ad1EVICoZmQ?;pOLX`=")6RLp*5-=oYgE.0U"Is9)]A,WE@Y@o5
VqnUTnukT7<)31SWD"n9,q(F,9&^mG<s$fcMLaG=kC_R'cdZGCX;IPLikHB+\WL>`kSr\gV4
N*5c.O^YUK^RJ=)No=8j26kMgnO1Dm>THEOE!YgtBd?6LDOJt&ZmN!if9,9WTX#L`j4G"0kN
`bhUc^89*P-P=M#5+JDd9fcBktKR!1\rQ*H,Rl[S@=Or!);p>QZ>sZR,d2cOVa1KR3"'[rO"
LG,,__%(l^O9A_K3?Vk%G9^losIU]A@ODnU>)SH3X[!L@j[G3\9lNA^i*pb`PEku@3)ib`;6?
Y[omeiW)j#M(Cd2[19OnpfTcC)?!qD9mHQ1?mesSVWD/X'l7J9:_Mc+>AnE2>/>cOS=7cHa4
U-j88;6"hq=>r=C7`U\_;<*_'2RC-aJ2n>3aU&10K^+t0GA[ZS!+]AC80q,b&'_9rse*!\<[.
:<eI-^6RItf#_3$`bM&Jj'ml$+3am3`fnE9(d!e;a6$q`mp/W=GbJ&^+.eRB_=g;b(7ng>3f
-Ksf/.ONq,7hmT;BmB%8Th#R^eLb;_r:FH]A^/N^/Jsc]A?QFBR]A1ZeSZ31#!@3,"aDb]A>\iQ!
GFFCH$"R.]ApOK]AIa`jZB.&R_4C1&*P\2gf5_*Mi(Vf&b==f>g3hk!>-S>69hiOsD$CM`f'NI
>aA^J`"OYI:a&R<<ucl8^^%.?Ybpf6dsXY3Lbk]A7bE@qg'qkr5l68q$E&7p1%'#l`j:(K[-)
X]AP/[L5LY6^T[9:'Ioc:O&*s^@Q:sHJ,pcQ@+BcT>q[Q3(_r#C^>!9OjX_9QYrC)iogo]ABd,
-Nt1).:6FJCigt/AJgRA6S@u;d*uZuK[mr'UNX6(jmHl1>j>W>rV5PF<SYb#5?8nC#s>kNbJ
_@NHlf6,oa;+-`M7Oia<(:oT[/HcGmX.cBnqJjYQO^_I1]AAK9pkE!Bh@2'R^=p7D#;T'_ldR
"Ij48,DslFj+?s'h@D7ArBoH4ir-,j3KUA8M8'0??ANHiVb2LhS=7(pA,rPYgNJ?e&N_jV3O
Dhj-bksuWW0t*IZ>t<FAOs[)QWe<n77g+0F`T+:,OL#^56Q\rTa.m29GB,tAQ+^\H:>Qe`E&
h0S=gNGK.g#pK\^t<*)DY,L.Ql("*7,\mr2T>,R)MFI"*jog(G'GVj.:>S&cu#fRu.<rPu?#
m%&EKq8udQ:2#?=hR't-I!PXbYp&DfRL`E"#,2(_p_/^7:5WQ:fT#Vi9Km[d+Lc"8ftpP(p!
3gm0u]AQDoOHS9KTemXi6$;daoYlC[1L*q-fN*\A6]AV\kZ2I&Doojg4B%%n!WEeAA00D*/ol<
uFop?QEW]ARR\Q@/;W(W+6K\-gB7Tl'OGc+d@AfuN%06a7ik/D8@irY.a)_Q#^rD('#:Z4%?D
<:IX]A!M*O:#QP$'.aO`\JJ21ZG0[OC.YJFigKTXieXH8EJ=rLAYc*s%Hn#^ZBQR\DIRm=2+E
+="prhp.dN*m"nE\!:W_RPQ=.""J?!:BDTA\=q=74/*2mZZIk)PO6ut5D%<(>&b\I3-qY1(q
$Pbmb)L>ib27uipUe,m6<#rbPrdUI9j:tfdV\23DqO`<[oDkmj2#mU>38_>bKpZ]A]A\/BFd;5
Uf/!;QAhnuQ4L@(fk**&-$ThV%n4kNe%)o$Q%C1\piEhN%&+a9l&n.qF@8O;5&f<lbVN+Y.)
WXH41&6<;2-lgh]A)DQJ/toB.//HS;lon):+7.pkN^!%WK2,Z:9:'rXA$.St['<1j:-W'CM9:
k8sQTE5k,_#FutLn;6R[JLZQ]A\Qubfr9+m]A(5T$WQX1CU^C)ZIh.MIIIi\>AG<.U_>3`V;jA
^_h>TV~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="136" width="375" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="统计信息-4"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report5" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="统计信息-4"/>
<WidgetID widgetID="b50f6866-03c2-4b6b-b2fe-24f65f825dfe"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="统计信息-4"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[914400,2895600,2895600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__6CD80F1D48FA1457BCE95E0B7FC82878">
<IM>
<![CDATA[!Flq9k_W,27h#eD$31&+%7s)Y;?-[s>lXj)0F.j_!!%'ZG"2N4(Fi!E5u`*!jdZX!("[`Oh=
`ZgD9p=<iZtr5Ze?7TQPc2O2W35IF'L)tNDmG\S#&,>c:Lg<1p65aBc=I#bbbQNZV&5L\%rH
A!MOp1&kE:"BGZiYXs^o*hRn+ioC)^ko:Gjk!YcQi.3A$LB">8HmW\^*]A6E\e%=pbE5+`@7^
L*B[CRTEtanj,H*(,`&Hd#TU1nL?E='3KK/8-1?VE4or=9h;h?o/;:X^RH.4h:j$)2'Z]ACZ)
Mdp)u-4lQ$FC`,DE3]AC^'/52&7=(oE904G7-P,\57gE9k(r?U43-jS'e`F494%$f0.p%Ij/*
5JP5(eNE+U&F`KlI]Ap\-Lk6NU4W"SW]A2J-bg-3[>Fq[91ARRQ3_X#V^(_"8.FGnKJK^N7eT,
CPRrItNIk;U$S"?f%g-Zj8D]A`d5h!U'74lSC9R$Xq,S@>)us$/#u&jp-/`ZlnOS65T+qJK"s
-%iWo3!AB$*2f46>Sj*_WW+ST5o5Yn".@\Dja4i;]AYL<\Z5[a6.&MLqHL#iCFG8OYI"ui6&#
^_rqkGDqr'_V]AD3e<"D$^f-l)u[@-6&hK'2cr+mE79.sIP8/<]AMW7/14$3$bVs,7/o/0u"FV
od^*22QQUeR14/mS?;S/m*:F%TW!ID$L@r99mURAoY;\nX#PQtBRdU4j5FKZ"32i&'*,si-X
V%\/OTR.:EqIpj"`+;8I.</4VgqaQJ.hWIk188JhKEsUY(krWA_9cEm1?6%>?oR2c_mE`AcX
Z5CD@h'F3rkJA'7.GY3TmqN;p[s&FF%;M)JBu-KI5G#A!/_i%Zf:2`u215,CQ?>d+!\2B6nQ
tc[_AJ9P/nE#;t(_-PWA`:j-4hB_/_W*>Ur/P`ILE7e74`(1P::-m?gY!2Y:o29ptZ(K`_VO
$:^\j+/6E+_2L1oD$3cO,Gn_o?6f\I'=o&:lMf@mSi;;m/:7I.HgiNU:uN<2Tu%%e&Bm6As.
S;-Kc6,\l[b3`Y3(@nY=>&Z(nZ0?'H,1-89K"WBs:R_a]A`Q/[%p0_H_Y%//>J5MTjdhAOrqF
Y*/f@UL5e]A/J]ARhob5r;d/%GYZltlFV3E1DMSY1;'K9:m]AhW/XK5T,^@_kiNPFZ.`7no!s-J
mY'1dBd(+*YH-!R$XL,."dZBfgSjD\nKYM/5.A'j(!a_`6kg6H8=,^iiPj=.:J;`<2Qt".s?
4E"B(9ekS;"F3tD=@%Q&K=`PK0)mAD"TSp/_%"T'"DEPkZ9X/:ZauBEOQJfLUej7N@hh`^Zp
*-?+70-g.!kAHED7TaVS+KP+!HS9`7@&F3DUK8Afq`WfO@h$L-0n:h@0=aq'*ih7]AYe3eRjZ
tH'h7F1F^6$,E&*9q7hC.UY*YZu1gQc8#<a-jA>W"2:_\3pkrc`R-uMi;O2o`C,9af2kIB>`
4"O*1\/NMJ6OG=jJF85ObnRT!O.`.uc\>W/<8+S1cc=2:\D)dgh,/pqmQH2PI]A!B7HERMl.p
=VXHP3i"gLDPnC/<FaH7OP/]A.FgT;ifkaoYZJ83/_ZlpPEE_%X:YBqF.'8.8Q"U:0eY!X?J(
+;<SKU2dQH&Rg0J;[N"g>*PpP^pL?e;&cDC^C/r+P4K0Te<ZP7g\gGdnH#lc"0>c5G4=nau_
5`*)FMWO2DHm2WglAb#WN9nTK+9bK.HmM^JMHA_hc;#)r35RB&)%)00]A=ElXY%T[pfr21XT5
P8f;m+2M334_5-_7l:D`5%hd220du1Ij,9JEDH51Q%QmZ+<@WO$=Ma1@?+TgIHB%sB7$1pJ>
Xf)WV%C72DD%5KuoJ4WoIg35W.rin4.f>I8-D%@`U+FnPoHrGI=1=OV-:2r:UQEk"PfIK8]Aa
gN,pr8"A@\hS41#)5>;cTP[D7S/2*up)3'PXQ(+kEg.RKJonT8-2gfAX&O.ra6t._LklU8"#
?j;cdZ]AEn-W[o_RqknSkX6KeNO,1W6gKuP"Z.J2#8:sL'`h,/8e`Ab$SYV?Bmc;N(7'rfnY%
O`?+!>E(KJs`08N_aS,a62%(iV#4qnNoNsK'm9)A(p]A;5d)C(8jY2Mb5=P*bX2G:_J0D59YY
>@`'Ur7O2/r"T`cdB]AGtOE=sMB?hH-*]A%&odfZnQZ%?KSCB_^F'Fj2R$=bU2tS(UQ8qcL]A]A9
MY_XbQRB87^h;(k&:,3p&\9fd_?*u1`6/Y_BWG''GpK2m,E5W%q'kND?\UXBX<+U:onpCOTa
=qB8"e12;hi'2BZDLL:1JV4C&BNs'qHgg.%6(>JZnW$C$>=Z5aP(t!rZmr:?&--JR1`ikuO5
oN-OjmQ)3=H<7@iqdO48"I6gAGltBsF7iddD/[sd)VD$Z/ikZmJGJ]A[I1>U=i_Ygc]Ar69sSg
mDE'=d`pl6JbjF_SW=r^iW<_^A??/5Nk!P[e#[$Zq/6*oSaWQ"9$p/[?sGIM]A"9&05Nr[S4Z
W=@;ARZ^:1EicXbVbq&LK#MP8mR<BV1A#?AYR\hQs0K5>cBd'N!,\gBRPNj+;/K%%QsDfk31
QWepcXKT\-;JS"";[ZpSku)pa[OJ&,777%QOnrD`cd6O!\"Br4P*j[^M*PFV]Ac'h5=HTI$_=
%_H<T!Wq8P*PoI,t>D^X8''essb8UfP_>onQY9gOd/U;)5C#o##tLk-2ok(Gq&8Bn4Q_*l-f
YTGpX:d`RbdFr?[>RZ!Zde_oSS;n/A5l7]AHh@8PLq6.IE]Al4N91\R(soUS([tEI'ND'K;scW
+#P!5[R[FM[)-s@cj[(R$H<W"g8t9#,1c$]A-Hn+KS%Vs.8cf.F\AMTi!c%iE\uTk8kocCCd&
fRSZ0YKo=A\l1'YE>!^5Uh]A'="BStU'9kZ(_//^gpO'h-K1<L<%:j8E)eYo,?!=(BP0<nt0s
!,6_\kT4bCJ)Q'>ip^@]A3.5%3`-s_)BQD08P8B@_(@h#,*u:Xl`@VrT0dWY#F(:lt;I$"jf=
IR8Kj:3uWs2MRSA:<[>c]ADh<m^*OWWO`bC)@In[:=AH/S6B<iVqB(8Bu'@qnT/q7257>kH<K
5$WJUn7Tpm.O1%F_gbbPgD74,h#C!(nLaa4,KRT*2g[K6,0*\4=QAi+D#JC$8V'<Sck\m'0P
_>6F3$fBa$Q@CsW6kY*l#Dsi]A`U&(:1FJkI:7L`f&X64FiZAiM^Tq#+WfK*/#/Z/oc$ZqU3\
=A#C8HJ[^<Yc:W`]A3b:(E\PU]A"<<RCVCiGbsOZK56+eIU05)>%RNe`#)e[9/T\Nthgm$MlGT
Lo.@:5(kS"[QDj"gT`H;'$8,KBP6r]AEZp^C!,%s\U2CKbT@8n<,-nOJ6XKYg!j*a(Emh=a@;
P<J_WOkkiDqkVVBo:nkV!OZPRbTimC^*CdN[-tKDpkt%@E_dLI]AdNYe%>=abr8V;jpHWs$B`
kAe=eqHMSZ*$aJ\n$^sNdl=nQupD5E!-2E5m`HZ:L!A)C;_6T%*nZ-N[38#6;^F%8l*U)<Ao
/hA</51L71X\p8X+K1tk^BJ,KH^q%U5cCX4^Bl-cb*85WJS#bRTbMI7;\0E'M?hC?Gt<*,h?
CMl<2p9H3%?qDFVO"VRDE)F4OCWp5<i0_F'1Ki0Ml/4IEJt5KZ"o<XBW$3W,2,OWA$6]A/g19
J+C4=a\6lN\)YHoIT7I\4eTB6n?ILmRa?ru^&::]A=]A+B'R(K'ubOaH8i7>rA9;=s+aIg0=+m
r_7!C"3"Pk&f.hp9G4`MiCt3=n2_B@r99*BeWiBeO(p3RB'_I.<TQd2)Yi5[Ut-!RoWL&UH1
*G=8/Ak@&@8,rIidNR2GIW"!sP.`UbJDDZSI,sUDNih=enqWX#Fgm`TmJ$lPMc27Wj/$fe@Y
%S*_G*8Z/!n^62Mp?t3Jc@\fpi1snO/6R0A"F`q*`(u1B!k+$[pkq\hLu0+Tn&%;$S31"o]A$
tf\19-9T@dD0gSrfNB9f,4!aRooKp2pj0;2<NdRmW(T"o1^3q:(l+f?DH!o<)j^5a_lB*`pc
Gku^4m0N>M"at"B.83NT+`pbn7@b5[Dkd3bc9ci%55mCF$$-pn5*o9(I$YMQ8)sAN;o@AWI>
%S`TpK2&1)jL<\d<de4gEG:k^sKMefV`[Y9EOa9O1kX,qSJb,12=<\*QBK`tu(N0e9M`d$lb
><?^?9o[!`fM_Hfd&:]AkrMV/j^q"q.5"^U,+OUVUOqog1VpZ$h4q_07s!`P7t0l(80IXZ*$6
'i'Q;g$+aH0s3tMmQ?S1JXPdEI'[@QX]A-_R>34:g.81/`C$&QClt=-biC,+\Zu5*7;$V[X.Q
<SNk?(RdgP]ADRp.Tp]An5fQL-g`'CaTo2M<PBUF@Ip!%q']Ae'lHUG_p",=pfYn@l;&5[cBn^u
_q/mV6C6("gJ26NdO@N/-hM"no,\ZcJY#t`%M*21?qs$'AgO"aJsH.&?tJ*R%B@K<^l)epU#
3tro?R^@2F@FUAgrV*5fQGhlX$0Lp4me'h)7[b#;Igt,]A64_)e%2<I[]A;W5aUf%B<A78Cc-b
'.\QcS\u*hm+nWa,^9XO`ioqU$iiOBr`L6D//YS?S)fXEO4<tWL/*O!Q":)M+00e,rKE\=Yq
"%33R%&7=s1#TRV(;s+dhupHh$!n85Te"_[3&jmH4<')dYM*d%?3[*eIV]Au`ka48SM=JQF1P
u1T@t?;SrlP,NA8ds6LVo,"hauD(%b`V(:KpiUFGD9;Gg%Nq+h=qmZ[eN`PuN69.e2n2jL%`
:qb5LL*_^Z$lU9UGN$93,FFX#MpJ7WA*PBWIZi_gRN>?OP@U=8ZdVsMB!)@(Z0@]A>3BABP0Q
ru&B3<A"b+QD31di6P+U'^-;EVWF!kk2PF!r\YoQ3gLO-Bj"Xt%j?V1`02^L#fN"XsMd'P2q
]A&qMZ]Ah9VDQgT>?E>&tN:;QHe]Aoote,r&E<'8rHbV?f\Ja'qFdIJ"PtGqb.8Y3m'>f0KSdU!
C*jBj"*6Zd?26BPKkG+kGb@h4hd[3T1hJ-0<Spr?<Es`]ANi*hM+l@_8$V^21RK%]AL:QQ.R/=
M5=HVKoH>c&?b:'c*>,4#<c4>,!@Ne+X)qV@3>uQW1g3akTDJ'Bh>d>dM3P,+U7PC&Q*5\6q
a)QH0%;t(QL*&0s3<^cCEiTH)R\CN;1*bVqW_Z*UR97j`igiW^YcTXdmH@+(k`ET@"r91Cc=
_3N]AGVlfFp2of\&OG.^XU0`$Z^Mt]A(*h'o@3AH*nf+q:S`)A;+;_['NQZ"Q/P's["OWk=I`B
LC!6*%/Zo.rrb!==k;T,qd)F1>XK?#.).ENfgF%!eRK@jtY*)XW%_f?U6q&bWU_PYU<p;UGh
:nme9<[g'>q6EDNn$.KGcL7cliA*hp,4n,7lophUHHk7P@1JgW]AJ!"VBt!]A6tW7P4_>gsNC`
dt`^-6<dfm=q*FN/b4P=8=?Z)%uaKW6'hQ4Vm(l*SijUa0Sb>]A>BUB5WX5-1sU`&IEIi6dN!
GaQbQY>Bi%<D["L54r#1aT%$?9.).*^H#PWkM@W,A"0OgHtFON[C7,'88uoiBXWLFDr0St\F
>,n+(/7:!BcWe'[LYGa);>I;3-cAY6]AImnJFl]AA;FURM;NU7^<3LYo7=sASW#+*'`*'&s$K+
kQ`f-r'pokGKWh5bMp2)#b(e2+5DF#.%ekokD1dSpCG`\-'?9Uc@3"P%igc^YA,Do:K>\g!$
]A44a*5KSZ5,=]Ah,HI[H+.VR`QYCGdLabG;'g[d4%'1Hf_N'L7X=J0R7VN7]AZej?dl;HF<;NL
%cE\#oMh=R\&7t=*biC(Ld@p$bRT>7?XJa5FDM$6!?"bGP9qSb3@.PECG]AOc"^@n'?R*_Xhq
muCA?A4/eK60Sub'KP)(HaqC>g,ls3!rc6lc>-"Id2taY8Y"`8>V7,Y5"D">."@;?<Z1'NBi
UI/(#6!CY$Ap4\_LN,Fa75Ycgr-CZs6t]Ajb@^[X]Ac:LJWE9X"g!bq`^(OGh2\n$"<%q>O1pH
j.8QRLq+<D-VPq-i]ArN0_D!8^JUe6"\4W!#1?Ae2i3JR!?ai.=;O5l?]AS$7!]A2\tj#_P92>n
C3IF4TB!s^6P+Imqb+<n*p)+>H@8Kelk2B[2E?-g4d;req1rQr+3$\ChkI@h,]A=ZFreWTpJg
1pm3`dKf!?[XKR_WKq:aAQDfG^/*VFZ?;Y0P+E\,t5O-e_K`h($SFLo+WEb+sRf*G=<bq\FJ
)'0%\$D:`69n,:+!B6mH_t5gaYTPP?&&]AR-K<#LAiP_M$Df%5k-!+UMg038O=,Z="[CB_k$/
C_HJq``?pqj&K[%g_;Q]A(b$$?>P"1>KRSMU>'3mRXIuXi\PL^9/GSes0Y>qD-:J:k@A!atQ&
Bknk"\IW[[=>:KH6ingKkR*TWt6THYS)iq,VK&<ZaJs.d!a$p&eM:]AqTD:=A+`1?u*AJAbcH
M$UgnKDE/94+$4!A)gAV]A3CSS>V?Xoc'ANYTUU[pEs&#_>%hoEQ*AhZLWE+(:Og4ist+#\/a
9??\j%Ab*4JO.)r""!^+EF=hO#2Q84(6NB;g.V1!XNIQ[W+qtSV)I9;s1+mt>:&,2tDA_bQB
0l\<'9)&Ao=1sAZ'+WrWpk*g#jTkS'CO>R'lgNiVM$I1Oo6eXbE-L<RGWP7%`4bgRC<rJMd%
gH?qV)<X2tRAddi"$U7a5s?SFbSQM<;h]A+eu\H)?hd_)h$U"qG(_jnmj:t*;PT.3uNIM<2Ak
3>plnQ+"rrDpdL;]A0BWi'(Iu+,C>Lt`RbN[++7$iqfj4AaDEiSQi5X)a>kn'K;7r"Z_2ERk]A
U[H3s30`DDjc'":)ahPl]AHRn!ilj(^l#dN]AR74-^FAWi9-kU'+nlCO4B@OCb!(g:\NZ#-e$D
gnjkt-s+0%_6DB2al2<,F["(!Tr6#t@e*'Mi.F)6ZC/c![WR(@/ckW3:olhBu,$s7?->.cM8
bR@YlQ;/=Gl"E+N"bZcXET+O:2[F5FFZT4BhWQm!U>H3CB_c[lZ/`oNq?&&_JkdV9Jf[e2$L
Is:W/f&DPfqN\Y+sNfrZps@N1%W^5m`n$\9sh$:=>rd4i?<eE5%$G?6.MFEdK6N_.l<"(q`N
l;HaO3dK;=IT2o,OpT%s'dnF,nD.R-']Al[-DL7D<0YT?9Kf+5@98;O*"&CTP2\p84QpjrM`)
D)LXXpYAHTnjT52=@AJaQA6#]Ai';:bf:C/)6(,J*/@38VNtS7b!3c*T-nHZEPd6edDST.<82
_9W:95FmE?*`n-Z&aL,FpW3ehH<oqAF.2#6i1#OQ><?Inf%:/'NBbYm97E_L27[DQ]A(Fj'G3
,DPHZ,A^YF'"gL("EjBL[_)sNBiKh;+$(u!-=?!+1Ec5:_>JVt#X"bI$X@rV2dFT<%p\b%%I
tYFs!TPE"b4;iO*n3ak*=8BE&m,(L>hUa9apTeLUl9$&`3""!=\4IqOiI&.&GD3m=PNs$s.*
F0):eu0T9Fdn5(7I\3*=.*ot$;#$\Eg+8p!]AoeZ%)V^1o@'_QOZ%,2V\Zl5K$PN*L!&_mXTG
Z6kp+s3YS]AZBcHO#_G*$Rk%]AQ3oi\c$i9Kh^]A$X+1o&P6Pf\0Mr@N_"]A+2az8OZBBY!QNJ~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="表格2" columnName="count(DISTINCT 货主省份)"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[省份数量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="1" size="80">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="宋体" style="0" size="64">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@*oZ'']AD2D;3Wb/)BKtR\l[":Nj0)c)`H*34m_PXer^uCPAKpBo,/_!(DGj\(pP_Aa<X$bY
0G3'GV1Xog7eX.fki<$%[\YML`k:X0q-g"lE\4lgVg)B&<-NRFgUXcTKO$SpAT2+$p%\I,a^
RSXnT*,MsM&AnSTIG\L=VdGgaPC\Oanm.P?^Ep2iL)-)m;bf2[H7\8W(WGk&Rj5X;?jMN4s;
M\o[+n;1sMgU!Riu^TG3Gf+=\9WDVd6F1GKGC+`L\UM^:E,KVCq0,`43h_&Ds[h9>HqYVnN1
N>Ih+k/Nh9.Iqtu2se<k*`SIG+=e3t3+\mE3-<$fnHW1[oKOcCi-(1W?(#cFWn[>ut@n8O:_
g&5_./aK(ImmQ1scpka:)(9UoEt*50ci7Ir]A(qR0ZSuI0hGq'Rl2%;hK#?"aGiEt]ACXK[a(7
h96IK,3J^c?@*qe)H+L>c=&;4C'YOs1N)M+@<1Es%+XH-&d.,&g:6SHtiN]A%lM@5*f/"2J!t
r`6sWal6eGBpVgs24C)9]Ao&8S.DDd4C8D=9F`//Ii)oA_:<Eaj1TLR^6kW31?6lJcn_k`aop
(KC6j:GrD8nu]A^(^%HJRkeK$s,(fl9Q2KT401+o\fm_c!G6ddi5arpKuYF"%d%\/8NE4ub/>
F'Sm)LK^fgLbSQQVda_l^iJ'ulla-[&_.f"'XX3d"o'HF\'?N`/Zs'5TS"\.otMeSL8bqosZ
-M%PL?+M!6$X&dhjRB:]AHO?likV1TaNC1_X$3\uu-*oX_>&U3-0D=f1?nnHA-b?/)!@WAF5l
kVGr*2O:^>L-)S:s>,ot/2VgbVm`jRUIn'Yg61fE"N>*_I48#?RXOGpR@9PiSXU1ksbVVDN7
C7dspT(OT;u)PR"rkY-_e#M)0JpStog.\o$c(`OmSDfq[dQnFGWC<eXP?%`8kf!m1[%MtRn)
mEB")UZpT_5]A7'FiusZVE0em#VCo<l[G17MnJ/+]A\g$]A,qBcVrDs&9mq2nJlC-RbC@,e"\"p
KaL:j"C6qHD)RqQNhhu^:d'#rh/;"*4?Pg=b=5$6c1XmPqmNPiHdjDnQKWZF/I#uK)q'`3Z`
44'r>\-r4^a!4a";;\XOTTQl[R!4=;>]AIZ&`1Ap2H!-<nY)33=s&^^c*3ULL9r3qMD6836_h
A\p!6#DN;5EYLY]A-uefqWs)f]AsHM*'>*.+hc=),I/E.@%asQmIMZ6T1R9??'4@LXi@WnoV7q
2^^!7<$6G698VZOsM,&)8m_C5EA/1nD/O:?/'I_9XZQFl<grTXoQG"%*M1UAH]A'$2^H+h29`
Huu\_j['a!BF[9R#XP/Bm]AgJ7Jkqp+d?V!a0jR3ju,JqTf1@YJBN_\XJIc"2r.5#ctnmS0H7
<lZDK%rVA8/ihsJoAQahrM7bifCLp6B(Bn*'*hVO;Ep1P8)B2qDb;\_?"=`#(*S#o!E(tY5i
WeILgji#9pXDLY-V>%@07^!-@0[5)cdF2CR:LYf)hE%"K?cHPD)?jmAp3FC;8Cs8R?&hc/n:
ETip^S&keEc3t-3sq1f,_60q#`:6C@7Ee([\=h[m-p)1m%G3_W8gjT8Gn>5$b4T7(E52?Le?
NZ*;j&OHo`)B2lA7&V)<;F392Wg"dk7P^l4.Io$OPj%_HXdJuSX[>ddF+8WHX>5r-5N/m3YW
&JOoTnCp$\QR#%(q^sK<9gjVBcbSl"qs5[kY^b#G8_"+`@%u@\J#TWG-Wb+P\Xn';;:G]Aq.s
:SG6W!(bohDOF!"6I_dIr06c6fnCagX>k.J*,#]AqQ!-OblUrac&UN+KZ8;o#s<]AY&WG2m.tG
XdchC2tjmQ?L2.9#KtV_J<f'Rj2n.Zj'pEkjW96dlhT>j;_dB8V[;\R,?`I$Lp1J+VP$kZn-
,b=qLrK.B&"giYZ]AKje8?\bF\?4-b'9Aqh:sD\Vp5B;gm^\u?7oD9"D@gLjr.nLlJ`^Pp>*@
-0tab=0,Y1fEf2Sb.dpZSoojZ7a4K8<K-?mA`)Ho.G7W@U4Tk^2'n.^A)=qP"fum!0+*`%k&
-gs96H.A[nR')LmpCRp/+T+$\4dROobhlr=p&J;]AD`rO,cc7jA4KT[/A]A6aeONLSc4phCRG[
"pa$^t)>BsISMqlO=dI*q6Q'opkb.M%cCKF[rVoHLp'TpjGJ*+W)*LALdP$V-Pd+K_*c"Zut
Ln>FU2IdB55&Z'$,^O`^4Hc+G:%R$G*:#'BH"hi4-iukW_,%Xn!\db\CeL#c%M1/40_^VpPt
0qF6';K&CZieG8qkUhld3KLTXNNT;Q\Qjlr8n^TD6WOEgdC3G[+DfVY1`Sh<>PS[E_@2ZTti
=NJc6Yb1ceRK&DL/C@_`&;q'f1XAqAKmt&%a*LPWB#\5*qnIV[M<<gm1r*K/o;:7X5hQb4_<
OK)]AeI$"`H;EhD=ZA:slFT1,5D.$P?S=J`m$9[r+M(S^=Z)6E&:\<^GSR8MRN7e[4qJ(?PN^
+04oYr\bV;r1b+9fM[Bu^f@I(gZfDc=(rf-9+A/]ApPlI;\9f%)[9:b&e<Xg?I7%t]Ag`bWD!-
0pH?,orPWTJo?aL^62U@Z=>of+%amd$S(2T5G\*]A[mK>p'E]AB#1)^bHc/u-'mIF$+#UYX3Yp
%jE?h8e_]A)O&!oGo;8YKFA*`;*H`5=f/[@\8uoMaNJ2s2*5b(s'3IPoD44s-6K=HZ;3r!B>L
AF<hg(^D<Je/FaZ;H3m?b%EO["H$q;^8+iXVe`b:nh>!R>?8RK\)>6t)e+u-D^@"PQq-YG;&
u.1;-sj>n!bm+cf2=WEH4ij>-9""@4!*.?@LOo3DBHeAIEVH[M?3EaX\5h7@"sK$,aTZD4tt
3'amiee^0-.2*0=CZ056B1(m`Um'm,lrNL[gh%R0L!2WE$0:\eU#IF1fTi<T3dD#!R>NkSqi
?]A&?C\%7H[ru-LcY4[O$-H6g1#J-bZ#:=J6-m]A1gn</.[.KL&@+6BA8+qG3M'7AaqL:d.gOM
[J;r(5nKKl55uD.=6#XHO#"0O-hmTub\$(D<U4j?0;Sh8TKk(WmZ[-4g4Ukk$*R=g`&4Ep,Q
FWOIQC(G>Xg8jB.Cq0*CPHAt`13ZVeG08g>g9*7$1DUkbEc/W9ND1[!"$.Cl^RKeZK@_e@(Q
3'9[VaNf%H_209g"j1F?Pmo\S=4E4d:d_'kJ%\Pmk#Pj96]AT#BuDAU9PFfD"bShkkSP?.D&i
"V1beFCPVBT=R4YukZK6Or>$P[NR772I6#grojpD#WVe:$bOKu$2g`ulJ&6&T9qtL8"^h\Z-
n_BB/(2pR7-Od9;YU0aW/W+p$5H@;*LO't-/U72.puS4_3-JZHFWA@/q.I*9$SYM9Wtk8-?6
/1K\L&ocJ9sXPTIM]A#^cAn.@ZB&MBI'HC:7UV9]A@u"RWJQU]AoN-g'QH\&;]Af\S1Bb9!2*Y9L
iM)ApC.Ro"t"FfHoP.r$,IaCb@MA#$U'8.1;DAb6Zb&O^84AOEe+0R-$T*!4gNd?\cg9o1mB
I5Sk3B@urknH_8eIC.Ao=0BBcE!ZJRgV:Q#(4<T[WpCbL074@IjjB,/&/$b)+BtH"qCN^@_I
m!mM/IYP@\!T\e(3EY[]AdmIeA$0U;7"QEYghXS4f=55UmlH_RGtnGra"Y`uX!aFA!f^>.:J1
4k0M77J)@f$@>)!J=e]AC+Mh0b+8fPBaBY^ZHH[+P\[f<,[,-GXKOCGBTP/r:5lk_FR7B=JK!
TE%nE30=g_sd#eRdsAr/r*d@J<tV\O.rAQ,O'IcQ*chIO-X9eZ.3'@NGdGFZ1gNRNthSNlK2
DNT'GW]AFcH+h+k30(34tMag05GaQF&RH\0tPpNI1pqM^F?:aXctOqrAjZpqDeK)rT>r3b,gb
qGc5!(]At>[;*]A_llYkX6h#8-l``,?ZLs)`jlp&Dq,D:sQBo_4R\AaA`'@ie<jSKZlWno^faZ
Kd6_hia4g!.0*C:[cKJY%]AM]A+#S#:9]Aa03>Q%o_NKRj34>.2NcmCD46!e14=*b6)G_`JW5l3
(?C,[(LG$j-hDMD<cB'%@2'PTiQb5"Q;CXL4[BMqJ(6i5iPuK^b&j*h;>l)c\TI2Ve(Z?GFe
k$B1J\fT[.unc`3V+4Z'5<D$;_F6h-S(+ReQ\kIX+(dKMl!bmMEdSN/jCrb4?J?MnIp>ldtT
n<78nq#uqisEYjS+\E?*.)8WRj;4DkETc!!!`Q@ttPAgLb8p7dgO>T2b5BbYJ.u%Si-,U)['
fARG1N8WOeLT^oeCo.(O5Y=EQ'I9uTiP7d"gT?TXk&fY.Ch%Eq2U@JHW^q2E(;qkFu=bU3SR
/WmV_&P//29Ylu[7rmL4qe5GceXmI<N$T.ZbG3e,?$*!F'2k4b=(06T?sK*U9K[Z?i!:;q$-
^C+i]AqIX&mBHn>c('V@]AL?<<2-9GXK>nKlU_$U9`nTgRQj3>2B++;T7J6@V-:P]Ar&Y[_2,-Q
C%#:/DT;,05#W:s,gY4N5M?>bLP&:^eJrQVtfeDiHh%!%c^g[<t\@&firqk$lTJD:Z3]Abi@k
]A-PQHXI,naR9((oYAh;M8bLtHDYTN'&LGEofddXU;o=W#"B7X,^E')L:L@*$(d9./9:fKG5I
B7)K;R(o>"-cX*b0).Z8ijt;al7^rFZ0c>Auma[5.m:h'+sN5IY=:a.HPGZ=+Q,:kQPXB!&-
GJoEMM/]A!V_^$C#fak;DkO!(o14EO!n6DTGC-1f+SBVZVIQ9E>/kH\<-6UCf18c@\jXFsjQ(
d6[;oNlKrn0RdaC`Ha<oLdGah@;^BMe'mbnPTB8fpMY&0Mkcf=Tj&?!]Ar80%Pg!0MlX"sCIu
%DV*bhekMG,<d$S#H9G0:&9I%nFCXbg]A=n+M-ejE:u5mpW*$oH6M58_t#D>J<Mtj?I]A3+_JE
uMo`t2q9R"-W&igX/sPdd04FRh5AY2A:Z6Zr\PK)I[]A3tCceA+Fh:O$m$p>K66l%If'rStj\
@X1qn'9US03UOu)Y7CtDaH8DbBI[%2QG9093ZQo6X)^?05Z+5rr$YWk^Af*]A3_plC%\ZZfX+
B-Zq]A;^:#!$LgU']A0Zq]A;^:#!$Lg[tN<[e:EHX]AhIL1MuQ0I-?&iV4HG!>oV]A"YHXjJg!\T/
2RK.eD.l9Ug<bR4[%RqGBL<`md"XHcTah#@n@i,BB1qG>K`cf"3;jq7+5_>C;=pp[GMc#0BZ
'j5Hsi9qf.2nbL0aY$e*b<9O@,g^@P7U$~
]]></IM>
<ReportFitAttr fitStateInPC="3" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="188" height="22"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="187" y="114" width="188" height="22"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="统计信息-2"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report4" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="统计信息-2"/>
<WidgetID widgetID="219b3db0-11f8-455c-a13f-2e161b05cedd"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="统计信息-2"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[914400,2895600,2895600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__F3C6D4513E1005755861F843B3B914AA">
<IM>
<![CDATA[!Ic&?ie^K,7h#eD$31&+%7s)Y;?-[s;?-[s/dMX]A!!'XT:*BT;*CWOf5u`*!c$K\C<7dZnH&
:R9/ZPbDK)moi*LF1=*H9!M:5fiJM/fhXf3'Kk3kLktf%I^DYlTDP*K<No+:027O9A+qP#-(
lhTMjW\qKA@?G?0)\K^b8HZ9J/Y^YU+ETbV1pQY.EbBM7F1XB_k6bm(`I0CGo_qtG`)"i%h[
I?Gbq]A#gWXEDFXZ,<Oq_)XLb9MY`D).&gZ1iR/A@F8b60Df:%6>L-E#;G6@B&,$'G!cd!%"s
Z()Lan<9X)_U;9hc&3%aRY\7RTS0[<G/WOi5@M00cEf0#pUB!W4aP6G"orQ?n>_>#s>QkTet
#*PkhFF*1b,`*kb7WP%<Nc`i=#'`G/SL_JpGe_4*L<a2EN#A"i"61YB!#G4<Fm-9[5\6NPLO
mfJ&fPkTXA5Mm.ML1H.YhiQL\K%+H6_2*UcE%4EE72$!#n"CX^df4ZT6rporl/CT7cNL!\<T
BY[*137CZd"F]A\r3#O3R#0[YPI,a6iqp)OnRbZ5Oer0m>95(6eXZBo:$l/PO/)DWM>D[)*-@
0G-R^osI77n_TUXB^J>b'jIoO!(/cK9Ic8c?*9Q4m53ANP1s$M)f&ZE/AS_>O:^t[>nmke):
KoiICW`D8Hc!9SAh<n_?F?Y$QkG,EE?.NuWa0M$ZLCe.JZ*n5-/,5Kcu8hjIM-PLta?j-oL/
QkDI^$ZYpg*,Id.Kl)SuiGROXgjABC*gN#M]A+IZJ'NL1&&utFCg$OT6*(B\%*do@_1f!bam=
Opj7PrHQqAXEq9n.ac6(hg",,3Jm5a*Ie='65bdec..KGCrdjKr*O%rtjY-ajT@6ZTCXU_%<
Q<U^<0Jkoc)d=O5A6uWObL9tE,BKOef40^]AF'<?bTYr\fa>CpX0:LGVpph"!%D^l5bB&\&$'
8it10u\;ef.j"F:?VYe3<C8V1NV\9*_8[S=F#WDW"V)JqCb6s&@o\*]AQ^peNuUm6IDOUh*`\
&^OgS:0=G9a#E_UKlM'H_T'irGgYUm-hMaMiq0Pg_qi?MGAFTi/J-a6E%#d8b:X:/j`#6.<N
(Joe@&`n7%DZD)*p$(cZdFUpbKsmm*A_R.hOci_%ShVnfW^nJPV-u0/Slgeq%jb_FmfiK><P
gi+%4`VnTY)<28`8=,0!&+G@%!`"M\H8\+$PXQ,:E$+BFX)m1FY_[0eZdmDa\9D.)Cj(jhk3
Yhi8/'DX9#u,)>QE?,qc8-6e/gM9+m+D9ae(8'.f;\8%8"3,*M-d\`.X1;%o=s)>CV]A>=oZ4
d^+-We?GG%P'p4YsR#ljg'1=ng5nh[)-%pN^[@sn=lb*d6d:-<l)to"fm5ZEF4A+pBN,:Cj7
Q2nNoGa3gdk<V!^:`o<f,Y=qikB,,2;$O#(-;0TJ0Gn[WZ1aB[Yc/2\VEe'AQTlL8to)G_`f
iLZuoXGO%!1(rRuYG=gX@oZV7egN#Q5$Wqend<C[12KlgiVnX:-DX6rUStttYuQ&K<#&lbLJ
Tm:6T9F>eg<8"XagBN'1o^X9M+l(eV"*oD3N%P7O[8mCa+H)*U!7%)P$S:\H^s;lGI\b%=%_
["eInT`b_frhUHk!0>/+(S8H,o*&TqIE$.^S'_:*q[b8cK3Z3_mL:-4`e%g8M$2A:Xm4T:s]A
AU7mUiR#I$(X."e(Bb]ACr\boUu8r=!ZWb`L11iV_$Vg#83'OA.#CRI<Q_n1Ls&1=^D!m@&s5
Un'$6Z_7"u&:8rJ22</[A=Vr@A!T:pGJiebe/qY.B0l/Bkb3W;_5(ZCZ&\/[67OAVdigIG&t
foP._?,'%b_i4P!$=d\:)M]Ath+X4B78]Ajn@ZqTK]A#tjO7i07sp;4UXIF\^sndffYH4-'&-e9
F!a!jACJYs5W/HP@:cnDRL9O39kh=A3#@GeQ'[s8/GccZ"5/O3<`C6p>gG@1f&h!=@!QfIo=
Aa,[!+qlsD-nLMLtC;]AGE-L?oGi<=KY?=ge)+4l&A-gU;+HjsCRW52-)GjTSt*f[/9cKH0/(
u%=/;hWBr-.jB-jNkLRn1Q/t+NG`6s(hT1g>n;/*K>+O9$oaKd`j&a_LGT'8EMld`2bc&d*V
J`lrIZVhTu=?LhqTcU^FS$%qAJt.$fPr@sNkKb5s`_mFMX4@l7BV=+q@ieQ<\olcJ@K!p["W
>14icc-5%(eZp6t%IV)ZhQo)<'/-6JEJCeXH6"4SO^BiKIPHR_FZXS^It$[O4-rWVc<nQ=ai
0`S@PMYbi3ppn-_c_7)d:R#Te1sD&sV\E^(kN4<Z>!bLf]ASq-$^E;qkde3E!b+:CT&%RZ(.k
\AKfn!%OP^l4R^.eLi2uUG@O?H2c_A,,dP=_07C^fPY)YUPWp*9NA_bX@`slX4;M%MG;=o84
X%4W*CP@qQ)2NWpn-4k):KRPG3A$K_35sSiGOEDHk6Zs(*IU?''J29_+s<;(^Q;ff$+du\m/
1HB8W!gp!>4l9[AhLlr=TI#$7_3j(M"GFpDBm]Ao8(t*?tXV\E'^/]A"eM&!F)fqhM.lcD-.Fu
Nl;]Ae9,4#)4q^N3gDE,)/WkZ"md47_emJksdcNp[YiB+R%`IGdAGmoU7]AFWO9B6mHMaK6\]AD
HXUA"a&EbZ=;tRNlmV^t!6VB<JBt-e@g$o1X]AI:>7<.<YK()=^nRRAr^IXD\e+^$VAJ%C=l>
qXl_k5c1ph><f6.bGVhB%3s*SsC*cmcPgY6niH;d5G9/EUiaX9:I?]A'+[i2;20#<E0'k$\^H
*kLP4;:YC+/W-"?qh^qN#C$f\i"QH]A<Oc8,fYL]AH?^(`\YY"Nc,6g@Z[6/Nj4aWLFp0>T`$!
G88[f"-<C'fKM)#RtB.)Yu\LfBHgTV6`HVQIWa\(l5VFg/%,Yq=LctjA/VD/LPIP"U5T0&!U
EsD/82OA_mXn_mL7_Eo<*cIWg_V^u(a"K5J>eTdhf9_6]AcXg&MUrNWVlUtb9;s>iI=7""+CX
B&%H+`-k&aA7Og)>XtnMsI@;3;Q7/h<g$"q59[dF:C:]A)GQkpIug7RkdBC_F^!p$rmSs!dqT
\Ikhqr:HbT[$G(@n;d[AZKEcT??/KIRg[+ic1Pd,CanGNW%=T<rNXt`Y^u[:GF*91!N/U=o"
E9ZmHCEnA:>:jeAO=P8No0/AC".['@3b?G\</pUmL8E>AR\Mqg$qY_#_#8qGqciOFW+MgNkC
,&2rU_oa]Aa?4#r`D2e]AIn/ERg2o23tn$!5D=5_$B-AnEu]AV]AUdQ0rJBod0gUNL$/KhMYnrHJ
p#GL=Y$fjA*VQ<>ZV1K#OB."\i\%%9N2(LALiuf_kn91*nYtZP`RbUZq*W9RI2-uRW<YX5.m
G\Y`U@OmO:;1`g^#.(@D"OV()tHd)_\:[KV.D7"<s"el,0&Er(F@6hokH)o4^qo]A=8J9&t"M
7'<4p*^[BpMCEjHMQY5>^A5ohA<Q,!YG3e\1Jj-i5<0,)\N)doUZ2PU#($!`J,B[,LgAnFPN
L91dN8"D;ED'+i^(o(ODobF'5=C3:^*VERp_(:SR"q#AEUTH:5nJ`khA$:FCfBQ=DB>"/[J.
fsi4dPNGki-82I_,C("S)giB(J-GW`V[:Rl+6'@_uQ;]A>.A$MEGY>.bPNNI=[SfH$j-PK`Z[
`)(g#2IZTI>\<h1pi$[kQb3YYV"E^6N"h"a*0D:&A+r(n&2#Skm%C>2d7W7T=c=BA19p[P%T
\\,<M:meL\>.JkPuCALTsrIKF_QA2;cj7@4XE!K)$dlnBH2@k/WHk;&HWVOH_0E*6ZA\hi$,
%E#o6n1Jp92A!4*lN=m_T]Aa)m)P-OG"(;*c+/#!bbnblQ-fu<i'Yl:R655pgL&R9le+lufH;
MK<[("dW@P*9+(NCR-+)Ug(0L&Gc+[uXV+4/*=fWCaQKlL8Q.-n`jjYM<5(=jBc4ZZ=4D2NM
X_n\;sFXk4Y9&aMYVa%F)RXGcGaP-BBd</b3nfVf%5_?Td@O%5(PLUU`,">)DrKmAgZpi^0Y
]AG/W?I>q>Fh+I!H`*0q!fKra3eBrN2lPm]AkgOLo>RF]AuBmmX'\or"]A:^m/";YJU3^2&<IRFW
m;X:J5%ICVrJ!#nCagSREO@5gALElbeUA5qEK3a-*)]A/<UP%G&#8*OW@O=h2J30Qa+ps'0f*
+6b`PSlU[]AUBnp:i7D%E?RDk'DAB-M:Ut0%RN%Pa]A'nfhGKqW7+abMjK6-fB.]A]AIuI^6P!f#
9PS?I,nkgGn%8HL4b?N^_0hgZ;;j[6`RCNLfQl9H6TL!^W^F\^;e5RC]AVEm.eQa8A"aMGL0h
ZaYYm"YYJI@"9irZVQA>r]AR#lO>;L:)^;N4nTL,`UO\5P,9"nEPd*d@j410#ufT#*')ppT*A
XHZdo91TP!Lb"'qeVH^e>j$Rs[9+\q["XXt@IYUA+_ur_*M+,DT2cPL.nbjbn]Ac<CZ[<8en"
sTkfYBJTfrktA!Xl7rkVA9[D8DRC=]AUKhU".d,:lN"8Xrj"liVD+Ulp&sU?f_^4YL/#]AoW]A1
,#l]Au0mp`'Vbe?T9Fnf\-0_VBNi3DKdljV+Y"29$h0DX+\Kj=<de$[B/g7b!W@XJ5jmJ\\Zs
!G2+L:ar6g(7;=*H@@sQWB%=Mq\fo15M)DH;?Z3hH1uXdON5QllmLI;J_Oa'_[M2=3(cH\s-
&.Jsp<@EVTlh90N$-Z]A05,F<041Y/-1FeDQ<#-!jA",?Y`aFl&N=r$86J^IbTFiTq=JeP%*f
f>[Sg0-br1O:+cM#0[o1Ol!tTZ8cRo1mqm?M<uuAY[!.u0/VV=V^q9JXQRVQQ$>0_*&!hb_!
\!j4Him"]Aa;r.25,ZEYR<ZV2h7N3&)cXH4nqt)(nq54.A:?M1u+/'mUg-+1S-c,)b;5"5u&I
1'X/6=]A>fPTX9s>s;2MNS8Yja90<l&N3MdO;b]A6:qZRd%ko8P"UiC)b&KNO45[ZL)ZaRED!K
>1)jYY8FB25;?;WQIO!1STsqS?3jN#LU*WUgO<Q(fr>pCd.=fN5oaS+0@JnA`]AF]AJ(ER?m"Q
T`!AYjNj^\'k$Ho8e(ag2jcL?(0L`Mr'_9;t.R[B!/rXkO$De&Oq"M*>7$!-S@["nDsB7KZR
Vsr=d.<mV(ng1F[n!=m\;(DgZfQcMnOuU6fZ$L@[S#_l!D6Bb]A%4%2SG+>`5:50\57l91EL4
k=Gb/M9uQ@e>#)0GH+2A-d,3J9O;`o<,AddUP^e9s%\pd%ds4t)d`*(BQ-qILY'MIejs3NPX
B220'ZP*X)acdN.tf_H)5q0uAhioTcKfG0s<LB>f\BtlI2l3^L+,t2iAM55gs]AOs%gPa6Yrm
,5LRCTr_;jMBlCE?D$s?'H9%adV]Ai<&^C0d>Qg.]A'rBu.pem_HR5otYF_c1^A)`]A(f+F]AJso
G8L^/rP@]A*QcmLQ;9G%UJqA=^4XTG\7\.=kj&(,`I"c3ods%!^J*+s->/`"#p5mdaFgCN)Gk
C;I'oHIg\uB2Y2gCdp5SSo;Q]AoNJhO'jcg%`9X[nGWE&BcRY70RoS+\jLCULD`-9TIIo>N+&
IVL;q3jWjgt12^H.Kds$=:h+p,M%ZA*TO]AaYJW(L_(jKsA:C14pK#W!=iP+akb#Hif^1)=4g
9f4$,6o1io>HRZVr$81fVA0V9UH5SSIE"s.P_"ik-8u3\Cpg.b]A;8*K/<-.W!fN*Cc.%WJI$
<qn!Y[5`>.=W9OK"$@!aP,<r1OLUG<^tVKFa,4`a@ib"IG<mkN;NNFRFE]AG61rkMdY*<`Y;2
gmlT*Y!'J8hEX21CG;.Q,5YTO`MMNT0YH/?4X.Z%M;;WD(D="o2be8E1nMOMLYPT%#a)fS<W
(3dnKYrH7o.mpn8.GM+!hE[K,Ng6mW/.Jf&P,K]AYM<i*3P=,*lI</_r*V7-\n?(%\X9bnY?]A
W\-MM`PIFO)XIOJcRj'nDXF$hGc`k/CKmNAr/##ogqPMBUapd>r4n)fC]A"i->\f@gc>$jGgH
_X:+I43X3eCi?S,@E%gX8*lAVn+h]A'iYU!>1-dFc7iK.)V2iPhY><d"l#s)fncPi;>#1WA,N
RR!6-mXl%U4aPhLNbusV2'q/fghU1`X32b=`B./1Ng70"j99&W%G"K6L3SF=G`kZV$J6Y69t
W(lb^f;7Q`r`rW\^8=^r5Ujmoc[4ZSL_F)(6fWB+jg]ANW7qS$*[EU@<VVETt"fUm7CR't6^'
89\DPfh?0un[pugRF\u)W7/'lmM"*m^,09+]AFh3)Qf&p2aXa8Mn=O8]Ae68\3KH!IXfRRM.Fp
l@A_p%a)4uM&q8F.545@5n\hFPYii/;i18S<BX$/N&tRi!g1E?ITH0,CaQK_Jnh%';+)&Bc:
He1'Cro94M&no9^t*d7Ari;8IG8'4:ucKmV>?;kpjZ?6O%/HumtcG724)Qtp<4;LeTD%ug3"
-hFL>f1`"Yt@-1?kQWU<KDhGF`dX%X9bc$L9/9>s$gbW#&L#lhbS08,$'PuA=<3m7O8[O`mH
p1oXmh2^YqRA3*4BUFE9%9dQeVQUY4Vu`6(2CPJX+,:=FJ9]A*#7/Bu"eaUCib2E"*isDr@;S
8SfV0Ksb;MZh":HNS"tEMnLj1307C+%kAt=`;k%KQ<qNkl^7'p9h*cO1XOfs(t?j(HH(mfFs
U/T#'!uL2m^m1Ze]Aklam5o>(&1NT/M*n5>Jggt]ASgd5U(WNMgo"Z9fp?;5:$bSf_bWK9`%cu
UnVj>sjL&s@3i@q(2IDN&,`rSKPO9pbm4X*iOHYgZWFJ:JO#8i%nNUV8nZVa<"S=^:^asqph
e*K:KSJPq1F[1h=?)_"kG4QpKY]AO38&f\Aj1OGNg(XoXaE#sW8`M,dr8Z@Jr:JK-`&De2a(W
I8qf&O0)t/M/i:iS-E0t*>BZ>/&R4b9EO(l6[=_sX'\I^^^7NC/B3@\m@SRGnja(oCZS9$6J
`d>Ws!iPjB8Aci>9In)UoFeNHh-]AtTKA5em1ZmBRM#>-]Ad(^"8mZ/4iQP>ONM0Di:3Qi.^+f
PW0bSe;Ob9lan]A*Yc\"-WKia<&p-@)R_]A@1u6</R5D;:e%-`4K?H`d1PFLN[(l?!qE[.3*=a
mTB13)hmj(VHL_[i%S_On9eWNk;R/=1e;*2sbHWue""tu8i'=j\^Wk<f&=9:BqF5Hsh2=)S6
):L#OJ/8cq-G'sHHf"HYp#C`QeX7&r7pd[d,Iitid#bhhE=qu+%55KfqYHb+>saA>&!6u7?[
W_rej5ERE3-<^LrN8\sR`=6YJ(AaPaaQe9f7-Ya(A^F'pFS?jV"q<T?O5`?1Xf^b7>tj#<<(
po!Ib@K>k\m,-kuiYOV'pec2ZI_tCUcEuU('2<_')K/8V&_7uI_Krs*lo^l"^]Ak6_fk`7pN,
"s(Sq+.l,U*b7K6"4LTE8>b`-*mW5''2M^$!Q-r<t;I=m'"W._L27(C)Sbj!X!pn4(D??:uB
Uo-rL?r'VcQ1?<6\aMgN(&j3rtGsA_+.njiI%+7&f%4%*jCjKe7%FSj()o$]A[CZ^D5k@:Q"&
S4ZoHoSX$a,7*U$"O-,mUf(V%:YsW^Od?/RZ`Dn1o(4tL,RuPYUV2'1f0dN@U3@\ZY:@CG>P
:r@1+merC:l>dRY#8MNr:<YSIJ8Or%VDF=j=i4`6U1j&X<o>F<KLQ76fhBGor2<dBBu@o5c;
,u#W39XIWJ[:0.kTBCF&dRB%*//5]AndF=9:p"0g^LHSdAON^98rX*cFpV6#:Em"!D>"F;^2Y
u17NHcqW!"T98?q5;Xm\]AVYa+:=%[TjVPj4WBo_'H?4ZipiT\u7E?E(A[ubYK4rX\"/4+59H
AdYVQ76C)^I&TqLe--LL!.e(BM9IMA"BOph>-^esKAirTLg$#%u@[-?tH_7Rl=;X,OKdV5Pi
.MFF@T6GH8VF.KLij"T<ch7lFCT$,0:&n,DjFNIdtS%mZe)G`/3&kglRp&t=X,nA]AZq;rY),
[s>HplK_i<#&V4!NINoQBYB$,a/=E?/,5"B:?Z<D(=V/;61`MPU-FKu-E:8i/:bQ-co%T5h.
;b2u-RgF_W8YO!6>1U.G@GDkudI,2CcG-:9JNoaGraY36DR88Y8Qnj=n@sIffRbKg/n5p>af
<-kGR&H?db8[[p$)B.C<>s?/<-HCNU3@OlGYN4G\adJPL[T]A,F0hEYqhi4McRMg;22\n"kXE
UNu&Jqn:qo&8fZ92j2S[=aP,3:\83K/gesXnVPj;mlgX=f24fkG_>X?ZfQ8ALl]A:1<c1*!Z$
7^b=9Xo$dDNF/"9sffX71FMU=!'AT2<.`KqkCtC=RTINm70h==AT=\4AggM"b"J[2.8a0JU$
+mp-utQ%hm$HMF"n?hL[mFoj$D+@BH.7X$]AF>X8si^p0JJ9LK2ia4s&3mRAqM^ppgY\rBA-!
,8o-U/;)(2')%kE`d=5GTZ1-qC8I9qYNmX3+B#jPir1It]AQW;-7G;C"DMRujLPV7fV'6/37;
IbF!^=gM_0bG6p_e58%h^Ct2ms8n7UF)%i=+o^Kt'4U*8=r'n3DpFO2k;]AV8O^nRG<h;:Mn,
W9Fs^YUIaf/5cJt&h^L]AWF?:L^ZBJ=e$f`!=ROM,)7NG$5dGn@.3'Kn%`S5$)XJZa/:H%65Y
-n"X/+GAPjK"E.GV-'*YK&0`j3uOPCeA=)8pm#\K^a^>UifJ.FOU_a:AW4qcLKFl2#Y2MO*H
dZ*5;ml]A:J6-#e+(A/$l]Au:a@$c_!d%8PO0X.P_A1Y\8Y;^6o&=J9S48"eLL>DgMp'3AQX'k
r`%^so6r*fa)J%I6^_CLp4*m3'6[?5(J7sW:,uIl$"i?Wgbu0[#9D+/WO(nu1`Bbt%\+]Acr=
!@3b+#JU/(31R388+39'n0mW[;^X3K@%gj%-0h_eEl)N6Y"*oh?T:4b8=o/Oh=Nod1WZ7L"4
'9u8G![FjDV35-)Mo'o/mZWZ[e+"UR=eh;ft_K&+JXVtkI3_YscQm%k;4,.F?@rnnd_EIYQ'
9?55K7.&J+F8=HMZgHZq_kqUfK`.d#&I2='tSM^lD3qGTZb1Jm$JLS=f,Tc"M.-uc(r>&`$E
QQX%//++#msd;EmPk`ohdt-]AXqg@@Pc$g+LqEBhQN+p.\%jFXEKQ2:A\BZuiEa/KB']A9IA5T
_JD,W34Xoliob;.6Muf1b@'=h7]ApkC*15#dJC\Id`p+]A%d"oN"9Kcf@\R7.4E`f6qBI'N<8\
E`Xjo%7(Xa2Vo%+&4smg*'OfnKg6PCn%2>2A5a"(K$/(nrOA3:%J,>>nQ9gQ6leB%<AY-[U$
=NGs,kG,I2g(-5*%k)M7)mO=@,Rm51i)^RsEl556EKZ/LFP8-Q1g?uLS4?h8?NXg\0e@!(ZV
"#u7TMrlPCX!b-?:U>)R@G-8n(/N&SdnnFB%Y`bVa^p#L9mtTD9gS]A23VupRA:+DDMm:2`EA
gbb:jB`BpOsW`tVTK'6]A/oL&5kZKJ@os&XF]ADN.[`W4.nO\(%i>%3--u]AP9<k-Vnq;%5MSAA
M5Q]A#i`p8@@tpCdas,[aEm\'9F?%qpNPK.YOkqE3h(>]An6e4\s\nh>>lMgmp,W<j8]AU6G6!!
!!j78?7R6=>B~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="表格2" columnName="count(DISTINCT 运货商)"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[运货商数量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="1" size="80">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="宋体" style="0" size="64">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@3oUP3KToSZ2';AQDte\Q5#]AQA+F\94]AlBgGJ%jTGHUuO;aPq,#VpIU-`G%j>Q+1Q<S%j$>
#m0,rqBfLa8o9.YnIg#TTu8\\@5k39N==5B+Gop\hb;%hI!75PKS3V#BEV;VeF\=\21Vp"*Q
@IofPE=4[6.kF^>^H&aJG;c3[7rmgi*q=oOZ#4bc&%!"ro@b^BFpD9Yh^\*4$R(O=W5c#iu4
S\#cqhp#2rb\*Wb4%SU3%"\Y0KFU$HIJIYc+A%XQ!Cn@GPdGJDV]AI3)><YnF/;$h]A"2]Ao39+
mU1c)0jVPTT9luh14*aHC#!C^HFM3*AGL<S0K^:m$<Ip)40i2ocRP\JS"/Le@c1H4GlV3h#A
=*rRn4=K8#CCd2\+82?dXr[H+PhT^[$/ZZOKO6t<r6,7.PPRF%'D-:Eh;C19DNW97::o9OP=
TQXkRD@%\T&*DaJhf/.t<tV/Ee_s*)b[&bNaMW8$Z[-7an!:I`+>j&jEnECFk=/T,NWG>@^3
?eFV6T?6FN+RP4J^m4(kD4P_2*,19(VO'"MJq:s\7De\<bcZWsn2'H5HV5e:u\g9)tdZ?.h7
Z9Rn"cjIOjjANM9R:LXotQGTaEfqTT%&ICMWIC.WEm^JrUfO5emkfWa*N;$Z0.HV0chG%NI$
oEke3a><cPZSmH.J:`5D?0CR/000B'>4`2W<deq^86%mWl#i+U"l6#b=b3,'4f^=Wu)!e[%r
LHHKX4+lIaX'BIgZQ2]A+Ze#VRE7uoCbB%G9cNoX)L>05*<hI!GeJIF,_t6^r6m8_X,!jh,a!
:9:^_Mm'Tg1nT0^CI.,#-_n-OW)"o-S?cQ;EisrYen/8I<?%1Vi@0-3S@FLKU.U2p;0T-*&g
5E0]AJKUY\VcI+N45\NjcM6(K&I`onQ]A%d?;k&(N)%XD6,3:NB<&lCgN,&O3!\+C3,$QOaBtM
89MhXeau6^?0o7pFt+`-Rfju4b`i"GufF;Q_5^VNZBg]Alo_17`CUSf^_,3Z*O6[i\.-GJ1,n
j"JAV5Net[C[&W+\hjfi'V%t,6SX[_$p14o>Tpk.C^oYIDrn2>e6j?5)e8j5Go]AOD[.=E42a
,[?c87/.^^``TugatngN`?3u=()"JCj-&nKa&q"lnkc^uNLjn`DGg7[IRiST#U(:jH`+*XU0
Dq0Y.SfsE.mT(LOuc7?Kq`).NY^efh'fGUsPa%AbK[QiiP<VpNF&4FAe"_*)#ZVqu"1c)gG%
s4&V!HPO9V,=plDKq.R:\S%F;Q!fnTb*35N%AD/5i^fC@jMs.^_2o#PLT<Tb#6UW*YrP9j0N
/&S7?(2ri1?OUIJ:dkV!ir1;i+3UBFJ)HX)bHuZR%:r\=A:fh3h)9qed/&U:NekSYEi[K6+-
QW)5=dBEi%?b`@u[b`itj5.D-'6c`oRnO`,MU"`1tChEd/!7W#)(ch_'e^h)4sDS1V*EX\G$
C0qTi=J_[@)<;1F"@FcF.2\q+*/;fB89rdlQ)BH3,GqR19JmP99XB%iVg[$p8W.`mQ[-X,Uo
?VWUphf;`(+u.DE3pl83-.5XB"XJ=MQ<[KM,'h?:cbn3IjC;,de>b1]Aq;YK/#C.,l(eedc0k
P,/1ur=Mo5"'2[SDl(T$4kqc\&MfH%LfWJbSq?56k6lmG;2mtaT\t?TGI>q.m_P2d&g9n-i9
CDPEln6V&@J'c8iUI(E$eBf$G3?k?f//MI/KkrgR=0/"/'GeQ%f9r/qfGV`FCZTiIQm+?i<#
&K&:;:X44P<$AultTfHIZ_VEL0->*q^MWtfM2cfMQ!dAt`k;sdU+]A;8"RF1i6N@%UL;b3EYs
^ok1i^ZBa-?[O(EMhQc$$!W7//3\s4OX"@$@en%)UoAl*)391T(>?c_-V";3[eKt\]Ad+)u9M
=)X7&.,lDpbX.h\EMZ2^/Y9V:\R&GAHF"Y-EdBFOd2$cGc'!n00F[NU?588rrRW2'')`$#PZ
1e\k+BSfKYQ*/]A@uSjHZN-.@ju1?/`.*G*)LhY%<^qhZp1"8!c,+MMC4m0tP.o80E5_^6[<2
BSHU<n_9T/LhT.HuOSl+&@nZH*!#M=Z[B>)9=q/0s.(Y]A$_X)rcYQm0s_S:318PMUj>tZD`S
l=*rZ3=T`oILRWMtN:N:^1*IMq+J\Qcdj-&>9ig7;:4W7JGl<*/$U+loje%'>Q0=lGpF7e29
?)g$]AE3(e!.KDjX?rbdCgY(:=@jcN[-_!L*PhLo,rqcQq)Nok;";-DZQj*VN<ZS`3__b1B6q
,BDGr%;AbRidW<u#C'T:s96QIIS&?W)G]AOOQc2&mb28GY]AA9W*56j@D1*LmP6,4oN^_".1"3
b#2OFRPhm(W9:lVd@OP5J<AF%UTT=Y[_1>q,lM(XqgYoe7Q9=eWB2TD)G;&XTgG\/gTN`.3-
Ln]A@;JR(JYK1XFR5^&&n#i`f;a;81A%X4:KMZs0l:c.c,TN:OKXBe`'Ds"(cCb6\'s^Pp&^P
A\)a5+$&JE5.6Fo[N*?j#t$Pl(Me,^,VernQDh9b[u9:)4:r;eU#41-&d/p/!fE6PF745dJ(
(is1S@FbG)W+n5lr*U!s)6kIb>s6B;69bZ@`*gFm+07,KCjP\0$CfnC]AOJ26<PGUY$VJ:3Kc
<1Gp6T%RhR!,tO%b<&.:g>7\)CMN%/@9<26*DD,U=)\%c/VFZs/2CAot^%RAO4.;<A$B?X+Q
.`&h_H/I7hKGkjYMpI05En.XkDkZ*8^c!N0carr,m2Xg*R9A1mI=tQXHYBgS^dsWYW3E>>;<
3VCYd*?A_HA0MQPobbc2;>EtlMNr>g*GsNl7#?[5g;0N\.r[Kgmd]A>g+Er=k:2^)eV@C4Q(J
I?&69N[>4qI.H]AKLV2qml^"&a%V_eZkh8V/J.q6BL!40I=e6$;)hD,[P"1lVE+9A([4'lMLV
BPYiI"XpYJaQ[K9M=Lu3qrW_KX5o%`Y*dh_mXn.-T:71\-3P$OgjaTL#Rd,T,e;3("DB#b%6
J.*-L(-OoK0!g@=7dF;rN3_HF[lqZE%]AHIj!$oMhRULb=ZI=3%d(XP>M,.HAm1T&DQ&:K?[n
?YjPZrotaQlCj-gaoSPsHodd?uZS]Ac_ZZs!]ALnnNE)A5`6E0VbgD%`'c(h,EDE)8'1B!2g"H
7<N-p-=mnHFjg9*^9X7*a2r'8pim?+VXXs[P+Kg(UT*K2Urgef\(nJkaP\&1GN6VYh3`qQJ&
dM2e8AXNu3Ef2@PNs_N\V:0f(@"e:i7<kkWu<RRhk?Pj(Zl_.?I+kg'*tfnmXRb'a1/!D6\7
D'<ZA%<s(tVbnCCe?eY9p"O/H3,UM:k3D#5^Q("7QKef4s/N),k(/K"/NWg>2Xi`p5GEA^!s
9^Q;`O:)$-IT&Imgbo3P0YMW#aO3Pq=Y$['75kmBr@mLd9$=q(T08[E5d%@FBda*1G)7G8O*
_5#^B`e^/')aEkQ>"WNlF;`N<*n($\g#7W7mMh?RfrBAu-?h<1V7XETh--r/K6Y"tG&W!ePq
?tXiY1f9]AL!>.*dfoAW4jm:#TJJ"ehbfG4+5*H4Np%Tp/<ut6/%)`0K5kULho?$H3te_#UR,
u@<[Sc^#ZNAN4Z?WKL4H>&MbG)NPY?F"hiVmD5sT<?OJ^V&2N<74ghSSi]AG[F??=:7(q?LE[
[liOVBIZ!%oE(4l.?YApd:R1NZ(kMjit$#Z-3>3(d>3_sQ>Ds)Ur)]AhD*525nC=d@qHWs`f?
cM"5>X?Ha9`W(Wi!*>41$F1-q"X<jZWpF[!d4^,3g:qEB6rXP9!62%%ZCDKJO>O?9[SW0hG]A
?$82X$_(8?9<2=Y:J(os1-A]AYh"P3oNDM8Id2@W/'(NFmqFR%__l--X-B/NY82;dcbhMBAk-
oeW7/8=kB)[d..rV'6AF49JZ)K!jf8]A`6igP8:[G\Psi`q:]AN3eJk%=2tp40;MIT[/4%WjhC
f:K3eR_3'Y@4D0nK1I556q8%qq!OqXqZhR?J6qTkm8M:hgl[`JEap(AiWUH6/%cY0&SPSX!h
QD!M>3fJ=h8J(:0GJ[!E4%jmfgEd^_7fsEuI-SO)CpF!?XFG_r!9N=s!C,l4e*<mP^Zq_Rq)
ET+22O1dPLM,i*lDig9<h1K?@[97I7o%_orS.o7*O=g\s?peI/ejq>Xl4$YV]A&[^R1/!6(bk
"&W7a-lB[dnRi3JSZYH64G87u7P(a\[Uh:#+ePoH\3q:j"T579!-@IYBC.>qe]AjWXSlIFS/A
Wf_hN\:gMk.8A?VjaPE>3+]AHC$VZ+Q?RD$,:Qu!Y;]AI:-g+2jO"i5"[.#U'Q@AMH(g,:?:S-
0pgG9`8#RoZ[m3,M@Ye=Wr"R%h&Og3noh^0T1?DXmY=q"\KSd7A4W\8=KG%M8,pq;'f^FCFK
\`'MkMJ'10^[4q#hME'[4[`W`K)BAui*da)f=,Up@(CR22@G[6HT04mMQ\,9TGD('g"$ghGC
f[PF:)+OG#5%DUATY^0LreQ6t/)d`CgB0'iS;gB[/(JKujFL)"":c4Y[VJ=.nK2<Oj25hi/0
/(o9do2+o\gGY9`u>TdDJ2=jK@n:J,BfE$NT6;BAtR>O\1/YpZUS'\l2L3)BDdW*pB[hjEr)
#qm!TaB)E38^dJ3(RW8e)9aV[83!Ni!?,]Addg@\j*Y0I,Q)V+DG,u:AAsY%Q$p>WdP]AEl5o6
%Y;)Sn(3c6Rqom0*q1a<l`&F0<rIKX$n=9'4QC^!ca]Af9mF0VHb9D_WWZcF-r<Z09Q`@W)I'
'XX"i^%=,8l9,&oV%-qAZCS20[<8V&W"[YqoN61llN8_@_U1-':QU(QU\$(Mj/68VH9#6hB9
5,,KT7QuEW#/`N!V*;B3#I+90Se>h6Hc@[S]Ac1./H,3p+h7^@F9&V`0L_D,>EGY[H!U6ET5i
2^jGU$]Ag3\a+bHtiaks/@f&ftB@p`-C7^t):.>t=`.gse37\#u79bn(TdJOD%2,?l.&ZFRG)
5&@^31NRm@?;7;$/CqH'^IeH2aAoYYQ:i4SllHs7<g>,U7I5*`U,)"`+-YSY>3$u2sq=p2"0
`9=MCXKZ_0W=WQ2BV$,RV+\s\+/&S\e;$Am85Jps\C3H<HQjLLPWkWD*"i?@dqlDN@9Js%I:
8;sp"S1_Tths&Mt?8oNV>Z&p>/R&p@;9:=rAQ3-3#]AYr&kIAI!EtT@2P;_M#q6o59>+Q%)8a
AG&iY=tl;:/h$dLC29KsBPRN3JDjfrrV[d5&TMqS,-D"NCT.-$K%kR_FY-'bauR.m[JrOXYN
9D2:8j%,<J?4H'BH%9!QQZO?o)6QlY,pQ!6eWX?>O7^E<Sead.3_&i"/d8+r?jo??6%0_LGZ
M(#hqVi[kkaiK>Ko=^W$EuSNCCW!\n,k<;6EOKZX>MmqW):baPsd7n7doHM/HE44n^s0:_Q<
/LZVm5B8^kB"CU;,52,('_UsH_9n]AF^`lNKn.$ob;hY`R6k3\#mMcd)5=L]AAI--dRSY_\reA
[jkHE)n&5Z8d*RlH"uoLjNJZ!9K4S^ImT@tDWB-[VPFP\66]A*Ci#N*&;)f\EbS<EHjff8k&!
B/%<i8mS<g8Uh@&(&ni0'69p>BmN+.^IG%brrJ]A@Ec+6G,.49//(h?oh;?/uE!hQs#6Zp"rt
#:Ue`$7b!KL04Me(?!U7UKkIoN<tYcSctHKnGVn]ANPnhBJVj');De%H3O]AE9)8>n7Pq%fuug
9j3El.I4l_GFkE`Mlg:G;WY@h+'q'Om.=3(=7"[kX<\saIouU3uGS+\#Lk_)uS^2dhr1gc`f
tBF<3qG%:aghH@m9DB`-^+aVZ(Np@ZGZ2r^n<pihu42<Pj*IsD;Brqs1*?!F,u]Au7U`Se[(\
T?W-28a<eYa(qSAi/R"R/kSbm;jb>O<LQY%E1`HE[pDe4VqZM>8SRpJisk>#GJ=rU9##bWBU
&KCIg[_u^OP-;XaTP^U/eepi7lk[jE+Fr.s-KJckX,Y=6KusTdt5=Y0[op6<E@XrI7n`+fF>
l<RtU%I"O`^7bdh+/Wh"L^Rs_&rr%-M<1j:-W'CM9:k8sQTE5k,5QrW6JI5AL!YtK[+3X<D1
tP$?4OX5[VX+-/P`uZ-qt#QjlhfS/U'akm!rp#EL!oQWX^e3-\gHb8lPU5rW`,8`r%A~
]]></IM>
<ReportFitAttr fitStateInPC="3" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="187" height="22"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="114" width="187" height="22"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="统计信息-3"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report2" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="统计信息-3"/>
<WidgetID widgetID="260b00ee-edee-4967-ac8a-bbc636f3eec1"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="统计信息-3"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[914400,2895600,2895600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__D71AD30D3D0629F13633B12D8AE7A4D8">
<IM>
<![CDATA[!AYY>j,$T-7h#eD$31&+%7s)Y;?-[s:B1@p3=#fh!!%4=G$4kG)u3&n5u`*!eQ`?$>M".tSS
Cq1M4u81/!abINfuM\mDa-\-VbU>VenQV,X0LmF53Qca72aT\;hfg1;utL!'%AF2(Zk<1m^a
jS)>>1\2VBX^%(d-mf=+nO`gr.UsSr0nF/'eHhY/Pq#5U^(go7k0ip&S1#4RBJ4YLG&%58cd
>LTRYn0s-7u#]A-o>3Zt-F45!A%'TRrrO_e$YC>i!NQAN0?fa(n?oTkDo:]AB]A7A!FAiM,VqfB
<]AQ"16SGTOI"b6/ek38%HOiZN'Df$=>_bD"W(PAn$;Ye0#!5FgTj^:%qBA9e%2DugTAKYtEE
9u&!im=bd_2K?'[CDo0\i)aQlT)mlnj7,[-Xd;#2q\.oXD`A($cRhC;>]A,B`WOLZL5PO+M:-
8tJdpP(?!>GF!7Im8GI0tARF:4fG]AE9Rum?'VSacHdtmNaTJb,8NiQ<nW%hUL/aIJ:89M,)`
`q4:Q23?bAR=Rhe`^ba+%-<\[`C/+`#an(#,A42AaE0;me.rA#cHA;qV)mc<1n*P!p):r\`>
C=V;1OJL:?[;?OF%>)b\BIpuF*Za:_SN!j$+L'I0:^n$S`V=SRDA'BB/U'd)tKka8Q/0Mg*K
%NNI(_-Be/m#_*XO%0RNPrhIHP<\gB&kJ*+j?17JEl*I7YY5(deLRYbng.he^]A#d^o2GTi8_
n:M=^8b<VYZU?fkqT_-1S)0Ghmq;ZmaR^e+O$(feLI`=i(U\Pq1D;)gI"^b_i$6V+&q.-s,j
N=9V\3Y8_LXq$o)-2?T0PX36uoNC*+!j^8/>jr(Im1<$p%)GZ&GI60FFB-LfV20D+4ak==Nl
Eh&%7>[s62<cYZ=>X\Y$+..e*!#d\d7C\?jaSpWk-gj0*Vd.P4<6(mG1YbE;8S^7pnm,QcJ'
/Jj!&=[$fpTKh?=..`do@,Y1IB`cL\MZq0FQ%%k!I<]Aj*Db;/mgTi'OGOZn3D#D2N\oegh@H
Im+#@Ns)%thsO=-c_h8;;%bo5(Jr]APXIAG7K8KGD)OT2Aq#KC,k+YWZ/7?I!K0';qn9lTdIR
-C<]A-KJMnO/]A*OHMqAV_$kL:K_(N\qlq4d@8!I0O]A42TNH#=uB>-7RUUX7)'om02?(!J2_i=
m)[BDU-G\a:Y@C%aR0*Q_+2Q\FOkOQVobV1UME8nYE5,6hnj;)iCs\\R9sRJ=5#dgefd++Bg
5K<JNn`MsT2R('72!GQBV;"n@[@M$`CHE\Tu(-sB.&<^@[O::Zn(+YS*=Huj<*GHESEO5r-4
^Wi_l5lJ]A)*oLJ&fN("cfF,j9?&;>mdYSnmHc%e+Pp<#@.Q:E+Rb=gcm)]A_*4`0j5,IBa"Gq
Gk?-\tQ9`$Ca^IF:JM_00KOb:[f$aDFc"H1f1R'3[1]ATcGJ;fs3>Tc7cW]A<F?!%3^R3P1>7d
aoQC8&=bG1TU9&=7;9"eWYQ+6(ZX2u@f56'C)j5m6FFW]AK`e)SSkj=YG[[Z9%e9`_50NQZA%
UXWR=0CA/5I1!Op/H$/g^^`5t.(bB;jd=`sV_5p;&5k&=&/,rT6.a]AO-1H1$)N+</9SX7]A]AF
q?qle">N3$bCihbU,>$No4b=kO#`Pu":'=(4&/+@r=L85NU.2C>U('2-Qf,uQ,.rB'!pZL4P
Rksh[?2K!T"3OuiFA-.6(X_7qWI!4C@Do/l5Yp6L6M;1aTM]AO8<DCl'Q@/!Dg(+:)+F>c]A9i
%!M0gY^'&+)bYZB;1Ppq[uUu_b12-?2AJbr"%cDW4/NGh7QU*$FFq[l@C=%3ZC0R=-nECR$%
0H`2lN9tts2R3hIA'4:;`&0ZXb/0`T/ZL@B65m;Z#Aj)qp#h!E\l2bVQn[Zg4;h2#"+u!%,B
AW"bId8^JNW9kbepmA@Vh"*`!/XD_Gj\AW>i*A?-E"DMP0`,XGafQq]Ai:R=4B*D;\UB+=bAC
L%oYDp%4sA(WFO[@/50`p]Al?*g)r#sU.I@Dccs_(p9n^30!FLl%J7%IsU4fDn_s<4?BUdAA;
e?r\2spY6NcO?dOlqlBMBK*YLhIgLQO`.5Na3k1'j.$.7:7<L>C8Mu.6=\4fnLduAYl[NWtL
=&*g_rbU9ef'8IUO#U.aZXKsD9+Wa^YNqn_P9X<`p$Gb4^[SX>c#K>g?8R:od/1q<X\a]A0=R
lZb8K%,NLL7AWqs(R+=eUcCcNT:GbB8]A&)/T$)JI9O1qGRq"JmIW/&7XU3SkPYd$uM<o=n2j
P]At?s1?+aYT#@4ZbfeQ-$qN_Ht6p%W$r>+c21(WYl1#R^"i[JVf'2aXk%ZW>:%V%9Td]AOhbi
c9&mGl)\<QVCJ</b>t-2b-nB<;Dbf>b&hdaEjT(a/Z4<+/R;4Rr'XYmkdl[%EkqY3YM/.J(W
*0D;GL"h#dE"u57,gO2>HfN\'D%F[,f3"0J>ERf@Vuu.!D?DI=1b_8j^a+R+Xk`kKrKA$*4U
]ALdsA5`Xhuo*$\F12,$<C@,X_-%rE,.BNdFbN=HLJRW9g:k2rij-DW%_upFQ=0?jUkC/Q,U.
S@D-D;:>BU+,$N]A,LA5$ds)\M';lK6@#2_5YM=qPV;u+QHY9T1]AaV_I[90):^g_J5Q+E#3U^
NmD*EX&Y6V*.O+cK^-BQ7hI[9+6GV,Yi?QKUjl@pE8%f#1Tt90AD0>UahOZYkaS_)`p/^_dL
r`]A%=?3_<$5_I"Rr1%@)1HZC,b]AmBoY,ii?Wd4e2*f&qRNJ9B_W3[Y5T1824rf&d^$U=`s;\
GbZ]A*V0-+cM_*:BSm4BKi.]A=0=9cGFOq(8%[J(ca26kZR%IE>jXF18:XNQ3'?&1LRs6(7"tP
Qnlr<%S#8>8YM)Y4D&GIQ:i4d,jCf+kcIr%!Va=R7sUf)Rl2@!TI]ASsm?ZLCp%\SQ=#CXpr@
bg9g-\dnK$lb]ACp[*&#Q/;PoD(ls1F>Ur_,bhh"8K%VRU['skYP:X=?-IBaNfI]Aa-2[ORus5
0D$oYpGeg@D-<SetU-FsY]A>hq2"c2::(_:;2R]Aqo]ASEb/`f>&j2A)$ieT_r3s[thc,WrS]AY1
3D:KccedUN>l<AL+1QJrE9R*VdN]A2lepePLm[r+73\($0-;Bll7LS-7;5Z6,lU2*HtT5#<oU
2f43ZLq=LU^`qfDSl<N-D_s#,`l'-WlO7\7f9Qf+3e>)%$5(>,U"^QH7sid!i\sarTKC1dn/
pSchpIM5PH^k2r.,[]A.slQ0.pAsL$/m/Y9L&H<?O,p!\7q=O&-t6:#`=^>q)K+V5q-Qf;KD@
oqG]AAa3&Y5V*m1Z\<22TTkS;1O?1=GT@NF50"72"5(Y-]Ac)[V@6>EbJZB?)om[MYF,fNAEd=
t^Uk`@YU/m4e`AGZLT!cIJ\U`B+3H,AucdM.>sp.V-'\o?6B'B]As]AH"JSrgqEgUMQFgpp_p5
lYJg:U$>bO3JYuVF^0NFMdkoCO/I(8m%jIpJ#MIg+>\i`GA_dnM[H_bB`K&-d:0_NliNdV@=
Y7P4C$8!'9fi^Ig/6;NM8Ih0AEu_S+dkIF"oM/M&V#/-'q=IE_3%`"c/]AS=*l1If0NLU9igU
0fO\qm;An$Gd#uTXSc(.H0]A&\QOO&N>C6(`(-H_TAf$hA]A8:Q0%)R0d4lY%PCWCnpE%&]A^Q9
W54q@.`Se%4L;3lh`oeIT,]AH'lUQm&UD#TUlD]A0DEiK6qA8:VNWFieb]AF-A6n&Fss)Y!Z[AU
*HU.:,,>aNk7`lKJqoQ<Af@:6tCU&j1B8)LltB(69K<`r5.e[.HuU`B&[N=;NbJX\9Y+eT^%
NeP5DU/jfa%\1HbE*WG,VeKpPENTQO3eg8RY>J9)l=Is"4a:h4#@TqtsGobP&>`A?u&qm(0K
bTe'r#;WYRTX*"@dX%=f_e#955W1:fXCN(_P=:io3Odlr!c77f"':SbG./(N*&cj(T-:jZK1
"$MCctMA7J&C$'qWMYqRdHo-gK&1=7Xai`N)!Vp$SUE,$-D[@V9j,e7e8#n0So_8AD7o<[*u
[EI$#U3*d<P:&s6V`\bSnri0?(765j4-MAajGCngkWO1NEW`bK$;!\fQDucDT%o-pZjq8PQ)
.P6r\D3=Q<Atj<NL8*F7<;c210E$ANZ.G0tr`h"(+_R_rDHLO#,.45,AC3Gq^=%%ksb6'<d5
7@>S$E25s="GsX>h@s'849NhmWP"6S!E@>>`.TS&M));7,>-OIVKrTIh+Cji?7m98J_("4'0
]A^?A8M^HD=c58]AP)V0O:%C]ALI6"VRlWHh3M(,5KAk+9j_G[r_qc`NdPV2kb$Xb-.")N@`bD(
Y_UH$WXM^,o`38WJPZgGYhH/lE_AAYl84&/WG,V`$mjEq3H&<Vkk*u&4#<#sO[efm(?K2kbe
KI=(jTI:<H+J78ZAZP,.Y&(m7ALl>.8-d,tY\h]A$]AQi?s/e"5Gfk]AQX@]AJd<b_,9&*go-kQT
R(bA^EFb:X#L0rP8PO8CPomWouA6#g_^(E-)a[hlFcGqZd\]A"PeNt;8r1>aL8KE1N0Xk4m6O
o*b5,q;f;956TX(1+Yuu+egR,82]A#9<otPoc']A6[f_%-p(f-t9[E6X3:p=82Ee:p'EMcnF]AB
uEsp.'<SZ8K>6n0&.P:L$/0%7qTLJ>0-B>7%V:,G*bUg_b6TkY*-h(4e%RpX_G0_Fh3g3)B6
Xha9P^Is+(B8ZB5*#2A"-F:T!7$S&%u:qcO1HmP*XFq`%@:7e%WXm.lr%A82Q5ghMFmqX35N
\)A'E'AgrU,FX(*R-F/]A4+*%9kQZJ)Uh0bE]A[Dh<dOGeD9rhna1LJt`19ZmE^Cq,TF$@)%4A
PS6-1WB6c_!=h>jqY`a:iIggn@V^:T7oF?\.l)A_9VAg)++LmI>>#,T?2dC'U=jgkTeilbbq
.mDO'9>Og^8#/#>Z#-T#L`:o:ViVQ-&M*cUYp^MWF6nVfC\:0k'Il@Tl8tBsffD15+01XoRI
Q,O"`R$eX5d&CaJ%aWsXm-8E`9di_hhT2@D:fi-`C#!Uj*=hbR/mu"VIm%ppRfh'q#6QM3il
%mOTTbhK=R/QW_/%@l8F=9P172,f^_<?[_J/gSaTn(Y2'oa\_ZG)1O+.g-F]ACfkhSr!HLDOh
N&XCQ4,0s,3K'N+<$GsO(=Q?!D2Rn17-A3Va^UJUi=hdN@)p\7STlKf*_Xu)E,U%c(,:0>M:
,:G?Ggst?GPY7X#.n\jnU84$(d!@kFXHjS3.rp`/)-n2i\Ve?'q8:MBs]A7=KLf+;ItV/)aY/
UYT]Ate&(33T8Zfd</DZmok;2^Aj/_GbB&QuWSm6e!VqgA'@Q_HPf#N2pVrB<oS^f/lMca`,h
DpO%*@%85:.R1\rH)J3<OO5TJ,!/A/&IMm;'P+#b1%UlWJg:#(I's0)>PTq]A&CoBPGAO4ZE;
;ChHc<pJioa`IrWq(C!b#.8;j^#K34_tL3\,]AYrIUbp0]A7S/7u$,]AAH8d'uqp'"a-_5g*Uc'
Rb9QMa*.1ZcPIG'-)1n+;J"fZ]Aj]ApjMk]AoGr:]Ab#r9V@)>TIuR6dMlGqc8KbSf>^"jakqQ/C
gmI=M]Aq9f8`?6o'g#LF/?uU2T5r40:f39A<H5^o;km4Rr+;S4--TQ7@afn;Uo3&A/TP;2.K9
a*S*]AE,CFD9^4*@$]ABM*f+_P%Whc<%g[[#]At-;ZCoi$77K52`]A,%!_#E,mq"[.@uS^/Z@m7_
E2B?iu9_8pg3eOr$X955E.a_KTGG%Y3?Nqdu+IjNaQAp-#?X?1?Nc<Bk7mNDcED6Z9ZufjDo
EaL#MSQcWj@nAt<+sblrCP-#1FN#*[Z!C@UMZ>WfZsOFatG%n;c(a?i#69_e)P6V)!6+Hr5d
U95Ti=P%/o['S=(^dYAsg"(j%%%bSJ`7G?Ic2.b9NVGi1]A@eDX$'T-5rAH6&1`#"V/t^.u?H
L(!S^,,+c]AmESis77H47QWW-Q\4-J1Zm*idlbDCu4!$n"c6/A5ftuZ=6Nq,R_r:`.5n3[WP.
%q'H;^hMHeDX)38<EDo35rOU@+-X!$XgQR[mYn[tS9e=e.JVnL73`q;QcICi8R>#nI6l(5rl
k3VhEWJBeH6#40>/:!B$NG'3Mm$deA,Ds+gdAWWPPX\6bAGV3UV.^'81)hh#B?_=MsH!_N.F
H/PEfDLohkSHO$@O&L=cm`QWLGS2>4JG3kTIH))k(1;QM[#3Kl&:9:YY([sc]A+MLDX><MoYb
+Kq3+[)0:.>HfRE-@unHYUH=WpFqF,OMCjm#"t0a'X6c*2YoD8iumcJaM>6?UY$Q+(2NYN6S
PWa;2dtJe-S+]Acgn+KcQ6qr(8RGSjhrjs%M"[jhih"AlrZ/Uh_,?hGU0s8+mK[k<"q(LQ/_C
j[+N:3fIjT)^at@mha?I6lJ"7iB9VNMi1828bf+td9JafM=X;rA<uG!:1TLafVY+e^YJam=$
g+>ti1<nOdf+\Hh9U[9[1ZoiL"N3F_.OFb@iK48XbpS(A4[T'e:JfTBec_BZs$:("#eVc?T^
dZ)$`f[=V`KMj:FmT/9-u]AhlPDuGXa38pCnbJOH'CQ$lbs^n^?)kA9L&1.5QmL/J6J!^6rL:
a`?%p`Hl5F=XHq9*cQI-141+7"nH8OM%LBSM$X`+)sqn;5W-"Mmra:P2'=l((^j<\R((D#jT
if17+I;4ML)@aX2MT:&qmT]Ag([a]AZ<LJ(FsAiX(SStm(B3+q:MRkg]Ac(^6rs$2,_>Hc/.q1T
[E84j<$,$G'[DVde`>1S+XJ$VK_&Bo]Ag/JR/4!3Ks70*m39PALhER#l49),NYM$[#1PXQ_`)
MWSkehC]A`Gt1?BL&*tD'!f+<Cr/n_hc#:&M*2,DO!#QZ$ipY:,]A]A"CYD4uS42Rp&f-`=K.68
$3d"?I\r<S>K79BtTA:5qn+ubY6c1)7Q:T_Ir%p%U=a,BHZM<fEOGRd0IQn'`'lM,+q8/XfD
ojr*,#!4(#n`u)o<;!i!39Q_I@[D<3Cs!+=Ut%9qh-E1-Doa,2K[udID8od]A>OVf^7cBIg&]A
PZr32I/[-?\<S<B''>]A<O?+'.]A5KK@3qTKod(N?]A'#[.!2i/Al^<;=@8c$7Y/6Zd7DbrD1"@
p`ti)n>X#SA'P"JR?BV^&+iJ@2b<fD1hH[^>VB4p3D!6#aMc90j[VKL!r8>P"=S*B<k[?YrF
tlW-d6f\8FcYLX_n"D;Eu>p^V$K]AB@UZ938g*k=o\_MCh=up#:<_a2$e-aZkaSf@g.X'Q"K0
co,deUXapKJeC(_u$[MH]A!=p2k/\EuV]A@K8\k]Aa.CR_'VT8_P<Ri5\(J@F//kOXlH@887W3%
oLdhJl4X9K4tY\=m]AJ`k+Y>#s,[53'`1SYm?_0HXAf0De>)L@bL"I#F`X^TE32I;3e,$=/D%
I(Q#;ABQ(\<o_=K$&646mHVdNV(^LX<t[[]AcM"<F[V;%9)Ss9%AJX>1bUlJ2GM'*^ADB3_2h
?Md:Z;nA;n;Ut+6eSO9Pgm8E?5P+P[@nsHVQ2bpcg]A1nlEI^@:YE>mfG>?:>>,G&SSj,HtHG
Vh/l>M^m'rmJ+7m);Ti/M'KEZOS!#7^,iTK]AT3t"KQ39nP.Y$ag-K&CjisNqpbsDCdLZ"CLn
,C5@k,l=P#,Pi?>HE4:n'AQOf?(X`?[q,S8YdC?:H-9lfoG4.K$LjSoLne,PLoX*91YE?.n#
8e3`KY)M^t_'uQep%.*qAd`c\lomq-Eo1g,YkGa;XGgi0ig=U7:$BJM>1#rB5@mG'ld@\m9@
@5V\!rXV*/TX\,*=AmcN6[GOLgFi[j-u8*"l8-?.=mQ>\QZ>LInLc9bL#=Gu;U7A;KgeL3s0
EN/uNGc0+\o7oe?MBU,0rFGShjEmJHc1>.K&M>AAG%TO"u[=b=NApQ<uVlXHaD5:^A7hCkN8
>:(RC;r.@pDZ[6M+m>'BR13.E[Rus$#AOf*26*126$YKO3>O9-d/d,8;Cu5<ckn6PqfVa.Zl
*)B4=a)Ydj*Dc\:+LL&PscL3bOd:POah'D:`@I#H,]A#ZfML(-8UNo%A-n*nqOc`_<nlDLeHb
O4UT-i5rkFo#``!B+`_8jWQbS@t_h_@O9iPIXENjN^]A0h_2NU('C.)?Wpiu6'ja,ZKZKl_>j
*/]AB&&2N[j\9oF.F(klrNA;P=FEYLj1=UMJr?go)>:pP3$$crdKrXA3@aa0aQcN7%=i8P=qi
uU#\YT0oq1S>PXtHd`Nb:VjJ7"iSf]A#:8f[\iLMM?IW;e3Y8o47oD>i`XjemabmNM^l:O1,>
`NajYJ^erlgWpFS+,S5FsnhpnPQb'[2+%J:OWY$pYrQC4M16D8NRU(\6':3a<dqfmmBLK("7
A*J);S:F*YETf]ADXUG?pR6$Eu;rpu$*N4r#uFD#uMAf?X6>b4<R50[irlUQOo1S8nV8a?:)!
'fE;a3-CMMPY&AFLV9=of$nKONTMBp<jX$FYR/IB#,2k0$?\=.eVPe.K.-(BTpG%h391B?K-
5^;WS9m8j1T`>]AI,d60Sb$i,<Kd^Mis%,.Vi-.liIY72D=EGn8Bhp5(S7Aqi<@s9J@BE'#]A-
J45*f]A(cI@^^b>iga=*QG#4YMDrR`P&6]A]Ap>9PhbZ`IpP;-q9/*0_9ZeUP36b#e.qs()^:Xk
("78hNDfEKFH:l#-8:CQu+s@)5DK[lp_(^L2f0^#/VYa_$1"p)n-/V3B4ZqbKPGmiXc"j%=\
e3rX`r=<`TuXePS&Lc-^`pdsZ,]AqF9000h.pX$c^h"DmR7;Z8*Bj*k6,u]AJ>P9@2uU`eDrn[
^XC</oS^b2"e!:WM&UNG0M3i4jlhcSb4O+(JM8f6kW&VgcR?4+l*"KN^Lgnbs%F3bY=1*]Ac/
q(mr/^jC(;CB2T6,I>UYO*(FYTQEZFXE\Z,+ZNl61FjP%Q+eHF>Q>lk4RjLBTSBhdJ4V9&DL
ilqqMe4q]A7bbO+8scfh*WfeH1d*+e<R8=&,T6)6B+#qOof8=gsN6/ijsGt(ogem^NkgQ*#CI
'9/*ntral:Vq5)2AN]A7%@qSqYqF`t9,XSX$Der0Y%-5nKAIfa&P9T'CD\EM-K2ClOc5>2,NB
qQqj,cb!=Hgib)9,\K@XeV33>bj1@Vdr@8)8A!j0Tn@%;b8q\FnhX)S8#j"N4+rD=Ulr(_\=
2#JG7MJW<l!oT%<!!!!j78?7R6=>B~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="表格2" columnName="count(DISTINCT 客户ID)"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[客户数量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="1" size="80">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="宋体" style="0" size="64">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@*iX;Ye)JSS=R]A/@3<DWVeePM`>D3N\cl59r;b["\OVcjVC\pU,#I#9#[X@Q:iheR`f5,NX
?s9V#i)`N!1O8M$p1/Ta<=W=6k>(p\kKnE?G*t*fonTkIf+'rAgKkhV7(dSb2[4oUXZZH?sn
,NZIdVXf&W\B6F)`rQ:6ee#P[tl+&GfoD\P:W^o%(Xt.5N4Ka3.Xn,k+cuQsa5WHFZdo8h_h
t*p!d(#c(-IAKL%X=1^V4&At$5K@8lA`OW2I^`f^>nPRO17u%O5@Wum$H>+q.l&Zh"&]ASrt/
h=>SpEL7PPiFMi,HG_eT?>_RYTqAUiqeRQluf:ZTju(H>atFl5=4?E[pYR.f8LS+J0O!Z+st
[)c"]A`5=D1k[T8-0QZ+cKW4G*ah;ck"$@Xn?clY`GG0@tFcY]AgiHlkJ8X/9La"PU:T=.Da)L
^,tiA2]A?J+;F?2I+Z-p8dBN.[>n^[$#@`Zme!k[[s0I\XY-1*P\-BKP4=<M8kFF0M]AMm+2sO
W":'6W/V7jh!O=M0P:Wclg4'!5O[Y#LlI_0#(>s5Nef<PBY<GZ7>-hHESUQ#ahfB;h;"76Zo
qO>Q%o76VdOK'kJRo<\RA9%>S$?Foj_1NgjaOK;hK=aC]AdR:'%)c'rmm[Hhp!a]ACq]A?L+X2;
'd<`;^mS)0CX8C%/j>%qiM>$Z!+5!X_rqIp_S_#mAPjB2qYpIk*a20^fP`LmJkNB<Dnh#%$o
"5B5t<Z..Hc>n^?ONaSdGs_O@230W#lV9gqUqK57)C$I^IHujJ^)N?'r.83l\AbU]AYa:U$D%
2U`D&ffPGKRlt*qO;u@IK]As[Jm3I0(?lJ-3]A'i'L&DT1!"n#'R6:kMnKa^OJ]A[#-uf/kJUC.
BR_o6,bFubp4Ki>a*N#)I[KR9sBGQA,^^'UUZRk^\\*'SB9fV]A'V(^IJ&o+EpRn7eD@U8D9(
-65GeFo<_H[2%%Ghi7fg[MU$(-ceTb_O]A_pGkh34ph;/lq?gb'O#(g#q_mnb#Xm@Z6BJ_!C*
ZZHI+hSPZ8N4g'b/50$kCBYNC9BGmHoL"9?ugn/:A>=R@lf@?R"'UJiplmkD"Q*6`'A9N`oh
&$)&a%%?Z"W9DIff!KX#WOM`'7nQBh-;,XCj,/h?fkhT*B#Tk(0)]ANp<<$[,l6]AlL;cOW,oH
!=(@jhg-1m6<$d2(7+e#:q.iUE^N#FojZ,63CCk6XPH#kg5\'Pq1qHHD5hB8p,r6cMSam#%k
'[HqYql1rJ6_+&hKX*9MlG4rFmL#F,H#8TX\&9kAUMgcX;KJ(S5%T*d4^npd'/./qo?=]ACc+
"2c]AE"0.FKg!U(5Q2Gh/93r+WT9WV<\r5f;+*:sLl8Ad6%PXi0_9HFb\LlGop"p?Ta#fZ<+K
U4lO3O`i/YZm@<l"k-AQBOZ73X9*K6l?-hW.+QbeuXKir,51nBi/;0JANQi.DJ4+;Wm:9d9+
NMe5GT635kI!V.E7)ZTO`Zp(HNn?UbX1ZFuK"]Afl<DL&/QtH(9([nq+5!;dP+f7&7_4KDm[n
Aq/%J5WL(lPI%lf0L&Cre96hhU)MEuapO+_ItVkiLjT;Q(c:`,H=MD!c)0_"Sm<5'LIm0j(p
_]A&I!7e:K1U#_!##CO<*@1oAGf=(8PG.je2t@&.6&>[%_5S;1-JB$,Z/T8Wja+*H=kg,YFSB
2A!qIa*c;-VX^AVW6^CUMq^6THPAP<Otjd]AE<XXh[kfTW0[&iW*19BMTn)%-gjtMOF^$M>5Q
R*Q]Ais?@fn<#:1PgY_*OTK/ePJ.%fj5ubCP!/jL,gag1YnbTq_E9*9j#i*D>Kpb?;l]AaWKuG
)!AXd45X:H<,^^q6-_8.EM-OoLD=Jp`>#1uCU3EL^C7LL.&i4hl7?9\01A$>m%,]A$"]A.Xom\
KB$FrAtkIpb>+RWF((b<hY/QR/mqAN_LaA=pJphl;=Ci+NniQUOU0o#[ED83fX`-c7IY'`jL
!OjWg%Y:B,!Uc#*]A!e]A&`WRl;e(YEi/@uo%=je5XhaF1=!rMZ$5Eql]AM1ZrX>KK[/C,`khJU
N!90BB$>#C7C3Y=?<edReP2+FoacAdp@/<i5DBLI@Ot/s"<0"%_-j<ZID$"EX0SlmJD8Qq1M
+4:OXYhp^jOuiaP:IK\(gu#;3KG:N%J.IO)TG&qZ6FI0%((NpgC;qOMb%#mPtsAM?F\Lk'n^
ITBB+n%)$VhYl[e(D7kk3gm-s]Ajb<5eOu/L\Fj/E_mZ9BM3PQm2(f\%3UiB4d4h]A%!U!0o&8
.>.&8/S?c[KB(@R'(9cTYUuO>baVpgZYS$]AqZ5kp.9(<n^AEJCm^.F1C,A800l^`:0ko'E(R
%;1XBV*b"'B/]A[<H0U/X9pi7L;P28&G)\0sfMV8SP$V_br"Y\"U3A'=pUOhYQ\&N(-L@<V-J
/-4aHo7bE6fg.^Y27EB('..bZF7<H61(#%[pm0J^.p[qXj!KbZlFn9E8eJb5)PSnT?-H%iN,
*nGr[sW:',969U0h..Cl&)`"94+K3Docd3qq?;acqXnpZe$kEiMrEo0Jq*4JNJm5em:l)$IS
"JGjt=^Hn)Q/YeIl*S1S3AK?=<'?D1dDgb0+8fdgr3gV&W9TFF%;>+"Zo5Nj`A\qKD/V'i\4
4aQr!)ZS3970W7((QVA9;TI$a/<+gSt)l:"B.9Q]AEuKr/t.-NQc9MV7VJA,/7ng[>p@Z0]AS(
Qr@#rdF,hQN]A&=7FkPSHWdsM\?X]AnD9b?t)AX)>.hoFdh19$NR?AdF:ZGAf*-%\QJZ[dZ;E+
jMQKG9!E%='S;`_%cQ6W#@NP(32ch[pejY:&&P><)PbiLeS_7g_\l*Uj.'c:pS*.pme^J(D^
&lBKcKG;sN-tTe1_5$*`)Kjr,D]Ak=pDj=7^.e?MIb!PTHN>a6B_QV/"`R"3GSK#t-46X[m%.
FudQR[Gc92bfqWJQQ[,;O%bGZP)`F+n2\VoG3N$0WDCulEI)&BDh=<9&8Asc:-QmWJ1ce-Q>
BL\9GK->O)!Mi9!aWU5%^;i?Vbt]A*mgBGp\6:cjM's).K9(+o*<3CCJll"/-EnaP@:=sn8Zp
*_j26o=?rk,`##WESSpefB>LBr`pqPu^.X-b4++oqJ1X+KEo%pj>>l(^<Z=(dXYt90*CU3@V
Zu>f;A`pW8<&,9G^X,%Ps#a?lGhDH^XJg=bA(IbR^dFJ\T2?OKqcRU\=Efc*0L:ADMT1;2SE
Fu4k1DNYc\V7ejFqkE5'/[4^)'K'.@#gL?2*GIp^R0K)bp[0Z,K0WppGY*#&$c-j=PhaJgX:
?i;)Kb9]A5_FUf]A[=!Tok6L&0GT,+eX$LMG87Y8?"+3!&9iA:"Kg4!T>"tE!GD_"3p&$`CoKm
C[=l/t2>p)&Er2Z1hVI^CU2$Z+SM]AGtPd6GUD/Rq&.La"./]A'uDHTfq5^.R/"n>"Q46j5?sp
c1i&.`*D?l[L<T_'1q0,FS,o,h0j5>uo#eWpSM@_+Pbe^pPDJ_(TB[Y]A^q!='\DI)FEoq_Qf
aYR0\#CcK9*`OmKbr>Oh4SM"2@^Oj'ErfKM!;`;..LFLFL:i;<,=h0io6n+V>7qZ]Ac3.Y"eE
-`e?&%9!$$7N$so&t6.>p?gM/]A0la%f@MH.*s`%2D8k?$G0@3fNE>cYtDn;[l[m/Z;XnVndB
o:KhJX>I*b>7d>)CnAah`K>uerj#KW5CksX-Jh50cQ0F'g#"nV`*VsC&>:7d+]AdM'H0YL#?R
&tKG6&LLj-fO3VQ2HUIH(&5A8AZ7\]Ap^WmVu;h69sSb,ETak(2^0X,eVZNP^FcV;/;oPHSi/
s@d,r%\<O@`G_JgEI0k-<^Xad$8TMnfp,cAS9esgU[&#k,.@[q8HZ4:k`'tTVF#4XJ(=:8"I
W5VK-tYK1?_Ttg%d5iLinLO,I7jZ`MY:5$Wok5?BW7Kh-+]Add7nM7hiQt_;<m=)Y%So,nHES
06U4[_;F?bGaa.G*$6#d\3VFAmej0r4B#-l!AU9,-89&&cI]AZeg8I32O@$]AY)&.c("$:ukN3
Ub-`J"E7dJi&-*$?gpc)1um+4i*G%nn]AnT:mU.,ZeJ6Q?78:=dENZNoggc$*("]AB=02rB!.[
I8qdjV<:RE!PACK$uAo+"%j4m%U?(Q3Uh9@hc>4mHf9,><(XH(:Zb,3hEq_t4E+h5oSYLF8.
'ZL.Et7i\N=.-ual?.Xc&p7.85YEH*piWCc;V16"6]AWm/$m$O:K</R.EDO*-*h160W7^uhOb
B%\b;fr.[KJ-"/lqi1&L/4U`;CnOO=troP(pjc1q9oAFQNF%DeOp6^2,EirPuZ=AWDec*g$0
"k#>$TTh;<br.+ZNVqb@eT+Yd1#+VH@+OrY[IJIJ1%r^e0<KV+tOP)_m%IGVGG9Qg,eb)9Lf
rr1+%;G<UMB&<mq)R3/O?>Q(_FL<<$CCX=MP3,3,+k.]ACqR(BI\TMdbkl"6nN`e2`'8N5Urp
T@ImO=6dnbR+0Z8#?UK_D68AA7$iZ9Ui?'fTCT$V2)GcMd,c;J/2+UGn8,E$_nKJ0n`h&'\'
Yc6fc]A3X]Af15k.odcBD/Fi2&bFm$^lM84'")09j]Ap8[.mJg#%NF;:0S&`(h[J@H;lRr<phGl
:)_e[2G35T)m-=^Ff-3+6,N:q^hHCUN,&K[eMA4rX8IiYfDsk+6J?2I#Gf)6[9<.0)0+#B3)
pBo,_Jp::o6,:gT`rE[8+D9S>[>G1<IWU4DI*#\8TqQdlJ[ar@bUVAJjYf$B8af=ouM!%hH_
!F^^p>in7&_$&u=E7.3Jl`DR#AoIb"N1%n>ln\Qf'E#OZ2J8u:*p9aIErs3$GZG@[[UWZL39
OAE]AhCre-)d^N5-Do.le;l;%-t*LY![!IN@p>^5:`mKn,5GR(?)thEec@8?jE3cl]AdN+qnCr
]AU"\-38ij`!$spS;^7I?.?"b%0j1p-)o+1\XR3_$REM.=K6nOBHP@%HS\&K5Za\$L+Af0_.f
JBCGK[9JR5Ii;pgDdW\W,-"Fcl[)0Tc:SfTs,;o!.=lEY*^R-P!8*Io)&%7O@LiaAi21ccY_
Y4"VeE(aokom$#(t+%b]AD9H.L1\`8#c3>5N[FED$t.W%V]A!I'UEhR$b!.BkF_GH.>!qfitd3
#K%5?A'qFEn;U1D1fqfC/e2s=gcYMeTCZg'1$5>$LVpn;7r(HK.4um`q9:'2[Zh:PnPc(jI'
.3jG$R-:UbX=Topqu?S&3KR32stOQhg#sb6+$6]AQNAq'P]ANF1`OC/\MgYabrP4]ADs2"<$,W,
/eK&W1_bi4BnKO+hSMK,6-:#S*ceh^WqUs[N/64s!kkDq,k_,fPLs3DZ)'."4R1P<3('u3<?
a#Fb!jRoS!sDrZ+/[K+-W?jZ9+jgA!!b&$Aut6o4"0VnHT)`um8k(QK/U?`e++0mr^%'C^^U
eZmnYa[:T)r[U'?;>]A]AS*18WG%C9paIlp?tsc^&DNm^Pg+\fkpEFm/oYRnR/lQVjkCZ4KNg;
;fK+;J0;nOMsCk(0HZ/eIj!b!OW@7Sl\5dKP%'3hi60$]A28Jnn&=eJPdeEJRSER-u<(Gl;YO
4b)X=pV)GD;[@b_E;0o/Vb/4KPM3.iVgH0,0]Aa#R!k(XKZ,j3f]A%"[uN1:`lGFQMcgH[4sTB
@Sa)#$+J^?:1O=E<:r43a2qF/D9=A1Qa5X[p`4j"DmYEH<:kLi6X4pskr3&9f1*Iga"LW/']A
"UrH60cKaB4om6oD%<^K.LacQkhkYAqYt7'bOhibgjfD6>.p2pXX(u$=$&W"Y2u1TpFWb>$,
o2IG95mN8nT^&MEFMb3<#,jg?R_lf[BnfaC2@&KN^08MM9$AZu9?Elp05ggN3m$EFChc-X'a
)m7.u?TmDQktIJgI!&6RI<iWk8>EZCp2d@4GCSpk2l1^Tm;nrNHhuineiWi,Nmuec>YXk`IX
CiMXj[+2=.NSDf?&/USQmPoa`VWp>US.FF`O$X-eHI_o)DYZ"`5iMZe@%Z]A<*F8qsd_<5<cu
=[P&HZI^u'\Ff7YJl;36se=d@pW'_Tj:kq*]ATal4D6QQ0`a/b`3FfYE*(Vg4k^U?85qZ#4<0
?qo]A&RV!$3n0i5s52bKIs'J5+GtfG=5hdDIrF="(OlB;~
]]></IM>
<ReportFitAttr fitStateInPC="3" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="188" height="22"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="187" y="92" width="188" height="22"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="统计信息-1"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report1" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="统计信息-1"/>
<WidgetID widgetID="f65760fd-b8ab-429e-b736-ed7dc8e9264e"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="统计信息-1"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[787400,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[914400,2895600,2895600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__6316E3B555090814CD8BA85027C86527">
<IM>
<![CDATA[!KIt9k_W,27h#eD$31&+%7s)Y;?-[s9E5%m2@'Ke!!$jgIuF@-(KF$p5u`*!m9BC1<QBO^^X
2tE/gjA_T#<W\e!rJD*\VNm'k9<PZ(!d;/o_kDDbY"/1"_=!YZW9*`%H4D"Gfdh+Gif8&0R&
;648\SB]A%\GmX9<Xo^eWAq]AmO`$n"Z6F*K`Qm^r5<Sb^QD^AA>Jq-Jm78Ub'g^I<lp6O8&^h
>61s\,C5$nGhls$a?,ug]AHgh5IUX)aj2QSDXqiVYabRG!ph6u[fF%^cgM$2@b-(j71j>Ql3@
oh>@4ecf._Mj!pP/#ob[QhnXX(I@"BA'T"?9&OM_9?e41AR2h<hjLCW4fOn_'Fo)(L[XPXpY
csM4VG^TL;!=K=2QC9GpQnH2a2$]A.Z+QJVR[K/-=G_BIrQt!=o`KmYhi+.8d-]Ag4SH4`KkbW
&"Fmu?kN&`*kSYsFi>8cq!WcO/T@c$KM%OQ=#`RTt<NZKaC512ckcTWhc\BNAW51Um?o!%&A
ca`L.'A!\gqYX:RbNBBQ0</Qp##'M@j+:JGO/PoLL:DP+iM'r)SNWA[4n(6NF/_:33qtt`(F
e2*7Ii"+k#'%IS?ndon?7l;qNItjq=[uW?":+2sP$MU/OT"[(>bH$R1AiTBA.J/aWE1ShCB!
&2!%`YlCdnFPiY7b+0iBo<Yu52J^-=f$!C8%sm.uV("NI8fa$26<SWHY<>kN`qIQId>/?_6m
k>k[Dd1s:_<*:fEYAD"U6g%>#GTHH_2Qh"A"ut0FH&/H64lSgC1'B*pRBdjPVea;[UD\?k?M
'3=05VJNdK"?JPT^+P2<8HR1/T(R]A<&Y3`COC*pH?/qj"71'e17<j@fr&rFnrrn@"4]AJ09ZT
8o`=Xoo\mn$/bn,D-N)]A*e+c=N4mj_ta402[G[^1I/3YhF4^B+tM9?Xtr^HKHT3UIP0^WNpN
'\pA%`sN&BH5m^g;]Au5@S[>=OaV<rlfoG97#V2LVE(JfTf-]AH0-K2*"B"M3\".p'`5aHW[?V
q[h6M.cU/RZI<*C1*^t?(-rmns><tWK<7,kTi)rI^0NbR6PnPDM'^Aa$B\:<'64MRa3b?B3h
9444a?Ct@N[2qn8l^K!lO['!q.k9!6\VgEod\(Q"!/j)]ApL9ft$DDS1E7Gp\U<A%7j[h&I;3
"8q)s444SF",h_rn;9\Jt.0/n35MZWM5D1o`3NC&rH6^k0<$,qGN?O$uSPTpA63TX1G?dZ.a
DEEs"100Op5s.U)!]AX&5(e[8dH6#2+=@\nMt;X$G>;]A(X883CXI6Y?^+MIU;Pgr#,!4ua%!?
\k@D-r^c>#aMOk>U>"'>h`2`FZJd-Q9i0sWX@X3CGd.dfRu=&Xi8m.XhqPKD8\N$8!2/c/"r
47M@CV\fH]A7,UbpUZ_l&NS";1%`DjO"cU^NFBb2*+O=.d>-`LGQTH9AO3!Gf9P39P(HVH,]A-
2V6KQ7VFn\5#@CG:N<`RIZ(9&9FbH-Qk3rH67#?dP-#_U7`_2=@sH^^?gJ0*ksuWiA()#PZ#
VM3>d=I(S6q$*$b,0,X_6#DCUFn.'kn?!42sH_!aS'>9[ZY2$"5H_3g?V_fXZqVdOb$3\3h\
e$X0^mYuSDT=2@r8\De42Fbf/f[-c?U/-FQt_DG4(q><nUfaqjk=mA3kYho`WjFN,):;LI\L
b*ho-nD0RWJRHVN]AfXB?q@Z!22gp>4cOqr<K"Us;N!bBfnaS7l;MG`Za:UFX_0:&!K"'Ol<H
laP-db/)R0]A:Z[)"tKd-=LC>$ek-\8=GEg1sr5<"O8)iim>U+4C>fnu5)WcDKV64%$%m=?Sg
_YT*?'?<q,s$m&?1k=6`0Lr6h<r5Kj"%E_db0k*rkPIotV=@+@+aeEL*Bq11"TE"#'>@]A$X/
$k2I]A]A,`BS5ZZQS_7sEZoR#*/!WoB:AEG7cQHX7Nfc%WH5R7,8rn=iAa9N8c6cS".2,n4(dq
u7]A3BU@89P7abP0$c*N3-=]A&2%C)GPQ4_]AEaoad9G)$eA3.DI3qhXsiPg3npB]A%R&_NQJYrm
_^&`QJnHO]A(+#I4o"o[-@B`-(HMk'QJ+8a?7uc+E&KmRU[?N*L$5FJ8GjeEg#dF=e4g]ARZ/=
$J)-i/JaoOsSLnR%-J-tW>n^tJ]A9RUCcG$aM?[8Vbt2HrYUU=dVq!D]AVpbGS[d`']A^lQo>U2
0olgdeuC,DK/qY8MdVJ55!uI[NaKi?Df*A#f,_aK>3m&p@^p?o5s2XU#l8?XV!b;L`9YT*i6
@fS;<+MDSk]AILlu1+sdb7!5]A=nCI[WX<i+)K!j'I*D`RPOMs=&HqDloKoW$.paCeMru*<+"k
r?mX'A"dmM,!aJkK5F<_3,"ieCfEFmi]AI<LdY^HDE8;""BW6*n&)q.kgibPa$_44FKW$5R`e
=i^O/hlDO<Y!=sf'f0@JtEaZ`KW=Di^\>FZ.F$4j9@tf5NI\HTN>[93JZ=-cg92,FMV!/4?e
_)Z8,BZnUfa'diAB#hq?LSRor^N.<Ce_oB#;J#gH9N<!8LX-DIU&-BcIi"3dACQqjMYDCGe?
%J(4"Ecp6i:0Mk8O7o@`:DHr=-gc-dF9$YJ22^?d9"c^4gW#X444T?=Q`e@FB.q+p[1,)P)W
I3$,`CZeZG%7gc<6(;kAA(prKg>U'RPNu0n>EtgH'?l'$n\W?JKfG?^WbnDq1K!8P:H#@a?5
uN,2T;0RL)*Rg9qh=+(sQ4BW\7j-"65_llT+D!o[t4>aYQs1,g<fb\p/gsg)ZR9F1s:--l)2
c)=ISSH0o-)Hu,\/qief8?-TPZ%K_E$C$NMtc/'7HJcjXrY-Qn#Zco\=B[2ji\r[jP_Z)00.
L>]AAG#FQuN\f!uV90J>Haj#p==ZJIq:N]AM'ASiAa=&0.t913f^Y@,5)X%PRii6hfnG+_f$?b
i5g1cfGZ/H3[k@koeApo/ck)lU>AX+PdN4.GRGR!\/G%egPqin*l-+%a)M'91\c_a[UI27bG
\l7(\g`i)9Rc1Oi6(PbiElG+?$Eo[&qAKrHsN[qj-pf%#.rc6Bf;Z^b$.o&us#BhdAb:"tQk
8qbs<J/:uuj3>$T_dJ2.m/,7Di20a4L&N62lMQX;r\33cROYfj7]AnQ:.cMeuON@(lp1KmBkr
28p&ptUI2pgR)NmT=KN[hkRSSa0MM3Xsh5[]A,pQ<VOJ[&rS!N&0iQ/:/rVt.q8Nn.":&W<f-
_9]Ao1DMf?e.S'M4'J2LR3C`N*KX1G>8o!b):t.3E<?,3b!#&h@__`*:_a;O=p7XUHD3n=>^W
37skATWtdd`QT4*&Eie2K(d@dUNgn:DL?ST2=;nTMm%!^`b1T[ifbZoq"(uLn>EV=i^8XYnE
Gqgpd/+2^:a.bmTjfDO"K7ERC`sfCgr'\98SePf@B4m-QVCEko5]ABCU;neahc0aM5cpg)+^g
$R"5X`IqJLoj8a'KW;+/CK`Djd1a4D&k:<;>@%q9orCE:jqsn>\<NC@!T%dM)<W\f]A9Nsk"m
op(g&%9-+HV,dWW?kR>7)<;ZC2l$n^9A=oRG3U[(1+i7Q<_7]A9A8mo`M[^&nHjT?p]As&b\0#
'\\/Wbshi0d)*=Q?rjgbQ!Gc9Z1e"iW(5)4LBfoF$/QdIst9q<aW"au8,S%_#.8]AZ3j-PJ2[
A<&]ABe;WX4!lf9i<u!YobTl!6[FR-YE()LQh-$Go/hq((6Jb"1"FYfaX6q%JQHip'G/UYe28
cN2754nL)>f2.?U5_#?;QRE%!!030G\m..(P_`b)R(8DS;'fcAQA^%MO>\E)AIsc;NI0PL(G
&e[4@0o=!ZGRSL4es3nhP+CuhGK7:*\W5>;LDT_*k:]AW:IPmBIWlr#;FA0T@ZC)j'Z,#TXTr
&j4FmEPFGWY0]AcHm<B?O@LP2U^L,_QIdEKNoe2p1>(^[5#94<4.6EEj2,h1T=5<LLG,U!<=4
E'+=TUjP)hndG+*Aq;UMd1E\=DIO>b-Me+Yf]A%XQ\bO'KQ4KH:5hA0muXZp7c!_uF6brG`-"
U>brp`WiATUI,"pUFokN<d<Sg%Qq79):bhpRsTlh!#jCb`LDauM\EAHhD$#8kX"n'@I3=+@0
]A6n>tW!fl[(?tocZH%]AEUU%^5So<oeNOI=c\4+mKE5g)e4a^Jl,Sc]An6`s=\!1R2sCV4ait'
i\m(P=FQ6h"HY::to>XU<V/^(9(&sI(Qlk_F#V)DP<24K[";2i1@?H5NrOmGjis'm>mT^HrD
8TBEkt1-rW38Y:0+EkKq<n3+IW6g6/R!cU.sBpTdMdLVm4mD1jok["=Zuan.?jF)BCMmcVt$
V6-ZOY##s;<pNN%hZ@HRDL3.L%Qmb$&MR@$nZCT8dFhdDQC!2XdS;]AgfO_[u%J\Z@DHUs5sD
o=`6K$mqi1H]Ajto+<5;R@6[W;SUQ%DRnR81He#WIhBL1D3MGH:U]AfeV!gG%Cm?E^lb'j'aP1
=fiE"*jtb]AIL^!IT(HEI<.V"$T[N^e0XIUFR;RalUS5L#mHEZE>70YM>2Z(2^mGb;Z3$R247
k1_*cm(an1c!B.<_nC:Ttn]A^8J<*kH_J6&$2"X8[FCn+L*<r[T9bT@8Gq`YZ$M'g`na0[0bQ
V9j-X%#jWi)C(*.Th_qCNlJD-Do[bRq'Te"=j1_8gI9g5Dm.54*FIN2RC4\[XFu$KDS9%j.<
*TGlBre<`:$^@oAoD0_um-JY?D?+7)EW5*gCX\W"fs-0['FdZ&2CEX@2#GnR$0[&WD+Gc2UL
<:SB^XZ:scoXuutDEKeFYhQ8b%[9$c&EEkU9LVDI]A\h/jMl0XhMas.1Q8Xeu`R3pI*ujqDm3
--F0.JN,5Z&i,<(J:LWRJ]A47?r,WSW-aeF@`!GWO=F1:(Zn\<E<-&RYl9ST_4E?Z*P7t*5SC
+9<bk`+tfe6rKCJ4/Wu*SUa[Ld?rghJP?G$/Q`.rK_eiDWn8t`ORQ>LbDcqrCeI>W*AQKlnT
"PIaDEj!#IN>>C,%LaJm5@Q#;#loh8b,OU<8(<Ya"a-"p[jt5=B=%N%(RY<1%g!oWk=q/?$&
ZHNq:3P2:;+6eICKZ[l34@_D9VG*l=R/&ZkM)>K.D%VF(g9(p_6`/1Me=>&&2A03_AX.TQB.
jF\p)RNu-iOGfXT`g2($[s1!3'im$!mRN%O.IHK'/r$np!ma_J-o-qK=MWmrEP/lc&hboqL9
2i8d*&[!"W4R(&srAr/f*8[g=9S<jR[5I5CQ"U1%j'p'^]AhWKg\Z^ku#)N&M/4q8XSIX)1n+
+,ai2Y`e/X>bV=X9Js&]A$7*<IoLbpqdFC*eNJ-T\i_[kTeMX$+0Wns@$VjNGYW/VN$[!9/j5
,r@6_j3ZLBI%gLR6WB^1<oN_gkp2G.'n^*4`bfdVTdnSIk@\9n_p!9HX3Jh)-%Z[M95KWCAi
/g_bY$TS.rd0]A.Xh=mQ_Xb@De/7\H>pbVbOfMm<\P@7n3nNflDa[au[19IM=A8*=O=e>q1UK
o%bF-e>Wh4q^ea;R]A+E<@b)MhnB=(4PfHDW52^-T4iR]A4%UQuho?/k2_0.AJlqqq'(+l:teM
prNZS5"C7&hNKrM'?.N)t+;FbiG([H.FQ_*(#4fKrRapjNIOb?>,>oVQ@c<Nlog2kE97CKdQ
3Wi3rr2V$7I/MiYCKf-!\*?>A'+ZK):0If^_gUna;(GEPTJGT\_i:3X*nQ(&SNb5XM9^:IK>
a>CAnsJ,pHQ"I8O.h^M!-:iVj=/Q[C\tj"q_NS_jNPq`WK?t**Uhm"^5?W?C)EF?in<lLk)L
l19C'Y]A3f`9Za-'^O+ki95pGkHnXR@?b;^NJo:>:o>YijGW]AXk]AjO"=OiLR4<8k+O,$`O(L4
.lK]AtR,6^-o*8^@BO6i@b9lMM)L\rdOhm+<RD;erAZJFRZN<c)K#1%oq=@[.;)X.^^3Di%0C
QE&cS0+KB?a;d>^m2eY?P[81"9UVR8o`@[bf!nV2UsWlC(a^At#8"F)a7H6TEfKN\q9dnFJN
,nG'XBG\Zn`bWOR1*H<%]ATYhKj?.<:CH'B2uKASkN-I,-*aeXS)'0lqf\,H/3U`2qW>YZ]AF;
IL5_jJs0(+X7Y^UqE-QT6g.RSr:*omT)GJ:l_05<MT&&,IY"&1DC]Ao@j9+S1P[;=5Vq:\b:Z
S0[YJ<UG$^/:l%oe8[Cldj(9PX;Y:[['=-TDS\K(p&]AeG'C/4o>:5;9MrS7&f[DN&KX-+\*3
bTIQWO3C=sNJ]AbF+G]AAO[?^1b_)Pg:'IVk=1L(Q[b(QSG;baYKTQEn8[K@&S^'"tZ<JW"p2W
1"/.SS`>#VVd^N*1"mGca,]AQ^X*4rr-dt`c0nn"n1EQ2_&e@YI7oo459;kD9&pM>#Hr,<%5a
9.b0jP5`'#Wc*OBhl=;s^a6S"W[,dEMhD&-o@ok=0&30fGTKXSI*bc&Z!1l5uAVKsN[A\]ApB
^oa<L1HLUQBNmag4C-Lm)9W22WF>3Qf')Ek2BgRQf;LnDo'J+Do5oqSA0Aa'0cD9)=F&&M]A\
7/@U=I$'h"uHU\jC:IAR_\)85u$FadE`*gP`,Ch-.;jsX2>4XR.Y3"AtWH/1<BLP_M0@VE`j
WWKrh(=M-_6-URY'c.*.)\VKc`?q@cUR_^1G/Q_tV,8dZke`fHm?k0U*.H%tlK<LTn3YYObh
V*07J6V(QP+M(ka[Xu^fVj`,'e/H&jH(ghbR&tdg9<QZaAgJV)W>E4\'F`8u9>TSiSoA2+`=
Pb.O3BY2_F_e.eU;5:G8@TKH)M_[@nfa@<#)#*V2!pN^d/a-B$(E_S':.iN5dL=t0)cKsnrU
fG2rG'KB):rgr_,[\*Deo@5p)Uh)?l<@.b9=`G6XQ5Y2o-@[<Z2^%#D1BEbbYTB0<gtF=?)`
p>*lEsY73Q%>Fo(ip+6o</-`<SJ\R_%2C1=_-mfatGOqUl9F!=I_#u);'b_8>X`G@$\adH)Q
U,nn&^kg9!N9,WBNZqB/kbtDXI<7A6[a\cHeh"4HW_>!KDB`BQNF@SD`>]A>NoBKfEUX1)Ij6
A%V*./mbjuP?K^OmLLf-NG&Ep<9[P+U3)\^.O?m:j_B2@bFrdZ`]AKVsdp5M/5p4b;IObl?3e
kPMnS=;PBl8Q&1^)KoU+1,6W7Mf=7hRG`Xt#9[6g\P,#aoIDn@Og,9t5-c[oPVaHG0b%)3"J
aKKORW>o/4LUL#jG8Dl,M/GG''hLcP1\uNkdG<Y`pY7t;"bDHMr^eS`_Z^L8U)\9Q*E:r)_l
@Rj(-19@*D2N-oHgcli8dNiU[\H_DKLI@kl_)P#@d6Jg;d7d>V^),aj3rOquZ"d98:+0?M1(
V\qU\GD7Q'\:o1U7?$GjniFYbOZ8s\Z`lI(7hi'ESB(XX?k2Qr^f8<L0GIsPA5O/k;K&I>V$
KKC@T8uEkd#7^Ne"ojA(TY!p+YSI67Bi9X*8.:/2=b)L1H,f1<4EKd(GSH2oW&M=l_=rCmun
MYF+B.`r>"'S<Re4_t;,m@dIS).GDIO2Yhh10^6Vi7.84s5EPoD+\1fdEs/kW5$XFI1\Km@3
<MksX]ACtC/(UU]A?]At.TWcFWP4.8E\e3]A,'1%luH/+;6bb.4msmrU;f/jUE!:q\XpL'ZW9=(d
oc)WP;&S.Sl6!T`T_Yd8a_d.e'pj1bSkg)XkIKEW:p!!!!j78?7R6=>B~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="表格2" columnName="trunc(sum(应付金额))"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[应付金额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="simhei" style="1" size="80">
<foreground>
<FineColor color="-12999178" hor="0" ver="0"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="宋体" style="0" size="64">
<foreground>
<FineColor color="-9276814" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m?mcXdeCMlD/HiTX_#eDR^\QYh9=@_0:8e6l`8^e9ML3eGtWk\$4>5DQ5<@R1UU,hgbR>(/B
&0?,skqbSDk:"6p`1s:]As5FW,:^fs56#bH11ospZ'BYo6`dZYP7GUI_E)&p[S1H?b??7V5<k
8\[1_<>$>8IY5c5kZM%'ocBEN*/JlhqpQLpT%mQ'tn,<oZ*f#*ph/@METYoe7hVr?DH_W]Ajg
YfN$.Q24Wrb)tKj@KZ-T@9KT\;PLM,/1Lp8U^4'%egni*DV'?h%UP=oi]AkN")4O@O-g\hS'T
EclIj!F69riu8+G^Po$_^\0iha;lDU@O7MVY+c%:4q$n+B`7UcYJ'/S0l/LCBeV;5=m["bUF
P@J:^elt8&k6X_2lcdE]A;=R\!/^n!PGk84I@AQDh)1Zl)EO(]A9'"MLJZ1d'N>\oPu8/?g=0j
-R#23j"5m-FaI/D,DulDT`aI(eZTY-o+b!ID5-M);]A,'POX4!>ol'Y7+L'4=U$[la&@8rBu-
h@FsG;PY]AIQ-0]A']AVnLGe9s6L`EEqL=^3g*#b[7R9Abd@9ja$6M&%`3X3(Jd;*oV7:.2_.!1
Xpp]AFW3s@pBA_IA%BaJSWGjn+nm*#h_`85o9TCprV;o\CH[;6H/8%u,Ya%&*,(3$B>]AL0iM5
+=\-H*B5s%T?catCH!1bRgQ+jdeX3B9[(a73[WAXcq$D7=K!#(8e[cn,'V$'lP;nmZan>^/k
U+;fR\I0Y^--PUBh4@fZ_iGjBUk`0ObF[b)?c1bDFnGuM:/m0>=pr(IdAXYNReo8eX+]AcX,B
&rd>&-u7S:4lm[XD^>YuaIEfj+\Y7:-7D0itB<dDMbf%_[HTa@j^tQs&ttk/?)^1fN:?oXHG
YH%V2ncQ7=LEfh^V&_)hYYurDa%]AI">]A?@+>.G^.%QsI1cXi(/#Y[C"&iNfQC\h'Y/cp!_pG
+J=hAI'kq7YT0(U`<83R>5PQn'54m9maeYq:V,<a*a7[g.T3\%FJo`Dr\W$?0^mZG5ealm1u
RL?Q)d^a]A!\6qa_B=8^-NQS+7]At3Ns"'&fZcGD]An5#&j4_2i4U1sMFuoNX/hI"6<e%s.i+(D
7<.Qd;!d!2[_KV4P(ngX*4Ni?bMgrO%OMgrd$d`PjN;V$6rS4q%.?]AlBIV,#'sWf\i%^\5mf
k:\rgA%W,R>"c:JL/teiheS2W+N!W2R;VrpsU5^1\L@6%6e7!aARK!ul))?31C88P.*'I/mt
$\R:s$^!$'qP_s.K<+'WgAgkAu$hh3"VNR%C*tZSZ]A"rcoc.I#"k?ET:]A<\uAr-X:,ibug^d
ICPL1i\.j%B_[=Kg$cT#q)<KF%l8;Y(eAobmpgO94t,Xq0'%N]A$/aiCcZ/?J0C@_g_'6!]AQb
hMkbkStdae@I%iOHfgdpB`o2+`9W)<'XB:/C:;j4+X-;t+Ur@/L36B?g)X"S9.:`'/?T]A1VY
b#S#'VO0h7N1u<VB\i(hgFGWg+hQ1$U!7>?SW2V)EZ7QXGstG=\g9MaJU2ZBXo_^2Q\_BmBh
.$=5CDu=2n+QpJ9VSa*I>B(\HEHTreeu7k3rYo#&`_X]ASZHObB2/W2rto^J!IDF2ZDO,HS"k
.J$nct>ib0`Tak5,b`YIREM^7/+@EY7;onZt<GTsa#9sJ7N>t&9o7T>mc?ZStakWsEl6OR,R
0.>@H[8Ua0;S7EKUm9HQ&6Cf-KJ]At#TrVl"T?O*huqH8\5dAA'^'`\L[iDCnc]AQaEhmnmH"Z
lO8IFDELmDk=a7+'0Z&:*,r8+Csfp"Sf\>a_?<?]AX:,\.3XU;n%hK2kD[g&d%>6>6OiHg,,I
A'Alrc#t9]AI%KU*=oQGFd-efK=XDZ18MB>aHdHH-j183D[^o"$4XVl+O;37TI6\Mpgt4^dKu
`jiKieb.2,X:Gm6]AQi54?*81i_;@Zp;e3Fr$7)Tj:NG^IX3&oJT'A`8+.n^-\l=5p*>8?MkD
g>4+:>l*Lsu%kusoOXG=NY1/Ls8fJq>]AVf>cg'M8Jj[[1lY`HM8PKDTeN*j5U=\[Ln]ACj^o$
3Nn1AQi%@M\LljYYfkX"C?_naU,>E-jS-*jblP55u-,:5E`XJCRC)PoV5PP(hgNgLFG%?]AoW
3g<B)oH+CuD%Kc$_HNAs[5=>F.Wm##-<@WkhRn^t1,ANNhLeJZMP_*LhX)<r(25$VV6l`"^Q
;Lo[U$LorgH*Lp93A$TIMoRC/XiEs$b@r4+Ba0T3E.Hq[4mf=beX9hY`@g4A=?l8[k<neJfa
lRFapULZ2t>^/@-m'LZU5k-4\4kXqYAUDkG&Kl:Anf]AZnS7(r$o6V-Ekmq6e!^5p.&cO+!rV
ag5KG$R7<nj!.+0P@r.-%rnUBf5&4hlLX1aS\E'aXp8K7MICT.G#p^32mT/,X*?t8;e5n?<$
.DNA"4s\HLSIm(jkL)</:Qi!"<st(2OVE=:(#sk/Y5C2`26t%I]A@R/4/;S9]A(BM'TKA&+;9%
fW46S_/Ds"Fu-Q2Y9=+0DD"A0=oFL%:=EqSp.'f6GqNk3%ZE(SM-a-BI2HT5+Tr[\?f(AI4G
?PrB>+/ADVLbcSD553_bDE=a0-%GV?@;IkLrj=mfYe-9%,YdjK6=>dRS4'e/4=CIY'^IR)bo
]AE=&n@H)7qT1I)KiFa1bSeV='C@hG:gQc"SNLVb/A=K.G/D`TcC^KD(+K?$9$KK(Rqtg/2_@
+>kl0_^UUQQ$"8U0^o#7fCXB>QZe@2?Gje:%rj6)q?=GNMS?(\1fdCL5?I0p:=XY/E[oB7,G
K2MIl\T=h>.0?6'F]AM6o*%ep^#oeRHnEWNTjU$nUmmRq7[n5kH0c@A&PIp(p,0_/-Y8@Xk-[
b;h0687,drL6DML?aAeH$!g$Z6&mjNQ+UUu`F!ofh8euqO2lScmS0YU)OSZo3;)14tsmQT'%
m+-F.6.V/Ip9FLi/Vg;uE1(ub!;"hN4'FW[@[(E4,?8'bFi(nP+m6g-5nCtla6H]A0P>pRQ<)
C?&hd0`sqXfJQC5+?.HA;mh!F*'Zf4oI)NG'QBS_Do>@N[U%+E<FQ(UI:+#W</./ihr*JlMS
!i\[ma@OT5qRAj"hp@nLAdUnp#^@Xj,R,la9@;T'B<^RXalh$lB<6E9r?Q[B7QD8;\e'9_YM
p1"q.HJI,qf244Y.TVs8V0+/%<O?OEjNSBqO!*W7'B<Bc`J0!YaW[diUG"h!$7&LE]AQfmjMf
`&@diJKHoA]A!YOPi[HMEXP:5jF(.[nGeZ`loFF(FL%0\249jXJp_N4;o07"04]AXDDgoOVYQL
7tu7sjPXIP/qXnP2koUX7HWb&n,`-'#`+R".laL@47=L`0aful4'Np^8\8%g7$?JcNi[n<,d
bOD=^g5<01hia5;+$[$$&TkfkOXcOD,46BH/NNTiCf<N`bYbIL7lO/POMHN3_8<jLk\Q#DAo
p$M.UoN43$>^X;X_rluno@2A([=]A55c#(HYcQB]AP+a:[\D7#)urZf?@k\3o\s(b@_o(#WKW=
tj%e)h)GUDKj:@qBBK=0Tic)l+*qXrLG*9EsjoQ99ArD(1^/pLP+EHVY.l+S(5W-CJAf".\a
=`aK_gIb[2R/FDaq'fL;C!23g0Z0Y^a!ZK4r0O?HAY/"iYY5>@(%.!*,hrd7gc9]Ai*qlkUaN
M(NUl*'4HscZ@.1?kOZ!Y7b]A6<=R0,LVj9o0&Y8cL$OMj^q>CY/[.eq)i0$p%:U;CKXir=lt
g5/SeLTg;HTJY#F'Brdt.33"915pjl8#RKZ[,d1jgKn<R<O65]AGbe3)0ok_cWTe*U1f\jca!
NGKTg&"A#b'5)G"ZmfZiBTCG[S'+<du7Q7\)cs3<_7,M^JjiZ!@OV9UV*T-2DWa6UV.$Kq)]A
p::PSaEkX2t)`Cffu`4Y4W>C17I7$<io(Va_4lBCr>L@XC;C%Gm5MQ-`^%(C/6R84\)rMWg#
87<.t2Jc1^20>!TCT>St_NW20'&D0Y5CW,LjWUrHi6Os<]AS!*$Q*7b!5]A_ac<6QEE`>911&N
Ztf7c^@>t5l;G!<gIN@(-C*3pgDDi\dMR+q2Jm!=j>*8N?R9?mJ4WeAklU7VCONZ9Ec@U+ll
G"r99nQJm!(su$brNG-(5eR,d*2Jl@?;kV^TN*p9Bu-,`eDk7%<!:!;#/?PL./BcB]AEsZ*ar
EMkt$@dfC&WaV-O7=D`f8^I^i>ZC<#@gnmhlNXl[7E8Kh#-;Hho9*9MGSQYWH^F`7p2dnK4R
6\!7Y=j'9"nd7s=@rdaFdk>Jmm0\qn$D4$6#@G\3ss\+Gd"#6j&O\G,pB$[&f8B/Up!k7AT3
)4.i1Y%#ah$P*1(QnLZ@-qWdGR6'KSV3`+:gk_^aZ$6XdfB*FU@:CcV.=(O1ldmA-0AIOLQM
(0n9^QCt=]Ab2m-T(Z[+DE<33(34opO2C44rrs\:<M))f4jV:?/F=r;lfquusSLM$QPeBd$F^
^lHNKePAlLm$7P6%s\3jY4DqcSX'-0R^A_o@61iQkY^3s6+2$;5T1YFM%te/ro:,.q@uGU\h
tl>)@#Z=3%1B\QfCmnS6kg[Lu(9%_T/,2)eZ8Vafa0+G*&@k`iBa765p#f!o$i\$bjOXj,j:
_h^^-(OQ?"P38eFh?]AJ*u?3"=7kSIYS/arZ/*I@]A[M3$9ideq(Net?e+MIq,O92Qj`Oe<nI*
7To"41seMCS'2I#>YS6SMW`!Ts'h\nVY$jmP6eI">+:pucIE7?#6Wu%PMKsjZn?!J6u#I"V$
QXX80nKOIn[q8]Ag&UVB@La@O/^Y@.PHqG%B.CH4(m,Vk83&I'5nts#8hMhgn+5+X2\_31;%&
82pi\f+b9leSo3g@>]Alu&E?2CP&7kVT;5Ko>CM-AqDbS5cObK-BE1!5:WE0)(F5]AdmpcY>AY
jrrBNEjfu&D$X,./9o=M`!hBGXM%-e_\2J]Au<E/HoT;]AS=360]A<Wi9h%%,-\>Jlc8oo,^+bE
?\>ko4LrE?+*GHWK1]A*5uBS]AMJS@Z4mf@-Im*AsB+<Z[an]AB9L>P/;:'"=B're*8-@rAfLl4
l2JuaQVi!pPZQFUO!kQl,dW@2X<h]Ai7Y8!d_p?D^k8j<]AiG"rL_Yd]A9in7bYG8\F%j%R$uRd
#\$DE\DA1i;E3C\M7PJ)5<QFj<]Ac4>G/'b\W3\+biJ_fLNJ[S6I>iC;=JMQIE&aKsAqDsroJ
'.,1#Dpg;-kWR,!<cBd;MXrHC2WDP^/jNZ(SFh#<AsJ36mTn!af)a`V&Q*oCnN,++Gs8ggA:
oST[3cmbKIMMQ\7[MI^\kG>6W#fs&Wq*M57/UCGk!-1Phn`3,U9hannO83Ce*$8Ns=]A%:GhL
,&C%gY'PF?"(b[;GDUMC+'P<0r*rcReJZMoc)>(i`t;IJGm>^J9cE=q!?KV]A5Te4.,GK?dLl
!pj!R#pn'7&1qBK[L`2;ncBXDt=3B%o"b-(<?l-4sG:>CStC%?TTG[p+9hHXdLXc`d29*iHs
9R2Kg\@o%d1=87jk$s<tfX2XXi*@tHd[b\U,<-c3NUVT+jbbLVnP<W>U.t@TMYBBiVC;'Vc3
J#lK/_h-6e4%a@CWUO.Lti:(=)#;(GKuWIc7!-^gYOX8?QX![q*Rr1mi.el(bf04to/[C3HN
VpmsXb>&3ta>s'qs]AaT9k);50erf/B_]AjZMhJn4A#ddQPrZs'h1m>GaT$V+3kdRC#l>d<Ain
Nsq7pungY?XFIiDkumnU<),uR4Q*J8`.t@Qn/,5ErJ<!A9E(-]AtpSKL_TN9okU1hY-"?D`Hh
c(BalY)Dg\OlI]A$K+."0!L2p-al4+u20]A-Z4_bO>GD0n6REh7k\,[;LK-0uR7.27c9/kSda%
CNPQ=d5AL)fB=,YUMFt2Y0m9Al[PoZ)0oSjj-Je7SZABNSGQPabNmW8c`_bs:P0S8TE[9P5n
.R*K,W74"uW>F%;J^l)UtDas"@c0T#oRVEgq_mqW;k^4'r3GI_%)ds63E\K,W7trt9d%#(V(
8LatZr:?Tpt\C[>KiMZ\Y~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="187" height="22"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="92" width="187" height="22"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="统计信息-标题"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report0" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="统计信息-标题"/>
<WidgetID widgetID="8abe9903-b13f-45ec-95ad-5a2b20d246cc"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="统计信息-标题"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" borderRadius="6" type="0" borderStyle="1">
<color>
<FineColor color="-5000269" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[609600,12039600,1600200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__1A6E251559DBF8BE574DAB65A8BDF6E8">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n(7;XMM^W,WiLl!e?N9Vi,%U`LOF#2Y&U/#V[6cIlGV(W&>nk+i
ImHNdjZjqrNmOD-6<PF3Bhc.U(K?0(IYr/CtZoR!GY(=XDE[##A;bQZZ%09`P~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[统计信息]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[详情>]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="网页链接1">
<JavaScript class="com.fr.js.WebHyperlink">
<JavaScript class="com.fr.js.WebHyperlink">
<Parameters/>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<URL>
<![CDATA[https://help.fanruan.com/finereport/]]></URL>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="1" size="64"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="0" size="72" underline="1">
<foreground>
<FineColor color="-6776680" hor="-1" ver="-1"/>
</foreground>
</FRFont>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m?hTa;d%h)04KS$"u`S3%+#JkK*m3d&GAZDM@Q*p$=b2L:dfu@(bdLt%1^O`+"a.IJ>+//6&
_lg$&TlMa<H]AG!Q'j.P!C.C,_SjqH`Es?C4:Op^T)X\o&I:,\[UFBo=jZRpElMPGM]AT)CF]AA
b4&2FEoc*sZQaQA<U7sVFRdtJ"!%]AKns6=jfG5hF/NX%aLYL(=?mlt&a9o6Klq8It\^[):eI
c/6;(WF#8[[d6LUQjS,#8<\6;(paSoK^!'kp%MQK7EdkeX!$2<S?^_<_7\AU9/Q=,=p"fcth
t9A\C7$.=?CNkF-eQkD7S;=/I'0G1,bLJ]Au.JZDh80RPlE*(-.Kef`\qps+KJ^!a8^\HO1k*
N`"5/#5je9VPNfiPUHOAj/AQGjL<#^RnlG.#F,9S`R.]AIN^^]A!V))U2=;:i0hCV#!Z96]AVor
]A(1!_%[[lp/.T=r@=K-ff.MJmVTu($N"ZG65RB/cJ7k=79;qnPR;F>6&@5a\L`d!8URA4fPr
c-K3i/:<]A\<.CDi9&,:UQ%2g5U:Y]A[UQ18JM!3GFqs4j:_nh[?3eY6>b5@K@K7K)n1//?kUf
,EPE-;<'(Z8sg;98.]Ahnu]A[DNr[#(@0JjIq]AU]A_k)pXT$]AWfoV0pV!>IcM_N)"(2kU:>Qn)a
^.oTp*1)?iL;-dq+p7Yeiop+('U8VMV5NerfBV`AWdRnK$MV\Zm.(/,!C7/L&a'Kfj9r@qR?
S_CT;Yb,.C?<<[1-?3f2Z>L:>IhFLho1P!!MOc%g3maNQcOJ'T2+gm#>u^a3(@CWBVABOmDu
#Y:kQ*62E@1CZohus@^q;qfDYcq4h]A.De9/RVuE\)1^QgqoNB2HJojtJn:*lM#6fm.g2Dfk$
u*ndR!08o4mbbI^SdYd$18!+<6R254RD>`$bjG>'b;63B2)6k&;P$2-8D9le*$]AO:P>C#]AXL
"KhOELFKVp2U,GTaR:^@s9d9Tf2`X$Yj:3o,Q'+l@h)ED2YOHUbCa>U`Gd"UY(=3=GD#B%_`
q*\WJ:V_CbnnFHYoNH-tFq1hDZdd"0nqq>`6HNqCoi-;]Ain'#$0EK@?]Ah_Tot%.3kV_=ItoM
k%YhG<om*bZ1.%sfnpOqj13"sMf<9a99+kqRPf"sAbFIm]AjMd1H9'8@OW-QJh\e4,RCk;r@;
uRK:tZH8MN$S_JMuDNj,fl_57+4@T\W_%i4%8,L<>IiL12^Vl=,EN&;'HW5'1p(&UBi4<6Ya
r*Tl)(ZVaW?AYcD1J_W`@;Yp=Wk+-@h1)EqTm]AM4'_i6%"baD'togt.O`#['Gn80FTc&]Ag6a
jSTMHpdGn3ZW@R;[P66cn$lFFPT!W95X#K>&>luauRj*poktuY6-9%mD!el0Y4&rE1r/l.uj
)=<:,S]A9^cjq'G,5Gk\,I$Y:nsYj?`PI!m+aGfoO"gH.It*d$!JEd>NY;l*TPl:T++uIp6Z@
I-@>S8o"nfU@j2D:0GhZTgODb2P3;!TOH2$]An'B86ZiS=9W4,lds_qec;Z1`=9S['PY]AfE'Z
ErK7EI(RDP?-Z^V<`WcX(I>n1';nEf@]Ah>T\=m%i:GLL%j%H/0t/^M%RWBVGFS#X]AZ)OLZjs
hj#@d]AR$&R[KQ]A'a(:TT<b?JPti,,pR&%Tbkf@RrU^!+thLDsj208GjN)Fae9H=taflI-WJ)
#U!`Ui%OI,V@lMlU8WAd=Osdi.JH!;_O+9FlVp00EYBt5+?N^?u_+3a=$DRGkQ5#l8_b?'NQ
5g`8#JFFXYMsE(bGQS`$9Pd&s;!NDrZQ^i7?9p+ldc*Q^Ye=j5<cd-Zo^kjjTL8`kKGK=nQq
!<Vqg-VC/bg>`[k0?$SPQ*tT?.`]AXV7deWHBPf_3Q+;f2r31;J]A%lBMZ+tLk?J^n/)%tk(9C
fcAp1BAVq-TN^fq"#+Q6K&Xgmi"9HJ@9iM7M*q[<!E;,bsFBbJCC<>$darq-#-K=9#$#JRa/
2]ArlgmI<]Am<.i'lSegs$b)9oF`?^C!KX-p]AMfg+j:1eCK"#F.t,CM2aOoZVY!?/),ue&I"k5
JHp"fGlM_:0Md^h`(FPdO0?CBUcO26M^;s?H"L,BI._iKS*TH/"V`^Q:WNd<9[ds32/kt6YD
BCOAP(q"g[sq::!'Y9oo<pJLJdk6/HV^p8qAuT8>BiqV43*(h*:fqNLSGrXpfihgY*JL)e*U
jdj:c*=o+e\-AKsIQ_NGOE8/^Lus5F[='88\cnCr3^)`SR"h33AYL9NKOl#<HoHL`ZiN8?>K
YO/&Kk1]ASA:.u-Q'GW/eGEg0:<hL00RNu*=443;'96)2F)6DINEJQYN,!\=far(2Ei1Y<FTG
f@&8ZoV9g@e1\PTC%F;0!RV@8a6nC5TNIVj6GJa/tf(PgHGC5a[D6G?/-DjVufsZRuNV16Y`
uTpD4RCW7RZZ4p(QrL&)splN8!pV3F)!`H\K6L[=_,9fG<HQrJa@Z`q'I#OD_=dC`*3h57Ju
f/kRmFq*/C,7N/cuMcX=c<(J&k%eqAajS!j.5]A@:8I%(3i\S'iF7Yr4A97aVnI]A;W1=L2QVF
^/eB6+t*D#hm`ZH1TKV8`RB+^b=p4SZ%e-=42!sd._8+iS1da;N9%js'M:3#W'4-ZXs@/GlV
TC+g!]A>UVE`,8T"R57(XH+Z/SPO+I@):<7\ohP=i2XV>l<r5k>&\'FPLnL_1`l?*d2Bp+F3T
^I=M3#C9&e5!:ig+_-Z8GHhs*VSVbY(oO?AdeW%hp@6C>AiE-u0(GYZr2N"$p$\9&QCfh8*Z
4F+MCoVQSRSHOoNB_\F0]AE_rFeh-kIqJ^q%rEnWJn$r[jmRQ:`0b?lX%`imISa?^Pj2aMC88
5m[los/%`eAh%RgcNZ<AbEU$&K?lcik,>oHj\V3+8gVKBA5R3/apM^YmKhUh2?h0h8k\B@I'
>fE%tQ5*u?#s=e]AhLR:9.0k`<FB-m[$a[GibJ5^l=lW&#(\K]A%fVtCh)VZdbQAQeFLG).$<g
FC;b1ouKOL^KYWo(FA8"\%!fNuIF#'\3Ie0`Tdg=b9K@"srNpO)(R[N-?!_46_Q'??[hMJ>)
F)dgp%7D7LM[:N5dLiZ8-/W`;;i*4YW[?=WrecmQ:QDLZVS%4k*8Ib>]ABRt<eoVFIk`1RD-[
_LPJ=hB^SPiNe2is(X>L8hHnQFq0[9t\gu<s>%aE4nJ0L86;s6B:$mXE?qQ(V(/R$H*R4*K!
@nlQqFBKdC3XB4EGR)mAq&M*mS@3jFCYfYHAp2qm0B,PQ7fH8Uh:I-\lHR\Wg;d)V6[p@TbI
[e$]A-LFV9=M@N[drsr&Vr0m^1MD&jL3`s"$]AS_d%:N,>#>:+1q,CH._^Rlmtj$oVKW$lAhZX
/"b?g7ZW/[r"[A;@b"A1jdUjLnXTm7"oNJI\da`LGOtF>9q\6Idq`[%ugFGsZS]A!%.k,Ru%s
$agABQR$FE:8rD[N.Nf.$=i[9E4rNUMEBJA+j2=kVo")TS#-dDHm`tA/[5m]Adp;I+YaO5P.'
Hp"JX:)qOX5^FQZ#:ZQ]A>XTK/@U#-`E!:[,7=m$_a!LNHe%'"l,>rk]AY@[4Xp87)\JiffB>q
7PQCb"s^D:Bi?;X1R<7uR\+'(E%I5de9Wc]ABV/a;'m]ApmJ4;='SbFifE2iTg;2?d\I*pAA@Y
aa'?r-dhXa<XlY&nWIHaN[]A?=R6^+\OM5Fbhe6KPLmg^%5/k*gm\7]A%N4=KEnArok7Z-P'lB
ehDe1njF-llmuJk*2<R)?/>YgZ84\W*<AmNaR]A_p\4-m4!?hq%js+ZZc4#3#hnO^fu^B(4sA
_iDa4^e*FLXGTOLIC&6(XQT?,&Q;FmBD.^s,S8QA`??VFU'C,puZss5T)<l5iGA[RNSoortD
N%=1s%FXH$;46c"_W!9KUPM%6(+h/J)nA=W<?A*Rf*-O=1fZQI/aP'6tHdi2Tk:'k&P#c"jH
@,!6+iA3C86tF'/+!"m6uoSG7/L[l[7Jp1ijhS10c2#!$X<3[QJ(E@qeC/kfLo4m?'qd&^/-
*)\j<jm.n=&G3O^Q!!be@EPEV3&1E(/R7Ht:II25rglf[]At9bh!nHSVP-hPIasfk\iW;>3&\
u(79Qd#0]A)7"-[RO,N=OT1WPn:G2]As6Z(:;5KVZ[jmYkucR%Y'#`kMoqDdluoIB3Vf9B,=Dn
;dj$)J#Y(]AS;PI<BPeXl1mb9Y?gh\(Jn3`!PCpQ'X_G@kA:X*7lp+nU'DXq"D#BH+fJtM^iI
qt$sn0491]A;e#ufDaZ&p^dFM-)U_:2ik4HeV-1E"98QhEKoc0<(s7u(b2=2P[aEj.Sek<IoX
F\(jA`cDS0T_5Q-]A:D8L]AtK,W74"uW>F%;J^l)UtDa25ieMC/BQZ5P:tf^C%5cn;cNi_^Y>i
o+)f03oK52#qcG)!/MbL#U5'IJd<QV+G'kCL`h9T,)@@n#ibjpX@CPqD*[)a`P!M2Ac0k$i6
KYuHkc67qT$'C&4-4YU=/a%ZRZ9:61,\6qLnaLKO=WirWr~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="71" width="375" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="订单总览"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report2" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="订单总览"/>
<WidgetID widgetID="21538996-404b-40be-a92b-b37848b9f9d8"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="订单总览"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="6" bottom="0" right="6"/>
<Border>
<border style="1" borderRadius="0" type="0" borderStyle="1">
<color>
<FineColor color="-5000269" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[订单总览]]></O>
<FRFont name="黑体" style="1" size="96"/>
<Position pos="2"/>
<InsetImage padding="10" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[609600,609600,584200,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[889000,2667000,8483600,1397000,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[报表名称：]]></O>
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="2" r="0" s="2">
<O>
<![CDATA[2010年集团订单运费驾驶舱]]></O>
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="3" r="0" s="1">
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="0" r="1" s="0">
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="1" r="1" s="1">
<O>
<![CDATA[总运货费：]]></O>
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="2" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="表格1" columnName="总运货费"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0">
<cellSortAttr/>
</Expand>
</C>
<C c="0" r="2" s="0">
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="1" r="2" s="1">
<O>
<![CDATA[查看日期：]]></O>
<PrivilegeControl/>
<Expand>
<cellSortAttr/>
</Expand>
</C>
<C c="2" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="表格1" columnName="date(&apos;now&apos;)"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
<cellSortAttr/>
</O>
<PrivilegeControl/>
<Expand dir="0">
<cellSortAttr/>
</Expand>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="simhei" style="0" size="64"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style style_name="默认" full="true" border_source="-1" imageLayout="1">
<FRFont name="simhei" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="simhei" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[mCRRA;eu+[MB/rE.NN%MMHc/h6E#`pU&lN:V&,C8,/"13-oJpp)i06C[*So<cj9tE2UV_]A5Q
ZcR+@%>ABF+f:i;7uto/hHW478_R*&7^D:KH&9otKm"F$B2`1GKF.l^crGiSieU3cXnSp-UI
86]A!mSgkRoYjN$E]Aio4uX]ArQS11amKij93>3iXs7?8c7DVK>!B`48$nSlb+//qV@W";K$n(r
-@;KL[,K=,sJtci:W*-^E4@:04[QPR2N-MVo,EBXDN?n,r>-glofe<*TR(1]AM0CeSJDF.HTq
(-@_!+]Arq"N@%C-EDg=a=?YSK,Ia6Zdj<r;^j^r\f\b;o.j\;jcK.=ZB@Ba^[38(772F4r4=
HVkn([t@$WF6tDa6'QF!H8O#2JSR-dCTDo_F+Z9$)tm!e;^J'Bo8jQG!![<_(YABq"_#\JTU
A@YEhj2^3GDXl?.8T)'H<[QmNhSE0^f(Tg;5Ie,4:`XG%+3Z:>%-Pr!stR0G6VPK1pjZe:,c
9E7%oB6[la/Ju]A@8oQ2>W;,NqLkN1hBU,C)hAMecAZhY+*Vq.fL.uOrCc0O^GGi;,uh)RL!A
LF1^bN[tSTKtUk8cN*$g()'b:]A_o[;(!@97S+mo?>9L]AFh,gH6D%D'Z$a'af/k>a4P<QupX$
$$r1*]AP`tu5+R%9/T>iT)]AU0H"H3d2j*$3Q!0]A7SHVhs1l&]A0_9rCFmugT1"#:6e$TC*nY)N
'V`)-SW(:`T(7$HQuCX6,$d*!hh8A42pU9'Mh"IE0WmS5]Ae1Y7m/A5JH_`9]A+kcG,X_r-<JB
b9iU<^#]AQ!O)VX*/67"f\i*ZF6gNJ="EfNdAn%a"9.sc&b8(nki^8eGX%P-Q)f"`1&c,qUYM
MatdO2,ui&qCMS.kRhMOT=b@Zp1e#H^aDK20@Gcm2WFrZ(n;TG)&A^79)W;[A)5!MOME;nIF
%HR>Wb8e?>^2oAK;lc`&P?jA9C1qHCXcbBV10c"01(/S@rfE5U/W*a4Z!.s&<u+PbBiPni&k
&T:qM6^#bLl,Ke%OqJ,<7df[,`RVdNNCFkK%I6Df//E\AQ).5A67o$9PPp.%B(!7"2?M;35Y
b.Bja=%Kikk1?)3JmE-]A=*!QZN(U>cB@[?Meq[feLR4G3.F>I[*D=jO(tTi+f.>.Fp6MP3O?
O:n\qXOsYp`"b`=!(u`Q@.lTJ@0E(+P!IkL-iR870tRq-an%YGS.7jSFsRS\cW+YN1Nl0m^H
[0cua;U*RV-2;7T[3qT%;NP.ABRYtN'PMh%*e!`e:Dnt1ockOo)NB^]AT(LaXtpq9u;hnkeW/
3`=q?=dh$h?gk7`VI`W'7f%S7a.k>("k33BO(Le8[E,?I4==Mlh/8i=c5PHRqSGj!]AYYGOK[
k3;IqJUSVD(U[]A=^4C6-D3'/\isAXr8slif9(a\B"aD+49]A(iPAeI>Im>$BBr,NY_lC2oLlo
=7dr.!G*df4pW\Brc:9':2"aEkY_.Vq!.3BKHOOaBu`:6MFm65IZLGK!]AFnd)<3sD!_A(9R^
^-[[dOrflGClPh)FXndE^_9LMJF950[]As9sdQ\G&E:PB#L4M]AVVOJlaEoCCQI4,U1tE>c_<j
8r'Io(5Za'pcbqare./>C9l-F6Lg;@3!L,(:c0[&\_pmn1Kk5TZG;68%9T6)V`ikZdcdc@m/
JA%^U\8MA&pf(dlQc8ARm,1b?g!dqq0C>9Xo3kfp/$5TheFKj(/Z&P=4<lFjPRG6BEVi]Ao*L
g2bLs00nr/UF6!NZ?PRr.\+TG^<pb>?m=J"ci/l/P%J@UBh;E'e!J&qq8^V"Y!hUS=BD"?t[
Z`@;s0<&;)Ap?qs,!6HO=b/W]AJi=]AEX*&Ib$HBH1.QYl8,pG5\'d7DE8qZn57q.AO!okrKi@
_>YUlc?ip/Td*-C2S%;Fp;RF[:R3]A1a#4T'$iRP%-[*8O&=l:(ectcuXd2%nkK:M(7TIUZ/r
\(a'c.`H=P-S<bHl!`Y^NSf!"s$'&l@:4ZK\:PZ@Sq\e8d['#qKHr=HT*j2n3LiVsJRjh'!C
J9/([ABD?O/qL`US50408,:Ol\dRu@<^#DMTa)1^"3$8I7Ld`)9VLrE:*klpL]A-A;!!Rs0ib
T9VbG3'HH*t9_e&)H^1FVcL=jA2(Odm9*^'gQ!`:6HW3&+9kmR6^[_hBV'IU_m$8'F*Q/2[\
gfTQ6%DXW/F?+;J`u-B52$4</39\?_@q\sP^W!(d5ldOff?i]A;P]A+AU$0]AK'mR5q,k@IT2T&
:@A@fJKuVh"T1bi1I-o9dQ%K335U`:-\7;%r;0=/LJbclqFt_Db3&)QY1<oX)/1rfMjE>G7\
J3&ViWa!#d90jWL4,Ia1jh6/1&4Rp9]AHu]A=bj4[Mt9uI+mqU`(>ap4mAe4o;7`$;*m3b:33H
ttNMTjJ99CALXM=cb(O[Wq!OP6MY@No=,a>-Me]Ak:3>n64/Z4(WOa4?#s8.'VJl[e0t8ke+,
9C$!st)UP[L_KL<c_1bGrJ8'UfP:ocY89O:crHtfip$X#ft:-aP+X$07;/Mfgg]A%U20%V;$$
SIP@C<>*Qo$6@jW?&D0k<M%<kP@H??3SqrU&F+C-C;E,7nrFF=81DSO6JJthJ52*qZ4\:e8+
4;"UTY(nU^GkIodcZe'oSKNc)f\Br\/f(TWj),mJ^E,\*.M*$"q;1s6dnu/m2NH30%`%?Tl6
Ep&'`pWh[o0q!;c^]ACf4mJ.'upVK7mkpDq"El6=(R9Y#9@h0=OQbh%!;<#a;kSHWM%&tt$b)
mB/G]A_8YLoInCMX5FkUUIs_#fg'l*rn/_Nrh4&]ApDu_+r,bgYfZGQ-Jh0L]AkIF]A%5L0Ci-3g
EVJ(p7_Xdr=@oA<m:'qt*,R26'c%6&1oE.\@k%-A?-Ej]A0b7/8%Yq:cM+j/s;u8?/GIB>W%*
"FYDh-Wp;oYs\p`_:A1hh@8cf-=a?&",TRXWl,Sqk#/W3gPgnC=Sil^"[FE*!QPu+cU_1E#h
B+-j"'1g;WKs?1cs_?-cAQACIOTpDoq\dMkg"SlK5"F`JWctRZj8#GUL7Qmea*NAbEb[RqgU
VBHf%[d+5Q_2_FO!g-MNd"`O'Q/LWpUQ_CL]AP?n4OCmp96fbqJ$OL4XM;<Wd%`n'5D2s!f'f
R#1JLP6$j[pPq0/krf!4%887]AfbglCMmAUZBA#+-luHg"$u]A$7*TF)N$tj=R?dcUPY7%iWpY
8m@V%$NlVL]AY3-=s_j8JsP4mdBF[%t*4rbD))HnupSYj0,5IUK5,7,pqWh-'$DnOd*Q/#-MZ
dX6[!Y`<%9@.&ZX&_KL.Rq[cJ0@:T;0Ar_tE%l%Hflm0FiptdL2)W!%rGu&;'(#+S"mXA'q5
!*B^qR9%InW[GHRDi=+ZQ?ja?jiB#^f(LjSe.K?;t-)m!5=SWo/Wi9sFZ18bC#0]AoR7`$GkS
]AS_geei((I?XQJ*:q5="%5mpF(Rrn`jB(bA9A,]A#Q@#qO!HkPbujI\%V=:%)4jL?90Xm>)th
:-bKOFpp3:]A/\q=s8*>,Lig?`Ul8bU"\V<2eV$W=;$=,RHf^L+SC>QKVCsFc8HP7<jnqhI(b
nq?++On9m3s0;j*M\9!FpF&[CPm$VB<h+`RqK`WqQfC@k2LHII+aDj2:0H9u]ABiho;J5MU2N
N,C-Ar,rSf"+D$"DX4p4056O;]Au[:E=I!f*L6>TNL#YqO]A!,.q3u&oReL>!dCs%*ING<B[kj
+M7TdER'O3/`lEr:5MI7p*f9c7*'a`tcJ&*20a`0(j_#1Kou4"s-j;$:DOI<)PIHhrOjDWS.
ANS:a^Y)fMTc!+PP9WT2_Ca3#--u*&(VU+od,M#A[5h9rfiJ$V8"Z<K+!GJEjZ)uZ10Yq'u[
`cV]A]A)]A2lL@47-AIW[4Z<lk;8Zt?ILlFSYf\+/0I<Q\5Y4_abTqE/BIR,bUHLBPYFPleWrH&
f%BLL!nbQgt(G6#Kbbb=!)KQX8`+EXkdJK<;<5f968VCFg>74mq?/NH[L5Cn1.K7lLS]AZ>Fp
2IBduSA48&Xd\!RH*R_Q=XY_HWrP+fL5_TPK=UiNE=C6J;q.]A%UieH<J`SYZF>\%c;A$L5RI
pdg6`>=Vl5-Zrd)$TH\]A=jU0CfVE@Yn?0oJ,Go7uNi#X:+Yb8(T>@'9kU#(Yca=e9g1jaK8-
RmOXsU'jH;jO0"Zel<,os&Ht%Afp^X%DW-q>^&/!h0AXJbpp5"GoqXBWHo+H)X%UMtdRK!Uo
>CL**l!p8&aNONk]A9>_!pNBT\ef>$gY,b3jJH-I(WR&S^),Js,cc,6b>!T?m:u#'_i.n)=jG
s\<.Jl3f!glme;95=54H3-6`iUu;(s8k)c"K)d?uT-KS[?8G4`W+^LK/*RFXaX<%<!EL=RiW
<F-'!^fFZ'64Xor5NJ:+pQ\;aHc8/MaHfZSeRH":Xors+r^saD%ijhhXgh$g>k54X=KMHXdd
=g&J`8h("`sBpf4q$]Ah9YH&H]ATon5r%iV-m7eu`(c2I*lT=om1LqlE'-M5WFcJM$h';>mS,-
i2(*>fAFckPDU"WB#=t9bNg0H;:,>SL&JH3kf]ADT#4?pG;.7%!L\4m3sBVWg6o&JOJ"2Y[_W
!Os@g-X`(0W5cT^-+.p"ZIN3!tI6nX]A=hrC!Or7(uKS?<T(O%Bj&EmjgbPWP$%@T?Aj</Fad
r,kB*8o\$206T`XiQg$^5Yb/lqgU"aPfiYrhGF-gdL<UF#38OG>!6^dF.(.kXpidWQIWo,D!
7->^nr5q%4EO"`EUQO%=TGCRNLp$0b-Y7f$P?X*US*%BSRl4FAlQ$oK3o$!c%9QP(-po-skL
'O\7ms0FoV6l:k#b@/q.4t[Jb`6:qBEst,76VeRRjO*FfUYfnkC@3=iSYGc'!OorMpI@WTI^
UYh3;4%'%KoQN(F)E'mn!k0[o3&E:PQfa;X^;]AuiRUUPR*o\^!5]AhPjmQrn8co4_<*2uZtOo
Kpq8NHA!A'8k/LEbiIo\NWYrfc]A(=B/2JM-(C2i]AQlBl/&XPS'VeTAH7ZR+8(j$&Te!<KOMB
Ba)PRnuD.^6/Q):edo>W&=BsFd,Xf1^FTgU`TKR`De=oEL=Jhr)f_);P#pp^Gn6^.mk8I6ub
BSK\VXn5kF)f1u"Vl3dn#S"b?\X'&q3%j$c<0B/(0L^fjfB0hQ'2RTlRIF)UY8;c5[T=0mUq
6\L4m5N:.k50PI?rP4XOe4(_U-`uo\N=l'"Cb?.c[Y<kF/tZ:V/[[cF%,SQIiGWek8ORrUS$
GaiosQOKq+W'fK>.[.;Bb_\i;mf8,u:#B_S4MP,?SE^0C<-i\7Um!-;D[Yll;P-gHQRD[Otp
;[9J)@=Ftn_3Ks>DQ_f2gpo\3sg/,_soSf[Fpc<2)q)2^M/QL1+/P?k_<?#r\aZ-<E?r4/%*
4_VGTQ5aId+Y.jk(2ISKJ[6VS;r-e]AG&9QPgR`LSJa\2eIhq6"kNr?;3nho'IS+e\D"HhJ?!
KpC26<\h"7`c^CmXO8W&f1FO6)QIjXjcsPoer&`g%^cYo+OVKCr^-)C/9fXqZS-^k.GeMJ=8
<(=!`8?e8tU\8gXHT0:X>?S$/kt!`Gks,1);1*Y9oSl.kBd9lRrsh]AE8aTZ:_ge2:jnL$3j8
8D*>c4+$M8&mj6SPThq:j%[LUQ3[Z3qHUBqa%j,r1\6k3n6Lm-qSM2d*^IDN0(P/f75d]Ae#H
/J`DaI3I[(B%qOpr=Tj4F?<=IF*?t*da=i:&c&>>>hV,]ATJ_pk-Dk^gWUtQkiF&tBoPSM;Po
SS6quUG!E@7,E)alK;:_3:%T3,&(`o%HV>C=JL]A4X0nW=0pQ1l;IV?aZF*^0jW*4O?:qi,D@
[0"jXk"lIgJ8i83^JcPjPn26>m^KWC2?FKQ%42RW27N$uC617*GQ@>#Vmgp_9%Y@QHlP8J;"
Ir\3a_<XT%YaWS#GgO@qJo\_a<P/X+rfqpNK]AOE!012q=</P<[&=mb(Fks2*[1pFPGEmZr\&
=\a*juiOVX7]AiAE>DP@<*)eJBsHX<a0=TZ3i=@H##l\d""PL>("^Z`mi5[%9b)B>*Do,!]Aj=
kD)j`i&IJZsr6Lo"qRR4]A,5XFge[Y,JsC"Z5&FF'CfFp7J]A(]A)5bT4b83A\$pU'dZ&/NbeXi
&6H5CiBB24*93k.1eUPsrD+.)U1DV\ii.^SHbW50fhl_bZ&1X5RAhj@60UQu[bh;7aMTD2T8
`2dd\<FS_^%E"u)`L-*8??,\Tq`6%0RZ,0.H/4P]Aa]AB`8%YnbHi.S52JYqt=$bp0'GL)bFo7
*mp8WU*.B.?OE?ah13#[N^G`rOM7-^2/.[`e>n=VVth+pke(1kF)PETHVp(&!D]Ak9j<n8.p3
RUq1sg[<rRY7r5:dV(PCHm`c+EiuKg24dL9l3^q./='lRk<VBMUfbjjM4SY`T$@q.9"B^Mj,
3(;%`NHC<gS>/828n`^<+8Pfap"ktS"i`Pkc[WB.MLK17aGrCS&PO\/Q%iD'&3^kkGNC[B4f
lrGS7?=JGl%oo#T%AWl3ZD;0k6aK9Q,cJ^Dalm2I8!]A>Z_)0Ho6oW[:;>'Z(Qki,-n;<".KP
lpOHNOm"\)6``boIeAtK=l>U/O;VJ"D%Q35aW+WhK$nKLENcP]Ams?\r;Y^)0.VKUlL\)-2N7
9<0l*W3O]AN5]AHNL9(E7_M96MO^,O`$3fVQkrNl+X68UJ^puLM9_g84GiQ,:rF-Cf:lIj51/,
ASQ)RBk!^-'TQ'/(TQgLr$-__*(qr'mY!W&"j-C4W()7+u>eKSn6+l8S:Qu?`0#^dlf[2(p;
`'e6Y3k+';J@W&]A9>u2DE[Zi9rT8KacLFC3>lR@)QMPZ>gR<ck#p!c.u5lp,a1B3?b[u_@rj
$V"/3D9WjpX=b=gR,A+AdcQRbQ-8A$qagh"AllWeob7+`b[d&Wt$Y-+51f1b@3NuV=hY5"WD
`qB0)]A#T*"KUmEjJdcW1,Ih4N"M#3Ti5.\+!"%+Z6lXI>D^6Ke=l3BZ9sIs8YMS7O-6^)d)_
X6Z?EZVqQLl4AHM[Jo;:hl/T^c9eL(lA!_^u_SpZIG&J#JD3$+#i_K-uiC/*Q\29C;<D.6u3
]Ao8?aH)km>9c%i_!d]A)6]A'!G[.PLnL7*YCtO7l9\B9L:F+gfp+982&L=RU8jX0ODDkH]ATtq'
&%]AN,*BS^C.=ap-UL)n3o"YZa^:sAi+V,Tm%7&TPi\BT&;'gsq:Cp.\<3PVL6boLF22<ClEe
@K3aGC%;BGNsNEgaUcu_Zuc<#cF=uM_;lm=]A-G_Z=0Sgt=!GPA0BNn!hC*FGd`9?lIcQn@b:
^CL58h7NO)\Y,S&e7!1t;8OnBYcb9Z_+Vnb]Ao!Y4W\-F]AU$]At-%ApJU?^Wa54($R1YSVZZje
9/!jN%HYMob!9;?lIC9?\P]AYZ?6D;J,#mn.#<Ec4A(kdm$I1jeS)7VB1Sl\FC$8)CcIG9e+H
0._1a,n=/D43cl[HL^]AS(`,cM\Vf&qJo0-*&_>`Xh=71CM%1FT;I8m%+/5Kg8mcCh;M5:sIr
i!``2Q]A[*4h?dLZ*]Ap#3D1ljQ7?UP7N/AKEmrj#$.m!:VGd16r-Xr1Wa!r]A?Ts2@l]Auk!f/"
Ya.3(N0j`*#\D7%FW79u%MQ<,oX@jaGMB7CVE.bHds/bJaWJujd]A$X%>%+.oC1r>rJ84hHIN
CN&r#/`$\-)At78b.2KWL2]A$R'd-KNL,HV;'nZf1lO\-h+FT`IQ/YM,PBD/N0[UBs,C,SY6i
JS$f8juJIfR]ATM$%Yo[2L>Yf]A%J9*P"!S,:W-Wch[WiZZ<pg0@Nq0(Ng6*'E6P:Ut/Q.9[Z.
Id7HY3r41t4T*_6)cLo$*'#:KHd<#W"K;2N9Uf3l!kAI?E=c<(sFK=><@!Up5>[Q"uo?.jPo
U6*mR#a..=YE@n%qCR[h4,3rIK8"GD`1SnMi^,=HMlphs/0,*jlj&8I#?,+iu;%;A'RSrfQd
[bar+>r)M.2I>f%_TQ,Wds(ak%*Dk@ZSmsI;C+gR(XppVK1D9(8Ibg-)>pn$M\Qk8T`kKAGd
Bn,Oms7QGAe3T?`f`;!nY'dg+]AFCA]A6&,:&V6nNH]Ac48CF,BNV3IUX^e@u%=5%KALYhm!f="
Akcrol=OLoi'CC^nR,dZp,H3;iRlh`b[$lYE]AamJ?40kB+Nl\FBG&Qar[UI&5K]Ae[SZB%+e\
-c\-[I%K)?$]APS)dLS@fl%I@)O3dO@LY!J2pc7.@hq-2t?iat^L&aMK9&Q)_U`\t9ZQNlNTo
#+ef^D!KbLd"B."`W-1;I;('3@/sBLo#=g(KtX1C\$b]A$QdX8<X<[1HoL>Si+(>-9+*#g7rb
\lDgG^%#D)JQT'ATh_]A]AZMfF(PoW/P\]Ao*!UtWl(/d%qXcDp]APSu0ebog0^Ze.dd*]A'D=G<!
2Z%W$\Y,J;3l/DEPF:I<^brH?oSh:s996L6O;iP#g'ZS"06uk4bO.mX5,gHsEgp-Gq=UNRVe
l(n;#.QT3L:5o,2=HqJ=2Q,\E\Vs53e:P4GajJqgNV@C=t_r]AWX*B=i<=F6V#LHRBaimgtV1
h8X4@*^V5fLl8d@Uah*q3GhHc2Efl5t3:4r7Q[V.nI3iOG^EZ)L9EalDq^trSHW<j0/`8PLG
JsLj*9skG:M'^TMVIsf\;BpEgrdHa9Y\j&Jfe/XAVVWHhi]A0)!:BZtcYkG6`q:7b)PlH]A#AV
o6>Mi*GBud8@C8Q&fj2fYD":0u.q!E^>#B&d]AM:'CbLeY"'l0lo;E72l%i.D@$Q[VVip_Ru_
KgpRe>fHH%F'?qnP0""o.\>t1eiHr&kcWk082RZW?0RiooWs>8bI`<ESLaHU]A=Mf?*c?P;%p
NkDS+'3<e'Q9oID4Q]A3Fd,<0^;k\Ndf!q't;RZ]AYsND25G\t,h!i4=3?A>._4ONRu9bI'-<H
ApO3K_U2RNlRN]A2+obSt"f:K-7hC7N1T1kBT??Op9ps2,]AROdc/`Hi*(]AU5_/k%c9-H3-tNb
$'ge?9O/@<;;poU?K+o>?3G3]AZCO78rqtLaE/mBZ'F'mEH:"Hs//rIobpI"bF<cCRmYs2'-T
Xn(Jo`g?`nfslP]A]A%(38qo.l2!5r//]AQJZD(WdXXYN=Y]AZY6@s3l8CGQ@AMKa8Q`bD+V5MRQ
4oo662d@B:T0_./kg81uQ_A.gK<!mg<F-n-QbN\[/poPSo'80a^EVE6$f,8@#P32Ai5gb%%:
Q^5Ko78/k7E8AUX"9PK(AS/V$Amk(0^M")XI_:Fl_G)ELqd9MFC^p(WS$b1s70\"E+d\kZ]A=
UakI:f$iU_$5<XheRd.Mg0aFp2Z<YnK?rZmes2-Ic)jLf4ma2Nm'=k5%?8p.a"*Uru6>URcn
)p:\JD1=VQT;usiGAK3(iqHGr%C2dg"#2]A'?),JP>!k,q'tZq_J2i`[qulA$?,\'9L^sSHh@
/X6'+&8b1W3h'B&R?0mG$Q4nZ0"g'GW'Y/CUR+*m(cr,OU!/LsKfFt/3RS2[FT,8bcmG9':c
h6%4=Y\Tp*WEHE^FR^F`rD.%*COc[8JLfF23rtR?anK2Je>?^H(]A=H=c+c.Sh3:k3Q1FVdr_
5m9Dj%;s;O;tF]A(J#fN.$]A=k3J=TLn!ObcOl-?(P,l)H:0]A#`1;3Qm]AW?:TW$?0h6L_;7V#h
bmH;N,)1"kMb6$cqi]AOqKUR]A2XACR`6Scnor2V\`.+Xd2B2V"2Z/W!Ijr2Ip&W`&N_P5^!:e
84<oT;TJVI"8sg'IQC;([<HDN3!9jO8n=a_:I74^b]ABF.EA9/R/)EdAJsL$<XX9<MNPZbHjQ
X-YTOuH]AQdh9Wf3PE&39$Pb"fkB\Er7XdFJ+B0E?A]AlMrkD"bWb<CauWW[^:?q%c(<WB]A$Nf
U0:6aC2M1\9>JdG_5=pC._<$57r.:'kSl8s-hTWa*st"JW2g?taqgW_G:F1&Qml-NX0BcZ#Z
RRSFl$rsA<cQ90@*>8F]A[d=L;s+P"V)Il1:Epr(Vep9\Wa,^biJEg,;Uic.^lc.0oaf6)W7Y
)WutQcV9f\6\_8%]A57?lZapPF<*$d!W;"r!(:p\trqM\A%\-KTop$u\3&'IV89Lcq8rCBkr#
aKq5N$Pn,+l25%>dqo0"F;Wp3MnH#nr?br'Y(dIJoc1dS3bq(pJa)W5UiqlKA9Si2n#L7+7"
3>=e.ILCEV"1)d[AY'+qA@b#6eFSSV<diHs4gW4?-Dr@m0=;pb</-rj><,]AhsC!+uXM?F*+u
,_>gg&/Q=%VGJL1!cme$G@,dKH#g3lFa/@MT\]A6E!G?D4Okh[F2Wsnhg=Rh(<8Y0Ad"09M&f
*U0_Y($T`4M!d]A^i>^`P2_,MN0k`UfE3)c,-csYLV&NqMnK1H'Cet/?tYF1X=E[6^Ul`joDB
g9$f5OIkEB*o>3`sc[KjsR,*7$E!DuriI@L_DoQ0,rUL2.21(T&;<i%p&4uat9PdJnTmgOVn
U%<>W(Du<%fQ2ACc>6C/b]A$p-RY8!j)El"2-"BL9U7Y]A,":tQC[NI4;9"pL"F[l1qtL<sEp<
Z%6!_>\orc"F8'\4i\:nH!M"@GE>%oPX`YIg.blNj6ortno.AZh9rZqK4T1E9D.'[a@D'2Mp
LN`$i_rVflXJ69D@;$_Y_/]A5uT=I5NOn>^fNi>Seg#F6@`JS'Sbl!Y7K]A4oM=#4cJMf6Zl)(
%MZ`2p2-g>BW_FDIAcdN"g9kF)r3$i]A:c$Nfum27L74Rbgb%8So4$0@g1=`t]A"iO0C@`c2G_
>B@Z@7-IGlHRDK8bNZ5U@06le`8"9QdEAhr^hOMs_#:JV#q,[W<m=31pgio8Q6LsJL5urbRK
ZrL%HW=*<fOMC3IbQ0_Il[Do'&2.9GhSlVCMD0Vk6h2nkc>('!"$uCRUZoP4bpSNH3"0dUcK
a&GjD\dUI\sW!Qr8u21qD8%KgpOW\Gd=TMF#bTf.4q#C_4jJtLh5pdjui`7Nj+q)[pmVqTI+
^GC%KKR*0p);PLFLX3p!c>b78;gYCuI&`Y(Q3tjnmR*h^36HHH2>COk@H#/cUs<aoAlV$l<'
Y3#"$Ri6maAdKla1&K7SqqK1PHlc%03l;,Fej@j/ZrBh+PP8;CT-ESr<p2m)a.9pt@09[:2#
p0ZuO%<qYo&&AfIU7(cXCe0k(,i@-ANWdWHJ&UFCO\;N8fQ]A29.o]AW9US1<Y&H_Jcn_B/(YI
!%THG=[qj2aY[?qO9+\31.PaK5Veme<R05KXRCp$9J#e&6FUm3=)c'NQZTtjrm?>UhQnbIgg
_1b2o;uHQ=tiFO)lT#3*4-;an=*D798!Oldj4Jt=CU\F`.r6;dGQ'>@phoggY0fk2O_f]AZgD
9`Q@!)qbu'rFtIGStB0!Wn7p,jBNNqjb.m-Gbo;Wp$s)6QIT^,;!=E8'!i-Qr9ru(j6rjsoO
lcB0EUp>gm#90Yr'2]A::]AA/A=APV:i"%ll5d``H'Pob&sk/O7!9\.!M6\6Vi;.$Ei83QL(LN
<VmQAm;u-E,3ADCE7^$Ge_XKa&c466T2Z#K$O7<R7.'V+Q*cfA1:G+6EbuH/\C*cpCXI_;-Y
0RiEK#HN8=B\+3]A22H+mKV@iNi[]APkKF;f8P3u-;X2j*Flo[5*$Bq7bT2rpiG0p?pK#Mc,>+
Yu-AE+adjl:d)Cf?Vp;7bi?JWi_8EjM]A)dpUfDe,3Rp=%W=,+)B_(=j@S*MQ0+!/E&R-_0`9
#&bgNS[,@*>."=A4&@jgEi7VU\(dK1<BiXBVunI`r'Yh`4*H%t<X7(A=fC!BBmHbZc">V7W+
(!olEVg%TI#mg_K;4DXN8WConh":I9B$Bf5@(.)f(Vkh:ZNi,1NipEX@Xg7<oC5Rq(S2-KIV
5nAWtD>>Ap@7lR>u0]AQl0:S+n7p)55$</h?>JS!Zp[$B;bXQ>WmkU=n?1d+qO=a'i%$TcD0U
\9bG50aY^@2bk^5)Pdd)2m8/J?mgg6DUMQi@CAOQHGaK,UNo1ds7`4Se:Gu&0LP6;=A:lQ?W
^R4hZpGAnL./P0EVA+Umu=-SdbH-KW^fO$0S\)_=$r]A?Ks3KA#P;+j=hV9,8MgJnOmahiA6Y
WV<5[/;QCA'a\IZ5#Yre[>*s)L0,JoWsj1F6:kTu#/;#gc\]A^U\qR==V,iLQEFg`f":NYQS]A
WfS1\M&^6`bbig,g*R?B8jSbi(X_2c\m4D3`-c)H:(Q6&K`+I]A>H<`^dt**ZrbVGeHa_5N07
C'D21lEOH<DoX.cs.<<ej_*2YnRbh[.%?I&3(Q.D.1-k"8]Ar%.h-Ef.H`3DM0.$a^pHrC9e5
GcaDn:?gAD]AKC$qCqZu^q0CYP,1.kpX!@9%;Qh%2B`/fR3/jKW&Mo&T)38J?Ykl`F[@.Y5.7
0f_7HBgF9S@ln!^@Y49p@ml4dU+p2_aojs=*01jNP>dFHo&._(/+L!C;;mSZlh0=Ch^F;s7b
Xc'A;\u2k8n8HM"8&Y9G/=#^;/9LmGZd)P=ZiAq2=g>GB!@m+7Nc#`8Dt\DLFJW]AIaZkj\g*
."(42MstNf)aYM(3i[dVF1,]A^E6R9ofg?,nulLAoce5s"3'W%7/M*/8mgShj!5%kFB(1!M(g
[HX2afJs=T1mJV&jTr(7)3Cuu<<0.KRX`qnQesR?'H#>ED\k06_&X#ogdQ2Y"%=&G?h^JFkN
d1Oij?MmEB(Pdm<ad^i9hVs,gMS<NbcedK,?9>ep#l[e2hPgYC[J`JcC+R0UMItQ+"bn::e'
3<Sh.PZ&Zok39Q\O.f3S!kQu<mM[4]AkB[B,\0Sno*Y6GhcuSp)(5#DUg>0P8=B3kH@eF@ad@
f7Uf.2CeEQN3'/&2XgEQ/daJicQL'SJ0IBKKnXA+QjX'8C9X'%,\//Kf8d?6FuktC;A-o*_D
B*JPl>sfclhtQ.@g*H'KeT!V(ZgGc)`[.N^t%e!0^`3:?Rk^O_4li52Z-NLW3Q-j1CM*O,,u
JL4Bl<JD%bU\IA,&SMKV?]ANY31#E*/N4YJb=@tmod=i[%m]A@k^dbWb&`riJ(tjiH_([oo-5b
qunc0&(-5#mou`J7;g(Z?Na+CE+;Pr25q[DnTZ3FneX(G8((35B<Q9@=k2#68).@@N$ek*6f
6hQK3jCm!CO8GY,0@.Q;MnBe$+Iko9Sd@$ID!=cJ&1]AHSKsMT7soo:(T!QG6"Us$lhS=i(+J
EWC`_L9DW7.lb)7-n)UuAuB1qoAAO+hVW5m@=-5T^1u)aTb091fPTU<)-OieP505CD`8K)m<
#sREk\4JD+F)[Z*gq'I9L9UOtcGQD0<GI_LCQo1@e9HDC8;nn22A6Q[[b[,p3nm[qJ]ACn1CY
928@n%Edro8FQc?3`V'grh:,Ku-#9uj94m?fQhl8Z^!d]AbijaSkg=QGHV'Z5`,pFO@EtJq_%
U#3nn.qH/ZeQ!V3@9R*n$E52X72\S(ad2f0U%E#ps2ai\#snBnW]AdM/6tT[)N?HtO"#-<%lC
nXn=Zks!@."OM8i.Dc_h%mVlg9[A?I;M,Y`Dg/+*'1NRaRYn5=J!q2m=;^U_ihYk;_B";6C)
14mMT+E<D)<.IYR\ESmAJ%lj,b$H6->=QA-Yd-,Tb:G!Bml'=8q[ZX7%87a$SqtmB:8P-<Hg
A?AQZnqb,WIVji>r*hc7c"AUisE*3-)`'b0faB[,#St<=`e\4aPO<FRm,'Qf`C5,#7LJdog$
Ph4Jjr8AXn(l6c`?#)9;JFA6'N.BGfr=8Qj;0;=M#)'mR?Yl-j'*s)j5bAZuI^#E$2Ik003V
tuM#Bd5G8F,\JR*p0QhjDHmfF.LD_eiKK6C@tkCXjA:Lb1!f%*n^8$>hmN]A'AZ3p!i0@^a1'
Nf$Pf\ZJDp-OiW^R42BBC+\3f`DL2PosGKI/%:3C;iLpm]AYJ1*c[e,c7Ggp3?NT_>\I;GR*c
!)K>13%)l#V\_,K"Qd,P7YRZ1\:KY&HBBBs<NMgtBe5.pe,(q"e>m=@?'R=ai'm/e!KqKB!X
9YiR(L&8EFiR.*6OQYj30nSj=)R+W"rt5h80]AnrF)e*2=`Tk(eaK8mfe@9PZ>2)TR)>P5';!
plr2/Z?#rgmb.#4YD0mM3^[m0"^P+o)hjfTDp;ee&nL)tl;0@+iHT:k,<B;4B!l(#coBcliY
TB6<a;$[^j(4S"..'AP6;H;:0jLAob6YAp1$!;e=hX$!0rtHJ+%4"Ado@R_R%W4]ASMN'd08@
j,3OTgYl;Q7gSnS\@'f6l!%asU5G-*u/s4JeaG`<]ASYh$CR-Y2j`IU%C;9d]AA/8n^[E"Q-To
e8o6lcSZ;`KT*ZE+_b>]AjsX^"6-e=b]AcU"Ip)\&oZf;27ee9H!DDi8^TcpuIps#O*oslqXgr
Xl<P4Qd:I-<_(n03/*nG/:W]A>QB$Uds)l!]A(c1MrXi?Lsqc(VIFB<;cqtJQ30HCnF`D6@<G@
=gDb,srj+R3eeE^k);UsAgDg8!)0[qn?9W0kDotSHZ`L?4g02G)pJ1h.2Z,Qi"_]Af@'U:-('
]A48D/]AsXao+<P2(GcILqIAKZraB/'*HtoB]Ao'1rM,Z7tUVOlgI]A#p]A0Eb6U*W8iD^.E9cd`b
P-]AP'Io]A=ZlU1%-2;Z'5R$+:1/RC@74$`-17o,<XG2Yj4m`?R"5?k%LHp!pm-N/Qp&\ql/2=
Hu%(=NLcNbg*miU<lJJS_8[>$(qZKt52DbtEkr3M[YelmG@*;GGMae]AV8i(`'l<i=W2go::g
+f61tkQC`Kr`*HO#-1aRuW7]A/!^V74H[Ep$jlMj=ku+Wmp!cn#i8H6[ZYSp_DEWg&(Qs@ad(
-c.<c)V*;N.JA3WV[b.WID2lc6dd"_.Rll?p0%AWQd*gs\9#!CCB=s)G0"W9JJsolNBGUuHH
V$O03]Ad";_h>j=bU\=nc6n2/5IUefEQQ(3J%+I<4&tA0ioQt#G.V*najZ]Au\OC'(/e0^t4)]A
pI26;kX&bJi'J%jngYH"L5Q1[PD=IEhMH,Rn%6<As#X]A:NKd(.<-cb:CYD2Ht*TgH0jb=eU/
jR'EQ41Tc6N)Q+*Js(5H,be^;E!CU<#i;*NT@CTQ;SldS-agDjoF2C.C(_dCkH>eQRHK2s;k
5-c4=c.<`XW2d)'n_.bq.FWL4t*_0]AdQe)Aoj!WsF"^__me[!F6"o.1`O?6O5.OB`L0>_`?T
3(4D&(dYE\LG5cg]Ajk<_NDTNi:\uK1P@/OT:Pcs^/7q[s<]AW*o#/t]A&o%Sk$LQKP+L.rmF:?
fV]A5)#WN`:,e/n4<49=78+@;gG]AQf$Yu.i2jh*moU+Be9]An\/i1IS(kA2so<<UdH'=0=gL:r
TQ^d.Hs[hUrZoCQTg1aV5HVZ?Ui%<+E"JO2-%a*c*<9@$i6Ju0\V4&rL,eO#ihOc*4tJu!,c
0/`6S&u30e2dBjPlajh)_Q>-rQeDg9s1Fs)A7p97oHC2#g5%et@aSXn?(E,.S#a0T60GqXHO
"8h`RgA8'A[=h;=UGCfXGj//H*mpBA]ArA?Q:j/F*8$fCDq+gPfK(h'qM4mLD>#g<s\[m/4[/
=fl8D?9S""eq9)3K"(qY4<qSG+3BUOVO"S+D:tCXkOC]A#''L@ER[To6%G`4p3OK+VPgRC>"l
A7mJoRH/)]A2at'fVMfslSW+J726=p4j([/"7"F+n9J?Z3$3u1?l=rSg%C`=Dm2#&7-0(B&2j
nH,$u*i(4gAaj@m?F9b?hkp.*)+hpV[fEDk\_EXAkdmasD]A&/kMH))9e]A"jK&kA\%VO2d:5A
FUWitq!5[/M3ddc+3ee9'jge$?iVL3!QU_E$*!?k[>oa2i4)b@=$mVfPBRh-b2<EpL53sQ-V
B?+DcgkYZ^,ghKEo%$.:RtNV?D9L$kFTO-c`l*)QM!GmlN.U(5.a;TkEe]A*?FQK>gr#2*$_b
TKcm_26Ym8b?+rLq-#XV4$BF>]A"-stKY4se??e50p(f[t&hTt]A$]AC94NJ'#OC40bBlINPCXV
#p>N"2-5D\_P@HdlB;Y>=E0hcacg/2WcsHchbb0.]A")T<%o`*GU*Mq;"V=in16,CDQFo$K\e
=Ph)%!iIT3Dr&L(eK)7]A<lO4tW]AN?b(]A=+pA?^q4+/Yf;F%/TNA"EFE*9AA^aJk]AN@1,KjH?
rI?Ujfm>GP-Z2T2X(Lj8dAs%!]AJ)dfBF5q'>cU]A7r7]AK-P(cc=_KnVRnmW>cSP0p38DSC2Cn
=Yp-V&iccm9GSK_Rl\&6m47_UNQ3:[\s>>fm;\en>rTT13JdlOKC6@I]A0&F'9m?P92\8fL27
&MBq#H1-&6ZHrg8+iRehf`dUR/j2?-^H^^(rFT]A/UZMh$mRiA^21QaZfN?WVtU:lclcL\TA:
Z4]A^p@k51&?*o1:W]AE(rTFb_i0q6%ds.#c6ti?R^_BH%YP4.fK;fh?j5p&LpYiH9\N)V"#?=
<!2gS#7<W<_.GD$F5*P+%ShG;>q0l2G1'"tI5pU-Fl&nS/=g*!WM/"GgYUj\6V\+iB29^G38
+%q:E+k;"BkbscRJac6&r;Df#>8aer+NjumN-CiElVFM&i4'h'`aFt/I)j`6Y[0ZX.jc;2Xf
()T)Vs%M((\X2BJEPPT;1D,W90D#$ktj^TM05EIk3^<qCgl:-<\tUSKa!@l?:8,M?f_Soj]Ai
):MuIu%(Z;L!cnYkiV3[)]A&$3cG.8<=k'&eCk>'S'b3Es,r4(u=dJb3cLLs0cXH9uinaj*Ul
X[9!]AN__bS=MJkPtlnj[I]A'07:XFM)GIXhQOOR.cYZoC8ANb_),),o'PkJA$@ApR&1DfOJ_\
@MgiVHB@Rc`aB`Bfd;"*Q3+Ng@DX?lVubgVrIn[oD%<G=WEHs+;bJXTm#iMrhW]AeaAhFUUr5
"RX_;]AEV#!!FsAmXn;Xn.)'F"X-R.aOc!V,M'Ro"[OT-;8$j_o5-,[^22`G.30)o+7M58f4u
70G4!H?!lQ\M_qn9m<oTu7nr?ic39;>G(&6To8*$tQiO19'WA[(:J!U#UtJ<P_f]AW!?n!Da#
dm@C[Qad'Y`b2>A_Db.VSAdEhO1-j<8+S<P(=7^Uf!F-/$VDWSW5*.d"M8=7cq@ll[G?*)43
50=BDpt2%!@ei:4CK[d#[a>e1eYj@;$:7WBmD^/<#A]Al;Kj[Uikn_!Q8_3k5hAIRJq+AO1K.
:o%lIh>^r[ID2)4%3$(X,s:XTn[o^8QOPiU$aC1D]A\YMB@h:5GVD;,<Zr%2BOdLM-.-%eYuQ
(e2p@CP1aQ+ct6ToA']A0enf)4M'>$H]A1THVSDr.5(mkmtq7\$J(4?8(`90,3>c>^A3ALm)i+
c8\fa.iR<OqD6KT%8g&\g34]AR_9F?9mKdYuBP^K7#^8!"^nS]A>]ACYQhLfW@k+;I=Y>k38"j?
\rD!Yner$1Op[VNIarb;Kgj8!qEN3rp)TiO]AbBbD9fK.EOZL-4!`LhGkp.TUY#<1&A_`i4.?
/1M"hBs0D3P;ZpgQ=k6\&7A5`!#8AeSP<24a4hl7uit`j57VW3P6:)S!J40;iNJ6%\M*o=n8
$[bd&VG(N&DGN*Q6&@UC]A?@5P*JT%/$:Wq(SUq19FMppTq`fYo%[,3<3Pda9'5=I`O.]Au>$%
:.,aCZh&t-iMTXR:N$XUh)bq"RA%*92dA9T#,I1`1Z$>XqC+\(.GNV7&2M7CRP#5CoV:N_oG
scQ<B[JeIK-Kcb0e.U>]At+Z[NpMdcjk0Yp^5X@6\og4n%O%Zo*N_&T@6[CG+RSt1>)C?,M+%
6LuUSC2j+o!:??eNea_A]A$'1Mrmll6X)dmT7]A`Ig2fGe4:J@u!W#1smQs.TN4[pAJ0LN_N6b
d?MTgb4-Ni77S6,;m44f*QeC&+77s\-Mcd*o)BpE"DBQ4h(aki#^[+HZ0M`_*.RC$H,!cp[>
bB[94KGn06iN/kGu.MX&R^0<oU0m_M&r#P[-tgk0rm&,uT_jr\RQOOoaF8p8!USbq+e[iA`R
0)~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="50"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="21" width="375" height="50"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="订单总览-标题"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report3" frozen="false" index="-1" oldWidgetName=""/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0">
<color>
<FineColor color="-723724" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="订单总览-标题"/>
<WidgetID widgetID="469b19a1-c0c5-44ad-a7e4-95ec6a12812e"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false" index="-1" oldWidgetName="订单总览-标题"/>
<PrivilegeControl/>
</WidgetAttr>
<FollowingTheme borderStyle="false"/>
<Margin top="0" left="6" bottom="0" right="6"/>
<Border>
<border style="1" borderRadius="6" type="0" borderStyle="1">
<color>
<FineColor color="-5000269" hor="-1" ver="-1"/>
</color>
</border>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="黑体" style="1" size="128"/>
<Position pos="2"/>
<Background name="ColorBackground">
<color>
<FineColor color="-10243346" hor="-1" ver="-1"/>
</color>
</Background>
<BackgroundOpacity opacity="0.04"/>
<InsetImage padding="4" insetRelativeTextLeft="true" insetRelativeTextRight="false" name="ImageBackground" layout="3">
<FineImage fm="png" imageId="__ImageCache__9BDAD1A694F2AE09931BEB5B979DA1F5">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&RXMhpZ,a0ckg]Ag[)Sh?$H'm#O$mX9@nDg03/<C4dC'hs7\:U
CrUFIA*cmN+n1!@hUKFS0]AXkEO<r!!~
]]></IM>
</FineImage>
</InsetImage>
</WidgetTitle>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
<USE REPEAT="false" PAGE="false" WRITE="false"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[609600,13208000,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O t="XMLable" class="com.fr.general.ImageWithSuffix">
<FineImage fm="png" imageId="__ImageCache__1A6E251559DBF8BE574DAB65A8BDF6E8">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n(7;XMM^W,WiLl!e?N9Vi,%U`LOF#2Y&U/#V[6cIlGV(W&>nk+i
ImHNdjZjqrNmOD-6<PF3Bhc.U(K?0(IYr/CtZoR!GY(=XDE[##A;bQZZ%09`P~
]]></IM>
</FineImage>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[订单总览]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting>
<PaperSize width="24688800" height="43891200"/>
</PaperSetting>
<FollowingTheme background="true"/>
<Background name="ColorBackground">
<color>
<FineColor color="-1" hor="-1" ver="-1"/>
</color>
</Background>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="4">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="simhei" style="1" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<DesensitizationList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@*oR;X#+?\#5Y\@bG<fAgU4#=OUrPAtfU#;i[,Ra"Eg+@FEX6Oc6rG,2%&n)_]A[-WM<mcAX
NlMjomDGGsO_@`s?U>"\N)4Kb+uP"66KY)pYOmpKB,>ci3@GfCM*emruN2OS0bLO*,6HXT8E
0h6E_F:'&/ng%s$pQ+AcJGFm%Z_#@EUNjtX:0:_#8bB&ncbijh;p=t<bfso&(U\\=4JNGF:]A
Zu"2^A\2^4kSaK2>G5-]AcGuun1$5lmb??U]Ac%BhQeV)uX7,gCX)5UbUOL5K9Cp!T.bWTmII6
^pGO$UO(O>#Jij>W-7&`-og"_L)\+(q<%N!1o`<!09@_03VC$H8_p\V1^PdhbO\a`q2c4Bss
if#F*(R""6?+1YUpRsrsfj9<`RK@UV8ZoZ",<XTg\FOY`=VnihHaS]A<_]APGRlH3,B$e^^2gd
Co):8%E(Z-!%H%Z0^e9Mntg-"3h;9KmY=Prr!_M@9?@B)m_qo8N;P)#b^@DL9fpf!3;>6.D=
IkAhj-na<4qI!p:+=bsUPMBY)Zpp$_VOd*L<^,mK\9-f3R`8aksBP<pk\4E[)MqK6H$_Z%mk
gUnUp.5_Z778fB5)N^^Ur[o@*9Rs5_/?LfR'5VsAOnWgJS*Wf]A2n,&,$c&1U,fT;<6)*p6bl
Ag#!pu;qh5e?,^q"-J=h=`8h>/IoD+5#Oo;TbmK/d*I&%\pEDVSXB)7aaRh^]AnT6V7%r@g-6
75j@rs7QnhV.@Z:C)->#^-N-sdD!2*+l+))%!Ud/ZMI8hLMaL?Cl"?-,5\/'FRFPAojG%nMH
.nm(u/iceNb9]Af2>n\,/THf"SuE7Dnum^aq?idH$SZ:TOrH4p=V2C!^464#rh#D>S<U4`8bj
A?0RG")mlR)6pWR3NYQ]Al'g/ZS3FL]A/)^g#R_U7)+6DlSH_t1+ZL9@/N#=BN7$Kpk/-Lh.Vh
/(F7<XZa2Sk&3:Ju"j5C"Ya+#HY]A=3sY)UP=7)seHZJ["UqMi1"8Wt8Ks9p'2I6mUQ6Y*j/7
ZG-u3Fl\T<bCbljl?mI\InHBEoV=)GFZ^XmrfM(lW4'`XkjMB-9iUeVJCAZCb5C(c8d7NY;D
Ou;M.e@1s`Wj(oU"RU/,U9!0VGQ*%GZqTIn(elL6,P9c/4ii2t]A:Q=jVYL\(JMji4r5H`7j/
M@h'?^,I#iKt(Y>jPDem!//5HuF<LQeM$pqDVfrN'%]AX=?"%DusOhRMm\2D0*+'G2g3VKXrM
2H0h\pe2-!W`9>E__U`XK0q-+3Kf"hHpX`4d+u8-ta>cNMYm+8hE2BB'+okkth>>K6k()>l)
O2I.SDNKp@Bo:rj,+M(NjB'BUC0Xok/9?*jJg6-6Pd351;O;rQ_aF\G$X)a9rp0n'TC_)PnZ
V<Q;Ia$E8L%GkjNGXBuk6+$p/i\U5s*[Ji?mu&2Z@`C]AkHTrMptM,_Qa[)0"CnBe8YP'Z)1)
-I/We''WJs>I.+K0CFP%Q9e?Gabbk--W@tR-b0f4!9;eZ[L7hk4AVHD:Q.LbGq"XiPuPpcBQ
%@Uk9CW&HH*nt'R/6r<gfZK.$rAOBQP.bGd&C4kR_fV[Vgd?4R%6c<nBkKh6G4a`qa=q0Tn&
C>N'0MIqoi<6Bc"r%Ca@QqJl"^$*GFuXp-[Qg;EHU-S:^%A+$Kp0;?G3IV9$rAg4l"6%.5%l
[Zjc3iC>M^l+bqZ4L),RY;ecOJS_0q3FjTe4lj67.i*G\K9Bb[WatFpT4(IAJKcul-.unV'r
lS3JJKZF)u.R9Nq^&St\UX6p8[=='OXr_fk12.<?j1m*B+\U;FM4U<=3VV[b8S(gP+l+]Amr7
$,\G^q>&XMnoRm4:D#s3l$?Ch!QU1B;=(,;DD`@h$?CLV1YpbR:ric;ln!"lU$CN@brAsa5V
Vu[Xam1go$<?^Bbao:go+pGZJC5:#iD"Rd*J7:lT_(M'+"a5Jt-9,Ok9BPb.m-1X.-/tQ$TV
WQqra'j1bnj*2;C/!C<`RpFXat)AB\c`m01:VQ(QWQi^T'K%!N3ptc+XeZ'?7!:c%["!!,'6
&.H<gYu4.62U0YTcqkSQukr7H%l*".)G@s8GB:m%%f>6$ehp>%>gnYnalb=T"1W!XB<6J7g$
lI+[bt3VUoUm/[mkch3N5*@'G0\bFS7[.dF+[T'2T)QW_Iu7QXe9SF91(7Ju\C8:_<o_FY6)
!T,Z0'Oi$:g.?.u$Krkp$;p?^s'(/YpCgA%aOLN=nL""Ijp2K/VjhcQMKN-p;d*P4XCTd+J"
@M\M0-9XlL;SI88;B7p&<'Ro$9"6SibrM]A^bgOTZ`-n?=;R:L&;=<8II;C1ZE`'6=Ud9ej4j
EbpBZL<4KP=m"a.Ko+SmhXrlo!3#W?-2*`g+TWMX-oUS`.KlbhB1O?@$<oYea#a'+Jp..#YJ
EHi*IuZ/%I<5*\AA687`r:O<e0k)Z'mVH:79$JDHn0$Zo1#?Y4S,.YB?&7,V,tS)E9qQ(c4"
.OII"\fn++-o&4(4I(K]AVpfppL>:Qm<W+2IEPg#67\aGV0d#8R'JE/6_^W7YVn3d2%jLmO/[
E@^d:qSWYXh&'-&ei,E65EXO'0j;Ac3Ies;;Aot+/Li*Tc^`"rkGouk9i&Y1?I.'%6:_CrV'
nm8SV`ct.Vi._F0^,+V8A[pQ4Y^fFi$gb9qA#^15$P2U/fASDt;,AC;pY//0$0\I(1!+]ABHo
o6iA95V(/_b"I]A\Web#o%6[=n!22V1\>tC0>$PV0LQEWR'88Hpk'IEZmha%;5e&S&]AH]Al)A2
+]AY4r+JCt\WlX&#oIrpC\d?6b7rJ2`qG1&rDH(R1(q";YZN^-I2.ObhI3i]Aj(9#gj>=l[4nq
ZC?S_QHVFk<-ACboOR=@So<--=1P1KYI]AGH:):Dpmk>%F22Io(8d%'>'+Hn<Q`iGuJdj%I;W
=\u6[Z8V#TFNcr7W^eIhJm3oDb:^e[LKW_.TBL!P5edFA2udaUFBW92!eE&.hHmGTo%ReZ#L
7V##34,>43p3U22!K\3!H^'*gq)hQ"OH6;A*_gb8@7APg!0]A_$icqr@#%*%Sn=(W$t$OlCd=
KSqB]A)%Bf0/pq,2:QmW?-O>m8,$,+sj11PF8:JmULq<:BVrHl+GJ6qtJl/Q_0\\=&q;`#dl,
`'=ub]AHd/q_&_VoQ+I'^4SQ0I^2t2G>qX\PPaVOgab5.m!`EsGZn3G>e!ota)760BOBXk0a9
>,bF9U&=LpCdcMS#o_c!Ya>K]AcI67.Cah'NMSi1[d;g/25dkU3pjCaR3q,61h1N[:k-(BFAP
kuP2apT6OBk0lBk%$'P@V*",1I7*c(5;t=tYQ9tS)3dE)PX-1O5oGnQ)3dE)PX-1O5oGnQq&
^hs>;FITl6@NV/`bGp#CebFI)57fQgaMK&O[0r";+$55m.cf&4$F26kDWe&O[0rr.j2R8RJ;
XD#TSW\HDYHB::HeDP@(l.0,mE1Bg&A5=^>4>4uB9VdbFQNk'KW+b07(NW0"~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false" minFontSize="0"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" foldedHint="" unfoldedHint="" defaultState="0">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
</collapseButton>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="375" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="true"/>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="订单总览-标题"/>
<Widget widgetName="订单总览"/>
<Widget widgetName="统计信息-标题"/>
<Widget widgetName="统计信息-1"/>
<Widget widgetName="统计信息-3"/>
<Widget widgetName="统计信息-2"/>
<Widget widgetName="统计信息-4"/>
<Widget widgetName="地区统计-标题"/>
<Widget widgetName="雇员统计-标题"/>
<Widget widgetName="地区统计"/>
<Widget widgetName="雇员统计"/>
</MobileWidgetList>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<WidgetZoomAttr compState="1" scaleAttr="2"/>
<AppRelayout appRelayout="false"/>
<Size width="375" height="560"/>
<BodyLayoutType type="0"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="LAA"/>
<PreviewType PreviewType="4"/>
<TemplateThemeAttrMark class="com.fr.base.iofile.attr.TemplateThemeAttrMark">
<TemplateThemeAttrMark name="经典稳重" dark="false"/>
</TemplateThemeAttrMark>
<WatermarkAttr class="com.fr.base.iofile.attr.WatermarkAttr">
<WatermarkAttr fontSize="20" horizontalGap="200" verticalGap="100" valid="false">
<color>
<FineColor color="-6710887" hor="-1" ver="-1"/>
</color>
<Text>
<![CDATA[]]></Text>
</WatermarkAttr>
</WatermarkAttr>
<TemplateLayoutIdAttrMark class="com.fr.base.iofile.attr.TemplateLayoutIdAttrMark">
<TemplateLayoutIdAttrMark LayoutId="9ebf6aff-ad53-45a9-a175-9633f4162a3a"/>
</TemplateLayoutIdAttrMark>
<MobileOnlyTemplateAttrMark class="com.fr.base.iofile.attr.MobileOnlyTemplateAttrMark"/>
<StrategyConfigsAttr class="com.fr.esd.core.strategy.persistence.StrategyConfigsAttr">
<StrategyConfigs>
<StrategyConfig dsName="表格1" enabled="false" useGlobal="true" shouldMonitor="true" shouldEvolve="false" scheduleBySchema="false" timeToLive="1500000" timeToIdle="86400000" updateInterval="1500000" terminalTime="" updateSchema="0 0 8 * * ? *" activeInitiation="false"/>
<StrategyConfig dsName="表格2" enabled="false" useGlobal="true" shouldMonitor="true" shouldEvolve="false" scheduleBySchema="false" timeToLive="1500000" timeToIdle="86400000" updateInterval="1500000" terminalTime="" updateSchema="0 0 8 * * ? *" activeInitiation="false"/>
<StrategyConfig dsName="表格3" enabled="false" useGlobal="true" shouldMonitor="true" shouldEvolve="false" scheduleBySchema="false" timeToLive="1500000" timeToIdle="86400000" updateInterval="1500000" terminalTime="" updateSchema="0 0 8 * * ? *" activeInitiation="false"/>
<StrategyConfig dsName="ds1" enabled="false" useGlobal="true" shouldMonitor="true" shouldEvolve="false" scheduleBySchema="false" timeToLive="1500000" timeToIdle="86400000" updateInterval="1500000" terminalTime="" updateSchema="0 0 8 * * ? *" activeInitiation="false"/>
<StrategyConfig dsName="表格4" enabled="false" useGlobal="true" shouldMonitor="true" shouldEvolve="false" scheduleBySchema="false" timeToLive="1500000" timeToIdle="86400000" updateInterval="1500000" terminalTime="" updateSchema="0 0 8 * * ? *" activeInitiation="false"/>
</StrategyConfigs>
</StrategyConfigsAttr>
<NewFormMarkAttr class="com.fr.form.fit.NewFormMarkAttr">
<NewFormMarkAttr type="1" tabPreload="true" fontScaleFrontAdjust="true" supportColRowAutoAdjust="true" supportExportTransparency="false"/>
</NewFormMarkAttr>
<TemplateCloudInfoAttrMark class="com.fr.plugin.cloud.analytics.attr.TemplateInfoAttrMark" pluginID="com.fr.plugin.cloud.analytics.v11" plugin-version="3.14.0.20230310">
<TemplateCloudInfoAttrMark createTime="1679561515887"/>
</TemplateCloudInfoAttrMark>
<TemplateIdAttMark class="com.fr.base.iofile.attr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="ebc28e7d-c846-4952-b3b1-0a9b5c0b4110"/>
</TemplateIdAttMark>
</Form>
