@def title = "Literated Julia Script"

# {{ get_title }}


This page was generated from a **julia script**, automatically converted to markdown with [Literate.jl](https://github.com/fredrikekre/Literate.jl). The conversion happens automatically when the menu is constructed.

## Julia Logo

\figalt{Julia dots}{/assets/images/julia-logo-dots-small.png}

## Math

$$
\exp(i\pi) + 1 = 0
$$

## Code chunks

Here is a julia chunk:

````julia
x = 1
````

````
1
````

and another:

````julia
println("hello world!")
````

````
hello world!

````

## Plot

````julia
using Plots

x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)

plot(x, y)
````

~~~
<?xml version="1.0" encoding="utf-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="576" height="384" viewBox="0 0 2304 1536">
<defs>
  <clipPath id="clip840">
    <rect x="0" y="0" width="2304" height="1536"/>
  </clipPath>
</defs>
<path clip-path="url(#clip840)" d="
M0 1536 L2304 1536 L2304 0 L0 0  Z
  " fill="#ffffff" fill-rule="evenodd" fill-opacity="1"/>
<defs>
  <clipPath id="clip841">
    <rect x="460" y="0" width="1614" height="1536"/>
  </clipPath>
</defs>
<path clip-path="url(#clip840)" d="
M146.518 1423.09 L2256.76 1423.09 L2256.76 47.2441 L146.518 47.2441  Z
  " fill="#ffffff" fill-rule="evenodd" fill-opacity="1"/>
<defs>
  <clipPath id="clip842">
    <rect x="146" y="47" width="2111" height="1377"/>
  </clipPath>
</defs>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  206.242,1423.09 206.242,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  523.246,1423.09 523.246,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  840.251,1423.09 840.251,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  1157.26,1423.09 1157.26,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  1474.26,1423.09 1474.26,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  1791.27,1423.09 1791.27,47.2441 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  2108.27,1423.09 2108.27,47.2441 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,1423.09 2256.76,1423.09 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  206.242,1423.09 206.242,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  523.246,1423.09 523.246,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  840.251,1423.09 840.251,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  1157.26,1423.09 1157.26,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  1474.26,1423.09 1474.26,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  1791.27,1423.09 1791.27,1404.19 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  2108.27,1423.09 2108.27,1404.19 
  "/>
