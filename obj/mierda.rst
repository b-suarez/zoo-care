                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:04:38 2015
                              5 ;--------------------------------------------------------
                              6 	.module mierda
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _mierda
                             13 	.globl _mierda_tileset
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 ;--------------------------------------------------------
                             18 ; ram data
                             19 ;--------------------------------------------------------
                             20 	.area _DATA
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _INITIALIZED
                             25 ;--------------------------------------------------------
                             26 ; absolute external ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DABS (ABS)
                             29 ;--------------------------------------------------------
                             30 ; global & static initialisations
                             31 ;--------------------------------------------------------
                             32 	.area _HOME
                             33 	.area _GSINIT
                             34 	.area _GSFINAL
                             35 	.area _GSINIT
                             36 ;--------------------------------------------------------
                             37 ; Home
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _HOME
                             41 ;--------------------------------------------------------
                             42 ; code
                             43 ;--------------------------------------------------------
                             44 	.area _CODE
                             45 	.area _CODE
   8282                      46 _mierda_tileset:
   8282 84 82                47 	.dw _mierda
   8284                      48 _mierda:
   8284 30                   49 	.db #0x30	; 48	'0'
   8285 30                   50 	.db #0x30	; 48	'0'
   8286 30                   51 	.db #0x30	; 48	'0'
   8287 30                   52 	.db #0x30	; 48	'0'
   8288 30                   53 	.db #0x30	; 48	'0'
   8289 30                   54 	.db #0x30	; 48	'0'
   828A 30                   55 	.db #0x30	; 48	'0'
   828B 30                   56 	.db #0x30	; 48	'0'
   828C 30                   57 	.db #0x30	; 48	'0'
   828D 30                   58 	.db #0x30	; 48	'0'
   828E 30                   59 	.db #0x30	; 48	'0'
   828F 30                   60 	.db #0x30	; 48	'0'
   8290 30                   61 	.db #0x30	; 48	'0'
   8291 98                   62 	.db #0x98	; 152
   8292 30                   63 	.db #0x30	; 48	'0'
   8293 30                   64 	.db #0x30	; 48	'0'
   8294 30                   65 	.db #0x30	; 48	'0'
   8295 30                   66 	.db #0x30	; 48	'0'
   8296 30                   67 	.db #0x30	; 48	'0'
   8297 30                   68 	.db #0x30	; 48	'0'
   8298 30                   69 	.db #0x30	; 48	'0'
   8299 30                   70 	.db #0x30	; 48	'0'
   829A 30                   71 	.db #0x30	; 48	'0'
   829B CC                   72 	.db #0xCC	; 204
   829C 30                   73 	.db #0x30	; 48	'0'
   829D 64                   74 	.db #0x64	; 100	'd'
   829E 30                   75 	.db #0x30	; 48	'0'
   829F 64                   76 	.db #0x64	; 100	'd'
   82A0 30                   77 	.db #0x30	; 48	'0'
   82A1 30                   78 	.db #0x30	; 48	'0'
   82A2 64                   79 	.db #0x64	; 100	'd'
   82A3 30                   80 	.db #0x30	; 48	'0'
   82A4 30                   81 	.db #0x30	; 48	'0'
   82A5 64                   82 	.db #0x64	; 100	'd'
   82A6 30                   83 	.db #0x30	; 48	'0'
   82A7 64                   84 	.db #0x64	; 100	'd'
   82A8 30                   85 	.db #0x30	; 48	'0'
   82A9 64                   86 	.db #0x64	; 100	'd'
   82AA 98                   87 	.db #0x98	; 152
   82AB 30                   88 	.db #0x30	; 48	'0'
   82AC 64                   89 	.db #0x64	; 100	'd'
   82AD 30                   90 	.db #0x30	; 48	'0'
   82AE 30                   91 	.db #0x30	; 48	'0'
   82AF 64                   92 	.db #0x64	; 100	'd'
   82B0 30                   93 	.db #0x30	; 48	'0'
   82B1 64                   94 	.db #0x64	; 100	'd'
   82B2 98                   95 	.db #0x98	; 152
   82B3 30                   96 	.db #0x30	; 48	'0'
   82B4 CC                   97 	.db #0xCC	; 204
   82B5 30                   98 	.db #0x30	; 48	'0'
   82B6 64                   99 	.db #0x64	; 100	'd'
   82B7 98                  100 	.db #0x98	; 152
   82B8 30                  101 	.db #0x30	; 48	'0'
   82B9 CC                  102 	.db #0xCC	; 204
   82BA 30                  103 	.db #0x30	; 48	'0'
   82BB 30                  104 	.db #0x30	; 48	'0'
   82BC 98                  105 	.db #0x98	; 152
   82BD 30                  106 	.db #0x30	; 48	'0'
   82BE 64                  107 	.db #0x64	; 100	'd'
   82BF 30                  108 	.db #0x30	; 48	'0'
   82C0 30                  109 	.db #0x30	; 48	'0'
   82C1 98                  110 	.db #0x98	; 152
   82C2 30                  111 	.db #0x30	; 48	'0'
   82C3 98                  112 	.db #0x98	; 152
   82C4 30                  113 	.db #0x30	; 48	'0'
   82C5 30                  114 	.db #0x30	; 48	'0'
   82C6 CC                  115 	.db #0xCC	; 204
   82C7 30                  116 	.db #0x30	; 48	'0'
   82C8 64                  117 	.db #0x64	; 100	'd'
   82C9 30                  118 	.db #0x30	; 48	'0'
   82CA 30                  119 	.db #0x30	; 48	'0'
   82CB 98                  120 	.db #0x98	; 152
   82CC 30                  121 	.db #0x30	; 48	'0'
   82CD 98                  122 	.db #0x98	; 152
   82CE 24                  123 	.db #0x24	; 36
   82CF 18                  124 	.db #0x18	; 24
   82D0 30                  125 	.db #0x30	; 48	'0'
   82D1 30                  126 	.db #0x30	; 48	'0'
   82D2 CC                  127 	.db #0xCC	; 204
   82D3 30                  128 	.db #0x30	; 48	'0'
   82D4 30                  129 	.db #0x30	; 48	'0'
   82D5 98                  130 	.db #0x98	; 152
   82D6 30                  131 	.db #0x30	; 48	'0'
   82D7 30                  132 	.db #0x30	; 48	'0'
   82D8 24                  133 	.db #0x24	; 36
   82D9 18                  134 	.db #0x18	; 24
   82DA 30                  135 	.db #0x30	; 48	'0'
   82DB 30                  136 	.db #0x30	; 48	'0'
   82DC 98                  137 	.db #0x98	; 152
   82DD 30                  138 	.db #0x30	; 48	'0'
   82DE 30                  139 	.db #0x30	; 48	'0'
   82DF 30                  140 	.db #0x30	; 48	'0'
   82E0 30                  141 	.db #0x30	; 48	'0'
   82E1 0C                  142 	.db #0x0C	; 12
   82E2 0C                  143 	.db #0x0C	; 12
   82E3 0C                  144 	.db #0x0C	; 12
   82E4 0C                  145 	.db #0x0C	; 12
   82E5 30                  146 	.db #0x30	; 48	'0'
   82E6 98                  147 	.db #0x98	; 152
   82E7 30                  148 	.db #0x30	; 48	'0'
   82E8 30                  149 	.db #0x30	; 48	'0'
   82E9 30                  150 	.db #0x30	; 48	'0'
   82EA 30                  151 	.db #0x30	; 48	'0'
   82EB 0C                  152 	.db #0x0C	; 12
   82EC 4C                  153 	.db #0x4C	; 76	'L'
   82ED 0C                  154 	.db #0x0C	; 12
   82EE 0C                  155 	.db #0x0C	; 12
   82EF 30                  156 	.db #0x30	; 48	'0'
   82F0 30                  157 	.db #0x30	; 48	'0'
   82F1 30                  158 	.db #0x30	; 48	'0'
   82F2 30                  159 	.db #0x30	; 48	'0'
   82F3 30                  160 	.db #0x30	; 48	'0'
   82F4 0C                  161 	.db #0x0C	; 12
   82F5 0C                  162 	.db #0x0C	; 12
   82F6 0C                  163 	.db #0x0C	; 12
   82F7 0C                  164 	.db #0x0C	; 12
   82F8 0C                  165 	.db #0x0C	; 12
   82F9 0C                  166 	.db #0x0C	; 12
   82FA 30                  167 	.db #0x30	; 48	'0'
   82FB 30                  168 	.db #0x30	; 48	'0'
   82FC 30                  169 	.db #0x30	; 48	'0'
   82FD 30                  170 	.db #0x30	; 48	'0'
   82FE 0C                  171 	.db #0x0C	; 12
   82FF 8C                  172 	.db #0x8C	; 140
   8300 0C                  173 	.db #0x0C	; 12
   8301 0C                  174 	.db #0x0C	; 12
   8302 8C                  175 	.db #0x8C	; 140
   8303 0C                  176 	.db #0x0C	; 12
   8304 30                  177 	.db #0x30	; 48	'0'
   8305 30                  178 	.db #0x30	; 48	'0'
   8306 30                  179 	.db #0x30	; 48	'0'
   8307 30                  180 	.db #0x30	; 48	'0'
   8308 0C                  181 	.db #0x0C	; 12
   8309 0C                  182 	.db #0x0C	; 12
   830A 0C                  183 	.db #0x0C	; 12
   830B 0C                  184 	.db #0x0C	; 12
   830C 0C                  185 	.db #0x0C	; 12
   830D 0C                  186 	.db #0x0C	; 12
   830E 30                  187 	.db #0x30	; 48	'0'
   830F 30                  188 	.db #0x30	; 48	'0'
   8310 30                  189 	.db #0x30	; 48	'0'
   8311 0C                  190 	.db #0x0C	; 12
   8312 0C                  191 	.db #0x0C	; 12
   8313 0C                  192 	.db #0x0C	; 12
   8314 4C                  193 	.db #0x4C	; 76	'L'
   8315 0C                  194 	.db #0x0C	; 12
   8316 0C                  195 	.db #0x0C	; 12
   8317 0C                  196 	.db #0x0C	; 12
   8318 0C                  197 	.db #0x0C	; 12
   8319 30                  198 	.db #0x30	; 48	'0'
   831A 30                  199 	.db #0x30	; 48	'0'
   831B 0C                  200 	.db #0x0C	; 12
   831C 0C                  201 	.db #0x0C	; 12
   831D 0C                  202 	.db #0x0C	; 12
   831E 0C                  203 	.db #0x0C	; 12
   831F 0C                  204 	.db #0x0C	; 12
   8320 0C                  205 	.db #0x0C	; 12
   8321 8C                  206 	.db #0x8C	; 140
   8322 0C                  207 	.db #0x0C	; 12
   8323 30                  208 	.db #0x30	; 48	'0'
   8324 30                  209 	.db #0x30	; 48	'0'
   8325 0C                  210 	.db #0x0C	; 12
   8326 0C                  211 	.db #0x0C	; 12
   8327 0C                  212 	.db #0x0C	; 12
   8328 0C                  213 	.db #0x0C	; 12
   8329 0C                  214 	.db #0x0C	; 12
   832A 0C                  215 	.db #0x0C	; 12
   832B 0C                  216 	.db #0x0C	; 12
   832C 0C                  217 	.db #0x0C	; 12
   832D 30                  218 	.db #0x30	; 48	'0'
   832E 0C                  219 	.db #0x0C	; 12
   832F 0C                  220 	.db #0x0C	; 12
   8330 4C                  221 	.db #0x4C	; 76	'L'
   8331 0C                  222 	.db #0x0C	; 12
   8332 0C                  223 	.db #0x0C	; 12
   8333 0C                  224 	.db #0x0C	; 12
   8334 0C                  225 	.db #0x0C	; 12
   8335 0C                  226 	.db #0x0C	; 12
   8336 0C                  227 	.db #0x0C	; 12
   8337 0C                  228 	.db #0x0C	; 12
   8338 0C                  229 	.db #0x0C	; 12
   8339 0C                  230 	.db #0x0C	; 12
   833A 0C                  231 	.db #0x0C	; 12
   833B 0C                  232 	.db #0x0C	; 12
   833C 0C                  233 	.db #0x0C	; 12
   833D 0C                  234 	.db #0x0C	; 12
   833E 8C                  235 	.db #0x8C	; 140
   833F 0C                  236 	.db #0x0C	; 12
   8340 0C                  237 	.db #0x0C	; 12
   8341 0C                  238 	.db #0x0C	; 12
   8342 0C                  239 	.db #0x0C	; 12
   8343 0C                  240 	.db #0x0C	; 12
   8344 0C                  241 	.db #0x0C	; 12
   8345 0C                  242 	.db #0x0C	; 12
   8346 0C                  243 	.db #0x0C	; 12
   8347 0C                  244 	.db #0x0C	; 12
   8348 0C                  245 	.db #0x0C	; 12
   8349 0C                  246 	.db #0x0C	; 12
   834A 0C                  247 	.db #0x0C	; 12
   834B 0C                  248 	.db #0x0C	; 12
                            249 	.area _INITIALIZER
                            250 	.area _CABS (ABS)
