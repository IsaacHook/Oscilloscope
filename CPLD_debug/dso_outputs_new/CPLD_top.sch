<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RAM_READ_OUT" />
        <signal name="CLEAR_COUNT" />
        <signal name="ENABLE_COUNT" />
        <signal name="FILL_COMPLETE" />
        <signal name="INMUX1" />
        <signal name="INMUX2" />
        <signal name="SLOW_CLK" />
        <signal name="COUNTER_CLK" />
        <signal name="ENABLE" />
        <signal name="XLXN_103" />
        <signal name="FAST_CLK" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="RAM_READ_IN" />
        <signal name="ADC_CLK" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <port polarity="Output" name="RAM_READ_OUT" />
        <port polarity="Output" name="CLEAR_COUNT" />
        <port polarity="Output" name="ENABLE_COUNT" />
        <port polarity="Output" name="FILL_COMPLETE" />
        <port polarity="Input" name="SLOW_CLK" />
        <port polarity="Output" name="COUNTER_CLK" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="FAST_CLK" />
        <port polarity="Input" name="RAM_READ_IN" />
        <port polarity="Output" name="ADC_CLK" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="ENABLE" name="I1" />
            <blockpin signalname="CLEAR_COUNT" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="FILL_COMPLETE" name="I1" />
            <blockpin signalname="ENABLE_COUNT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_103" name="I" />
            <blockpin signalname="RAM_READ_OUT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="ENABLE" name="I" />
            <blockpin signalname="FILL_COMPLETE" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_OUT" name="I1" />
            <blockpin signalname="INMUX1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_48">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="SLOW_CLK" name="I1" />
            <blockpin signalname="INMUX2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="INMUX2" name="I0" />
            <blockpin signalname="INMUX1" name="I1" />
            <blockpin signalname="COUNTER_CLK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_67">
            <blockpin signalname="XLXN_103" name="G" />
        </block>
        <block symbolname="or2" name="XLXI_81">
            <blockpin signalname="XLXN_125" name="I0" />
            <blockpin signalname="RAM_READ_IN" name="I1" />
            <blockpin signalname="XLXN_120" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_82">
            <blockpin signalname="XLXN_126" name="I0" />
            <blockpin signalname="XLXN_120" name="I1" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_83">
            <blockpin signalname="XLXN_121" name="I" />
            <blockpin signalname="XLXN_122" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_84">
            <blockpin signalname="XLXN_122" name="I" />
            <blockpin signalname="ADC_CLK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_85">
            <blockpin signalname="XLXN_125" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_86">
            <blockpin signalname="XLXN_126" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3472" y="1520" name="XLXI_1" orien="R0" />
        <instance x="3472" y="1744" name="XLXI_2" orien="R0" />
        <instance x="3488" y="1888" name="XLXI_7" orien="R0" />
        <branch name="RAM_READ_OUT">
            <wire x2="3824" y1="2032" y2="2032" x1="3120" />
            <wire x2="3120" y1="2032" y2="2192" x1="3120" />
            <wire x2="3200" y1="2192" y2="2192" x1="3120" />
            <wire x2="3824" y1="1856" y2="1856" x1="3712" />
            <wire x2="4272" y1="1856" y2="1856" x1="3824" />
            <wire x2="3824" y1="1856" y2="2032" x1="3824" />
        </branch>
        <branch name="CLEAR_COUNT">
            <wire x2="3760" y1="1424" y2="1424" x1="3728" />
        </branch>
        <branch name="ENABLE_COUNT">
            <wire x2="3760" y1="1648" y2="1648" x1="3728" />
        </branch>
        <branch name="FILL_COMPLETE">
            <wire x2="3328" y1="1120" y2="1120" x1="3184" />
            <wire x2="3600" y1="1120" y2="1120" x1="3328" />
            <wire x2="3328" y1="1120" y2="1616" x1="3328" />
            <wire x2="3472" y1="1616" y2="1616" x1="3328" />
        </branch>
        <instance x="3200" y="2320" name="XLXI_47" orien="R0" />
        <instance x="3200" y="2528" name="XLXI_48" orien="R0" />
        <instance x="3712" y="2432" name="XLXI_49" orien="R0" />
        <branch name="INMUX1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="2304" type="branch" />
            <wire x2="3472" y1="2224" y2="2224" x1="3456" />
            <wire x2="3472" y1="2224" y2="2304" x1="3472" />
            <wire x2="3600" y1="2304" y2="2304" x1="3472" />
            <wire x2="3712" y1="2304" y2="2304" x1="3600" />
        </branch>
        <branch name="INMUX2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="2368" type="branch" />
            <wire x2="3472" y1="2432" y2="2432" x1="3456" />
            <wire x2="3472" y1="2368" y2="2432" x1="3472" />
            <wire x2="3600" y1="2368" y2="2368" x1="3472" />
            <wire x2="3712" y1="2368" y2="2368" x1="3600" />
        </branch>
        <branch name="SLOW_CLK">
            <wire x2="3200" y1="2400" y2="2400" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="4272" y="1856" name="RAM_READ_OUT" orien="R0" />
        <iomarker fontsize="28" x="3760" y="1424" name="CLEAR_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3760" y="1648" name="ENABLE_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3600" y="1120" name="FILL_COMPLETE" orien="R0" />
        <iomarker fontsize="28" x="2640" y="2864" name="FAST_CLK" orien="R180" />
        <iomarker fontsize="28" x="2656" y="2400" name="SLOW_CLK" orien="R180" />
        <text style="fontsize:52;fontname:Arial" x="356" y="308">UoM ELEN90053 DSO CPDL Design</text>
        <instance x="2960" y="1152" name="XLXI_46" orien="R0" />
        <branch name="COUNTER_CLK">
            <wire x2="4128" y1="2336" y2="2336" x1="3968" />
        </branch>
        <iomarker fontsize="28" x="4128" y="2336" name="COUNTER_CLK" orien="R0" />
        <branch name="ENABLE">
            <wire x2="2896" y1="1392" y2="1392" x1="2048" />
            <wire x2="3472" y1="1392" y2="1392" x1="2896" />
            <wire x2="2960" y1="1120" y2="1120" x1="2896" />
            <wire x2="2896" y1="1120" y2="1392" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1392" name="ENABLE" orien="R180" />
        <instance x="3392" y="1984" name="XLXI_67" orien="R0" />
        <branch name="XLXN_103">
            <wire x2="3200" y1="1840" y2="1840" x1="3184" />
            <wire x2="3456" y1="1840" y2="1840" x1="3200" />
            <wire x2="3456" y1="1840" y2="1856" x1="3456" />
            <wire x2="3488" y1="1856" y2="1856" x1="3456" />
            <wire x2="3184" y1="1840" y2="2464" x1="3184" />
            <wire x2="3200" y1="2464" y2="2464" x1="3184" />
            <wire x2="3472" y1="1456" y2="1456" x1="3456" />
            <wire x2="3456" y1="1456" y2="1680" x1="3456" />
            <wire x2="3472" y1="1680" y2="1680" x1="3456" />
            <wire x2="3456" y1="1680" y2="1840" x1="3456" />
        </branch>
        <iomarker fontsize="28" x="4560" y="3216" name="ADC_CLK" orien="R0" />
        <branch name="FAST_CLK">
            <wire x2="2912" y1="2864" y2="2864" x1="2640" />
            <wire x2="3200" y1="2256" y2="2256" x1="2912" />
            <wire x2="2912" y1="2256" y2="2864" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2816" y="3152" name="RAM_READ_IN" orien="R180" />
        <instance x="3296" y="3280" name="XLXI_81" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="3584" y1="3184" y2="3184" x1="3552" />
        </branch>
        <instance x="3584" y="3312" name="XLXI_82" orien="R0" />
        <branch name="XLXN_121">
            <wire x2="3872" y1="3216" y2="3216" x1="3840" />
        </branch>
        <instance x="3872" y="3248" name="XLXI_83" orien="R0" />
        <branch name="XLXN_122">
            <wire x2="4128" y1="3216" y2="3216" x1="4096" />
        </branch>
        <instance x="4128" y="3248" name="XLXI_84" orien="R0" />
        <branch name="RAM_READ_IN">
            <wire x2="3296" y1="3152" y2="3152" x1="2816" />
        </branch>
        <branch name="ADC_CLK">
            <wire x2="4560" y1="3216" y2="3216" x1="4352" />
        </branch>
        <branch name="XLXN_125">
            <wire x2="3296" y1="3216" y2="3248" x1="3296" />
        </branch>
        <instance x="3232" y="3376" name="XLXI_85" orien="R0" />
        <branch name="XLXN_126">
            <wire x2="3584" y1="3248" y2="3280" x1="3584" />
        </branch>
        <instance x="3520" y="3408" name="XLXI_86" orien="R0" />
    </sheet>
</drawing>