//
// Verilog description for cell SETTER, 
// Thu May 10 05:45:32 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module SETTER ( FILTER, STRIDE, ENB, ADRS, ACK ) ;

    input FILTER ;
    input STRIDE ;
    input ENB ;
    output [16:0]ADRS ;
    output ACK ;

    wire ROW_CNT_0, nx16, W_0, ROW_CNT_9, ROW_CNT_8, ROW_CNT_7, ROW_CNT_6, 
         ROW_CNT_5, ROW_CNT_4, ROW_CNT_3, ROW_CNT_2, ROW_CNT_1, nx42, nx60, nx78, 
         nx1495, nx96, nx114, nx1497, nx132, nx150, nx1499, nx168, nx182, W_1, 
         W_2, nx222, nx232, nx234, W_7, nx244, NOT__4676, nx308, nx326, nx338, 
         nx344, nx362, nx374, nx380, nx398, nx416, nx422, nx438, nx448, nx454, 
         nx470, nx480, nx486, nx502, nx512, nx518, nx534, nx542, COL_CNT_0, 
         nx562, COL_CNT_9, COL_CNT_8, COL_CNT_7, COL_CNT_6, COL_CNT_5, COL_CNT_4, 
         COL_CNT_3, COL_CNT_2, COL_CNT_1, nx586, nx602, nx1503, nx618, nx1505, 
         nx650, nx1507, nx682, nx728, nx730, nx732, nx734, nx744, nx1564, nx1574, 
         nx1584, nx1594, nx1604, nx1614, nx1624, nx1634, nx1644, nx1654, nx1664, 
         nx1674, nx1684, nx1694, nx1704, nx1714, nx1724, nx1734, nx1744, nx1754, 
         nx1764, nx1774, nx1784, nx1794, nx1804, nx1814, nx1824, nx1834, nx1844, 
         nx1848, nx1858, nx1862, nx1865, nx1868, nx1871, nx1875, nx1878, nx1881, 
         nx1884, nx1888, nx1892, nx1896, nx1900, nx1911, nx1913, nx1915, nx1918, 
         nx1920, nx1924, nx1928, nx1930, nx1933, nx1937, nx1940, nx1943, nx1950, 
         nx1952, nx1954, nx1971, nx1973, nx1976, nx1981, nx1985, nx1987, nx1990, 
         nx1995, nx1999, nx2001, nx2004, nx2009, nx2014, nx2019, nx2023, nx2025, 
         nx2029, nx2031, nx2033, nx2035, nx2041, nx2048, nx2050, nx2052, nx2061, 
         nx2067, nx2078, nx2089, nx2100, nx2111, nx2122, nx2133, nx2141, nx2143, 
         nx2145, nx2147, nx2149, nx2151, nx2155, nx2157, nx2159, nx2169, nx2175, 
         nx2177, nx2179, nx2181, nx2183, nx2185, nx2187, nx2189, nx2191, nx2193, 
         nx2195, nx1907;
    wire [27:0] \$dummy ;




    nand02 ix1835 (.Y (nx1834), .A0 (nx1844), .A1 (nx1848)) ;
    dff reg_ACK (.Q (ACK), .QB (nx1844), .D (nx1834), .CLK (nx2141)) ;
    nand04 ix1849 (.Y (nx1848), .A0 (nx728), .A1 (nx744), .A2 (nx2041), .A3 (
           nx2159)) ;
    nor04 ix729 (.Y (nx728), .A0 (nx562), .A1 (COL_CNT_9), .A2 (COL_CNT_8), .A3 (
          nx2029)) ;
    dff reg_COL_CNT_0 (.Q (COL_CNT_0), .QB (\$dummy [0]), .D (nx1734), .CLK (
        nx2145)) ;
    xnor2 ix1859 (.Y (nx1858), .A0 (ROW_CNT_7), .A1 (W_7)) ;
    dff reg_ROW_CNT_7 (.Q (ROW_CNT_7), .QB (\$dummy [1]), .D (nx150), .CLK (
        nx2145)) ;
    nor02_2x ix1863 (.Y (nx1862), .A0 (nx1497), .A1 (ROW_CNT_7)) ;
    nor03_2x ix133 (.Y (nx132), .A0 (nx1868), .A1 (nx1497), .A2 (nx2157)) ;
    dff reg_ROW_CNT_6 (.Q (ROW_CNT_6), .QB (nx1865), .D (nx132), .CLK (nx2141)
        ) ;
    nand02 ix1872 (.Y (nx1871), .A0 (ROW_CNT_5), .A1 (nx1495)) ;
    dff reg_ROW_CNT_5 (.Q (ROW_CNT_5), .QB (\$dummy [2]), .D (nx114), .CLK (
        nx2143)) ;
    nor02_2x ix1876 (.Y (nx1875), .A0 (nx1495), .A1 (ROW_CNT_5)) ;
    nor03_2x ix97 (.Y (nx96), .A0 (nx1881), .A1 (nx1495), .A2 (nx2155)) ;
    dff reg_ROW_CNT_4 (.Q (ROW_CNT_4), .QB (nx1878), .D (nx96), .CLK (nx2141)) ;
    nand04 ix1885 (.Y (nx1884), .A0 (ROW_CNT_3), .A1 (ROW_CNT_2), .A2 (ROW_CNT_1
           ), .A3 (ROW_CNT_0)) ;
    aoi21 ix79 (.Y (nx78), .A0 (nx1888), .A1 (nx1952), .B0 (nx1954)) ;
    nand03 ix1889 (.Y (nx1888), .A0 (ROW_CNT_2), .A1 (ROW_CNT_1), .A2 (ROW_CNT_0
           )) ;
    aoi21 ix1893 (.Y (nx1892), .A0 (ROW_CNT_1), .A1 (ROW_CNT_0), .B0 (ROW_CNT_2)
          ) ;
    dff reg_ROW_CNT_1 (.Q (ROW_CNT_1), .QB (\$dummy [3]), .D (nx42), .CLK (
        nx2143)) ;
    nor02_2x ix1897 (.Y (nx1896), .A0 (ROW_CNT_0), .A1 (ROW_CNT_1)) ;
    dff reg_ROW_CNT_0 (.Q (ROW_CNT_0), .QB (\$dummy [4]), .D (nx16), .CLK (
        nx2143)) ;
    nor04 ix1901 (.Y (nx1900), .A0 (nx244), .A1 (nx234), .A2 (nx232), .A3 (nx222
          )) ;
    dff reg_W_7 (.Q (W_7), .QB (\$dummy [5]), .D (W_7), .CLK (nx2141)) ;
    dff reg_W_2 (.Q (W_2), .QB (\$dummy [6]), .D (W_2), .CLK (nx2141)) ;
    nand03 ix233 (.Y (nx232), .A0 (nx1911), .A1 (nx1913), .A2 (nx1915)) ;
    nand04 ix223 (.Y (nx222), .A0 (nx1918), .A1 (nx1920), .A2 (nx1924), .A3 (
           nx1940)) ;
    xnor2 ix1921 (.Y (nx1920), .A0 (ROW_CNT_1), .A1 (W_1)) ;
    dff reg_W_1 (.Q (W_1), .QB (\$dummy [7]), .D (W_1), .CLK (nx2141)) ;
    nor03_2x ix169 (.Y (nx168), .A0 (nx1928), .A1 (nx1499), .A2 (nx2155)) ;
    nand02 ix1931 (.Y (nx1930), .A0 (ROW_CNT_7), .A1 (nx1497)) ;
    dff reg_ROW_CNT_8 (.Q (ROW_CNT_8), .QB (nx1933), .D (nx168), .CLK (nx2141)
        ) ;
    dff reg_ROW_CNT_9 (.Q (ROW_CNT_9), .QB (\$dummy [8]), .D (nx182), .CLK (
        nx2143)) ;
    xnor2 ix1938 (.Y (nx1937), .A0 (ROW_CNT_9), .A1 (nx1499)) ;
    dff reg_W_0 (.Q (W_0), .QB (nx1943), .D (W_0), .CLK (nx2143)) ;
    dff reg_ROW_CNT_2 (.Q (ROW_CNT_2), .QB (\$dummy [9]), .D (nx60), .CLK (
        nx2143)) ;
    nand02 ix1951 (.Y (nx1950), .A0 (ROW_CNT_1), .A1 (ROW_CNT_0)) ;
    dff reg_ROW_CNT_3 (.Q (ROW_CNT_3), .QB (nx1952), .D (nx78), .CLK (nx2143)) ;
    nand02 ix1955 (.Y (nx1954), .A0 (nx1884), .A1 (nx2169)) ;
    dff reg_COL_CNT_9 (.Q (COL_CNT_9), .QB (nx1971), .D (nx1824), .CLK (nx2145)
        ) ;
    dff reg_COL_CNT_8 (.Q (COL_CNT_8), .QB (nx1976), .D (nx1814), .CLK (nx2145)
        ) ;
    nand02 ix1982 (.Y (nx1981), .A0 (COL_CNT_7), .A1 (nx1505)) ;
    dff reg_COL_CNT_7 (.Q (COL_CNT_7), .QB (nx1985), .D (nx1804), .CLK (nx2145)
        ) ;
    oai21 ix1988 (.Y (nx1987), .A0 (nx1505), .A1 (COL_CNT_7), .B0 (nx1981)) ;
    dff reg_COL_CNT_6 (.Q (COL_CNT_6), .QB (nx1990), .D (nx1794), .CLK (nx2145)
        ) ;
    nand02 ix1996 (.Y (nx1995), .A0 (COL_CNT_5), .A1 (nx1503)) ;
    dff reg_COL_CNT_5 (.Q (COL_CNT_5), .QB (nx1999), .D (nx1784), .CLK (nx2145)
        ) ;
    oai21 ix2002 (.Y (nx2001), .A0 (nx1503), .A1 (COL_CNT_5), .B0 (nx1995)) ;
    dff reg_COL_CNT_4 (.Q (COL_CNT_4), .QB (nx2004), .D (nx1774), .CLK (nx2147)
        ) ;
    aoi21 ix619 (.Y (nx618), .A0 (nx2009), .A1 (nx2004), .B0 (nx1503)) ;
    nand04 ix2010 (.Y (nx2009), .A0 (COL_CNT_3), .A1 (COL_CNT_2), .A2 (COL_CNT_1
           ), .A3 (COL_CNT_0)) ;
    dff reg_COL_CNT_3 (.Q (COL_CNT_3), .QB (\$dummy [10]), .D (nx1764), .CLK (
        nx2147)) ;
    xnor2 ix603 (.Y (nx602), .A0 (nx2014), .A1 (COL_CNT_3)) ;
    nand03 ix2015 (.Y (nx2014), .A0 (COL_CNT_2), .A1 (COL_CNT_1), .A2 (COL_CNT_0
           )) ;
    dff reg_COL_CNT_2 (.Q (COL_CNT_2), .QB (\$dummy [11]), .D (nx1754), .CLK (
        nx2147)) ;
    xnor2 ix587 (.Y (nx586), .A0 (nx2019), .A1 (COL_CNT_2)) ;
    nand02 ix2020 (.Y (nx2019), .A0 (COL_CNT_1), .A1 (COL_CNT_0)) ;
    dff reg_COL_CNT_1 (.Q (COL_CNT_1), .QB (nx2023), .D (nx1744), .CLK (nx2147)
        ) ;
    oai21 ix2026 (.Y (nx2025), .A0 (COL_CNT_0), .A1 (COL_CNT_1), .B0 (nx2019)) ;
    nand03 ix2030 (.Y (nx2029), .A0 (nx2031), .A1 (nx2033), .A2 (nx2035)) ;
    nor03_2x ix745 (.Y (nx744), .A0 (nx730), .A1 (nx732), .A2 (nx734)) ;
    dff reg_ADRS_0 (.Q (ADRS[0]), .QB (\$dummy [12]), .D (nx1564), .CLK (nx2147)
        ) ;
    dff reg_ADRS_1 (.Q (ADRS[1]), .QB (nx2048), .D (nx1574), .CLK (nx2147)) ;
    oai21 ix2051 (.Y (nx2050), .A0 (ADRS[0]), .A1 (ADRS[1]), .B0 (nx2052)) ;
    nand02 ix2053 (.Y (nx2052), .A0 (ADRS[1]), .A1 (ADRS[0])) ;
    dff reg_ADRS_2 (.Q (ADRS[2]), .QB (\$dummy [13]), .D (nx1584), .CLK (nx2147)
        ) ;
    xnor2 ix309 (.Y (nx308), .A0 (nx2052), .A1 (ADRS[2])) ;
    dff reg_ADRS_3 (.Q (ADRS[3]), .QB (\$dummy [14]), .D (nx1594), .CLK (nx2149)
        ) ;
    xnor2 ix327 (.Y (nx326), .A0 (nx2061), .A1 (ADRS[3])) ;
    nand03 ix2062 (.Y (nx2061), .A0 (ADRS[2]), .A1 (ADRS[1]), .A2 (ADRS[0])) ;
    dff reg_ADRS_4 (.Q (ADRS[4]), .QB (\$dummy [15]), .D (nx1604), .CLK (nx2149)
        ) ;
    xnor2 ix345 (.Y (nx344), .A0 (nx2067), .A1 (ADRS[4])) ;
    nand04 ix2068 (.Y (nx2067), .A0 (ADRS[3]), .A1 (ADRS[2]), .A2 (ADRS[1]), .A3 (
           ADRS[0])) ;
    dff reg_ADRS_5 (.Q (ADRS[5]), .QB (\$dummy [16]), .D (nx1614), .CLK (nx2149)
        ) ;
    xor2 ix363 (.Y (nx362), .A0 (nx338), .A1 (ADRS[5])) ;
    nor02ii ix339 (.Y (nx338), .A0 (nx2067), .A1 (ADRS[4])) ;
    dff reg_ADRS_6 (.Q (ADRS[6]), .QB (\$dummy [17]), .D (nx1624), .CLK (nx2149)
        ) ;
    xnor2 ix381 (.Y (nx380), .A0 (nx2078), .A1 (ADRS[6])) ;
    nand02 ix2079 (.Y (nx2078), .A0 (ADRS[5]), .A1 (nx338)) ;
    dff reg_ADRS_7 (.Q (ADRS[7]), .QB (\$dummy [18]), .D (nx1634), .CLK (nx2149)
        ) ;
    xor2 ix399 (.Y (nx398), .A0 (nx374), .A1 (ADRS[7])) ;
    nor02ii ix375 (.Y (nx374), .A0 (nx2078), .A1 (ADRS[6])) ;
    dff reg_ADRS_8 (.Q (ADRS[8]), .QB (\$dummy [19]), .D (nx1644), .CLK (nx2149)
        ) ;
    xnor2 ix423 (.Y (nx422), .A0 (nx2089), .A1 (ADRS[8])) ;
    nand02 ix2090 (.Y (nx2089), .A0 (ADRS[7]), .A1 (nx374)) ;
    dff reg_ADRS_9 (.Q (ADRS[9]), .QB (\$dummy [20]), .D (nx1654), .CLK (nx2149)
        ) ;
    xor2 ix439 (.Y (nx438), .A0 (nx416), .A1 (ADRS[9])) ;
    nor02ii ix417 (.Y (nx416), .A0 (nx2089), .A1 (ADRS[8])) ;
    dff reg_ADRS_10 (.Q (ADRS[10]), .QB (\$dummy [21]), .D (nx1664), .CLK (
        nx2151)) ;
    xnor2 ix455 (.Y (nx454), .A0 (nx2100), .A1 (ADRS[10])) ;
    nand02 ix2101 (.Y (nx2100), .A0 (ADRS[9]), .A1 (nx416)) ;
    dff reg_ADRS_11 (.Q (ADRS[11]), .QB (\$dummy [22]), .D (nx1674), .CLK (
        nx2151)) ;
    xor2 ix471 (.Y (nx470), .A0 (nx448), .A1 (ADRS[11])) ;
    nor02ii ix449 (.Y (nx448), .A0 (nx2100), .A1 (ADRS[10])) ;
    dff reg_ADRS_12 (.Q (ADRS[12]), .QB (\$dummy [23]), .D (nx1684), .CLK (
        nx2151)) ;
    xnor2 ix487 (.Y (nx486), .A0 (nx2111), .A1 (ADRS[12])) ;
    nand02 ix2112 (.Y (nx2111), .A0 (ADRS[11]), .A1 (nx448)) ;
    dff reg_ADRS_13 (.Q (ADRS[13]), .QB (\$dummy [24]), .D (nx1694), .CLK (
        nx2151)) ;
    xor2 ix503 (.Y (nx502), .A0 (nx480), .A1 (ADRS[13])) ;
    nor02ii ix481 (.Y (nx480), .A0 (nx2111), .A1 (ADRS[12])) ;
    dff reg_ADRS_14 (.Q (ADRS[14]), .QB (\$dummy [25]), .D (nx1704), .CLK (
        nx2151)) ;
    xnor2 ix519 (.Y (nx518), .A0 (nx2122), .A1 (ADRS[14])) ;
    nand02 ix2123 (.Y (nx2122), .A0 (ADRS[13]), .A1 (nx480)) ;
    dff reg_ADRS_15 (.Q (ADRS[15]), .QB (\$dummy [26]), .D (nx1714), .CLK (
        nx2151)) ;
    xor2 ix535 (.Y (nx534), .A0 (nx512), .A1 (ADRS[15])) ;
    nor02ii ix513 (.Y (nx512), .A0 (nx2122), .A1 (ADRS[14])) ;
    dff reg_ADRS_16 (.Q (ADRS[16]), .QB (\$dummy [27]), .D (nx1724), .CLK (
        nx2151)) ;
    xnor2 ix543 (.Y (nx542), .A0 (ADRS[16]), .A1 (nx2133)) ;
    nand02 ix2134 (.Y (nx2133), .A0 (ADRS[15]), .A1 (nx512)) ;
    inv01 ix251 (.Y (NOT__4676), .A (nx1900)) ;
    inv01 ix245 (.Y (nx244), .A (nx1858)) ;
    inv02 ix2140 (.Y (nx2141), .A (ENB)) ;
    inv02 ix2142 (.Y (nx2143), .A (ENB)) ;
    inv02 ix2144 (.Y (nx2145), .A (ENB)) ;
    inv02 ix2146 (.Y (nx2147), .A (ENB)) ;
    inv02 ix2148 (.Y (nx2149), .A (ENB)) ;
    inv02 ix2150 (.Y (nx2151), .A (ENB)) ;
    inv02 ix2154 (.Y (nx2155), .A (nx2183)) ;
    inv02 ix2156 (.Y (nx2157), .A (nx2183)) ;
    inv02 ix2158 (.Y (nx2159), .A (nx2183)) ;
    inv01 ix2168 (.Y (nx2169), .A (nx2193)) ;
    xor2 ix563 (.Y (nx562), .A0 (COL_CNT_0), .A1 (W_0)) ;
    xor2 ix1735 (.Y (nx1734), .A0 (COL_CNT_0), .A1 (nx2193)) ;
    and03 ix151 (.Y (nx150), .A0 (nx2175), .A1 (nx1930), .A2 (nx2183)) ;
    inv01 ix2174 (.Y (nx2175), .A (nx1862)) ;
    nor02ii ix141 (.Y (nx1497), .A0 (nx1871), .A1 (ROW_CNT_6)) ;
    and02 ix1869 (.Y (nx1868), .A0 (nx1865), .A1 (nx1871)) ;
    and03 ix115 (.Y (nx114), .A0 (nx2177), .A1 (nx1871), .A2 (nx2183)) ;
    inv01 ix2176 (.Y (nx2177), .A (nx1875)) ;
    nor02ii ix105 (.Y (nx1495), .A0 (nx1884), .A1 (ROW_CNT_4)) ;
    and02 ix1882 (.Y (nx1881), .A0 (nx1878), .A1 (nx1884)) ;
    and03 ix61 (.Y (nx60), .A0 (nx2179), .A1 (nx1888), .A2 (nx2183)) ;
    inv01 ix2178 (.Y (nx2179), .A (nx1892)) ;
    and03 ix43 (.Y (nx42), .A0 (nx2181), .A1 (nx1950), .A2 (nx2183)) ;
    inv01 ix2180 (.Y (nx2181), .A (nx1896)) ;
    nor02ii ix17 (.Y (nx16), .A0 (ROW_CNT_0), .A1 (nx2185)) ;
    xnor2 ix1912 (.Y (nx1911), .A0 (nx1878), .A1 (nx1907)) ;
    xnor2 ix1914 (.Y (nx1913), .A0 (nx1952), .A1 (nx1907)) ;
    xor2 ix1916 (.Y (nx1915), .A0 (ROW_CNT_5), .A1 (nx1907)) ;
    xor2 ix1919 (.Y (nx1918), .A0 (ROW_CNT_2), .A1 (nx1907)) ;
    nor02ii ix1925 (.Y (nx1924), .A0 (ROW_CNT_9), .A1 (nx1933)) ;
    and02 ix1929 (.Y (nx1928), .A0 (nx1933), .A1 (nx1930)) ;
    nor02ii ix177 (.Y (nx1499), .A0 (nx1930), .A1 (ROW_CNT_8)) ;
    nor02ii ix183 (.Y (nx182), .A0 (nx1937), .A1 (nx2185)) ;
    xor2 ix1941 (.Y (nx1940), .A0 (ROW_CNT_0), .A1 (nx1943)) ;
    xor2 ix1961 (.Y (nx234), .A0 (nx1865), .A1 (nx1907)) ;
    mux21 ix1825 (.Y (nx1824), .A0 (nx1973), .A1 (nx1971), .S0 (nx2185)) ;
    xor2 ix1974 (.Y (nx1973), .A0 (nx1971), .A1 (nx1507)) ;
    nor02ii ix691 (.Y (nx1507), .A0 (nx1981), .A1 (COL_CNT_8)) ;
    mux21_ni ix1815 (.Y (nx1814), .A0 (nx682), .A1 (COL_CNT_8), .S0 (nx2185)) ;
    xor2 ix683 (.Y (nx682), .A0 (nx1981), .A1 (nx1976)) ;
    mux21 ix1805 (.Y (nx1804), .A0 (nx1987), .A1 (nx1985), .S0 (nx2185)) ;
    nor02ii ix659 (.Y (nx1505), .A0 (nx1995), .A1 (COL_CNT_6)) ;
    mux21_ni ix1795 (.Y (nx1794), .A0 (nx650), .A1 (COL_CNT_6), .S0 (nx2185)) ;
    xor2 ix651 (.Y (nx650), .A0 (nx1995), .A1 (nx1990)) ;
    mux21 ix1785 (.Y (nx1784), .A0 (nx2001), .A1 (nx1999), .S0 (nx2185)) ;
    nor02ii ix627 (.Y (nx1503), .A0 (nx2009), .A1 (COL_CNT_4)) ;
    mux21_ni ix1775 (.Y (nx1774), .A0 (nx618), .A1 (COL_CNT_4), .S0 (nx2187)) ;
    mux21_ni ix1765 (.Y (nx1764), .A0 (nx602), .A1 (COL_CNT_3), .S0 (nx2187)) ;
    mux21_ni ix1755 (.Y (nx1754), .A0 (nx586), .A1 (COL_CNT_2), .S0 (nx2187)) ;
    mux21 ix1745 (.Y (nx1744), .A0 (nx2025), .A1 (nx2023), .S0 (nx2187)) ;
    xor2 ix2032 (.Y (nx2031), .A0 (COL_CNT_3), .A1 (nx1907)) ;
    xor2 ix2034 (.Y (nx2033), .A0 (nx2023), .A1 (W_1)) ;
    xor2 ix2036 (.Y (nx2035), .A0 (COL_CNT_2), .A1 (nx1907)) ;
    xnor2 ix731 (.Y (nx730), .A0 (nx1990), .A1 (W_2)) ;
    xnor2 ix733 (.Y (nx732), .A0 (nx2004), .A1 (W_2)) ;
    xnor2 ix735 (.Y (nx734), .A0 (nx1999), .A1 (W_2)) ;
    xor2 ix2042 (.Y (nx2041), .A0 (nx1985), .A1 (W_7)) ;
    xor2 ix1565 (.Y (nx1564), .A0 (ADRS[0]), .A1 (nx2193)) ;
    mux21 ix1575 (.Y (nx1574), .A0 (nx2050), .A1 (nx2048), .S0 (nx2187)) ;
    mux21_ni ix1585 (.Y (nx1584), .A0 (nx308), .A1 (ADRS[2]), .S0 (nx2187)) ;
    mux21_ni ix1595 (.Y (nx1594), .A0 (nx326), .A1 (ADRS[3]), .S0 (nx2187)) ;
    mux21_ni ix1605 (.Y (nx1604), .A0 (nx344), .A1 (ADRS[4]), .S0 (nx2189)) ;
    mux21_ni ix1615 (.Y (nx1614), .A0 (nx362), .A1 (ADRS[5]), .S0 (nx2189)) ;
    mux21_ni ix1625 (.Y (nx1624), .A0 (nx380), .A1 (ADRS[6]), .S0 (nx2189)) ;
    mux21_ni ix1635 (.Y (nx1634), .A0 (nx398), .A1 (ADRS[7]), .S0 (nx2189)) ;
    mux21_ni ix1645 (.Y (nx1644), .A0 (nx422), .A1 (ADRS[8]), .S0 (nx2189)) ;
    mux21_ni ix1655 (.Y (nx1654), .A0 (nx438), .A1 (ADRS[9]), .S0 (nx2189)) ;
    mux21_ni ix1665 (.Y (nx1664), .A0 (nx454), .A1 (ADRS[10]), .S0 (nx2189)) ;
    mux21_ni ix1675 (.Y (nx1674), .A0 (nx470), .A1 (ADRS[11]), .S0 (nx2191)) ;
    mux21_ni ix1685 (.Y (nx1684), .A0 (nx486), .A1 (ADRS[12]), .S0 (nx2191)) ;
    mux21_ni ix1695 (.Y (nx1694), .A0 (nx502), .A1 (ADRS[13]), .S0 (nx2191)) ;
    mux21_ni ix1705 (.Y (nx1704), .A0 (nx518), .A1 (ADRS[14]), .S0 (nx2191)) ;
    mux21_ni ix1715 (.Y (nx1714), .A0 (nx534), .A1 (ADRS[15]), .S0 (nx2191)) ;
    mux21_ni ix1725 (.Y (nx1724), .A0 (nx542), .A1 (ADRS[16]), .S0 (nx2191)) ;
    inv02 ix2182 (.Y (nx2183), .A (nx2193)) ;
    inv02 ix2184 (.Y (nx2185), .A (nx2193)) ;
    inv02 ix2186 (.Y (nx2187), .A (nx2193)) ;
    inv02 ix2188 (.Y (nx2189), .A (nx2193)) ;
    inv02 ix2190 (.Y (nx2191), .A (nx2195)) ;
    inv02 ix2192 (.Y (nx2193), .A (NOT__4676)) ;
    inv02 ix2194 (.Y (nx2195), .A (NOT__4676)) ;
    inv04 ix2196 (.Y (nx1907), .A (W_2)) ;
endmodule

