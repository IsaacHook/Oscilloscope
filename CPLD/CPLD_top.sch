<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="READY" />
        <signal name="ENABLE" />
        <signal name="RAM_READ_OUT" />
        <signal name="XLXN_19" />
        <signal name="CLEAR_COUNT" />
        <signal name="ENABLE_COUNT" />
        <signal name="START_FILL" />
        <signal name="FILL_COMPLETE" />
        <signal name="INMUX1" />
        <signal name="INMUX2" />
        <signal name="SLOW_CLK" />
        <signal name="XLXN_52" />
        <signal name="FAST_CLK" />
        <signal name="XLXN_66" />
        <signal name="XLXN_69" />
        <signal name="COUNTER_CLK" />
        <signal name="XLXN_75" />
        <signal name="ADC_CLK" />
        <signal name="XLXN_81" />
        <signal name="RAM_FULL" />
        <signal name="XLXN_82" />
        <signal name="TRIGGER_IN" />
        <signal name="XLXN_93" />
        <signal name="RAM_READ_IN" />
        <signal name="XLXN_95" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Output" name="RAM_READ_OUT" />
        <port polarity="Output" name="CLEAR_COUNT" />
        <port polarity="Output" name="ENABLE_COUNT" />
        <port polarity="Output" name="FILL_COMPLETE" />
        <port polarity="Input" name="SLOW_CLK" />
        <port polarity="Input" name="FAST_CLK" />
        <port polarity="Output" name="COUNTER_CLK" />
        <port polarity="Output" name="ADC_CLK" />
        <port polarity="Input" name="RAM_FULL" />
        <port polarity="Input" name="TRIGGER_IN" />
        <port polarity="Input" name="RAM_READ_IN" />
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
        <blockdef name="fdcp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
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
        <block symbolname="fdcp" name="XLXI_18">
            <blockpin signalname="TRIGGER_IN" name="C" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin signalname="READY" name="D" />
            <blockpin signalname="XLXN_82" name="PRE" />
            <blockpin signalname="START_FILL" name="Q" />
        </block>
        <block symbolname="fdcp" name="XLXI_16">
            <blockpin signalname="ENABLE" name="C" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin signalname="XLXN_69" name="D" />
            <blockpin signalname="XLXN_93" name="PRE" />
            <blockpin signalname="READY" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="XLXN_69" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="RAM_FULL" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="START_FILL" name="I1" />
            <blockpin signalname="CLEAR_COUNT" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="FILL_COMPLETE" name="I1" />
            <blockpin signalname="ENABLE_COUNT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="RAM_READ_IN" name="I" />
            <blockpin signalname="RAM_READ_OUT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="START_FILL" name="I" />
            <blockpin signalname="FILL_COMPLETE" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_OUT" name="I1" />
            <blockpin signalname="INMUX1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_48">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="SLOW_CLK" name="I1" />
            <blockpin signalname="INMUX2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="INMUX2" name="I0" />
            <blockpin signalname="INMUX1" name="I1" />
            <blockpin signalname="COUNTER_CLK" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_51">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_50">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_IN" name="I1" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_58">
            <blockpin signalname="XLXN_66" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_60">
            <blockpin signalname="XLXN_93" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_64">
            <blockpin signalname="XLXN_81" name="I" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_65">
            <blockpin signalname="XLXN_75" name="I" />
            <blockpin signalname="ADC_CLK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_66">
            <blockpin signalname="XLXN_82" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2256" y="1648" name="XLXI_18" orien="R0" />
        <branch name="READY">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1392" type="branch" />
            <wire x2="2048" y1="1392" y2="1392" x1="1952" />
            <wire x2="2256" y1="1392" y2="1392" x1="2048" />
        </branch>
        <instance x="1168" y="1840" name="XLXI_23" orien="R0" />
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
        <branch name="START_FILL">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3088" y="1392" type="branch" />
            <wire x2="2832" y1="1392" y2="1392" x1="2640" />
            <wire x2="3088" y1="1392" y2="1392" x1="2832" />
            <wire x2="3472" y1="1392" y2="1392" x1="3088" />
            <wire x2="2960" y1="1120" y2="1120" x1="2832" />
            <wire x2="2832" y1="1120" y2="1392" x1="2832" />
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
        <instance x="3616" y="2960" name="XLXI_51" orien="R0" />
        <instance x="3232" y="2928" name="XLXI_50" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="3616" y1="2832" y2="2832" x1="3488" />
        </branch>
        <branch name="FAST_CLK">
            <wire x2="2816" y1="2864" y2="2864" x1="2640" />
            <wire x2="3232" y1="2864" y2="2864" x1="2816" />
            <wire x2="3200" y1="2256" y2="2256" x1="2816" />
            <wire x2="2816" y1="2256" y2="2864" x1="2816" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="3616" y1="2896" y2="2928" x1="3616" />
        </branch>
        <instance x="3552" y="3056" name="XLXI_58" orien="R0" />
        <iomarker fontsize="28" x="1200" y="1520" name="ENABLE" orien="R180" />
        <iomarker fontsize="28" x="4272" y="1856" name="RAM_READ_OUT" orien="R0" />
        <iomarker fontsize="28" x="3760" y="1424" name="CLEAR_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3760" y="1648" name="ENABLE_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3600" y="1120" name="FILL_COMPLETE" orien="R0" />
        <iomarker fontsize="28" x="2704" y="2800" name="RAM_READ_IN" orien="R180" />
        <iomarker fontsize="28" x="2640" y="2864" name="FAST_CLK" orien="R180" />
        <iomarker fontsize="28" x="2656" y="2400" name="SLOW_CLK" orien="R180" />
        <iomarker fontsize="28" x="768" y="1808" name="RAM_FULL" orien="R180" />
        <text style="fontsize:52;fontname:Arial" x="356" y="308">UoM ELEN90053 DSO CPDL Design</text>
        <instance x="2960" y="1152" name="XLXI_46" orien="R0" />
        <branch name="COUNTER_CLK">
            <wire x2="4128" y1="2336" y2="2336" x1="3968" />
        </branch>
        <iomarker fontsize="28" x="4128" y="2336" name="COUNTER_CLK" orien="R0" />
        <iomarker fontsize="28" x="4528" y="2864" name="ADC_CLK" orien="R0" />
        <instance x="3984" y="2896" name="XLXI_64" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="4240" y1="2864" y2="2864" x1="4208" />
        </branch>
        <instance x="4240" y="2896" name="XLXI_65" orien="R0" />
        <branch name="ADC_CLK">
            <wire x2="4528" y1="2864" y2="2864" x1="4464" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="3984" y1="2864" y2="2864" x1="3872" />
        </branch>
        <branch name="RAM_FULL">
            <wire x2="1168" y1="1808" y2="1808" x1="768" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2432" y1="1024" y2="1024" x1="2256" />
            <wire x2="2432" y1="1024" y2="1040" x1="2432" />
            <wire x2="2256" y1="1024" y2="1296" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1520" name="TRIGGER_IN" orien="R180" />
        <branch name="TRIGGER_IN">
            <wire x2="2256" y1="1520" y2="1520" x1="2224" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1568" y1="1808" y2="1808" x1="1392" />
            <wire x2="2256" y1="1808" y2="1808" x1="1568" />
            <wire x2="1568" y1="1616" y2="1808" x1="1568" />
            <wire x2="2256" y1="1616" y2="1808" x1="2256" />
        </branch>
        <branch name="ENABLE">
            <wire x2="1568" y1="1520" y2="1520" x1="1200" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1456" y1="1200" y2="1392" x1="1456" />
            <wire x2="1568" y1="1392" y2="1392" x1="1456" />
        </branch>
        <instance x="1568" y="1648" name="XLXI_16" orien="R0" />
        <instance x="1696" y="1216" name="XLXI_60" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="1568" y1="1024" y2="1296" x1="1568" />
            <wire x2="1760" y1="1024" y2="1024" x1="1568" />
            <wire x2="1760" y1="1024" y2="1088" x1="1760" />
        </branch>
        <instance x="1392" y="1200" name="XLXI_17" orien="R0" />
        <instance x="2368" y="1168" name="XLXI_66" orien="R0" />
        <branch name="RAM_READ_IN">
            <wire x2="2752" y1="2800" y2="2800" x1="2704" />
            <wire x2="3200" y1="2800" y2="2800" x1="2752" />
            <wire x2="3232" y1="2800" y2="2800" x1="3200" />
            <wire x2="2752" y1="1856" y2="2800" x1="2752" />
            <wire x2="3424" y1="1856" y2="1856" x1="2752" />
            <wire x2="3488" y1="1856" y2="1856" x1="3424" />
            <wire x2="3200" y1="2464" y2="2464" x1="3136" />
            <wire x2="3136" y1="2464" y2="2544" x1="3136" />
            <wire x2="3200" y1="2544" y2="2544" x1="3136" />
            <wire x2="3200" y1="2544" y2="2800" x1="3200" />
            <wire x2="3424" y1="1680" y2="1856" x1="3424" />
            <wire x2="3440" y1="1680" y2="1680" x1="3424" />
            <wire x2="3472" y1="1680" y2="1680" x1="3440" />
            <wire x2="3472" y1="1456" y2="1456" x1="3440" />
            <wire x2="3440" y1="1456" y2="1680" x1="3440" />
        </branch>
    </sheet>
</drawing>