<path clip-path="url(#clip840)" d="M206.242 1453.24 Q202.631 1453.24 200.802 1456.8 Q198.996 1460.35 198.996 1467.47 Q198.996 1474.58 200.802 1478.15 Q202.631 1481.69 206.242 1481.69 Q209.876 1481.69 211.681 1478.15 Q213.51 1474.58 213.51 1467.47 Q213.51 1460.35 211.681 1456.8 Q209.876 1453.24 206.242 1453.24 M206.242 1449.53 Q212.052 1449.53 215.107 1454.14 Q218.186 1458.72 218.186 1467.47 Q218.186 1476.2 215.107 1480.81 Q212.052 1485.39 206.242 1485.39 Q200.431 1485.39 197.353 1480.81 Q194.297 1476.2 194.297 1467.47 Q194.297 1458.72 197.353 1454.14 Q200.431 1449.53 206.242 1449.53 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M513.628 1480.78 L521.267 1480.78 L521.267 1454.42 L512.957 1456.09 L512.957 1451.83 L521.221 1450.16 L525.897 1450.16 L525.897 1480.78 L533.536 1480.78 L533.536 1484.72 L513.628 1484.72 L513.628 1480.78 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M834.904 1480.78 L851.224 1480.78 L851.224 1484.72 L829.279 1484.72 L829.279 1480.78 Q831.941 1478.03 836.525 1473.4 Q841.131 1468.75 842.312 1467.41 Q844.557 1464.88 845.437 1463.15 Q846.339 1461.39 846.339 1459.7 Q846.339 1456.94 844.395 1455.21 Q842.474 1453.47 839.372 1453.47 Q837.173 1453.47 834.719 1454.23 Q832.288 1455 829.511 1456.55 L829.511 1451.83 Q832.335 1450.69 834.788 1450.11 Q837.242 1449.53 839.279 1449.53 Q844.649 1449.53 847.844 1452.22 Q851.038 1454.91 851.038 1459.4 Q851.038 1461.53 850.228 1463.45 Q849.441 1465.34 847.335 1467.94 Q846.756 1468.61 843.654 1471.83 Q840.552 1475.02 834.904 1480.78 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M1161.5 1466.09 Q1164.86 1466.8 1166.74 1469.07 Q1168.63 1471.34 1168.63 1474.67 Q1168.63 1479.79 1165.11 1482.59 Q1161.6 1485.39 1155.12 1485.39 Q1152.94 1485.39 1150.62 1484.95 Q1148.33 1484.53 1145.88 1483.68 L1145.88 1479.16 Q1147.82 1480.3 1150.14 1480.88 Q1152.45 1481.46 1154.98 1481.46 Q1159.37 1481.46 1161.67 1479.72 Q1163.98 1477.98 1163.98 1474.67 Q1163.98 1471.62 1161.83 1469.91 Q1159.7 1468.17 1155.88 1468.17 L1151.85 1468.17 L1151.85 1464.33 L1156.06 1464.33 Q1159.51 1464.33 1161.34 1462.96 Q1163.17 1461.57 1163.17 1458.98 Q1163.17 1456.32 1161.27 1454.91 Q1159.4 1453.47 1155.88 1453.47 Q1153.96 1453.47 1151.76 1453.89 Q1149.56 1454.3 1146.92 1455.18 L1146.92 1451.02 Q1149.58 1450.28 1151.9 1449.91 Q1154.24 1449.53 1156.3 1449.53 Q1161.62 1449.53 1164.72 1451.97 Q1167.82 1454.37 1167.82 1458.49 Q1167.82 1461.36 1166.18 1463.35 Q1164.54 1465.32 1161.5 1466.09 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M1477.27 1454.23 L1465.46 1472.68 L1477.27 1472.68 L1477.27 1454.23 M1476.04 1450.16 L1481.92 1450.16 L1481.92 1472.68 L1486.85 1472.68 L1486.85 1476.57 L1481.92 1476.57 L1481.92 1484.72 L1477.27 1484.72 L1477.27 1476.57 L1461.67 1476.57 L1461.67 1472.06 L1476.04 1450.16 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M1781.54 1450.16 L1799.9 1450.16 L1799.9 1454.1 L1785.83 1454.1 L1785.83 1462.57 Q1786.84 1462.22 1787.86 1462.06 Q1788.88 1461.87 1789.9 1461.87 Q1795.69 1461.87 1799.07 1465.04 Q1802.45 1468.22 1802.45 1473.63 Q1802.45 1479.21 1798.97 1482.31 Q1795.5 1485.39 1789.18 1485.39 Q1787.01 1485.39 1784.74 1485.02 Q1782.49 1484.65 1780.09 1483.91 L1780.09 1479.21 Q1782.17 1480.34 1784.39 1480.9 Q1786.61 1481.46 1789.09 1481.46 Q1793.09 1481.46 1795.43 1479.35 Q1797.77 1477.24 1797.77 1473.63 Q1797.77 1470.02 1795.43 1467.91 Q1793.09 1465.81 1789.09 1465.81 Q1787.22 1465.81 1785.34 1466.22 Q1783.49 1466.64 1781.54 1467.52 L1781.54 1450.16 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M2108.68 1465.58 Q2105.53 1465.58 2103.68 1467.73 Q2101.85 1469.88 2101.85 1473.63 Q2101.85 1477.36 2103.68 1479.53 Q2105.53 1481.69 2108.68 1481.69 Q2111.82 1481.69 2113.65 1479.53 Q2115.5 1477.36 2115.5 1473.63 Q2115.5 1469.88 2113.65 1467.73 Q2111.82 1465.58 2108.68 1465.58 M2117.96 1450.92 L2117.96 1455.18 Q2116.2 1454.35 2114.39 1453.91 Q2112.61 1453.47 2110.85 1453.47 Q2106.22 1453.47 2103.77 1456.6 Q2101.34 1459.72 2100.99 1466.04 Q2102.36 1464.03 2104.42 1462.96 Q2106.48 1461.87 2108.95 1461.87 Q2114.16 1461.87 2117.17 1465.04 Q2120.2 1468.19 2120.2 1473.63 Q2120.2 1478.96 2117.06 1482.17 Q2113.91 1485.39 2108.68 1485.39 Q2102.68 1485.39 2099.51 1480.81 Q2096.34 1476.2 2096.34 1467.47 Q2096.34 1459.28 2100.23 1454.42 Q2104.12 1449.53 2110.67 1449.53 Q2112.43 1449.53 2114.21 1449.88 Q2116.01 1450.23 2117.96 1450.92 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  146.518,1398.18 2256.76,1398.18 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  146.518,1066.66 2256.76,1066.66 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  146.518,735.151 2256.76,735.151 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  146.518,403.637 2256.76,403.637 
  "/>
