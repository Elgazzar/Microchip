
_shiftdata595_1:

;MyProject.c,22 :: 		void shiftdata595_1(unsigned char _shiftdata)
;MyProject.c,24 :: 		temp = _shiftdata;
	MOVF       FARG_shiftdata595_1__shiftdata+0, 0
	MOVWF      _temp+0
;MyProject.c,25 :: 		i=8;
	MOVLW      8
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,26 :: 		while (i>0)
L_shiftdata595_10:
	MOVF       _i+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__shiftdata595_1175
	MOVF       _i+0, 0
	SUBLW      0
L__shiftdata595_1175:
	BTFSC      STATUS+0, 0
	GOTO       L_shiftdata595_11
;MyProject.c,28 :: 		if (temp.F7==0)
	BTFSC      _temp+0, 7
	GOTO       L_shiftdata595_12
;MyProject.c,30 :: 		SHIFT_DATA_1 = 0;
	BCF        PORTD+0, 2
;MyProject.c,31 :: 		}
	GOTO       L_shiftdata595_13
L_shiftdata595_12:
;MyProject.c,34 :: 		SHIFT_DATA_1 = 1;
	BSF        PORTD+0, 2
;MyProject.c,35 :: 		}
L_shiftdata595_13:
;MyProject.c,36 :: 		temp = temp<<1;
	RLF        _temp+0, 1
	BCF        _temp+0, 0
;MyProject.c,37 :: 		SHIFT_CLOCK_1 = 1;
	BSF        PORTB+0, 1
;MyProject.c,38 :: 		SHIFT_CLOCK_1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,39 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,40 :: 		}
	GOTO       L_shiftdata595_10
L_shiftdata595_11:
;MyProject.c,41 :: 		}
L_end_shiftdata595_1:
	RETURN
; end of _shiftdata595_1

_latch595_1:

;MyProject.c,43 :: 		void latch595_1()
;MyProject.c,45 :: 		SHIFT_LATCH_1 = 1;
	BSF        PORTB+0, 0
;MyProject.c,46 :: 		SHIFT_LATCH_1 = 0;
	BCF        PORTB+0, 0
;MyProject.c,47 :: 		}
L_end_latch595_1:
	RETURN
; end of _latch595_1

_shiftdata595_3:

;MyProject.c,49 :: 		void shiftdata595_3(unsigned char _shiftdata)
;MyProject.c,51 :: 		temp = _shiftdata;
	MOVF       FARG_shiftdata595_3__shiftdata+0, 0
	MOVWF      _temp+0
;MyProject.c,52 :: 		i=8;
	MOVLW      8
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,53 :: 		while (i>0)
L_shiftdata595_34:
	MOVF       _i+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__shiftdata595_3178
	MOVF       _i+0, 0
	SUBLW      0
L__shiftdata595_3178:
	BTFSC      STATUS+0, 0
	GOTO       L_shiftdata595_35
;MyProject.c,55 :: 		if (temp.F7==0)
	BTFSC      _temp+0, 7
	GOTO       L_shiftdata595_36
;MyProject.c,57 :: 		SHIFT_DATA_3 = 0;
	BCF        PORTA+0, 2
;MyProject.c,58 :: 		}
	GOTO       L_shiftdata595_37
L_shiftdata595_36:
;MyProject.c,61 :: 		SHIFT_DATA_3 = 1;
	BSF        PORTA+0, 2
;MyProject.c,62 :: 		}
L_shiftdata595_37:
;MyProject.c,63 :: 		temp = temp<<1;
	RLF        _temp+0, 1
	BCF        _temp+0, 0
;MyProject.c,64 :: 		SHIFT_CLOCK_3 = 1;
	BSF        PORTB+0, 2
;MyProject.c,65 :: 		SHIFT_CLOCK_3 = 0;
	BCF        PORTB+0, 2
;MyProject.c,66 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,67 :: 		}
	GOTO       L_shiftdata595_34
L_shiftdata595_35:
;MyProject.c,68 :: 		}
L_end_shiftdata595_3:
	RETURN
; end of _shiftdata595_3

_latch595_3:

;MyProject.c,69 :: 		void latch595_3()
;MyProject.c,71 :: 		SHIFT_LATCH_3 = 1;
	BSF        PORTA+0, 3
;MyProject.c,72 :: 		SHIFT_LATCH_3 = 0;
	BCF        PORTA+0, 3
;MyProject.c,73 :: 		}
L_end_latch595_3:
	RETURN
; end of _latch595_3

_shiftdata595_2:

;MyProject.c,75 :: 		void shiftdata595_2(unsigned char _shiftdata)
;MyProject.c,77 :: 		temp = _shiftdata;
	MOVF       FARG_shiftdata595_2__shiftdata+0, 0
	MOVWF      _temp+0
;MyProject.c,78 :: 		i=8;
	MOVLW      8
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,79 :: 		while (i>0)
L_shiftdata595_28:
	MOVF       _i+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__shiftdata595_2181
	MOVF       _i+0, 0
	SUBLW      0
L__shiftdata595_2181:
	BTFSC      STATUS+0, 0
	GOTO       L_shiftdata595_29
;MyProject.c,81 :: 		if (temp.F7==0)
	BTFSC      _temp+0, 7
	GOTO       L_shiftdata595_210
;MyProject.c,83 :: 		SHIFT_DATA_2 = 0;
	BCF        PORTA+0, 5
;MyProject.c,84 :: 		}
	GOTO       L_shiftdata595_211
L_shiftdata595_210:
;MyProject.c,87 :: 		SHIFT_DATA_2 = 1;
	BSF        PORTA+0, 5
;MyProject.c,88 :: 		}
L_shiftdata595_211:
;MyProject.c,89 :: 		temp = temp<<1;
	RLF        _temp+0, 1
	BCF        _temp+0, 0
;MyProject.c,90 :: 		SHIFT_CLOCK_2 = 1;
	BSF        PORTC+0, 1
;MyProject.c,91 :: 		SHIFT_CLOCK_2 = 0;
	BCF        PORTC+0, 1
;MyProject.c,92 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,93 :: 		}
	GOTO       L_shiftdata595_28
L_shiftdata595_29:
;MyProject.c,94 :: 		}
L_end_shiftdata595_2:
	RETURN
; end of _shiftdata595_2

_latch595_2:

;MyProject.c,95 :: 		void latch595_2()
;MyProject.c,97 :: 		SHIFT_LATCH_2 = 1;
	BSF        PORTC+0, 0
;MyProject.c,98 :: 		SHIFT_LATCH_2 = 0;
	BCF        PORTC+0, 0
;MyProject.c,99 :: 		}
L_end_latch595_2:
	RETURN
; end of _latch595_2

_load:

;MyProject.c,100 :: 		void load(unsigned char x,unsigned char y ,unsigned char z)
;MyProject.c,103 :: 		shiftdata595_1(x);
	MOVF       FARG_load_x+0, 0
	MOVWF      FARG_shiftdata595_1__shiftdata+0
	CALL       _shiftdata595_1+0
;MyProject.c,104 :: 		latch595_1();
	CALL       _latch595_1+0
;MyProject.c,106 :: 		shiftdata595_2(y);
	MOVF       FARG_load_y+0, 0
	MOVWF      FARG_shiftdata595_2__shiftdata+0
	CALL       _shiftdata595_2+0
;MyProject.c,107 :: 		latch595_2();
	CALL       _latch595_2+0
;MyProject.c,109 :: 		shiftdata595_3(z);
	MOVF       FARG_load_z+0, 0
	MOVWF      FARG_shiftdata595_3__shiftdata+0
	CALL       _shiftdata595_3+0
;MyProject.c,110 :: 		latch595_3();
	CALL       _latch595_3+0
;MyProject.c,111 :: 		}
L_end_load:
	RETURN
; end of _load

_Test1:

