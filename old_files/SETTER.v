//
// Verilog description for cell SETTER, 
// Fri May 11 04:58:25 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module SETTER ( RST, FILTER, STRIDE, ENB, ADRS, ACK ) ;

    input RST ;
    input FILTER ;
    input STRIDE ;
    input ENB ;
    output [16:0]ADRS ;
    output ACK ;

    wire nx1200, ROW_CNT_0, nx1224, nx4, W_0, nx10, ROW_CNT_9, ROW_CNT_8, 
         ROW_CNT_7, ROW_CNT_6, ROW_CNT_5, ROW_CNT_4, ROW_CNT_3, ROW_CNT_2, 
         ROW_CNT_1, nx28, nx44, nx60, nx1228, nx76, nx92, nx1230, nx108, nx124, 
         nx1232, nx140, nx152, nx162, W_1, nx170, nx176, W_2, nx218, W_7, 
         NOT_nx10, nx228, COL_CNT_8, nx1233, COL_CNT_7, COL_CNT_6, nx1235, 
         COL_CNT_5, COL_CNT_4, nx1237, COL_CNT_3, COL_CNT_2, COL_CNT_1, 
         COL_CNT_0, nx262, nx274, nx286, nx310, nx334, nx372, nx374, nx376, 
         nx378, nx388, nx412, nx416, nx420, nx422, nx426, nx432, nx434, nx438, 
         nx444, nx450, nx454, nx456, nx462, nx468, nx472, nx474, nx482, nx488, 
         nx490, nx498, nx504, nx506, nx514, nx520, nx522, nx530, nx538, nx1247, 
         nx1257, nx1267, nx1277, nx1287, nx1297, nx1307, nx1317, nx1327, nx1337, 
         nx1347, nx1357, nx1367, nx1377, nx1387, nx1397, nx1407, nx1417, nx1427, 
         nx1437, nx1447, nx1457, nx1467, nx1477, nx1487, nx1497, nx1507, nx1517, 
         nx1527, nx1529, nx1539, nx1541, nx1548, nx1551, nx1554, nx1557, nx1561, 
         nx1564, nx1567, nx1570, nx1574, nx1577, nx1580, nx1583, nx1587, nx1591, 
         nx1595, nx1602, nx1604, nx1606, nx1613, nx1619, nx1625, nx1627, nx1629, 
         nx1631, nx1634, nx1647, nx1651, nx1653, nx1656, nx1661, nx1665, nx1667, 
         nx1670, nx1675, nx1679, nx1681, nx1684, nx1689, nx1694, nx1699, nx1703, 
         nx1705, nx1712, nx1714, nx1716, nx1718, nx1724, nx1726, nx1731, nx1744, 
         nx1747, nx1754, nx1760, nx1771, nx1777, nx1788, nx1799, nx1810, nx1821, 
         nx1827, nx1835, nx1837, nx1845, nx1847, nx1855, nx1857, nx1859, nx1861, 
         nx1863, nx5, nx1866, nx1868, nx1870, nx1872, nx1874, nx1876, nx1878;
    wire [26:0] \$dummy ;




    fake_gnd ix1201 (.Y (nx1200)) ;
    nand02 ix1348 (.Y (nx1347), .A0 (nx1527), .A1 (nx1529)) ;
    dffr reg_ACK (.Q (ACK), .QB (nx1527), .D (nx1347), .CLK (ENB), .R (RST)) ;
    nand04 ix1530 (.Y (nx1529), .A0 (nx372), .A1 (nx388), .A2 (nx1724), .A3 (
           nx1726)) ;
    dffr reg_ROW_CNT_0 (.Q (ROW_CNT_0), .QB (\$dummy [0]), .D (nx4), .CLK (ENB)
         , .R (RST)) ;
    nor04 ix239 (.Y (nx1224), .A0 (nx1539), .A1 (nx1625), .A2 (nx218), .A3 (
          nx228)) ;
    nand04 ix1540 (.Y (nx1539), .A0 (nx1541), .A1 (nx162), .A2 (nx1613), .A3 (
           nx1619)) ;
    xnor2 ix1542 (.Y (nx1541), .A0 (ROW_CNT_0), .A1 (W_0)) ;
    latch lat_W_0 (.Q (W_0), .D (nx10), .CLK (RST)) ;
    dffr reg_ROW_CNT_9 (.Q (ROW_CNT_9), .QB (\$dummy [1]), .D (nx152), .CLK (ENB
         ), .R (RST)) ;
    xnor2 ix1549 (.Y (nx1548), .A0 (ROW_CNT_9), .A1 (nx1232)) ;
    nor03_2x ix141 (.Y (nx140), .A0 (nx1554), .A1 (nx1837), .A2 (nx1232)) ;
    dffr reg_ROW_CNT_8 (.Q (ROW_CNT_8), .QB (nx1551), .D (nx140), .CLK (ENB), .R (
         RST)) ;
    nand02 ix1558 (.Y (nx1557), .A0 (ROW_CNT_7), .A1 (nx1230)) ;
    dffr reg_ROW_CNT_7 (.Q (ROW_CNT_7), .QB (\$dummy [2]), .D (nx124), .CLK (ENB
         ), .R (RST)) ;
    nor02_2x ix1562 (.Y (nx1561), .A0 (nx1230), .A1 (ROW_CNT_7)) ;
    nor03_2x ix109 (.Y (nx108), .A0 (nx1567), .A1 (nx1835), .A2 (nx1230)) ;
    dffr reg_ROW_CNT_6 (.Q (ROW_CNT_6), .QB (nx1564), .D (nx108), .CLK (ENB), .R (
         RST)) ;
    nand02 ix1571 (.Y (nx1570), .A0 (ROW_CNT_5), .A1 (nx1228)) ;
    dffr reg_ROW_CNT_5 (.Q (ROW_CNT_5), .QB (\$dummy [3]), .D (nx92), .CLK (ENB)
         , .R (RST)) ;
    nor02_2x ix1575 (.Y (nx1574), .A0 (nx1228), .A1 (ROW_CNT_5)) ;
    nor03_2x ix77 (.Y (nx76), .A0 (nx1580), .A1 (nx1835), .A2 (nx1228)) ;
    dffr reg_ROW_CNT_4 (.Q (ROW_CNT_4), .QB (nx1577), .D (nx76), .CLK (ENB), .R (
         RST)) ;
    nand04 ix1584 (.Y (nx1583), .A0 (ROW_CNT_3), .A1 (ROW_CNT_2), .A2 (ROW_CNT_1
           ), .A3 (ROW_CNT_0)) ;
    aoi21 ix61 (.Y (nx60), .A0 (nx1587), .A1 (nx1604), .B0 (nx1606)) ;
    nand03 ix1588 (.Y (nx1587), .A0 (ROW_CNT_2), .A1 (ROW_CNT_1), .A2 (ROW_CNT_0
           )) ;
    aoi21 ix1592 (.Y (nx1591), .A0 (ROW_CNT_1), .A1 (ROW_CNT_0), .B0 (ROW_CNT_2)
          ) ;
    dffr reg_ROW_CNT_1 (.Q (ROW_CNT_1), .QB (\$dummy [4]), .D (nx28), .CLK (ENB)
         , .R (RST)) ;
    nor02_2x ix1596 (.Y (nx1595), .A0 (ROW_CNT_0), .A1 (ROW_CNT_1)) ;
    dffr reg_ROW_CNT_2 (.Q (ROW_CNT_2), .QB (\$dummy [5]), .D (nx44), .CLK (ENB)
         , .R (RST)) ;
    nand02 ix1603 (.Y (nx1602), .A0 (ROW_CNT_1), .A1 (ROW_CNT_0)) ;
    dffr reg_ROW_CNT_3 (.Q (ROW_CNT_3), .QB (nx1604), .D (nx60), .CLK (ENB), .R (
         RST)) ;
    nand02 ix1607 (.Y (nx1606), .A0 (nx1872), .A1 (nx1583)) ;
    xnor2 ix1614 (.Y (nx1613), .A0 (ROW_CNT_1), .A1 (W_1)) ;
    latch lat_W_1 (.Q (W_1), .D (nx176), .CLK (RST)) ;
    oai21 ix177 (.Y (nx176), .A0 (FILTER), .A1 (STRIDE), .B0 (NOT_nx10)) ;
    nand02 ix1618 (.Y (NOT_nx10), .A0 (FILTER), .A1 (STRIDE)) ;
    nand03 ix1626 (.Y (nx1625), .A0 (nx1627), .A1 (nx1629), .A2 (nx1631)) ;
    latch lat_W_7 (.Q (W_7), .D (NOT_nx10), .CLK (RST)) ;
    xnor2 ix1648 (.Y (nx1647), .A0 (ROW_CNT_7), .A1 (W_7)) ;
    dffr COL_CNT_9 (.Q (\$dummy [6]), .QB (nx1651), .D (nx1337), .CLK (ENB), .R (
         RST)) ;
    dffr reg_COL_CNT_8 (.Q (COL_CNT_8), .QB (nx1656), .D (nx1327), .CLK (ENB), .R (
         RST)) ;
    nand02 ix1662 (.Y (nx1661), .A0 (COL_CNT_7), .A1 (nx1235)) ;
    dffr reg_COL_CNT_7 (.Q (COL_CNT_7), .QB (nx1665), .D (nx1317), .CLK (ENB), .R (
         RST)) ;
    oai21 ix1668 (.Y (nx1667), .A0 (nx1235), .A1 (COL_CNT_7), .B0 (nx1661)) ;
    dffr reg_COL_CNT_6 (.Q (COL_CNT_6), .QB (nx1670), .D (nx1307), .CLK (ENB), .R (
         RST)) ;
    nand02 ix1676 (.Y (nx1675), .A0 (COL_CNT_5), .A1 (nx1237)) ;
    dffr reg_COL_CNT_5 (.Q (COL_CNT_5), .QB (nx1679), .D (nx1297), .CLK (ENB), .R (
         RST)) ;
    oai21 ix1682 (.Y (nx1681), .A0 (nx1237), .A1 (COL_CNT_5), .B0 (nx1675)) ;
    dffr reg_COL_CNT_4 (.Q (COL_CNT_4), .QB (nx1684), .D (nx1287), .CLK (ENB), .R (
         RST)) ;
    aoi21 ix287 (.Y (nx286), .A0 (nx1689), .A1 (nx1684), .B0 (nx1237)) ;
    nand04 ix1690 (.Y (nx1689), .A0 (COL_CNT_3), .A1 (COL_CNT_2), .A2 (COL_CNT_1
           ), .A3 (COL_CNT_0)) ;
    dffr reg_COL_CNT_3 (.Q (COL_CNT_3), .QB (\$dummy [7]), .D (nx1277), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix275 (.Y (nx274), .A0 (COL_CNT_3), .A1 (nx1694)) ;
    nand03 ix1695 (.Y (nx1694), .A0 (COL_CNT_2), .A1 (COL_CNT_1), .A2 (COL_CNT_0
           )) ;
    dffr reg_COL_CNT_2 (.Q (COL_CNT_2), .QB (\$dummy [8]), .D (nx1267), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix263 (.Y (nx262), .A0 (COL_CNT_2), .A1 (nx1699)) ;
    nand02 ix1700 (.Y (nx1699), .A0 (COL_CNT_1), .A1 (COL_CNT_0)) ;
    dffr reg_COL_CNT_1 (.Q (COL_CNT_1), .QB (nx1703), .D (nx1257), .CLK (ENB), .R (
         RST)) ;
    oai21 ix1706 (.Y (nx1705), .A0 (COL_CNT_0), .A1 (COL_CNT_1), .B0 (nx1699)) ;
    dffr reg_COL_CNT_0 (.Q (COL_CNT_0), .QB (\$dummy [9]), .D (nx1247), .CLK (
         ENB), .R (RST)) ;
    nand03 ix1713 (.Y (nx1712), .A0 (nx1714), .A1 (nx1716), .A2 (nx1718)) ;
    xnor2 ix1717 (.Y (nx1716), .A0 (W_0), .A1 (COL_CNT_0)) ;
    nor03_2x ix389 (.Y (nx388), .A0 (nx374), .A1 (nx376), .A2 (nx378)) ;
    dffsr_ni reg_COL_INC_0 (.Q (ADRS[0]), .QB (\$dummy [10]), .D (nx1357), .CLK (
             ENB), .S (nx412), .R (nx416)) ;
    inv01 ix1732 (.Y (nx1731), .A (RST)) ;
    aoi21 ix417 (.Y (nx416), .A0 (FILTER), .A1 (STRIDE), .B0 (nx1731)) ;
    dffsr_ni reg_COL_INC_1 (.Q (ADRS[1]), .QB (\$dummy [11]), .D (nx1367), .CLK (
             ENB), .S (nx422), .R (nx426)) ;
    xor2 ix421 (.Y (nx420), .A0 (ADRS[0]), .A1 (ADRS[1])) ;
    and02 ix423 (.Y (nx422), .A0 (RST), .A1 (nx176)) ;
    dffsr_ni reg_COL_INC_2 (.Q (ADRS[2]), .QB (\$dummy [12]), .D (nx1377), .CLK (
             ENB), .S (nx434), .R (nx1868)) ;
    xnor2 ix433 (.Y (nx432), .A0 (ADRS[2]), .A1 (nx1744)) ;
    nand02 ix1745 (.Y (nx1744), .A0 (ADRS[0]), .A1 (ADRS[1])) ;
    nor02ii ix1748 (.Y (nx1747), .A0 (FILTER), .A1 (STRIDE)) ;
    dffsr_ni reg_COL_INC_3 (.Q (ADRS[3]), .QB (\$dummy [13]), .D (nx1387), .CLK (
             ENB), .S (nx434), .R (nx1868)) ;
    xnor2 ix445 (.Y (nx444), .A0 (ADRS[3]), .A1 (nx1754)) ;
    nand03 ix1755 (.Y (nx1754), .A0 (ADRS[0]), .A1 (ADRS[1]), .A2 (ADRS[2])) ;
    dffsr_ni reg_COL_INC_4 (.Q (ADRS[4]), .QB (\$dummy [14]), .D (nx1397), .CLK (
             ENB), .S (nx434), .R (nx1868)) ;
    xnor2 ix451 (.Y (nx450), .A0 (ADRS[4]), .A1 (nx1760)) ;
    nand04 ix1761 (.Y (nx1760), .A0 (ADRS[0]), .A1 (ADRS[1]), .A2 (ADRS[2]), .A3 (
           ADRS[3])) ;
    dffsr_ni reg_COL_INC_5 (.Q (ADRS[5]), .QB (\$dummy [15]), .D (nx1407), .CLK (
             ENB), .S (nx434), .R (nx1868)) ;
    xor2 ix457 (.Y (nx456), .A0 (ADRS[5]), .A1 (nx454)) ;
    nor02ii ix455 (.Y (nx454), .A0 (nx1760), .A1 (ADRS[4])) ;
    dffsr_ni reg_COL_INC_6 (.Q (ADRS[6]), .QB (\$dummy [16]), .D (nx1417), .CLK (
             ENB), .S (nx434), .R (nx1868)) ;
    xnor2 ix463 (.Y (nx462), .A0 (ADRS[6]), .A1 (nx1771)) ;
    nand02 ix1772 (.Y (nx1771), .A0 (nx454), .A1 (ADRS[5])) ;
    dffsr_ni reg_COL_INC_7 (.Q (ADRS[7]), .QB (\$dummy [17]), .D (nx1427), .CLK (
             ENB), .S (nx416), .R (nx412)) ;
    xnor2 ix469 (.Y (nx468), .A0 (ADRS[7]), .A1 (nx1777)) ;
    nand03 ix1778 (.Y (nx1777), .A0 (nx454), .A1 (ADRS[5]), .A2 (ADRS[6])) ;
    dffr reg_COL_INC_8 (.Q (ADRS[8]), .QB (\$dummy [18]), .D (nx1437), .CLK (ENB
         ), .R (RST)) ;
    xor2 ix475 (.Y (nx474), .A0 (ADRS[8]), .A1 (nx472)) ;
    nor02ii ix473 (.Y (nx472), .A0 (nx1777), .A1 (ADRS[7])) ;
    dffr reg_COL_INC_9 (.Q (ADRS[9]), .QB (\$dummy [19]), .D (nx1447), .CLK (ENB
         ), .R (RST)) ;
    xnor2 ix483 (.Y (nx482), .A0 (ADRS[9]), .A1 (nx1788)) ;
    nand02 ix1789 (.Y (nx1788), .A0 (nx472), .A1 (ADRS[8])) ;
    dffr reg_COL_INC_10 (.Q (ADRS[10]), .QB (\$dummy [20]), .D (nx1457), .CLK (
         ENB), .R (RST)) ;
    xor2 ix491 (.Y (nx490), .A0 (ADRS[10]), .A1 (nx488)) ;
    nor02ii ix489 (.Y (nx488), .A0 (nx1788), .A1 (ADRS[9])) ;
    dffr reg_COL_INC_11 (.Q (ADRS[11]), .QB (\$dummy [21]), .D (nx1467), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix499 (.Y (nx498), .A0 (ADRS[11]), .A1 (nx1799)) ;
    nand02 ix1800 (.Y (nx1799), .A0 (nx488), .A1 (ADRS[10])) ;
    dffr reg_COL_INC_12 (.Q (ADRS[12]), .QB (\$dummy [22]), .D (nx1477), .CLK (
         ENB), .R (RST)) ;
    xor2 ix507 (.Y (nx506), .A0 (ADRS[12]), .A1 (nx504)) ;
    nor02ii ix505 (.Y (nx504), .A0 (nx1799), .A1 (ADRS[11])) ;
    dffr reg_COL_INC_13 (.Q (ADRS[13]), .QB (\$dummy [23]), .D (nx1487), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix515 (.Y (nx514), .A0 (ADRS[13]), .A1 (nx1810)) ;
    nand02 ix1811 (.Y (nx1810), .A0 (nx504), .A1 (ADRS[12])) ;
    dffr reg_COL_INC_14 (.Q (ADRS[14]), .QB (\$dummy [24]), .D (nx1497), .CLK (
         ENB), .R (RST)) ;
    xor2 ix523 (.Y (nx522), .A0 (ADRS[14]), .A1 (nx520)) ;
    nor02ii ix521 (.Y (nx520), .A0 (nx1810), .A1 (ADRS[13])) ;
    dffr reg_COL_INC_15 (.Q (ADRS[15]), .QB (\$dummy [25]), .D (nx1507), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix531 (.Y (nx530), .A0 (ADRS[15]), .A1 (nx1821)) ;
    nand02 ix1822 (.Y (nx1821), .A0 (nx520), .A1 (ADRS[14])) ;
    dffr reg_COL_INC_16 (.Q (ADRS[16]), .QB (\$dummy [26]), .D (nx1517), .CLK (
         ENB), .R (RST)) ;
    xnor2 ix539 (.Y (nx538), .A0 (ADRS[16]), .A1 (nx1827)) ;
    nand03 ix1828 (.Y (nx1827), .A0 (nx520), .A1 (ADRS[14]), .A2 (ADRS[15])) ;
    inv01 ix229 (.Y (nx228), .A (nx1647)) ;
    inv16 ix171 (.Y (nx170), .A (nx1747)) ;
    inv01 ix11 (.Y (nx10), .A (NOT_nx10)) ;
    inv02 ix1834 (.Y (nx1835), .A (nx1872)) ;
    inv02 ix1836 (.Y (nx1837), .A (nx1872)) ;
    inv02 ix1844 (.Y (nx1845), .A (nx1224)) ;
    inv02 ix1846 (.Y (nx1847), .A (nx1866)) ;
    and04 ix373 (.Y (nx372), .A0 (nx1866), .A1 (nx1651), .A2 (nx1656), .A3 (
          nx1855)) ;
    inv01 ix1854 (.Y (nx1855), .A (nx1712)) ;
    nor02ii ix5 (.Y (nx4), .A0 (ROW_CNT_0), .A1 (nx1872)) ;
    nor02ii ix163 (.Y (nx162), .A0 (ROW_CNT_9), .A1 (nx1551)) ;
    nor02ii ix153 (.Y (nx152), .A0 (nx1548), .A1 (nx1872)) ;
    nor02ii ix147 (.Y (nx1232), .A0 (nx1557), .A1 (ROW_CNT_8)) ;
    and02 ix1555 (.Y (nx1554), .A0 (nx1551), .A1 (nx1557)) ;
    and03 ix125 (.Y (nx124), .A0 (nx1857), .A1 (nx1872), .A2 (nx1557)) ;
    inv01 ix1856 (.Y (nx1857), .A (nx1561)) ;
    nor02ii ix115 (.Y (nx1230), .A0 (nx1570), .A1 (ROW_CNT_6)) ;
    and02 ix1568 (.Y (nx1567), .A0 (nx1564), .A1 (nx1570)) ;
    and03 ix93 (.Y (nx92), .A0 (nx1859), .A1 (nx1872), .A2 (nx1570)) ;
    inv01 ix1858 (.Y (nx1859), .A (nx1574)) ;
    nor02ii ix83 (.Y (nx1228), .A0 (nx1583), .A1 (ROW_CNT_4)) ;
    and02 ix1581 (.Y (nx1580), .A0 (nx1577), .A1 (nx1583)) ;
    and03 ix45 (.Y (nx44), .A0 (nx1861), .A1 (nx1874), .A2 (nx1587)) ;
    inv01 ix1860 (.Y (nx1861), .A (nx1591)) ;
    and03 ix29 (.Y (nx28), .A0 (nx1863), .A1 (nx1874), .A2 (nx1602)) ;
    inv01 ix1862 (.Y (nx1863), .A (nx1595)) ;
    xor2 ix1620 (.Y (nx1619), .A0 (ROW_CNT_2), .A1 (nx1634)) ;
    xor2 ix1628 (.Y (nx1627), .A0 (ROW_CNT_5), .A1 (nx1634)) ;
    xnor2 ix1630 (.Y (nx1629), .A0 (nx1604), .A1 (nx1634)) ;
    xnor2 ix1632 (.Y (nx1631), .A0 (nx1577), .A1 (nx1634)) ;
    xor2 ix1646 (.Y (nx218), .A0 (nx1564), .A1 (nx1634)) ;
    mux21 ix1338 (.Y (nx1337), .A0 (nx1653), .A1 (nx1651), .S0 (nx1874)) ;
    xor2 ix1654 (.Y (nx1653), .A0 (nx1651), .A1 (nx1233)) ;
    nor02ii ix341 (.Y (nx1233), .A0 (nx1661), .A1 (COL_CNT_8)) ;
    mux21_ni ix1328 (.Y (nx1327), .A0 (nx334), .A1 (COL_CNT_8), .S0 (nx1874)) ;
    xor2 ix335 (.Y (nx334), .A0 (nx1656), .A1 (nx1661)) ;
    mux21 ix1318 (.Y (nx1317), .A0 (nx1667), .A1 (nx1665), .S0 (nx1874)) ;
    nor02ii ix317 (.Y (nx1235), .A0 (nx1675), .A1 (COL_CNT_6)) ;
    mux21_ni ix1308 (.Y (nx1307), .A0 (nx310), .A1 (COL_CNT_6), .S0 (nx1874)) ;
    xor2 ix311 (.Y (nx310), .A0 (nx1670), .A1 (nx1675)) ;
    mux21 ix1298 (.Y (nx1297), .A0 (nx1681), .A1 (nx1679), .S0 (nx1874)) ;
    nor02ii ix293 (.Y (nx1237), .A0 (nx1689), .A1 (COL_CNT_4)) ;
    mux21_ni ix1288 (.Y (nx1287), .A0 (nx286), .A1 (COL_CNT_4), .S0 (nx1876)) ;
    mux21_ni ix1278 (.Y (nx1277), .A0 (nx274), .A1 (COL_CNT_3), .S0 (nx1876)) ;
    mux21_ni ix1268 (.Y (nx1267), .A0 (nx262), .A1 (COL_CNT_2), .S0 (nx1876)) ;
    mux21 ix1258 (.Y (nx1257), .A0 (nx1705), .A1 (nx1703), .S0 (nx1876)) ;
    xor2 ix1248 (.Y (nx1247), .A0 (COL_CNT_0), .A1 (nx1866)) ;
    xor2 ix1715 (.Y (nx1714), .A0 (COL_CNT_2), .A1 (nx1634)) ;
    xor2 ix1719 (.Y (nx1718), .A0 (nx1703), .A1 (W_1)) ;
    xnor2 ix375 (.Y (nx374), .A0 (nx1679), .A1 (W_2)) ;
    xor2 ix377 (.Y (nx376), .A0 (COL_CNT_3), .A1 (W_2)) ;
    xnor2 ix379 (.Y (nx378), .A0 (nx1684), .A1 (W_2)) ;
    xnor2 ix1725 (.Y (nx1724), .A0 (nx1670), .A1 (nx1634)) ;
    xor2 ix1727 (.Y (nx1726), .A0 (nx1665), .A1 (W_7)) ;
    xor2 ix1358 (.Y (nx1357), .A0 (ADRS[0]), .A1 (nx1866)) ;
    nor02ii ix413 (.Y (nx412), .A0 (NOT_nx10), .A1 (RST)) ;
    mux21_ni ix1368 (.Y (nx1367), .A0 (nx420), .A1 (ADRS[1]), .S0 (nx1876)) ;
    nor02ii ix427 (.Y (nx426), .A0 (nx176), .A1 (RST)) ;
    mux21_ni ix1378 (.Y (nx1377), .A0 (nx432), .A1 (ADRS[2]), .S0 (nx1876)) ;
    and02 ix435 (.Y (nx434), .A0 (RST), .A1 (nx170)) ;
    and02 ix439 (.Y (nx438), .A0 (RST), .A1 (nx1870)) ;
    mux21_ni ix1388 (.Y (nx1387), .A0 (nx444), .A1 (ADRS[3]), .S0 (nx1876)) ;
    mux21_ni ix1398 (.Y (nx1397), .A0 (nx450), .A1 (ADRS[4]), .S0 (nx1878)) ;
    mux21_ni ix1408 (.Y (nx1407), .A0 (nx456), .A1 (ADRS[5]), .S0 (nx1878)) ;
    mux21_ni ix1418 (.Y (nx1417), .A0 (nx462), .A1 (ADRS[6]), .S0 (nx1878)) ;
    mux21_ni ix1428 (.Y (nx1427), .A0 (nx468), .A1 (ADRS[7]), .S0 (nx1878)) ;
    mux21_ni ix1438 (.Y (nx1437), .A0 (nx474), .A1 (ADRS[8]), .S0 (nx1878)) ;
    mux21_ni ix1448 (.Y (nx1447), .A0 (nx482), .A1 (ADRS[9]), .S0 (nx1878)) ;
    mux21_ni ix1458 (.Y (nx1457), .A0 (nx490), .A1 (ADRS[10]), .S0 (nx1878)) ;
    mux21_ni ix1468 (.Y (nx1467), .A0 (nx498), .A1 (ADRS[11]), .S0 (nx1847)) ;
    mux21_ni ix1478 (.Y (nx1477), .A0 (nx506), .A1 (ADRS[12]), .S0 (nx1847)) ;
    mux21_ni ix1488 (.Y (nx1487), .A0 (nx514), .A1 (ADRS[13]), .S0 (nx1847)) ;
    mux21_ni ix1498 (.Y (nx1497), .A0 (nx522), .A1 (ADRS[14]), .S0 (nx1847)) ;
    mux21_ni ix1508 (.Y (nx1507), .A0 (nx530), .A1 (ADRS[15]), .S0 (nx1847)) ;
    mux21_ni ix1518 (.Y (nx1517), .A0 (nx538), .A1 (ADRS[16]), .S0 (nx1847)) ;
    latchr lat_W_2__u1 (.QB (nx5), .D (nx170), .CLK (RST), .R (nx1200)) ;
    inv01 lat_W_2__u2 (.Y (W_2), .A (nx5)) ;
    buf04 lat_W_2__u3 (.Y (nx1634), .A (nx5)) ;
    inv02 ix1865 (.Y (nx1866), .A (nx1845)) ;
    buf02 ix1867 (.Y (nx1868), .A (nx438)) ;
    inv02 ix1869 (.Y (nx1870), .A (nx170)) ;
    inv02 ix1871 (.Y (nx1872), .A (nx1224)) ;
    inv02 ix1873 (.Y (nx1874), .A (nx1224)) ;
    inv02 ix1875 (.Y (nx1876), .A (nx1224)) ;
    inv02 ix1877 (.Y (nx1878), .A (nx1866)) ;
endmodule

