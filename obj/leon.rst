                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:04:38 2015
                              5 ;--------------------------------------------------------
                              6 	.module leon
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _leon
                             13 	.globl _leon_tileset
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
   81B8                      46 _leon_tileset:
   81B8 BA 81                47 	.dw _leon
   81BA                      48 _leon:
   81BA 30                   49 	.db #0x30	; 48	'0'
   81BB 30                   50 	.db #0x30	; 48	'0'
   81BC 30                   51 	.db #0x30	; 48	'0'
   81BD 30                   52 	.db #0x30	; 48	'0'
   81BE 30                   53 	.db #0x30	; 48	'0'
   81BF 30                   54 	.db #0x30	; 48	'0'
   81C0 30                   55 	.db #0x30	; 48	'0'
   81C1 30                   56 	.db #0x30	; 48	'0'
   81C2 30                   57 	.db #0x30	; 48	'0'
   81C3 30                   58 	.db #0x30	; 48	'0'
   81C4 30                   59 	.db #0x30	; 48	'0'
   81C5 30                   60 	.db #0x30	; 48	'0'
   81C6 30                   61 	.db #0x30	; 48	'0'
   81C7 30                   62 	.db #0x30	; 48	'0'
   81C8 30                   63 	.db #0x30	; 48	'0'
   81C9 30                   64 	.db #0x30	; 48	'0'
   81CA 30                   65 	.db #0x30	; 48	'0'
   81CB 30                   66 	.db #0x30	; 48	'0'
   81CC 30                   67 	.db #0x30	; 48	'0'
   81CD 30                   68 	.db #0x30	; 48	'0'
   81CE 30                   69 	.db #0x30	; 48	'0'
   81CF 30                   70 	.db #0x30	; 48	'0'
   81D0 30                   71 	.db #0x30	; 48	'0'
   81D1 30                   72 	.db #0x30	; 48	'0'
   81D2 0C                   73 	.db #0x0C	; 12
   81D3 0C                   74 	.db #0x0C	; 12
   81D4 30                   75 	.db #0x30	; 48	'0'
   81D5 30                   76 	.db #0x30	; 48	'0'
   81D6 30                   77 	.db #0x30	; 48	'0'
   81D7 30                   78 	.db #0x30	; 48	'0'
   81D8 30                   79 	.db #0x30	; 48	'0'
   81D9 30                   80 	.db #0x30	; 48	'0'
   81DA 0C                   81 	.db #0x0C	; 12
   81DB 0C                   82 	.db #0x0C	; 12
   81DC 0C                   83 	.db #0x0C	; 12
   81DD 0C                   84 	.db #0x0C	; 12
   81DE 0C                   85 	.db #0x0C	; 12
   81DF 0C                   86 	.db #0x0C	; 12
   81E0 30                   87 	.db #0x30	; 48	'0'
   81E1 30                   88 	.db #0x30	; 48	'0'
   81E2 30                   89 	.db #0x30	; 48	'0'
   81E3 30                   90 	.db #0x30	; 48	'0'
   81E4 0C                   91 	.db #0x0C	; 12
   81E5 0C                   92 	.db #0x0C	; 12
   81E6 0C                   93 	.db #0x0C	; 12
   81E7 0C                   94 	.db #0x0C	; 12
   81E8 0C                   95 	.db #0x0C	; 12
   81E9 0C                   96 	.db #0x0C	; 12
   81EA 30                   97 	.db #0x30	; 48	'0'
   81EB 30                   98 	.db #0x30	; 48	'0'
   81EC 30                   99 	.db #0x30	; 48	'0'
   81ED 30                  100 	.db #0x30	; 48	'0'
   81EE 0C                  101 	.db #0x0C	; 12
   81EF 0C                  102 	.db #0x0C	; 12
   81F0 0C                  103 	.db #0x0C	; 12
   81F1 0C                  104 	.db #0x0C	; 12
   81F2 0C                  105 	.db #0x0C	; 12
   81F3 0C                  106 	.db #0x0C	; 12
   81F4 30                  107 	.db #0x30	; 48	'0'
   81F5 30                  108 	.db #0x30	; 48	'0'
   81F6 30                  109 	.db #0x30	; 48	'0'
   81F7 24                  110 	.db #0x24	; 36
   81F8 0C                  111 	.db #0x0C	; 12
   81F9 0C                  112 	.db #0x0C	; 12
   81FA 04                  113 	.db #0x04	; 4
   81FB 08                  114 	.db #0x08	; 8
   81FC 0C                  115 	.db #0x0C	; 12
   81FD 0C                  116 	.db #0x0C	; 12
   81FE 18                  117 	.db #0x18	; 24
   81FF 30                  118 	.db #0x30	; 48	'0'
   8200 30                  119 	.db #0x30	; 48	'0'
   8201 24                  120 	.db #0x24	; 36
   8202 0C                  121 	.db #0x0C	; 12
   8203 0C                  122 	.db #0x0C	; 12
   8204 0C                  123 	.db #0x0C	; 12
   8205 0C                  124 	.db #0x0C	; 12
   8206 0C                  125 	.db #0x0C	; 12
   8207 0C                  126 	.db #0x0C	; 12
   8208 18                  127 	.db #0x18	; 24
   8209 30                  128 	.db #0x30	; 48	'0'
   820A 30                  129 	.db #0x30	; 48	'0'
   820B 24                  130 	.db #0x24	; 36
   820C 0C                  131 	.db #0x0C	; 12
   820D 0C                  132 	.db #0x0C	; 12
   820E 00                  133 	.db #0x00	; 0
   820F 00                  134 	.db #0x00	; 0
   8210 0C                  135 	.db #0x0C	; 12
   8211 0C                  136 	.db #0x0C	; 12
   8212 18                  137 	.db #0x18	; 24
   8213 30                  138 	.db #0x30	; 48	'0'
   8214 30                  139 	.db #0x30	; 48	'0'
   8215 30                  140 	.db #0x30	; 48	'0'
   8216 0C                  141 	.db #0x0C	; 12
   8217 0C                  142 	.db #0x0C	; 12
   8218 00                  143 	.db #0x00	; 0
   8219 00                  144 	.db #0x00	; 0
   821A 0C                  145 	.db #0x0C	; 12
   821B 0C                  146 	.db #0x0C	; 12
   821C 30                  147 	.db #0x30	; 48	'0'
   821D 30                  148 	.db #0x30	; 48	'0'
   821E 24                  149 	.db #0x24	; 36
   821F 18                  150 	.db #0x18	; 24
   8220 24                  151 	.db #0x24	; 36
   8221 0C                  152 	.db #0x0C	; 12
   8222 0C                  153 	.db #0x0C	; 12
   8223 0C                  154 	.db #0x0C	; 12
   8224 0C                  155 	.db #0x0C	; 12
   8225 18                  156 	.db #0x18	; 24
   8226 30                  157 	.db #0x30	; 48	'0'
   8227 30                  158 	.db #0x30	; 48	'0'
   8228 30                  159 	.db #0x30	; 48	'0'
   8229 0C                  160 	.db #0x0C	; 12
   822A 30                  161 	.db #0x30	; 48	'0'
   822B 0C                  162 	.db #0x0C	; 12
   822C 0C                  163 	.db #0x0C	; 12
   822D 0C                  164 	.db #0x0C	; 12
   822E 0C                  165 	.db #0x0C	; 12
   822F 30                  166 	.db #0x30	; 48	'0'
   8230 30                  167 	.db #0x30	; 48	'0'
   8231 30                  168 	.db #0x30	; 48	'0'
   8232 30                  169 	.db #0x30	; 48	'0'
   8233 24                  170 	.db #0x24	; 36
   8234 18                  171 	.db #0x18	; 24
   8235 0C                  172 	.db #0x0C	; 12
   8236 0C                  173 	.db #0x0C	; 12
   8237 0C                  174 	.db #0x0C	; 12
   8238 0C                  175 	.db #0x0C	; 12
   8239 30                  176 	.db #0x30	; 48	'0'
   823A 30                  177 	.db #0x30	; 48	'0'
   823B 30                  178 	.db #0x30	; 48	'0'
   823C 30                  179 	.db #0x30	; 48	'0'
   823D 30                  180 	.db #0x30	; 48	'0'
   823E 0C                  181 	.db #0x0C	; 12
   823F 0C                  182 	.db #0x0C	; 12
   8240 0C                  183 	.db #0x0C	; 12
   8241 0C                  184 	.db #0x0C	; 12
   8242 0C                  185 	.db #0x0C	; 12
   8243 30                  186 	.db #0x30	; 48	'0'
   8244 30                  187 	.db #0x30	; 48	'0'
   8245 30                  188 	.db #0x30	; 48	'0'
   8246 30                  189 	.db #0x30	; 48	'0'
   8247 30                  190 	.db #0x30	; 48	'0'
   8248 30                  191 	.db #0x30	; 48	'0'
   8249 0C                  192 	.db #0x0C	; 12
   824A 0C                  193 	.db #0x0C	; 12
   824B 0C                  194 	.db #0x0C	; 12
   824C 0C                  195 	.db #0x0C	; 12
   824D 30                  196 	.db #0x30	; 48	'0'
   824E 30                  197 	.db #0x30	; 48	'0'
   824F 30                  198 	.db #0x30	; 48	'0'
   8250 30                  199 	.db #0x30	; 48	'0'
   8251 30                  200 	.db #0x30	; 48	'0'
   8252 30                  201 	.db #0x30	; 48	'0'
   8253 0C                  202 	.db #0x0C	; 12
   8254 0C                  203 	.db #0x0C	; 12
   8255 0C                  204 	.db #0x0C	; 12
   8256 0C                  205 	.db #0x0C	; 12
   8257 30                  206 	.db #0x30	; 48	'0'
   8258 30                  207 	.db #0x30	; 48	'0'
   8259 30                  208 	.db #0x30	; 48	'0'
   825A 30                  209 	.db #0x30	; 48	'0'
   825B 30                  210 	.db #0x30	; 48	'0'
   825C 30                  211 	.db #0x30	; 48	'0'
   825D 0C                  212 	.db #0x0C	; 12
   825E 30                  213 	.db #0x30	; 48	'0'
   825F 30                  214 	.db #0x30	; 48	'0'
   8260 0C                  215 	.db #0x0C	; 12
   8261 30                  216 	.db #0x30	; 48	'0'
   8262 30                  217 	.db #0x30	; 48	'0'
   8263 30                  218 	.db #0x30	; 48	'0'
   8264 30                  219 	.db #0x30	; 48	'0'
   8265 30                  220 	.db #0x30	; 48	'0'
   8266 30                  221 	.db #0x30	; 48	'0'
   8267 0C                  222 	.db #0x0C	; 12
   8268 30                  223 	.db #0x30	; 48	'0'
   8269 30                  224 	.db #0x30	; 48	'0'
   826A 0C                  225 	.db #0x0C	; 12
   826B 30                  226 	.db #0x30	; 48	'0'
   826C 30                  227 	.db #0x30	; 48	'0'
   826D 30                  228 	.db #0x30	; 48	'0'
   826E 30                  229 	.db #0x30	; 48	'0'
   826F 30                  230 	.db #0x30	; 48	'0'
   8270 30                  231 	.db #0x30	; 48	'0'
   8271 30                  232 	.db #0x30	; 48	'0'
   8272 30                  233 	.db #0x30	; 48	'0'
   8273 30                  234 	.db #0x30	; 48	'0'
   8274 0C                  235 	.db #0x0C	; 12
   8275 30                  236 	.db #0x30	; 48	'0'
   8276 30                  237 	.db #0x30	; 48	'0'
   8277 30                  238 	.db #0x30	; 48	'0'
   8278 30                  239 	.db #0x30	; 48	'0'
   8279 30                  240 	.db #0x30	; 48	'0'
   827A 30                  241 	.db #0x30	; 48	'0'
   827B 30                  242 	.db #0x30	; 48	'0'
   827C 30                  243 	.db #0x30	; 48	'0'
   827D 30                  244 	.db #0x30	; 48	'0'
   827E 0C                  245 	.db #0x0C	; 12
   827F 30                  246 	.db #0x30	; 48	'0'
   8280 30                  247 	.db #0x30	; 48	'0'
   8281 30                  248 	.db #0x30	; 48	'0'
                            249 	.area _INITIALIZER
                            250 	.area _CABS (ABS)
