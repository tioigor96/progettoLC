{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParAuL where
import AbsAuL
import LexAuL
import ErrM
import Utils
import Data.Maybe
import Env
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t57 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t90 t91 t92 t93 t94 t95 t96 t97 t98 t99 t100 t101 t102 t103 t104 t105 t106 t107 t108 t109 t110 t111 t112 t113 t114 t115
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn57 t57
	| HappyAbsSyn58 t58
	| HappyAbsSyn59 t59
	| HappyAbsSyn60 t60
	| HappyAbsSyn61 t61
	| HappyAbsSyn62 t62
	| HappyAbsSyn63 t63
	| HappyAbsSyn64 t64
	| HappyAbsSyn65 t65
	| HappyAbsSyn66 t66
	| HappyAbsSyn67 t67
	| HappyAbsSyn68 t68
	| HappyAbsSyn69 t69
	| HappyAbsSyn70 t70
	| HappyAbsSyn71 t71
	| HappyAbsSyn72 t72
	| HappyAbsSyn73 t73
	| HappyAbsSyn74 t74
	| HappyAbsSyn75 t75
	| HappyAbsSyn76 t76
	| HappyAbsSyn77 t77
	| HappyAbsSyn78 t78
	| HappyAbsSyn79 t79
	| HappyAbsSyn80 t80
	| HappyAbsSyn81 t81
	| HappyAbsSyn82 t82
	| HappyAbsSyn83 t83
	| HappyAbsSyn84 t84
	| HappyAbsSyn85 t85
	| HappyAbsSyn86 t86
	| HappyAbsSyn87 t87
	| HappyAbsSyn88 t88
	| HappyAbsSyn89 t89
	| HappyAbsSyn90 t90
	| HappyAbsSyn91 t91
	| HappyAbsSyn92 t92
	| HappyAbsSyn93 t93
	| HappyAbsSyn94 t94
	| HappyAbsSyn95 t95
	| HappyAbsSyn96 t96
	| HappyAbsSyn97 t97
	| HappyAbsSyn98 t98
	| HappyAbsSyn99 t99
	| HappyAbsSyn100 t100
	| HappyAbsSyn101 t101
	| HappyAbsSyn102 t102
	| HappyAbsSyn103 t103
	| HappyAbsSyn104 t104
	| HappyAbsSyn105 t105
	| HappyAbsSyn106 t106
	| HappyAbsSyn107 t107
	| HappyAbsSyn108 t108
	| HappyAbsSyn109 t109
	| HappyAbsSyn110 t110
	| HappyAbsSyn111 t111
	| HappyAbsSyn112 t112
	| HappyAbsSyn113 t113
	| HappyAbsSyn114 t114
	| HappyAbsSyn115 t115

action_0 (121) = happyShift action_213
action_0 (134) = happyShift action_134
action_0 (135) = happyShift action_135
action_0 (136) = happyShift action_136
action_0 (137) = happyShift action_137
action_0 (138) = happyShift action_138
action_0 (139) = happyShift action_139
action_0 (144) = happyShift action_143
action_0 (146) = happyShift action_189
action_0 (151) = happyShift action_158
action_0 (153) = happyShift action_154
action_0 (155) = happyShift action_170
action_0 (160) = happyShift action_83
action_0 (161) = happyShift action_84
action_0 (162) = happyShift action_85
action_0 (163) = happyShift action_86
action_0 (165) = happyShift action_160
action_0 (167) = happyShift action_147
action_0 (173) = happyShift action_162
action_0 (174) = happyShift action_88
action_0 (175) = happyShift action_89
action_0 (176) = happyShift action_90
action_0 (177) = happyShift action_91
action_0 (185) = happyShift action_95
action_0 (61) = happyGoto action_62
action_0 (62) = happyGoto action_216
action_0 (63) = happyGoto action_217
action_0 (64) = happyGoto action_215
action_0 (67) = happyGoto action_210
action_0 (70) = happyGoto action_131
action_0 (71) = happyGoto action_211
action_0 (72) = happyGoto action_191
action_0 (73) = happyGoto action_192
action_0 (79) = happyGoto action_193
action_0 (80) = happyGoto action_194
action_0 (81) = happyGoto action_195
action_0 (83) = happyGoto action_66
action_0 (84) = happyGoto action_67
action_0 (85) = happyGoto action_196
action_0 (86) = happyGoto action_197
action_0 (87) = happyGoto action_198
action_0 (89) = happyGoto action_199
action_0 (93) = happyGoto action_200
action_0 (95) = happyGoto action_201
action_0 (96) = happyGoto action_212
action_0 (100) = happyGoto action_168
action_0 _ = happyFail

action_1 (121) = happyShift action_213
action_1 (134) = happyShift action_134
action_1 (135) = happyShift action_135
action_1 (136) = happyShift action_136
action_1 (137) = happyShift action_137
action_1 (138) = happyShift action_138
action_1 (139) = happyShift action_139
action_1 (144) = happyShift action_143
action_1 (146) = happyShift action_189
action_1 (151) = happyShift action_158
action_1 (153) = happyShift action_154
action_1 (155) = happyShift action_170
action_1 (160) = happyShift action_83
action_1 (161) = happyShift action_84
action_1 (162) = happyShift action_85
action_1 (163) = happyShift action_86
action_1 (165) = happyShift action_160
action_1 (167) = happyShift action_147
action_1 (173) = happyShift action_162
action_1 (174) = happyShift action_88
action_1 (175) = happyShift action_89
action_1 (176) = happyShift action_90
action_1 (177) = happyShift action_91
action_1 (185) = happyShift action_95
action_1 (61) = happyGoto action_62
action_1 (63) = happyGoto action_214
action_1 (64) = happyGoto action_215
action_1 (67) = happyGoto action_210
action_1 (70) = happyGoto action_131
action_1 (71) = happyGoto action_211
action_1 (72) = happyGoto action_191
action_1 (73) = happyGoto action_192
action_1 (79) = happyGoto action_193
action_1 (80) = happyGoto action_194
action_1 (81) = happyGoto action_195
action_1 (83) = happyGoto action_66
action_1 (84) = happyGoto action_67
action_1 (85) = happyGoto action_196
action_1 (86) = happyGoto action_197
action_1 (87) = happyGoto action_198
action_1 (89) = happyGoto action_199
action_1 (93) = happyGoto action_200
action_1 (95) = happyGoto action_201
action_1 (96) = happyGoto action_212
action_1 (100) = happyGoto action_168
action_1 _ = happyFail

action_2 (121) = happyShift action_213
action_2 (134) = happyShift action_134
action_2 (135) = happyShift action_135
action_2 (136) = happyShift action_136
action_2 (137) = happyShift action_137
action_2 (138) = happyShift action_138
action_2 (139) = happyShift action_139
action_2 (144) = happyShift action_143
action_2 (146) = happyShift action_189
action_2 (151) = happyShift action_158
action_2 (153) = happyShift action_154
action_2 (155) = happyShift action_170
action_2 (160) = happyShift action_83
action_2 (161) = happyShift action_84
action_2 (162) = happyShift action_85
action_2 (163) = happyShift action_86
action_2 (165) = happyShift action_160
action_2 (167) = happyShift action_147
action_2 (173) = happyShift action_162
action_2 (174) = happyShift action_88
action_2 (175) = happyShift action_89
action_2 (176) = happyShift action_90
action_2 (177) = happyShift action_91
action_2 (185) = happyShift action_95
action_2 (61) = happyGoto action_62
action_2 (64) = happyGoto action_209
action_2 (67) = happyGoto action_210
action_2 (70) = happyGoto action_131
action_2 (71) = happyGoto action_211
action_2 (72) = happyGoto action_191
action_2 (73) = happyGoto action_192
action_2 (79) = happyGoto action_193
action_2 (80) = happyGoto action_194
action_2 (81) = happyGoto action_195
action_2 (83) = happyGoto action_66
action_2 (84) = happyGoto action_67
action_2 (85) = happyGoto action_196
action_2 (86) = happyGoto action_197
action_2 (87) = happyGoto action_198
action_2 (89) = happyGoto action_199
action_2 (93) = happyGoto action_200
action_2 (95) = happyGoto action_201
action_2 (96) = happyGoto action_212
action_2 (100) = happyGoto action_168
action_2 _ = happyFail

action_3 (65) = happyGoto action_207
action_3 (66) = happyGoto action_208
action_3 _ = happyReduce_65

action_4 (66) = happyGoto action_206
action_4 _ = happyReduce_65

action_5 (134) = happyShift action_134
action_5 (135) = happyShift action_135
action_5 (136) = happyShift action_136
action_5 (137) = happyShift action_137
action_5 (138) = happyShift action_138
action_5 (139) = happyShift action_139
action_5 (67) = happyGoto action_205
action_5 _ = happyFail

action_6 (150) = happyShift action_81
action_6 (169) = happyShift action_87
action_6 (68) = happyGoto action_204
action_6 _ = happyFail

action_7 (157) = happyShift action_82
action_7 (69) = happyGoto action_203
action_7 _ = happyFail

action_8 (121) = happyShift action_133
action_8 (134) = happyShift action_134
action_8 (135) = happyShift action_135
action_8 (136) = happyShift action_136
action_8 (137) = happyShift action_137
action_8 (138) = happyShift action_138
action_8 (139) = happyShift action_139
action_8 (67) = happyGoto action_130
action_8 (70) = happyGoto action_202
action_8 _ = happyFail

action_9 (121) = happyShift action_79
action_9 (134) = happyShift action_134
action_9 (135) = happyShift action_135
action_9 (136) = happyShift action_136
action_9 (137) = happyShift action_137
action_9 (138) = happyShift action_138
action_9 (139) = happyShift action_139
action_9 (144) = happyShift action_143
action_9 (146) = happyShift action_189
action_9 (151) = happyShift action_158
action_9 (153) = happyShift action_154
action_9 (155) = happyShift action_170
action_9 (160) = happyShift action_83
action_9 (161) = happyShift action_84
action_9 (162) = happyShift action_85
action_9 (163) = happyShift action_86
action_9 (165) = happyShift action_160
action_9 (167) = happyShift action_147
action_9 (173) = happyShift action_162
action_9 (174) = happyShift action_88
action_9 (175) = happyShift action_89
action_9 (176) = happyShift action_90
action_9 (177) = happyShift action_91
action_9 (185) = happyShift action_95
action_9 (61) = happyGoto action_62
action_9 (67) = happyGoto action_186
action_9 (71) = happyGoto action_190
action_9 (72) = happyGoto action_191
action_9 (73) = happyGoto action_192
action_9 (79) = happyGoto action_193
action_9 (80) = happyGoto action_194
action_9 (81) = happyGoto action_195
action_9 (83) = happyGoto action_66
action_9 (84) = happyGoto action_67
action_9 (85) = happyGoto action_196
action_9 (86) = happyGoto action_197
action_9 (87) = happyGoto action_198
action_9 (89) = happyGoto action_199
action_9 (93) = happyGoto action_200
action_9 (95) = happyGoto action_201
action_9 (100) = happyGoto action_168
action_9 _ = happyFail

action_10 (146) = happyShift action_189
action_10 (72) = happyGoto action_188
action_10 _ = happyFail

action_11 (134) = happyShift action_134
action_11 (135) = happyShift action_135
action_11 (136) = happyShift action_136
action_11 (137) = happyShift action_137
action_11 (138) = happyShift action_138
action_11 (139) = happyShift action_139
action_11 (67) = happyGoto action_186
action_11 (73) = happyGoto action_187
action_11 _ = happyFail

action_12 (130) = happyShift action_185
action_12 (74) = happyGoto action_184
action_12 _ = happyReduce_92

action_13 (178) = happyShift action_173
action_13 (75) = happyGoto action_183
action_13 _ = happyFail

action_14 (150) = happyShift action_81
action_14 (157) = happyShift action_82
action_14 (169) = happyShift action_87
action_14 (181) = happyShift action_55
action_14 (182) = happyShift action_92
action_14 (183) = happyShift action_93
action_14 (184) = happyShift action_94
action_14 (57) = happyGoto action_174
action_14 (58) = happyGoto action_175
action_14 (59) = happyGoto action_176
action_14 (60) = happyGoto action_177
action_14 (68) = happyGoto action_178
action_14 (69) = happyGoto action_179
action_14 (76) = happyGoto action_182
action_14 _ = happyFail

action_15 (150) = happyShift action_81
action_15 (157) = happyShift action_82
action_15 (169) = happyShift action_87
action_15 (181) = happyShift action_55
action_15 (182) = happyShift action_92
action_15 (183) = happyShift action_93
action_15 (184) = happyShift action_94
action_15 (57) = happyGoto action_174
action_15 (58) = happyGoto action_175
action_15 (59) = happyGoto action_176
action_15 (60) = happyGoto action_177
action_15 (68) = happyGoto action_178
action_15 (69) = happyGoto action_179
action_15 (76) = happyGoto action_180
action_15 (77) = happyGoto action_181
action_15 _ = happyFail

action_16 (178) = happyShift action_173
action_16 (75) = happyGoto action_171
action_16 (78) = happyGoto action_172
action_16 _ = happyFail

action_17 (155) = happyShift action_170
action_17 (79) = happyGoto action_169
action_17 _ = happyFail

action_18 (121) = happyShift action_79
action_18 (185) = happyShift action_95
action_18 (61) = happyGoto action_103
action_18 (80) = happyGoto action_167
action_18 (100) = happyGoto action_168
action_18 _ = happyFail

action_19 (160) = happyShift action_83
action_19 (161) = happyShift action_84
action_19 (162) = happyShift action_85
action_19 (163) = happyShift action_86
action_19 (174) = happyShift action_88
action_19 (175) = happyShift action_89
action_19 (176) = happyShift action_90
action_19 (177) = happyShift action_91
action_19 (185) = happyShift action_95
action_19 (61) = happyGoto action_165
action_19 (81) = happyGoto action_166
action_19 (83) = happyGoto action_66
action_19 (84) = happyGoto action_67
action_19 _ = happyFail

action_20 (174) = happyShift action_88
action_20 (175) = happyShift action_89
action_20 (176) = happyShift action_90
action_20 (177) = happyShift action_91
action_20 (83) = happyGoto action_164
action_20 _ = happyFail

action_21 (160) = happyShift action_83
action_21 (161) = happyShift action_84
action_21 (162) = happyShift action_85
action_21 (163) = happyShift action_86
action_21 (84) = happyGoto action_163
action_21 _ = happyFail

action_22 (173) = happyShift action_162
action_22 (85) = happyGoto action_161
action_22 _ = happyFail

action_23 (165) = happyShift action_160
action_23 (86) = happyGoto action_159
action_23 _ = happyFail

action_24 (151) = happyShift action_158
action_24 (87) = happyGoto action_157
action_24 _ = happyFail

action_25 (123) = happyShift action_156
action_25 (88) = happyGoto action_155
action_25 _ = happyReduce_127

action_26 (153) = happyShift action_154
action_26 (89) = happyGoto action_153
action_26 _ = happyFail

action_27 (147) = happyShift action_152
action_27 (90) = happyGoto action_151
action_27 _ = happyReduce_131

action_28 (148) = happyShift action_150
action_28 (91) = happyGoto action_149
action_28 _ = happyFail

action_29 (92) = happyGoto action_148
action_29 _ = happyReduce_133

action_30 (167) = happyShift action_147
action_30 (93) = happyGoto action_146
action_30 _ = happyFail

action_31 (116) = happyShift action_77
action_31 (118) = happyShift action_78
action_31 (119) = happyShift action_57
action_31 (121) = happyShift action_79
action_31 (124) = happyShift action_80
action_31 (150) = happyShift action_81
action_31 (157) = happyShift action_82
action_31 (158) = happyShift action_102
action_31 (160) = happyShift action_83
action_31 (161) = happyShift action_84
action_31 (162) = happyShift action_85
action_31 (163) = happyShift action_86
action_31 (169) = happyShift action_87
action_31 (174) = happyShift action_88
action_31 (175) = happyShift action_89
action_31 (176) = happyShift action_90
action_31 (177) = happyShift action_91
action_31 (181) = happyShift action_55
action_31 (182) = happyShift action_92
action_31 (183) = happyShift action_93
action_31 (184) = happyShift action_94
action_31 (185) = happyShift action_95
action_31 (57) = happyGoto action_58
action_31 (58) = happyGoto action_59
action_31 (59) = happyGoto action_60
action_31 (60) = happyGoto action_61
action_31 (61) = happyGoto action_62
action_31 (68) = happyGoto action_63
action_31 (69) = happyGoto action_64
action_31 (81) = happyGoto action_65
action_31 (83) = happyGoto action_66
action_31 (84) = happyGoto action_67
action_31 (94) = happyGoto action_144
action_31 (100) = happyGoto action_68
action_31 (103) = happyGoto action_145
action_31 (104) = happyGoto action_98
action_31 (105) = happyGoto action_99
action_31 (106) = happyGoto action_69
action_31 (107) = happyGoto action_70
action_31 (108) = happyGoto action_71
action_31 (109) = happyGoto action_72
action_31 (110) = happyGoto action_73
action_31 (111) = happyGoto action_74
action_31 (112) = happyGoto action_113
action_31 (113) = happyGoto action_101
action_31 (114) = happyGoto action_97
action_31 (115) = happyGoto action_76
action_31 _ = happyReduce_136

action_32 (144) = happyShift action_143
action_32 (95) = happyGoto action_142
action_32 _ = happyFail

action_33 (116) = happyShift action_77
action_33 (118) = happyShift action_78
action_33 (119) = happyShift action_57
action_33 (121) = happyShift action_79
action_33 (124) = happyShift action_80
action_33 (150) = happyShift action_81
action_33 (157) = happyShift action_82
action_33 (158) = happyShift action_102
action_33 (160) = happyShift action_83
action_33 (161) = happyShift action_84
action_33 (162) = happyShift action_85
action_33 (163) = happyShift action_86
action_33 (169) = happyShift action_87
action_33 (174) = happyShift action_88
action_33 (175) = happyShift action_89
action_33 (176) = happyShift action_90
action_33 (177) = happyShift action_91
action_33 (181) = happyShift action_55
action_33 (182) = happyShift action_92
action_33 (183) = happyShift action_93
action_33 (184) = happyShift action_94
action_33 (185) = happyShift action_95
action_33 (57) = happyGoto action_58
action_33 (58) = happyGoto action_59
action_33 (59) = happyGoto action_60
action_33 (60) = happyGoto action_61
action_33 (61) = happyGoto action_62
action_33 (68) = happyGoto action_63
action_33 (69) = happyGoto action_64
action_33 (81) = happyGoto action_65
action_33 (82) = happyGoto action_140
action_33 (83) = happyGoto action_66
action_33 (84) = happyGoto action_67
action_33 (100) = happyGoto action_68
action_33 (103) = happyGoto action_141
action_33 (104) = happyGoto action_98
action_33 (105) = happyGoto action_99
action_33 (106) = happyGoto action_69
action_33 (107) = happyGoto action_70
action_33 (108) = happyGoto action_71
action_33 (109) = happyGoto action_72
action_33 (110) = happyGoto action_73
action_33 (111) = happyGoto action_74
action_33 (112) = happyGoto action_113
action_33 (113) = happyGoto action_101
action_33 (114) = happyGoto action_97
action_33 (115) = happyGoto action_76
action_33 _ = happyReduce_112

action_34 (121) = happyShift action_133
action_34 (134) = happyShift action_134
action_34 (135) = happyShift action_135
action_34 (136) = happyShift action_136
action_34 (137) = happyShift action_137
action_34 (138) = happyShift action_138
action_34 (139) = happyShift action_139
action_34 (67) = happyGoto action_130
action_34 (70) = happyGoto action_131
action_34 (96) = happyGoto action_132
action_34 _ = happyFail

action_35 (145) = happyShift action_120
action_35 (156) = happyShift action_121
action_35 (164) = happyShift action_122
action_35 (166) = happyShift action_123
action_35 (171) = happyShift action_124
action_35 (172) = happyShift action_125
action_35 (97) = happyGoto action_129
action_35 (99) = happyGoto action_128
action_35 _ = happyReduce_144

action_36 (145) = happyShift action_120
action_36 (156) = happyShift action_121
action_36 (164) = happyShift action_122
action_36 (166) = happyShift action_123
action_36 (171) = happyShift action_124
action_36 (172) = happyShift action_125
action_36 (186) = happyReduce_141
action_36 (97) = happyGoto action_126
action_36 (98) = happyGoto action_127
action_36 (99) = happyGoto action_128
action_36 _ = happyReduce_144

action_37 (145) = happyShift action_120
action_37 (156) = happyShift action_121
action_37 (164) = happyShift action_122
action_37 (166) = happyShift action_123
action_37 (171) = happyShift action_124
action_37 (172) = happyShift action_125
action_37 (99) = happyGoto action_119
action_37 _ = happyReduce_144

action_38 (121) = happyShift action_79
action_38 (185) = happyShift action_95
action_38 (61) = happyGoto action_103
action_38 (100) = happyGoto action_118
action_38 _ = happyFail

action_39 (140) = happyShift action_115
action_39 (101) = happyGoto action_116
action_39 (102) = happyGoto action_117
action_39 _ = happyFail

action_40 (140) = happyShift action_115
action_40 (102) = happyGoto action_114
action_40 _ = happyFail

action_41 (116) = happyShift action_77
action_41 (118) = happyShift action_78
action_41 (119) = happyShift action_57
action_41 (121) = happyShift action_79
action_41 (124) = happyShift action_80
action_41 (150) = happyShift action_81
action_41 (157) = happyShift action_82
action_41 (158) = happyShift action_102
action_41 (160) = happyShift action_83
action_41 (161) = happyShift action_84
action_41 (162) = happyShift action_85
action_41 (163) = happyShift action_86
action_41 (169) = happyShift action_87
action_41 (174) = happyShift action_88
action_41 (175) = happyShift action_89
action_41 (176) = happyShift action_90
action_41 (177) = happyShift action_91
action_41 (181) = happyShift action_55
action_41 (182) = happyShift action_92
action_41 (183) = happyShift action_93
action_41 (184) = happyShift action_94
action_41 (185) = happyShift action_95
action_41 (57) = happyGoto action_58
action_41 (58) = happyGoto action_59
action_41 (59) = happyGoto action_60
action_41 (60) = happyGoto action_61
action_41 (61) = happyGoto action_62
action_41 (68) = happyGoto action_63
action_41 (69) = happyGoto action_64
action_41 (81) = happyGoto action_65
action_41 (83) = happyGoto action_66
action_41 (84) = happyGoto action_67
action_41 (100) = happyGoto action_68
action_41 (103) = happyGoto action_112
action_41 (104) = happyGoto action_98
action_41 (105) = happyGoto action_99
action_41 (106) = happyGoto action_69
action_41 (107) = happyGoto action_70
action_41 (108) = happyGoto action_71
action_41 (109) = happyGoto action_72
action_41 (110) = happyGoto action_73
action_41 (111) = happyGoto action_74
action_41 (112) = happyGoto action_113
action_41 (113) = happyGoto action_101
action_41 (114) = happyGoto action_97
action_41 (115) = happyGoto action_76
action_41 _ = happyFail

action_42 (116) = happyShift action_77
action_42 (118) = happyShift action_78
action_42 (119) = happyShift action_57
action_42 (121) = happyShift action_79
action_42 (124) = happyShift action_80
action_42 (150) = happyShift action_81
action_42 (157) = happyShift action_82
action_42 (158) = happyShift action_102
action_42 (160) = happyShift action_83
action_42 (161) = happyShift action_84
action_42 (162) = happyShift action_85
action_42 (163) = happyShift action_86
action_42 (169) = happyShift action_87
action_42 (174) = happyShift action_88
action_42 (175) = happyShift action_89
action_42 (176) = happyShift action_90
action_42 (177) = happyShift action_91
action_42 (181) = happyShift action_55
action_42 (182) = happyShift action_92
action_42 (183) = happyShift action_93
action_42 (184) = happyShift action_94
action_42 (185) = happyShift action_95
action_42 (57) = happyGoto action_58
action_42 (58) = happyGoto action_59
action_42 (59) = happyGoto action_60
action_42 (60) = happyGoto action_61
action_42 (61) = happyGoto action_62
action_42 (68) = happyGoto action_63
action_42 (69) = happyGoto action_64
action_42 (81) = happyGoto action_65
action_42 (83) = happyGoto action_66
action_42 (84) = happyGoto action_67
action_42 (100) = happyGoto action_68
action_42 (104) = happyGoto action_111
action_42 (105) = happyGoto action_99
action_42 (106) = happyGoto action_69
action_42 (107) = happyGoto action_70
action_42 (108) = happyGoto action_71
action_42 (109) = happyGoto action_72
action_42 (110) = happyGoto action_73
action_42 (111) = happyGoto action_74
action_42 (113) = happyGoto action_101
action_42 (114) = happyGoto action_97
action_42 (115) = happyGoto action_76
action_42 _ = happyFail

action_43 (116) = happyShift action_77
action_43 (118) = happyShift action_78
action_43 (119) = happyShift action_57
action_43 (121) = happyShift action_79
action_43 (124) = happyShift action_80
action_43 (150) = happyShift action_81
action_43 (157) = happyShift action_82
action_43 (160) = happyShift action_83
action_43 (161) = happyShift action_84
action_43 (162) = happyShift action_85
action_43 (163) = happyShift action_86
action_43 (169) = happyShift action_87
action_43 (174) = happyShift action_88
action_43 (175) = happyShift action_89
action_43 (176) = happyShift action_90
action_43 (177) = happyShift action_91
action_43 (181) = happyShift action_55
action_43 (182) = happyShift action_92
action_43 (183) = happyShift action_93
action_43 (184) = happyShift action_94
action_43 (185) = happyShift action_95
action_43 (57) = happyGoto action_58
action_43 (58) = happyGoto action_59
action_43 (59) = happyGoto action_60
action_43 (60) = happyGoto action_61
action_43 (61) = happyGoto action_62
action_43 (68) = happyGoto action_63
action_43 (69) = happyGoto action_64
action_43 (81) = happyGoto action_65
action_43 (83) = happyGoto action_66
action_43 (84) = happyGoto action_67
action_43 (100) = happyGoto action_68
action_43 (105) = happyGoto action_110
action_43 (106) = happyGoto action_69
action_43 (107) = happyGoto action_70
action_43 (108) = happyGoto action_71
action_43 (109) = happyGoto action_72
action_43 (110) = happyGoto action_73
action_43 (111) = happyGoto action_74
action_43 (113) = happyGoto action_101
action_43 (114) = happyGoto action_97
action_43 (115) = happyGoto action_76
action_43 _ = happyFail

action_44 (116) = happyShift action_77
action_44 (118) = happyShift action_78
action_44 (119) = happyShift action_57
action_44 (121) = happyShift action_79
action_44 (124) = happyShift action_80
action_44 (150) = happyShift action_81
action_44 (157) = happyShift action_82
action_44 (160) = happyShift action_83
action_44 (161) = happyShift action_84
action_44 (162) = happyShift action_85
action_44 (163) = happyShift action_86
action_44 (169) = happyShift action_87
action_44 (174) = happyShift action_88
action_44 (175) = happyShift action_89
action_44 (176) = happyShift action_90
action_44 (177) = happyShift action_91
action_44 (181) = happyShift action_55
action_44 (182) = happyShift action_92
action_44 (183) = happyShift action_93
action_44 (184) = happyShift action_94
action_44 (185) = happyShift action_95
action_44 (57) = happyGoto action_58
action_44 (58) = happyGoto action_59
action_44 (59) = happyGoto action_60
action_44 (60) = happyGoto action_61
action_44 (61) = happyGoto action_62
action_44 (68) = happyGoto action_63
action_44 (69) = happyGoto action_64
action_44 (81) = happyGoto action_65
action_44 (83) = happyGoto action_66
action_44 (84) = happyGoto action_67
action_44 (100) = happyGoto action_68
action_44 (106) = happyGoto action_109
action_44 (107) = happyGoto action_70
action_44 (108) = happyGoto action_71
action_44 (109) = happyGoto action_72
action_44 (110) = happyGoto action_73
action_44 (111) = happyGoto action_74
action_44 (115) = happyGoto action_76
action_44 _ = happyFail

action_45 (116) = happyShift action_77
action_45 (118) = happyShift action_78
action_45 (119) = happyShift action_57
action_45 (121) = happyShift action_79
action_45 (124) = happyShift action_80
action_45 (150) = happyShift action_81
action_45 (157) = happyShift action_82
action_45 (160) = happyShift action_83
action_45 (161) = happyShift action_84
action_45 (162) = happyShift action_85
action_45 (163) = happyShift action_86
action_45 (169) = happyShift action_87
action_45 (174) = happyShift action_88
action_45 (175) = happyShift action_89
action_45 (176) = happyShift action_90
action_45 (177) = happyShift action_91
action_45 (181) = happyShift action_55
action_45 (182) = happyShift action_92
action_45 (183) = happyShift action_93
action_45 (184) = happyShift action_94
action_45 (185) = happyShift action_95
action_45 (57) = happyGoto action_58
action_45 (58) = happyGoto action_59
action_45 (59) = happyGoto action_60
action_45 (60) = happyGoto action_61
action_45 (61) = happyGoto action_62
action_45 (68) = happyGoto action_63
action_45 (69) = happyGoto action_64
action_45 (81) = happyGoto action_65
action_45 (83) = happyGoto action_66
action_45 (84) = happyGoto action_67
action_45 (100) = happyGoto action_68
action_45 (107) = happyGoto action_108
action_45 (108) = happyGoto action_71
action_45 (109) = happyGoto action_72
action_45 (110) = happyGoto action_73
action_45 (111) = happyGoto action_74
action_45 (115) = happyGoto action_76
action_45 _ = happyFail

action_46 (116) = happyShift action_77
action_46 (118) = happyShift action_78
action_46 (119) = happyShift action_57
action_46 (121) = happyShift action_79
action_46 (124) = happyShift action_80
action_46 (150) = happyShift action_81
action_46 (157) = happyShift action_82
action_46 (160) = happyShift action_83
action_46 (161) = happyShift action_84
action_46 (162) = happyShift action_85
action_46 (163) = happyShift action_86
action_46 (169) = happyShift action_87
action_46 (174) = happyShift action_88
action_46 (175) = happyShift action_89
action_46 (176) = happyShift action_90
action_46 (177) = happyShift action_91
action_46 (181) = happyShift action_55
action_46 (182) = happyShift action_92
action_46 (183) = happyShift action_93
action_46 (184) = happyShift action_94
action_46 (185) = happyShift action_95
action_46 (57) = happyGoto action_58
action_46 (58) = happyGoto action_59
action_46 (59) = happyGoto action_60
action_46 (60) = happyGoto action_61
action_46 (61) = happyGoto action_62
action_46 (68) = happyGoto action_63
action_46 (69) = happyGoto action_64
action_46 (81) = happyGoto action_65
action_46 (83) = happyGoto action_66
action_46 (84) = happyGoto action_67
action_46 (100) = happyGoto action_68
action_46 (108) = happyGoto action_107
action_46 (109) = happyGoto action_72
action_46 (110) = happyGoto action_73
action_46 (111) = happyGoto action_74
action_46 (115) = happyGoto action_76
action_46 _ = happyFail

action_47 (116) = happyShift action_77
action_47 (118) = happyShift action_78
action_47 (119) = happyShift action_57
action_47 (121) = happyShift action_79
action_47 (124) = happyShift action_80
action_47 (150) = happyShift action_81
action_47 (157) = happyShift action_82
action_47 (160) = happyShift action_83
action_47 (161) = happyShift action_84
action_47 (162) = happyShift action_85
action_47 (163) = happyShift action_86
action_47 (169) = happyShift action_87
action_47 (174) = happyShift action_88
action_47 (175) = happyShift action_89
action_47 (176) = happyShift action_90
action_47 (177) = happyShift action_91
action_47 (181) = happyShift action_55
action_47 (182) = happyShift action_92
action_47 (183) = happyShift action_93
action_47 (184) = happyShift action_94
action_47 (185) = happyShift action_95
action_47 (57) = happyGoto action_58
action_47 (58) = happyGoto action_59
action_47 (59) = happyGoto action_60
action_47 (60) = happyGoto action_61
action_47 (61) = happyGoto action_62
action_47 (68) = happyGoto action_63
action_47 (69) = happyGoto action_64
action_47 (81) = happyGoto action_65
action_47 (83) = happyGoto action_66
action_47 (84) = happyGoto action_67
action_47 (100) = happyGoto action_68
action_47 (109) = happyGoto action_106
action_47 (110) = happyGoto action_73
action_47 (111) = happyGoto action_74
action_47 (115) = happyGoto action_76
action_47 _ = happyFail

action_48 (116) = happyShift action_77
action_48 (118) = happyShift action_78
action_48 (119) = happyShift action_57
action_48 (121) = happyShift action_79
action_48 (150) = happyShift action_81
action_48 (157) = happyShift action_82
action_48 (160) = happyShift action_83
action_48 (161) = happyShift action_84
action_48 (162) = happyShift action_85
action_48 (163) = happyShift action_86
action_48 (169) = happyShift action_87
action_48 (174) = happyShift action_88
action_48 (175) = happyShift action_89
action_48 (176) = happyShift action_90
action_48 (177) = happyShift action_91
action_48 (181) = happyShift action_55
action_48 (182) = happyShift action_92
action_48 (183) = happyShift action_93
action_48 (184) = happyShift action_94
action_48 (185) = happyShift action_95
action_48 (57) = happyGoto action_58
action_48 (58) = happyGoto action_59
action_48 (59) = happyGoto action_60
action_48 (60) = happyGoto action_61
action_48 (61) = happyGoto action_62
action_48 (68) = happyGoto action_63
action_48 (69) = happyGoto action_64
action_48 (81) = happyGoto action_65
action_48 (83) = happyGoto action_66
action_48 (84) = happyGoto action_67
action_48 (100) = happyGoto action_68
action_48 (110) = happyGoto action_105
action_48 (111) = happyGoto action_74
action_48 (115) = happyGoto action_76
action_48 _ = happyFail

action_49 (118) = happyShift action_78
action_49 (119) = happyShift action_57
action_49 (121) = happyShift action_79
action_49 (150) = happyShift action_81
action_49 (157) = happyShift action_82
action_49 (169) = happyShift action_87
action_49 (181) = happyShift action_55
action_49 (182) = happyShift action_92
action_49 (183) = happyShift action_93
action_49 (184) = happyShift action_94
action_49 (185) = happyShift action_95
action_49 (57) = happyGoto action_58
action_49 (58) = happyGoto action_59
action_49 (59) = happyGoto action_60
action_49 (60) = happyGoto action_61
action_49 (61) = happyGoto action_103
action_49 (68) = happyGoto action_63
action_49 (69) = happyGoto action_64
action_49 (100) = happyGoto action_68
action_49 (111) = happyGoto action_104
action_49 (115) = happyGoto action_76
action_49 _ = happyFail

action_50 (116) = happyShift action_77
action_50 (118) = happyShift action_78
action_50 (119) = happyShift action_57
action_50 (121) = happyShift action_79
action_50 (124) = happyShift action_80
action_50 (150) = happyShift action_81
action_50 (157) = happyShift action_82
action_50 (158) = happyShift action_102
action_50 (160) = happyShift action_83
action_50 (161) = happyShift action_84
action_50 (162) = happyShift action_85
action_50 (163) = happyShift action_86
action_50 (169) = happyShift action_87
action_50 (174) = happyShift action_88
action_50 (175) = happyShift action_89
action_50 (176) = happyShift action_90
action_50 (177) = happyShift action_91
action_50 (181) = happyShift action_55
action_50 (182) = happyShift action_92
action_50 (183) = happyShift action_93
action_50 (184) = happyShift action_94
action_50 (185) = happyShift action_95
action_50 (57) = happyGoto action_58
action_50 (58) = happyGoto action_59
action_50 (59) = happyGoto action_60
action_50 (60) = happyGoto action_61
action_50 (61) = happyGoto action_62
action_50 (68) = happyGoto action_63
action_50 (69) = happyGoto action_64
action_50 (81) = happyGoto action_65
action_50 (83) = happyGoto action_66
action_50 (84) = happyGoto action_67
action_50 (100) = happyGoto action_68
action_50 (104) = happyGoto action_98
action_50 (105) = happyGoto action_99
action_50 (106) = happyGoto action_69
action_50 (107) = happyGoto action_70
action_50 (108) = happyGoto action_71
action_50 (109) = happyGoto action_72
action_50 (110) = happyGoto action_73
action_50 (111) = happyGoto action_74
action_50 (112) = happyGoto action_100
action_50 (113) = happyGoto action_101
action_50 (114) = happyGoto action_97
action_50 (115) = happyGoto action_76
action_50 _ = happyFail

action_51 (116) = happyShift action_77
action_51 (118) = happyShift action_78
action_51 (119) = happyShift action_57
action_51 (121) = happyShift action_79
action_51 (124) = happyShift action_80
action_51 (150) = happyShift action_81
action_51 (157) = happyShift action_82
action_51 (160) = happyShift action_83
action_51 (161) = happyShift action_84
action_51 (162) = happyShift action_85
action_51 (163) = happyShift action_86
action_51 (169) = happyShift action_87
action_51 (174) = happyShift action_88
action_51 (175) = happyShift action_89
action_51 (176) = happyShift action_90
action_51 (177) = happyShift action_91
action_51 (181) = happyShift action_55
action_51 (182) = happyShift action_92
action_51 (183) = happyShift action_93
action_51 (184) = happyShift action_94
action_51 (185) = happyShift action_95
action_51 (57) = happyGoto action_58
action_51 (58) = happyGoto action_59
action_51 (59) = happyGoto action_60
action_51 (60) = happyGoto action_61
action_51 (61) = happyGoto action_62
action_51 (68) = happyGoto action_63
action_51 (69) = happyGoto action_64
action_51 (81) = happyGoto action_65
action_51 (83) = happyGoto action_66
action_51 (84) = happyGoto action_67
action_51 (100) = happyGoto action_68
action_51 (106) = happyGoto action_69
action_51 (107) = happyGoto action_70
action_51 (108) = happyGoto action_71
action_51 (109) = happyGoto action_72
action_51 (110) = happyGoto action_73
action_51 (111) = happyGoto action_74
action_51 (113) = happyGoto action_96
action_51 (114) = happyGoto action_97
action_51 (115) = happyGoto action_76
action_51 _ = happyFail

action_52 (116) = happyShift action_77
action_52 (118) = happyShift action_78
action_52 (119) = happyShift action_57
action_52 (121) = happyShift action_79
action_52 (124) = happyShift action_80
action_52 (150) = happyShift action_81
action_52 (157) = happyShift action_82
action_52 (160) = happyShift action_83
action_52 (161) = happyShift action_84
action_52 (162) = happyShift action_85
action_52 (163) = happyShift action_86
action_52 (169) = happyShift action_87
action_52 (174) = happyShift action_88
action_52 (175) = happyShift action_89
action_52 (176) = happyShift action_90
action_52 (177) = happyShift action_91
action_52 (181) = happyShift action_55
action_52 (182) = happyShift action_92
action_52 (183) = happyShift action_93
action_52 (184) = happyShift action_94
action_52 (185) = happyShift action_95
action_52 (57) = happyGoto action_58
action_52 (58) = happyGoto action_59
action_52 (59) = happyGoto action_60
action_52 (60) = happyGoto action_61
action_52 (61) = happyGoto action_62
action_52 (68) = happyGoto action_63
action_52 (69) = happyGoto action_64
action_52 (81) = happyGoto action_65
action_52 (83) = happyGoto action_66
action_52 (84) = happyGoto action_67
action_52 (100) = happyGoto action_68
action_52 (106) = happyGoto action_69
action_52 (107) = happyGoto action_70
action_52 (108) = happyGoto action_71
action_52 (109) = happyGoto action_72
action_52 (110) = happyGoto action_73
action_52 (111) = happyGoto action_74
action_52 (114) = happyGoto action_75
action_52 (115) = happyGoto action_76
action_52 _ = happyFail

action_53 (119) = happyShift action_57
action_53 (115) = happyGoto action_56
action_53 _ = happyFail

action_54 (181) = happyShift action_55
action_54 _ = happyFail

action_55 _ = happyReduce_54

action_56 (186) = happyAccept
action_56 _ = happyFail

action_57 (116) = happyShift action_77
action_57 (118) = happyShift action_78
action_57 (119) = happyShift action_57
action_57 (121) = happyShift action_79
action_57 (124) = happyShift action_80
action_57 (150) = happyShift action_81
action_57 (157) = happyShift action_82
action_57 (158) = happyShift action_102
action_57 (160) = happyShift action_83
action_57 (161) = happyShift action_84
action_57 (162) = happyShift action_85
action_57 (163) = happyShift action_86
action_57 (169) = happyShift action_87
action_57 (174) = happyShift action_88
action_57 (175) = happyShift action_89
action_57 (176) = happyShift action_90
action_57 (177) = happyShift action_91
action_57 (181) = happyShift action_55
action_57 (182) = happyShift action_92
action_57 (183) = happyShift action_93
action_57 (184) = happyShift action_94
action_57 (185) = happyShift action_95
action_57 (57) = happyGoto action_58
action_57 (58) = happyGoto action_59
action_57 (59) = happyGoto action_60
action_57 (60) = happyGoto action_61
action_57 (61) = happyGoto action_62
action_57 (68) = happyGoto action_63
action_57 (69) = happyGoto action_64
action_57 (81) = happyGoto action_65
action_57 (83) = happyGoto action_66
action_57 (84) = happyGoto action_67
action_57 (100) = happyGoto action_68
action_57 (103) = happyGoto action_284
action_57 (104) = happyGoto action_98
action_57 (105) = happyGoto action_99
action_57 (106) = happyGoto action_69
action_57 (107) = happyGoto action_70
action_57 (108) = happyGoto action_71
action_57 (109) = happyGoto action_72
action_57 (110) = happyGoto action_73
action_57 (111) = happyGoto action_74
action_57 (112) = happyGoto action_113
action_57 (113) = happyGoto action_101
action_57 (114) = happyGoto action_97
action_57 (115) = happyGoto action_76
action_57 _ = happyFail

action_58 _ = happyReduce_184

action_59 _ = happyReduce_187

action_60 _ = happyReduce_188

action_61 _ = happyReduce_189

action_62 (119) = happyShift action_240
action_62 (140) = happyShift action_115
action_62 (101) = happyGoto action_270
action_62 (102) = happyGoto action_117
action_62 _ = happyReduce_151

action_63 _ = happyReduce_190

action_64 _ = happyReduce_191

action_65 _ = happyReduce_180

action_66 _ = happyReduce_109

action_67 _ = happyReduce_110

action_68 _ = happyReduce_185

action_69 (122) = happyShift action_264
action_69 (124) = happyShift action_265
action_69 _ = happyReduce_195

action_70 (117) = happyShift action_266
action_70 (121) = happyShift action_267
action_70 (126) = happyShift action_268
action_70 _ = happyReduce_171

action_71 _ = happyReduce_175

action_72 (142) = happyShift action_283
action_72 _ = happyReduce_177

action_73 (125) = happyShift action_269
action_73 _ = happyReduce_179

action_74 _ = happyReduce_183

action_75 (186) = happyAccept
action_75 _ = happyFail

action_76 _ = happyReduce_192

action_77 (118) = happyShift action_78
action_77 (119) = happyShift action_57
action_77 (121) = happyShift action_79
action_77 (150) = happyShift action_81
action_77 (157) = happyShift action_82
action_77 (169) = happyShift action_87
action_77 (181) = happyShift action_55
action_77 (182) = happyShift action_92
action_77 (183) = happyShift action_93
action_77 (184) = happyShift action_94
action_77 (185) = happyShift action_95
action_77 (57) = happyGoto action_58
action_77 (58) = happyGoto action_59
action_77 (59) = happyGoto action_60
action_77 (60) = happyGoto action_61
action_77 (61) = happyGoto action_103
action_77 (68) = happyGoto action_63
action_77 (69) = happyGoto action_64
action_77 (100) = happyGoto action_68
action_77 (111) = happyGoto action_282
action_77 (115) = happyGoto action_76
action_77 _ = happyFail

action_78 (121) = happyShift action_79
action_78 (185) = happyShift action_95
action_78 (61) = happyGoto action_103
action_78 (100) = happyGoto action_281
action_78 _ = happyFail

action_79 (121) = happyShift action_79
action_79 (185) = happyShift action_95
action_79 (61) = happyGoto action_103
action_79 (100) = happyGoto action_220
action_79 _ = happyFail

action_80 (116) = happyShift action_77
action_80 (118) = happyShift action_78
action_80 (119) = happyShift action_57
action_80 (121) = happyShift action_79
action_80 (150) = happyShift action_81
action_80 (157) = happyShift action_82
action_80 (160) = happyShift action_83
action_80 (161) = happyShift action_84
action_80 (162) = happyShift action_85
action_80 (163) = happyShift action_86
action_80 (169) = happyShift action_87
action_80 (174) = happyShift action_88
action_80 (175) = happyShift action_89
action_80 (176) = happyShift action_90
action_80 (177) = happyShift action_91
action_80 (181) = happyShift action_55
action_80 (182) = happyShift action_92
action_80 (183) = happyShift action_93
action_80 (184) = happyShift action_94
action_80 (185) = happyShift action_95
action_80 (57) = happyGoto action_58
action_80 (58) = happyGoto action_59
action_80 (59) = happyGoto action_60
action_80 (60) = happyGoto action_61
action_80 (61) = happyGoto action_62
action_80 (68) = happyGoto action_63
action_80 (69) = happyGoto action_64
action_80 (81) = happyGoto action_65
action_80 (83) = happyGoto action_66
action_80 (84) = happyGoto action_67
action_80 (100) = happyGoto action_68
action_80 (110) = happyGoto action_280
action_80 (111) = happyGoto action_74
action_80 (115) = happyGoto action_76
action_80 _ = happyFail

action_81 _ = happyReduce_74

action_82 _ = happyReduce_75

action_83 (119) = happyShift action_279
action_83 _ = happyFail

action_84 (119) = happyShift action_278
action_84 _ = happyFail

action_85 (119) = happyShift action_277
action_85 _ = happyFail

action_86 (119) = happyShift action_276
action_86 _ = happyFail

action_87 _ = happyReduce_73

action_88 (119) = happyShift action_275
action_88 _ = happyFail

action_89 (119) = happyShift action_274
action_89 _ = happyFail

action_90 (119) = happyShift action_273
action_90 _ = happyFail

action_91 (119) = happyShift action_272
action_91 _ = happyFail

action_92 _ = happyReduce_55

action_93 _ = happyReduce_56

action_94 _ = happyReduce_57

action_95 _ = happyReduce_58

action_96 (186) = happyAccept
action_96 _ = happyFail

action_97 _ = happyReduce_194

action_98 _ = happyReduce_193

action_99 (128) = happyShift action_258
action_99 (129) = happyShift action_259
action_99 (131) = happyShift action_260
action_99 (132) = happyShift action_261
action_99 (133) = happyShift action_262
action_99 (180) = happyShift action_263
action_99 _ = happyReduce_161

action_100 (186) = happyAccept
action_100 _ = happyFail

action_101 _ = happyReduce_168

action_102 (116) = happyShift action_77
action_102 (118) = happyShift action_78
action_102 (119) = happyShift action_57
action_102 (121) = happyShift action_79
action_102 (124) = happyShift action_80
action_102 (150) = happyShift action_81
action_102 (157) = happyShift action_82
action_102 (160) = happyShift action_83
action_102 (161) = happyShift action_84
action_102 (162) = happyShift action_85
action_102 (163) = happyShift action_86
action_102 (169) = happyShift action_87
action_102 (174) = happyShift action_88
action_102 (175) = happyShift action_89
action_102 (176) = happyShift action_90
action_102 (177) = happyShift action_91
action_102 (181) = happyShift action_55
action_102 (182) = happyShift action_92
action_102 (183) = happyShift action_93
action_102 (184) = happyShift action_94
action_102 (185) = happyShift action_95
action_102 (57) = happyGoto action_58
action_102 (58) = happyGoto action_59
action_102 (59) = happyGoto action_60
action_102 (60) = happyGoto action_61
action_102 (61) = happyGoto action_62
action_102 (68) = happyGoto action_63
action_102 (69) = happyGoto action_64
action_102 (81) = happyGoto action_65
action_102 (83) = happyGoto action_66
action_102 (84) = happyGoto action_67
action_102 (100) = happyGoto action_68
action_102 (105) = happyGoto action_271
action_102 (106) = happyGoto action_69
action_102 (107) = happyGoto action_70
action_102 (108) = happyGoto action_71
action_102 (109) = happyGoto action_72
action_102 (110) = happyGoto action_73
action_102 (111) = happyGoto action_74
action_102 (113) = happyGoto action_101
action_102 (114) = happyGoto action_97
action_102 (115) = happyGoto action_76
action_102 _ = happyFail

action_103 (140) = happyShift action_115
action_103 (101) = happyGoto action_270
action_103 (102) = happyGoto action_117
action_103 _ = happyReduce_151

action_104 (186) = happyAccept
action_104 _ = happyFail

action_105 (125) = happyShift action_269
action_105 (186) = happyAccept
action_105 _ = happyFail

action_106 (186) = happyAccept
action_106 _ = happyFail

action_107 (186) = happyAccept
action_107 _ = happyFail

action_108 (117) = happyShift action_266
action_108 (121) = happyShift action_267
action_108 (126) = happyShift action_268
action_108 (186) = happyAccept
action_108 _ = happyFail

action_109 (122) = happyShift action_264
action_109 (124) = happyShift action_265
action_109 (186) = happyAccept
action_109 _ = happyFail

action_110 (128) = happyShift action_258
action_110 (129) = happyShift action_259
action_110 (131) = happyShift action_260
action_110 (132) = happyShift action_261
action_110 (133) = happyShift action_262
action_110 (180) = happyShift action_263
action_110 (186) = happyAccept
action_110 _ = happyFail

action_111 (186) = happyAccept
action_111 _ = happyFail

action_112 (159) = happyShift action_250
action_112 (186) = happyAccept
action_112 _ = happyFail

action_113 (143) = happyShift action_257
action_113 _ = happyReduce_159

action_114 (186) = happyAccept
action_114 _ = happyFail

action_115 (181) = happyShift action_55
action_115 (57) = happyGoto action_256
action_115 _ = happyFail

action_116 (186) = happyAccept
action_116 _ = happyFail

action_117 (140) = happyShift action_115
action_117 (101) = happyGoto action_255
action_117 (102) = happyGoto action_117
action_117 _ = happyReduce_154

action_118 (186) = happyAccept
action_118 _ = happyFail

action_119 (186) = happyAccept
action_119 _ = happyFail

action_120 _ = happyReduce_147

action_121 _ = happyReduce_150

action_122 _ = happyReduce_146

action_123 _ = happyReduce_148

action_124 _ = happyReduce_145

action_125 _ = happyReduce_149

action_126 (123) = happyShift action_254
action_126 _ = happyReduce_142

action_127 (186) = happyAccept
action_127 _ = happyFail

action_128 (134) = happyShift action_134
action_128 (135) = happyShift action_135
action_128 (136) = happyShift action_136
action_128 (137) = happyShift action_137
action_128 (138) = happyShift action_138
action_128 (139) = happyShift action_139
action_128 (67) = happyGoto action_253
action_128 _ = happyFail

action_129 (186) = happyAccept
action_129 _ = happyFail

action_130 _ = happyReduce_78

action_131 (140) = happyShift action_223
action_131 (152) = happyShift action_252
action_131 _ = happyFail

action_132 (186) = happyAccept
action_132 _ = happyFail

action_133 (121) = happyShift action_133
action_133 (134) = happyShift action_134
action_133 (135) = happyShift action_135
action_133 (136) = happyShift action_136
action_133 (137) = happyShift action_137
action_133 (138) = happyShift action_138
action_133 (139) = happyShift action_139
action_133 (67) = happyGoto action_130
action_133 (70) = happyGoto action_219
action_133 _ = happyFail

action_134 _ = happyReduce_67

action_135 _ = happyReduce_68

action_136 _ = happyReduce_69

action_137 _ = happyReduce_70

action_138 _ = happyReduce_71

action_139 _ = happyReduce_72

action_140 (186) = happyAccept
action_140 _ = happyFail

action_141 (123) = happyShift action_251
action_141 (159) = happyShift action_250
action_141 _ = happyReduce_113

action_142 (186) = happyAccept
action_142 _ = happyFail

action_143 _ = happyReduce_138

action_144 (186) = happyAccept
action_144 _ = happyFail

action_145 (159) = happyShift action_250
action_145 _ = happyReduce_137

action_146 (186) = happyAccept
action_146 _ = happyFail

action_147 (116) = happyShift action_77
action_147 (118) = happyShift action_78
action_147 (119) = happyShift action_57
action_147 (121) = happyShift action_79
action_147 (124) = happyShift action_80
action_147 (150) = happyShift action_81
action_147 (157) = happyShift action_82
action_147 (158) = happyShift action_102
action_147 (160) = happyShift action_83
action_147 (161) = happyShift action_84
action_147 (162) = happyShift action_85
action_147 (163) = happyShift action_86
action_147 (169) = happyShift action_87
action_147 (174) = happyShift action_88
action_147 (175) = happyShift action_89
action_147 (176) = happyShift action_90
action_147 (177) = happyShift action_91
action_147 (181) = happyShift action_55
action_147 (182) = happyShift action_92
action_147 (183) = happyShift action_93
action_147 (184) = happyShift action_94
action_147 (185) = happyShift action_95
action_147 (57) = happyGoto action_58
action_147 (58) = happyGoto action_59
action_147 (59) = happyGoto action_60
action_147 (60) = happyGoto action_61
action_147 (61) = happyGoto action_62
action_147 (68) = happyGoto action_63
action_147 (69) = happyGoto action_64
action_147 (81) = happyGoto action_65
action_147 (83) = happyGoto action_66
action_147 (84) = happyGoto action_67
action_147 (94) = happyGoto action_249
action_147 (100) = happyGoto action_68
action_147 (103) = happyGoto action_145
action_147 (104) = happyGoto action_98
action_147 (105) = happyGoto action_99
action_147 (106) = happyGoto action_69
action_147 (107) = happyGoto action_70
action_147 (108) = happyGoto action_71
action_147 (109) = happyGoto action_72
action_147 (110) = happyGoto action_73
action_147 (111) = happyGoto action_74
action_147 (112) = happyGoto action_113
action_147 (113) = happyGoto action_101
action_147 (114) = happyGoto action_97
action_147 (115) = happyGoto action_76
action_147 _ = happyReduce_136

action_148 (148) = happyShift action_150
action_148 (186) = happyAccept
action_148 (91) = happyGoto action_248
action_148 _ = happyFail

action_149 (186) = happyAccept
action_149 _ = happyFail

action_150 (116) = happyShift action_77
action_150 (118) = happyShift action_78
action_150 (119) = happyShift action_57
action_150 (121) = happyShift action_79
action_150 (124) = happyShift action_80
action_150 (150) = happyShift action_81
action_150 (157) = happyShift action_82
action_150 (158) = happyShift action_102
action_150 (160) = happyShift action_83
action_150 (161) = happyShift action_84
action_150 (162) = happyShift action_85
action_150 (163) = happyShift action_86
action_150 (169) = happyShift action_87
action_150 (174) = happyShift action_88
action_150 (175) = happyShift action_89
action_150 (176) = happyShift action_90
action_150 (177) = happyShift action_91
action_150 (181) = happyShift action_55
action_150 (182) = happyShift action_92
action_150 (183) = happyShift action_93
action_150 (184) = happyShift action_94
action_150 (185) = happyShift action_95
action_150 (57) = happyGoto action_58
action_150 (58) = happyGoto action_59
action_150 (59) = happyGoto action_60
action_150 (60) = happyGoto action_61
action_150 (61) = happyGoto action_62
action_150 (68) = happyGoto action_63
action_150 (69) = happyGoto action_64
action_150 (81) = happyGoto action_65
action_150 (83) = happyGoto action_66
action_150 (84) = happyGoto action_67
action_150 (100) = happyGoto action_68
action_150 (103) = happyGoto action_247
action_150 (104) = happyGoto action_98
action_150 (105) = happyGoto action_99
action_150 (106) = happyGoto action_69
action_150 (107) = happyGoto action_70
action_150 (108) = happyGoto action_71
action_150 (109) = happyGoto action_72
action_150 (110) = happyGoto action_73
action_150 (111) = happyGoto action_74
action_150 (112) = happyGoto action_113
action_150 (113) = happyGoto action_101
action_150 (114) = happyGoto action_97
action_150 (115) = happyGoto action_76
action_150 _ = happyFail

action_151 (186) = happyAccept
action_151 _ = happyFail

action_152 (65) = happyGoto action_246
action_152 (66) = happyGoto action_208
action_152 _ = happyReduce_65

action_153 (186) = happyAccept
action_153 _ = happyFail

action_154 (116) = happyShift action_77
action_154 (118) = happyShift action_78
action_154 (119) = happyShift action_57
action_154 (121) = happyShift action_79
action_154 (124) = happyShift action_80
action_154 (150) = happyShift action_81
action_154 (157) = happyShift action_82
action_154 (158) = happyShift action_102
action_154 (160) = happyShift action_83
action_154 (161) = happyShift action_84
action_154 (162) = happyShift action_85
action_154 (163) = happyShift action_86
action_154 (169) = happyShift action_87
action_154 (174) = happyShift action_88
action_154 (175) = happyShift action_89
action_154 (176) = happyShift action_90
action_154 (177) = happyShift action_91
action_154 (181) = happyShift action_55
action_154 (182) = happyShift action_92
action_154 (183) = happyShift action_93
action_154 (184) = happyShift action_94
action_154 (185) = happyShift action_95
action_154 (57) = happyGoto action_58
action_154 (58) = happyGoto action_59
action_154 (59) = happyGoto action_60
action_154 (60) = happyGoto action_61
action_154 (61) = happyGoto action_62
action_154 (68) = happyGoto action_63
action_154 (69) = happyGoto action_64
action_154 (81) = happyGoto action_65
action_154 (83) = happyGoto action_66
action_154 (84) = happyGoto action_67
action_154 (100) = happyGoto action_68
action_154 (103) = happyGoto action_245
action_154 (104) = happyGoto action_98
action_154 (105) = happyGoto action_99
action_154 (106) = happyGoto action_69
action_154 (107) = happyGoto action_70
action_154 (108) = happyGoto action_71
action_154 (109) = happyGoto action_72
action_154 (110) = happyGoto action_73
action_154 (111) = happyGoto action_74
action_154 (112) = happyGoto action_113
action_154 (113) = happyGoto action_101
action_154 (114) = happyGoto action_97
action_154 (115) = happyGoto action_76
action_154 _ = happyFail

action_155 (186) = happyAccept
action_155 _ = happyFail

action_156 (116) = happyShift action_77
action_156 (118) = happyShift action_78
action_156 (119) = happyShift action_57
action_156 (121) = happyShift action_79
action_156 (124) = happyShift action_80
action_156 (150) = happyShift action_81
action_156 (157) = happyShift action_82
action_156 (158) = happyShift action_102
action_156 (160) = happyShift action_83
action_156 (161) = happyShift action_84
action_156 (162) = happyShift action_85
action_156 (163) = happyShift action_86
action_156 (169) = happyShift action_87
action_156 (174) = happyShift action_88
action_156 (175) = happyShift action_89
action_156 (176) = happyShift action_90
action_156 (177) = happyShift action_91
action_156 (181) = happyShift action_55
action_156 (182) = happyShift action_92
action_156 (183) = happyShift action_93
action_156 (184) = happyShift action_94
action_156 (185) = happyShift action_95
action_156 (57) = happyGoto action_58
action_156 (58) = happyGoto action_59
action_156 (59) = happyGoto action_60
action_156 (60) = happyGoto action_61
action_156 (61) = happyGoto action_62
action_156 (68) = happyGoto action_63
action_156 (69) = happyGoto action_64
action_156 (81) = happyGoto action_65
action_156 (83) = happyGoto action_66
action_156 (84) = happyGoto action_67
action_156 (100) = happyGoto action_68
action_156 (103) = happyGoto action_244
action_156 (104) = happyGoto action_98
action_156 (105) = happyGoto action_99
action_156 (106) = happyGoto action_69
action_156 (107) = happyGoto action_70
action_156 (108) = happyGoto action_71
action_156 (109) = happyGoto action_72
action_156 (110) = happyGoto action_73
action_156 (111) = happyGoto action_74
action_156 (112) = happyGoto action_113
action_156 (113) = happyGoto action_101
action_156 (114) = happyGoto action_97
action_156 (115) = happyGoto action_76
action_156 _ = happyFail

action_157 (186) = happyAccept
action_157 _ = happyFail

action_158 (185) = happyShift action_95
action_158 (61) = happyGoto action_243
action_158 _ = happyFail

action_159 (186) = happyAccept
action_159 _ = happyFail

action_160 (65) = happyGoto action_242
action_160 (66) = happyGoto action_208
action_160 _ = happyReduce_65

action_161 (186) = happyAccept
action_161 _ = happyFail

action_162 (116) = happyShift action_77
action_162 (118) = happyShift action_78
action_162 (119) = happyShift action_57
action_162 (121) = happyShift action_79
action_162 (124) = happyShift action_80
action_162 (150) = happyShift action_81
action_162 (157) = happyShift action_82
action_162 (158) = happyShift action_102
action_162 (160) = happyShift action_83
action_162 (161) = happyShift action_84
action_162 (162) = happyShift action_85
action_162 (163) = happyShift action_86
action_162 (169) = happyShift action_87
action_162 (174) = happyShift action_88
action_162 (175) = happyShift action_89
action_162 (176) = happyShift action_90
action_162 (177) = happyShift action_91
action_162 (181) = happyShift action_55
action_162 (182) = happyShift action_92
action_162 (183) = happyShift action_93
action_162 (184) = happyShift action_94
action_162 (185) = happyShift action_95
action_162 (57) = happyGoto action_58
action_162 (58) = happyGoto action_59
action_162 (59) = happyGoto action_60
action_162 (60) = happyGoto action_61
action_162 (61) = happyGoto action_62
action_162 (68) = happyGoto action_63
action_162 (69) = happyGoto action_64
action_162 (81) = happyGoto action_65
action_162 (83) = happyGoto action_66
action_162 (84) = happyGoto action_67
action_162 (100) = happyGoto action_68
action_162 (103) = happyGoto action_241
action_162 (104) = happyGoto action_98
action_162 (105) = happyGoto action_99
action_162 (106) = happyGoto action_69
action_162 (107) = happyGoto action_70
action_162 (108) = happyGoto action_71
action_162 (109) = happyGoto action_72
action_162 (110) = happyGoto action_73
action_162 (111) = happyGoto action_74
action_162 (112) = happyGoto action_113
action_162 (113) = happyGoto action_101
action_162 (114) = happyGoto action_97
action_162 (115) = happyGoto action_76
action_162 _ = happyFail

action_163 (186) = happyAccept
action_163 _ = happyFail

action_164 (186) = happyAccept
action_164 _ = happyFail

action_165 (119) = happyShift action_240
action_165 _ = happyFail

action_166 (186) = happyAccept
action_166 _ = happyFail

action_167 (186) = happyAccept
action_167 _ = happyFail

action_168 (130) = happyShift action_239
action_168 _ = happyFail

action_169 (186) = happyAccept
action_169 _ = happyFail

action_170 (134) = happyShift action_134
action_170 (135) = happyShift action_135
action_170 (136) = happyShift action_136
action_170 (137) = happyShift action_137
action_170 (138) = happyShift action_138
action_170 (139) = happyShift action_139
action_170 (67) = happyGoto action_186
action_170 (73) = happyGoto action_238
action_170 _ = happyFail

action_171 (123) = happyShift action_237
action_171 _ = happyReduce_105

action_172 (186) = happyAccept
action_172 _ = happyFail

action_173 (150) = happyShift action_81
action_173 (157) = happyShift action_82
action_173 (169) = happyShift action_87
action_173 (178) = happyShift action_173
action_173 (181) = happyShift action_55
action_173 (182) = happyShift action_92
action_173 (183) = happyShift action_93
action_173 (184) = happyShift action_94
action_173 (57) = happyGoto action_174
action_173 (58) = happyGoto action_175
action_173 (59) = happyGoto action_176
action_173 (60) = happyGoto action_177
action_173 (68) = happyGoto action_178
action_173 (69) = happyGoto action_179
action_173 (75) = happyGoto action_171
action_173 (76) = happyGoto action_180
action_173 (77) = happyGoto action_235
action_173 (78) = happyGoto action_236
action_173 _ = happyFail

action_174 _ = happyReduce_100

action_175 _ = happyReduce_99

action_176 _ = happyReduce_101

action_177 _ = happyReduce_98

action_178 _ = happyReduce_97

action_179 _ = happyReduce_102

action_180 (123) = happyShift action_234
action_180 _ = happyReduce_103

action_181 (186) = happyAccept
action_181 _ = happyFail

action_182 (186) = happyAccept
action_182 _ = happyFail

action_183 (186) = happyAccept
action_183 _ = happyFail

action_184 (186) = happyAccept
action_184 _ = happyFail

action_185 (116) = happyShift action_77
action_185 (118) = happyShift action_78
action_185 (119) = happyShift action_57
action_185 (121) = happyShift action_79
action_185 (124) = happyShift action_80
action_185 (150) = happyShift action_81
action_185 (157) = happyShift action_82
action_185 (158) = happyShift action_102
action_185 (160) = happyShift action_83
action_185 (161) = happyShift action_84
action_185 (162) = happyShift action_85
action_185 (163) = happyShift action_86
action_185 (169) = happyShift action_87
action_185 (174) = happyShift action_88
action_185 (175) = happyShift action_89
action_185 (176) = happyShift action_90
action_185 (177) = happyShift action_91
action_185 (178) = happyShift action_173
action_185 (181) = happyShift action_55
action_185 (182) = happyShift action_92
action_185 (183) = happyShift action_93
action_185 (184) = happyShift action_94
action_185 (185) = happyShift action_95
action_185 (57) = happyGoto action_58
action_185 (58) = happyGoto action_59
action_185 (59) = happyGoto action_60
action_185 (60) = happyGoto action_61
action_185 (61) = happyGoto action_62
action_185 (68) = happyGoto action_63
action_185 (69) = happyGoto action_64
action_185 (75) = happyGoto action_232
action_185 (81) = happyGoto action_65
action_185 (83) = happyGoto action_66
action_185 (84) = happyGoto action_67
action_185 (100) = happyGoto action_68
action_185 (103) = happyGoto action_233
action_185 (104) = happyGoto action_98
action_185 (105) = happyGoto action_99
action_185 (106) = happyGoto action_69
action_185 (107) = happyGoto action_70
action_185 (108) = happyGoto action_71
action_185 (109) = happyGoto action_72
action_185 (110) = happyGoto action_73
action_185 (111) = happyGoto action_74
action_185 (112) = happyGoto action_113
action_185 (113) = happyGoto action_101
action_185 (114) = happyGoto action_97
action_185 (115) = happyGoto action_76
action_185 _ = happyFail

action_186 (121) = happyShift action_79
action_186 (185) = happyShift action_95
action_186 (61) = happyGoto action_103
action_186 (100) = happyGoto action_221
action_186 _ = happyFail

action_187 (186) = happyAccept
action_187 _ = happyFail

action_188 (186) = happyAccept
action_188 _ = happyFail

action_189 (65) = happyGoto action_231
action_189 (66) = happyGoto action_208
action_189 _ = happyReduce_65

action_190 (186) = happyAccept
action_190 _ = happyFail

action_191 _ = happyReduce_87

action_192 (127) = happyShift action_230
action_192 _ = happyFail

action_193 (127) = happyShift action_229
action_193 _ = happyFail

action_194 (127) = happyShift action_228
action_194 _ = happyFail

action_195 (127) = happyShift action_227
action_195 _ = happyFail

action_196 _ = happyReduce_82

action_197 (127) = happyShift action_226
action_197 _ = happyFail

action_198 _ = happyReduce_84

action_199 _ = happyReduce_85

action_200 (127) = happyShift action_225
action_200 _ = happyFail

action_201 (127) = happyShift action_224
action_201 _ = happyFail

action_202 (140) = happyShift action_223
action_202 (186) = happyAccept
action_202 _ = happyFail

action_203 (186) = happyAccept
action_203 _ = happyFail

action_204 (186) = happyAccept
action_204 _ = happyFail

action_205 (186) = happyAccept
action_205 _ = happyFail

action_206 (121) = happyShift action_79
action_206 (134) = happyShift action_134
action_206 (135) = happyShift action_135
action_206 (136) = happyShift action_136
action_206 (137) = happyShift action_137
action_206 (138) = happyShift action_138
action_206 (139) = happyShift action_139
action_206 (144) = happyShift action_143
action_206 (146) = happyShift action_189
action_206 (151) = happyShift action_158
action_206 (153) = happyShift action_154
action_206 (155) = happyShift action_170
action_206 (160) = happyShift action_83
action_206 (161) = happyShift action_84
action_206 (162) = happyShift action_85
action_206 (163) = happyShift action_86
action_206 (165) = happyShift action_160
action_206 (167) = happyShift action_147
action_206 (173) = happyShift action_162
action_206 (174) = happyShift action_88
action_206 (175) = happyShift action_89
action_206 (176) = happyShift action_90
action_206 (177) = happyShift action_91
action_206 (185) = happyShift action_95
action_206 (186) = happyAccept
action_206 (61) = happyGoto action_62
action_206 (67) = happyGoto action_186
action_206 (71) = happyGoto action_222
action_206 (72) = happyGoto action_191
action_206 (73) = happyGoto action_192
action_206 (79) = happyGoto action_193
action_206 (80) = happyGoto action_194
action_206 (81) = happyGoto action_195
action_206 (83) = happyGoto action_66
action_206 (84) = happyGoto action_67
action_206 (85) = happyGoto action_196
action_206 (86) = happyGoto action_197
action_206 (87) = happyGoto action_198
action_206 (89) = happyGoto action_199
action_206 (93) = happyGoto action_200
action_206 (95) = happyGoto action_201
action_206 (100) = happyGoto action_168
action_206 _ = happyFail

action_207 (186) = happyAccept
action_207 _ = happyFail

action_208 (121) = happyShift action_79
action_208 (134) = happyShift action_134
action_208 (135) = happyShift action_135
action_208 (136) = happyShift action_136
action_208 (137) = happyShift action_137
action_208 (138) = happyShift action_138
action_208 (139) = happyShift action_139
action_208 (144) = happyShift action_143
action_208 (146) = happyShift action_189
action_208 (151) = happyShift action_158
action_208 (153) = happyShift action_154
action_208 (155) = happyShift action_170
action_208 (160) = happyShift action_83
action_208 (161) = happyShift action_84
action_208 (162) = happyShift action_85
action_208 (163) = happyShift action_86
action_208 (165) = happyShift action_160
action_208 (167) = happyShift action_147
action_208 (173) = happyShift action_162
action_208 (174) = happyShift action_88
action_208 (175) = happyShift action_89
action_208 (176) = happyShift action_90
action_208 (177) = happyShift action_91
action_208 (185) = happyShift action_95
action_208 (61) = happyGoto action_62
action_208 (67) = happyGoto action_186
action_208 (71) = happyGoto action_222
action_208 (72) = happyGoto action_191
action_208 (73) = happyGoto action_192
action_208 (79) = happyGoto action_193
action_208 (80) = happyGoto action_194
action_208 (81) = happyGoto action_195
action_208 (83) = happyGoto action_66
action_208 (84) = happyGoto action_67
action_208 (85) = happyGoto action_196
action_208 (86) = happyGoto action_197
action_208 (87) = happyGoto action_198
action_208 (89) = happyGoto action_199
action_208 (93) = happyGoto action_200
action_208 (95) = happyGoto action_201
action_208 (100) = happyGoto action_168
action_208 _ = happyReduce_64

action_209 (186) = happyAccept
action_209 _ = happyFail

action_210 (121) = happyShift action_79
action_210 (185) = happyShift action_95
action_210 (61) = happyGoto action_103
action_210 (100) = happyGoto action_221
action_210 _ = happyReduce_78

action_211 _ = happyReduce_62

action_212 _ = happyReduce_63

action_213 (121) = happyShift action_213
action_213 (134) = happyShift action_134
action_213 (135) = happyShift action_135
action_213 (136) = happyShift action_136
action_213 (137) = happyShift action_137
action_213 (138) = happyShift action_138
action_213 (139) = happyShift action_139
action_213 (185) = happyShift action_95
action_213 (61) = happyGoto action_103
action_213 (67) = happyGoto action_130
action_213 (70) = happyGoto action_219
action_213 (100) = happyGoto action_220
action_213 _ = happyFail

action_214 (186) = happyAccept
action_214 _ = happyFail

action_215 (121) = happyShift action_213
action_215 (134) = happyShift action_134
action_215 (135) = happyShift action_135
action_215 (136) = happyShift action_136
action_215 (137) = happyShift action_137
action_215 (138) = happyShift action_138
action_215 (139) = happyShift action_139
action_215 (144) = happyShift action_143
action_215 (146) = happyShift action_189
action_215 (151) = happyShift action_158
action_215 (153) = happyShift action_154
action_215 (155) = happyShift action_170
action_215 (160) = happyShift action_83
action_215 (161) = happyShift action_84
action_215 (162) = happyShift action_85
action_215 (163) = happyShift action_86
action_215 (165) = happyShift action_160
action_215 (167) = happyShift action_147
action_215 (173) = happyShift action_162
action_215 (174) = happyShift action_88
action_215 (175) = happyShift action_89
action_215 (176) = happyShift action_90
action_215 (177) = happyShift action_91
action_215 (185) = happyShift action_95
action_215 (61) = happyGoto action_62
action_215 (63) = happyGoto action_218
action_215 (64) = happyGoto action_215
action_215 (67) = happyGoto action_210
action_215 (70) = happyGoto action_131
action_215 (71) = happyGoto action_211
action_215 (72) = happyGoto action_191
action_215 (73) = happyGoto action_192
action_215 (79) = happyGoto action_193
action_215 (80) = happyGoto action_194
action_215 (81) = happyGoto action_195
action_215 (83) = happyGoto action_66
action_215 (84) = happyGoto action_67
action_215 (85) = happyGoto action_196
action_215 (86) = happyGoto action_197
action_215 (87) = happyGoto action_198
action_215 (89) = happyGoto action_199
action_215 (93) = happyGoto action_200
action_215 (95) = happyGoto action_201
action_215 (96) = happyGoto action_212
action_215 (100) = happyGoto action_168
action_215 _ = happyReduce_60

action_216 (186) = happyAccept
action_216 _ = happyFail

action_217 _ = happyReduce_59

action_218 _ = happyReduce_61

action_219 (140) = happyShift action_223
action_219 _ = happyReduce_76

action_220 _ = happyReduce_152

action_221 (130) = happyShift action_185
action_221 (74) = happyGoto action_328
action_221 _ = happyReduce_92

action_222 _ = happyReduce_66

action_223 (141) = happyShift action_327
action_223 _ = happyFail

action_224 _ = happyReduce_89

action_225 _ = happyReduce_88

action_226 _ = happyReduce_83

action_227 _ = happyReduce_86

action_228 _ = happyReduce_81

action_229 _ = happyReduce_80

action_230 _ = happyReduce_79

action_231 (149) = happyShift action_326
action_231 _ = happyFail

action_232 _ = happyReduce_94

action_233 (159) = happyShift action_250
action_233 _ = happyReduce_93

action_234 (150) = happyShift action_81
action_234 (157) = happyShift action_82
action_234 (169) = happyShift action_87
action_234 (181) = happyShift action_55
action_234 (182) = happyShift action_92
action_234 (183) = happyShift action_93
action_234 (184) = happyShift action_94
action_234 (57) = happyGoto action_174
action_234 (58) = happyGoto action_175
action_234 (59) = happyGoto action_176
action_234 (60) = happyGoto action_177
action_234 (68) = happyGoto action_178
action_234 (69) = happyGoto action_179
action_234 (76) = happyGoto action_180
action_234 (77) = happyGoto action_325
action_234 _ = happyFail

action_235 (179) = happyShift action_324
action_235 _ = happyFail

action_236 (179) = happyShift action_323
action_236 _ = happyFail

action_237 (178) = happyShift action_173
action_237 (75) = happyGoto action_171
action_237 (78) = happyGoto action_322
action_237 _ = happyFail

action_238 _ = happyReduce_107

action_239 (116) = happyShift action_77
action_239 (118) = happyShift action_78
action_239 (119) = happyShift action_57
action_239 (121) = happyShift action_79
action_239 (124) = happyShift action_80
action_239 (150) = happyShift action_81
action_239 (157) = happyShift action_82
action_239 (158) = happyShift action_102
action_239 (160) = happyShift action_83
action_239 (161) = happyShift action_84
action_239 (162) = happyShift action_85
action_239 (163) = happyShift action_86
action_239 (169) = happyShift action_87
action_239 (174) = happyShift action_88
action_239 (175) = happyShift action_89
action_239 (176) = happyShift action_90
action_239 (177) = happyShift action_91
action_239 (181) = happyShift action_55
action_239 (182) = happyShift action_92
action_239 (183) = happyShift action_93
action_239 (184) = happyShift action_94
action_239 (185) = happyShift action_95
action_239 (57) = happyGoto action_58
action_239 (58) = happyGoto action_59
action_239 (59) = happyGoto action_60
action_239 (60) = happyGoto action_61
action_239 (61) = happyGoto action_62
action_239 (68) = happyGoto action_63
action_239 (69) = happyGoto action_64
action_239 (81) = happyGoto action_65
action_239 (83) = happyGoto action_66
action_239 (84) = happyGoto action_67
action_239 (100) = happyGoto action_68
action_239 (103) = happyGoto action_321
action_239 (104) = happyGoto action_98
action_239 (105) = happyGoto action_99
action_239 (106) = happyGoto action_69
action_239 (107) = happyGoto action_70
action_239 (108) = happyGoto action_71
action_239 (109) = happyGoto action_72
action_239 (110) = happyGoto action_73
action_239 (111) = happyGoto action_74
action_239 (112) = happyGoto action_113
action_239 (113) = happyGoto action_101
action_239 (114) = happyGoto action_97
action_239 (115) = happyGoto action_76
action_239 _ = happyFail

action_240 (116) = happyShift action_77
action_240 (118) = happyShift action_78
action_240 (119) = happyShift action_57
action_240 (121) = happyShift action_79
action_240 (124) = happyShift action_80
action_240 (150) = happyShift action_81
action_240 (157) = happyShift action_82
action_240 (158) = happyShift action_102
action_240 (160) = happyShift action_83
action_240 (161) = happyShift action_84
action_240 (162) = happyShift action_85
action_240 (163) = happyShift action_86
action_240 (169) = happyShift action_87
action_240 (174) = happyShift action_88
action_240 (175) = happyShift action_89
action_240 (176) = happyShift action_90
action_240 (177) = happyShift action_91
action_240 (181) = happyShift action_55
action_240 (182) = happyShift action_92
action_240 (183) = happyShift action_93
action_240 (184) = happyShift action_94
action_240 (185) = happyShift action_95
action_240 (57) = happyGoto action_58
action_240 (58) = happyGoto action_59
action_240 (59) = happyGoto action_60
action_240 (60) = happyGoto action_61
action_240 (61) = happyGoto action_62
action_240 (68) = happyGoto action_63
action_240 (69) = happyGoto action_64
action_240 (81) = happyGoto action_65
action_240 (82) = happyGoto action_320
action_240 (83) = happyGoto action_66
action_240 (84) = happyGoto action_67
action_240 (100) = happyGoto action_68
action_240 (103) = happyGoto action_141
action_240 (104) = happyGoto action_98
action_240 (105) = happyGoto action_99
action_240 (106) = happyGoto action_69
action_240 (107) = happyGoto action_70
action_240 (108) = happyGoto action_71
action_240 (109) = happyGoto action_72
action_240 (110) = happyGoto action_73
action_240 (111) = happyGoto action_74
action_240 (112) = happyGoto action_113
action_240 (113) = happyGoto action_101
action_240 (114) = happyGoto action_97
action_240 (115) = happyGoto action_76
action_240 _ = happyReduce_112

action_241 (146) = happyShift action_189
action_241 (159) = happyShift action_250
action_241 (72) = happyGoto action_319
action_241 _ = happyFail

action_242 (170) = happyShift action_318
action_242 _ = happyFail

action_243 (130) = happyShift action_316
action_243 (154) = happyShift action_317
action_243 _ = happyFail

action_244 (159) = happyShift action_250
action_244 _ = happyReduce_128

action_245 (159) = happyShift action_250
action_245 (168) = happyShift action_315
action_245 _ = happyFail

action_246 _ = happyReduce_130

action_247 (159) = happyShift action_250
action_247 (168) = happyShift action_314
action_247 _ = happyFail

action_248 _ = happyReduce_134

action_249 _ = happyReduce_135

action_250 (116) = happyShift action_77
action_250 (118) = happyShift action_78
action_250 (119) = happyShift action_57
action_250 (121) = happyShift action_79
action_250 (124) = happyShift action_80
action_250 (150) = happyShift action_81
action_250 (157) = happyShift action_82
action_250 (158) = happyShift action_102
action_250 (160) = happyShift action_83
action_250 (161) = happyShift action_84
action_250 (162) = happyShift action_85
action_250 (163) = happyShift action_86
action_250 (169) = happyShift action_87
action_250 (174) = happyShift action_88
action_250 (175) = happyShift action_89
action_250 (176) = happyShift action_90
action_250 (177) = happyShift action_91
action_250 (181) = happyShift action_55
action_250 (182) = happyShift action_92
action_250 (183) = happyShift action_93
action_250 (184) = happyShift action_94
action_250 (185) = happyShift action_95
action_250 (57) = happyGoto action_58
action_250 (58) = happyGoto action_59
action_250 (59) = happyGoto action_60
action_250 (60) = happyGoto action_61
action_250 (61) = happyGoto action_62
action_250 (68) = happyGoto action_63
action_250 (69) = happyGoto action_64
action_250 (81) = happyGoto action_65
action_250 (83) = happyGoto action_66
action_250 (84) = happyGoto action_67
action_250 (100) = happyGoto action_68
action_250 (104) = happyGoto action_98
action_250 (105) = happyGoto action_99
action_250 (106) = happyGoto action_69
action_250 (107) = happyGoto action_70
action_250 (108) = happyGoto action_71
action_250 (109) = happyGoto action_72
action_250 (110) = happyGoto action_73
action_250 (111) = happyGoto action_74
action_250 (112) = happyGoto action_313
action_250 (113) = happyGoto action_101
action_250 (114) = happyGoto action_97
action_250 (115) = happyGoto action_76
action_250 _ = happyFail

action_251 (116) = happyShift action_77
action_251 (118) = happyShift action_78
action_251 (119) = happyShift action_57
action_251 (121) = happyShift action_79
action_251 (124) = happyShift action_80
action_251 (150) = happyShift action_81
action_251 (157) = happyShift action_82
action_251 (158) = happyShift action_102
action_251 (160) = happyShift action_83
action_251 (161) = happyShift action_84
action_251 (162) = happyShift action_85
action_251 (163) = happyShift action_86
action_251 (169) = happyShift action_87
action_251 (174) = happyShift action_88
action_251 (175) = happyShift action_89
action_251 (176) = happyShift action_90
action_251 (177) = happyShift action_91
action_251 (181) = happyShift action_55
action_251 (182) = happyShift action_92
action_251 (183) = happyShift action_93
action_251 (184) = happyShift action_94
action_251 (185) = happyShift action_95
action_251 (57) = happyGoto action_58
action_251 (58) = happyGoto action_59
action_251 (59) = happyGoto action_60
action_251 (60) = happyGoto action_61
action_251 (61) = happyGoto action_62
action_251 (68) = happyGoto action_63
action_251 (69) = happyGoto action_64
action_251 (81) = happyGoto action_65
action_251 (82) = happyGoto action_312
action_251 (83) = happyGoto action_66
action_251 (84) = happyGoto action_67
action_251 (100) = happyGoto action_68
action_251 (103) = happyGoto action_141
action_251 (104) = happyGoto action_98
action_251 (105) = happyGoto action_99
action_251 (106) = happyGoto action_69
action_251 (107) = happyGoto action_70
action_251 (108) = happyGoto action_71
action_251 (109) = happyGoto action_72
action_251 (110) = happyGoto action_73
action_251 (111) = happyGoto action_74
action_251 (112) = happyGoto action_113
action_251 (113) = happyGoto action_101
action_251 (114) = happyGoto action_97
action_251 (115) = happyGoto action_76
action_251 _ = happyReduce_112

action_252 (185) = happyShift action_95
action_252 (61) = happyGoto action_311
action_252 _ = happyFail

action_253 (121) = happyShift action_79
action_253 (185) = happyShift action_95
action_253 (61) = happyGoto action_103
action_253 (100) = happyGoto action_310
action_253 _ = happyFail

action_254 (134) = happyReduce_144
action_254 (135) = happyReduce_144
action_254 (136) = happyReduce_144
action_254 (137) = happyReduce_144
action_254 (138) = happyReduce_144
action_254 (139) = happyReduce_144
action_254 (145) = happyShift action_120
action_254 (156) = happyShift action_121
action_254 (164) = happyShift action_122
action_254 (166) = happyShift action_123
action_254 (171) = happyShift action_124
action_254 (172) = happyShift action_125
action_254 (97) = happyGoto action_126
action_254 (98) = happyGoto action_309
action_254 (99) = happyGoto action_128
action_254 _ = happyReduce_141

action_255 _ = happyReduce_155

action_256 (141) = happyShift action_308
action_256 _ = happyFail

action_257 (116) = happyShift action_77
action_257 (118) = happyShift action_78
action_257 (119) = happyShift action_57
action_257 (121) = happyShift action_79
action_257 (124) = happyShift action_80
action_257 (150) = happyShift action_81
action_257 (157) = happyShift action_82
action_257 (158) = happyShift action_102
action_257 (160) = happyShift action_83
action_257 (161) = happyShift action_84
action_257 (162) = happyShift action_85
action_257 (163) = happyShift action_86
action_257 (169) = happyShift action_87
action_257 (174) = happyShift action_88
action_257 (175) = happyShift action_89
action_257 (176) = happyShift action_90
action_257 (177) = happyShift action_91
action_257 (181) = happyShift action_55
action_257 (182) = happyShift action_92
action_257 (183) = happyShift action_93
action_257 (184) = happyShift action_94
action_257 (185) = happyShift action_95
action_257 (57) = happyGoto action_58
action_257 (58) = happyGoto action_59
action_257 (59) = happyGoto action_60
action_257 (60) = happyGoto action_61
action_257 (61) = happyGoto action_62
action_257 (68) = happyGoto action_63
action_257 (69) = happyGoto action_64
action_257 (81) = happyGoto action_65
action_257 (83) = happyGoto action_66
action_257 (84) = happyGoto action_67
action_257 (100) = happyGoto action_68
action_257 (104) = happyGoto action_307
action_257 (105) = happyGoto action_99
action_257 (106) = happyGoto action_69
action_257 (107) = happyGoto action_70
action_257 (108) = happyGoto action_71
action_257 (109) = happyGoto action_72
action_257 (110) = happyGoto action_73
action_257 (111) = happyGoto action_74
action_257 (113) = happyGoto action_101
action_257 (114) = happyGoto action_97
action_257 (115) = happyGoto action_76
action_257 _ = happyFail

action_258 (116) = happyShift action_77
action_258 (118) = happyShift action_78
action_258 (119) = happyShift action_57
action_258 (121) = happyShift action_79
action_258 (124) = happyShift action_80
action_258 (150) = happyShift action_81
action_258 (157) = happyShift action_82
action_258 (160) = happyShift action_83
action_258 (161) = happyShift action_84
action_258 (162) = happyShift action_85
action_258 (163) = happyShift action_86
action_258 (169) = happyShift action_87
action_258 (174) = happyShift action_88
action_258 (175) = happyShift action_89
action_258 (176) = happyShift action_90
action_258 (177) = happyShift action_91
action_258 (181) = happyShift action_55
action_258 (182) = happyShift action_92
action_258 (183) = happyShift action_93
action_258 (184) = happyShift action_94
action_258 (185) = happyShift action_95
action_258 (57) = happyGoto action_58
action_258 (58) = happyGoto action_59
action_258 (59) = happyGoto action_60
action_258 (60) = happyGoto action_61
action_258 (61) = happyGoto action_62
action_258 (68) = happyGoto action_63
action_258 (69) = happyGoto action_64
action_258 (81) = happyGoto action_65
action_258 (83) = happyGoto action_66
action_258 (84) = happyGoto action_67
action_258 (100) = happyGoto action_68
action_258 (106) = happyGoto action_69
action_258 (107) = happyGoto action_70
action_258 (108) = happyGoto action_71
action_258 (109) = happyGoto action_72
action_258 (110) = happyGoto action_73
action_258 (111) = happyGoto action_74
action_258 (114) = happyGoto action_306
action_258 (115) = happyGoto action_76
action_258 _ = happyFail

action_259 (116) = happyShift action_77
action_259 (118) = happyShift action_78
action_259 (119) = happyShift action_57
action_259 (121) = happyShift action_79
action_259 (124) = happyShift action_80
action_259 (150) = happyShift action_81
action_259 (157) = happyShift action_82
action_259 (160) = happyShift action_83
action_259 (161) = happyShift action_84
action_259 (162) = happyShift action_85
action_259 (163) = happyShift action_86
action_259 (169) = happyShift action_87
action_259 (174) = happyShift action_88
action_259 (175) = happyShift action_89
action_259 (176) = happyShift action_90
action_259 (177) = happyShift action_91
action_259 (181) = happyShift action_55
action_259 (182) = happyShift action_92
action_259 (183) = happyShift action_93
action_259 (184) = happyShift action_94
action_259 (185) = happyShift action_95
action_259 (57) = happyGoto action_58
action_259 (58) = happyGoto action_59
action_259 (59) = happyGoto action_60
action_259 (60) = happyGoto action_61
action_259 (61) = happyGoto action_62
action_259 (68) = happyGoto action_63
action_259 (69) = happyGoto action_64
action_259 (81) = happyGoto action_65
action_259 (83) = happyGoto action_66
action_259 (84) = happyGoto action_67
action_259 (100) = happyGoto action_68
action_259 (106) = happyGoto action_69
action_259 (107) = happyGoto action_70
action_259 (108) = happyGoto action_71
action_259 (109) = happyGoto action_72
action_259 (110) = happyGoto action_73
action_259 (111) = happyGoto action_74
action_259 (114) = happyGoto action_305
action_259 (115) = happyGoto action_76
action_259 _ = happyFail

action_260 (116) = happyShift action_77
action_260 (118) = happyShift action_78
action_260 (119) = happyShift action_57
action_260 (121) = happyShift action_79
action_260 (124) = happyShift action_80
action_260 (150) = happyShift action_81
action_260 (157) = happyShift action_82
action_260 (160) = happyShift action_83
action_260 (161) = happyShift action_84
action_260 (162) = happyShift action_85
action_260 (163) = happyShift action_86
action_260 (169) = happyShift action_87
action_260 (174) = happyShift action_88
action_260 (175) = happyShift action_89
action_260 (176) = happyShift action_90
action_260 (177) = happyShift action_91
action_260 (181) = happyShift action_55
action_260 (182) = happyShift action_92
action_260 (183) = happyShift action_93
action_260 (184) = happyShift action_94
action_260 (185) = happyShift action_95
action_260 (57) = happyGoto action_58
action_260 (58) = happyGoto action_59
action_260 (59) = happyGoto action_60
action_260 (60) = happyGoto action_61
action_260 (61) = happyGoto action_62
action_260 (68) = happyGoto action_63
action_260 (69) = happyGoto action_64
action_260 (81) = happyGoto action_65
action_260 (83) = happyGoto action_66
action_260 (84) = happyGoto action_67
action_260 (100) = happyGoto action_68
action_260 (106) = happyGoto action_69
action_260 (107) = happyGoto action_70
action_260 (108) = happyGoto action_71
action_260 (109) = happyGoto action_72
action_260 (110) = happyGoto action_73
action_260 (111) = happyGoto action_74
action_260 (114) = happyGoto action_304
action_260 (115) = happyGoto action_76
action_260 _ = happyFail

action_261 (116) = happyShift action_77
action_261 (118) = happyShift action_78
action_261 (119) = happyShift action_57
action_261 (121) = happyShift action_79
action_261 (124) = happyShift action_80
action_261 (150) = happyShift action_81
action_261 (157) = happyShift action_82
action_261 (160) = happyShift action_83
action_261 (161) = happyShift action_84
action_261 (162) = happyShift action_85
action_261 (163) = happyShift action_86
action_261 (169) = happyShift action_87
action_261 (174) = happyShift action_88
action_261 (175) = happyShift action_89
action_261 (176) = happyShift action_90
action_261 (177) = happyShift action_91
action_261 (181) = happyShift action_55
action_261 (182) = happyShift action_92
action_261 (183) = happyShift action_93
action_261 (184) = happyShift action_94
action_261 (185) = happyShift action_95
action_261 (57) = happyGoto action_58
action_261 (58) = happyGoto action_59
action_261 (59) = happyGoto action_60
action_261 (60) = happyGoto action_61
action_261 (61) = happyGoto action_62
action_261 (68) = happyGoto action_63
action_261 (69) = happyGoto action_64
action_261 (81) = happyGoto action_65
action_261 (83) = happyGoto action_66
action_261 (84) = happyGoto action_67
action_261 (100) = happyGoto action_68
action_261 (106) = happyGoto action_69
action_261 (107) = happyGoto action_70
action_261 (108) = happyGoto action_71
action_261 (109) = happyGoto action_72
action_261 (110) = happyGoto action_73
action_261 (111) = happyGoto action_74
action_261 (114) = happyGoto action_303
action_261 (115) = happyGoto action_76
action_261 _ = happyFail

action_262 (116) = happyShift action_77
action_262 (118) = happyShift action_78
action_262 (119) = happyShift action_57
action_262 (121) = happyShift action_79
action_262 (124) = happyShift action_80
action_262 (150) = happyShift action_81
action_262 (157) = happyShift action_82
action_262 (160) = happyShift action_83
action_262 (161) = happyShift action_84
action_262 (162) = happyShift action_85
action_262 (163) = happyShift action_86
action_262 (169) = happyShift action_87
action_262 (174) = happyShift action_88
action_262 (175) = happyShift action_89
action_262 (176) = happyShift action_90
action_262 (177) = happyShift action_91
action_262 (181) = happyShift action_55
action_262 (182) = happyShift action_92
action_262 (183) = happyShift action_93
action_262 (184) = happyShift action_94
action_262 (185) = happyShift action_95
action_262 (57) = happyGoto action_58
action_262 (58) = happyGoto action_59
action_262 (59) = happyGoto action_60
action_262 (60) = happyGoto action_61
action_262 (61) = happyGoto action_62
action_262 (68) = happyGoto action_63
action_262 (69) = happyGoto action_64
action_262 (81) = happyGoto action_65
action_262 (83) = happyGoto action_66
action_262 (84) = happyGoto action_67
action_262 (100) = happyGoto action_68
action_262 (106) = happyGoto action_69
action_262 (107) = happyGoto action_70
action_262 (108) = happyGoto action_71
action_262 (109) = happyGoto action_72
action_262 (110) = happyGoto action_73
action_262 (111) = happyGoto action_74
action_262 (114) = happyGoto action_302
action_262 (115) = happyGoto action_76
action_262 _ = happyFail

action_263 (116) = happyShift action_77
action_263 (118) = happyShift action_78
action_263 (119) = happyShift action_57
action_263 (121) = happyShift action_79
action_263 (124) = happyShift action_80
action_263 (150) = happyShift action_81
action_263 (157) = happyShift action_82
action_263 (160) = happyShift action_83
action_263 (161) = happyShift action_84
action_263 (162) = happyShift action_85
action_263 (163) = happyShift action_86
action_263 (169) = happyShift action_87
action_263 (174) = happyShift action_88
action_263 (175) = happyShift action_89
action_263 (176) = happyShift action_90
action_263 (177) = happyShift action_91
action_263 (181) = happyShift action_55
action_263 (182) = happyShift action_92
action_263 (183) = happyShift action_93
action_263 (184) = happyShift action_94
action_263 (185) = happyShift action_95
action_263 (57) = happyGoto action_58
action_263 (58) = happyGoto action_59
action_263 (59) = happyGoto action_60
action_263 (60) = happyGoto action_61
action_263 (61) = happyGoto action_62
action_263 (68) = happyGoto action_63
action_263 (69) = happyGoto action_64
action_263 (81) = happyGoto action_65
action_263 (83) = happyGoto action_66
action_263 (84) = happyGoto action_67
action_263 (100) = happyGoto action_68
action_263 (106) = happyGoto action_69
action_263 (107) = happyGoto action_70
action_263 (108) = happyGoto action_71
action_263 (109) = happyGoto action_72
action_263 (110) = happyGoto action_73
action_263 (111) = happyGoto action_74
action_263 (114) = happyGoto action_301
action_263 (115) = happyGoto action_76
action_263 _ = happyFail

action_264 (116) = happyShift action_77
action_264 (118) = happyShift action_78
action_264 (119) = happyShift action_57
action_264 (121) = happyShift action_79
action_264 (124) = happyShift action_80
action_264 (150) = happyShift action_81
action_264 (157) = happyShift action_82
action_264 (160) = happyShift action_83
action_264 (161) = happyShift action_84
action_264 (162) = happyShift action_85
action_264 (163) = happyShift action_86
action_264 (169) = happyShift action_87
action_264 (174) = happyShift action_88
action_264 (175) = happyShift action_89
action_264 (176) = happyShift action_90
action_264 (177) = happyShift action_91
action_264 (181) = happyShift action_55
action_264 (182) = happyShift action_92
action_264 (183) = happyShift action_93
action_264 (184) = happyShift action_94
action_264 (185) = happyShift action_95
action_264 (57) = happyGoto action_58
action_264 (58) = happyGoto action_59
action_264 (59) = happyGoto action_60
action_264 (60) = happyGoto action_61
action_264 (61) = happyGoto action_62
action_264 (68) = happyGoto action_63
action_264 (69) = happyGoto action_64
action_264 (81) = happyGoto action_65
action_264 (83) = happyGoto action_66
action_264 (84) = happyGoto action_67
action_264 (100) = happyGoto action_68
action_264 (107) = happyGoto action_300
action_264 (108) = happyGoto action_71
action_264 (109) = happyGoto action_72
action_264 (110) = happyGoto action_73
action_264 (111) = happyGoto action_74
action_264 (115) = happyGoto action_76
action_264 _ = happyFail

action_265 (116) = happyShift action_77
action_265 (118) = happyShift action_78
action_265 (119) = happyShift action_57
action_265 (121) = happyShift action_79
action_265 (124) = happyShift action_80
action_265 (150) = happyShift action_81
action_265 (157) = happyShift action_82
action_265 (160) = happyShift action_83
action_265 (161) = happyShift action_84
action_265 (162) = happyShift action_85
action_265 (163) = happyShift action_86
action_265 (169) = happyShift action_87
action_265 (174) = happyShift action_88
action_265 (175) = happyShift action_89
action_265 (176) = happyShift action_90
action_265 (177) = happyShift action_91
action_265 (181) = happyShift action_55
action_265 (182) = happyShift action_92
action_265 (183) = happyShift action_93
action_265 (184) = happyShift action_94
action_265 (185) = happyShift action_95
action_265 (57) = happyGoto action_58
action_265 (58) = happyGoto action_59
action_265 (59) = happyGoto action_60
action_265 (60) = happyGoto action_61
action_265 (61) = happyGoto action_62
action_265 (68) = happyGoto action_63
action_265 (69) = happyGoto action_64
action_265 (81) = happyGoto action_65
action_265 (83) = happyGoto action_66
action_265 (84) = happyGoto action_67
action_265 (100) = happyGoto action_68
action_265 (107) = happyGoto action_299
action_265 (108) = happyGoto action_71
action_265 (109) = happyGoto action_72
action_265 (110) = happyGoto action_73
action_265 (111) = happyGoto action_74
action_265 (115) = happyGoto action_76
action_265 _ = happyFail

action_266 (116) = happyShift action_77
action_266 (118) = happyShift action_78
action_266 (119) = happyShift action_57
action_266 (121) = happyShift action_79
action_266 (124) = happyShift action_80
action_266 (150) = happyShift action_81
action_266 (157) = happyShift action_82
action_266 (160) = happyShift action_83
action_266 (161) = happyShift action_84
action_266 (162) = happyShift action_85
action_266 (163) = happyShift action_86
action_266 (169) = happyShift action_87
action_266 (174) = happyShift action_88
action_266 (175) = happyShift action_89
action_266 (176) = happyShift action_90
action_266 (177) = happyShift action_91
action_266 (181) = happyShift action_55
action_266 (182) = happyShift action_92
action_266 (183) = happyShift action_93
action_266 (184) = happyShift action_94
action_266 (185) = happyShift action_95
action_266 (57) = happyGoto action_58
action_266 (58) = happyGoto action_59
action_266 (59) = happyGoto action_60
action_266 (60) = happyGoto action_61
action_266 (61) = happyGoto action_62
action_266 (68) = happyGoto action_63
action_266 (69) = happyGoto action_64
action_266 (81) = happyGoto action_65
action_266 (83) = happyGoto action_66
action_266 (84) = happyGoto action_67
action_266 (100) = happyGoto action_68
action_266 (108) = happyGoto action_298
action_266 (109) = happyGoto action_72
action_266 (110) = happyGoto action_73
action_266 (111) = happyGoto action_74
action_266 (115) = happyGoto action_76
action_266 _ = happyFail

action_267 (116) = happyShift action_77
action_267 (118) = happyShift action_78
action_267 (119) = happyShift action_57
action_267 (121) = happyShift action_79
action_267 (124) = happyShift action_80
action_267 (150) = happyShift action_81
action_267 (157) = happyShift action_82
action_267 (160) = happyShift action_83
action_267 (161) = happyShift action_84
action_267 (162) = happyShift action_85
action_267 (163) = happyShift action_86
action_267 (169) = happyShift action_87
action_267 (174) = happyShift action_88
action_267 (175) = happyShift action_89
action_267 (176) = happyShift action_90
action_267 (177) = happyShift action_91
action_267 (181) = happyShift action_55
action_267 (182) = happyShift action_92
action_267 (183) = happyShift action_93
action_267 (184) = happyShift action_94
action_267 (185) = happyShift action_95
action_267 (57) = happyGoto action_58
action_267 (58) = happyGoto action_59
action_267 (59) = happyGoto action_60
action_267 (60) = happyGoto action_61
action_267 (61) = happyGoto action_62
action_267 (68) = happyGoto action_63
action_267 (69) = happyGoto action_64
action_267 (81) = happyGoto action_65
action_267 (83) = happyGoto action_66
action_267 (84) = happyGoto action_67
action_267 (100) = happyGoto action_68
action_267 (108) = happyGoto action_297
action_267 (109) = happyGoto action_72
action_267 (110) = happyGoto action_73
action_267 (111) = happyGoto action_74
action_267 (115) = happyGoto action_76
action_267 _ = happyFail

action_268 (116) = happyShift action_77
action_268 (118) = happyShift action_78
action_268 (119) = happyShift action_57
action_268 (121) = happyShift action_79
action_268 (124) = happyShift action_80
action_268 (150) = happyShift action_81
action_268 (157) = happyShift action_82
action_268 (160) = happyShift action_83
action_268 (161) = happyShift action_84
action_268 (162) = happyShift action_85
action_268 (163) = happyShift action_86
action_268 (169) = happyShift action_87
action_268 (174) = happyShift action_88
action_268 (175) = happyShift action_89
action_268 (176) = happyShift action_90
action_268 (177) = happyShift action_91
action_268 (181) = happyShift action_55
action_268 (182) = happyShift action_92
action_268 (183) = happyShift action_93
action_268 (184) = happyShift action_94
action_268 (185) = happyShift action_95
action_268 (57) = happyGoto action_58
action_268 (58) = happyGoto action_59
action_268 (59) = happyGoto action_60
action_268 (60) = happyGoto action_61
action_268 (61) = happyGoto action_62
action_268 (68) = happyGoto action_63
action_268 (69) = happyGoto action_64
action_268 (81) = happyGoto action_65
action_268 (83) = happyGoto action_66
action_268 (84) = happyGoto action_67
action_268 (100) = happyGoto action_68
action_268 (108) = happyGoto action_296
action_268 (109) = happyGoto action_72
action_268 (110) = happyGoto action_73
action_268 (111) = happyGoto action_74
action_268 (115) = happyGoto action_76
action_268 _ = happyFail

action_269 (118) = happyShift action_78
action_269 (119) = happyShift action_57
action_269 (121) = happyShift action_79
action_269 (150) = happyShift action_81
action_269 (157) = happyShift action_82
action_269 (169) = happyShift action_87
action_269 (181) = happyShift action_55
action_269 (182) = happyShift action_92
action_269 (183) = happyShift action_93
action_269 (184) = happyShift action_94
action_269 (185) = happyShift action_95
action_269 (57) = happyGoto action_58
action_269 (58) = happyGoto action_59
action_269 (59) = happyGoto action_60
action_269 (60) = happyGoto action_61
action_269 (61) = happyGoto action_103
action_269 (68) = happyGoto action_63
action_269 (69) = happyGoto action_64
action_269 (100) = happyGoto action_68
action_269 (111) = happyGoto action_295
action_269 (115) = happyGoto action_76
action_269 _ = happyFail

action_270 _ = happyReduce_153

action_271 (128) = happyShift action_258
action_271 (129) = happyShift action_259
action_271 (131) = happyShift action_260
action_271 (132) = happyShift action_261
action_271 (133) = happyShift action_262
action_271 (180) = happyShift action_263
action_271 _ = happyReduce_160

action_272 (116) = happyShift action_77
action_272 (118) = happyShift action_78
action_272 (119) = happyShift action_57
action_272 (121) = happyShift action_79
action_272 (124) = happyShift action_80
action_272 (150) = happyShift action_81
action_272 (157) = happyShift action_82
action_272 (158) = happyShift action_102
action_272 (160) = happyShift action_83
action_272 (161) = happyShift action_84
action_272 (162) = happyShift action_85
action_272 (163) = happyShift action_86
action_272 (169) = happyShift action_87
action_272 (174) = happyShift action_88
action_272 (175) = happyShift action_89
action_272 (176) = happyShift action_90
action_272 (177) = happyShift action_91
action_272 (181) = happyShift action_55
action_272 (182) = happyShift action_92
action_272 (183) = happyShift action_93
action_272 (184) = happyShift action_94
action_272 (185) = happyShift action_95
action_272 (57) = happyGoto action_58
action_272 (58) = happyGoto action_59
action_272 (59) = happyGoto action_60
action_272 (60) = happyGoto action_61
action_272 (61) = happyGoto action_62
action_272 (68) = happyGoto action_63
action_272 (69) = happyGoto action_64
action_272 (81) = happyGoto action_65
action_272 (83) = happyGoto action_66
action_272 (84) = happyGoto action_67
action_272 (100) = happyGoto action_68
action_272 (103) = happyGoto action_294
action_272 (104) = happyGoto action_98
action_272 (105) = happyGoto action_99
action_272 (106) = happyGoto action_69
action_272 (107) = happyGoto action_70
action_272 (108) = happyGoto action_71
action_272 (109) = happyGoto action_72
action_272 (110) = happyGoto action_73
action_272 (111) = happyGoto action_74
action_272 (112) = happyGoto action_113
action_272 (113) = happyGoto action_101
action_272 (114) = happyGoto action_97
action_272 (115) = happyGoto action_76
action_272 _ = happyFail

action_273 (116) = happyShift action_77
action_273 (118) = happyShift action_78
action_273 (119) = happyShift action_57
action_273 (121) = happyShift action_79
action_273 (124) = happyShift action_80
action_273 (150) = happyShift action_81
action_273 (157) = happyShift action_82
action_273 (158) = happyShift action_102
action_273 (160) = happyShift action_83
action_273 (161) = happyShift action_84
action_273 (162) = happyShift action_85
action_273 (163) = happyShift action_86
action_273 (169) = happyShift action_87
action_273 (174) = happyShift action_88
action_273 (175) = happyShift action_89
action_273 (176) = happyShift action_90
action_273 (177) = happyShift action_91
action_273 (181) = happyShift action_55
action_273 (182) = happyShift action_92
action_273 (183) = happyShift action_93
action_273 (184) = happyShift action_94
action_273 (185) = happyShift action_95
action_273 (57) = happyGoto action_58
action_273 (58) = happyGoto action_59
action_273 (59) = happyGoto action_60
action_273 (60) = happyGoto action_61
action_273 (61) = happyGoto action_62
action_273 (68) = happyGoto action_63
action_273 (69) = happyGoto action_64
action_273 (81) = happyGoto action_65
action_273 (83) = happyGoto action_66
action_273 (84) = happyGoto action_67
action_273 (100) = happyGoto action_68
action_273 (103) = happyGoto action_293
action_273 (104) = happyGoto action_98
action_273 (105) = happyGoto action_99
action_273 (106) = happyGoto action_69
action_273 (107) = happyGoto action_70
action_273 (108) = happyGoto action_71
action_273 (109) = happyGoto action_72
action_273 (110) = happyGoto action_73
action_273 (111) = happyGoto action_74
action_273 (112) = happyGoto action_113
action_273 (113) = happyGoto action_101
action_273 (114) = happyGoto action_97
action_273 (115) = happyGoto action_76
action_273 _ = happyFail

action_274 (116) = happyShift action_77
action_274 (118) = happyShift action_78
action_274 (119) = happyShift action_57
action_274 (121) = happyShift action_79
action_274 (124) = happyShift action_80
action_274 (150) = happyShift action_81
action_274 (157) = happyShift action_82
action_274 (158) = happyShift action_102
action_274 (160) = happyShift action_83
action_274 (161) = happyShift action_84
action_274 (162) = happyShift action_85
action_274 (163) = happyShift action_86
action_274 (169) = happyShift action_87
action_274 (174) = happyShift action_88
action_274 (175) = happyShift action_89
action_274 (176) = happyShift action_90
action_274 (177) = happyShift action_91
action_274 (181) = happyShift action_55
action_274 (182) = happyShift action_92
action_274 (183) = happyShift action_93
action_274 (184) = happyShift action_94
action_274 (185) = happyShift action_95
action_274 (57) = happyGoto action_58
action_274 (58) = happyGoto action_59
action_274 (59) = happyGoto action_60
action_274 (60) = happyGoto action_61
action_274 (61) = happyGoto action_62
action_274 (68) = happyGoto action_63
action_274 (69) = happyGoto action_64
action_274 (81) = happyGoto action_65
action_274 (83) = happyGoto action_66
action_274 (84) = happyGoto action_67
action_274 (100) = happyGoto action_68
action_274 (103) = happyGoto action_292
action_274 (104) = happyGoto action_98
action_274 (105) = happyGoto action_99
action_274 (106) = happyGoto action_69
action_274 (107) = happyGoto action_70
action_274 (108) = happyGoto action_71
action_274 (109) = happyGoto action_72
action_274 (110) = happyGoto action_73
action_274 (111) = happyGoto action_74
action_274 (112) = happyGoto action_113
action_274 (113) = happyGoto action_101
action_274 (114) = happyGoto action_97
action_274 (115) = happyGoto action_76
action_274 _ = happyFail

action_275 (116) = happyShift action_77
action_275 (118) = happyShift action_78
action_275 (119) = happyShift action_57
action_275 (121) = happyShift action_79
action_275 (124) = happyShift action_80
action_275 (150) = happyShift action_81
action_275 (157) = happyShift action_82
action_275 (158) = happyShift action_102
action_275 (160) = happyShift action_83
action_275 (161) = happyShift action_84
action_275 (162) = happyShift action_85
action_275 (163) = happyShift action_86
action_275 (169) = happyShift action_87
action_275 (174) = happyShift action_88
action_275 (175) = happyShift action_89
action_275 (176) = happyShift action_90
action_275 (177) = happyShift action_91
action_275 (181) = happyShift action_55
action_275 (182) = happyShift action_92
action_275 (183) = happyShift action_93
action_275 (184) = happyShift action_94
action_275 (185) = happyShift action_95
action_275 (57) = happyGoto action_58
action_275 (58) = happyGoto action_59
action_275 (59) = happyGoto action_60
action_275 (60) = happyGoto action_61
action_275 (61) = happyGoto action_62
action_275 (68) = happyGoto action_63
action_275 (69) = happyGoto action_64
action_275 (81) = happyGoto action_65
action_275 (83) = happyGoto action_66
action_275 (84) = happyGoto action_67
action_275 (100) = happyGoto action_68
action_275 (103) = happyGoto action_291
action_275 (104) = happyGoto action_98
action_275 (105) = happyGoto action_99
action_275 (106) = happyGoto action_69
action_275 (107) = happyGoto action_70
action_275 (108) = happyGoto action_71
action_275 (109) = happyGoto action_72
action_275 (110) = happyGoto action_73
action_275 (111) = happyGoto action_74
action_275 (112) = happyGoto action_113
action_275 (113) = happyGoto action_101
action_275 (114) = happyGoto action_97
action_275 (115) = happyGoto action_76
action_275 _ = happyFail

action_276 (120) = happyShift action_290
action_276 _ = happyFail

action_277 (120) = happyShift action_289
action_277 _ = happyFail

action_278 (120) = happyShift action_288
action_278 _ = happyFail

action_279 (120) = happyShift action_287
action_279 _ = happyFail

action_280 (125) = happyShift action_269
action_280 _ = happyReduce_178

action_281 _ = happyReduce_186

action_282 _ = happyReduce_182

action_283 (116) = happyShift action_77
action_283 (118) = happyShift action_78
action_283 (119) = happyShift action_57
action_283 (121) = happyShift action_79
action_283 (124) = happyShift action_80
action_283 (150) = happyShift action_81
action_283 (157) = happyShift action_82
action_283 (160) = happyShift action_83
action_283 (161) = happyShift action_84
action_283 (162) = happyShift action_85
action_283 (163) = happyShift action_86
action_283 (169) = happyShift action_87
action_283 (174) = happyShift action_88
action_283 (175) = happyShift action_89
action_283 (176) = happyShift action_90
action_283 (177) = happyShift action_91
action_283 (181) = happyShift action_55
action_283 (182) = happyShift action_92
action_283 (183) = happyShift action_93
action_283 (184) = happyShift action_94
action_283 (185) = happyShift action_95
action_283 (57) = happyGoto action_58
action_283 (58) = happyGoto action_59
action_283 (59) = happyGoto action_60
action_283 (60) = happyGoto action_61
action_283 (61) = happyGoto action_62
action_283 (68) = happyGoto action_63
action_283 (69) = happyGoto action_64
action_283 (81) = happyGoto action_65
action_283 (83) = happyGoto action_66
action_283 (84) = happyGoto action_67
action_283 (100) = happyGoto action_68
action_283 (108) = happyGoto action_286
action_283 (109) = happyGoto action_72
action_283 (110) = happyGoto action_73
action_283 (111) = happyGoto action_74
action_283 (115) = happyGoto action_76
action_283 _ = happyFail

action_284 (120) = happyShift action_285
action_284 (159) = happyShift action_250
action_284 _ = happyFail

action_285 _ = happyReduce_196

action_286 _ = happyReduce_176

action_287 _ = happyReduce_121

action_288 _ = happyReduce_120

action_289 _ = happyReduce_119

action_290 _ = happyReduce_122

action_291 (120) = happyShift action_339
action_291 (159) = happyShift action_250
action_291 _ = happyFail

action_292 (120) = happyShift action_338
action_292 (159) = happyShift action_250
action_292 _ = happyFail

action_293 (120) = happyShift action_337
action_293 (159) = happyShift action_250
action_293 _ = happyFail

action_294 (120) = happyShift action_336
action_294 (159) = happyShift action_250
action_294 _ = happyFail

action_295 _ = happyReduce_181

action_296 _ = happyReduce_173

action_297 _ = happyReduce_172

action_298 _ = happyReduce_174

action_299 (117) = happyShift action_266
action_299 (121) = happyShift action_267
action_299 (126) = happyShift action_268
action_299 _ = happyReduce_170

action_300 (117) = happyShift action_266
action_300 (121) = happyShift action_267
action_300 (126) = happyShift action_268
action_300 _ = happyReduce_169

action_301 _ = happyReduce_163

action_302 _ = happyReduce_167

action_303 _ = happyReduce_166

action_304 _ = happyReduce_162

action_305 _ = happyReduce_165

action_306 _ = happyReduce_164

action_307 _ = happyReduce_158

action_308 _ = happyReduce_156

action_309 _ = happyReduce_143

action_310 _ = happyReduce_140

action_311 (119) = happyShift action_335
action_311 _ = happyFail

action_312 _ = happyReduce_114

action_313 _ = happyReduce_157

action_314 (65) = happyGoto action_334
action_314 (66) = happyGoto action_208
action_314 _ = happyReduce_65

action_315 (65) = happyGoto action_333
action_315 (66) = happyGoto action_208
action_315 _ = happyReduce_65

action_316 (116) = happyShift action_77
action_316 (118) = happyShift action_78
action_316 (119) = happyShift action_57
action_316 (121) = happyShift action_79
action_316 (124) = happyShift action_80
action_316 (150) = happyShift action_81
action_316 (157) = happyShift action_82
action_316 (158) = happyShift action_102
action_316 (160) = happyShift action_83
action_316 (161) = happyShift action_84
action_316 (162) = happyShift action_85
action_316 (163) = happyShift action_86
action_316 (169) = happyShift action_87
action_316 (174) = happyShift action_88
action_316 (175) = happyShift action_89
action_316 (176) = happyShift action_90
action_316 (177) = happyShift action_91
action_316 (181) = happyShift action_55
action_316 (182) = happyShift action_92
action_316 (183) = happyShift action_93
action_316 (184) = happyShift action_94
action_316 (185) = happyShift action_95
action_316 (57) = happyGoto action_58
action_316 (58) = happyGoto action_59
action_316 (59) = happyGoto action_60
action_316 (60) = happyGoto action_61
action_316 (61) = happyGoto action_62
action_316 (68) = happyGoto action_63
action_316 (69) = happyGoto action_64
action_316 (81) = happyGoto action_65
action_316 (83) = happyGoto action_66
action_316 (84) = happyGoto action_67
action_316 (100) = happyGoto action_68
action_316 (103) = happyGoto action_332
action_316 (104) = happyGoto action_98
action_316 (105) = happyGoto action_99
action_316 (106) = happyGoto action_69
action_316 (107) = happyGoto action_70
action_316 (108) = happyGoto action_71
action_316 (109) = happyGoto action_72
action_316 (110) = happyGoto action_73
action_316 (111) = happyGoto action_74
action_316 (112) = happyGoto action_113
action_316 (113) = happyGoto action_101
action_316 (114) = happyGoto action_97
action_316 (115) = happyGoto action_76
action_316 _ = happyFail

action_317 (185) = happyShift action_95
action_317 (61) = happyGoto action_331
action_317 _ = happyFail

action_318 (116) = happyShift action_77
action_318 (118) = happyShift action_78
action_318 (119) = happyShift action_57
action_318 (121) = happyShift action_79
action_318 (124) = happyShift action_80
action_318 (150) = happyShift action_81
action_318 (157) = happyShift action_82
action_318 (158) = happyShift action_102
action_318 (160) = happyShift action_83
action_318 (161) = happyShift action_84
action_318 (162) = happyShift action_85
action_318 (163) = happyShift action_86
action_318 (169) = happyShift action_87
action_318 (174) = happyShift action_88
action_318 (175) = happyShift action_89
action_318 (176) = happyShift action_90
action_318 (177) = happyShift action_91
action_318 (181) = happyShift action_55
action_318 (182) = happyShift action_92
action_318 (183) = happyShift action_93
action_318 (184) = happyShift action_94
action_318 (185) = happyShift action_95
action_318 (57) = happyGoto action_58
action_318 (58) = happyGoto action_59
action_318 (59) = happyGoto action_60
action_318 (60) = happyGoto action_61
action_318 (61) = happyGoto action_62
action_318 (68) = happyGoto action_63
action_318 (69) = happyGoto action_64
action_318 (81) = happyGoto action_65
action_318 (83) = happyGoto action_66
action_318 (84) = happyGoto action_67
action_318 (100) = happyGoto action_68
action_318 (103) = happyGoto action_330
action_318 (104) = happyGoto action_98
action_318 (105) = happyGoto action_99
action_318 (106) = happyGoto action_69
action_318 (107) = happyGoto action_70
action_318 (108) = happyGoto action_71
action_318 (109) = happyGoto action_72
action_318 (110) = happyGoto action_73
action_318 (111) = happyGoto action_74
action_318 (112) = happyGoto action_113
action_318 (113) = happyGoto action_101
action_318 (114) = happyGoto action_97
action_318 (115) = happyGoto action_76
action_318 _ = happyFail

action_319 _ = happyReduce_123

action_320 (120) = happyShift action_329
action_320 _ = happyFail

action_321 (159) = happyShift action_250
action_321 _ = happyReduce_108

action_322 _ = happyReduce_106

action_323 _ = happyReduce_95

action_324 _ = happyReduce_96

action_325 _ = happyReduce_104

action_326 _ = happyReduce_90

action_327 _ = happyReduce_77

action_328 _ = happyReduce_91

action_329 _ = happyReduce_111

action_330 (159) = happyShift action_250
action_330 _ = happyReduce_124

action_331 (146) = happyShift action_189
action_331 (72) = happyGoto action_343
action_331 _ = happyFail

action_332 (123) = happyShift action_342
action_332 (159) = happyShift action_250
action_332 _ = happyFail

action_333 (92) = happyGoto action_341
action_333 _ = happyReduce_133

action_334 _ = happyReduce_132

action_335 (134) = happyReduce_144
action_335 (135) = happyReduce_144
action_335 (136) = happyReduce_144
action_335 (137) = happyReduce_144
action_335 (138) = happyReduce_144
action_335 (139) = happyReduce_144
action_335 (145) = happyShift action_120
action_335 (156) = happyShift action_121
action_335 (164) = happyShift action_122
action_335 (166) = happyShift action_123
action_335 (171) = happyShift action_124
action_335 (172) = happyShift action_125
action_335 (97) = happyGoto action_126
action_335 (98) = happyGoto action_340
action_335 (99) = happyGoto action_128
action_335 _ = happyReduce_141

action_336 _ = happyReduce_118

action_337 _ = happyReduce_115

action_338 _ = happyReduce_116

action_339 _ = happyReduce_117

action_340 (120) = happyShift action_346
action_340 _ = happyFail

action_341 (147) = happyShift action_152
action_341 (148) = happyShift action_150
action_341 (90) = happyGoto action_345
action_341 (91) = happyGoto action_248
action_341 _ = happyReduce_131

action_342 (116) = happyShift action_77
action_342 (118) = happyShift action_78
action_342 (119) = happyShift action_57
action_342 (121) = happyShift action_79
action_342 (124) = happyShift action_80
action_342 (150) = happyShift action_81
action_342 (157) = happyShift action_82
action_342 (158) = happyShift action_102
action_342 (160) = happyShift action_83
action_342 (161) = happyShift action_84
action_342 (162) = happyShift action_85
action_342 (163) = happyShift action_86
action_342 (169) = happyShift action_87
action_342 (174) = happyShift action_88
action_342 (175) = happyShift action_89
action_342 (176) = happyShift action_90
action_342 (177) = happyShift action_91
action_342 (181) = happyShift action_55
action_342 (182) = happyShift action_92
action_342 (183) = happyShift action_93
action_342 (184) = happyShift action_94
action_342 (185) = happyShift action_95
action_342 (57) = happyGoto action_58
action_342 (58) = happyGoto action_59
action_342 (59) = happyGoto action_60
action_342 (60) = happyGoto action_61
action_342 (61) = happyGoto action_62
action_342 (68) = happyGoto action_63
action_342 (69) = happyGoto action_64
action_342 (81) = happyGoto action_65
action_342 (83) = happyGoto action_66
action_342 (84) = happyGoto action_67
action_342 (100) = happyGoto action_68
action_342 (103) = happyGoto action_344
action_342 (104) = happyGoto action_98
action_342 (105) = happyGoto action_99
action_342 (106) = happyGoto action_69
action_342 (107) = happyGoto action_70
action_342 (108) = happyGoto action_71
action_342 (109) = happyGoto action_72
action_342 (110) = happyGoto action_73
action_342 (111) = happyGoto action_74
action_342 (112) = happyGoto action_113
action_342 (113) = happyGoto action_101
action_342 (114) = happyGoto action_97
action_342 (115) = happyGoto action_76
action_342 _ = happyFail

action_343 _ = happyReduce_126

action_344 (123) = happyShift action_156
action_344 (159) = happyShift action_250
action_344 (88) = happyGoto action_349
action_344 _ = happyReduce_127

action_345 (149) = happyShift action_348
action_345 _ = happyFail

action_346 (65) = happyGoto action_347
action_346 (66) = happyGoto action_208
action_346 _ = happyReduce_65

action_347 (149) = happyShift action_351
action_347 _ = happyFail

action_348 _ = happyReduce_129

action_349 (146) = happyShift action_189
action_349 (72) = happyGoto action_350
action_349 _ = happyFail

action_350 _ = happyReduce_125

action_351 _ = happyReduce_139

happyReduce_54 = happySpecReduce_1  57 happyReduction_54
happyReduction_54 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn57
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ vint = (read ( happy_var_1 )) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  58 happyReduction_55
happyReduction_55 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn58
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ vdbl = (read ( happy_var_1 )) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  59 happyReduction_56
happyReduction_56 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn59
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ vstr = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  60 happyReduction_57
happyReduction_57 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn60
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ vchr = (read ( happy_var_1 )) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  61 happyReduction_58
happyReduction_58 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn61
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ vlident = LIdent (getLIdentT happy_var_1 ) , posn = (tokenPosn happy_var_1 )  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  62 happyReduction_59
happyReduction_59 (HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn62
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ res = Result (AbsAuL.Prog (parsetree happySubAttrs_1) ) "qui TAC" (envout happySubAttrs_1) (errs happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = emptyEnv  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  63 happyReduction_60
happyReduction_60 (HappyAbsSyn64  happy_var_1)
	 =  HappyAbsSyn63
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  63 happyReduction_61
happyReduction_61 (HappyAbsSyn63  happy_var_2)
	(HappyAbsSyn64  happy_var_1)
	 =  HappyAbsSyn63
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) ++ (errs happySubAttrs_2) , envout = mergeEnv (envout happySubAttrs_1) (envout happySubAttrs_2) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  64 happyReduction_62
happyReduction_62 (HappyAbsSyn71  happy_var_1)
	 =  HappyAbsSyn64
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.ProgGlobB (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  64 happyReduction_63
happyReduction_63 (HappyAbsSyn96  happy_var_1)
	 =  HappyAbsSyn64
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.ProgGlobF (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  65 happyReduction_64
happyReduction_64 (HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn65
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Blk (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_0  66 happyReduction_65
happyReduction_65  =  HappyAbsSyn66
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_66 = happySpecReduce_2  66 happyReduction_66
happyReduction_66 (HappyAbsSyn71  happy_var_2)
	(HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn66
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = flip (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_66 _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  67 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_Bool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_68 = happySpecReduce_1  67 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_69 = happySpecReduce_1  67 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_Float  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_70 = happySpecReduce_1  67 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_Int  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_71 = happySpecReduce_1  67 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_String  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_72 = happySpecReduce_1  67 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.BasicType_Void  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_73 = happySpecReduce_1  68 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn68
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Boolean_true  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_74 = happySpecReduce_1  68 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn68
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Boolean_false  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_75 = happySpecReduce_1  69 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.PtrType  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_76 = happySpecReduce_2  70 happyReduction_76
happyReduction_76 (HappyAbsSyn70  happy_var_2)
	_
	 =  HappyAbsSyn70
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.CompTypeP (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  70 happyReduction_77
happyReduction_77 _
	_
	(HappyAbsSyn70  happy_var_1)
	 =  HappyAbsSyn70
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.CompTypeM (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  70 happyReduction_78
happyReduction_78 (HappyAbsSyn67  happy_var_1)
	 =  HappyAbsSyn70
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.CompTypeB (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_2  71 happyReduction_79
happyReduction_79 _
	(HappyAbsSyn73  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SDecl (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_79 _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_2  71 happyReduction_80
happyReduction_80 _
	(HappyAbsSyn79  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SLocal (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_80 _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_2  71 happyReduction_81
happyReduction_81 _
	(HappyAbsSyn80  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SAss (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_81 _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  71 happyReduction_82
happyReduction_82 (HappyAbsSyn85  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SWhile (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_2  71 happyReduction_83
happyReduction_83 _
	(HappyAbsSyn86  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SRepeat (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_83 _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  71 happyReduction_84
happyReduction_84 (HappyAbsSyn87  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SFor (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_1  71 happyReduction_85
happyReduction_85 (HappyAbsSyn89  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SIf (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_2  71 happyReduction_86
happyReduction_86 _
	(HappyAbsSyn81  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SRExp (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_86 _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  71 happyReduction_87
happyReduction_87 (HappyAbsSyn72  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SEBlk (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_2  71 happyReduction_88
happyReduction_88 _
	(HappyAbsSyn93  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SReturn (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_88 _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_2  71 happyReduction_89
happyReduction_89 _
	(HappyAbsSyn95  happy_var_1)
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.SBreak (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_89 _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  72 happyReduction_90
happyReduction_90 _
	(HappyAbsSyn65  happy_var_2)
	_
	 =  HappyAbsSyn72
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.EBlkS (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  73 happyReduction_91
happyReduction_91 (HappyAbsSyn74  happy_var_3)
	(HappyAbsSyn100  happy_var_2)
	(HappyAbsSyn67  happy_var_1)
	 =  HappyAbsSyn73
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = ( if (isJust (lookupEnv ( (fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) then ["error: variable " ++ (fromBad (insertEnv (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (envin happySelfAttrs) (posn happySubAttrs_2) ))] else [] ) ++ (errs happySubAttrs_3) , envout = ( if (isOk (insertEnv (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (envin happySelfAttrs) (posn happySubAttrs_2) )) then (fromOk (insertEnv (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (envin happySelfAttrs) (posn happySubAttrs_2) )) else (envin happySubAttrs_3) ) , parsetree = AbsAuL.DeclSP (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_0  74 happyReduction_92
happyReduction_92  =  HappyAbsSyn74
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , parsetree = AbsAuL.VarINil  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_93 = happySpecReduce_2  74 happyReduction_93
happyReduction_93 (HappyAbsSyn103  happy_var_2)
	_
	 =  HappyAbsSyn74
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , parsetree = AbsAuL.VarExp (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_93 _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  74 happyReduction_94
happyReduction_94 (HappyAbsSyn75  happy_var_2)
	_
	 =  HappyAbsSyn74
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VarMat (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_94 _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  75 happyReduction_95
happyReduction_95 _
	(HappyAbsSyn78  happy_var_2)
	_
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ArrayV0 (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_3  75 happyReduction_96
happyReduction_96 _
	(HappyAbsSyn77  happy_var_2)
	_
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ArrayV1 (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_96 _ _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_1  76 happyReduction_97
happyReduction_97 (HappyAbsSyn68  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypeBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_97 _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_1  76 happyReduction_98
happyReduction_98 (HappyAbsSyn60  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypeChar (vchr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_98 _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_1  76 happyReduction_99
happyReduction_99 (HappyAbsSyn58  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypeDouble (vdbl happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_99 _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_1  76 happyReduction_100
happyReduction_100 (HappyAbsSyn57  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypeInteger (vint happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_100 _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_1  76 happyReduction_101
happyReduction_101 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypeString (vstr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_101 _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_1  76 happyReduction_102
happyReduction_102 (HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.VTypePtrVoid (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_102 _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_1  77 happyReduction_103
happyReduction_103 (HappyAbsSyn76  happy_var_1)
	 =  HappyAbsSyn77
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_103 _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_3  77 happyReduction_104
happyReduction_104 (HappyAbsSyn77  happy_var_3)
	_
	(HappyAbsSyn76  happy_var_1)
	 =  HappyAbsSyn77
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_104 _ _ _  = notHappyAtAll 

happyReduce_105 = happySpecReduce_1  78 happyReduction_105
happyReduction_105 (HappyAbsSyn75  happy_var_1)
	 =  HappyAbsSyn78
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_105 _  = notHappyAtAll 

happyReduce_106 = happySpecReduce_3  78 happyReduction_106
happyReduction_106 (HappyAbsSyn78  happy_var_3)
	_
	(HappyAbsSyn75  happy_var_1)
	 =  HappyAbsSyn78
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_106 _ _ _  = notHappyAtAll 

happyReduce_107 = happySpecReduce_2  79 happyReduction_107
happyReduction_107 (HappyAbsSyn73  happy_var_2)
	_
	 =  HappyAbsSyn79
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.DeclLocal (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_107 _ _  = notHappyAtAll 

happyReduce_108 = happySpecReduce_3  80 happyReduction_108
happyReduction_108 (HappyAbsSyn103  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn100  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envout = (envout happySubAttrs_3) , errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then [] else if ( (tipo happySelfAttrs) ==(tipo happySubAttrs_3) ) then [] else ["error at " ++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": expects argument of type '" ++ (showBBType (tipo happySelfAttrs) ) ++ "' but has type '"++ (showBBType (tipo happySubAttrs_3) ) ++"'"]) ++ (errs happySubAttrs_3) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then (if ((isVarEnv . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then ((getTypeV . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , parsetree = AbsAuL.AssD (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_108 _ _ _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_1  81 happyReduction_109
happyReduction_109 (HappyAbsSyn83  happy_var_1)
	 =  HappyAbsSyn81
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = AbsAuL.BasicType_Void , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.FuncBW (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_109 _  = notHappyAtAll 

happyReduce_110 = happySpecReduce_1  81 happyReduction_110
happyReduction_110 (HappyAbsSyn84  happy_var_1)
	 =  HappyAbsSyn81
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.FuncBR (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_110 _  = notHappyAtAll 

happyReduce_111 = happyReduce 4 81 happyReduction_111
happyReduction_111 (_ `HappyStk`
	(HappyAbsSyn82  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn61  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn81
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FnctCall (vlident happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_112 = happySpecReduce_0  82 happyReduction_112
happyReduction_112  =  HappyAbsSyn82
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_113 = happySpecReduce_1  82 happyReduction_113
happyReduction_113 (HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn82
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_113 _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_3  82 happyReduction_114
happyReduction_114 (HappyAbsSyn82  happy_var_3)
	_
	(HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn82
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_114 _ _ _  = notHappyAtAll 

happyReduce_115 = happyReduce 4 83 happyReduction_115
happyReduction_115 (_ `HappyStk`
	(HappyAbsSyn103  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn83
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if (not( (tipo happySubAttrs_3) ==BasicType_Int)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeInt' need to be Int!"] else [] ) ++ (errs happySubAttrs_3) , envout = (envout happySubAttrs_3) , parsetree = AbsAuL.WriteI (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_116 = happyReduce 4 83 happyReduction_116
happyReduction_116 (_ `HappyStk`
	(HappyAbsSyn103  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn83
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_Float)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeFloat' need to be Float!"] else [] ) ++ (errs happySubAttrs_3) , envout = (envout happySubAttrs_3) , parsetree = AbsAuL.WriteF (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_117 = happyReduce 4 83 happyReduction_117
happyReduction_117 (_ `HappyStk`
	(HappyAbsSyn103  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn83
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_Char)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeChar' need to be Char!"] else [] ) ++ (errs happySubAttrs_3) , envout = (envout happySubAttrs_3) , parsetree = AbsAuL.WriteC (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_118 = happyReduce 4 83 happyReduction_118
happyReduction_118 (_ `HappyStk`
	(HappyAbsSyn103  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn83
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_String)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeString' need to be String!"] else [] ) ++ (errs happySubAttrs_3) , envout = (envout happySubAttrs_3) , parsetree = AbsAuL.WriteS (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_119 = happySpecReduce_3  84 happyReduction_119
happyReduction_119 _
	_
	_
	 =  HappyAbsSyn84
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envout = (envin happySelfAttrs) , errs = [] , tipo = BasicType_Int , parsetree = AbsAuL.ReadI  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_120 = happySpecReduce_3  84 happyReduction_120
happyReduction_120 _
	_
	_
	 =  HappyAbsSyn84
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envout = (envin happySelfAttrs) , errs = [] , tipo = BasicType_Float , parsetree = AbsAuL.ReadF  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_121 = happySpecReduce_3  84 happyReduction_121
happyReduction_121 _
	_
	_
	 =  HappyAbsSyn84
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envout = (envin happySelfAttrs) , errs = [] , tipo = BasicType_Char , parsetree = AbsAuL.ReadC  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_122 = happySpecReduce_3  84 happyReduction_122
happyReduction_122 _
	_
	_
	 =  HappyAbsSyn84
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envout = (envin happySelfAttrs) , errs = [] , tipo = BasicType_String , parsetree = AbsAuL.ReadS  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_123 = happySpecReduce_3  85 happyReduction_123
happyReduction_123 (HappyAbsSyn72  happy_var_3)
	(HappyAbsSyn103  happy_var_2)
	_
	 =  HappyAbsSyn85
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.LoopW (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_123 _ _ _  = notHappyAtAll 

happyReduce_124 = happyReduce 4 86 happyReduction_124
happyReduction_124 ((HappyAbsSyn103  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn65  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn86
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.LoopR (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_125 = happyReduce 8 87 happyReduction_125
happyReduction_125 ((HappyAbsSyn72  happy_var_8) `HappyStk`
	(HappyAbsSyn88  happy_var_7) `HappyStk`
	(HappyAbsSyn103  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn103  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn61  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.LoopF (vlident happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_6) (parsetree happySubAttrs_7) (parsetree happySubAttrs_8)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs; (happyConditions_8,happySubAttrs_8) = happy_var_8 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_6++happyConditions_7++happyConditions_8 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_126 = happyReduce 5 87 happyReduction_126
happyReduction_126 ((HappyAbsSyn72  happy_var_5) `HappyStk`
	(HappyAbsSyn61  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn61  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.LoopFE (vlident happySubAttrs_2) (vlident happySubAttrs_4) (parsetree happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_127 = happySpecReduce_0  88 happyReduction_127
happyReduction_127  =  HappyAbsSyn88
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FInc ( AbsAuL.ValInt 1 )  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_128 = happySpecReduce_2  88 happyReduction_128
happyReduction_128 (HappyAbsSyn103  happy_var_2)
	_
	 =  HappyAbsSyn88
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FInc (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_128 _ _  = notHappyAtAll 

happyReduce_129 = happyReduce 7 89 happyReduction_129
happyReduction_129 (_ `HappyStk`
	(HappyAbsSyn90  happy_var_6) `HappyStk`
	(HappyAbsSyn92  happy_var_5) `HappyStk`
	(HappyAbsSyn65  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn103  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn89
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.IfM (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (reverse (parsetree happySubAttrs_5) ) (parsetree happySubAttrs_6)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_5++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_130 = happySpecReduce_2  90 happyReduction_130
happyReduction_130 (HappyAbsSyn65  happy_var_2)
	_
	 =  HappyAbsSyn90
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ElseS (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_130 _ _  = notHappyAtAll 

happyReduce_131 = happySpecReduce_0  90 happyReduction_131
happyReduction_131  =  HappyAbsSyn90
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ElseE  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_132 = happyReduce 4 91 happyReduction_132
happyReduction_132 ((HappyAbsSyn65  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn103  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn91
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ElseIfD (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_133 = happySpecReduce_0  92 happyReduction_133
happyReduction_133  =  HappyAbsSyn92
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_134 = happySpecReduce_2  92 happyReduction_134
happyReduction_134 (HappyAbsSyn91  happy_var_2)
	(HappyAbsSyn92  happy_var_1)
	 =  HappyAbsSyn92
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = flip (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_134 _ _  = notHappyAtAll 

happyReduce_135 = happySpecReduce_2  93 happyReduction_135
happyReduction_135 (HappyAbsSyn94  happy_var_2)
	_
	 =  HappyAbsSyn93
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.JumpR (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_135 _ _  = notHappyAtAll 

happyReduce_136 = happySpecReduce_0  94 happyReduction_136
happyReduction_136  =  HappyAbsSyn94
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.JumpRE  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_137 = happySpecReduce_1  94 happyReduction_137
happyReduction_137 (HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn94
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.JumpRV (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_137 _  = notHappyAtAll 

happyReduce_138 = happySpecReduce_1  95 happyReduction_138
happyReduction_138 _
	 =  HappyAbsSyn95
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.JumpB  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_139 = happyReduce 8 96 happyReduction_139
happyReduction_139 (_ `HappyStk`
	(HappyAbsSyn65  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn98  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn61  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn70  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn96
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FnctDecl (parsetree happySubAttrs_1) (vlident happySubAttrs_3) (parsetree happySubAttrs_5) (parsetree happySubAttrs_7)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3++happyConditions_5++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_140 = happySpecReduce_3  97 happyReduction_140
happyReduction_140 (HappyAbsSyn100  happy_var_3)
	(HappyAbsSyn67  happy_var_2)
	(HappyAbsSyn99  happy_var_1)
	 =  HappyAbsSyn97
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.ParmDeclF (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_140 _ _ _  = notHappyAtAll 

happyReduce_141 = happySpecReduce_0  98 happyReduction_141
happyReduction_141  =  HappyAbsSyn98
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_142 = happySpecReduce_1  98 happyReduction_142
happyReduction_142 (HappyAbsSyn97  happy_var_1)
	 =  HappyAbsSyn98
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_142 _  = notHappyAtAll 

happyReduce_143 = happySpecReduce_3  98 happyReduction_143
happyReduction_143 (HappyAbsSyn98  happy_var_3)
	_
	(HappyAbsSyn97  happy_var_1)
	 =  HappyAbsSyn98
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_143 _ _ _  = notHappyAtAll 

happyReduce_144 = happySpecReduce_0  99 happyReduction_144
happyReduction_144  =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_145 = happySpecReduce_1  99 happyReduction_145
happyReduction_145 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_val  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_146 = happySpecReduce_1  99 happyReduction_146
happyReduction_146 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_ref  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_147 = happySpecReduce_1  99 happyReduction_147
happyReduction_147 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_const  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_148 = happySpecReduce_1  99 happyReduction_148
happyReduction_148 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_res  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_149 = happySpecReduce_1  99 happyReduction_149
happyReduction_149 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_valres  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_150 = happySpecReduce_1  99 happyReduction_150
happyReduction_150 _
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_name  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_151 = happySpecReduce_1  100 happyReduction_151
happyReduction_151 (HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn100
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posn = (posn happySubAttrs_1) , parsetree = AbsAuL.LExpS (vlident happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_151 _  = notHappyAtAll 

happyReduce_152 = happySpecReduce_2  100 happyReduction_152
happyReduction_152 (HappyAbsSyn100  happy_var_2)
	_
	 =  HappyAbsSyn100
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posn = (posn happySubAttrs_2) , parsetree = AbsAuL.LExpDR (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_152 _ _  = notHappyAtAll 

happyReduce_153 = happySpecReduce_2  100 happyReduction_153
happyReduction_153 (HappyAbsSyn101  happy_var_2)
	(HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn100
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posn = (posn happySubAttrs_1) , parsetree = AbsAuL.LExpA (vlident happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_153 _ _  = notHappyAtAll 

happyReduce_154 = happySpecReduce_1  101 happyReduction_154
happyReduction_154 (HappyAbsSyn102  happy_var_1)
	 =  HappyAbsSyn101
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_154 _  = notHappyAtAll 

happyReduce_155 = happySpecReduce_2  101 happyReduction_155
happyReduction_155 (HappyAbsSyn101  happy_var_2)
	(HappyAbsSyn102  happy_var_1)
	 =  HappyAbsSyn101
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_155 _ _  = notHappyAtAll 

happyReduce_156 = happySpecReduce_3  102 happyReduction_156
happyReduction_156 _
	(HappyAbsSyn57  happy_var_2)
	_
	 =  HappyAbsSyn102
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Dims (vint happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_156 _ _ _  = notHappyAtAll 

happyReduce_157 = happySpecReduce_3  103 happyReduction_157
happyReduction_157 (HappyAbsSyn112  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (( (tipo happySubAttrs_1) ==BasicType_Bool) && ( (tipo happySubAttrs_3) ==BasicType_Bool)) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for 'or' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Or (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_157 _ _ _  = notHappyAtAll 

happyReduce_158 = happySpecReduce_3  103 happyReduction_158
happyReduction_158 (HappyAbsSyn104  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn112  happy_var_1)
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (( (tipo happySubAttrs_1) ==BasicType_Bool) && ( (tipo happySubAttrs_3) ==BasicType_Bool)) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for 'and' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.And (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_158 _ _ _  = notHappyAtAll 

happyReduce_159 = happySpecReduce_1  103 happyReduction_159
happyReduction_159 (HappyAbsSyn112  happy_var_1)
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_159 _  = notHappyAtAll 

happyReduce_160 = happySpecReduce_2  104 happyReduction_160
happyReduction_160 (HappyAbsSyn105  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn104
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_2) , errs = (if ( (tipo happySubAttrs_2) ==BasicType_Bool) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type need to be compatible for 'and' operations!"]) ++ (errs happySubAttrs_2) , parsetree = AbsAuL.Not (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_160 _ _  = notHappyAtAll 

happyReduce_161 = happySpecReduce_1  104 happyReduction_161
happyReduction_161 (HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn104
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_161 _  = notHappyAtAll 

happyReduce_162 = happySpecReduce_3  105 happyReduction_162
happyReduction_162 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for ' ==' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Eq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_162 _ _ _  = notHappyAtAll 

happyReduce_163 = happySpecReduce_3  105 happyReduction_163
happyReduction_163 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '~ =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Neq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_163 _ _ _  = notHappyAtAll 

happyReduce_164 = happySpecReduce_3  105 happyReduction_164
happyReduction_164 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '<' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Lt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_164 _ _ _  = notHappyAtAll 

happyReduce_165 = happySpecReduce_3  105 happyReduction_165
happyReduction_165 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '< =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.LtE (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_165 _ _ _  = notHappyAtAll 

happyReduce_166 = happySpecReduce_3  105 happyReduction_166
happyReduction_166 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '>' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Gt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_166 _ _ _  = notHappyAtAll 

happyReduce_167 = happySpecReduce_3  105 happyReduction_167
happyReduction_167 (HappyAbsSyn114  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Bool , envout = (envout happySubAttrs_1) , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '> =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.GtE (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_167 _ _ _  = notHappyAtAll 

happyReduce_168 = happySpecReduce_1  105 happyReduction_168
happyReduction_168 (HappyAbsSyn113  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_168 _  = notHappyAtAll 

happyReduce_169 = happySpecReduce_3  106 happyReduction_169
happyReduction_169 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn106
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_169 _ _ _  = notHappyAtAll 

happyReduce_170 = happySpecReduce_3  106 happyReduction_170
happyReduction_170 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn106
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Sub (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_170 _ _ _  = notHappyAtAll 

happyReduce_171 = happySpecReduce_1  106 happyReduction_171
happyReduction_171 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn106
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_171 _  = notHappyAtAll 

happyReduce_172 = happySpecReduce_3  107 happyReduction_172
happyReduction_172 (HappyAbsSyn108  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Mul (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_172 _ _ _  = notHappyAtAll 

happyReduce_173 = happySpecReduce_3  107 happyReduction_173
happyReduction_173 (HappyAbsSyn108  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Div (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_173 _ _ _  = notHappyAtAll 

happyReduce_174 = happySpecReduce_3  107 happyReduction_174
happyReduction_174 (HappyAbsSyn108  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = BasicType_Int , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Rem (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_174 _ _ _  = notHappyAtAll 

happyReduce_175 = happySpecReduce_1  107 happyReduction_175
happyReduction_175 (HappyAbsSyn108  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_175 _  = notHappyAtAll 

happyReduce_176 = happySpecReduce_3  108 happyReduction_176
happyReduction_176 (HappyAbsSyn108  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn109  happy_var_1)
	 =  HappyAbsSyn108
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = ( if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then (tipo happySubAttrs_1) else BasicType_Float ) , envout = (envout happySubAttrs_1) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Pow (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_176 _ _ _  = notHappyAtAll 

happyReduce_177 = happySpecReduce_1  108 happyReduction_177
happyReduction_177 (HappyAbsSyn109  happy_var_1)
	 =  HappyAbsSyn108
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_177 _  = notHappyAtAll 

happyReduce_178 = happySpecReduce_2  109 happyReduction_178
happyReduction_178 (HappyAbsSyn110  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn109
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = ( if (( (tipo happySubAttrs_2) ==BasicType_Int) || ( (tipo happySubAttrs_2) ==BasicType_Float)) then (tipo happySubAttrs_2) else BasicType_Float ) , envout = (envout happySubAttrs_2) , errs = ( if (( (tipo happySubAttrs_2) ==BasicType_Int) || ( (tipo happySubAttrs_2) ==BasicType_Float)) then [] else ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type need to be Int or Float!"] ) ++ (errs happySubAttrs_2) , parsetree = AbsAuL.Neg (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_178 _ _  = notHappyAtAll 

happyReduce_179 = happySpecReduce_1  109 happyReduction_179
happyReduction_179 (HappyAbsSyn110  happy_var_1)
	 =  HappyAbsSyn109
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_179 _  = notHappyAtAll 

happyReduce_180 = happySpecReduce_1  110 happyReduction_180
happyReduction_180 (HappyAbsSyn81  happy_var_1)
	 =  HappyAbsSyn110
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.FCall (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_180 _  = notHappyAtAll 

happyReduce_181 = happySpecReduce_3  110 happyReduction_181
happyReduction_181 (HappyAbsSyn111  happy_var_3)
	_
	(HappyAbsSyn110  happy_var_1)
	 =  HappyAbsSyn110
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FStrCnt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_181 _ _ _  = notHappyAtAll 

happyReduce_182 = happySpecReduce_2  110 happyReduction_182
happyReduction_182 (HappyAbsSyn111  happy_var_2)
	_
	 =  HappyAbsSyn110
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.FLen (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_182 _ _  = notHappyAtAll 

happyReduce_183 = happySpecReduce_1  110 happyReduction_183
happyReduction_183 (HappyAbsSyn111  happy_var_1)
	 =  HappyAbsSyn110
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_183 _  = notHappyAtAll 

happyReduce_184 = happySpecReduce_1  111 happyReduction_184
happyReduction_184 (HappyAbsSyn57  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Int , parsetree = AbsAuL.ValInt (vint happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_184 _  = notHappyAtAll 

happyReduce_185 = happySpecReduce_1  111 happyReduction_185
happyReduction_185 (HappyAbsSyn100  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then ["error: reference to " ++ ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) ++ " at line " ++ (showFromPosn (posn happySubAttrs_1) ) ++ "is invalid (maybe a function or not declared variable?)"] else []) , envout = (envin happySelfAttrs) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then (if ((isVarEnv . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then ((getTypeV . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , parsetree = AbsAuL.ValVariable (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_185 _  = notHappyAtAll 

happyReduce_186 = happySpecReduce_2  111 happyReduction_186
happyReduction_186 (HappyAbsSyn100  happy_var_2)
	_
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then ["error: reference to " ++ ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) ++ " at line " ++ (showFromPosn (posn happySubAttrs_2) ) ++ "is invalid (maybe a function or not declared variable?)"] else []) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) then (if ((isVarEnv . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) then ((getTypeV . head . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , envout = (envin happySelfAttrs) , parsetree = AbsAuL.ValRef (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_186 _ _  = notHappyAtAll 

happyReduce_187 = happySpecReduce_1  111 happyReduction_187
happyReduction_187 (HappyAbsSyn58  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Float , parsetree = AbsAuL.ValDouble (vdbl happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_187 _  = notHappyAtAll 

happyReduce_188 = happySpecReduce_1  111 happyReduction_188
happyReduction_188 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_String , parsetree = AbsAuL.ValString (vstr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_188 _  = notHappyAtAll 

happyReduce_189 = happySpecReduce_1  111 happyReduction_189
happyReduction_189 (HappyAbsSyn60  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Char , parsetree = AbsAuL.ValChar (vchr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_189 _  = notHappyAtAll 

happyReduce_190 = happySpecReduce_1  111 happyReduction_190
happyReduction_190 (HappyAbsSyn68  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Int , parsetree = AbsAuL.ValBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_190 _  = notHappyAtAll 

happyReduce_191 = happySpecReduce_1  111 happyReduction_191
happyReduction_191 (HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Void , parsetree = AbsAuL.ValPtr (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_191 _  = notHappyAtAll 

happyReduce_192 = happySpecReduce_1  111 happyReduction_192
happyReduction_192 (HappyAbsSyn115  happy_var_1)
	 =  HappyAbsSyn111
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_192 _  = notHappyAtAll 

happyReduce_193 = happySpecReduce_1  112 happyReduction_193
happyReduction_193 (HappyAbsSyn104  happy_var_1)
	 =  HappyAbsSyn112
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_193 _  = notHappyAtAll 

happyReduce_194 = happySpecReduce_1  113 happyReduction_194
happyReduction_194 (HappyAbsSyn114  happy_var_1)
	 =  HappyAbsSyn113
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_194 _  = notHappyAtAll 

happyReduce_195 = happySpecReduce_1  114 happyReduction_195
happyReduction_195 (HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn114
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_195 _  = notHappyAtAll 

happyReduce_196 = happySpecReduce_3  115 happyReduction_196
happyReduction_196 _
	(HappyAbsSyn103  happy_var_2)
	_
	 =  HappyAbsSyn115
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tipo = (tipo happySubAttrs_2) , envout = (envout happySubAttrs_2) , errs = (errs happySubAttrs_2) , parsetree = (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_196 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 186 186 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 116;
	PT _ (TS _ 2) -> cont 117;
	PT _ (TS _ 3) -> cont 118;
	PT _ (TS _ 4) -> cont 119;
	PT _ (TS _ 5) -> cont 120;
	PT _ (TS _ 6) -> cont 121;
	PT _ (TS _ 7) -> cont 122;
	PT _ (TS _ 8) -> cont 123;
	PT _ (TS _ 9) -> cont 124;
	PT _ (TS _ 10) -> cont 125;
	PT _ (TS _ 11) -> cont 126;
	PT _ (TS _ 12) -> cont 127;
	PT _ (TS _ 13) -> cont 128;
	PT _ (TS _ 14) -> cont 129;
	PT _ (TS _ 15) -> cont 130;
	PT _ (TS _ 16) -> cont 131;
	PT _ (TS _ 17) -> cont 132;
	PT _ (TS _ 18) -> cont 133;
	PT _ (TS _ 19) -> cont 134;
	PT _ (TS _ 20) -> cont 135;
	PT _ (TS _ 21) -> cont 136;
	PT _ (TS _ 22) -> cont 137;
	PT _ (TS _ 23) -> cont 138;
	PT _ (TS _ 24) -> cont 139;
	PT _ (TS _ 25) -> cont 140;
	PT _ (TS _ 26) -> cont 141;
	PT _ (TS _ 27) -> cont 142;
	PT _ (TS _ 28) -> cont 143;
	PT _ (TS _ 29) -> cont 144;
	PT _ (TS _ 30) -> cont 145;
	PT _ (TS _ 31) -> cont 146;
	PT _ (TS _ 32) -> cont 147;
	PT _ (TS _ 33) -> cont 148;
	PT _ (TS _ 34) -> cont 149;
	PT _ (TS _ 35) -> cont 150;
	PT _ (TS _ 36) -> cont 151;
	PT _ (TS _ 37) -> cont 152;
	PT _ (TS _ 38) -> cont 153;
	PT _ (TS _ 39) -> cont 154;
	PT _ (TS _ 40) -> cont 155;
	PT _ (TS _ 41) -> cont 156;
	PT _ (TS _ 42) -> cont 157;
	PT _ (TS _ 43) -> cont 158;
	PT _ (TS _ 44) -> cont 159;
	PT _ (TS _ 45) -> cont 160;
	PT _ (TS _ 46) -> cont 161;
	PT _ (TS _ 47) -> cont 162;
	PT _ (TS _ 48) -> cont 163;
	PT _ (TS _ 49) -> cont 164;
	PT _ (TS _ 50) -> cont 165;
	PT _ (TS _ 51) -> cont 166;
	PT _ (TS _ 52) -> cont 167;
	PT _ (TS _ 53) -> cont 168;
	PT _ (TS _ 54) -> cont 169;
	PT _ (TS _ 55) -> cont 170;
	PT _ (TS _ 56) -> cont 171;
	PT _ (TS _ 57) -> cont 172;
	PT _ (TS _ 58) -> cont 173;
	PT _ (TS _ 59) -> cont 174;
	PT _ (TS _ 60) -> cont 175;
	PT _ (TS _ 61) -> cont 176;
	PT _ (TS _ 62) -> cont 177;
	PT _ (TS _ 63) -> cont 178;
	PT _ (TS _ 64) -> cont 179;
	PT _ (TS _ 65) -> cont 180;
	PT _ (TI happy_dollar_dollar) -> cont 181;
	PT _ (TD happy_dollar_dollar) -> cont 182;
	PT _ (TL happy_dollar_dollar) -> cont 183;
	PT _ (TC happy_dollar_dollar) -> cont 184;
	PT _ (T_LIdent _) -> cont 185;
	_ -> happyError' (tk:tks)
	}

happyError_ 186 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

do_pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn62 z -> happyReturn z; _other -> notHappyAtAll })

do_pListPGlobl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn63 z -> happyReturn z; _other -> notHappyAtAll })

do_pPGlobl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn64 z -> happyReturn z; _other -> notHappyAtAll })

do_pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn65 z -> happyReturn z; _other -> notHappyAtAll })

do_pListStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn66 z -> happyReturn z; _other -> notHappyAtAll })

do_pBasicType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn67 z -> happyReturn z; _other -> notHappyAtAll })

do_pBoolean tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn68 z -> happyReturn z; _other -> notHappyAtAll })

do_pPtrVoid tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn69 z -> happyReturn z; _other -> notHappyAtAll })

do_pCompoundType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn70 z -> happyReturn z; _other -> notHappyAtAll })

do_pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn71 z -> happyReturn z; _other -> notHappyAtAll })

do_pEBlk tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn72 z -> happyReturn z; _other -> notHappyAtAll })

do_pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn73 z -> happyReturn z; _other -> notHappyAtAll })

do_pVarInit tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn74 z -> happyReturn z; _other -> notHappyAtAll })

do_pArray tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn75 z -> happyReturn z; _other -> notHappyAtAll })

do_pVType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn76 z -> happyReturn z; _other -> notHappyAtAll })

do_pListVType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn77 z -> happyReturn z; _other -> notHappyAtAll })

do_pListArray tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn78 z -> happyReturn z; _other -> notHappyAtAll })

do_pLocal tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn79 z -> happyReturn z; _other -> notHappyAtAll })

do_pAss tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn80 z -> happyReturn z; _other -> notHappyAtAll })

do_pFunc tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn81 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncWrite tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn83 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncRead tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn84 z -> happyReturn z; _other -> notHappyAtAll })

do_pWhile tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn85 z -> happyReturn z; _other -> notHappyAtAll })

do_pRepeat tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn86 z -> happyReturn z; _other -> notHappyAtAll })

do_pFor tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_24 tks) (\x -> case x of {HappyAbsSyn87 z -> happyReturn z; _other -> notHappyAtAll })

do_pIncrement tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_25 tks) (\x -> case x of {HappyAbsSyn88 z -> happyReturn z; _other -> notHappyAtAll })

do_pIf tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_26 tks) (\x -> case x of {HappyAbsSyn89 z -> happyReturn z; _other -> notHappyAtAll })

do_pElse tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_27 tks) (\x -> case x of {HappyAbsSyn90 z -> happyReturn z; _other -> notHappyAtAll })

do_pElseIf tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_28 tks) (\x -> case x of {HappyAbsSyn91 z -> happyReturn z; _other -> notHappyAtAll })

do_pListElseIf tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_29 tks) (\x -> case x of {HappyAbsSyn92 z -> happyReturn z; _other -> notHappyAtAll })

do_pReturn tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_30 tks) (\x -> case x of {HappyAbsSyn93 z -> happyReturn z; _other -> notHappyAtAll })

do_pRValue tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_31 tks) (\x -> case x of {HappyAbsSyn94 z -> happyReturn z; _other -> notHappyAtAll })

do_pBreak tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_32 tks) (\x -> case x of {HappyAbsSyn95 z -> happyReturn z; _other -> notHappyAtAll })

do_pListRExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_33 tks) (\x -> case x of {HappyAbsSyn82 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncD tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_34 tks) (\x -> case x of {HappyAbsSyn96 z -> happyReturn z; _other -> notHappyAtAll })

do_pParamF tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_35 tks) (\x -> case x of {HappyAbsSyn97 z -> happyReturn z; _other -> notHappyAtAll })

do_pListParamF tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_36 tks) (\x -> case x of {HappyAbsSyn98 z -> happyReturn z; _other -> notHappyAtAll })

do_pModality tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_37 tks) (\x -> case x of {HappyAbsSyn99 z -> happyReturn z; _other -> notHappyAtAll })

do_pLExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_38 tks) (\x -> case x of {HappyAbsSyn100 z -> happyReturn z; _other -> notHappyAtAll })

do_pListDim tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_39 tks) (\x -> case x of {HappyAbsSyn101 z -> happyReturn z; _other -> notHappyAtAll })

do_pDim tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_40 tks) (\x -> case x of {HappyAbsSyn102 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_41 tks) (\x -> case x of {HappyAbsSyn103 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_42 tks) (\x -> case x of {HappyAbsSyn104 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_43 tks) (\x -> case x of {HappyAbsSyn105 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_44 tks) (\x -> case x of {HappyAbsSyn106 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_45 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp8 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_46 tks) (\x -> case x of {HappyAbsSyn108 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp9 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_47 tks) (\x -> case x of {HappyAbsSyn109 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp10 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_48 tks) (\x -> case x of {HappyAbsSyn110 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp11 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_49 tks) (\x -> case x of {HappyAbsSyn111 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_50 tks) (\x -> case x of {HappyAbsSyn112 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_51 tks) (\x -> case x of {HappyAbsSyn113 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_52 tks) (\x -> case x of {HappyAbsSyn114 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp12 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_53 tks) (\x -> case x of {HappyAbsSyn115 z -> happyReturn z; _other -> notHappyAtAll })

pProgram toks = do { f <- do_pProgram toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListPGlobl toks = do { f <- do_pListPGlobl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pPGlobl toks = do { f <- do_pPGlobl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBlock toks = do { f <- do_pBlock toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListStm toks = do { f <- do_pListStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBasicType toks = do { f <- do_pBasicType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBoolean toks = do { f <- do_pBoolean toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pPtrVoid toks = do { f <- do_pPtrVoid toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pCompoundType toks = do { f <- do_pCompoundType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pStm toks = do { f <- do_pStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pEBlk toks = do { f <- do_pEBlk toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pDecl toks = do { f <- do_pDecl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pVarInit toks = do { f <- do_pVarInit toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pArray toks = do { f <- do_pArray toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pVType toks = do { f <- do_pVType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListVType toks = do { f <- do_pListVType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListArray toks = do { f <- do_pListArray toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pLocal toks = do { f <- do_pLocal toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pAss toks = do { f <- do_pAss toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFunc toks = do { f <- do_pFunc toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncWrite toks = do { f <- do_pFuncWrite toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncRead toks = do { f <- do_pFuncRead toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pWhile toks = do { f <- do_pWhile toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRepeat toks = do { f <- do_pRepeat toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFor toks = do { f <- do_pFor toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pIncrement toks = do { f <- do_pIncrement toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pIf toks = do { f <- do_pIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pElse toks = do { f <- do_pElse toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pElseIf toks = do { f <- do_pElseIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListElseIf toks = do { f <- do_pListElseIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pReturn toks = do { f <- do_pReturn toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRValue toks = do { f <- do_pRValue toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBreak toks = do { f <- do_pBreak toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListRExp toks = do { f <- do_pListRExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncD toks = do { f <- do_pFuncD toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pParamF toks = do { f <- do_pParamF toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListParamF toks = do { f <- do_pListParamF toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pModality toks = do { f <- do_pModality toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pLExp toks = do { f <- do_pLExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListDim toks = do { f <- do_pListDim toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pDim toks = do { f <- do_pDim toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp toks = do { f <- do_pRExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp2 toks = do { f <- do_pRExp2 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp3 toks = do { f <- do_pRExp3 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp6 toks = do { f <- do_pRExp6 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp7 toks = do { f <- do_pRExp7 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp8 toks = do { f <- do_pRExp8 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp9 toks = do { f <- do_pRExp9 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp10 toks = do { f <- do_pRExp10 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp11 toks = do { f <- do_pRExp11 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp1 toks = do { f <- do_pRExp1 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp4 toks = do { f <- do_pRExp4 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp5 toks = do { f <- do_pRExp5 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp12 toks = do { f <- do_pRExp12 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

happySeq = happyDontSeq

data AttrTree a = HappyAttributes {res :: Result, parsetree :: a, vint :: Integer, vdbl :: Double, vchr :: Char, vstr :: String, vlident :: LIdent, envin :: EnvT, envout :: EnvT, errs :: [String], posn :: Posn, tipo :: BasicType}
happyEmptyAttrs = HappyAttributes {res = error "invalid reference to attribute 'res'", parsetree = error "invalid reference to attribute 'parsetree'", vint = error "invalid reference to attribute 'vint'", vdbl = error "invalid reference to attribute 'vdbl'", vchr = error "invalid reference to attribute 'vchr'", vstr = error "invalid reference to attribute 'vstr'", vlident = error "invalid reference to attribute 'vlident'", envin = error "invalid reference to attribute 'envin'", envout = error "invalid reference to attribute 'envout'", errs = error "invalid reference to attribute 'errs'", posn = error "invalid reference to attribute 'posn'", tipo = error "invalid reference to attribute 'tipo'"}

data Result = Result Program String EnvT [String]  deriving (Eq, Show)

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
