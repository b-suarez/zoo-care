                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:02:33 2015
                              5 ;--------------------------------------------------------
                              6 	.module guarda
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _pers
                             13 	.globl _pers_tileset
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
   40CA                      46 _pers_tileset:
   40CA CC 40                47 	.dw _pers
   40CC                      48 _pers:
   40CC 30                   49 	.db #0x30	; 48	'0'
   40CD 30                   50 	.db #0x30	; 48	'0'
   40CE 30                   51 	.db #0x30	; 48	'0'
   40CF 30                   52 	.db #0x30	; 48	'0'
   40D0 30                   53 	.db #0x30	; 48	'0'
   40D1 30                   54 	.db #0x30	; 48	'0'
   40D2 30                   55 	.db #0x30	; 48	'0'
   40D3 30                   56 	.db #0x30	; 48	'0'
   40D4 30                   57 	.db #0x30	; 48	'0'
   40D5 30                   58 	.db #0x30	; 48	'0'
   40D6 30                   59 	.db #0x30	; 48	'0'
   40D7 30                   60 	.db #0x30	; 48	'0'
   40D8 30                   61 	.db #0x30	; 48	'0'
   40D9 30                   62 	.db #0x30	; 48	'0'
   40DA 30                   63 	.db #0x30	; 48	'0'
   40DB 30                   64 	.db #0x30	; 48	'0'
   40DC 30                   65 	.db #0x30	; 48	'0'
   40DD 30                   66 	.db #0x30	; 48	'0'
   40DE 30                   67 	.db #0x30	; 48	'0'
   40DF 30                   68 	.db #0x30	; 48	'0'
   40E0 30                   69 	.db #0x30	; 48	'0'
   40E1 30                   70 	.db #0x30	; 48	'0'
   40E2 30                   71 	.db #0x30	; 48	'0'
   40E3 30                   72 	.db #0x30	; 48	'0'
   40E4 00                   73 	.db #0x00	; 0
   40E5 00                   74 	.db #0x00	; 0
   40E6 30                   75 	.db #0x30	; 48	'0'
   40E7 30                   76 	.db #0x30	; 48	'0'
   40E8 30                   77 	.db #0x30	; 48	'0'
   40E9 30                   78 	.db #0x30	; 48	'0'
   40EA 30                   79 	.db #0x30	; 48	'0'
   40EB 30                   80 	.db #0x30	; 48	'0'
   40EC 30                   81 	.db #0x30	; 48	'0'
   40ED 20                   82 	.db #0x20	; 32
   40EE 00                   83 	.db #0x00	; 0
   40EF 00                   84 	.db #0x00	; 0
   40F0 10                   85 	.db #0x10	; 16
   40F1 30                   86 	.db #0x30	; 48	'0'
   40F2 30                   87 	.db #0x30	; 48	'0'
   40F3 30                   88 	.db #0x30	; 48	'0'
   40F4 30                   89 	.db #0x30	; 48	'0'
   40F5 30                   90 	.db #0x30	; 48	'0'
   40F6 30                   91 	.db #0x30	; 48	'0'
   40F7 20                   92 	.db #0x20	; 32
   40F8 00                   93 	.db #0x00	; 0
   40F9 00                   94 	.db #0x00	; 0
   40FA 10                   95 	.db #0x10	; 16
   40FB 30                   96 	.db #0x30	; 48	'0'
   40FC 30                   97 	.db #0x30	; 48	'0'
   40FD 30                   98 	.db #0x30	; 48	'0'
   40FE 30                   99 	.db #0x30	; 48	'0'
   40FF 30                  100 	.db #0x30	; 48	'0'
   4100 20                  101 	.db #0x20	; 32
   4101 00                  102 	.db #0x00	; 0
   4102 00                  103 	.db #0x00	; 0
   4103 00                  104 	.db #0x00	; 0
   4104 00                  105 	.db #0x00	; 0
   4105 10                  106 	.db #0x10	; 16
   4106 30                  107 	.db #0x30	; 48	'0'
   4107 30                  108 	.db #0x30	; 48	'0'
   4108 30                  109 	.db #0x30	; 48	'0'
   4109 30                  110 	.db #0x30	; 48	'0'
   410A 30                  111 	.db #0x30	; 48	'0'
   410B 60                  112 	.db #0x60	; 96
   410C C0                  113 	.db #0xC0	; 192
   410D C0                  114 	.db #0xC0	; 192
   410E 90                  115 	.db #0x90	; 144
   410F 30                  116 	.db #0x30	; 48	'0'
   4110 30                  117 	.db #0x30	; 48	'0'
   4111 30                  118 	.db #0x30	; 48	'0'
   4112 30                  119 	.db #0x30	; 48	'0'
   4113 30                  120 	.db #0x30	; 48	'0'
   4114 30                  121 	.db #0x30	; 48	'0'
   4115 C0                  122 	.db #0xC0	; 192
   4116 40                  123 	.db #0x40	; 64
   4117 80                  124 	.db #0x80	; 128
   4118 C0                  125 	.db #0xC0	; 192
   4119 30                  126 	.db #0x30	; 48	'0'
   411A 30                  127 	.db #0x30	; 48	'0'
   411B 30                  128 	.db #0x30	; 48	'0'
   411C 30                  129 	.db #0x30	; 48	'0'
   411D 30                  130 	.db #0x30	; 48	'0'
   411E 30                  131 	.db #0x30	; 48	'0'
   411F C0                  132 	.db #0xC0	; 192
   4120 C0                  133 	.db #0xC0	; 192
   4121 C0                  134 	.db #0xC0	; 192
   4122 C0                  135 	.db #0xC0	; 192
   4123 30                  136 	.db #0x30	; 48	'0'
   4124 30                  137 	.db #0x30	; 48	'0'
   4125 30                  138 	.db #0x30	; 48	'0'
   4126 30                  139 	.db #0x30	; 48	'0'
   4127 30                  140 	.db #0x30	; 48	'0'
   4128 30                  141 	.db #0x30	; 48	'0'
   4129 60                  142 	.db #0x60	; 96
   412A 80                  143 	.db #0x80	; 128
   412B 40                  144 	.db #0x40	; 64
   412C 90                  145 	.db #0x90	; 144
   412D 30                  146 	.db #0x30	; 48	'0'
   412E 30                  147 	.db #0x30	; 48	'0'
   412F 30                  148 	.db #0x30	; 48	'0'
   4130 30                  149 	.db #0x30	; 48	'0'
   4131 30                  150 	.db #0x30	; 48	'0'
   4132 30                  151 	.db #0x30	; 48	'0'
   4133 30                  152 	.db #0x30	; 48	'0'
   4134 C0                  153 	.db #0xC0	; 192
   4135 C0                  154 	.db #0xC0	; 192
   4136 30                  155 	.db #0x30	; 48	'0'
   4137 30                  156 	.db #0x30	; 48	'0'
   4138 30                  157 	.db #0x30	; 48	'0'
   4139 30                  158 	.db #0x30	; 48	'0'
   413A 30                  159 	.db #0x30	; 48	'0'
   413B 30                  160 	.db #0x30	; 48	'0'
   413C 30                  161 	.db #0x30	; 48	'0'
   413D 00                  162 	.db #0x00	; 0
   413E 00                  163 	.db #0x00	; 0
   413F 00                  164 	.db #0x00	; 0
   4140 00                  165 	.db #0x00	; 0
   4141 30                  166 	.db #0x30	; 48	'0'
   4142 30                  167 	.db #0x30	; 48	'0'
   4143 30                  168 	.db #0x30	; 48	'0'
   4144 30                  169 	.db #0x30	; 48	'0'
   4145 30                  170 	.db #0x30	; 48	'0'
   4146 20                  171 	.db #0x20	; 32
   4147 00                  172 	.db #0x00	; 0
   4148 00                  173 	.db #0x00	; 0
   4149 00                  174 	.db #0x00	; 0
   414A 00                  175 	.db #0x00	; 0
   414B 10                  176 	.db #0x10	; 16
   414C 30                  177 	.db #0x30	; 48	'0'
   414D 30                  178 	.db #0x30	; 48	'0'
   414E 30                  179 	.db #0x30	; 48	'0'
   414F 30                  180 	.db #0x30	; 48	'0'
   4150 80                  181 	.db #0x80	; 128
   4151 10                  182 	.db #0x10	; 16
   4152 00                  183 	.db #0x00	; 0
   4153 00                  184 	.db #0x00	; 0
   4154 20                  185 	.db #0x20	; 32
   4155 40                  186 	.db #0x40	; 64
   4156 30                  187 	.db #0x30	; 48	'0'
   4157 30                  188 	.db #0x30	; 48	'0'
   4158 30                  189 	.db #0x30	; 48	'0'
   4159 30                  190 	.db #0x30	; 48	'0'
   415A C0                  191 	.db #0xC0	; 192
   415B 30                  192 	.db #0x30	; 48	'0'
   415C 00                  193 	.db #0x00	; 0
   415D 00                  194 	.db #0x00	; 0
   415E 30                  195 	.db #0x30	; 48	'0'
   415F C0                  196 	.db #0xC0	; 192
   4160 30                  197 	.db #0x30	; 48	'0'
   4161 30                  198 	.db #0x30	; 48	'0'
   4162 30                  199 	.db #0x30	; 48	'0'
   4163 30                  200 	.db #0x30	; 48	'0'
   4164 30                  201 	.db #0x30	; 48	'0'
   4165 30                  202 	.db #0x30	; 48	'0'
   4166 30                  203 	.db #0x30	; 48	'0'
   4167 30                  204 	.db #0x30	; 48	'0'
   4168 30                  205 	.db #0x30	; 48	'0'
   4169 30                  206 	.db #0x30	; 48	'0'
   416A 30                  207 	.db #0x30	; 48	'0'
   416B 30                  208 	.db #0x30	; 48	'0'
   416C 30                  209 	.db #0x30	; 48	'0'
   416D 30                  210 	.db #0x30	; 48	'0'
   416E 30                  211 	.db #0x30	; 48	'0'
   416F 64                  212 	.db #0x64	; 100	'd'
   4170 30                  213 	.db #0x30	; 48	'0'
   4171 30                  214 	.db #0x30	; 48	'0'
   4172 30                  215 	.db #0x30	; 48	'0'
   4173 30                  216 	.db #0x30	; 48	'0'
   4174 30                  217 	.db #0x30	; 48	'0'
   4175 30                  218 	.db #0x30	; 48	'0'
   4176 30                  219 	.db #0x30	; 48	'0'
   4177 30                  220 	.db #0x30	; 48	'0'
   4178 30                  221 	.db #0x30	; 48	'0'
   4179 64                  222 	.db #0x64	; 100	'd'
   417A 30                  223 	.db #0x30	; 48	'0'
   417B 30                  224 	.db #0x30	; 48	'0'
   417C 30                  225 	.db #0x30	; 48	'0'
   417D 30                  226 	.db #0x30	; 48	'0'
   417E 30                  227 	.db #0x30	; 48	'0'
   417F 30                  228 	.db #0x30	; 48	'0'
   4180 30                  229 	.db #0x30	; 48	'0'
   4181 30                  230 	.db #0x30	; 48	'0'
   4182 30                  231 	.db #0x30	; 48	'0'
   4183 30                  232 	.db #0x30	; 48	'0'
   4184 30                  233 	.db #0x30	; 48	'0'
   4185 CC                  234 	.db #0xCC	; 204
   4186 30                  235 	.db #0x30	; 48	'0'
   4187 30                  236 	.db #0x30	; 48	'0'
   4188 30                  237 	.db #0x30	; 48	'0'
   4189 30                  238 	.db #0x30	; 48	'0'
   418A 30                  239 	.db #0x30	; 48	'0'
   418B 30                  240 	.db #0x30	; 48	'0'
   418C 30                  241 	.db #0x30	; 48	'0'
   418D 30                  242 	.db #0x30	; 48	'0'
   418E 30                  243 	.db #0x30	; 48	'0'
   418F CC                  244 	.db #0xCC	; 204
   4190 30                  245 	.db #0x30	; 48	'0'
   4191 30                  246 	.db #0x30	; 48	'0'
   4192 30                  247 	.db #0x30	; 48	'0'
   4193 30                  248 	.db #0x30	; 48	'0'
                            249 	.area _INITIALIZER
                            250 	.area _CABS (ABS)