<polyline clip-path="url(#clip842)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:2; stroke-opacity:0.1; fill:none" points="
  146.518,72.1241 2256.76,72.1241 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,1423.09 146.518,47.2441 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,1398.18 165.416,1398.18 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,1066.66 165.416,1066.66 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,735.151 165.416,735.151 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,403.637 165.416,403.637 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  146.518,72.1241 165.416,72.1241 
  "/>
<path clip-path="url(#clip840)" d="M51.8425 1398.63 L81.5183 1398.63 L81.5183 1402.56 L51.8425 1402.56 L51.8425 1398.63 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M95.6386 1411.52 L111.958 1411.52 L111.958 1415.46 L90.0136 1415.46 L90.0136 1411.52 Q92.6756 1408.77 97.2589 1404.14 Q101.865 1399.49 103.046 1398.14 Q105.291 1395.62 106.171 1393.88 Q107.074 1392.12 107.074 1390.43 Q107.074 1387.68 105.129 1385.94 Q103.208 1384.21 100.106 1384.21 Q97.9071 1384.21 95.4534 1384.97 Q93.0228 1385.74 90.2451 1387.29 L90.2451 1382.56 Q93.0691 1381.43 95.5228 1380.85 Q97.9765 1380.27 100.014 1380.27 Q105.384 1380.27 108.578 1382.96 Q111.773 1385.64 111.773 1390.13 Q111.773 1392.26 110.963 1394.18 Q110.176 1396.08 108.069 1398.68 Q107.49 1399.35 104.389 1402.56 Q101.287 1405.76 95.6386 1411.52 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M51.4721 1067.12 L81.1479 1067.12 L81.1479 1071.05 L51.4721 1071.05 L51.4721 1067.12 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M92.0506 1080.01 L99.6895 1080.01 L99.6895 1053.64 L91.3793 1055.31 L91.3793 1051.05 L99.6432 1049.38 L104.319 1049.38 L104.319 1080.01 L111.958 1080.01 L111.958 1083.94 L92.0506 1083.94 L92.0506 1080.01 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M100.014 720.949 Q96.4024 720.949 94.5737 724.514 Q92.7682 728.056 92.7682 735.185 Q92.7682 742.292 94.5737 745.857 Q96.4024 749.398 100.014 749.398 Q103.648 749.398 105.453 745.857 Q107.282 742.292 107.282 735.185 Q107.282 728.056 105.453 724.514 Q103.648 720.949 100.014 720.949 M100.014 717.246 Q105.824 717.246 108.879 721.852 Q111.958 726.436 111.958 735.185 Q111.958 743.912 108.879 748.519 Q105.824 753.102 100.014 753.102 Q94.2034 753.102 91.1247 748.519 Q88.0692 743.912 88.0692 735.185 Q88.0692 726.436 91.1247 721.852 Q94.2034 717.246 100.014 717.246 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M92.0506 416.982 L99.6895 416.982 L99.6895 390.617 L91.3793 392.283 L91.3793 388.024 L99.6432 386.357 L104.319 386.357 L104.319 416.982 L111.958 416.982 L111.958 420.917 L92.0506 420.917 L92.0506 416.982 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M95.6386 85.469 L111.958 85.469 L111.958 89.4041 L90.0136 89.4041 L90.0136 85.469 Q92.6756 82.7144 97.2589 78.0848 Q101.865 73.432 103.046 72.0894 Q105.291 69.5663 106.171 67.8302 Q107.074 66.0709 107.074 64.3811 Q107.074 61.6265 105.129 59.8904 Q103.208 58.1543 100.106 58.1543 Q97.9071 58.1543 95.4534 58.9182 Q93.0228 59.6821 90.2451 61.233 L90.2451 56.5108 Q93.0691 55.3766 95.5228 54.7979 Q97.9765 54.2192 100.014 54.2192 Q105.384 54.2192 108.578 56.9043 Q111.773 59.5895 111.773 64.0802 Q111.773 66.2098 110.963 68.1311 Q110.176 70.0293 108.069 72.6218 Q107.49 73.2931 104.389 76.5107 Q101.287 79.7051 95.6386 85.469 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><polyline clip-path="url(#clip842)" style="stroke:#009af9; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  206.242,735.151 209.412,711.952 212.582,688.798 215.752,665.731 218.922,642.796 222.092,620.037 225.262,597.496 228.432,575.215 231.602,553.237 234.772,531.603 
  237.942,510.353 241.112,489.527 244.282,469.163 247.452,449.298 250.622,429.968 253.792,411.21 256.962,393.055 260.132,375.536 263.303,358.684 266.473,342.528 
  269.643,327.095 272.813,312.41 275.983,298.499 279.153,285.383 282.323,273.081 285.493,261.614 288.663,250.996 291.833,241.243 295.003,232.366 298.173,224.376 
  301.343,217.281 304.513,211.088 307.683,205.801 310.853,201.42 314.023,197.947 317.193,195.38 320.363,193.713 323.533,192.94 326.703,193.053 329.874,194.042 
  333.044,195.893 336.214,198.594 339.384,202.126 342.554,206.473 345.724,211.613 348.894,217.526 352.064,224.187 355.234,231.572 358.404,239.653 361.574,248.402 
  364.744,257.79 367.914,267.786 371.084,278.357 374.254,289.469 377.424,301.088 380.594,313.178 383.764,325.702 386.934,338.624 390.104,351.904 393.275,365.504 
  396.445,379.384 399.615,393.505 402.785,407.826 405.955,422.307 409.125,436.908 412.295,451.587 415.465,466.304 418.635,481.018 421.805,495.691 424.975,510.281 
  428.145,524.75 431.315,539.059 434.485,553.171 437.655,567.046 440.825,580.651 443.995,593.948 447.165,606.904 450.335,619.486 453.505,631.66 456.675,643.398 
  459.846,654.669 463.016,665.445 466.186,675.701 469.356,685.41 472.526,694.551 475.696,703.102 478.866,711.042 482.036,718.354 485.206,725.022 488.376,731.032 
  491.546,736.372 494.716,741.03 497.886,744.999 501.056,748.273 504.226,750.847 507.396,752.719 510.566,753.888 513.736,754.356 516.906,754.127 520.076,753.207 
  523.246,751.603 526.417,749.325 529.587,746.384 532.757,742.795 535.927,738.573 539.097,733.734 542.267,728.297 545.437,722.285 548.607,715.718 551.777,708.621 
  554.947,701.019 558.117,692.941 561.287,684.413 564.457,675.466 567.627,666.131 570.797,656.441 573.967,646.428 577.137,636.127 580.307,625.574 583.477,614.805 
  586.647,603.856 589.818,592.765 592.988,581.57 596.158,570.31 599.328,559.023 602.498,547.749 605.668,536.526 608.838,525.395 612.008,514.395 615.178,503.563 
  618.348,492.94 621.518,482.564 624.688,472.472 627.858,462.701 631.028,453.29 634.198,444.273 637.368,435.686 640.538,427.562 643.708,419.935 646.878,412.837 
  650.048,406.298 653.218,400.348 656.389,395.015 659.559,390.325 662.729,386.304 665.899,382.974 669.069,380.359 672.239,378.477 675.409,377.347 678.579,376.986 
  681.749,377.408 684.919,378.626 688.089,380.651 691.259,383.491 694.429,387.154 697.599,391.643 700.769,396.963 703.939,403.112 707.109,410.09 710.279,417.894 
  713.449,426.517 716.619,435.952 719.79,446.19 722.96,457.218 726.13,469.024 729.3,481.59 732.47,494.9 735.64,508.934 738.81,523.671 741.98,539.087 
  745.15,555.157 748.32,571.855 751.49,589.153 754.66,607.02 757.83,625.425 761,644.336 764.17,663.718 767.34,683.535 770.51,703.751 773.68,724.329 
  776.85,745.229 780.02,766.412 783.19,787.838 786.361,809.464 789.531,831.25 792.701,853.152 795.871,875.128 799.041,897.134 802.211,919.128 805.381,941.066 
  808.551,962.903 811.721,984.598 814.891,1006.11 818.061,1027.38 821.231,1048.39 824.401,1069.08 827.571,1089.41 830.741,1109.35 833.911,1128.85 837.081,1147.88 
  840.251,1166.39 843.421,1184.35 846.591,1201.72 849.762,1218.48 852.932,1234.57 856.102,1249.98 859.272,1264.68 862.442,1278.62 865.612,1291.79 868.782,1304.17 
  871.952,1315.72 875.122,1326.43 878.292,1336.27 881.462,1345.23 884.632,1353.29 887.802,1360.44 890.972,1366.66 894.142,1371.95 897.312,1376.29 900.482,1379.69 
  903.652,1382.13 906.822,1383.62 909.992,1384.15 913.162,1383.73 916.333,1382.36 919.503,1380.06 922.673,1376.82 925.843,1372.66 929.013,1367.59 932.183,1361.63 
  935.353,1354.8 938.523,1347.1 941.693,1338.57 944.863,1329.23 948.033,1319.1 951.203,1308.2 954.373,1296.57 957.543,1284.23 960.713,1271.21 963.883,1257.55 
  967.053,1243.27 970.223,1228.42 973.393,1213.03 976.563,1197.14 979.734,1180.78 982.904,1163.99 986.074,1146.81 989.244,1129.29 992.414,1111.45 995.584,1093.36 
  998.754,1075.03 1001.92,1056.53 1005.09,1037.89 1008.26,1019.14 1011.43,1000.35 1014.6,981.537 1017.77,962.755 1020.94,944.043 1024.11,925.442 1027.28,906.994 
  1030.45,888.737 1033.62,870.711 1036.79,852.954 1039.96,835.505 1043.13,818.398 1046.3,801.671 1049.47,785.357 1052.64,769.488 1055.81,754.097 1058.98,739.214 
  1062.15,724.867 1065.32,711.084 1068.49,697.89 1071.66,685.309 1074.83,673.362 1078.01,662.071 1081.18,651.454 1084.35,641.527 1087.52,632.305 1090.69,623.801 
  1093.86,616.025 1097.03,608.986 1100.2,602.691 1103.37,597.144 1106.54,592.349 1109.71,588.305 1112.88,585.012 1116.05,582.465 1119.22,580.66 1122.39,579.589 
  1125.56,579.242 1128.73,579.609 1131.9,580.675 1135.07,582.426 1138.24,584.844 1141.41,587.911 1144.58,591.606 1147.75,595.907 1150.92,600.791 1154.09,606.231 
  1157.26,612.202 1160.43,618.674 1163.6,625.618 1166.77,633.004 1169.94,640.799 1173.11,648.971 1176.28,657.484 1179.45,666.305 1182.62,675.397 1185.79,684.724 
  1188.96,694.249 1192.13,703.934 1195.3,713.741 1198.47,723.631 1201.64,733.567 1204.81,743.508 1207.98,753.417 1211.15,763.255 1214.32,772.983 1217.49,782.563 
  1220.66,791.957 1223.83,801.128 1227,810.039 1230.17,818.654 1233.34,826.939 1236.51,834.857 1239.68,842.377 1242.85,849.465 1246.02,856.091 1249.19,862.225 
  1252.36,867.837 1255.53,872.901 1258.7,877.39 1261.87,881.281 1265.04,884.55 1268.21,887.177 1271.38,889.143 1274.55,890.428 1277.72,891.019 1280.89,890.901 
  1284.06,890.062 1287.23,888.491 1290.4,886.182 1293.57,883.127 1296.74,879.322 1299.91,874.766 1303.08,869.459 1306.25,863.402 1309.42,856.599 1312.59,849.057 
  1315.76,840.784 1318.93,831.789 1322.1,822.085 1325.27,811.686 1328.44,800.608 1331.61,788.868 1334.78,776.487 1337.95,763.485 1341.12,749.887 1344.29,735.717 
  1347.46,721.002 1350.63,705.769 1353.8,690.049 1356.97,673.874 1360.14,657.274 1363.31,640.285 1366.48,622.941 1369.65,605.278 1372.82,587.333 1375.99,569.146 
  1379.16,550.754 1382.33,532.197 1385.5,513.517 1388.67,494.753 1391.84,475.947 1395.01,457.141 1398.18,438.377 1401.35,419.697 1404.52,401.144 1407.69,382.76 
  1410.86,364.586 1414.03,346.665 1417.2,329.038 1420.37,311.746 1423.54,294.829 1426.71,278.327 1429.88,262.279 1433.05,246.723 1436.22,231.697 1439.39,217.236 
  1442.56,203.376 1445.73,190.15 1448.9,177.59 1452.07,165.728 1455.24,154.593 1458.41,144.214 1461.58,134.616 1464.75,125.825 1467.92,117.863 1471.09,110.752 
  1474.26,104.512 1477.43,99.1589 1480.6,94.7092 1483.77,91.1762 1486.94,88.5715 1490.11,86.9047 1493.28,86.1831 1496.45,86.412 1499.62,87.5947 1502.79,89.7323 
  1505.96,92.8237 1509.13,96.8659 1512.3,101.854 1515.47,107.779 1518.64,114.634 1521.81,122.405 1524.98,131.081 1528.15,140.644 1531.32,151.078 1534.49,162.363 
  1537.66,174.477 1540.83,187.399 1544,201.102 1547.17,215.559 1550.34,230.744 1553.51,246.625 1556.68,263.172 1559.85,280.351 1563.02,298.128 1566.19,316.468 
  1569.36,335.334 1572.53,354.688 1575.7,374.491 1578.87,394.704 1582.04,415.286 1585.21,436.196 1588.38,457.392 1591.55,478.831 1594.72,500.47 1597.89,522.267 
  1601.06,544.177 1604.23,566.158 1607.4,588.165 1610.57,610.156 1613.74,632.086 1616.91,653.913 1620.08,675.595 1623.25,697.089 1626.42,718.353 1629.59,739.348 
  1632.76,760.033 1635.93,780.369 1639.1,800.317 1642.27,819.842 1645.44,838.906 1648.61,857.476 1651.78,875.518 1654.95,893 1658.12,909.893 1661.29,926.166 
  1664.46,941.793 1667.63,956.749 1670.8,971.009 1673.97,984.552 1677.14,997.357 1680.31,1009.41 1683.48,1020.68 1686.65,1031.17 1689.82,1040.87 1692.99,1049.75 
  1696.16,1057.81 1699.33,1065.06 1702.5,1071.47 1705.67,1077.05 1708.84,1081.81 1712.01,1085.73 1715.18,1088.83 1718.35,1091.12 1721.52,1092.59 1724.69,1093.27 
  1727.86,1093.15 1731.04,1092.27 1734.21,1090.62 1737.38,1088.24 1740.55,1085.13 1743.72,1081.33 1746.89,1076.85 1750.06,1071.72 1753.23,1065.96 1756.4,1059.61 
  1759.57,1052.69 1762.74,1045.22 1765.91,1037.26 1769.08,1028.81 1772.25,1019.93 1775.42,1010.64 1778.59,1000.98 1781.76,990.985 1784.93,980.695 1788.1,970.147 
  1791.27,959.377 1794.44,948.426 1797.61,937.333 1800.78,926.135 1803.95,914.873 1807.12,903.586 1810.29,892.313 1813.46,881.093 1816.63,869.965 1819.8,858.967 
  1822.97,848.136 1826.14,837.51 1829.31,827.125 1832.48,817.017 1835.65,807.22 1838.82,797.768 1841.99,788.694 1845.16,780.03 1848.33,771.805 1851.5,764.048 
  1854.67,756.788 1857.84,750.05 1861.01,743.858 1864.18,738.236 1867.35,733.204 1870.52,728.783 1873.69,724.991 1876.86,721.842 1880.03,719.352 1883.2,717.532 
  1886.37,716.393 1889.54,715.943 1892.71,716.189 1895.88,717.134 1899.05,718.782 1902.22,721.132 1905.39,724.184 1908.56,727.932 1911.73,732.372 1914.9,737.495 
  1918.07,743.293 1921.24,749.753 1924.41,756.862 1927.58,764.604 1930.75,772.962 1933.92,781.917 1937.09,791.448 1940.26,801.532 1943.43,812.145 1946.6,823.261 
  1949.77,834.853 1952.94,846.892 1956.11,859.348 1959.28,872.188 1962.45,885.38 1965.62,898.891 1968.79,912.684 1971.96,926.724 1975.13,940.974 1978.3,955.396 
  1981.47,969.952 1984.64,984.603 1987.81,999.309 1990.98,1014.03 1994.15,1028.72 1997.32,1043.35 2000.49,1057.88 2003.66,1072.25 2006.83,1086.44 2010,1100.4 
  2013.17,1114.1 2016.34,1127.48 2019.51,1140.52 2022.68,1153.18 2025.85,1165.41 2029.02,1177.18 2032.19,1188.46 2035.36,1199.21 2038.53,1209.39 2041.7,1218.98 
  2044.87,1227.93 2048.04,1236.23 2051.21,1243.84 2054.38,1250.73 2057.55,1256.89 2060.72,1262.28 2063.89,1266.88 2067.06,1270.67 2070.23,1273.64 2073.4,1275.76 
  2076.57,1277.03 2079.74,1277.42 2082.91,1276.93 2086.08,1275.55 2089.25,1273.27 2092.42,1270.09 2095.59,1265.99 2098.76,1261 2101.93,1255.09 2105.1,1248.28 
  2108.27,1240.58 2111.44,1231.98 2114.61,1222.51 2117.78,1212.16 2120.95,1200.96 2124.12,1188.93 2127.29,1176.07 2130.46,1162.41 2133.63,1147.97 2136.8,1132.77 
  2139.97,1116.84 2143.14,1100.21 2146.31,1082.9 2149.48,1064.94 2152.65,1046.37 2155.82,1027.22 2158.99,1007.52 2162.16,987.313 2165.33,966.63 2168.5,945.511 
  2171.67,923.995 2174.84,902.122 2178.01,879.933 2181.18,857.47 2184.35,834.776 2187.52,811.892 2190.69,788.863 2193.86,765.732 2197.03,742.542 
  "/>
<path clip-path="url(#clip840)" d="
M1903.58 196.786 L2186.41 196.786 L2186.41 93.1056 L1903.58 93.1056  Z
  " fill="#ffffff" fill-rule="evenodd" fill-opacity="1"/>
<polyline clip-path="url(#clip840)" style="stroke:#000000; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  1903.58,196.786 2186.41,196.786 2186.41,93.1056 1903.58,93.1056 1903.58,196.786 
  "/>
<polyline clip-path="url(#clip840)" style="stroke:#009af9; stroke-linecap:butt; stroke-linejoin:round; stroke-width:4; stroke-opacity:1; fill:none" points="
  1926.62,144.946 2064.86,144.946 
  "/>
<path clip-path="url(#clip840)" d="M2101.75 164.633 Q2099.94 169.263 2098.23 170.675 Q2096.52 172.087 2093.65 172.087 L2090.24 172.087 L2090.24 168.522 L2092.74 168.522 Q2094.5 168.522 2095.47 167.688 Q2096.45 166.855 2097.63 163.753 L2098.39 161.809 L2087.9 136.3 L2092.42 136.3 L2100.52 156.577 L2108.62 136.3 L2113.14 136.3 L2101.75 164.633 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /><path clip-path="url(#clip840)" d="M2120.43 158.29 L2128.07 158.29 L2128.07 131.925 L2119.76 133.591 L2119.76 129.332 L2128.02 127.666 L2132.7 127.666 L2132.7 158.29 L2140.33 158.29 L2140.33 162.226 L2120.43 162.226 L2120.43 158.29 Z" fill="#000000" fill-rule="evenodd" fill-opacity="1" /></svg>

~~~