;MyProject.c,112 :: 		void Test1()
;MyProject.c,114 :: 		if (x==0)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1185
	MOVLW      0
	XORWF      _x+0, 0
L__Test1185:
	BTFSS      STATUS+0, 2
	GOTO       L_Test112
;MyProject.c,117 :: 		Load (0b00000010 , 0b00000100 , 0b00000010 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,118 :: 		}
L_Test112:
;MyProject.c,119 :: 		if (x >0 && x <21 );
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1186
	MOVF       _x+0, 0
	SUBLW      0
L__Test1186:
	BTFSC      STATUS+0, 0
	GOTO       L_Test115
	MOVLW      0
	SUBWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1187
	MOVLW      21
	SUBWF      _x+0, 0
L__Test1187:
	BTFSC      STATUS+0, 0
	GOTO       L_Test115
L__Test1173:
L_Test115:
;MyProject.c,121 :: 		if (x==1)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1188
	MOVLW      1
	XORWF      _x+0, 0
L__Test1188:
	BTFSS      STATUS+0, 2
	GOTO       L_Test116
;MyProject.c,124 :: 		Load (0b01010010 , 0b00000100 , 0b00000010 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,125 :: 		}
L_Test116:
;MyProject.c,126 :: 		if (x==2)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1189
	MOVLW      2
	XORWF      _x+0, 0
L__Test1189:
	BTFSS      STATUS+0, 2
	GOTO       L_Test117
;MyProject.c,129 :: 		Load (0b01000010 , 0b00000100 , 0b00000110 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      6
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,130 :: 		}
L_Test117:
;MyProject.c,131 :: 		if (x==3)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1190
	MOVLW      3
	XORWF      _x+0, 0
L__Test1190:
	BTFSS      STATUS+0, 2
	GOTO       L_Test118
;MyProject.c,134 :: 		Load (0b01000010 , 0b00000110 , 0b00000010 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,135 :: 		}
L_Test118:
;MyProject.c,136 :: 		if (x==4)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1191
	MOVLW      4
	XORWF      _x+0, 0
L__Test1191:
	BTFSS      STATUS+0, 2
	GOTO       L_Test119
;MyProject.c,139 :: 		Load (0b01000010 , 0b00010100 , 0b00000010 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,140 :: 		}
L_Test119:
;MyProject.c,141 :: 		if (x==5)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1192
	MOVLW      5
	XORWF      _x+0, 0
L__Test1192:
	BTFSS      STATUS+0, 2
	GOTO       L_Test120
;MyProject.c,144 :: 		Load (0b01010010 , 0b00010100 , 0b00000010 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,145 :: 		}
L_Test120:
;MyProject.c,146 :: 		if (x==6)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1193
	MOVLW      6
	XORWF      _x+0, 0
L__Test1193:
	BTFSS      STATUS+0, 2
	GOTO       L_Test121
;MyProject.c,149 :: 		Load (0b11000010 , 0b00000100 , 0b00000010 );
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      2
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,150 :: 		}
L_Test121:
;MyProject.c,151 :: 		if (x==7)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1194
	MOVLW      7
	XORWF      _x+0, 0
L__Test1194:
	BTFSS      STATUS+0, 2
	GOTO       L_Test122
;MyProject.c,154 :: 		Load (0b00010010 , 0b00010100 , 0b11000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      192
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,155 :: 		}
L_Test122:
;MyProject.c,156 :: 		if (x==8)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1195
	MOVLW      8
	XORWF      _x+0, 0
L__Test1195:
	BTFSS      STATUS+0, 2
	GOTO       L_Test123
;MyProject.c,159 :: 		Load (0b00000010 , 0b00010100 , 0b11000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      192
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,160 :: 		}
L_Test123:
;MyProject.c,161 :: 		if (x==9)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1196
	MOVLW      9
	XORWF      _x+0, 0
L__Test1196:
	BTFSS      STATUS+0, 2
	GOTO       L_Test124
;MyProject.c,164 :: 		Load (0b00000010 , 0b00000110 , 0b11000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      192
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,165 :: 		}
L_Test124:
;MyProject.c,166 :: 		if (x==10)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1197
	MOVLW      10
	XORWF      _x+0, 0
L__Test1197:
	BTFSS      STATUS+0, 2
	GOTO       L_Test125
;MyProject.c,169 :: 		Load (0b00000010 , 0b00000100 , 0b11000100 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      196
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,170 :: 		}
L_Test125:
;MyProject.c,171 :: 		if (x==11)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1198
	MOVLW      11
	XORWF      _x+0, 0
L__Test1198:
	BTFSS      STATUS+0, 2
	GOTO       L_Test126
;MyProject.c,174 :: 		Load (0b00010010 , 0b00000100 , 0b11000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      192
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,175 :: 		}
L_Test126:
;MyProject.c,176 :: 		if (x==12)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1199
	MOVLW      12
	XORWF      _x+0, 0
L__Test1199:
	BTFSS      STATUS+0, 2
	GOTO       L_Test127
;MyProject.c,179 :: 		Load (0b00000010 , 0b00000100 , 0b01000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,180 :: 		}
L_Test127:
;MyProject.c,181 :: 		if (x==13)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1200
	MOVLW      13
	XORWF      _x+0, 0
L__Test1200:
	BTFSS      STATUS+0, 2
	GOTO       L_Test128
;MyProject.c,184 :: 		Load (0b01010010 , 0b00000100 , 0b01000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,185 :: 		}
L_Test128:
;MyProject.c,186 :: 		if (x==14)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1201
	MOVLW      14
	XORWF      _x+0, 0
L__Test1201:
	BTFSS      STATUS+0, 2
	GOTO       L_Test129
;MyProject.c,189 :: 		Load (0b01000010 , 0b00000100 , 0b01000100 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      68
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,190 :: 		}
L_Test129:
;MyProject.c,191 :: 		if (x==15)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1202
	MOVLW      15
	XORWF      _x+0, 0
L__Test1202:
	BTFSS      STATUS+0, 2
	GOTO       L_Test130
;MyProject.c,194 :: 		Load (0b01000010 , 0b00000110 , 0b01000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,195 :: 		}
L_Test130:
;MyProject.c,196 :: 		if (x==16)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1203
	MOVLW      16
	XORWF      _x+0, 0
L__Test1203:
	BTFSS      STATUS+0, 2
	GOTO       L_Test131
;MyProject.c,199 :: 		Load (0b01000010 , 0b00010100 , 0b01000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,200 :: 		}
L_Test131:
;MyProject.c,201 :: 		if (x==17)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1204
	MOVLW      17
	XORWF      _x+0, 0
L__Test1204:
	BTFSS      STATUS+0, 2
	GOTO       L_Test132
;MyProject.c,204 :: 		Load (0b01010010 , 0b00010100 , 0b01000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,205 :: 		}
L_Test132:
;MyProject.c,206 :: 		if (x==18)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1205
	MOVLW      18
	XORWF      _x+0, 0
L__Test1205:
	BTFSS      STATUS+0, 2
	GOTO       L_Test133
;MyProject.c,209 :: 		Load (0b11000010 , 0b00000100 , 0b01000000 );
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      64
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,210 :: 		}
L_Test133:
;MyProject.c,211 :: 		if (x==19)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1206
	MOVLW      19
	XORWF      _x+0, 0
L__Test1206:
	BTFSS      STATUS+0, 2
	GOTO       L_Test134
;MyProject.c,214 :: 		Load (0b00010010 , 0b00010100 , 0b10100000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      160
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,215 :: 		}
L_Test134:
;MyProject.c,216 :: 		if (x==20)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1207
	MOVLW      20
	XORWF      _x+0, 0
L__Test1207:
	BTFSS      STATUS+0, 2
	GOTO       L_Test135
;MyProject.c,219 :: 		Load (0b00000010 , 0b00010100 , 0b10100000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      160
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,220 :: 		}
L_Test135:
;MyProject.c,222 :: 		if (x >20)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1208
	MOVF       _x+0, 0
	SUBLW      20
