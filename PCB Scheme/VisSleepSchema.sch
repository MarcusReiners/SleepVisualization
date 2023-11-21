<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="tft">
<packages>
<package name="2.8_LCD">
<pad name="1" x="8.49" y="2" drill="0.9" shape="square"/>
<pad name="2" x="11.03" y="2" drill="0.9" shape="octagon"/>
<pad name="3" x="13.57" y="2" drill="0.9" shape="octagon"/>
<pad name="4" x="16.11" y="2" drill="0.9" shape="octagon"/>
<pad name="5" x="18.65" y="2" drill="0.9" shape="octagon"/>
<pad name="6" x="21.19" y="2" drill="0.9" shape="octagon"/>
<pad name="7" x="23.73" y="2" drill="0.9" shape="octagon"/>
<pad name="8" x="26.27" y="2" drill="0.9" shape="octagon"/>
<pad name="9" x="28.81" y="2" drill="0.9" shape="octagon"/>
<pad name="10" x="31.35" y="2" drill="0.9" shape="octagon"/>
<pad name="11" x="33.89" y="2" drill="0.9" shape="octagon"/>
<pad name="12" x="36.43" y="2" drill="0.9" shape="octagon"/>
<pad name="13" x="38.97" y="2" drill="0.9" shape="octagon"/>
<pad name="14" x="41.51" y="2" drill="0.9" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="TFT">
<wire x1="25.4" y1="20.32" x2="25.4" y2="-20.32" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="25.4" y2="20.32" width="0.254" layer="94"/>
<pin name="+3.3V" x="30.48" y="17.78" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="30.48" y="-17.78" length="middle" direction="pas" rot="R180"/>
<pin name="TFT_CS" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="TFT_RESET" x="-15.24" y="15.24" length="middle" direction="in"/>
<pin name="TFT_DC" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="TFT_MOSI" x="-15.24" y="10.16" length="middle" direction="in"/>
<pin name="TFT_SCK" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="TFT_LED" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="TFT_MISO" x="30.48" y="12.7" length="middle" direction="hiz" rot="R180"/>
<pin name="TOUCH_CLK" x="-15.24" y="-7.62" length="middle" direction="in"/>
<pin name="TOUCH_CS" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="TOUCH_DIN" x="-15.24" y="-5.08" length="middle" direction="in"/>
<pin name="TOUCH_DOUT" x="30.48" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="TOUCH_IRQ" x="30.48" y="-7.62" length="middle" direction="oc" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TFT" prefix="A">
<gates>
<gate name="G$1" symbol="TFT" x="2.54" y="-20.32"/>
</gates>
<devices>
<device name="" package="2.8_LCD">
<connects>
<connect gate="G$1" pin="+3.3V" pad="1"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="TFT_CS" pad="3"/>
<connect gate="G$1" pin="TFT_DC" pad="5"/>
<connect gate="G$1" pin="TFT_LED" pad="8"/>
<connect gate="G$1" pin="TFT_MISO" pad="9"/>
<connect gate="G$1" pin="TFT_MOSI" pad="6"/>
<connect gate="G$1" pin="TFT_RESET" pad="4"/>
<connect gate="G$1" pin="TFT_SCK" pad="7"/>
<connect gate="G$1" pin="TOUCH_CLK" pad="10"/>
<connect gate="G$1" pin="TOUCH_CS" pad="11"/>
<connect gate="G$1" pin="TOUCH_DIN" pad="12"/>
<connect gate="G$1" pin="TOUCH_DOUT" pad="13"/>
<connect gate="G$1" pin="TOUCH_IRQ" pad="14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32-DEVKIT-V1">
<packages>
<package name="MODULE_ESP32_DEVKIT_V1">
<wire x1="-14.28" y1="25.475" x2="-3.211" y2="25.475" width="0.127" layer="51"/>
<wire x1="-3.211" y1="25.475" x2="3.5" y2="25.475" width="0.127" layer="51"/>
<wire x1="3.5" y1="25.475" x2="14.23" y2="25.475" width="0.127" layer="51"/>
<wire x1="14.23" y1="25.475" x2="14.23" y2="-25.475" width="0.127" layer="21"/>
<wire x1="14.23" y1="-25.475" x2="-14.28" y2="-25.475" width="0.127" layer="21"/>
<wire x1="-14.28" y1="-25.475" x2="-14.28" y2="25.475" width="0.127" layer="51"/>
<wire x1="-14.28" y1="25.475" x2="14.23" y2="25.475" width="0.127" layer="21"/>
<wire x1="-14.28" y1="-25.475" x2="-14.28" y2="25.475" width="0.127" layer="21"/>
<circle x="-14.85" y="15.515" radius="0.1" width="0.2" layer="21"/>
<circle x="-14.85" y="15.515" radius="0.1" width="0.2" layer="51"/>
<wire x1="14.23" y1="25.475" x2="14.23" y2="-25.475" width="0.127" layer="51"/>
<wire x1="-14.28" y1="-25.475" x2="-8.91" y2="-25.475" width="0.127" layer="51"/>
<wire x1="-8.91" y1="-25.475" x2="8.78" y2="-25.475" width="0.127" layer="51"/>
<wire x1="8.78" y1="-25.475" x2="14.23" y2="-25.475" width="0.127" layer="51"/>
<wire x1="3.5" y1="25.475" x2="3.5" y2="21.585" width="0.127" layer="51"/>
<wire x1="3.5" y1="21.585" x2="-3.211" y2="21.585" width="0.127" layer="51"/>
<wire x1="-3.211" y1="21.585" x2="-3.211" y2="25.475" width="0.127" layer="51"/>
<wire x1="-14.28" y1="25.475" x2="-3.211" y2="25.475" width="0.127" layer="21"/>
<wire x1="-3.211" y1="25.475" x2="3.5" y2="25.475" width="0.127" layer="21"/>
<wire x1="3.5" y1="25.475" x2="14.23" y2="25.475" width="0.127" layer="21"/>
<wire x1="-14.28" y1="-25.475" x2="-14.28" y2="25.475" width="0.127" layer="21"/>
<wire x1="14.23" y1="25.475" x2="14.23" y2="-25.475" width="0.127" layer="21"/>
<wire x1="-14.28" y1="-25.475" x2="-8.91" y2="-25.475" width="0.127" layer="21"/>
<wire x1="-8.91" y1="-25.475" x2="8.78" y2="-25.475" width="0.127" layer="21"/>
<wire x1="8.78" y1="-25.475" x2="14.23" y2="-25.475" width="0.127" layer="21"/>
<wire x1="-14.53" y1="25.725" x2="-14.53" y2="-25.725" width="0.05" layer="39"/>
<wire x1="-14.53" y1="-25.725" x2="14.48" y2="-25.725" width="0.05" layer="39"/>
<wire x1="14.48" y1="-25.725" x2="14.48" y2="25.725" width="0.05" layer="39"/>
<wire x1="14.48" y1="25.725" x2="-14.53" y2="25.725" width="0.05" layer="39"/>
<text x="-14.53" y="26.725" size="1.27" layer="25">&gt;NAME</text>
<text x="-14.53" y="-26.725" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<pad name="1" x="-12.7" y="15.515" drill="1.02" diameter="2" shape="square"/>
<pad name="2" x="-12.7" y="12.975" drill="1.02" diameter="2"/>
<pad name="3" x="-12.7" y="10.435" drill="1.02" diameter="2"/>
<pad name="4" x="-12.7" y="7.895" drill="1.02" diameter="2"/>
<pad name="5" x="-12.7" y="5.355" drill="1.02" diameter="2"/>
<pad name="6" x="-12.7" y="2.815" drill="1.02" diameter="2"/>
<pad name="7" x="-12.7" y="0.275" drill="1.02" diameter="2"/>
<pad name="8" x="-12.7" y="-2.265" drill="1.02" diameter="2"/>
<pad name="9" x="-12.7" y="-4.805" drill="1.02" diameter="2"/>
<pad name="10" x="-12.7" y="-7.345" drill="1.02" diameter="2"/>
<pad name="11" x="-12.7" y="-9.885" drill="1.02" diameter="2"/>
<pad name="12" x="-12.7" y="-12.425" drill="1.02" diameter="2"/>
<pad name="13" x="-12.7" y="-14.965" drill="1.02" diameter="2"/>
<pad name="14" x="-12.7" y="-17.505" drill="1.02" diameter="2"/>
<pad name="15" x="-12.7" y="-20.045" drill="1.02" diameter="2"/>
<pad name="30" x="12.7" y="15.515" drill="1.02" diameter="2"/>
<pad name="29" x="12.7" y="12.975" drill="1.02" diameter="2"/>
<pad name="28" x="12.7" y="10.435" drill="1.02" diameter="2"/>
<pad name="27" x="12.7" y="7.895" drill="1.02" diameter="2"/>
<pad name="26" x="12.7" y="5.355" drill="1.02" diameter="2"/>
<pad name="25" x="12.7" y="2.815" drill="1.02" diameter="2"/>
<pad name="24" x="12.7" y="0.275" drill="1.02" diameter="2"/>
<pad name="23" x="12.7" y="-2.265" drill="1.02" diameter="2"/>
<pad name="22" x="12.7" y="-4.805" drill="1.02" diameter="2"/>
<pad name="21" x="12.7" y="-7.345" drill="1.02" diameter="2"/>
<pad name="20" x="12.7" y="-9.885" drill="1.02" diameter="2"/>
<pad name="19" x="12.7" y="-12.425" drill="1.02" diameter="2"/>
<pad name="18" x="12.7" y="-14.965" drill="1.02" diameter="2"/>
<pad name="17" x="12.7" y="-17.505" drill="1.02" diameter="2"/>
<pad name="16" x="12.7" y="-20.045" drill="1.02" diameter="2"/>
<hole x="-12.28" y="-23.475" drill="3"/>
<hole x="12.23" y="-23.475" drill="3"/>
<hole x="12.23" y="23.475" drill="3"/>
<hole x="-12.28" y="23.475" drill="3"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-DEVKIT-V1">
<wire x1="10.16" y1="27.94" x2="10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="10.16" y1="-27.94" x2="-10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-27.94" x2="-10.16" y2="27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="27.94" x2="10.16" y2="27.94" width="0.254" layer="94"/>
<text x="-10.16" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-10.16" y="30.48" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<pin name="EN" x="-15.24" y="22.86" length="middle" direction="in"/>
<pin name="VP" x="-15.24" y="17.78" length="middle"/>
<pin name="VN" x="-15.24" y="15.24" length="middle"/>
<pin name="D34" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="D35" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="D32" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="D33" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="D25" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="D26" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="D27" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="D14" x="-15.24" y="-10.16" length="middle"/>
<pin name="D12" x="-15.24" y="-5.08" length="middle"/>
<pin name="D13" x="-15.24" y="-7.62" length="middle"/>
<pin name="GND" x="15.24" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="-15.24" y="25.4" length="middle" direction="in"/>
<pin name="D23" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="D22" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="TX0" x="15.24" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="RX0" x="15.24" y="17.78" length="middle" direction="in" rot="R180"/>
<pin name="D21" x="-15.24" y="-20.32" length="middle"/>
<pin name="D19" x="-15.24" y="-17.78" length="middle"/>
<pin name="D18" x="-15.24" y="-15.24" length="middle"/>
<pin name="D5" x="-15.24" y="-2.54" length="middle"/>
<pin name="TX2" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="RX2" x="15.24" y="10.16" length="middle" direction="in" rot="R180"/>
<pin name="D4" x="-15.24" y="0" length="middle"/>
<pin name="D2" x="-15.24" y="2.54" length="middle"/>
<pin name="D15" x="-15.24" y="-12.7" length="middle"/>
<pin name="3V3" x="15.24" y="25.4" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-DEVKIT-V1" prefix="U">
<description>Dual core, Wi-Fi: 2.4 GHz up to 150 Mbits/s,BLE (Bluetooth Low Energy) and legacy Bluetooth, 32 bits, Up to 240 MHz    &lt;a href="https://pricing.snapeda.com/parts/ESP32-DEVKIT-V1/Do%20it/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ESP32-DEVKIT-V1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ESP32_DEVKIT_V1">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="D12" pad="27"/>
<connect gate="G$1" pin="D13" pad="28"/>
<connect gate="G$1" pin="D14" pad="26"/>
<connect gate="G$1" pin="D15" pad="3"/>
<connect gate="G$1" pin="D18" pad="9"/>
<connect gate="G$1" pin="D19" pad="10"/>
<connect gate="G$1" pin="D2" pad="4"/>
<connect gate="G$1" pin="D21" pad="11"/>
<connect gate="G$1" pin="D22" pad="14"/>
<connect gate="G$1" pin="D23" pad="15"/>
<connect gate="G$1" pin="D25" pad="23"/>
<connect gate="G$1" pin="D26" pad="24"/>
<connect gate="G$1" pin="D27" pad="25"/>
<connect gate="G$1" pin="D32" pad="21"/>
<connect gate="G$1" pin="D33" pad="22"/>
<connect gate="G$1" pin="D34" pad="19"/>
<connect gate="G$1" pin="D35" pad="20"/>
<connect gate="G$1" pin="D4" pad="5"/>
<connect gate="G$1" pin="D5" pad="8"/>
<connect gate="G$1" pin="EN" pad="16"/>
<connect gate="G$1" pin="GND" pad="2 29"/>
<connect gate="G$1" pin="RX0" pad="12"/>
<connect gate="G$1" pin="RX2" pad="6"/>
<connect gate="G$1" pin="TX0" pad="13"/>
<connect gate="G$1" pin="TX2" pad="7"/>
<connect gate="G$1" pin="VIN" pad="30"/>
<connect gate="G$1" pin="VN" pad="18"/>
<connect gate="G$1" pin="VP" pad="17"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/ESP32-DEVKIT-V1/Do+it/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" Dual core, Wi-Fi: 2.4 GHz up to 150 Mbits/s,BLE (Bluetooth Low Energy) and legacy Bluetooth, 32 bits, Up to 240 MHz "/>
<attribute name="MF" value="Do it"/>
<attribute name="MP" value="ESP32-DEVKIT-V1"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/ESP32-DEVKIT-V1/Do+it/view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="solpad" urn="urn:adsk.eagle:library:364">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LSP10" urn="urn:adsk.eagle:footprint:26494/1" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.0 mm</description>
<wire x1="-1.27" y1="0.254" x2="-1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.254" x2="-1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.254" x2="0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="-0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.27" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.254" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LSP10" urn="urn:adsk.eagle:package:26501/1" type="box" library_version="2">
<description>SOLDER PAD
drill 1.0 mm</description>
<packageinstances>
<packageinstance name="LSP10"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LSP" urn="urn:adsk.eagle:symbol:26492/1" library_version="2">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LSP10" urn="urn:adsk.eagle:component:26508/2" prefix="LSP" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; drill 1.0 mm, distributor Buerklin, 12H555</description>
<gates>
<gate name="1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LSP10">
<connects>
<connect gate="1" pin="MP" pad="MP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26501/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="52" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="A1" library="tft" deviceset="TFT" device=""/>
<part name="A2" library="tft" deviceset="TFT" device=""/>
<part name="A3" library="tft" deviceset="TFT" device=""/>
<part name="A4" library="tft" deviceset="TFT" device=""/>
<part name="U1" library="ESP32-DEVKIT-V1" deviceset="ESP32-DEVKIT-V1" device=""/>
<part name="G" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="B" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="R" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="A1" gate="G$1" x="-17.78" y="-63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="-84.328" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-7.62" y="-40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="A2" gate="G$1" x="-17.78" y="-12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="-33.528" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-7.62" y="10.16" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="A3" gate="G$1" x="-17.78" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="17.272" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-7.62" y="60.96" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="A4" gate="G$1" x="-17.78" y="88.9" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="68.072" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-7.62" y="111.76" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U1" gate="G$1" x="66.04" y="-58.42" smashed="yes">
<attribute name="VALUE" x="55.88" y="-88.9" size="1.778" layer="96"/>
<attribute name="NAME" x="55.88" y="-27.94" size="1.778" layer="95" align="top-left"/>
</instance>
<instance part="G" gate="1" x="22.86" y="-127" smashed="yes" rot="R180">
<attribute name="NAME" x="24.13" y="-129.921" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="B" gate="1" x="35.56" y="-127" smashed="yes" rot="R180">
<attribute name="NAME" x="36.83" y="-129.921" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="GND" gate="1" x="48.26" y="-127" smashed="yes" rot="R180">
<attribute name="NAME" x="49.53" y="-129.921" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="R" gate="1" x="66.04" y="-127" smashed="yes" rot="R180">
<attribute name="NAME" x="67.31" y="-129.921" size="1.778" layer="95" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="+3.3V"/>
<wire x1="-48.26" y1="-81.28" x2="-53.34" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-81.28" x2="-53.34" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-101.6" x2="93.98" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-101.6" x2="93.98" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="3V3"/>
<wire x1="93.98" y1="-33.02" x2="81.28" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="+3.3V"/>
<wire x1="-48.26" y1="-30.48" x2="-53.34" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-30.48" x2="-53.34" y2="-81.28" width="0.1524" layer="91"/>
<junction x="-53.34" y="-81.28"/>
<pinref part="A3" gate="G$1" pin="+3.3V"/>
<wire x1="-48.26" y1="20.32" x2="-53.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="20.32" x2="-53.34" y2="-30.48" width="0.1524" layer="91"/>
<junction x="-53.34" y="-30.48"/>
<pinref part="A4" gate="G$1" pin="+3.3V"/>
<wire x1="-48.26" y1="71.12" x2="-53.34" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="71.12" x2="-53.34" y2="20.32" width="0.1524" layer="91"/>
<junction x="-53.34" y="20.32"/>
<pinref part="A1" gate="G$1" pin="TFT_LED"/>
<wire x1="-2.54" y1="-66.04" x2="40.64" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-66.04" x2="40.64" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-17.78" x2="93.98" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-17.78" x2="93.98" y2="-33.02" width="0.1524" layer="91"/>
<junction x="93.98" y="-33.02"/>
<pinref part="A2" gate="G$1" pin="TFT_LED"/>
<wire x1="-2.54" y1="-15.24" x2="40.64" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-15.24" x2="40.64" y2="-17.78" width="0.1524" layer="91"/>
<junction x="40.64" y="-17.78"/>
<pinref part="A3" gate="G$1" pin="TFT_LED"/>
<wire x1="-2.54" y1="35.56" x2="40.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="40.64" y1="35.56" x2="40.64" y2="-15.24" width="0.1524" layer="91"/>
<junction x="40.64" y="-15.24"/>
<pinref part="A4" gate="G$1" pin="TFT_LED"/>
<wire x1="-2.54" y1="86.36" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
<wire x1="40.64" y1="86.36" x2="40.64" y2="35.56" width="0.1524" layer="91"/>
<junction x="40.64" y="35.56"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="GND"/>
<wire x1="-48.26" y1="-45.72" x2="-50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-45.72" x2="-50.8" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-99.06" x2="91.44" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-99.06" x2="91.44" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="91.44" y1="-83.82" x2="81.28" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="GND"/>
<wire x1="-48.26" y1="5.08" x2="-50.8" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="5.08" x2="-50.8" y2="-45.72" width="0.1524" layer="91"/>
<junction x="-50.8" y="-45.72"/>
<pinref part="A3" gate="G$1" pin="GND"/>
<wire x1="-48.26" y1="55.88" x2="-50.8" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="55.88" x2="-50.8" y2="5.08" width="0.1524" layer="91"/>
<junction x="-50.8" y="5.08"/>
<pinref part="A4" gate="G$1" pin="GND"/>
<wire x1="-48.26" y1="106.68" x2="-50.8" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="106.68" x2="-50.8" y2="55.88" width="0.1524" layer="91"/>
<junction x="-50.8" y="55.88"/>
<wire x1="81.28" y1="-83.82" x2="81.28" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-106.68" x2="48.26" y2="-106.68" width="0.1524" layer="91"/>
<junction x="81.28" y="-83.82"/>
<pinref part="GND" gate="1" pin="MP"/>
<wire x1="48.26" y1="-106.68" x2="48.26" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="TFT_CS"/>
<wire x1="-2.54" y1="-76.2" x2="22.86" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-76.2" x2="22.86" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="D15"/>
<wire x1="22.86" y1="-71.12" x2="50.8" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="TFT_CS"/>
<wire x1="-2.54" y1="-25.4" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-25.4" x2="22.86" y2="-71.12" width="0.1524" layer="91"/>
<junction x="22.86" y="-71.12"/>
<pinref part="A3" gate="G$1" pin="TFT_CS"/>
<wire x1="-2.54" y1="25.4" x2="22.86" y2="25.4" width="0.1524" layer="91"/>
<wire x1="22.86" y1="25.4" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<junction x="22.86" y="-25.4"/>
<pinref part="A4" gate="G$1" pin="TFT_CS"/>
<wire x1="-2.54" y1="76.2" x2="22.86" y2="76.2" width="0.1524" layer="91"/>
<wire x1="22.86" y1="76.2" x2="22.86" y2="25.4" width="0.1524" layer="91"/>
<junction x="22.86" y="25.4"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="TFT_RESET"/>
<wire x1="-2.54" y1="-78.74" x2="43.18" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-78.74" x2="43.18" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="D4"/>
<wire x1="43.18" y1="-58.42" x2="50.8" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="TFT_RESET"/>
<wire x1="-2.54" y1="-27.94" x2="43.18" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-27.94" x2="43.18" y2="-58.42" width="0.1524" layer="91"/>
<junction x="43.18" y="-58.42"/>
<pinref part="A3" gate="G$1" pin="TFT_RESET"/>
<wire x1="-2.54" y1="22.86" x2="43.18" y2="22.86" width="0.1524" layer="91"/>
<wire x1="43.18" y1="22.86" x2="43.18" y2="-27.94" width="0.1524" layer="91"/>
<junction x="43.18" y="-27.94"/>
<pinref part="A4" gate="G$1" pin="TFT_RESET"/>
<wire x1="-2.54" y1="73.66" x2="43.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="43.18" y1="73.66" x2="43.18" y2="22.86" width="0.1524" layer="91"/>
<junction x="43.18" y="22.86"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="TFT_DC"/>
<wire x1="-2.54" y1="-68.58" x2="38.1" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-68.58" x2="38.1" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="D2"/>
<wire x1="38.1" y1="-55.88" x2="50.8" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="TFT_DC"/>
<wire x1="-2.54" y1="-17.78" x2="38.1" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-17.78" x2="38.1" y2="-55.88" width="0.1524" layer="91"/>
<junction x="38.1" y="-55.88"/>
<pinref part="A3" gate="G$1" pin="TFT_DC"/>
<wire x1="-2.54" y1="33.02" x2="38.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="38.1" y1="33.02" x2="38.1" y2="-17.78" width="0.1524" layer="91"/>
<junction x="38.1" y="-17.78"/>
<pinref part="A4" gate="G$1" pin="TFT_DC"/>
<wire x1="-2.54" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<wire x1="38.1" y1="83.82" x2="38.1" y2="33.02" width="0.1524" layer="91"/>
<junction x="38.1" y="33.02"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="TFT_MOSI"/>
<wire x1="-2.54" y1="-22.86" x2="30.48" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-22.86" x2="30.48" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="D18"/>
<wire x1="30.48" y1="-73.66" x2="50.8" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="A1" gate="G$1" pin="TFT_MOSI"/>
<wire x1="-2.54" y1="-73.66" x2="30.48" y2="-73.66" width="0.1524" layer="91"/>
<junction x="30.48" y="-73.66"/>
<pinref part="A3" gate="G$1" pin="TFT_MOSI"/>
<wire x1="-2.54" y1="27.94" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="27.94" x2="30.48" y2="-22.86" width="0.1524" layer="91"/>
<junction x="30.48" y="-22.86"/>
<pinref part="A4" gate="G$1" pin="TFT_MOSI"/>
<wire x1="-2.54" y1="78.74" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="30.48" y1="78.74" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
<junction x="30.48" y="27.94"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="TFT_SCK"/>
<wire x1="-2.54" y1="-71.12" x2="20.32" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-71.12" x2="20.32" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-96.52" x2="88.9" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-96.52" x2="88.9" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="TFT_SCK"/>
<wire x1="-2.54" y1="-20.32" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-20.32" x2="20.32" y2="-71.12" width="0.1524" layer="91"/>
<junction x="20.32" y="-71.12"/>
<pinref part="A3" gate="G$1" pin="TFT_SCK"/>
<wire x1="-2.54" y1="30.48" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="20.32" y1="30.48" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
<junction x="20.32" y="-20.32"/>
<pinref part="A4" gate="G$1" pin="TFT_SCK"/>
<wire x1="-2.54" y1="81.28" x2="20.32" y2="81.28" width="0.1524" layer="91"/>
<wire x1="20.32" y1="81.28" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<junction x="20.32" y="30.48"/>
<pinref part="U1" gate="G$1" pin="D23"/>
<wire x1="88.9" y1="-58.42" x2="81.28" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D13"/>
<wire x1="50.8" y1="-66.04" x2="45.72" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-66.04" x2="45.72" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-104.14" x2="35.56" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-104.14" x2="35.56" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="B" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D14"/>
<wire x1="50.8" y1="-68.58" x2="48.26" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-68.58" x2="48.26" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-104.14" x2="66.04" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="R" gate="1" pin="MP"/>
<wire x1="66.04" y1="-104.14" x2="66.04" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D12"/>
<wire x1="50.8" y1="-63.5" x2="43.18" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-63.5" x2="43.18" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-93.98" x2="22.86" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-93.98" x2="22.86" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="G" gate="1" pin="MP"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