L__Test1208:
	BTFSC      STATUS+0, 0
	GOTO       L_Test136
;MyProject.c,224 :: 		if (x==21)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1209
	MOVLW      21
	XORWF      _x+0, 0
L__Test1209:
	BTFSS      STATUS+0, 2
	GOTO       L_Test137
;MyProject.c,227 :: 		Load (0b00000010 , 0b00000110 , 0b10100000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      160
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,228 :: 		}
L_Test137:
;MyProject.c,229 :: 		if (x==22)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1210
	MOVLW      22
	XORWF      _x+0, 0
L__Test1210:
	BTFSS      STATUS+0, 2
	GOTO       L_Test138
;MyProject.c,232 :: 		Load (0b00000010 , 0b00000100 , 0b10100100 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      164
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,233 :: 		}
L_Test138:
;MyProject.c,234 :: 		if (x==23)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1211
	MOVLW      23
	XORWF      _x+0, 0
L__Test1211:
	BTFSS      STATUS+0, 2
	GOTO       L_Test139
;MyProject.c,237 :: 		Load (0b00010010 , 0b00000100 , 0b10100000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      160
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,238 :: 		}
L_Test139:
;MyProject.c,239 :: 		if (x==24)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1212
	MOVLW      24
	XORWF      _x+0, 0
L__Test1212:
	BTFSS      STATUS+0, 2
	GOTO       L_Test140
;MyProject.c,242 :: 		Load (0b00000010 , 0b00000100 , 0b00100000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,243 :: 		}
L_Test140:
;MyProject.c,244 :: 		if (x==25)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1213
	MOVLW      25
	XORWF      _x+0, 0
L__Test1213:
	BTFSS      STATUS+0, 2
	GOTO       L_Test141
;MyProject.c,247 :: 		Load (0b01010010 , 0b00000100 , 0b00100000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,248 :: 		}
L_Test141:
;MyProject.c,249 :: 		if (x==26)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1214
	MOVLW      26
	XORWF      _x+0, 0
L__Test1214:
	BTFSS      STATUS+0, 2
	GOTO       L_Test142
;MyProject.c,252 :: 		Load (0b01000010 , 0b00000100 , 0b00100100 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      36
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,253 :: 		}
L_Test142:
;MyProject.c,254 :: 		if (x==27)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1215
	MOVLW      27
	XORWF      _x+0, 0
L__Test1215:
	BTFSS      STATUS+0, 2
	GOTO       L_Test143
;MyProject.c,257 :: 		Load (0b01000010 , 0b00000110 , 0b00100000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,258 :: 		}
L_Test143:
;MyProject.c,259 :: 		if (x==28)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1216
	MOVLW      28
	XORWF      _x+0, 0
L__Test1216:
	BTFSS      STATUS+0, 2
	GOTO       L_Test144
;MyProject.c,262 :: 		Load (0b01000010 , 0b00010100 , 0b00100000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,263 :: 		}
L_Test144:
;MyProject.c,264 :: 		if (x==29)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1217
	MOVLW      29
	XORWF      _x+0, 0
L__Test1217:
	BTFSS      STATUS+0, 2
	GOTO       L_Test145
;MyProject.c,267 :: 		Load (0b01010010 , 0b00010100 , 0b00100000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,268 :: 		}
L_Test145:
;MyProject.c,269 :: 		if (x==30)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1218
	MOVLW      30
	XORWF      _x+0, 0
L__Test1218:
	BTFSS      STATUS+0, 2
	GOTO       L_Test146
;MyProject.c,272 :: 		Load (0b11000010 , 0b00000100 , 0b00100000 );
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      32
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,273 :: 		}
L_Test146:
;MyProject.c,274 :: 		}
L_Test136:
;MyProject.c,275 :: 		if (x > 30)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1219
	MOVF       _x+0, 0
	SUBLW      30
L__Test1219:
	BTFSC      STATUS+0, 0
	GOTO       L_Test147
;MyProject.c,277 :: 		if (x==31)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1220
	MOVLW      31
	XORWF      _x+0, 0
L__Test1220:
	BTFSS      STATUS+0, 2
	GOTO       L_Test148
;MyProject.c,280 :: 		Load (0b00010010 , 0b00110100 , 0b10000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      52
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,281 :: 		}
L_Test148:
;MyProject.c,282 :: 		if (x==32)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1221
	MOVLW      32
	XORWF      _x+0, 0
L__Test1221:
	BTFSS      STATUS+0, 2
	GOTO       L_Test149
;MyProject.c,285 :: 		Load (0b00000010 , 0b00110100 , 0b10000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      52
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,286 :: 		}
L_Test149:
;MyProject.c,287 :: 		if (x==33)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1222
	MOVLW      33
	XORWF      _x+0, 0
L__Test1222:
	BTFSS      STATUS+0, 2
	GOTO       L_Test150
;MyProject.c,290 :: 		Load (0b00000010 , 0b00100110 , 0b10000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      38
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,291 :: 		}
L_Test150:
;MyProject.c,292 :: 		if (x==34)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1223
	MOVLW      34
	XORWF      _x+0, 0
L__Test1223:
	BTFSS      STATUS+0, 2
	GOTO       L_Test151
;MyProject.c,295 :: 		Load (0b00000010 , 0b00100100 , 0b10000100 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,296 :: 		}
L_Test151:
;MyProject.c,297 :: 		if (x==35)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1224
	MOVLW      35
	XORWF      _x+0, 0
L__Test1224:
	BTFSS      STATUS+0, 2
	GOTO       L_Test152
;MyProject.c,300 :: 		Load (0b00010010 , 0b00100100 , 0b10000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,301 :: 		}
L_Test152:
;MyProject.c,302 :: 		if (x==36)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1225
	MOVLW      36
	XORWF      _x+0, 0
L__Test1225:
	BTFSS      STATUS+0, 2
	GOTO       L_Test153
;MyProject.c,305 :: 		Load (0b00000010 , 0b00100100 , 0b00000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,306 :: 		}
L_Test153:
;MyProject.c,307 :: 		if (x==37)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1226
	MOVLW      37
	XORWF      _x+0, 0
L__Test1226:
	BTFSS      STATUS+0, 2
	GOTO       L_Test154
;MyProject.c,310 :: 		Load (0b01010010 , 0b00100100 , 0b00000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,311 :: 		}
L_Test154:
;MyProject.c,312 :: 		if (x==38)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1227
	MOVLW      38
	XORWF      _x+0, 0
L__Test1227:
	BTFSS      STATUS+0, 2
	GOTO       L_Test155
;MyProject.c,315 :: 		Load (0b01000010 , 0b00100100 , 0b00000100 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,316 :: 		}
L_Test155:
;MyProject.c,317 :: 		if (x==39)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1228
	MOVLW      39
	XORWF      _x+0, 0
L__Test1228:
	BTFSS      STATUS+0, 2
	GOTO       L_Test156
;MyProject.c,320 :: 		Load (0b01000010 , 0b00100110 , 0b00000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      38
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,321 :: 		}
L_Test156:
;MyProject.c,322 :: 		if (x==40)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1229
	MOVLW      40
	XORWF      _x+0, 0
L__Test1229:
	BTFSS      STATUS+0, 2
	GOTO       L_Test157
;MyProject.c,325 :: 		Load (0b01000010 , 0b00110100 , 0b00000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      52
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,326 :: 		}
L_Test157:
;MyProject.c,327 :: 		}
L_Test147:
;MyProject.c,328 :: 		if (x>40)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1230
	MOVF       _x+0, 0
	SUBLW      40
L__Test1230:
	BTFSC      STATUS+0, 0
	GOTO       L_Test158
;MyProject.c,330 :: 		if (x==41)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1231
	MOVLW      41
	XORWF      _x+0, 0
L__Test1231:
	BTFSS      STATUS+0, 2
	GOTO       L_Test159
;MyProject.c,333 :: 		Load (0b01010010 , 0b00110100 , 0b00000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      52
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,334 :: 		}
L_Test159:
;MyProject.c,335 :: 		if (x==42)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1232
	MOVLW      42
	XORWF      _x+0, 0
L__Test1232:
	BTFSS      STATUS+0, 2
	GOTO       L_Test160
;MyProject.c,338 :: 		Load (0b11000010 , 0b00100100 , 0b00000000 );
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      36
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,339 :: 		}
L_Test160:
;MyProject.c,340 :: 		if (x==43)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1233
	MOVLW      43
	XORWF      _x+0, 0
L__Test1233:
	BTFSS      STATUS+0, 2
	GOTO       L_Test161
;MyProject.c,343 :: 		Load (0b00110010 , 0b00010100 , 0b10000000 );
	MOVLW      50
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,344 :: 		}
L_Test161:
;MyProject.c,345 :: 		if (x==44)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1234
	MOVLW      44
	XORWF      _x+0, 0
L__Test1234:
	BTFSS      STATUS+0, 2
	GOTO       L_Test162
;MyProject.c,348 :: 		Load (0b00100010 , 0b00010100 , 0b10000000 );
	MOVLW      34
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,349 :: 		}
L_Test162:
;MyProject.c,350 :: 		if (x==45)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1235
	MOVLW      45
	XORWF      _x+0, 0
L__Test1235:
	BTFSS      STATUS+0, 2
	GOTO       L_Test163
;MyProject.c,353 :: 		Load (0b00100010 , 0b00000110 , 0b10000000 );
	MOVLW      34
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,354 :: 		}
L_Test163:
;MyProject.c,355 :: 		if (x==46)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1236
	MOVLW      46
	XORWF      _x+0, 0
L__Test1236:
	BTFSS      STATUS+0, 2
	GOTO       L_Test164
;MyProject.c,358 :: 		Load (0b00100010 , 0b00000100 , 0b10000100 );
	MOVLW      34
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,359 :: 		}
L_Test164:
;MyProject.c,360 :: 		if (x==47)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1237
	MOVLW      47
	XORWF      _x+0, 0
L__Test1237:
	BTFSS      STATUS+0, 2
	GOTO       L_Test165
;MyProject.c,363 :: 		Load (0b00110010 , 0b00000100 , 0b10000000 );
	MOVLW      50
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,364 :: 		}
L_Test165:
;MyProject.c,365 :: 		if (x==48)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1238
	MOVLW      48
	XORWF      _x+0, 0
L__Test1238:
	BTFSS      STATUS+0, 2
	GOTO       L_Test166
;MyProject.c,368 :: 		Load (0b00100010 , 0b00000100 , 0b00000000 );
	MOVLW      34
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,369 :: 		}
L_Test166:
;MyProject.c,370 :: 		if (x==49)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1239
	MOVLW      49
	XORWF      _x+0, 0
L__Test1239:
	BTFSS      STATUS+0, 2
	GOTO       L_Test167
;MyProject.c,373 :: 		Load (0b01110010 , 0b00000100 , 0b00000000 );
	MOVLW      114
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,374 :: 		}
L_Test167:
;MyProject.c,375 :: 		if (x==50){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1240
	MOVLW      50
	XORWF      _x+0, 0
L__Test1240:
	BTFSS      STATUS+0, 2
	GOTO       L_Test168
;MyProject.c,377 :: 		Load (0b01000010 , 0b00000100 , 0b00000100 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,378 :: 		}
L_Test168:
;MyProject.c,379 :: 		}
L_Test158:
;MyProject.c,380 :: 		if (x >50)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1241
	MOVF       _x+0, 0
	SUBLW      50
L__Test1241:
	BTFSC      STATUS+0, 0
	GOTO       L_Test169
;MyProject.c,382 :: 		if (x==51){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1242
	MOVLW      51
	XORWF      _x+0, 0
L__Test1242:
	BTFSS      STATUS+0, 2
	GOTO       L_Test170
;MyProject.c,384 :: 		Load (0b01100010 , 0b00000110 , 0b00000000 );
	MOVLW      98
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,385 :: 		}
L_Test170:
;MyProject.c,386 :: 		if (x==52){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1243
	MOVLW      52
	XORWF      _x+0, 0
L__Test1243:
	BTFSS      STATUS+0, 2
	GOTO       L_Test171
;MyProject.c,388 :: 		Load (0b01100010 , 0b00010100 , 0b00000000 );
	MOVLW      98
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,389 :: 		}
L_Test171:
;MyProject.c,390 :: 		if (x==53){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1244
	MOVLW      53
	XORWF      _x+0, 0
L__Test1244:
	BTFSS      STATUS+0, 2
	GOTO       L_Test172
;MyProject.c,392 :: 		Load (0b01110010 , 0b00010100 , 0b00000000 );
	MOVLW      114
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,393 :: 		}
L_Test172:
;MyProject.c,394 :: 		if (x==54){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1245
	MOVLW      54
	XORWF      _x+0, 0
L__Test1245:
	BTFSS      STATUS+0, 2
	GOTO       L_Test173
;MyProject.c,396 :: 		Load (0b11100010 , 0b00000100 , 0b00000000 );
	MOVLW      226
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,397 :: 		}
L_Test173:
;MyProject.c,398 :: 		if (x==55){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1246
	MOVLW      55
	XORWF      _x+0, 0
L__Test1246:
	BTFSS      STATUS+0, 2
	GOTO       L_Test174
;MyProject.c,400 :: 		Load (0b00011010 , 0b00010100 , 0b10000000 );
	MOVLW      26
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,401 :: 		}
L_Test174:
;MyProject.c,402 :: 		if (x==56){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1247
	MOVLW      56
	XORWF      _x+0, 0
L__Test1247:
	BTFSS      STATUS+0, 2
	GOTO       L_Test175
;MyProject.c,404 :: 		Load (0b00001010 , 0b00010100 , 0b10000000 );
	MOVLW      10
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,405 :: 		}
L_Test175:
;MyProject.c,406 :: 		if (x==57){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1248
	MOVLW      57
	XORWF      _x+0, 0
L__Test1248:
	BTFSS      STATUS+0, 2
	GOTO       L_Test176
;MyProject.c,408 :: 		Load (0b00001010 , 0b00000110 , 0b10000000 );
	MOVLW      10
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,409 :: 		}
L_Test176:
;MyProject.c,410 :: 		if (x==58){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1249
	MOVLW      58
	XORWF      _x+0, 0
L__Test1249:
	BTFSS      STATUS+0, 2
	GOTO       L_Test177
;MyProject.c,412 :: 		Load (0b00001010 , 0b00000100 , 0b10000100 );
	MOVLW      10
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,413 :: 		}
L_Test177:
;MyProject.c,414 :: 		if (x==59){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1250
	MOVLW      59
	XORWF      _x+0, 0
L__Test1250:
	BTFSS      STATUS+0, 2
	GOTO       L_Test178
;MyProject.c,416 :: 		Load (0b00011010 , 0b00000100 , 0b10000000 );
	MOVLW      26
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,417 :: 		}
L_Test178:
;MyProject.c,418 :: 		if (x==60){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1251
	MOVLW      60
	XORWF      _x+0, 0
L__Test1251:
	BTFSS      STATUS+0, 2
	GOTO       L_Test179
;MyProject.c,420 :: 		Load (0b00001010 , 0b00000100 , 0b00000000 );
	MOVLW      10
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,421 :: 		}
L_Test179:
;MyProject.c,422 :: 		}
L_Test169:
;MyProject.c,423 :: 		if (x>60)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1252
	MOVF       _x+0, 0
	SUBLW      60
L__Test1252:
	BTFSC      STATUS+0, 0
	GOTO       L_Test180
;MyProject.c,425 :: 		if (x==61){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1253
	MOVLW      61
	XORWF      _x+0, 0
L__Test1253:
	BTFSS      STATUS+0, 2
	GOTO       L_Test181
;MyProject.c,427 :: 		Load (0b01011010 , 0b00000100 , 0b00000000 );
	MOVLW      90
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,428 :: 		}
L_Test181:
;MyProject.c,429 :: 		if (x==62){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1254
	MOVLW      62
	XORWF      _x+0, 0
L__Test1254:
	BTFSS      STATUS+0, 2
	GOTO       L_Test182
;MyProject.c,431 :: 		Load (0b01001010 , 0b00000100 , 0b00000100 );
	MOVLW      74
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,432 :: 		}
L_Test182:
;MyProject.c,433 :: 		if (x==63){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1255
	MOVLW      63
	XORWF      _x+0, 0
L__Test1255:
	BTFSS      STATUS+0, 2
	GOTO       L_Test183
;MyProject.c,435 :: 		Load (0b01001010 , 0b00000110 , 0b00000000 );
	MOVLW      74
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,436 :: 		}
L_Test183:
;MyProject.c,437 :: 		if (x==64){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1256
	MOVLW      64
	XORWF      _x+0, 0
L__Test1256:
	BTFSS      STATUS+0, 2
	GOTO       L_Test184
;MyProject.c,439 :: 		Load (0b01001010 , 0b00010100 , 0b00000000 );
	MOVLW      74
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,440 :: 		}
L_Test184:
;MyProject.c,441 :: 		if (x==65){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1257
	MOVLW      65
	XORWF      _x+0, 0
L__Test1257:
	BTFSS      STATUS+0, 2
	GOTO       L_Test185
;MyProject.c,443 :: 		Load (0b01011010 , 0b00010100 , 0b00000000 );
	MOVLW      90
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,444 :: 		}
L_Test185:
;MyProject.c,445 :: 		if (x==66){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1258
	MOVLW      66
	XORWF      _x+0, 0
L__Test1258:
	BTFSS      STATUS+0, 2
	GOTO       L_Test186
;MyProject.c,447 :: 		Load (0b11001010 , 0b00000100 , 0b00000000 );
	MOVLW      202
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,448 :: 		}
L_Test186:
;MyProject.c,449 :: 		if (x==67){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1259
	MOVLW      67
	XORWF      _x+0, 0
L__Test1259:
	BTFSS      STATUS+0, 2
	GOTO       L_Test187
;MyProject.c,451 :: 		Load (0b00010010 , 0b00010100 , 0b10001000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      136
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,452 :: 		}
L_Test187:
;MyProject.c,453 :: 		if (x==68){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1260
	MOVLW      68
	XORWF      _x+0, 0
L__Test1260:
	BTFSS      STATUS+0, 2
	GOTO       L_Test188
;MyProject.c,455 :: 		Load (0b00000010 , 0b00010100 , 0b10001000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      136
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,456 :: 		}
L_Test188:
;MyProject.c,457 :: 		if (x==69){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1261
	MOVLW      69
	XORWF      _x+0, 0
L__Test1261:
	BTFSS      STATUS+0, 2
	GOTO       L_Test189
;MyProject.c,459 :: 		Load (0b00000010 , 0b00000110 , 0b10001000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      136
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,460 :: 		}
L_Test189:
;MyProject.c,461 :: 		if (x==70){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1262
	MOVLW      70
	XORWF      _x+0, 0
L__Test1262:
	BTFSS      STATUS+0, 2
	GOTO       L_Test190
;MyProject.c,463 :: 		Load (0b00000010 , 0b00000100 , 0b10001100 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      140
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,464 :: 		}
L_Test190:
;MyProject.c,465 :: 		}
L_Test180:
;MyProject.c,466 :: 		if (x>70)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1263
	MOVF       _x+0, 0
	SUBLW      70
L__Test1263:
	BTFSC      STATUS+0, 0
	GOTO       L_Test191
;MyProject.c,468 :: 		if (x==71){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1264
	MOVLW      71
	XORWF      _x+0, 0
L__Test1264:
	BTFSS      STATUS+0, 2
	GOTO       L_Test192
;MyProject.c,470 :: 		Load (0b00010010 , 0b00000100 , 0b10001000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      136
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,471 :: 		}
L_Test192:
;MyProject.c,472 :: 		if (x==72){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1265
	MOVLW      72
	XORWF      _x+0, 0
L__Test1265:
	BTFSS      STATUS+0, 2
	GOTO       L_Test193
;MyProject.c,474 :: 		Load (0b00000010 , 0b00000100 , 0b00001000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,475 :: 		}
L_Test193:
;MyProject.c,476 :: 		if (x==73){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1266
	MOVLW      73
	XORWF      _x+0, 0
L__Test1266:
	BTFSS      STATUS+0, 2
	GOTO       L_Test194
;MyProject.c,478 :: 		Load (0b01010010 , 0b00000100 , 0b00001000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,479 :: 		}
L_Test194:
;MyProject.c,480 :: 		if (x==74){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1267
	MOVLW      74
	XORWF      _x+0, 0
L__Test1267:
	BTFSS      STATUS+0, 2
	GOTO       L_Test195
;MyProject.c,482 :: 		Load (0b01000010 , 0b00000100 , 0b00001100);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      12
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,483 :: 		}
L_Test195:
;MyProject.c,484 :: 		if (x==75){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1268
	MOVLW      75
	XORWF      _x+0, 0
L__Test1268:
	BTFSS      STATUS+0, 2
	GOTO       L_Test196
;MyProject.c,486 :: 		Load (0b01000010 , 0b00000110 , 0b00001000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,487 :: 		}
L_Test196:
;MyProject.c,488 :: 		if (x==76){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1269
	MOVLW      76
	XORWF      _x+0, 0
L__Test1269:
	BTFSS      STATUS+0, 2
	GOTO       L_Test197
;MyProject.c,490 :: 		Load (0b01000010 , 0b00010100 , 0b00001000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,491 :: 		}
L_Test197:
;MyProject.c,492 :: 		if (x==77){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1270
	MOVLW      77
	XORWF      _x+0, 0
L__Test1270:
	BTFSS      STATUS+0, 2
	GOTO       L_Test198
;MyProject.c,494 :: 		Load (0b01010010 , 0b00010100 , 0b00001000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,495 :: 		}
L_Test198:
;MyProject.c,496 :: 		if (x==78){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1271
	MOVLW      78
	XORWF      _x+0, 0
L__Test1271:
	BTFSS      STATUS+0, 2
	GOTO       L_Test199
;MyProject.c,498 :: 		Load (0b11000010 , 0b00000100 , 0b00001000);
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      8
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,499 :: 		}
L_Test199:
;MyProject.c,500 :: 		if (x==79){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1272
	MOVLW      79
	XORWF      _x+0, 0
L__Test1272:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1100
;MyProject.c,502 :: 		Load (0b00010010 , 0b01010100 , 0b10000000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      84
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,503 :: 		}
L_Test1100:
;MyProject.c,504 :: 		if (x==80){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1273
	MOVLW      80
	XORWF      _x+0, 0
L__Test1273:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1101
;MyProject.c,506 :: 		Load (0b00000010 , 0b01010100 , 0b10000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      84
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,507 :: 		}
L_Test1101:
;MyProject.c,508 :: 		}
L_Test191:
;MyProject.c,509 :: 		if (x>80)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1274
	MOVF       _x+0, 0
	SUBLW      80
L__Test1274:
	BTFSC      STATUS+0, 0
	GOTO       L_Test1102
;MyProject.c,511 :: 		if (x==81){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1275
	MOVLW      81
	XORWF      _x+0, 0
L__Test1275:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1103
;MyProject.c,513 :: 		Load (0b00000010 , 0b01000110 , 0b10000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      70
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,514 :: 		}
L_Test1103:
;MyProject.c,515 :: 		if (x==82){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1276
	MOVLW      82
	XORWF      _x+0, 0
L__Test1276:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1104
;MyProject.c,517 :: 		Load (0b00000010 , 0b01000100 , 0b10000100);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,518 :: 		}
L_Test1104:
;MyProject.c,519 :: 		if (x==83){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1277
	MOVLW      83
	XORWF      _x+0, 0
L__Test1277:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1105
;MyProject.c,521 :: 		Load (0b00010010 , 0b01000100 , 0b10000000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,522 :: 		}
L_Test1105:
;MyProject.c,523 :: 		if (x==84){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1278
	MOVLW      84
	XORWF      _x+0, 0
L__Test1278:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1106
;MyProject.c,525 :: 		Load (0b00000010 , 0b01000100 , 0b00000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,526 :: 		}
L_Test1106:
;MyProject.c,527 :: 		if (x==85){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1279
	MOVLW      85
	XORWF      _x+0, 0
L__Test1279:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1107
;MyProject.c,529 :: 		Load (0b01010010 , 0b01000100 , 0b00000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,530 :: 		}
L_Test1107:
;MyProject.c,531 :: 		if (x==86){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1280
	MOVLW      86
	XORWF      _x+0, 0
L__Test1280:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1108
;MyProject.c,533 :: 		Load (0b01000010 , 0b01000100 , 0b00000100 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,534 :: 		}
L_Test1108:
;MyProject.c,535 :: 		if (x==87){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1281
	MOVLW      87
	XORWF      _x+0, 0
L__Test1281:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1109
;MyProject.c,537 :: 		Load (0b01000010 , 0b01000110 , 0b00000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      70
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,538 :: 		}
L_Test1109:
;MyProject.c,539 :: 		if (x==88){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1282
	MOVLW      88
	XORWF      _x+0, 0
L__Test1282:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1110
;MyProject.c,541 :: 		Load (0b01000010 , 0b01010100 , 0b00000000 );
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      84
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,542 :: 		}
L_Test1110:
;MyProject.c,543 :: 		if (x==89){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1283
	MOVLW      89
	XORWF      _x+0, 0
L__Test1283:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1111
;MyProject.c,545 :: 		Load (0b01010010 , 0b01010100 , 0b00000000 );
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      84
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,546 :: 		}
L_Test1111:
;MyProject.c,547 :: 		if (x==90){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1284
	MOVLW      90
	XORWF      _x+0, 0
L__Test1284:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1112
;MyProject.c,549 :: 		Load (0b11000010 , 0b01000100 , 0b00000000 );
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      68
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,550 :: 		}
L_Test1112:
;MyProject.c,551 :: 		}
L_Test1102:
;MyProject.c,552 :: 		if (x>90)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1285
	MOVF       _x+0, 0
	SUBLW      90
L__Test1285:
	BTFSC      STATUS+0, 0
	GOTO       L_Test1113
;MyProject.c,554 :: 		if (x==91){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1286
	MOVLW      91
	XORWF      _x+0, 0
L__Test1286:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1114
;MyProject.c,556 :: 		Load (0b00010010 , 0b10010100 , 0b10000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      148
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,557 :: 		}
L_Test1114:
;MyProject.c,558 :: 		if (x==92){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1287
	MOVLW      92
	XORWF      _x+0, 0
L__Test1287:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1115
;MyProject.c,560 :: 		Load (0b00000010 , 0b10010100 , 0b10000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      148
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,561 :: 		}
L_Test1115:
;MyProject.c,562 :: 		if (x==92){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1288
	MOVLW      92
	XORWF      _x+0, 0
L__Test1288:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1116
;MyProject.c,564 :: 		Load (0b00000010 , 0b10000110 , 0b10000000 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      134
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,565 :: 		}
L_Test1116:
;MyProject.c,566 :: 		if (x==94){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1289
	MOVLW      94
	XORWF      _x+0, 0
L__Test1289:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1117
;MyProject.c,568 :: 		Load (0b00000010 , 0b10000100 , 0b10000100 );
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,569 :: 		}
L_Test1117:
;MyProject.c,570 :: 		if (x==95){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1290
	MOVLW      95
	XORWF      _x+0, 0
L__Test1290:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1118
;MyProject.c,572 :: 		Load (0b00010010 , 0b10000100 , 0b10000000 );
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,573 :: 		}
L_Test1118:
;MyProject.c,574 :: 		if (x==96){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1291
	MOVLW      96
	XORWF      _x+0, 0
L__Test1291:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1119
;MyProject.c,576 :: 		Load (0b00000010 , 0b10000100 , 0b00000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,577 :: 		}
L_Test1119:
;MyProject.c,578 :: 		if (x==97){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1292
	MOVLW      97
	XORWF      _x+0, 0
L__Test1292:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1120
;MyProject.c,580 :: 		Load (0b01010010 , 0b10000100 , 0b00000000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,581 :: 		}
L_Test1120:
;MyProject.c,582 :: 		if (x==98){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1293
	MOVLW      98
	XORWF      _x+0, 0
L__Test1293:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1121
;MyProject.c,584 :: 		Load (0b01000010 , 0b10000100 , 0b00000100);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,585 :: 		}
L_Test1121:
;MyProject.c,586 :: 		if (x==99){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1294
	MOVLW      99
	XORWF      _x+0, 0
L__Test1294:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1122
;MyProject.c,588 :: 		Load (0b01000010 , 0b10000110 , 0b00000000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      134
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,589 :: 		}
L_Test1122:
;MyProject.c,590 :: 		if (x==100){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test1295
	MOVLW      100
	XORWF      _x+0, 0
L__Test1295:
	BTFSS      STATUS+0, 2
	GOTO       L_Test1123
;MyProject.c,592 :: 		Load (0b01000010 , 0b10010100 , 0b00000000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      148
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,593 :: 		}
L_Test1123:
;MyProject.c,594 :: 		}
L_Test1113:
;MyProject.c,595 :: 		}
L_end_Test1:
	RETURN
; end of _Test1

_Test2:

;MyProject.c,600 :: 		void Test2()
;MyProject.c,602 :: 		if (x>100)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2297
	MOVF       _x+0, 0
	SUBLW      100
L__Test2297:
	BTFSC      STATUS+0, 0
	GOTO       L_Test2124
;MyProject.c,604 :: 		if (x==101){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2298
	MOVLW      101
	XORWF      _x+0, 0
L__Test2298:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2125
;MyProject.c,606 :: 		Load (0b01010010 , 0b10010100 , 0b00000000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      148
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,607 :: 		}
L_Test2125:
;MyProject.c,608 :: 		if (x==102){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2299
	MOVLW      102
	XORWF      _x+0, 0
L__Test2299:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2126
;MyProject.c,610 :: 		Load (0b11000010 , 0b10000100 , 0b00000000);
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      132
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,611 :: 		}
L_Test2126:
;MyProject.c,612 :: 		if (x==103){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2300
	MOVLW      103
	XORWF      _x+0, 0
L__Test2300:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2127
;MyProject.c,614 :: 		Load (0b00010110 , 0b00010100 , 0b10000000);
	MOVLW      22
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,615 :: 		}
L_Test2127:
;MyProject.c,616 :: 		if (x==104){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2301
	MOVLW      104
	XORWF      _x+0, 0
L__Test2301:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2128
;MyProject.c,618 :: 		Load (0b00000110 , 0b00010100 , 0b10000000);
	MOVLW      6
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,619 :: 		}
L_Test2128:
;MyProject.c,620 :: 		if (x==105){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2302
	MOVLW      105
	XORWF      _x+0, 0
L__Test2302:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2129
;MyProject.c,622 :: 		Load (0b00000110 , 0b00000110 , 0b10000000);
	MOVLW      6
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,623 :: 		}
L_Test2129:
;MyProject.c,624 :: 		if (x==106){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2303
	MOVLW      106
	XORWF      _x+0, 0
L__Test2303:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2130
;MyProject.c,626 :: 		Load (0b00000110 , 0b00000100 , 0b10000100);
	MOVLW      6
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,627 :: 		}
L_Test2130:
;MyProject.c,628 :: 		if (x==107){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2304
	MOVLW      107
	XORWF      _x+0, 0
L__Test2304:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2131
;MyProject.c,630 :: 		Load (0b00010110 , 0b00000100 , 0b10000000);
	MOVLW      22
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,631 :: 		}
L_Test2131:
;MyProject.c,632 :: 		if (x==108){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2305
	MOVLW      108
	XORWF      _x+0, 0
L__Test2305:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2132
;MyProject.c,634 :: 		Load (0b00000110 , 0b00000100 , 0b00000000);
	MOVLW      6
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,635 :: 		}
L_Test2132:
;MyProject.c,636 :: 		if (x==109){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2306
	MOVLW      109
	XORWF      _x+0, 0
L__Test2306:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2133
;MyProject.c,638 :: 		Load (0b01010110 , 0b00000100 , 0b00000000);
	MOVLW      86
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,639 :: 		}
L_Test2133:
;MyProject.c,640 :: 		if (x==110){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2307
	MOVLW      110
	XORWF      _x+0, 0
L__Test2307:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2134
;MyProject.c,642 :: 		Load (0b01000110 , 0b00000100 , 0b00000100);
	MOVLW      70
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,643 :: 		}
L_Test2134:
;MyProject.c,644 :: 		if (x==111){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2308
	MOVLW      111
	XORWF      _x+0, 0
L__Test2308:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2135
;MyProject.c,646 :: 		Load (0b01000110 , 0b00000110 , 0b00000000);
	MOVLW      70
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,647 :: 		}
L_Test2135:
;MyProject.c,648 :: 		if (x==112){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2309
	MOVLW      112
	XORWF      _x+0, 0
L__Test2309:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2136
;MyProject.c,650 :: 		Load (0b01000110 , 0b00010100 , 0b00000000);
	MOVLW      70
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,651 :: 		}
L_Test2136:
;MyProject.c,652 :: 		if (x==113){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2310
	MOVLW      113
	XORWF      _x+0, 0
L__Test2310:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2137
;MyProject.c,654 :: 		Load (0b01010110 , 0b00010100 , 0b00000000);
	MOVLW      86
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,655 :: 		}
L_Test2137:
;MyProject.c,656 :: 		if (x==114){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2311
	MOVLW      114
	XORWF      _x+0, 0
L__Test2311:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2138
;MyProject.c,658 :: 		Load (0b11000110 , 0b00000100 , 0b00000000);
	MOVLW      198
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,659 :: 		}
L_Test2138:
;MyProject.c,660 :: 		if (x==115){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2312
	MOVLW      115
	XORWF      _x+0, 0
L__Test2312:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2139
;MyProject.c,662 :: 		Load (0b00010010 , 0b00010100 , 0b10010000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      144
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,663 :: 		}
L_Test2139:
;MyProject.c,664 :: 		if (x==116){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2313
	MOVLW      116
	XORWF      _x+0, 0
L__Test2313:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2140
;MyProject.c,666 :: 		Load (0b00000010 , 0b00010100 , 0b10010000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      144
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,667 :: 		}
L_Test2140:
;MyProject.c,668 :: 		if (x==117){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2314
	MOVLW      117
	XORWF      _x+0, 0
L__Test2314:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2141
;MyProject.c,670 :: 		Load (0b00000010 , 0b00000110 , 0b10010000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      144
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,671 :: 		}
L_Test2141:
;MyProject.c,672 :: 		if (x==118){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2315
	MOVLW      118
	XORWF      _x+0, 0
L__Test2315:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2142
;MyProject.c,674 :: 		Load (0b00000010 , 0b00000100 , 0b10010100);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      148
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,675 :: 		}
L_Test2142:
;MyProject.c,676 :: 		if (x==119){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2316
	MOVLW      119
	XORWF      _x+0, 0
L__Test2316:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2143
;MyProject.c,678 :: 		Load (0b00010010 , 0b00000100 , 0b10010000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      144
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,679 :: 		}
L_Test2143:
;MyProject.c,680 :: 		if (x==120){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2317
	MOVLW      120
	XORWF      _x+0, 0
L__Test2317:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2144
;MyProject.c,682 :: 		Load (0b00000010 , 0b00000100 , 0b00010000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,683 :: 		}
L_Test2144:
;MyProject.c,684 :: 		}
L_Test2124:
;MyProject.c,685 :: 		if (x>120)
	MOVF       _x+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2318
	MOVF       _x+0, 0
	SUBLW      120
L__Test2318:
	BTFSC      STATUS+0, 0
	GOTO       L_Test2145
;MyProject.c,687 :: 		if (x==121){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2319
	MOVLW      121
	XORWF      _x+0, 0
L__Test2319:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2146
;MyProject.c,689 :: 		Load (0b01010010 , 0b00000100 , 0b00010000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,690 :: 		}
L_Test2146:
;MyProject.c,691 :: 		if (x==122){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2320
	MOVLW      122
	XORWF      _x+0, 0
L__Test2320:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2147
;MyProject.c,693 :: 		Load (0b01000010 , 0b00000100 , 0b00010100);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      20
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,694 :: 		}
L_Test2147:
;MyProject.c,695 :: 		if (x==123){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2321
	MOVLW      123
	XORWF      _x+0, 0
L__Test2321:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2148
;MyProject.c,697 :: 		Load (0b01000010 , 0b00000110 , 0b00010000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,698 :: 		}
L_Test2148:
;MyProject.c,699 :: 		if (x==124){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2322
	MOVLW      124
	XORWF      _x+0, 0
L__Test2322:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2149
;MyProject.c,701 :: 		Load (0b01000010 , 0b00010100 , 0b00010000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,702 :: 		}
L_Test2149:
;MyProject.c,703 :: 		if (x==125){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2323
	MOVLW      125
	XORWF      _x+0, 0
L__Test2323:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2150
;MyProject.c,705 :: 		Load (0b01010010 , 0b00010100 , 0b00010000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,706 :: 		}
L_Test2150:
;MyProject.c,707 :: 		if (x==126){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2324
	MOVLW      126
	XORWF      _x+0, 0
L__Test2324:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2151
;MyProject.c,709 :: 		Load (0b11000010 , 0b00000100 , 0b00010000);
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      16
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,710 :: 		}
L_Test2151:
;MyProject.c,711 :: 		if (x==127){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2325
	MOVLW      127
	XORWF      _x+0, 0
L__Test2325:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2152
;MyProject.c,713 :: 		Load (0b00010010 , 0b00011100 , 0b10000000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      28
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,714 :: 		}
L_Test2152:
;MyProject.c,715 :: 		if (x==128){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2326
	MOVLW      128
	XORWF      _x+0, 0
L__Test2326:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2153
;MyProject.c,717 :: 		Load (0b00000010 , 0b00011100 , 0b10000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      28
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,718 :: 		}
L_Test2153:
;MyProject.c,719 :: 		if (x==129){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2327
	MOVLW      129
	XORWF      _x+0, 0
L__Test2327:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2154
;MyProject.c,721 :: 		Load (0b00000010 , 0b00001110 , 0b10000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      14
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,722 :: 		}
L_Test2154:
;MyProject.c,723 :: 		if (x==130){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2328
	MOVLW      130
	XORWF      _x+0, 0
L__Test2328:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2155
;MyProject.c,725 :: 		Load (0b00000010 , 0b00001100 , 0b10000100);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	MOVLW      132
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,726 :: 		}
L_Test2155:
;MyProject.c,727 :: 		if (x==131){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2329
	MOVLW      131
	XORWF      _x+0, 0
L__Test2329:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2156
;MyProject.c,729 :: 		Load (0b00010010 , 0b00001100 , 0b10000000);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	MOVLW      128
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,730 :: 		}
L_Test2156:
;MyProject.c,731 :: 		if (x==132){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2330
	MOVLW      132
	XORWF      _x+0, 0
L__Test2330:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2157
;MyProject.c,733 :: 		Load (0b00000010 , 0b00001100 , 0b00000000);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,734 :: 		}
L_Test2157:
;MyProject.c,735 :: 		if (x==133){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2331
	MOVLW      133
	XORWF      _x+0, 0
L__Test2331:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2158
;MyProject.c,737 :: 		Load (0b01010010 , 0b00001100 , 0b00000000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,738 :: 		}
L_Test2158:
;MyProject.c,739 :: 		if (x==134){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2332
	MOVLW      134
	XORWF      _x+0, 0
L__Test2332:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2159
;MyProject.c,741 :: 		Load (0b01000010 , 0b00001100 , 0b00000100);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	MOVLW      4
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,742 :: 		}
L_Test2159:
;MyProject.c,743 :: 		if (x==135){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2333
	MOVLW      135
	XORWF      _x+0, 0
L__Test2333:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2160
;MyProject.c,745 :: 		Load (0b01000010 , 0b00001110 , 0b00000000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      14
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,746 :: 		}
L_Test2160:
;MyProject.c,747 :: 		if (x==136){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2334
	MOVLW      136
	XORWF      _x+0, 0
L__Test2334:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2161
;MyProject.c,749 :: 		Load (0b01000010 , 0b00011100 , 0b00000000);
	MOVLW      66
	MOVWF      FARG_load_x+0
	MOVLW      28
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,750 :: 		}
L_Test2161:
;MyProject.c,751 :: 		if (x==137){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2335
	MOVLW      137
	XORWF      _x+0, 0
L__Test2335:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2162
;MyProject.c,753 :: 		Load (0b01010010 , 0b00011100 , 0b00000000);
	MOVLW      82
	MOVWF      FARG_load_x+0
	MOVLW      28
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,754 :: 		}
L_Test2162:
;MyProject.c,755 :: 		if (x==138){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2336
	MOVLW      138
	XORWF      _x+0, 0
L__Test2336:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2163
;MyProject.c,757 :: 		Load (0b11000010 , 0b00001100 , 0b00000000);
	MOVLW      194
	MOVWF      FARG_load_x+0
	MOVLW      12
	MOVWF      FARG_load_y+0
	CLRF       FARG_load_z+0
	CALL       _load+0
;MyProject.c,758 :: 		}
L_Test2163:
;MyProject.c,759 :: 		if (x==139){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2337
	MOVLW      139
	XORWF      _x+0, 0
L__Test2337:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2164
;MyProject.c,761 :: 		Load (0b00010010 , 0b00010100 , 0b10000010);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      130
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,762 :: 		}
L_Test2164:
;MyProject.c,763 :: 		if (x==140){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2338
	MOVLW      140
	XORWF      _x+0, 0
L__Test2338:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2165
;MyProject.c,765 :: 		Load (0b00000010 , 0b00010100 , 0b10000010);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      20
	MOVWF      FARG_load_y+0
	MOVLW      130
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,766 :: 		}
L_Test2165:
;MyProject.c,767 :: 		if (x==141){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2339
	MOVLW      141
	XORWF      _x+0, 0
L__Test2339:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2166
;MyProject.c,769 :: 		Load (0b00000010 , 0b00000110 , 0b10000010);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      6
	MOVWF      FARG_load_y+0
	MOVLW      130
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,770 :: 		}
L_Test2166:
;MyProject.c,771 :: 		if (x==142){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2340
	MOVLW      142
	XORWF      _x+0, 0
L__Test2340:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2167
;MyProject.c,773 :: 		Load (0b00000010 , 0b00000100 , 0b10000110);
	MOVLW      2
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      134
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,774 :: 		}
L_Test2167:
;MyProject.c,775 :: 		if (x==143){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Test2341
	MOVLW      143
	XORWF      _x+0, 0
L__Test2341:
	BTFSS      STATUS+0, 2
	GOTO       L_Test2168
;MyProject.c,777 :: 		Load (0b00010010 , 0b00000100 , 0b10000010);
	MOVLW      18
	MOVWF      FARG_load_x+0
	MOVLW      4
	MOVWF      FARG_load_y+0
	MOVLW      130
	MOVWF      FARG_load_z+0
	CALL       _load+0
;MyProject.c,778 :: 		}
L_Test2168:
;MyProject.c,779 :: 		}
L_Test2145:
;MyProject.c,780 :: 		}
L_end_Test2:
	RETURN
; end of _Test2

_main:

;MyProject.c,783 :: 		void main()
;MyProject.c,785 :: 		TRISC=0;
	CLRF       TRISC+0
;MyProject.c,786 :: 		TRISB=0;
	CLRF       TRISB+0
;MyProject.c,787 :: 		TRISD=0;
	CLRF       TRISD+0
;MyProject.c,788 :: 		TRISA=0;
	CLRF       TRISA+0
;MyProject.c,789 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;MyProject.c,790 :: 		INTCON.TMR0IE=1;
	BSF        INTCON+0, 5
;MyProject.c,791 :: 		OPTION_REG = 0b10000111;
	MOVLW      135
	MOVWF      OPTION_REG+0
;MyProject.c,792 :: 		TMR0 = 61;
	MOVLW      61
	MOVWF      TMR0+0
;MyProject.c,794 :: 		Test1();
	CALL       _Test1+0
;MyProject.c,795 :: 		Test2();
	CALL       _Test2+0
;MyProject.c,796 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,797 :: 		void interrupt()
;MyProject.c,799 :: 		INTCON.T0IF=0;
	BCF        INTCON+0, 2
;MyProject.c,800 :: 		TMR0 = 61;
	MOVLW      61
	MOVWF      TMR0+0
;MyProject.c,801 :: 		count++;
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;MyProject.c,802 :: 		if (count == 20)
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt345
	MOVLW      20
	XORWF      _count+0, 0
L__interrupt345:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt169
;MyProject.c,804 :: 		count =0;
	CLRF       _count+0
	CLRF       _count+1
;MyProject.c,805 :: 		sec++;
	INCF       _sec+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sec+1, 1
;MyProject.c,806 :: 		}
L_interrupt169:
;MyProject.c,807 :: 		if (sec == 60)
	MOVLW      0
	XORWF      _sec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt346
	MOVLW      60
	XORWF      _sec+0, 0
L__interrupt346:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt170
;MyProject.c,809 :: 		sec=0;
	CLRF       _sec+0
	CLRF       _sec+1
;MyProject.c,810 :: 		Minute++;
	INCF       _Minute+0, 1
	BTFSC      STATUS+0, 2
	INCF       _Minute+1, 1
;MyProject.c,811 :: 		}
L_interrupt170:
;MyProject.c,812 :: 		if (minute==5)
	MOVLW      0
	XORWF      _Minute+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt347
	MOVLW      5
	XORWF      _Minute+0, 0
L__interrupt347:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt171
;MyProject.c,814 :: 		Minute=0;
	CLRF       _Minute+0
	CLRF       _Minute+1
;MyProject.c,815 :: 		x++;
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;MyProject.c,816 :: 		}
L_interrupt171:
;MyProject.c,817 :: 		if (x==144)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt348
	MOVLW      144
	XORWF      _x+0, 0
L__interrupt348:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt172
;MyProject.c,819 :: 		x=0;
	CLRF       _x+0
	CLRF       _x+1
;MyProject.c,820 :: 		}
L_interrupt172:
;MyProject.c,821 :: 		}
L_end_interrupt:
L__interrupt344:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
