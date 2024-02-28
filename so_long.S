
so_long:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 e1 3f 01 00 	mov    0x13fe1(%rip),%rax        # 415ff0 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .plt:

0000000000402020 <XFreeCursor@plt-0x10>:
  402020:	ff 35 e2 3f 01 00    	push   0x13fe2(%rip)        # 416008 <_GLOBAL_OFFSET_TABLE_+0x8>
  402026:	ff 25 e4 3f 01 00    	jmp    *0x13fe4(%rip)        # 416010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402030 <XFreeCursor@plt>:
  402030:	ff 25 e2 3f 01 00    	jmp    *0x13fe2(%rip)        # 416018 <XFreeCursor@Base>
  402036:	68 00 00 00 00       	push   $0x0
  40203b:	e9 e0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402040 <memset@plt>:
  402040:	ff 25 da 3f 01 00    	jmp    *0x13fda(%rip)        # 416020 <memset@GLIBC_2.2.5>
  402046:	68 01 00 00 00       	push   $0x1
  40204b:	e9 d0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402050 <close@plt>:
  402050:	ff 25 d2 3f 01 00    	jmp    *0x13fd2(%rip)        # 416028 <close@GLIBC_2.2.5>
  402056:	68 02 00 00 00       	push   $0x2
  40205b:	e9 c0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402060 <shmdt@plt>:
  402060:	ff 25 ca 3f 01 00    	jmp    *0x13fca(%rip)        # 416030 <shmdt@GLIBC_2.2.5>
  402066:	68 03 00 00 00       	push   $0x3
  40206b:	e9 b0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402070 <XStoreName@plt>:
  402070:	ff 25 c2 3f 01 00    	jmp    *0x13fc2(%rip)        # 416038 <XStoreName@Base>
  402076:	68 04 00 00 00       	push   $0x4
  40207b:	e9 a0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402080 <XGetWMNormalHints@plt>:
  402080:	ff 25 ba 3f 01 00    	jmp    *0x13fba(%rip)        # 416040 <XGetWMNormalHints@Base>
  402086:	68 05 00 00 00       	push   $0x5
  40208b:	e9 90 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402090 <puts@plt>:
  402090:	ff 25 b2 3f 01 00    	jmp    *0x13fb2(%rip)        # 416048 <puts@GLIBC_2.2.5>
  402096:	68 06 00 00 00       	push   $0x6
  40209b:	e9 80 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020a0 <XAutoRepeatOff@plt>:
  4020a0:	ff 25 aa 3f 01 00    	jmp    *0x13faa(%rip)        # 416050 <XAutoRepeatOff@Base>
  4020a6:	68 07 00 00 00       	push   $0x7
  4020ab:	e9 70 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020b0 <exit@plt>:
  4020b0:	ff 25 a2 3f 01 00    	jmp    *0x13fa2(%rip)        # 416058 <exit@GLIBC_2.2.5>
  4020b6:	68 08 00 00 00       	push   $0x8
  4020bb:	e9 60 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020c0 <XCreateImage@plt>:
  4020c0:	ff 25 9a 3f 01 00    	jmp    *0x13f9a(%rip)        # 416060 <XCreateImage@Base>
  4020c6:	68 09 00 00 00       	push   $0x9
  4020cb:	e9 50 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020d0 <strcasecmp@plt>:
  4020d0:	ff 25 92 3f 01 00    	jmp    *0x13f92(%rip)        # 416068 <strcasecmp@GLIBC_2.2.5>
  4020d6:	68 0a 00 00 00       	push   $0xa
  4020db:	e9 40 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020e0 <XShmCreatePixmap@plt>:
  4020e0:	ff 25 8a 3f 01 00    	jmp    *0x13f8a(%rip)        # 416070 <XShmCreatePixmap@Base>
  4020e6:	68 0b 00 00 00       	push   $0xb
  4020eb:	e9 30 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020f0 <read@plt>:
  4020f0:	ff 25 82 3f 01 00    	jmp    *0x13f82(%rip)        # 416078 <read@GLIBC_2.2.5>
  4020f6:	68 0c 00 00 00       	push   $0xc
  4020fb:	e9 20 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402100 <strncmp@plt>:
  402100:	ff 25 7a 3f 01 00    	jmp    *0x13f7a(%rip)        # 416080 <strncmp@GLIBC_2.2.5>
  402106:	68 0d 00 00 00       	push   $0xd
  40210b:	e9 10 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402110 <malloc@plt>:
  402110:	ff 25 72 3f 01 00    	jmp    *0x13f72(%rip)        # 416088 <malloc@GLIBC_2.2.5>
  402116:	68 0e 00 00 00       	push   $0xe
  40211b:	e9 00 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402120 <XSetWMNormalHints@plt>:
  402120:	ff 25 6a 3f 01 00    	jmp    *0x13f6a(%rip)        # 416090 <XSetWMNormalHints@Base>
  402126:	68 0f 00 00 00       	push   $0xf
  40212b:	e9 f0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402130 <XCreateWindow@plt>:
  402130:	ff 25 62 3f 01 00    	jmp    *0x13f62(%rip)        # 416098 <XCreateWindow@Base>
  402136:	68 10 00 00 00       	push   $0x10
  40213b:	e9 e0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402140 <XkbKeycodeToKeysym@plt>:
  402140:	ff 25 5a 3f 01 00    	jmp    *0x13f5a(%rip)        # 4160a0 <XkbKeycodeToKeysym@Base>
  402146:	68 11 00 00 00       	push   $0x11
  40214b:	e9 d0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402150 <XCreateColormap@plt>:
  402150:	ff 25 52 3f 01 00    	jmp    *0x13f52(%rip)        # 4160a8 <XCreateColormap@Base>
  402156:	68 12 00 00 00       	push   $0x12
  40215b:	e9 c0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402160 <XAutoRepeatOn@plt>:
  402160:	ff 25 4a 3f 01 00    	jmp    *0x13f4a(%rip)        # 4160b0 <XAutoRepeatOn@Base>
  402166:	68 13 00 00 00       	push   $0x13
  40216b:	e9 b0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402170 <XOpenDisplay@plt>:
  402170:	ff 25 42 3f 01 00    	jmp    *0x13f42(%rip)        # 4160b8 <XOpenDisplay@Base>
  402176:	68 14 00 00 00       	push   $0x14
  40217b:	e9 a0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402180 <free@plt>:
  402180:	ff 25 3a 3f 01 00    	jmp    *0x13f3a(%rip)        # 4160c0 <free@GLIBC_2.2.5>
  402186:	68 15 00 00 00       	push   $0x15
  40218b:	e9 90 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402190 <XCopyArea@plt>:
  402190:	ff 25 32 3f 01 00    	jmp    *0x13f32(%rip)        # 4160c8 <XCopyArea@Base>
  402196:	68 16 00 00 00       	push   $0x16
  40219b:	e9 80 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021a0 <strlen@plt>:
  4021a0:	ff 25 2a 3f 01 00    	jmp    *0x13f2a(%rip)        # 4160d0 <strlen@GLIBC_2.2.5>
  4021a6:	68 17 00 00 00       	push   $0x17
  4021ab:	e9 70 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021b0 <XDestroyWindow@plt>:
  4021b0:	ff 25 22 3f 01 00    	jmp    *0x13f22(%rip)        # 4160d8 <XDestroyWindow@Base>
  4021b6:	68 18 00 00 00       	push   $0x18
  4021bb:	e9 60 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021c0 <XCloseDisplay@plt>:
  4021c0:	ff 25 1a 3f 01 00    	jmp    *0x13f1a(%rip)        # 4160e0 <XCloseDisplay@Base>
  4021c6:	68 19 00 00 00       	push   $0x19
  4021cb:	e9 50 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021d0 <XShmCreateImage@plt>:
  4021d0:	ff 25 12 3f 01 00    	jmp    *0x13f12(%rip)        # 4160e8 <XShmCreateImage@Base>
  4021d6:	68 1a 00 00 00       	push   $0x1a
  4021db:	e9 40 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021e0 <XCreatePixmapCursor@plt>:
  4021e0:	ff 25 0a 3f 01 00    	jmp    *0x13f0a(%rip)        # 4160f0 <XCreatePixmapCursor@Base>
  4021e6:	68 1b 00 00 00       	push   $0x1b
  4021eb:	e9 30 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021f0 <XFreeGC@plt>:
  4021f0:	ff 25 02 3f 01 00    	jmp    *0x13f02(%rip)        # 4160f8 <XFreeGC@Base>
  4021f6:	68 1c 00 00 00       	push   $0x1c
  4021fb:	e9 20 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402200 <XShmQueryVersion@plt>:
  402200:	ff 25 fa 3e 01 00    	jmp    *0x13efa(%rip)        # 416100 <XShmQueryVersion@Base>
  402206:	68 1d 00 00 00       	push   $0x1d
  40220b:	e9 10 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402210 <XNextEvent@plt>:
  402210:	ff 25 f2 3e 01 00    	jmp    *0x13ef2(%rip)        # 416108 <XNextEvent@Base>
  402216:	68 1e 00 00 00       	push   $0x1e
  40221b:	e9 00 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402220 <XWindowEvent@plt>:
  402220:	ff 25 ea 3e 01 00    	jmp    *0x13eea(%rip)        # 416110 <XWindowEvent@Base>
  402226:	68 1f 00 00 00       	push   $0x1f
  40222b:	e9 f0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402230 <XSetWMProtocols@plt>:
  402230:	ff 25 e2 3e 01 00    	jmp    *0x13ee2(%rip)        # 416118 <XSetWMProtocols@Base>
  402236:	68 20 00 00 00       	push   $0x20
  40223b:	e9 e0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402240 <lseek@plt>:
  402240:	ff 25 da 3e 01 00    	jmp    *0x13eda(%rip)        # 416120 <lseek@GLIBC_2.2.5>
  402246:	68 21 00 00 00       	push   $0x21
  40224b:	e9 d0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402250 <strtol@plt>:
  402250:	ff 25 d2 3e 01 00    	jmp    *0x13ed2(%rip)        # 416128 <strtol@GLIBC_2.2.5>
  402256:	68 22 00 00 00       	push   $0x22
  40225b:	e9 c0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402260 <gethostname@plt>:
  402260:	ff 25 ca 3e 01 00    	jmp    *0x13eca(%rip)        # 416130 <gethostname@GLIBC_2.2.5>
  402266:	68 23 00 00 00       	push   $0x23
  40226b:	e9 b0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402270 <XPutBackEvent@plt>:
  402270:	ff 25 c2 3e 01 00    	jmp    *0x13ec2(%rip)        # 416138 <XPutBackEvent@Base>
  402276:	68 24 00 00 00       	push   $0x24
  40227b:	e9 a0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402280 <XCreateBitmapFromData@plt>:
  402280:	ff 25 ba 3e 01 00    	jmp    *0x13eba(%rip)        # 416140 <XCreateBitmapFromData@Base>
  402286:	68 25 00 00 00       	push   $0x25
  40228b:	e9 90 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402290 <XCreateGC@plt>:
  402290:	ff 25 b2 3e 01 00    	jmp    *0x13eb2(%rip)        # 416148 <XCreateGC@Base>
  402296:	68 26 00 00 00       	push   $0x26
  40229b:	e9 80 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022a0 <getenv@plt>:
  4022a0:	ff 25 aa 3e 01 00    	jmp    *0x13eaa(%rip)        # 416150 <getenv@GLIBC_2.2.5>
  4022a6:	68 27 00 00 00       	push   $0x27
  4022ab:	e9 70 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022b0 <XFlush@plt>:
  4022b0:	ff 25 a2 3e 01 00    	jmp    *0x13ea2(%rip)        # 416158 <XFlush@Base>
  4022b6:	68 28 00 00 00       	push   $0x28
  4022bb:	e9 60 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022c0 <XSync@plt>:
  4022c0:	ff 25 9a 3e 01 00    	jmp    *0x13e9a(%rip)        # 416160 <XSync@Base>
  4022c6:	68 29 00 00 00       	push   $0x29
  4022cb:	e9 50 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022d0 <__stack_chk_fail@plt>:
  4022d0:	ff 25 92 3e 01 00    	jmp    *0x13e92(%rip)        # 416168 <__stack_chk_fail@GLIBC_2.4>
  4022d6:	68 2a 00 00 00       	push   $0x2a
  4022db:	e9 40 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022e0 <XWarpPointer@plt>:
  4022e0:	ff 25 8a 3e 01 00    	jmp    *0x13e8a(%rip)        # 416170 <XWarpPointer@Base>
  4022e6:	68 2b 00 00 00       	push   $0x2b
  4022eb:	e9 30 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022f0 <XPutImage@plt>:
  4022f0:	ff 25 82 3e 01 00    	jmp    *0x13e82(%rip)        # 416178 <XPutImage@Base>
  4022f6:	68 2c 00 00 00       	push   $0x2c
  4022fb:	e9 20 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402300 <XShmAttach@plt>:
  402300:	ff 25 7a 3e 01 00    	jmp    *0x13e7a(%rip)        # 416180 <XShmAttach@Base>
  402306:	68 2d 00 00 00       	push   $0x2d
  40230b:	e9 10 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402310 <XDefineCursor@plt>:
  402310:	ff 25 72 3e 01 00    	jmp    *0x13e72(%rip)        # 416188 <XDefineCursor@Base>
  402316:	68 2e 00 00 00       	push   $0x2e
  40231b:	e9 00 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402320 <calloc@plt>:
  402320:	ff 25 6a 3e 01 00    	jmp    *0x13e6a(%rip)        # 416190 <calloc@GLIBC_2.2.5>
  402326:	68 2f 00 00 00       	push   $0x2f
  40232b:	e9 f0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402330 <munmap@plt>:
  402330:	ff 25 62 3e 01 00    	jmp    *0x13e62(%rip)        # 416198 <munmap@GLIBC_2.2.5>
  402336:	68 30 00 00 00       	push   $0x30
  40233b:	e9 e0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402340 <shmget@plt>:
  402340:	ff 25 5a 3e 01 00    	jmp    *0x13e5a(%rip)        # 4161a0 <shmget@GLIBC_2.2.5>
  402346:	68 31 00 00 00       	push   $0x31
  40234b:	e9 d0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402350 <XInternAtom@plt>:
  402350:	ff 25 52 3e 01 00    	jmp    *0x13e52(%rip)        # 4161a8 <XInternAtom@Base>
  402356:	68 32 00 00 00       	push   $0x32
  40235b:	e9 c0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402360 <XQueryPointer@plt>:
  402360:	ff 25 4a 3e 01 00    	jmp    *0x13e4a(%rip)        # 4161b0 <XQueryPointer@Base>
  402366:	68 33 00 00 00       	push   $0x33
  40236b:	e9 b0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402370 <XUndefineCursor@plt>:
  402370:	ff 25 42 3e 01 00    	jmp    *0x13e42(%rip)        # 4161b8 <XUndefineCursor@Base>
  402376:	68 34 00 00 00       	push   $0x34
  40237b:	e9 a0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402380 <XGetVisualInfo@plt>:
  402380:	ff 25 3a 3e 01 00    	jmp    *0x13e3a(%rip)        # 4161c0 <XGetVisualInfo@Base>
  402386:	68 35 00 00 00       	push   $0x35
  40238b:	e9 90 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402390 <XShmPutImage@plt>:
  402390:	ff 25 32 3e 01 00    	jmp    *0x13e32(%rip)        # 4161c8 <XShmPutImage@Base>
  402396:	68 36 00 00 00       	push   $0x36
  40239b:	e9 80 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023a0 <XSetErrorHandler@plt>:
  4023a0:	ff 25 2a 3e 01 00    	jmp    *0x13e2a(%rip)        # 4161d0 <XSetErrorHandler@Base>
  4023a6:	68 37 00 00 00       	push   $0x37
  4023ab:	e9 70 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023b0 <XFreePixmap@plt>:
  4023b0:	ff 25 22 3e 01 00    	jmp    *0x13e22(%rip)        # 4161d8 <XFreePixmap@Base>
  4023b6:	68 38 00 00 00       	push   $0x38
  4023bb:	e9 60 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023c0 <__snprintf_chk@plt>:
  4023c0:	ff 25 1a 3e 01 00    	jmp    *0x13e1a(%rip)        # 4161e0 <__snprintf_chk@GLIBC_2.3.4>
  4023c6:	68 39 00 00 00       	push   $0x39
  4023cb:	e9 50 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023d0 <rand@plt>:
  4023d0:	ff 25 12 3e 01 00    	jmp    *0x13e12(%rip)        # 4161e8 <rand@GLIBC_2.2.5>
  4023d6:	68 3a 00 00 00       	push   $0x3a
  4023db:	e9 40 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023e0 <shmctl@plt>:
  4023e0:	ff 25 0a 3e 01 00    	jmp    *0x13e0a(%rip)        # 4161f0 <shmctl@GLIBC_2.2.5>
  4023e6:	68 3b 00 00 00       	push   $0x3b
  4023eb:	e9 30 fc ff ff       	jmp    402020 <_init+0x20>

00000000004023f0 <XCreatePixmap@plt>:
  4023f0:	ff 25 02 3e 01 00    	jmp    *0x13e02(%rip)        # 4161f8 <XCreatePixmap@Base>
  4023f6:	68 3c 00 00 00       	push   $0x3c
  4023fb:	e9 20 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402400 <XMapRaised@plt>:
  402400:	ff 25 fa 3d 01 00    	jmp    *0x13dfa(%rip)        # 416200 <XMapRaised@Base>
  402406:	68 3d 00 00 00       	push   $0x3d
  40240b:	e9 10 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402410 <XShmPixmapFormat@plt>:
  402410:	ff 25 f2 3d 01 00    	jmp    *0x13df2(%rip)        # 416208 <XShmPixmapFormat@Base>
  402416:	68 3e 00 00 00       	push   $0x3e
  40241b:	e9 00 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402420 <write@plt>:
  402420:	ff 25 ea 3d 01 00    	jmp    *0x13dea(%rip)        # 416210 <write@GLIBC_2.2.5>
  402426:	68 3f 00 00 00       	push   $0x3f
  40242b:	e9 f0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402430 <XSetClipOrigin@plt>:
  402430:	ff 25 e2 3d 01 00    	jmp    *0x13de2(%rip)        # 416218 <XSetClipOrigin@Base>
  402436:	68 40 00 00 00       	push   $0x40
  40243b:	e9 e0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402440 <XShmDetach@plt>:
  402440:	ff 25 da 3d 01 00    	jmp    *0x13dda(%rip)        # 416220 <XShmDetach@Base>
  402446:	68 41 00 00 00       	push   $0x41
  40244b:	e9 d0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402450 <open@plt>:
  402450:	ff 25 d2 3d 01 00    	jmp    *0x13dd2(%rip)        # 416228 <open@GLIBC_2.2.5>
  402456:	68 42 00 00 00       	push   $0x42
  40245b:	e9 c0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402460 <mmap@plt>:
  402460:	ff 25 ca 3d 01 00    	jmp    *0x13dca(%rip)        # 416230 <mmap@GLIBC_2.2.5>
  402466:	68 43 00 00 00       	push   $0x43
  40246b:	e9 b0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402470 <XPending@plt>:
  402470:	ff 25 c2 3d 01 00    	jmp    *0x13dc2(%rip)        # 416238 <XPending@Base>
  402476:	68 44 00 00 00       	push   $0x44
  40247b:	e9 a0 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402480 <shmat@plt>:
  402480:	ff 25 ba 3d 01 00    	jmp    *0x13dba(%rip)        # 416240 <shmat@GLIBC_2.2.5>
  402486:	68 45 00 00 00       	push   $0x45
  40248b:	e9 90 fb ff ff       	jmp    402020 <_init+0x20>

0000000000402490 <XChangeWindowAttributes@plt>:
  402490:	ff 25 b2 3d 01 00    	jmp    *0x13db2(%rip)        # 416248 <XChangeWindowAttributes@Base>
  402496:	68 46 00 00 00       	push   $0x46
  40249b:	e9 80 fb ff ff       	jmp    402020 <_init+0x20>

00000000004024a0 <sqrtf@plt>:
  4024a0:	ff 25 aa 3d 01 00    	jmp    *0x13daa(%rip)        # 416250 <sqrtf@GLIBC_2.2.5>
  4024a6:	68 47 00 00 00       	push   $0x47
  4024ab:	e9 70 fb ff ff       	jmp    402020 <_init+0x20>

Disassembly of section .text:

00000000004024b0 <_start>:
  4024b0:	f3 0f 1e fa          	endbr64 
  4024b4:	31 ed                	xor    %ebp,%ebp
  4024b6:	49 89 d1             	mov    %rdx,%r9
  4024b9:	5e                   	pop    %rsi
  4024ba:	48 89 e2             	mov    %rsp,%rdx
  4024bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4024c1:	50                   	push   %rax
  4024c2:	54                   	push   %rsp
  4024c3:	45 31 c0             	xor    %r8d,%r8d
  4024c6:	31 c9                	xor    %ecx,%ecx
  4024c8:	48 c7 c7 a0 25 40 00 	mov    $0x4025a0,%rdi
  4024cf:	ff 15 23 3b 01 00    	call   *0x13b23(%rip)        # 415ff8 <__libc_start_main@GLIBC_2.34>
  4024d5:	f4                   	hlt    
  4024d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4024dd:	00 00 00 

00000000004024e0 <_dl_relocate_static_pie>:
  4024e0:	f3 0f 1e fa          	endbr64 
  4024e4:	c3                   	ret    
  4024e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4024ec:	00 00 00 
  4024ef:	90                   	nop

00000000004024f0 <deregister_tm_clones>:
  4024f0:	b8 c0 92 41 00       	mov    $0x4192c0,%eax
  4024f5:	48 3d c0 92 41 00    	cmp    $0x4192c0,%rax
  4024fb:	74 13                	je     402510 <deregister_tm_clones+0x20>
  4024fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402502:	48 85 c0             	test   %rax,%rax
  402505:	74 09                	je     402510 <deregister_tm_clones+0x20>
  402507:	bf c0 92 41 00       	mov    $0x4192c0,%edi
  40250c:	ff e0                	jmp    *%rax
  40250e:	66 90                	xchg   %ax,%ax
  402510:	c3                   	ret    
  402511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402518:	00 00 00 00 
  40251c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402520 <register_tm_clones>:
  402520:	be c0 92 41 00       	mov    $0x4192c0,%esi
  402525:	48 81 ee c0 92 41 00 	sub    $0x4192c0,%rsi
  40252c:	48 89 f0             	mov    %rsi,%rax
  40252f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  402533:	48 c1 f8 03          	sar    $0x3,%rax
  402537:	48 01 c6             	add    %rax,%rsi
  40253a:	48 d1 fe             	sar    %rsi
  40253d:	74 11                	je     402550 <register_tm_clones+0x30>
  40253f:	b8 00 00 00 00       	mov    $0x0,%eax
  402544:	48 85 c0             	test   %rax,%rax
  402547:	74 07                	je     402550 <register_tm_clones+0x30>
  402549:	bf c0 92 41 00       	mov    $0x4192c0,%edi
  40254e:	ff e0                	jmp    *%rax
  402550:	c3                   	ret    
  402551:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402558:	00 00 00 00 
  40255c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402560 <__do_global_dtors_aux>:
  402560:	f3 0f 1e fa          	endbr64 
  402564:	80 3d 55 6d 01 00 00 	cmpb   $0x0,0x16d55(%rip)        # 4192c0 <__TMC_END__>
  40256b:	75 13                	jne    402580 <__do_global_dtors_aux+0x20>
  40256d:	55                   	push   %rbp
  40256e:	48 89 e5             	mov    %rsp,%rbp
  402571:	e8 7a ff ff ff       	call   4024f0 <deregister_tm_clones>
  402576:	c6 05 43 6d 01 00 01 	movb   $0x1,0x16d43(%rip)        # 4192c0 <__TMC_END__>
  40257d:	5d                   	pop    %rbp
  40257e:	c3                   	ret    
  40257f:	90                   	nop
  402580:	c3                   	ret    
  402581:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402588:	00 00 00 00 
  40258c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402590 <frame_dummy>:
  402590:	f3 0f 1e fa          	endbr64 
  402594:	eb 8a                	jmp    402520 <register_tm_clones>
  402596:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40259d:	00 00 00 

00000000004025a0 <main>:
	mlx_destroy_display(game->mlx);
	free(game->mlx);
}

int	main(int argc, char *argv[])
{
  4025a0:	55                   	push   %rbp
  4025a1:	41 57                	push   %r15
  4025a3:	41 56                	push   %r14
  4025a5:	41 55                	push   %r13
  4025a7:	41 54                	push   %r12
  4025a9:	53                   	push   %rbx
  4025aa:	48 81 ec e8 07 00 00 	sub    $0x7e8,%rsp
  4025b1:	49 89 f6             	mov    %rsi,%r14
  4025b4:	41 89 ff             	mov    %edi,%r15d
	t_game	game;

	if (argc > 1 && argc <= 4 && !_setup_game(&game))
  4025b7:	41 8d 47 fe          	lea    -0x2(%r15),%eax
  4025bb:	83 f8 02             	cmp    $0x2,%eax
  4025be:	0f 87 4e 0c 00 00    	ja     403212 <main+0xc72>
  4025c4:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
	ft_bzero(g, sizeof(t_game));
  4025c9:	be 58 07 00 00       	mov    $0x758,%esi
  4025ce:	e8 0d ac 00 00       	call   40d1e0 <ft_bzero>
  4025d3:	31 db                	xor    %ebx,%ebx
	g->mlx = mlx_init();
  4025d5:	31 c0                	xor    %eax,%eax
  4025d7:	e8 b4 8c 00 00       	call   40b290 <mlx_init>
  4025dc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
	if (!g->mlx)
  4025e1:	48 85 c0             	test   %rax,%rax
  4025e4:	0f 84 8c 0d 00 00    	je     403376 <main+0xdd6>
	g->win = mlx_new_window(g->mlx, WIN_WIDTH, WIN_HEIGHT, "so_long");
  4025ea:	48 8d 0d 26 ca 00 00 	lea    0xca26(%rip),%rcx        # 40f017 <_IO_stdin_used+0x17>
  4025f1:	48 89 c7             	mov    %rax,%rdi
  4025f4:	be a0 05 00 00       	mov    $0x5a0,%esi
  4025f9:	ba c0 03 00 00       	mov    $0x3c0,%edx
  4025fe:	e8 ed 8d 00 00       	call   40b3f0 <mlx_new_window>
  402603:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
	if (!g->win)
  402608:	48 85 c0             	test   %rax,%rax
  40260b:	0f 84 59 0d 00 00    	je     40336a <main+0xdca>
	g->keys = ft_calloc(0xFFFF, sizeof(bool));
  402611:	bf ff ff 00 00       	mov    $0xffff,%edi
  402616:	be 01 00 00 00       	mov    $0x1,%esi
  40261b:	e8 80 ae 00 00       	call   40d4a0 <ft_calloc>
  402620:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
	g->canvas = mlx_new_image(g->mlx, WIN_WIDTH, WIN_HEIGHT);
  402625:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40262a:	be a0 05 00 00       	mov    $0x5a0,%esi
  40262f:	ba c0 03 00 00       	mov    $0x3c0,%edx
  402634:	e8 47 96 00 00       	call   40bc80 <mlx_new_image>
  402639:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
	g->entities = vector_new(sizeof(t_entity *), 0);
  40263e:	bf 08 00 00 00       	mov    $0x8,%edi
  402643:	31 f6                	xor    %esi,%esi
  402645:	e8 06 7d 00 00       	call   40a350 <vector_new>
  40264a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
	g->rdr = rdr_new();
  40264f:	e8 8c 7e 00 00       	call   40a4e0 <rdr_new>
  402654:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
	g->buffer = ft_calloc(128, 1);
  402659:	bf 80 00 00 00       	mov    $0x80,%edi
  40265e:	be 01 00 00 00       	mov    $0x1,%esi
  402663:	e8 38 ae 00 00       	call   40d4a0 <ft_calloc>
  402668:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  40266d:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
	load_sprites(g);
  402672:	4c 89 e7             	mov    %r12,%rdi
  402675:	e8 06 14 00 00       	call   403a80 <load_sprites>
	edit_init(&g->editor, g);
  40267a:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
  40267f:	4c 89 e6             	mov    %r12,%rsi
  402682:	e8 f9 40 00 00       	call   406780 <edit_init>
	g->font = font_load(g, "textures/gen/regular");
  402687:	48 8d 35 91 c9 00 00 	lea    0xc991(%rip),%rsi        # 40f01f <_IO_stdin_used+0x1f>
  40268e:	4c 89 e7             	mov    %r12,%rdi
  402691:	e8 5a 89 00 00       	call   40aff0 <font_load>
  402696:	48 89 84 24 30 03 00 	mov    %rax,0x330(%rsp)
  40269d:	00 
	g->small_font = font_load(g, "textures/gen/small");
  40269e:	48 8d 35 8f c9 00 00 	lea    0xc98f(%rip),%rsi        # 40f034 <_IO_stdin_used+0x34>
  4026a5:	4c 89 e7             	mov    %r12,%rdi
  4026a8:	e8 43 89 00 00       	call   40aff0 <font_load>
  4026ad:	48 89 84 24 38 03 00 	mov    %rax,0x338(%rsp)
  4026b4:	00 
	sprites = malloc(sizeof(t_img) * size);
  4026b5:	bf 10 02 00 00       	mov    $0x210,%edi
  4026ba:	e8 51 fa ff ff       	call   402110 <malloc@plt>
  4026bf:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  4026c2:	48 8d 2d 7e c9 00 00 	lea    0xc97e(%rip),%rbp        # 40f047 <_IO_stdin_used+0x47>
  4026c9:	4c 8d ac 24 60 07 00 	lea    0x760(%rsp),%r13
  4026d0:	00 
  4026d1:	4c 89 ef             	mov    %r13,%rdi
  4026d4:	48 89 ee             	mov    %rbp,%rsi
  4026d7:	31 d2                	xor    %edx,%edx
  4026d9:	31 c0                	xor    %eax,%eax
  4026db:	e8 30 b1 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4026e0:	4c 89 e7             	mov    %r12,%rdi
  4026e3:	4c 89 ee             	mov    %r13,%rsi
  4026e6:	e8 d5 1e 00 00       	call   4045c0 <sprite>
  4026eb:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  4026ee:	4c 89 ef             	mov    %r13,%rdi
  4026f1:	48 89 ee             	mov    %rbp,%rsi
  4026f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4026f9:	31 c0                	xor    %eax,%eax
  4026fb:	e8 10 b1 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402700:	4c 89 e7             	mov    %r12,%rdi
  402703:	4c 89 ee             	mov    %r13,%rsi
  402706:	e8 b5 1e 00 00       	call   4045c0 <sprite>
  40270b:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  40270f:	4c 89 ef             	mov    %r13,%rdi
  402712:	48 89 ee             	mov    %rbp,%rsi
  402715:	ba 02 00 00 00       	mov    $0x2,%edx
  40271a:	31 c0                	xor    %eax,%eax
  40271c:	e8 ef b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402721:	4c 89 e7             	mov    %r12,%rdi
  402724:	4c 89 ee             	mov    %r13,%rsi
  402727:	e8 94 1e 00 00       	call   4045c0 <sprite>
  40272c:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402730:	4c 89 ef             	mov    %r13,%rdi
  402733:	48 89 ee             	mov    %rbp,%rsi
  402736:	ba 03 00 00 00       	mov    $0x3,%edx
  40273b:	31 c0                	xor    %eax,%eax
  40273d:	e8 ce b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402742:	4c 89 e7             	mov    %r12,%rdi
  402745:	4c 89 ee             	mov    %r13,%rsi
  402748:	e8 73 1e 00 00       	call   4045c0 <sprite>
  40274d:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402751:	4c 89 ef             	mov    %r13,%rdi
  402754:	48 89 ee             	mov    %rbp,%rsi
  402757:	ba 04 00 00 00       	mov    $0x4,%edx
  40275c:	31 c0                	xor    %eax,%eax
  40275e:	e8 ad b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402763:	4c 89 e7             	mov    %r12,%rdi
  402766:	4c 89 ee             	mov    %r13,%rsi
  402769:	e8 52 1e 00 00       	call   4045c0 <sprite>
  40276e:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402772:	4c 89 ef             	mov    %r13,%rdi
  402775:	48 89 ee             	mov    %rbp,%rsi
  402778:	ba 05 00 00 00       	mov    $0x5,%edx
  40277d:	31 c0                	xor    %eax,%eax
  40277f:	e8 8c b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402784:	4c 89 e7             	mov    %r12,%rdi
  402787:	4c 89 ee             	mov    %r13,%rsi
  40278a:	e8 31 1e 00 00       	call   4045c0 <sprite>
  40278f:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin_idle = _load_frames(g, "textures/gen/Goblin_Idle/%d.xpm", 6);
  402793:	48 89 9c 24 60 03 00 	mov    %rbx,0x360(%rsp)
  40279a:	00 
	sprites = malloc(sizeof(t_img) * size);
  40279b:	bf 10 02 00 00       	mov    $0x210,%edi
  4027a0:	e8 6b f9 ff ff       	call   402110 <malloc@plt>
  4027a5:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  4027a8:	48 8d 2d b8 c8 00 00 	lea    0xc8b8(%rip),%rbp        # 40f067 <_IO_stdin_used+0x67>
  4027af:	4c 89 ef             	mov    %r13,%rdi
  4027b2:	48 89 ee             	mov    %rbp,%rsi
  4027b5:	31 d2                	xor    %edx,%edx
  4027b7:	31 c0                	xor    %eax,%eax
  4027b9:	e8 52 b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4027be:	4c 89 e7             	mov    %r12,%rdi
  4027c1:	4c 89 ee             	mov    %r13,%rsi
  4027c4:	e8 f7 1d 00 00       	call   4045c0 <sprite>
  4027c9:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  4027cc:	4c 89 ef             	mov    %r13,%rdi
  4027cf:	48 89 ee             	mov    %rbp,%rsi
  4027d2:	ba 01 00 00 00       	mov    $0x1,%edx
  4027d7:	31 c0                	xor    %eax,%eax
  4027d9:	e8 32 b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4027de:	4c 89 e7             	mov    %r12,%rdi
  4027e1:	4c 89 ee             	mov    %r13,%rsi
  4027e4:	e8 d7 1d 00 00       	call   4045c0 <sprite>
  4027e9:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  4027ed:	4c 89 ef             	mov    %r13,%rdi
  4027f0:	48 89 ee             	mov    %rbp,%rsi
  4027f3:	ba 02 00 00 00       	mov    $0x2,%edx
  4027f8:	31 c0                	xor    %eax,%eax
  4027fa:	e8 11 b0 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4027ff:	4c 89 e7             	mov    %r12,%rdi
  402802:	4c 89 ee             	mov    %r13,%rsi
  402805:	e8 b6 1d 00 00       	call   4045c0 <sprite>
  40280a:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  40280e:	4c 89 ef             	mov    %r13,%rdi
  402811:	48 89 ee             	mov    %rbp,%rsi
  402814:	ba 03 00 00 00       	mov    $0x3,%edx
  402819:	31 c0                	xor    %eax,%eax
  40281b:	e8 f0 af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402820:	4c 89 e7             	mov    %r12,%rdi
  402823:	4c 89 ee             	mov    %r13,%rsi
  402826:	e8 95 1d 00 00       	call   4045c0 <sprite>
  40282b:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  40282f:	4c 89 ef             	mov    %r13,%rdi
  402832:	48 89 ee             	mov    %rbp,%rsi
  402835:	ba 04 00 00 00       	mov    $0x4,%edx
  40283a:	31 c0                	xor    %eax,%eax
  40283c:	e8 cf af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402841:	4c 89 e7             	mov    %r12,%rdi
  402844:	4c 89 ee             	mov    %r13,%rsi
  402847:	e8 74 1d 00 00       	call   4045c0 <sprite>
  40284c:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402850:	4c 89 ef             	mov    %r13,%rdi
  402853:	48 89 ee             	mov    %rbp,%rsi
  402856:	ba 05 00 00 00       	mov    $0x5,%edx
  40285b:	31 c0                	xor    %eax,%eax
  40285d:	e8 ae af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402862:	4c 89 e7             	mov    %r12,%rdi
  402865:	4c 89 ee             	mov    %r13,%rsi
  402868:	e8 53 1d 00 00       	call   4045c0 <sprite>
  40286d:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin_walk = _load_frames(g, "textures/gen/Goblin_Walk/%d.xpm", 6);
  402871:	48 89 9c 24 58 03 00 	mov    %rbx,0x358(%rsp)
  402878:	00 
	sprites = malloc(sizeof(t_img) * size);
  402879:	bf 10 02 00 00       	mov    $0x210,%edi
  40287e:	e8 8d f8 ff ff       	call   402110 <malloc@plt>
  402883:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402886:	48 8d 2d fa c7 00 00 	lea    0xc7fa(%rip),%rbp        # 40f087 <_IO_stdin_used+0x87>
  40288d:	4c 89 ef             	mov    %r13,%rdi
  402890:	48 89 ee             	mov    %rbp,%rsi
  402893:	31 d2                	xor    %edx,%edx
  402895:	31 c0                	xor    %eax,%eax
  402897:	e8 74 af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40289c:	4c 89 e7             	mov    %r12,%rdi
  40289f:	4c 89 ee             	mov    %r13,%rsi
  4028a2:	e8 19 1d 00 00       	call   4045c0 <sprite>
  4028a7:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  4028aa:	4c 89 ef             	mov    %r13,%rdi
  4028ad:	48 89 ee             	mov    %rbp,%rsi
  4028b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4028b5:	31 c0                	xor    %eax,%eax
  4028b7:	e8 54 af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4028bc:	4c 89 e7             	mov    %r12,%rdi
  4028bf:	4c 89 ee             	mov    %r13,%rsi
  4028c2:	e8 f9 1c 00 00       	call   4045c0 <sprite>
  4028c7:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  4028cb:	4c 89 ef             	mov    %r13,%rdi
  4028ce:	48 89 ee             	mov    %rbp,%rsi
  4028d1:	ba 02 00 00 00       	mov    $0x2,%edx
  4028d6:	31 c0                	xor    %eax,%eax
  4028d8:	e8 33 af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4028dd:	4c 89 e7             	mov    %r12,%rdi
  4028e0:	4c 89 ee             	mov    %r13,%rsi
  4028e3:	e8 d8 1c 00 00       	call   4045c0 <sprite>
  4028e8:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  4028ec:	4c 89 ef             	mov    %r13,%rdi
  4028ef:	48 89 ee             	mov    %rbp,%rsi
  4028f2:	ba 03 00 00 00       	mov    $0x3,%edx
  4028f7:	31 c0                	xor    %eax,%eax
  4028f9:	e8 12 af 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4028fe:	4c 89 e7             	mov    %r12,%rdi
  402901:	4c 89 ee             	mov    %r13,%rsi
  402904:	e8 b7 1c 00 00       	call   4045c0 <sprite>
  402909:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  40290d:	4c 89 ef             	mov    %r13,%rdi
  402910:	48 89 ee             	mov    %rbp,%rsi
  402913:	ba 04 00 00 00       	mov    $0x4,%edx
  402918:	31 c0                	xor    %eax,%eax
  40291a:	e8 f1 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40291f:	4c 89 e7             	mov    %r12,%rdi
  402922:	4c 89 ee             	mov    %r13,%rsi
  402925:	e8 96 1c 00 00       	call   4045c0 <sprite>
  40292a:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  40292e:	4c 89 ef             	mov    %r13,%rdi
  402931:	48 89 ee             	mov    %rbp,%rsi
  402934:	ba 05 00 00 00       	mov    $0x5,%edx
  402939:	31 c0                	xor    %eax,%eax
  40293b:	e8 d0 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402940:	4c 89 e7             	mov    %r12,%rdi
  402943:	4c 89 ee             	mov    %r13,%rsi
  402946:	e8 75 1c 00 00       	call   4045c0 <sprite>
  40294b:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin_atk_side = _load_frames(g,
  40294f:	48 89 9c 24 68 03 00 	mov    %rbx,0x368(%rsp)
  402956:	00 
	sprites = malloc(sizeof(t_img) * size);
  402957:	bf 10 02 00 00       	mov    $0x210,%edi
  40295c:	e8 af f7 ff ff       	call   402110 <malloc@plt>
  402961:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402964:	48 8d 2d 40 c7 00 00 	lea    0xc740(%rip),%rbp        # 40f0ab <_IO_stdin_used+0xab>
  40296b:	4c 89 ef             	mov    %r13,%rdi
  40296e:	48 89 ee             	mov    %rbp,%rsi
  402971:	31 d2                	xor    %edx,%edx
  402973:	31 c0                	xor    %eax,%eax
  402975:	e8 96 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40297a:	4c 89 e7             	mov    %r12,%rdi
  40297d:	4c 89 ee             	mov    %r13,%rsi
  402980:	e8 3b 1c 00 00       	call   4045c0 <sprite>
  402985:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402988:	4c 89 ef             	mov    %r13,%rdi
  40298b:	48 89 ee             	mov    %rbp,%rsi
  40298e:	ba 01 00 00 00       	mov    $0x1,%edx
  402993:	31 c0                	xor    %eax,%eax
  402995:	e8 76 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40299a:	4c 89 e7             	mov    %r12,%rdi
  40299d:	4c 89 ee             	mov    %r13,%rsi
  4029a0:	e8 1b 1c 00 00       	call   4045c0 <sprite>
  4029a5:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  4029a9:	4c 89 ef             	mov    %r13,%rdi
  4029ac:	48 89 ee             	mov    %rbp,%rsi
  4029af:	ba 02 00 00 00       	mov    $0x2,%edx
  4029b4:	31 c0                	xor    %eax,%eax
  4029b6:	e8 55 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4029bb:	4c 89 e7             	mov    %r12,%rdi
  4029be:	4c 89 ee             	mov    %r13,%rsi
  4029c1:	e8 fa 1b 00 00       	call   4045c0 <sprite>
  4029c6:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  4029ca:	4c 89 ef             	mov    %r13,%rdi
  4029cd:	48 89 ee             	mov    %rbp,%rsi
  4029d0:	ba 03 00 00 00       	mov    $0x3,%edx
  4029d5:	31 c0                	xor    %eax,%eax
  4029d7:	e8 34 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4029dc:	4c 89 e7             	mov    %r12,%rdi
  4029df:	4c 89 ee             	mov    %r13,%rsi
  4029e2:	e8 d9 1b 00 00       	call   4045c0 <sprite>
  4029e7:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  4029eb:	4c 89 ef             	mov    %r13,%rdi
  4029ee:	48 89 ee             	mov    %rbp,%rsi
  4029f1:	ba 04 00 00 00       	mov    $0x4,%edx
  4029f6:	31 c0                	xor    %eax,%eax
  4029f8:	e8 13 ae 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4029fd:	4c 89 e7             	mov    %r12,%rdi
  402a00:	4c 89 ee             	mov    %r13,%rsi
  402a03:	e8 b8 1b 00 00       	call   4045c0 <sprite>
  402a08:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402a0c:	4c 89 ef             	mov    %r13,%rdi
  402a0f:	48 89 ee             	mov    %rbp,%rsi
  402a12:	ba 05 00 00 00       	mov    $0x5,%edx
  402a17:	31 c0                	xor    %eax,%eax
  402a19:	e8 f2 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402a1e:	4c 89 e7             	mov    %r12,%rdi
  402a21:	4c 89 ee             	mov    %r13,%rsi
  402a24:	e8 97 1b 00 00       	call   4045c0 <sprite>
  402a29:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin2_idle = _load_frames(g, "textures/gen/Goblin2_Idle/%d.xpm", 6);
  402a2d:	48 89 9c 24 78 03 00 	mov    %rbx,0x378(%rsp)
  402a34:	00 
	sprites = malloc(sizeof(t_img) * size);
  402a35:	bf 10 02 00 00       	mov    $0x210,%edi
  402a3a:	e8 d1 f6 ff ff       	call   402110 <malloc@plt>
  402a3f:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402a42:	48 8d 2d 83 c6 00 00 	lea    0xc683(%rip),%rbp        # 40f0cc <_IO_stdin_used+0xcc>
  402a49:	4c 89 ef             	mov    %r13,%rdi
  402a4c:	48 89 ee             	mov    %rbp,%rsi
  402a4f:	31 d2                	xor    %edx,%edx
  402a51:	31 c0                	xor    %eax,%eax
  402a53:	e8 b8 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402a58:	4c 89 e7             	mov    %r12,%rdi
  402a5b:	4c 89 ee             	mov    %r13,%rsi
  402a5e:	e8 5d 1b 00 00       	call   4045c0 <sprite>
  402a63:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402a66:	4c 89 ef             	mov    %r13,%rdi
  402a69:	48 89 ee             	mov    %rbp,%rsi
  402a6c:	ba 01 00 00 00       	mov    $0x1,%edx
  402a71:	31 c0                	xor    %eax,%eax
  402a73:	e8 98 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402a78:	4c 89 e7             	mov    %r12,%rdi
  402a7b:	4c 89 ee             	mov    %r13,%rsi
  402a7e:	e8 3d 1b 00 00       	call   4045c0 <sprite>
  402a83:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402a87:	4c 89 ef             	mov    %r13,%rdi
  402a8a:	48 89 ee             	mov    %rbp,%rsi
  402a8d:	ba 02 00 00 00       	mov    $0x2,%edx
  402a92:	31 c0                	xor    %eax,%eax
  402a94:	e8 77 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402a99:	4c 89 e7             	mov    %r12,%rdi
  402a9c:	4c 89 ee             	mov    %r13,%rsi
  402a9f:	e8 1c 1b 00 00       	call   4045c0 <sprite>
  402aa4:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402aa8:	4c 89 ef             	mov    %r13,%rdi
  402aab:	48 89 ee             	mov    %rbp,%rsi
  402aae:	ba 03 00 00 00       	mov    $0x3,%edx
  402ab3:	31 c0                	xor    %eax,%eax
  402ab5:	e8 56 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402aba:	4c 89 e7             	mov    %r12,%rdi
  402abd:	4c 89 ee             	mov    %r13,%rsi
  402ac0:	e8 fb 1a 00 00       	call   4045c0 <sprite>
  402ac5:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402ac9:	4c 89 ef             	mov    %r13,%rdi
  402acc:	48 89 ee             	mov    %rbp,%rsi
  402acf:	ba 04 00 00 00       	mov    $0x4,%edx
  402ad4:	31 c0                	xor    %eax,%eax
  402ad6:	e8 35 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402adb:	4c 89 e7             	mov    %r12,%rdi
  402ade:	4c 89 ee             	mov    %r13,%rsi
  402ae1:	e8 da 1a 00 00       	call   4045c0 <sprite>
  402ae6:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402aea:	4c 89 ef             	mov    %r13,%rdi
  402aed:	48 89 ee             	mov    %rbp,%rsi
  402af0:	ba 05 00 00 00       	mov    $0x5,%edx
  402af5:	31 c0                	xor    %eax,%eax
  402af7:	e8 14 ad 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402afc:	4c 89 e7             	mov    %r12,%rdi
  402aff:	4c 89 ee             	mov    %r13,%rsi
  402b02:	e8 b9 1a 00 00       	call   4045c0 <sprite>
  402b07:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin2_walk = _load_frames(g, "textures/gen/Goblin2_Walk/%d.xpm", 6);
  402b0b:	48 89 9c 24 70 03 00 	mov    %rbx,0x370(%rsp)
  402b12:	00 
	sprites = malloc(sizeof(t_img) * size);
  402b13:	bf 10 02 00 00       	mov    $0x210,%edi
  402b18:	e8 f3 f5 ff ff       	call   402110 <malloc@plt>
  402b1d:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402b20:	48 8d 2d c6 c5 00 00 	lea    0xc5c6(%rip),%rbp        # 40f0ed <_IO_stdin_used+0xed>
  402b27:	4c 89 ef             	mov    %r13,%rdi
  402b2a:	48 89 ee             	mov    %rbp,%rsi
  402b2d:	31 d2                	xor    %edx,%edx
  402b2f:	31 c0                	xor    %eax,%eax
  402b31:	e8 da ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402b36:	4c 89 e7             	mov    %r12,%rdi
  402b39:	4c 89 ee             	mov    %r13,%rsi
  402b3c:	e8 7f 1a 00 00       	call   4045c0 <sprite>
  402b41:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402b44:	4c 89 ef             	mov    %r13,%rdi
  402b47:	48 89 ee             	mov    %rbp,%rsi
  402b4a:	ba 01 00 00 00       	mov    $0x1,%edx
  402b4f:	31 c0                	xor    %eax,%eax
  402b51:	e8 ba ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402b56:	4c 89 e7             	mov    %r12,%rdi
  402b59:	4c 89 ee             	mov    %r13,%rsi
  402b5c:	e8 5f 1a 00 00       	call   4045c0 <sprite>
  402b61:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402b65:	4c 89 ef             	mov    %r13,%rdi
  402b68:	48 89 ee             	mov    %rbp,%rsi
  402b6b:	ba 02 00 00 00       	mov    $0x2,%edx
  402b70:	31 c0                	xor    %eax,%eax
  402b72:	e8 99 ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402b77:	4c 89 e7             	mov    %r12,%rdi
  402b7a:	4c 89 ee             	mov    %r13,%rsi
  402b7d:	e8 3e 1a 00 00       	call   4045c0 <sprite>
  402b82:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402b86:	4c 89 ef             	mov    %r13,%rdi
  402b89:	48 89 ee             	mov    %rbp,%rsi
  402b8c:	ba 03 00 00 00       	mov    $0x3,%edx
  402b91:	31 c0                	xor    %eax,%eax
  402b93:	e8 78 ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402b98:	4c 89 e7             	mov    %r12,%rdi
  402b9b:	4c 89 ee             	mov    %r13,%rsi
  402b9e:	e8 1d 1a 00 00       	call   4045c0 <sprite>
  402ba3:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402ba7:	4c 89 ef             	mov    %r13,%rdi
  402baa:	48 89 ee             	mov    %rbp,%rsi
  402bad:	ba 04 00 00 00       	mov    $0x4,%edx
  402bb2:	31 c0                	xor    %eax,%eax
  402bb4:	e8 57 ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402bb9:	4c 89 e7             	mov    %r12,%rdi
  402bbc:	4c 89 ee             	mov    %r13,%rsi
  402bbf:	e8 fc 19 00 00       	call   4045c0 <sprite>
  402bc4:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402bc8:	4c 89 ef             	mov    %r13,%rdi
  402bcb:	48 89 ee             	mov    %rbp,%rsi
  402bce:	ba 05 00 00 00       	mov    $0x5,%edx
  402bd3:	31 c0                	xor    %eax,%eax
  402bd5:	e8 36 ac 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402bda:	4c 89 e7             	mov    %r12,%rdi
  402bdd:	4c 89 ee             	mov    %r13,%rsi
  402be0:	e8 db 19 00 00       	call   4045c0 <sprite>
  402be5:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->goblin2_atk_side = _load_frames(g,
  402be9:	48 89 9c 24 80 03 00 	mov    %rbx,0x380(%rsp)
  402bf0:	00 
	sprites = malloc(sizeof(t_img) * size);
  402bf1:	bf 10 02 00 00       	mov    $0x210,%edi
  402bf6:	e8 15 f5 ff ff       	call   402110 <malloc@plt>
  402bfb:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402bfe:	48 8d 2d 0d c5 00 00 	lea    0xc50d(%rip),%rbp        # 40f112 <_IO_stdin_used+0x112>
  402c05:	4c 89 ef             	mov    %r13,%rdi
  402c08:	48 89 ee             	mov    %rbp,%rsi
  402c0b:	31 d2                	xor    %edx,%edx
  402c0d:	31 c0                	xor    %eax,%eax
  402c0f:	e8 fc ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402c14:	4c 89 e7             	mov    %r12,%rdi
  402c17:	4c 89 ee             	mov    %r13,%rsi
  402c1a:	e8 a1 19 00 00       	call   4045c0 <sprite>
  402c1f:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402c22:	4c 89 ef             	mov    %r13,%rdi
  402c25:	48 89 ee             	mov    %rbp,%rsi
  402c28:	ba 01 00 00 00       	mov    $0x1,%edx
  402c2d:	31 c0                	xor    %eax,%eax
  402c2f:	e8 dc ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402c34:	4c 89 e7             	mov    %r12,%rdi
  402c37:	4c 89 ee             	mov    %r13,%rsi
  402c3a:	e8 81 19 00 00       	call   4045c0 <sprite>
  402c3f:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402c43:	4c 89 ef             	mov    %r13,%rdi
  402c46:	48 89 ee             	mov    %rbp,%rsi
  402c49:	ba 02 00 00 00       	mov    $0x2,%edx
  402c4e:	31 c0                	xor    %eax,%eax
  402c50:	e8 bb ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402c55:	4c 89 e7             	mov    %r12,%rdi
  402c58:	4c 89 ee             	mov    %r13,%rsi
  402c5b:	e8 60 19 00 00       	call   4045c0 <sprite>
  402c60:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402c64:	4c 89 ef             	mov    %r13,%rdi
  402c67:	48 89 ee             	mov    %rbp,%rsi
  402c6a:	ba 03 00 00 00       	mov    $0x3,%edx
  402c6f:	31 c0                	xor    %eax,%eax
  402c71:	e8 9a ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402c76:	4c 89 e7             	mov    %r12,%rdi
  402c79:	4c 89 ee             	mov    %r13,%rsi
  402c7c:	e8 3f 19 00 00       	call   4045c0 <sprite>
  402c81:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402c85:	4c 89 ef             	mov    %r13,%rdi
  402c88:	48 89 ee             	mov    %rbp,%rsi
  402c8b:	ba 04 00 00 00       	mov    $0x4,%edx
  402c90:	31 c0                	xor    %eax,%eax
  402c92:	e8 79 ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402c97:	4c 89 e7             	mov    %r12,%rdi
  402c9a:	4c 89 ee             	mov    %r13,%rsi
  402c9d:	e8 1e 19 00 00       	call   4045c0 <sprite>
  402ca2:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402ca6:	4c 89 ef             	mov    %r13,%rdi
  402ca9:	48 89 ee             	mov    %rbp,%rsi
  402cac:	ba 05 00 00 00       	mov    $0x5,%edx
  402cb1:	31 c0                	xor    %eax,%eax
  402cb3:	e8 58 ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402cb8:	4c 89 e7             	mov    %r12,%rdi
  402cbb:	4c 89 ee             	mov    %r13,%rsi
  402cbe:	e8 fd 18 00 00       	call   4045c0 <sprite>
  402cc3:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->warrior_idle = _load_frames(g, "textures/gen/Warrior_Idle/%d.xpm", 6);
  402cc7:	48 89 9c 24 90 03 00 	mov    %rbx,0x390(%rsp)
  402cce:	00 
	sprites = malloc(sizeof(t_img) * size);
  402ccf:	bf 10 02 00 00       	mov    $0x210,%edi
  402cd4:	e8 37 f4 ff ff       	call   402110 <malloc@plt>
  402cd9:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402cdc:	48 8d 2d 50 c4 00 00 	lea    0xc450(%rip),%rbp        # 40f133 <_IO_stdin_used+0x133>
  402ce3:	4c 89 ef             	mov    %r13,%rdi
  402ce6:	48 89 ee             	mov    %rbp,%rsi
  402ce9:	31 d2                	xor    %edx,%edx
  402ceb:	31 c0                	xor    %eax,%eax
  402ced:	e8 1e ab 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402cf2:	4c 89 e7             	mov    %r12,%rdi
  402cf5:	4c 89 ee             	mov    %r13,%rsi
  402cf8:	e8 c3 18 00 00       	call   4045c0 <sprite>
  402cfd:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402d00:	4c 89 ef             	mov    %r13,%rdi
  402d03:	48 89 ee             	mov    %rbp,%rsi
  402d06:	ba 01 00 00 00       	mov    $0x1,%edx
  402d0b:	31 c0                	xor    %eax,%eax
  402d0d:	e8 fe aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402d12:	4c 89 e7             	mov    %r12,%rdi
  402d15:	4c 89 ee             	mov    %r13,%rsi
  402d18:	e8 a3 18 00 00       	call   4045c0 <sprite>
  402d1d:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402d21:	4c 89 ef             	mov    %r13,%rdi
  402d24:	48 89 ee             	mov    %rbp,%rsi
  402d27:	ba 02 00 00 00       	mov    $0x2,%edx
  402d2c:	31 c0                	xor    %eax,%eax
  402d2e:	e8 dd aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402d33:	4c 89 e7             	mov    %r12,%rdi
  402d36:	4c 89 ee             	mov    %r13,%rsi
  402d39:	e8 82 18 00 00       	call   4045c0 <sprite>
  402d3e:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402d42:	4c 89 ef             	mov    %r13,%rdi
  402d45:	48 89 ee             	mov    %rbp,%rsi
  402d48:	ba 03 00 00 00       	mov    $0x3,%edx
  402d4d:	31 c0                	xor    %eax,%eax
  402d4f:	e8 bc aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402d54:	4c 89 e7             	mov    %r12,%rdi
  402d57:	4c 89 ee             	mov    %r13,%rsi
  402d5a:	e8 61 18 00 00       	call   4045c0 <sprite>
  402d5f:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402d63:	4c 89 ef             	mov    %r13,%rdi
  402d66:	48 89 ee             	mov    %rbp,%rsi
  402d69:	ba 04 00 00 00       	mov    $0x4,%edx
  402d6e:	31 c0                	xor    %eax,%eax
  402d70:	e8 9b aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402d75:	4c 89 e7             	mov    %r12,%rdi
  402d78:	4c 89 ee             	mov    %r13,%rsi
  402d7b:	e8 40 18 00 00       	call   4045c0 <sprite>
  402d80:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402d84:	4c 89 ef             	mov    %r13,%rdi
  402d87:	48 89 ee             	mov    %rbp,%rsi
  402d8a:	ba 05 00 00 00       	mov    $0x5,%edx
  402d8f:	31 c0                	xor    %eax,%eax
  402d91:	e8 7a aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402d96:	4c 89 e7             	mov    %r12,%rdi
  402d99:	4c 89 ee             	mov    %r13,%rsi
  402d9c:	e8 1f 18 00 00       	call   4045c0 <sprite>
  402da1:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->warrior_walk = _load_frames(g, "textures/gen/Warrior_Walk/%d.xpm", 6);
  402da5:	48 89 9c 24 88 03 00 	mov    %rbx,0x388(%rsp)
  402dac:	00 
	sprites = malloc(sizeof(t_img) * size);
  402dad:	bf 10 02 00 00       	mov    $0x210,%edi
  402db2:	e8 59 f3 ff ff       	call   402110 <malloc@plt>
  402db7:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402dba:	48 8d 2d 93 c3 00 00 	lea    0xc393(%rip),%rbp        # 40f154 <_IO_stdin_used+0x154>
  402dc1:	4c 89 ef             	mov    %r13,%rdi
  402dc4:	48 89 ee             	mov    %rbp,%rsi
  402dc7:	31 d2                	xor    %edx,%edx
  402dc9:	31 c0                	xor    %eax,%eax
  402dcb:	e8 40 aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402dd0:	4c 89 e7             	mov    %r12,%rdi
  402dd3:	4c 89 ee             	mov    %r13,%rsi
  402dd6:	e8 e5 17 00 00       	call   4045c0 <sprite>
  402ddb:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402dde:	4c 89 ef             	mov    %r13,%rdi
  402de1:	48 89 ee             	mov    %rbp,%rsi
  402de4:	ba 01 00 00 00       	mov    $0x1,%edx
  402de9:	31 c0                	xor    %eax,%eax
  402deb:	e8 20 aa 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402df0:	4c 89 e7             	mov    %r12,%rdi
  402df3:	4c 89 ee             	mov    %r13,%rsi
  402df6:	e8 c5 17 00 00       	call   4045c0 <sprite>
  402dfb:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402dff:	4c 89 ef             	mov    %r13,%rdi
  402e02:	48 89 ee             	mov    %rbp,%rsi
  402e05:	ba 02 00 00 00       	mov    $0x2,%edx
  402e0a:	31 c0                	xor    %eax,%eax
  402e0c:	e8 ff a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402e11:	4c 89 e7             	mov    %r12,%rdi
  402e14:	4c 89 ee             	mov    %r13,%rsi
  402e17:	e8 a4 17 00 00       	call   4045c0 <sprite>
  402e1c:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402e20:	4c 89 ef             	mov    %r13,%rdi
  402e23:	48 89 ee             	mov    %rbp,%rsi
  402e26:	ba 03 00 00 00       	mov    $0x3,%edx
  402e2b:	31 c0                	xor    %eax,%eax
  402e2d:	e8 de a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402e32:	4c 89 e7             	mov    %r12,%rdi
  402e35:	4c 89 ee             	mov    %r13,%rsi
  402e38:	e8 83 17 00 00       	call   4045c0 <sprite>
  402e3d:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402e41:	4c 89 ef             	mov    %r13,%rdi
  402e44:	48 89 ee             	mov    %rbp,%rsi
  402e47:	ba 04 00 00 00       	mov    $0x4,%edx
  402e4c:	31 c0                	xor    %eax,%eax
  402e4e:	e8 bd a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402e53:	4c 89 e7             	mov    %r12,%rdi
  402e56:	4c 89 ee             	mov    %r13,%rsi
  402e59:	e8 62 17 00 00       	call   4045c0 <sprite>
  402e5e:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402e62:	4c 89 ef             	mov    %r13,%rdi
  402e65:	48 89 ee             	mov    %rbp,%rsi
  402e68:	ba 05 00 00 00       	mov    $0x5,%edx
  402e6d:	31 c0                	xor    %eax,%eax
  402e6f:	e8 9c a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402e74:	4c 89 e7             	mov    %r12,%rdi
  402e77:	4c 89 ee             	mov    %r13,%rsi
  402e7a:	e8 41 17 00 00       	call   4045c0 <sprite>
  402e7f:	48 89 43 28          	mov    %rax,0x28(%rbx)
	g->warrior_atk_side = _load_frames(g,
  402e83:	48 89 9c 24 98 03 00 	mov    %rbx,0x398(%rsp)
  402e8a:	00 
	sprites = malloc(sizeof(t_img) * size);
  402e8b:	bf 68 02 00 00       	mov    $0x268,%edi
  402e90:	e8 7b f2 ff ff       	call   402110 <malloc@plt>
  402e95:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402e98:	48 8d 2d db c2 00 00 	lea    0xc2db(%rip),%rbp        # 40f17a <_IO_stdin_used+0x17a>
  402e9f:	4c 89 ef             	mov    %r13,%rdi
  402ea2:	48 89 ee             	mov    %rbp,%rsi
  402ea5:	31 d2                	xor    %edx,%edx
  402ea7:	31 c0                	xor    %eax,%eax
  402ea9:	e8 62 a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402eae:	4c 89 e7             	mov    %r12,%rdi
  402eb1:	4c 89 ee             	mov    %r13,%rsi
  402eb4:	e8 07 17 00 00       	call   4045c0 <sprite>
  402eb9:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402ebc:	4c 89 ef             	mov    %r13,%rdi
  402ebf:	48 89 ee             	mov    %rbp,%rsi
  402ec2:	ba 01 00 00 00       	mov    $0x1,%edx
  402ec7:	31 c0                	xor    %eax,%eax
  402ec9:	e8 42 a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402ece:	4c 89 e7             	mov    %r12,%rdi
  402ed1:	4c 89 ee             	mov    %r13,%rsi
  402ed4:	e8 e7 16 00 00       	call   4045c0 <sprite>
  402ed9:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402edd:	4c 89 ef             	mov    %r13,%rdi
  402ee0:	48 89 ee             	mov    %rbp,%rsi
  402ee3:	ba 02 00 00 00       	mov    $0x2,%edx
  402ee8:	31 c0                	xor    %eax,%eax
  402eea:	e8 21 a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402eef:	4c 89 e7             	mov    %r12,%rdi
  402ef2:	4c 89 ee             	mov    %r13,%rsi
  402ef5:	e8 c6 16 00 00       	call   4045c0 <sprite>
  402efa:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402efe:	4c 89 ef             	mov    %r13,%rdi
  402f01:	48 89 ee             	mov    %rbp,%rsi
  402f04:	ba 03 00 00 00       	mov    $0x3,%edx
  402f09:	31 c0                	xor    %eax,%eax
  402f0b:	e8 00 a9 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402f10:	4c 89 e7             	mov    %r12,%rdi
  402f13:	4c 89 ee             	mov    %r13,%rsi
  402f16:	e8 a5 16 00 00       	call   4045c0 <sprite>
  402f1b:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  402f1f:	4c 89 ef             	mov    %r13,%rdi
  402f22:	48 89 ee             	mov    %rbp,%rsi
  402f25:	ba 04 00 00 00       	mov    $0x4,%edx
  402f2a:	31 c0                	xor    %eax,%eax
  402f2c:	e8 df a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402f31:	4c 89 e7             	mov    %r12,%rdi
  402f34:	4c 89 ee             	mov    %r13,%rsi
  402f37:	e8 84 16 00 00       	call   4045c0 <sprite>
  402f3c:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  402f40:	4c 89 ef             	mov    %r13,%rdi
  402f43:	48 89 ee             	mov    %rbp,%rsi
  402f46:	ba 05 00 00 00       	mov    $0x5,%edx
  402f4b:	31 c0                	xor    %eax,%eax
  402f4d:	e8 be a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402f52:	4c 89 e7             	mov    %r12,%rdi
  402f55:	4c 89 ee             	mov    %r13,%rsi
  402f58:	e8 63 16 00 00       	call   4045c0 <sprite>
  402f5d:	48 89 43 28          	mov    %rax,0x28(%rbx)
		ft_sprintf(buf, name, i);
  402f61:	4c 89 ef             	mov    %r13,%rdi
  402f64:	48 89 ee             	mov    %rbp,%rsi
  402f67:	ba 06 00 00 00       	mov    $0x6,%edx
  402f6c:	31 c0                	xor    %eax,%eax
  402f6e:	e8 9d a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402f73:	4c 89 e7             	mov    %r12,%rdi
  402f76:	4c 89 ee             	mov    %r13,%rsi
  402f79:	e8 42 16 00 00       	call   4045c0 <sprite>
  402f7e:	48 89 43 30          	mov    %rax,0x30(%rbx)
	g->money_spawn = _load_frames(g, "textures/gen/Gold_Spawn/%d.xpm", 7);
  402f82:	48 89 9c 24 a0 03 00 	mov    %rbx,0x3a0(%rsp)
  402f89:	00 
	sprites = malloc(sizeof(t_img) * size);
  402f8a:	bf c0 02 00 00       	mov    $0x2c0,%edi
  402f8f:	e8 7c f1 ff ff       	call   402110 <malloc@plt>
  402f94:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  402f97:	48 8d 2d fb c1 00 00 	lea    0xc1fb(%rip),%rbp        # 40f199 <_IO_stdin_used+0x199>
  402f9e:	4c 89 ef             	mov    %r13,%rdi
  402fa1:	48 89 ee             	mov    %rbp,%rsi
  402fa4:	31 d2                	xor    %edx,%edx
  402fa6:	31 c0                	xor    %eax,%eax
  402fa8:	e8 63 a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402fad:	4c 89 e7             	mov    %r12,%rdi
  402fb0:	4c 89 ee             	mov    %r13,%rsi
  402fb3:	e8 08 16 00 00       	call   4045c0 <sprite>
  402fb8:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  402fbb:	4c 89 ef             	mov    %r13,%rdi
  402fbe:	48 89 ee             	mov    %rbp,%rsi
  402fc1:	ba 01 00 00 00       	mov    $0x1,%edx
  402fc6:	31 c0                	xor    %eax,%eax
  402fc8:	e8 43 a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402fcd:	4c 89 e7             	mov    %r12,%rdi
  402fd0:	4c 89 ee             	mov    %r13,%rsi
  402fd3:	e8 e8 15 00 00       	call   4045c0 <sprite>
  402fd8:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  402fdc:	4c 89 ef             	mov    %r13,%rdi
  402fdf:	48 89 ee             	mov    %rbp,%rsi
  402fe2:	ba 02 00 00 00       	mov    $0x2,%edx
  402fe7:	31 c0                	xor    %eax,%eax
  402fe9:	e8 22 a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  402fee:	4c 89 e7             	mov    %r12,%rdi
  402ff1:	4c 89 ee             	mov    %r13,%rsi
  402ff4:	e8 c7 15 00 00       	call   4045c0 <sprite>
  402ff9:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  402ffd:	4c 89 ef             	mov    %r13,%rdi
  403000:	48 89 ee             	mov    %rbp,%rsi
  403003:	ba 03 00 00 00       	mov    $0x3,%edx
  403008:	31 c0                	xor    %eax,%eax
  40300a:	e8 01 a8 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40300f:	4c 89 e7             	mov    %r12,%rdi
  403012:	4c 89 ee             	mov    %r13,%rsi
  403015:	e8 a6 15 00 00       	call   4045c0 <sprite>
  40301a:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  40301e:	4c 89 ef             	mov    %r13,%rdi
  403021:	48 89 ee             	mov    %rbp,%rsi
  403024:	ba 04 00 00 00       	mov    $0x4,%edx
  403029:	31 c0                	xor    %eax,%eax
  40302b:	e8 e0 a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  403030:	4c 89 e7             	mov    %r12,%rdi
  403033:	4c 89 ee             	mov    %r13,%rsi
  403036:	e8 85 15 00 00       	call   4045c0 <sprite>
  40303b:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  40303f:	4c 89 ef             	mov    %r13,%rdi
  403042:	48 89 ee             	mov    %rbp,%rsi
  403045:	ba 05 00 00 00       	mov    $0x5,%edx
  40304a:	31 c0                	xor    %eax,%eax
  40304c:	e8 bf a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  403051:	4c 89 e7             	mov    %r12,%rdi
  403054:	4c 89 ee             	mov    %r13,%rsi
  403057:	e8 64 15 00 00       	call   4045c0 <sprite>
  40305c:	48 89 43 28          	mov    %rax,0x28(%rbx)
		ft_sprintf(buf, name, i);
  403060:	4c 89 ef             	mov    %r13,%rdi
  403063:	48 89 ee             	mov    %rbp,%rsi
  403066:	ba 06 00 00 00       	mov    $0x6,%edx
  40306b:	31 c0                	xor    %eax,%eax
  40306d:	e8 9e a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  403072:	4c 89 e7             	mov    %r12,%rdi
  403075:	4c 89 ee             	mov    %r13,%rsi
  403078:	e8 43 15 00 00       	call   4045c0 <sprite>
  40307d:	48 89 43 30          	mov    %rax,0x30(%rbx)
		ft_sprintf(buf, name, i);
  403081:	4c 89 ef             	mov    %r13,%rdi
  403084:	48 89 ee             	mov    %rbp,%rsi
  403087:	ba 07 00 00 00       	mov    $0x7,%edx
  40308c:	31 c0                	xor    %eax,%eax
  40308e:	e8 7d a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  403093:	4c 89 e7             	mov    %r12,%rdi
  403096:	4c 89 ee             	mov    %r13,%rsi
  403099:	e8 22 15 00 00       	call   4045c0 <sprite>
  40309e:	48 89 43 38          	mov    %rax,0x38(%rbx)
	g->foam = _load_frames(g, "textures/gen/Foam/%d.xpm", 8);
  4030a2:	48 89 9c 24 a8 03 00 	mov    %rbx,0x3a8(%rsp)
  4030a9:	00 
	g->foam_anim = anim_new(g->foam, 8, 100, true);
  4030aa:	be 08 00 00 00       	mov    $0x8,%esi
  4030af:	48 89 df             	mov    %rbx,%rdi
  4030b2:	ba 64 00 00 00       	mov    $0x64,%edx
  4030b7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4030bc:	e8 cf 35 00 00       	call   406690 <anim_new>
  4030c1:	48 89 84 24 48 03 00 	mov    %rax,0x348(%rsp)
  4030c8:	00 
	sprites = malloc(sizeof(t_img) * size);
  4030c9:	bf 18 03 00 00       	mov    $0x318,%edi
  4030ce:	e8 3d f0 ff ff       	call   402110 <malloc@plt>
  4030d3:	48 89 c3             	mov    %rax,%rbx
		ft_sprintf(buf, name, i);
  4030d6:	48 8d 2d d5 c0 00 00 	lea    0xc0d5(%rip),%rbp        # 40f1b2 <_IO_stdin_used+0x1b2>
  4030dd:	4c 89 ef             	mov    %r13,%rdi
  4030e0:	48 89 ee             	mov    %rbp,%rsi
  4030e3:	31 d2                	xor    %edx,%edx
  4030e5:	31 c0                	xor    %eax,%eax
  4030e7:	e8 24 a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4030ec:	4c 89 e7             	mov    %r12,%rdi
  4030ef:	4c 89 ee             	mov    %r13,%rsi
  4030f2:	e8 c9 14 00 00       	call   4045c0 <sprite>
  4030f7:	48 89 03             	mov    %rax,(%rbx)
		ft_sprintf(buf, name, i);
  4030fa:	4c 89 ef             	mov    %r13,%rdi
  4030fd:	48 89 ee             	mov    %rbp,%rsi
  403100:	ba 01 00 00 00       	mov    $0x1,%edx
  403105:	31 c0                	xor    %eax,%eax
  403107:	e8 04 a7 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40310c:	4c 89 e7             	mov    %r12,%rdi
  40310f:	4c 89 ee             	mov    %r13,%rsi
  403112:	e8 a9 14 00 00       	call   4045c0 <sprite>
  403117:	48 89 43 08          	mov    %rax,0x8(%rbx)
		ft_sprintf(buf, name, i);
  40311b:	4c 89 ef             	mov    %r13,%rdi
  40311e:	48 89 ee             	mov    %rbp,%rsi
  403121:	ba 02 00 00 00       	mov    $0x2,%edx
  403126:	31 c0                	xor    %eax,%eax
  403128:	e8 e3 a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40312d:	4c 89 e7             	mov    %r12,%rdi
  403130:	4c 89 ee             	mov    %r13,%rsi
  403133:	e8 88 14 00 00       	call   4045c0 <sprite>
  403138:	48 89 43 10          	mov    %rax,0x10(%rbx)
		ft_sprintf(buf, name, i);
  40313c:	4c 89 ef             	mov    %r13,%rdi
  40313f:	48 89 ee             	mov    %rbp,%rsi
  403142:	ba 03 00 00 00       	mov    $0x3,%edx
  403147:	31 c0                	xor    %eax,%eax
  403149:	e8 c2 a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40314e:	4c 89 e7             	mov    %r12,%rdi
  403151:	4c 89 ee             	mov    %r13,%rsi
  403154:	e8 67 14 00 00       	call   4045c0 <sprite>
  403159:	48 89 43 18          	mov    %rax,0x18(%rbx)
		ft_sprintf(buf, name, i);
  40315d:	4c 89 ef             	mov    %r13,%rdi
  403160:	48 89 ee             	mov    %rbp,%rsi
  403163:	ba 04 00 00 00       	mov    $0x4,%edx
  403168:	31 c0                	xor    %eax,%eax
  40316a:	e8 a1 a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  40316f:	4c 89 e7             	mov    %r12,%rdi
  403172:	4c 89 ee             	mov    %r13,%rsi
  403175:	e8 46 14 00 00       	call   4045c0 <sprite>
  40317a:	48 89 43 20          	mov    %rax,0x20(%rbx)
		ft_sprintf(buf, name, i);
  40317e:	4c 89 ef             	mov    %r13,%rdi
  403181:	48 89 ee             	mov    %rbp,%rsi
  403184:	ba 05 00 00 00       	mov    $0x5,%edx
  403189:	31 c0                	xor    %eax,%eax
  40318b:	e8 80 a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  403190:	4c 89 e7             	mov    %r12,%rdi
  403193:	4c 89 ee             	mov    %r13,%rsi
  403196:	e8 25 14 00 00       	call   4045c0 <sprite>
  40319b:	48 89 43 28          	mov    %rax,0x28(%rbx)
		ft_sprintf(buf, name, i);
  40319f:	4c 89 ef             	mov    %r13,%rdi
  4031a2:	48 89 ee             	mov    %rbp,%rsi
  4031a5:	ba 06 00 00 00       	mov    $0x6,%edx
  4031aa:	31 c0                	xor    %eax,%eax
  4031ac:	e8 5f a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4031b1:	4c 89 e7             	mov    %r12,%rdi
  4031b4:	4c 89 ee             	mov    %r13,%rsi
  4031b7:	e8 04 14 00 00       	call   4045c0 <sprite>
  4031bc:	48 89 43 30          	mov    %rax,0x30(%rbx)
		ft_sprintf(buf, name, i);
  4031c0:	4c 89 ef             	mov    %r13,%rdi
  4031c3:	48 89 ee             	mov    %rbp,%rsi
  4031c6:	ba 07 00 00 00       	mov    $0x7,%edx
  4031cb:	31 c0                	xor    %eax,%eax
  4031cd:	e8 3e a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4031d2:	4c 89 e7             	mov    %r12,%rdi
  4031d5:	4c 89 ee             	mov    %r13,%rsi
  4031d8:	e8 e3 13 00 00       	call   4045c0 <sprite>
  4031dd:	48 89 43 38          	mov    %rax,0x38(%rbx)
		ft_sprintf(buf, name, i);
  4031e1:	4c 89 ef             	mov    %r13,%rdi
  4031e4:	48 89 ee             	mov    %rbp,%rsi
  4031e7:	ba 08 00 00 00       	mov    $0x8,%edx
  4031ec:	31 c0                	xor    %eax,%eax
  4031ee:	e8 1d a6 00 00       	call   40d810 <ft_sprintf>
		sprites[i] = sprite(game, buf);
  4031f3:	4c 89 e7             	mov    %r12,%rdi
  4031f6:	4c 89 ee             	mov    %r13,%rsi
  4031f9:	e8 c2 13 00 00       	call   4045c0 <sprite>
  4031fe:	48 89 43 40          	mov    %rax,0x40(%rbx)
	g->explosion = _load_frames(g, "textures/gen/Explosion/%d.xpm", 9);
  403202:	48 89 9c 24 b0 03 00 	mov    %rbx,0x3b0(%rsp)
  403209:	00 
	init_end(g);
  40320a:	4c 89 e7             	mov    %r12,%rdi
  40320d:	e8 ee 2d 00 00       	call   406000 <init_end>
		return (0);
	game.map2 = map2_load(&game, argv + 1, argc - 1);
  403212:	49 83 c6 08          	add    $0x8,%r14
  403216:	41 83 c7 ff          	add    $0xffffffff,%r15d
  40321a:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40321f:	4c 89 f6             	mov    %r14,%rsi
  403222:	44 89 fa             	mov    %r15d,%edx
  403225:	e8 06 41 00 00       	call   407330 <map2_load>
  40322a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
	if (!game.map2)
  40322f:	48 85 c0             	test   %rax,%rax
  403232:	0f 84 f0 00 00 00    	je     403328 <main+0xd88>
		return (ft_printf("Error\nInvalid map\n"), _clean(&game), 1);
	game.camera_pos.x = game.map2->width * 64 / 2;
  403238:	8b 48 0c             	mov    0xc(%rax),%ecx
  40323b:	c1 e1 05             	shl    $0x5,%ecx
  40323e:	89 8c 24 7c 01 00 00 	mov    %ecx,0x17c(%rsp)
	game.camera_pos.y = game.map2->height * 64 / 2;
  403245:	8b 40 10             	mov    0x10(%rax),%eax
  403248:	c1 e0 05             	shl    $0x5,%eax
  40324b:	89 84 24 80 01 00 00 	mov    %eax,0x180(%rsp)
	game.menu = menu_new();
  403252:	e8 d9 1d 00 00       	call   405030 <menu_new>
  403257:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
	game.menu_opened = true;
  40325c:	c6 44 24 70 01       	movb   $0x1,0x70(%rsp)
	if (BONUS)
		srand(getms());
	mlx_do_key_autorepeatoff(game.mlx);
  403261:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403266:	e8 45 9d 00 00       	call   40cfb0 <mlx_do_key_autorepeatoff>
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
  40326b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  403270:	48 c7 c1 f0 44 40 00 	mov    $0x4044f0,%rcx
  403277:	48 8d 6c 24 08       	lea    0x8(%rsp),%rbp
  40327c:	be 02 00 00 00       	mov    $0x2,%esi
  403281:	ba 01 00 00 00       	mov    $0x1,%edx
  403286:	49 89 e8             	mov    %rbp,%r8
  403289:	e8 02 9d 00 00       	call   40cf90 <mlx_hook>
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
  40328e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  403293:	48 c7 c1 20 45 40 00 	mov    $0x404520,%rcx
  40329a:	be 03 00 00 00       	mov    $0x3,%esi
  40329f:	ba 02 00 00 00       	mov    $0x2,%edx
  4032a4:	49 89 e8             	mov    %rbp,%r8
  4032a7:	e8 e4 9c 00 00       	call   40cf90 <mlx_hook>
	mlx_hook(game.win, DestroyNotify, 0, close_hook, &game);
  4032ac:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4032b1:	48 c7 c1 b0 45 40 00 	mov    $0x4045b0,%rcx
  4032b8:	31 db                	xor    %ebx,%ebx
  4032ba:	be 11 00 00 00       	mov    $0x11,%esi
  4032bf:	31 d2                	xor    %edx,%edx
  4032c1:	49 89 e8             	mov    %rbp,%r8
  4032c4:	e8 c7 9c 00 00       	call   40cf90 <mlx_hook>
	mlx_mouse_hook(game.win, mouse_hook, &game);
  4032c9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4032ce:	48 c7 c6 40 45 40 00 	mov    $0x404540,%rsi
  4032d5:	48 89 ea             	mov    %rbp,%rdx
  4032d8:	e8 23 84 00 00       	call   40b700 <mlx_mouse_hook>
	mlx_loop_hook(game.mlx, update_hook, &game);
  4032dd:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4032e2:	48 c7 c6 f0 45 40 00 	mov    $0x4045f0,%rsi
  4032e9:	48 89 ea             	mov    %rbp,%rdx
  4032ec:	e8 2f 84 00 00       	call   40b720 <mlx_loop_hook>
	mlx_loop(game.mlx);
  4032f1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4032f6:	e8 85 82 00 00       	call   40b580 <mlx_loop>
	game_free(game);
  4032fb:	48 89 ef             	mov    %rbp,%rdi
  4032fe:	e8 8d 00 00 00       	call   403390 <game_free>
	mlx_do_key_autorepeaton(game->mlx);
  403303:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403308:	e8 b3 9c 00 00       	call   40cfc0 <mlx_do_key_autorepeaton>
	mlx_destroy_window(game->mlx, game->win);
  40330d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403312:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  403317:	e8 84 99 00 00       	call   40cca0 <mlx_destroy_window>
	mlx_destroy_display(game->mlx);
  40331c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403321:	e8 aa 9e 00 00       	call   40d1d0 <mlx_destroy_display>
  403326:	eb 44                	jmp    40336c <main+0xdcc>
		return (ft_printf("Error\nInvalid map\n"), _clean(&game), 1);
  403328:	48 8d 3d d5 bc 00 00 	lea    0xbcd5(%rip),%rdi        # 40f004 <_IO_stdin_used+0x4>
  40332f:	31 c0                	xor    %eax,%eax
  403331:	e8 1a a3 00 00       	call   40d650 <ft_printf>
  403336:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
	game_free(game);
  40333b:	e8 50 00 00 00       	call   403390 <game_free>
	mlx_do_key_autorepeaton(game->mlx);
  403340:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403345:	e8 76 9c 00 00       	call   40cfc0 <mlx_do_key_autorepeaton>
	mlx_destroy_window(game->mlx, game->win);
  40334a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40334f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  403354:	e8 47 99 00 00       	call   40cca0 <mlx_destroy_window>
	mlx_destroy_display(game->mlx);
  403359:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40335e:	e8 6d 9e 00 00       	call   40d1d0 <mlx_destroy_display>
  403363:	bb 01 00 00 00       	mov    $0x1,%ebx
  403368:	eb 02                	jmp    40336c <main+0xdcc>
  40336a:	31 db                	xor    %ebx,%ebx
  40336c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403371:	e8 0a ee ff ff       	call   402180 <free@plt>
	_clean(&game);
}
  403376:	89 d8                	mov    %ebx,%eax
  403378:	48 81 c4 e8 07 00 00 	add    $0x7e8,%rsp
  40337f:	5b                   	pop    %rbx
  403380:	41 5c                	pop    %r12
  403382:	41 5d                	pop    %r13
  403384:	41 5e                	pop    %r14
  403386:	41 5f                	pop    %r15
  403388:	5d                   	pop    %rbp
  403389:	c3                   	ret    
  40338a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403390 <game_free>:
		if (game->sprites[i])
			mlx_destroy_image(game->mlx, game->sprites[i]);
}

void	game_free(t_game *game)
{
  403390:	41 57                	push   %r15
  403392:	41 56                	push   %r14
  403394:	53                   	push   %rbx
  403395:	49 89 ff             	mov    %rdi,%r15
	unsigned int	i;

	if (game->rdr)
  403398:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
  40339c:	48 85 ff             	test   %rdi,%rdi
  40339f:	74 05                	je     4033a6 <game_free+0x16>
		rdr_free(game->rdr);
  4033a1:	e8 7a 71 00 00       	call   40a520 <rdr_free>
	_free_anim(game, game->goblin_idle, 6);
  4033a6:	4d 8b b7 58 03 00 00 	mov    0x358(%r15),%r14
		if (sprites[i])
  4033ad:	49 8b 36             	mov    (%r14),%rsi
  4033b0:	48 85 f6             	test   %rsi,%rsi
  4033b3:	74 08                	je     4033bd <game_free+0x2d>
			mlx_destroy_image(game->mlx, sprites[i]);
  4033b5:	49 8b 3f             	mov    (%r15),%rdi
  4033b8:	e8 23 9c 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4033bd:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4033c1:	48 85 f6             	test   %rsi,%rsi
  4033c4:	74 08                	je     4033ce <game_free+0x3e>
			mlx_destroy_image(game->mlx, sprites[i]);
  4033c6:	49 8b 3f             	mov    (%r15),%rdi
  4033c9:	e8 12 9c 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4033ce:	49 8b 76 10          	mov    0x10(%r14),%rsi
  4033d2:	48 85 f6             	test   %rsi,%rsi
  4033d5:	74 08                	je     4033df <game_free+0x4f>
			mlx_destroy_image(game->mlx, sprites[i]);
  4033d7:	49 8b 3f             	mov    (%r15),%rdi
  4033da:	e8 01 9c 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4033df:	49 8b 76 18          	mov    0x18(%r14),%rsi
  4033e3:	48 85 f6             	test   %rsi,%rsi
  4033e6:	74 08                	je     4033f0 <game_free+0x60>
			mlx_destroy_image(game->mlx, sprites[i]);
  4033e8:	49 8b 3f             	mov    (%r15),%rdi
  4033eb:	e8 f0 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4033f0:	49 8b 76 20          	mov    0x20(%r14),%rsi
  4033f4:	48 85 f6             	test   %rsi,%rsi
  4033f7:	74 08                	je     403401 <game_free+0x71>
			mlx_destroy_image(game->mlx, sprites[i]);
  4033f9:	49 8b 3f             	mov    (%r15),%rdi
  4033fc:	e8 df 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403401:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403405:	48 85 f6             	test   %rsi,%rsi
  403408:	74 08                	je     403412 <game_free+0x82>
			mlx_destroy_image(game->mlx, sprites[i]);
  40340a:	49 8b 3f             	mov    (%r15),%rdi
  40340d:	e8 ce 9b 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  403412:	4c 89 f7             	mov    %r14,%rdi
  403415:	e8 66 ed ff ff       	call   402180 <free@plt>
	_free_anim(game, game->goblin_walk, 6);
  40341a:	4d 8b b7 50 03 00 00 	mov    0x350(%r15),%r14
		if (sprites[i])
  403421:	49 8b 36             	mov    (%r14),%rsi
  403424:	48 85 f6             	test   %rsi,%rsi
  403427:	74 08                	je     403431 <game_free+0xa1>
			mlx_destroy_image(game->mlx, sprites[i]);
  403429:	49 8b 3f             	mov    (%r15),%rdi
  40342c:	e8 af 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403431:	49 8b 76 08          	mov    0x8(%r14),%rsi
  403435:	48 85 f6             	test   %rsi,%rsi
  403438:	74 08                	je     403442 <game_free+0xb2>
			mlx_destroy_image(game->mlx, sprites[i]);
  40343a:	49 8b 3f             	mov    (%r15),%rdi
  40343d:	e8 9e 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403442:	49 8b 76 10          	mov    0x10(%r14),%rsi
  403446:	48 85 f6             	test   %rsi,%rsi
  403449:	74 08                	je     403453 <game_free+0xc3>
			mlx_destroy_image(game->mlx, sprites[i]);
  40344b:	49 8b 3f             	mov    (%r15),%rdi
  40344e:	e8 8d 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403453:	49 8b 76 18          	mov    0x18(%r14),%rsi
  403457:	48 85 f6             	test   %rsi,%rsi
  40345a:	74 08                	je     403464 <game_free+0xd4>
			mlx_destroy_image(game->mlx, sprites[i]);
  40345c:	49 8b 3f             	mov    (%r15),%rdi
  40345f:	e8 7c 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403464:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403468:	48 85 f6             	test   %rsi,%rsi
  40346b:	74 08                	je     403475 <game_free+0xe5>
			mlx_destroy_image(game->mlx, sprites[i]);
  40346d:	49 8b 3f             	mov    (%r15),%rdi
  403470:	e8 6b 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403475:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403479:	48 85 f6             	test   %rsi,%rsi
  40347c:	74 08                	je     403486 <game_free+0xf6>
			mlx_destroy_image(game->mlx, sprites[i]);
  40347e:	49 8b 3f             	mov    (%r15),%rdi
  403481:	e8 5a 9b 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  403486:	4c 89 f7             	mov    %r14,%rdi
  403489:	e8 f2 ec ff ff       	call   402180 <free@plt>
	_free_anim(game, game->goblin_atk_side, 6);
  40348e:	4d 8b b7 60 03 00 00 	mov    0x360(%r15),%r14
		if (sprites[i])
  403495:	49 8b 36             	mov    (%r14),%rsi
  403498:	48 85 f6             	test   %rsi,%rsi
  40349b:	74 08                	je     4034a5 <game_free+0x115>
			mlx_destroy_image(game->mlx, sprites[i]);
  40349d:	49 8b 3f             	mov    (%r15),%rdi
  4034a0:	e8 3b 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4034a5:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4034a9:	48 85 f6             	test   %rsi,%rsi
  4034ac:	74 08                	je     4034b6 <game_free+0x126>
			mlx_destroy_image(game->mlx, sprites[i]);
  4034ae:	49 8b 3f             	mov    (%r15),%rdi
  4034b1:	e8 2a 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4034b6:	49 8b 76 10          	mov    0x10(%r14),%rsi
  4034ba:	48 85 f6             	test   %rsi,%rsi
  4034bd:	74 08                	je     4034c7 <game_free+0x137>
			mlx_destroy_image(game->mlx, sprites[i]);
  4034bf:	49 8b 3f             	mov    (%r15),%rdi
  4034c2:	e8 19 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4034c7:	49 8b 76 18          	mov    0x18(%r14),%rsi
  4034cb:	48 85 f6             	test   %rsi,%rsi
  4034ce:	74 08                	je     4034d8 <game_free+0x148>
			mlx_destroy_image(game->mlx, sprites[i]);
  4034d0:	49 8b 3f             	mov    (%r15),%rdi
  4034d3:	e8 08 9b 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4034d8:	49 8b 76 20          	mov    0x20(%r14),%rsi
  4034dc:	48 85 f6             	test   %rsi,%rsi
  4034df:	74 08                	je     4034e9 <game_free+0x159>
			mlx_destroy_image(game->mlx, sprites[i]);
  4034e1:	49 8b 3f             	mov    (%r15),%rdi
  4034e4:	e8 f7 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4034e9:	49 8b 76 28          	mov    0x28(%r14),%rsi
  4034ed:	48 85 f6             	test   %rsi,%rsi
  4034f0:	74 08                	je     4034fa <game_free+0x16a>
			mlx_destroy_image(game->mlx, sprites[i]);
  4034f2:	49 8b 3f             	mov    (%r15),%rdi
  4034f5:	e8 e6 9a 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  4034fa:	4c 89 f7             	mov    %r14,%rdi
  4034fd:	e8 7e ec ff ff       	call   402180 <free@plt>
	_free_anim(game, game->goblin2_idle, 6);
  403502:	4d 8b b7 70 03 00 00 	mov    0x370(%r15),%r14
		if (sprites[i])
  403509:	49 8b 36             	mov    (%r14),%rsi
  40350c:	48 85 f6             	test   %rsi,%rsi
  40350f:	74 08                	je     403519 <game_free+0x189>
			mlx_destroy_image(game->mlx, sprites[i]);
  403511:	49 8b 3f             	mov    (%r15),%rdi
  403514:	e8 c7 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403519:	49 8b 76 08          	mov    0x8(%r14),%rsi
  40351d:	48 85 f6             	test   %rsi,%rsi
  403520:	74 08                	je     40352a <game_free+0x19a>
			mlx_destroy_image(game->mlx, sprites[i]);
  403522:	49 8b 3f             	mov    (%r15),%rdi
  403525:	e8 b6 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40352a:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40352e:	48 85 f6             	test   %rsi,%rsi
  403531:	74 08                	je     40353b <game_free+0x1ab>
			mlx_destroy_image(game->mlx, sprites[i]);
  403533:	49 8b 3f             	mov    (%r15),%rdi
  403536:	e8 a5 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40353b:	49 8b 76 18          	mov    0x18(%r14),%rsi
  40353f:	48 85 f6             	test   %rsi,%rsi
  403542:	74 08                	je     40354c <game_free+0x1bc>
			mlx_destroy_image(game->mlx, sprites[i]);
  403544:	49 8b 3f             	mov    (%r15),%rdi
  403547:	e8 94 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40354c:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403550:	48 85 f6             	test   %rsi,%rsi
  403553:	74 08                	je     40355d <game_free+0x1cd>
			mlx_destroy_image(game->mlx, sprites[i]);
  403555:	49 8b 3f             	mov    (%r15),%rdi
  403558:	e8 83 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40355d:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403561:	48 85 f6             	test   %rsi,%rsi
  403564:	74 08                	je     40356e <game_free+0x1de>
			mlx_destroy_image(game->mlx, sprites[i]);
  403566:	49 8b 3f             	mov    (%r15),%rdi
  403569:	e8 72 9a 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  40356e:	4c 89 f7             	mov    %r14,%rdi
  403571:	e8 0a ec ff ff       	call   402180 <free@plt>
	_free_anim(game, game->goblin2_walk, 6);
  403576:	4d 8b b7 68 03 00 00 	mov    0x368(%r15),%r14
		if (sprites[i])
  40357d:	49 8b 36             	mov    (%r14),%rsi
  403580:	48 85 f6             	test   %rsi,%rsi
  403583:	74 08                	je     40358d <game_free+0x1fd>
			mlx_destroy_image(game->mlx, sprites[i]);
  403585:	49 8b 3f             	mov    (%r15),%rdi
  403588:	e8 53 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40358d:	49 8b 76 08          	mov    0x8(%r14),%rsi
  403591:	48 85 f6             	test   %rsi,%rsi
  403594:	74 08                	je     40359e <game_free+0x20e>
			mlx_destroy_image(game->mlx, sprites[i]);
  403596:	49 8b 3f             	mov    (%r15),%rdi
  403599:	e8 42 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40359e:	49 8b 76 10          	mov    0x10(%r14),%rsi
  4035a2:	48 85 f6             	test   %rsi,%rsi
  4035a5:	74 08                	je     4035af <game_free+0x21f>
			mlx_destroy_image(game->mlx, sprites[i]);
  4035a7:	49 8b 3f             	mov    (%r15),%rdi
  4035aa:	e8 31 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4035af:	49 8b 76 18          	mov    0x18(%r14),%rsi
  4035b3:	48 85 f6             	test   %rsi,%rsi
  4035b6:	74 08                	je     4035c0 <game_free+0x230>
			mlx_destroy_image(game->mlx, sprites[i]);
  4035b8:	49 8b 3f             	mov    (%r15),%rdi
  4035bb:	e8 20 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4035c0:	49 8b 76 20          	mov    0x20(%r14),%rsi
  4035c4:	48 85 f6             	test   %rsi,%rsi
  4035c7:	74 08                	je     4035d1 <game_free+0x241>
			mlx_destroy_image(game->mlx, sprites[i]);
  4035c9:	49 8b 3f             	mov    (%r15),%rdi
  4035cc:	e8 0f 9a 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4035d1:	49 8b 76 28          	mov    0x28(%r14),%rsi
  4035d5:	48 85 f6             	test   %rsi,%rsi
  4035d8:	74 08                	je     4035e2 <game_free+0x252>
			mlx_destroy_image(game->mlx, sprites[i]);
  4035da:	49 8b 3f             	mov    (%r15),%rdi
  4035dd:	e8 fe 99 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  4035e2:	4c 89 f7             	mov    %r14,%rdi
  4035e5:	e8 96 eb ff ff       	call   402180 <free@plt>
	_free_anim(game, game->goblin2_atk_side, 6);
  4035ea:	4d 8b b7 78 03 00 00 	mov    0x378(%r15),%r14
		if (sprites[i])
  4035f1:	49 8b 36             	mov    (%r14),%rsi
  4035f4:	48 85 f6             	test   %rsi,%rsi
  4035f7:	74 08                	je     403601 <game_free+0x271>
			mlx_destroy_image(game->mlx, sprites[i]);
  4035f9:	49 8b 3f             	mov    (%r15),%rdi
  4035fc:	e8 df 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403601:	49 8b 76 08          	mov    0x8(%r14),%rsi
  403605:	48 85 f6             	test   %rsi,%rsi
  403608:	74 08                	je     403612 <game_free+0x282>
			mlx_destroy_image(game->mlx, sprites[i]);
  40360a:	49 8b 3f             	mov    (%r15),%rdi
  40360d:	e8 ce 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403612:	49 8b 76 10          	mov    0x10(%r14),%rsi
  403616:	48 85 f6             	test   %rsi,%rsi
  403619:	74 08                	je     403623 <game_free+0x293>
			mlx_destroy_image(game->mlx, sprites[i]);
  40361b:	49 8b 3f             	mov    (%r15),%rdi
  40361e:	e8 bd 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403623:	49 8b 76 18          	mov    0x18(%r14),%rsi
  403627:	48 85 f6             	test   %rsi,%rsi
  40362a:	74 08                	je     403634 <game_free+0x2a4>
			mlx_destroy_image(game->mlx, sprites[i]);
  40362c:	49 8b 3f             	mov    (%r15),%rdi
  40362f:	e8 ac 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403634:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403638:	48 85 f6             	test   %rsi,%rsi
  40363b:	74 08                	je     403645 <game_free+0x2b5>
			mlx_destroy_image(game->mlx, sprites[i]);
  40363d:	49 8b 3f             	mov    (%r15),%rdi
  403640:	e8 9b 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403645:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403649:	48 85 f6             	test   %rsi,%rsi
  40364c:	74 08                	je     403656 <game_free+0x2c6>
			mlx_destroy_image(game->mlx, sprites[i]);
  40364e:	49 8b 3f             	mov    (%r15),%rdi
  403651:	e8 8a 99 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  403656:	4c 89 f7             	mov    %r14,%rdi
  403659:	e8 22 eb ff ff       	call   402180 <free@plt>
	_free_anim(game, game->warrior_idle, 6);
  40365e:	4d 8b b7 88 03 00 00 	mov    0x388(%r15),%r14
		if (sprites[i])
  403665:	49 8b 36             	mov    (%r14),%rsi
  403668:	48 85 f6             	test   %rsi,%rsi
  40366b:	74 08                	je     403675 <game_free+0x2e5>
			mlx_destroy_image(game->mlx, sprites[i]);
  40366d:	49 8b 3f             	mov    (%r15),%rdi
  403670:	e8 6b 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403675:	49 8b 76 08          	mov    0x8(%r14),%rsi
  403679:	48 85 f6             	test   %rsi,%rsi
  40367c:	74 08                	je     403686 <game_free+0x2f6>
			mlx_destroy_image(game->mlx, sprites[i]);
  40367e:	49 8b 3f             	mov    (%r15),%rdi
  403681:	e8 5a 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403686:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40368a:	48 85 f6             	test   %rsi,%rsi
  40368d:	74 08                	je     403697 <game_free+0x307>
			mlx_destroy_image(game->mlx, sprites[i]);
  40368f:	49 8b 3f             	mov    (%r15),%rdi
  403692:	e8 49 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403697:	49 8b 76 18          	mov    0x18(%r14),%rsi
  40369b:	48 85 f6             	test   %rsi,%rsi
  40369e:	74 08                	je     4036a8 <game_free+0x318>
			mlx_destroy_image(game->mlx, sprites[i]);
  4036a0:	49 8b 3f             	mov    (%r15),%rdi
  4036a3:	e8 38 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4036a8:	49 8b 76 20          	mov    0x20(%r14),%rsi
  4036ac:	48 85 f6             	test   %rsi,%rsi
  4036af:	74 08                	je     4036b9 <game_free+0x329>
			mlx_destroy_image(game->mlx, sprites[i]);
  4036b1:	49 8b 3f             	mov    (%r15),%rdi
  4036b4:	e8 27 99 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4036b9:	49 8b 76 28          	mov    0x28(%r14),%rsi
  4036bd:	48 85 f6             	test   %rsi,%rsi
  4036c0:	74 08                	je     4036ca <game_free+0x33a>
			mlx_destroy_image(game->mlx, sprites[i]);
  4036c2:	49 8b 3f             	mov    (%r15),%rdi
  4036c5:	e8 16 99 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  4036ca:	4c 89 f7             	mov    %r14,%rdi
  4036cd:	e8 ae ea ff ff       	call   402180 <free@plt>
	_free_anim(game, game->warrior_walk, 6);
  4036d2:	4d 8b b7 80 03 00 00 	mov    0x380(%r15),%r14
		if (sprites[i])
  4036d9:	49 8b 36             	mov    (%r14),%rsi
  4036dc:	48 85 f6             	test   %rsi,%rsi
  4036df:	74 08                	je     4036e9 <game_free+0x359>
			mlx_destroy_image(game->mlx, sprites[i]);
  4036e1:	49 8b 3f             	mov    (%r15),%rdi
  4036e4:	e8 f7 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4036e9:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4036ed:	48 85 f6             	test   %rsi,%rsi
  4036f0:	74 08                	je     4036fa <game_free+0x36a>
			mlx_destroy_image(game->mlx, sprites[i]);
  4036f2:	49 8b 3f             	mov    (%r15),%rdi
  4036f5:	e8 e6 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4036fa:	49 8b 76 10          	mov    0x10(%r14),%rsi
  4036fe:	48 85 f6             	test   %rsi,%rsi
  403701:	74 08                	je     40370b <game_free+0x37b>
			mlx_destroy_image(game->mlx, sprites[i]);
  403703:	49 8b 3f             	mov    (%r15),%rdi
  403706:	e8 d5 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40370b:	49 8b 76 18          	mov    0x18(%r14),%rsi
  40370f:	48 85 f6             	test   %rsi,%rsi
  403712:	74 08                	je     40371c <game_free+0x38c>
			mlx_destroy_image(game->mlx, sprites[i]);
  403714:	49 8b 3f             	mov    (%r15),%rdi
  403717:	e8 c4 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40371c:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403720:	48 85 f6             	test   %rsi,%rsi
  403723:	74 08                	je     40372d <game_free+0x39d>
			mlx_destroy_image(game->mlx, sprites[i]);
  403725:	49 8b 3f             	mov    (%r15),%rdi
  403728:	e8 b3 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40372d:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403731:	48 85 f6             	test   %rsi,%rsi
  403734:	74 08                	je     40373e <game_free+0x3ae>
			mlx_destroy_image(game->mlx, sprites[i]);
  403736:	49 8b 3f             	mov    (%r15),%rdi
  403739:	e8 a2 98 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  40373e:	4c 89 f7             	mov    %r14,%rdi
  403741:	e8 3a ea ff ff       	call   402180 <free@plt>
	_free_anim(game, game->warrior_atk_side, 6);
  403746:	4d 8b b7 90 03 00 00 	mov    0x390(%r15),%r14
		if (sprites[i])
  40374d:	49 8b 36             	mov    (%r14),%rsi
  403750:	48 85 f6             	test   %rsi,%rsi
  403753:	74 08                	je     40375d <game_free+0x3cd>
			mlx_destroy_image(game->mlx, sprites[i]);
  403755:	49 8b 3f             	mov    (%r15),%rdi
  403758:	e8 83 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40375d:	49 8b 76 08          	mov    0x8(%r14),%rsi
  403761:	48 85 f6             	test   %rsi,%rsi
  403764:	74 08                	je     40376e <game_free+0x3de>
			mlx_destroy_image(game->mlx, sprites[i]);
  403766:	49 8b 3f             	mov    (%r15),%rdi
  403769:	e8 72 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40376e:	49 8b 76 10          	mov    0x10(%r14),%rsi
  403772:	48 85 f6             	test   %rsi,%rsi
  403775:	74 08                	je     40377f <game_free+0x3ef>
			mlx_destroy_image(game->mlx, sprites[i]);
  403777:	49 8b 3f             	mov    (%r15),%rdi
  40377a:	e8 61 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40377f:	49 8b 76 18          	mov    0x18(%r14),%rsi
  403783:	48 85 f6             	test   %rsi,%rsi
  403786:	74 08                	je     403790 <game_free+0x400>
			mlx_destroy_image(game->mlx, sprites[i]);
  403788:	49 8b 3f             	mov    (%r15),%rdi
  40378b:	e8 50 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403790:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403794:	48 85 f6             	test   %rsi,%rsi
  403797:	74 08                	je     4037a1 <game_free+0x411>
			mlx_destroy_image(game->mlx, sprites[i]);
  403799:	49 8b 3f             	mov    (%r15),%rdi
  40379c:	e8 3f 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4037a1:	49 8b 76 28          	mov    0x28(%r14),%rsi
  4037a5:	48 85 f6             	test   %rsi,%rsi
  4037a8:	74 08                	je     4037b2 <game_free+0x422>
			mlx_destroy_image(game->mlx, sprites[i]);
  4037aa:	49 8b 3f             	mov    (%r15),%rdi
  4037ad:	e8 2e 98 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  4037b2:	4c 89 f7             	mov    %r14,%rdi
  4037b5:	e8 c6 e9 ff ff       	call   402180 <free@plt>
	_free_anim(game, game->money_spawn, 7);
  4037ba:	4d 8b b7 98 03 00 00 	mov    0x398(%r15),%r14
		if (sprites[i])
  4037c1:	49 8b 36             	mov    (%r14),%rsi
  4037c4:	48 85 f6             	test   %rsi,%rsi
  4037c7:	74 08                	je     4037d1 <game_free+0x441>
			mlx_destroy_image(game->mlx, sprites[i]);
  4037c9:	49 8b 3f             	mov    (%r15),%rdi
  4037cc:	e8 0f 98 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4037d1:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4037d5:	48 85 f6             	test   %rsi,%rsi
  4037d8:	74 08                	je     4037e2 <game_free+0x452>
			mlx_destroy_image(game->mlx, sprites[i]);
  4037da:	49 8b 3f             	mov    (%r15),%rdi
  4037dd:	e8 fe 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4037e2:	49 8b 76 10          	mov    0x10(%r14),%rsi
  4037e6:	48 85 f6             	test   %rsi,%rsi
  4037e9:	74 08                	je     4037f3 <game_free+0x463>
			mlx_destroy_image(game->mlx, sprites[i]);
  4037eb:	49 8b 3f             	mov    (%r15),%rdi
  4037ee:	e8 ed 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4037f3:	49 8b 76 18          	mov    0x18(%r14),%rsi
  4037f7:	48 85 f6             	test   %rsi,%rsi
  4037fa:	74 08                	je     403804 <game_free+0x474>
			mlx_destroy_image(game->mlx, sprites[i]);
  4037fc:	49 8b 3f             	mov    (%r15),%rdi
  4037ff:	e8 dc 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403804:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403808:	48 85 f6             	test   %rsi,%rsi
  40380b:	74 08                	je     403815 <game_free+0x485>
			mlx_destroy_image(game->mlx, sprites[i]);
  40380d:	49 8b 3f             	mov    (%r15),%rdi
  403810:	e8 cb 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403815:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403819:	48 85 f6             	test   %rsi,%rsi
  40381c:	74 08                	je     403826 <game_free+0x496>
			mlx_destroy_image(game->mlx, sprites[i]);
  40381e:	49 8b 3f             	mov    (%r15),%rdi
  403821:	e8 ba 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403826:	49 8b 76 30          	mov    0x30(%r14),%rsi
  40382a:	48 85 f6             	test   %rsi,%rsi
  40382d:	74 08                	je     403837 <game_free+0x4a7>
			mlx_destroy_image(game->mlx, sprites[i]);
  40382f:	49 8b 3f             	mov    (%r15),%rdi
  403832:	e8 a9 97 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  403837:	4c 89 f7             	mov    %r14,%rdi
  40383a:	e8 41 e9 ff ff       	call   402180 <free@plt>
	_free_anim(game, game->foam, 8);
  40383f:	4d 8b b7 a0 03 00 00 	mov    0x3a0(%r15),%r14
		if (sprites[i])
  403846:	49 8b 36             	mov    (%r14),%rsi
  403849:	48 85 f6             	test   %rsi,%rsi
  40384c:	74 08                	je     403856 <game_free+0x4c6>
			mlx_destroy_image(game->mlx, sprites[i]);
  40384e:	49 8b 3f             	mov    (%r15),%rdi
  403851:	e8 8a 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403856:	49 8b 76 08          	mov    0x8(%r14),%rsi
  40385a:	48 85 f6             	test   %rsi,%rsi
  40385d:	74 08                	je     403867 <game_free+0x4d7>
			mlx_destroy_image(game->mlx, sprites[i]);
  40385f:	49 8b 3f             	mov    (%r15),%rdi
  403862:	e8 79 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403867:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40386b:	48 85 f6             	test   %rsi,%rsi
  40386e:	74 08                	je     403878 <game_free+0x4e8>
			mlx_destroy_image(game->mlx, sprites[i]);
  403870:	49 8b 3f             	mov    (%r15),%rdi
  403873:	e8 68 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403878:	49 8b 76 18          	mov    0x18(%r14),%rsi
  40387c:	48 85 f6             	test   %rsi,%rsi
  40387f:	74 08                	je     403889 <game_free+0x4f9>
			mlx_destroy_image(game->mlx, sprites[i]);
  403881:	49 8b 3f             	mov    (%r15),%rdi
  403884:	e8 57 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403889:	49 8b 76 20          	mov    0x20(%r14),%rsi
  40388d:	48 85 f6             	test   %rsi,%rsi
  403890:	74 08                	je     40389a <game_free+0x50a>
			mlx_destroy_image(game->mlx, sprites[i]);
  403892:	49 8b 3f             	mov    (%r15),%rdi
  403895:	e8 46 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40389a:	49 8b 76 28          	mov    0x28(%r14),%rsi
  40389e:	48 85 f6             	test   %rsi,%rsi
  4038a1:	74 08                	je     4038ab <game_free+0x51b>
			mlx_destroy_image(game->mlx, sprites[i]);
  4038a3:	49 8b 3f             	mov    (%r15),%rdi
  4038a6:	e8 35 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4038ab:	49 8b 76 30          	mov    0x30(%r14),%rsi
  4038af:	48 85 f6             	test   %rsi,%rsi
  4038b2:	74 08                	je     4038bc <game_free+0x52c>
			mlx_destroy_image(game->mlx, sprites[i]);
  4038b4:	49 8b 3f             	mov    (%r15),%rdi
  4038b7:	e8 24 97 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4038bc:	49 8b 76 38          	mov    0x38(%r14),%rsi
  4038c0:	48 85 f6             	test   %rsi,%rsi
  4038c3:	74 08                	je     4038cd <game_free+0x53d>
			mlx_destroy_image(game->mlx, sprites[i]);
  4038c5:	49 8b 3f             	mov    (%r15),%rdi
  4038c8:	e8 13 97 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  4038cd:	4c 89 f7             	mov    %r14,%rdi
  4038d0:	e8 ab e8 ff ff       	call   402180 <free@plt>
	_free_anim(game, game->explosion, 9);
  4038d5:	4d 8b b7 a8 03 00 00 	mov    0x3a8(%r15),%r14
		if (sprites[i])
  4038dc:	49 8b 36             	mov    (%r14),%rsi
  4038df:	48 85 f6             	test   %rsi,%rsi
  4038e2:	74 08                	je     4038ec <game_free+0x55c>
			mlx_destroy_image(game->mlx, sprites[i]);
  4038e4:	49 8b 3f             	mov    (%r15),%rdi
  4038e7:	e8 f4 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4038ec:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4038f0:	48 85 f6             	test   %rsi,%rsi
  4038f3:	74 08                	je     4038fd <game_free+0x56d>
			mlx_destroy_image(game->mlx, sprites[i]);
  4038f5:	49 8b 3f             	mov    (%r15),%rdi
  4038f8:	e8 e3 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  4038fd:	49 8b 76 10          	mov    0x10(%r14),%rsi
  403901:	48 85 f6             	test   %rsi,%rsi
  403904:	74 08                	je     40390e <game_free+0x57e>
			mlx_destroy_image(game->mlx, sprites[i]);
  403906:	49 8b 3f             	mov    (%r15),%rdi
  403909:	e8 d2 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40390e:	49 8b 76 18          	mov    0x18(%r14),%rsi
  403912:	48 85 f6             	test   %rsi,%rsi
  403915:	74 08                	je     40391f <game_free+0x58f>
			mlx_destroy_image(game->mlx, sprites[i]);
  403917:	49 8b 3f             	mov    (%r15),%rdi
  40391a:	e8 c1 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  40391f:	49 8b 76 20          	mov    0x20(%r14),%rsi
  403923:	48 85 f6             	test   %rsi,%rsi
  403926:	74 08                	je     403930 <game_free+0x5a0>
			mlx_destroy_image(game->mlx, sprites[i]);
  403928:	49 8b 3f             	mov    (%r15),%rdi
  40392b:	e8 b0 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403930:	49 8b 76 28          	mov    0x28(%r14),%rsi
  403934:	48 85 f6             	test   %rsi,%rsi
  403937:	74 08                	je     403941 <game_free+0x5b1>
			mlx_destroy_image(game->mlx, sprites[i]);
  403939:	49 8b 3f             	mov    (%r15),%rdi
  40393c:	e8 9f 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403941:	49 8b 76 30          	mov    0x30(%r14),%rsi
  403945:	48 85 f6             	test   %rsi,%rsi
  403948:	74 08                	je     403952 <game_free+0x5c2>
			mlx_destroy_image(game->mlx, sprites[i]);
  40394a:	49 8b 3f             	mov    (%r15),%rdi
  40394d:	e8 8e 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403952:	49 8b 76 38          	mov    0x38(%r14),%rsi
  403956:	48 85 f6             	test   %rsi,%rsi
  403959:	74 08                	je     403963 <game_free+0x5d3>
			mlx_destroy_image(game->mlx, sprites[i]);
  40395b:	49 8b 3f             	mov    (%r15),%rdi
  40395e:	e8 7d 96 00 00       	call   40cfe0 <mlx_destroy_image>
		if (sprites[i])
  403963:	49 8b 76 40          	mov    0x40(%r14),%rsi
  403967:	48 85 f6             	test   %rsi,%rsi
  40396a:	74 08                	je     403974 <game_free+0x5e4>
			mlx_destroy_image(game->mlx, sprites[i]);
  40396c:	49 8b 3f             	mov    (%r15),%rdi
  40396f:	e8 6c 96 00 00       	call   40cfe0 <mlx_destroy_image>
	free(sprites);
  403974:	4c 89 f7             	mov    %r14,%rdi
  403977:	e8 04 e8 ff ff       	call   402180 <free@plt>
	free(game->foam_anim);
  40397c:	49 8b bf 40 03 00 00 	mov    0x340(%r15),%rdi
  403983:	e8 f8 e7 ff ff       	call   402180 <free@plt>
  403988:	bb 76 00 00 00       	mov    $0x76,%ebx
  40398d:	eb 0e                	jmp    40399d <game_free+0x60d>
  40398f:	90                   	nop
	while (++i < SP_MAX)
  403990:	48 83 c3 01          	add    $0x1,%rbx
  403994:	48 81 fb eb 00 00 00 	cmp    $0xeb,%rbx
  40399b:	74 13                	je     4039b0 <game_free+0x620>
		if (game->sprites[i])
  40399d:	49 8b 34 df          	mov    (%r15,%rbx,8),%rsi
  4039a1:	48 85 f6             	test   %rsi,%rsi
  4039a4:	74 ea                	je     403990 <game_free+0x600>
			mlx_destroy_image(game->mlx, game->sprites[i]);
  4039a6:	49 8b 3f             	mov    (%r15),%rdi
  4039a9:	e8 32 96 00 00       	call   40cfe0 <mlx_destroy_image>
  4039ae:	eb e0                	jmp    403990 <game_free+0x600>
	_free_images(game);
	free(game->keys);
  4039b0:	49 8b 7f 10          	mov    0x10(%r15),%rdi
  4039b4:	e8 c7 e7 ff ff       	call   402180 <free@plt>
	i = 0;
	while (i < vector_size(game->entities))
  4039b9:	49 8b 7f 20          	mov    0x20(%r15),%rdi
  4039bd:	e8 2e 6a 00 00       	call   40a3f0 <vector_size>
  4039c2:	85 c0                	test   %eax,%eax
  4039c4:	74 40                	je     403a06 <game_free+0x676>
  4039c6:	31 db                	xor    %ebx,%ebx
  4039c8:	eb 23                	jmp    4039ed <game_free+0x65d>
  4039ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	{
		if (game->entities[i]->free)
			game->entities[i]->free(game->entities[i]);
		free(game->entities[i]);
  4039d0:	48 8b 3c d8          	mov    (%rax,%rbx,8),%rdi
  4039d4:	e8 a7 e7 ff ff       	call   402180 <free@plt>
		i++;
  4039d9:	48 83 c3 01          	add    $0x1,%rbx
	while (i < vector_size(game->entities))
  4039dd:	49 8b 7f 20          	mov    0x20(%r15),%rdi
  4039e1:	e8 0a 6a 00 00       	call   40a3f0 <vector_size>
  4039e6:	89 c0                	mov    %eax,%eax
  4039e8:	48 39 c3             	cmp    %rax,%rbx
  4039eb:	73 19                	jae    403a06 <game_free+0x676>
		if (game->entities[i]->free)
  4039ed:	49 8b 47 20          	mov    0x20(%r15),%rax
  4039f1:	48 8b 3c d8          	mov    (%rax,%rbx,8),%rdi
  4039f5:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
  4039f9:	48 85 c9             	test   %rcx,%rcx
  4039fc:	74 d2                	je     4039d0 <game_free+0x640>
			game->entities[i]->free(game->entities[i]);
  4039fe:	ff d1                	call   *%rcx
		free(game->entities[i]);
  403a00:	49 8b 47 20          	mov    0x20(%r15),%rax
  403a04:	eb ca                	jmp    4039d0 <game_free+0x640>
	}
	if (game->entities)
  403a06:	49 8b 7f 20          	mov    0x20(%r15),%rdi
  403a0a:	48 85 ff             	test   %rdi,%rdi
  403a0d:	74 05                	je     403a14 <game_free+0x684>
		vector_free(game->entities);
  403a0f:	e8 fc 69 00 00       	call   40a410 <vector_free>
	free_end(game);
  403a14:	4c 89 ff             	mov    %r15,%rdi
  403a17:	e8 e4 27 00 00       	call   406200 <free_end>
	if (game->map2)
  403a1c:	49 8b 7f 50          	mov    0x50(%r15),%rdi
  403a20:	48 85 ff             	test   %rdi,%rdi
  403a23:	74 05                	je     403a2a <game_free+0x69a>
		map2_free(game->map2);
  403a25:	e8 f6 56 00 00       	call   409120 <map2_free>
	font_free(game, game->font);
  403a2a:	49 8b b7 28 03 00 00 	mov    0x328(%r15),%rsi
  403a31:	4c 89 ff             	mov    %r15,%rdi
  403a34:	e8 37 76 00 00       	call   40b070 <font_free>
	font_free(game, game->small_font);
  403a39:	49 8b b7 30 03 00 00 	mov    0x330(%r15),%rsi
  403a40:	4c 89 ff             	mov    %r15,%rdi
  403a43:	e8 28 76 00 00       	call   40b070 <font_free>
	font_free(game, game->symbols_font);
  403a48:	49 8b b7 38 03 00 00 	mov    0x338(%r15),%rsi
  403a4f:	4c 89 ff             	mov    %r15,%rdi
  403a52:	e8 19 76 00 00       	call   40b070 <font_free>
	free(game->menu);
  403a57:	49 8b 7f 60          	mov    0x60(%r15),%rdi
  403a5b:	e8 20 e7 ff ff       	call   402180 <free@plt>
	mlx_destroy_image(game->mlx, game->canvas);
  403a60:	49 8b 3f             	mov    (%r15),%rdi
  403a63:	49 8b 77 18          	mov    0x18(%r15),%rsi
  403a67:	e8 74 95 00 00       	call   40cfe0 <mlx_destroy_image>
	free(game->buffer);
  403a6c:	49 8b 7f 38          	mov    0x38(%r15),%rdi
  403a70:	5b                   	pop    %rbx
  403a71:	41 5e                	pop    %r14
  403a73:	41 5f                	pop    %r15
  403a75:	e9 06 e7 ff ff       	jmp    402180 <free@plt>
  403a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403a80 <load_sprites>:
	sp[SP_CLIFF_SIDE_R] = sprite(g, "textures/gen/Cliff_SideRight.xpm");
	sp[SP_CLIFF_SIDE_ALL] = sprite(g, "textures/gen/Cliff_SideAll.xpm");
}

void	load_sprites(t_game *game)
{
  403a80:	41 57                	push   %r15
  403a82:	41 56                	push   %r14
  403a84:	53                   	push   %rbx
  403a85:	48 89 fb             	mov    %rdi,%rbx
	_load_sprites1(game, game->sprites);
  403a88:	4c 8d b7 b0 03 00 00 	lea    0x3b0(%rdi),%r14
	sp[SP_WATER] = sprite(g, "textures/gen/Water.xpm");
  403a8f:	4c 8d 3d 70 b7 00 00 	lea    0xb770(%rip),%r15        # 40f206 <_IO_stdin_used+0x206>
  403a96:	4c 89 fe             	mov    %r15,%rsi
  403a99:	e8 22 0b 00 00       	call   4045c0 <sprite>
  403a9e:	48 89 83 b0 03 00 00 	mov    %rax,0x3b0(%rbx)
	sp[SP_GROUND_M] = sprite(g, "textures/gen/Mid.xpm");
  403aa5:	48 8d 35 71 b7 00 00 	lea    0xb771(%rip),%rsi        # 40f21d <_IO_stdin_used+0x21d>
  403aac:	48 89 df             	mov    %rbx,%rdi
  403aaf:	e8 0c 0b 00 00       	call   4045c0 <sprite>
  403ab4:	48 89 83 c0 03 00 00 	mov    %rax,0x3c0(%rbx)
	sp[SP_GROUND_T] = sprite(g, "textures/gen/Top.xpm");
  403abb:	48 8d 35 70 b7 00 00 	lea    0xb770(%rip),%rsi        # 40f232 <_IO_stdin_used+0x232>
  403ac2:	48 89 df             	mov    %rbx,%rdi
  403ac5:	e8 f6 0a 00 00       	call   4045c0 <sprite>
  403aca:	48 89 83 c8 03 00 00 	mov    %rax,0x3c8(%rbx)
	sp[SP_GROUND_TL] = sprite(g, "textures/gen/TopLeft.xpm");
  403ad1:	48 8d 35 6f b7 00 00 	lea    0xb76f(%rip),%rsi        # 40f247 <_IO_stdin_used+0x247>
  403ad8:	48 89 df             	mov    %rbx,%rdi
  403adb:	e8 e0 0a 00 00       	call   4045c0 <sprite>
  403ae0:	48 89 83 d0 03 00 00 	mov    %rax,0x3d0(%rbx)
	sp[SP_GROUND_TR] = sprite(g, "textures/gen/TopRight.xpm");
  403ae7:	48 8d 35 72 b7 00 00 	lea    0xb772(%rip),%rsi        # 40f260 <_IO_stdin_used+0x260>
  403aee:	48 89 df             	mov    %rbx,%rdi
  403af1:	e8 ca 0a 00 00       	call   4045c0 <sprite>
  403af6:	48 89 83 d8 03 00 00 	mov    %rax,0x3d8(%rbx)
	sp[SP_GROUND_L] = sprite(g, "textures/gen/Left.xpm");
  403afd:	48 8d 35 76 b7 00 00 	lea    0xb776(%rip),%rsi        # 40f27a <_IO_stdin_used+0x27a>
  403b04:	48 89 df             	mov    %rbx,%rdi
  403b07:	e8 b4 0a 00 00       	call   4045c0 <sprite>
  403b0c:	48 89 83 e0 03 00 00 	mov    %rax,0x3e0(%rbx)
	sp[SP_GROUND_R] = sprite(g, "textures/gen/Right.xpm");
  403b13:	48 8d 35 76 b7 00 00 	lea    0xb776(%rip),%rsi        # 40f290 <_IO_stdin_used+0x290>
  403b1a:	48 89 df             	mov    %rbx,%rdi
  403b1d:	e8 9e 0a 00 00       	call   4045c0 <sprite>
  403b22:	48 89 83 e8 03 00 00 	mov    %rax,0x3e8(%rbx)
	sp[SP_GROUND_B] = sprite(g, "textures/gen/Bot.xpm");
  403b29:	48 8d 35 77 b7 00 00 	lea    0xb777(%rip),%rsi        # 40f2a7 <_IO_stdin_used+0x2a7>
  403b30:	48 89 df             	mov    %rbx,%rdi
  403b33:	e8 88 0a 00 00       	call   4045c0 <sprite>
  403b38:	48 89 83 f0 03 00 00 	mov    %rax,0x3f0(%rbx)
	sp[SP_GROUND_BL] = sprite(g, "textures/gen/BotLeft.xpm");
  403b3f:	48 8d 35 76 b7 00 00 	lea    0xb776(%rip),%rsi        # 40f2bc <_IO_stdin_used+0x2bc>
  403b46:	48 89 df             	mov    %rbx,%rdi
  403b49:	e8 72 0a 00 00       	call   4045c0 <sprite>
  403b4e:	48 89 83 f8 03 00 00 	mov    %rax,0x3f8(%rbx)
	sp[SP_GROUND_BR] = sprite(g, "textures/gen/BotRight.xpm");
  403b55:	48 8d 35 79 b7 00 00 	lea    0xb779(%rip),%rsi        # 40f2d5 <_IO_stdin_used+0x2d5>
  403b5c:	48 89 df             	mov    %rbx,%rdi
  403b5f:	e8 5c 0a 00 00       	call   4045c0 <sprite>
  403b64:	48 89 83 00 04 00 00 	mov    %rax,0x400(%rbx)
	sp[SP_GROUND_TLR] = sprite(g, "textures/gen/TopLR.xpm");
  403b6b:	48 8d 35 7d b7 00 00 	lea    0xb77d(%rip),%rsi        # 40f2ef <_IO_stdin_used+0x2ef>
  403b72:	48 89 df             	mov    %rbx,%rdi
  403b75:	e8 46 0a 00 00       	call   4045c0 <sprite>
  403b7a:	48 89 83 08 04 00 00 	mov    %rax,0x408(%rbx)
	sp[SP_GROUND_LR] = sprite(g, "textures/gen/LR.xpm");
  403b81:	48 8d 35 7e b7 00 00 	lea    0xb77e(%rip),%rsi        # 40f306 <_IO_stdin_used+0x306>
  403b88:	48 89 df             	mov    %rbx,%rdi
  403b8b:	e8 30 0a 00 00       	call   4045c0 <sprite>
  403b90:	48 89 83 10 04 00 00 	mov    %rax,0x410(%rbx)
	sp[SP_GROUND_BLR] = sprite(g, "textures/gen/BotLR.xpm");
  403b97:	48 8d 35 7c b7 00 00 	lea    0xb77c(%rip),%rsi        # 40f31a <_IO_stdin_used+0x31a>
  403b9e:	48 89 df             	mov    %rbx,%rdi
  403ba1:	e8 1a 0a 00 00       	call   4045c0 <sprite>
  403ba6:	48 89 83 18 04 00 00 	mov    %rax,0x418(%rbx)
	sp[SP_GROUND_LBT] = sprite(g, "textures/gen/LeftBT.xpm");
  403bad:	48 8d 35 7d b7 00 00 	lea    0xb77d(%rip),%rsi        # 40f331 <_IO_stdin_used+0x331>
  403bb4:	48 89 df             	mov    %rbx,%rdi
  403bb7:	e8 04 0a 00 00       	call   4045c0 <sprite>
  403bbc:	48 89 83 20 04 00 00 	mov    %rax,0x420(%rbx)
	sp[SP_GROUND_BT] = sprite(g, "textures/gen/BT.xpm");
  403bc3:	48 8d 35 7f b7 00 00 	lea    0xb77f(%rip),%rsi        # 40f349 <_IO_stdin_used+0x349>
  403bca:	48 89 df             	mov    %rbx,%rdi
  403bcd:	e8 ee 09 00 00       	call   4045c0 <sprite>
  403bd2:	48 89 83 28 04 00 00 	mov    %rax,0x428(%rbx)
	sp[SP_GROUND_RBT] = sprite(g, "textures/gen/RightBT.xpm");
  403bd9:	48 8d 35 7d b7 00 00 	lea    0xb77d(%rip),%rsi        # 40f35d <_IO_stdin_used+0x35d>
  403be0:	48 89 df             	mov    %rbx,%rdi
  403be3:	e8 d8 09 00 00       	call   4045c0 <sprite>
  403be8:	48 89 83 30 04 00 00 	mov    %rax,0x430(%rbx)
	sp[SP_GROUND_ALL] = sprite(g, "textures/gen/All.xpm");
  403bef:	48 8d 35 80 b7 00 00 	lea    0xb780(%rip),%rsi        # 40f376 <_IO_stdin_used+0x376>
  403bf6:	48 89 df             	mov    %rbx,%rdi
  403bf9:	e8 c2 09 00 00       	call   4045c0 <sprite>
  403bfe:	48 89 83 38 04 00 00 	mov    %rax,0x438(%rbx)
	sp[SP_STAIR_LEFT] = sprite(g, "textures/gen/Stair_Left.xpm");
  403c05:	48 8d 35 7f b7 00 00 	lea    0xb77f(%rip),%rsi        # 40f38b <_IO_stdin_used+0x38b>
  403c0c:	48 89 df             	mov    %rbx,%rdi
  403c0f:	e8 ac 09 00 00       	call   4045c0 <sprite>
  403c14:	48 89 83 60 05 00 00 	mov    %rax,0x560(%rbx)
	sp[SP_STAIR_MID] = sprite(g, "textures/gen/Stair_Mid.xpm");
  403c1b:	48 8d 35 85 b7 00 00 	lea    0xb785(%rip),%rsi        # 40f3a7 <_IO_stdin_used+0x3a7>
  403c22:	48 89 df             	mov    %rbx,%rdi
  403c25:	e8 96 09 00 00       	call   4045c0 <sprite>
  403c2a:	48 89 83 68 05 00 00 	mov    %rax,0x568(%rbx)
	sp[SP_STAIR_RIGHT] = sprite(g, "textures/gen/Stair_Right.xpm");
  403c31:	48 8d 35 8a b7 00 00 	lea    0xb78a(%rip),%rsi        # 40f3c2 <_IO_stdin_used+0x3c2>
  403c38:	48 89 df             	mov    %rbx,%rdi
  403c3b:	e8 80 09 00 00       	call   4045c0 <sprite>
  403c40:	48 89 83 70 05 00 00 	mov    %rax,0x570(%rbx)
	sp[SP_STAIR_ALL] = sprite(g, "textures/gen/Stair_All.xpm");
  403c47:	48 8d 35 91 b7 00 00 	lea    0xb791(%rip),%rsi        # 40f3df <_IO_stdin_used+0x3df>
  403c4e:	48 89 df             	mov    %rbx,%rdi
  403c51:	e8 6a 09 00 00       	call   4045c0 <sprite>
  403c56:	48 89 83 78 05 00 00 	mov    %rax,0x578(%rbx)
	sp[SP_BTN_LEFT_P] = sprite(g, "textures/gen/Btn_Left_Press.xpm");
  403c5d:	48 8d 35 96 b7 00 00 	lea    0xb796(%rip),%rsi        # 40f3fa <_IO_stdin_used+0x3fa>
  403c64:	48 89 df             	mov    %rbx,%rdi
  403c67:	e8 54 09 00 00       	call   4045c0 <sprite>
  403c6c:	48 89 83 a0 05 00 00 	mov    %rax,0x5a0(%rbx)
	sp[SP_BTN_MID_P] = sprite(g, "textures/gen/Btn_Mid_Press.xpm");
  403c73:	48 8d 35 a0 b7 00 00 	lea    0xb7a0(%rip),%rsi        # 40f41a <_IO_stdin_used+0x41a>
  403c7a:	48 89 df             	mov    %rbx,%rdi
  403c7d:	e8 3e 09 00 00       	call   4045c0 <sprite>
  403c82:	48 89 83 a8 05 00 00 	mov    %rax,0x5a8(%rbx)
	sp[SP_BTN_RIGHT_P] = sprite(g, "textures/gen/Btn_Right_Press.xpm");
  403c89:	48 8d 35 a9 b7 00 00 	lea    0xb7a9(%rip),%rsi        # 40f439 <_IO_stdin_used+0x439>
  403c90:	48 89 df             	mov    %rbx,%rdi
  403c93:	e8 28 09 00 00       	call   4045c0 <sprite>
  403c98:	48 89 83 b0 05 00 00 	mov    %rax,0x5b0(%rbx)
	sp[SP_BTN_ALL_P] = sprite(g, "textures/gen/Btn_All_Press.xpm");
  403c9f:	48 8d 35 b4 b7 00 00 	lea    0xb7b4(%rip),%rsi        # 40f45a <_IO_stdin_used+0x45a>
  403ca6:	48 89 df             	mov    %rbx,%rdi
  403ca9:	e8 12 09 00 00       	call   4045c0 <sprite>
  403cae:	48 89 83 b8 05 00 00 	mov    %rax,0x5b8(%rbx)
	sp[SP_HL_TL] = sprite(g, "textures/gen/hl_tl.xpm");
  403cb5:	48 8d 35 bd b7 00 00 	lea    0xb7bd(%rip),%rsi        # 40f479 <_IO_stdin_used+0x479>
  403cbc:	48 89 df             	mov    %rbx,%rdi
  403cbf:	e8 fc 08 00 00       	call   4045c0 <sprite>
  403cc4:	48 89 83 c8 05 00 00 	mov    %rax,0x5c8(%rbx)
	sp[SP_HL_TR] = sprite(g, "textures/gen/hl_tr.xpm");
  403ccb:	48 8d 35 be b7 00 00 	lea    0xb7be(%rip),%rsi        # 40f490 <_IO_stdin_used+0x490>
  403cd2:	48 89 df             	mov    %rbx,%rdi
  403cd5:	e8 e6 08 00 00       	call   4045c0 <sprite>
  403cda:	48 89 83 d0 05 00 00 	mov    %rax,0x5d0(%rbx)
	sp[SP_HL_BL] = sprite(g, "textures/gen/hl_bl.xpm");
  403ce1:	48 8d 35 bf b7 00 00 	lea    0xb7bf(%rip),%rsi        # 40f4a7 <_IO_stdin_used+0x4a7>
  403ce8:	48 89 df             	mov    %rbx,%rdi
  403ceb:	e8 d0 08 00 00       	call   4045c0 <sprite>
  403cf0:	48 89 83 d8 05 00 00 	mov    %rax,0x5d8(%rbx)
	sp[SP_HL_BR] = sprite(g, "textures/gen/hl_br.xpm");
  403cf7:	48 8d 35 c0 b7 00 00 	lea    0xb7c0(%rip),%rsi        # 40f4be <_IO_stdin_used+0x4be>
  403cfe:	48 89 df             	mov    %rbx,%rdi
  403d01:	e8 ba 08 00 00       	call   4045c0 <sprite>
  403d06:	48 89 83 e0 05 00 00 	mov    %rax,0x5e0(%rbx)
	sp[SP_BNR_TL] = sprite(g, "textures/gen/Bnr_TopLeft.xpm");
  403d0d:	48 8d 35 c1 b7 00 00 	lea    0xb7c1(%rip),%rsi        # 40f4d5 <_IO_stdin_used+0x4d5>
  403d14:	48 89 df             	mov    %rbx,%rdi
  403d17:	e8 a4 08 00 00       	call   4045c0 <sprite>
  403d1c:	48 89 83 e8 05 00 00 	mov    %rax,0x5e8(%rbx)
	sp[SP_BNR_T] = sprite(g, "textures/gen/Bnr_Top.xpm");
  403d23:	48 8d 35 c8 b7 00 00 	lea    0xb7c8(%rip),%rsi        # 40f4f2 <_IO_stdin_used+0x4f2>
  403d2a:	48 89 df             	mov    %rbx,%rdi
  403d2d:	e8 8e 08 00 00       	call   4045c0 <sprite>
  403d32:	48 89 83 f0 05 00 00 	mov    %rax,0x5f0(%rbx)
	sp[SP_BNR_TR] = sprite(g, "textures/gen/Bnr_TopRight.xpm");
  403d39:	48 8d 35 cb b7 00 00 	lea    0xb7cb(%rip),%rsi        # 40f50b <_IO_stdin_used+0x50b>
  403d40:	48 89 df             	mov    %rbx,%rdi
  403d43:	e8 78 08 00 00       	call   4045c0 <sprite>
  403d48:	48 89 83 f8 05 00 00 	mov    %rax,0x5f8(%rbx)
	sp[SP_BNR_L] = sprite(g, "textures/gen/Bnr_Left.xpm");
  403d4f:	48 8d 35 d3 b7 00 00 	lea    0xb7d3(%rip),%rsi        # 40f529 <_IO_stdin_used+0x529>
  403d56:	48 89 df             	mov    %rbx,%rdi
  403d59:	e8 62 08 00 00       	call   4045c0 <sprite>
  403d5e:	48 89 83 00 06 00 00 	mov    %rax,0x600(%rbx)
	sp[SP_BNR_M] = sprite(g, "textures/gen/Bnr_Mid.xpm");
  403d65:	48 8d 35 d7 b7 00 00 	lea    0xb7d7(%rip),%rsi        # 40f543 <_IO_stdin_used+0x543>
  403d6c:	48 89 df             	mov    %rbx,%rdi
  403d6f:	e8 4c 08 00 00       	call   4045c0 <sprite>
  403d74:	48 89 83 08 06 00 00 	mov    %rax,0x608(%rbx)
	sp[SP_BNR_R] = sprite(g, "textures/gen/Bnr_Right.xpm");
  403d7b:	48 8d 35 da b7 00 00 	lea    0xb7da(%rip),%rsi        # 40f55c <_IO_stdin_used+0x55c>
  403d82:	48 89 df             	mov    %rbx,%rdi
  403d85:	e8 36 08 00 00       	call   4045c0 <sprite>
  403d8a:	48 89 83 10 06 00 00 	mov    %rax,0x610(%rbx)
	sp[SP_BNR_BL] = sprite(g, "textures/gen/Bnr_BotLeft.xpm");
  403d91:	48 8d 35 df b7 00 00 	lea    0xb7df(%rip),%rsi        # 40f577 <_IO_stdin_used+0x577>
  403d98:	48 89 df             	mov    %rbx,%rdi
  403d9b:	e8 20 08 00 00       	call   4045c0 <sprite>
  403da0:	48 89 83 18 06 00 00 	mov    %rax,0x618(%rbx)
	sp[SP_BNR_B] = sprite(g, "textures/gen/Bnr_Bot.xpm");
  403da7:	48 8d 35 e6 b7 00 00 	lea    0xb7e6(%rip),%rsi        # 40f594 <_IO_stdin_used+0x594>
  403dae:	48 89 df             	mov    %rbx,%rdi
  403db1:	e8 0a 08 00 00       	call   4045c0 <sprite>
  403db6:	48 89 83 20 06 00 00 	mov    %rax,0x620(%rbx)
	sp[SP_BNR_BR] = sprite(g, "textures/gen/Bnr_BotRight.xpm");
  403dbd:	48 8d 35 e9 b7 00 00 	lea    0xb7e9(%rip),%rsi        # 40f5ad <_IO_stdin_used+0x5ad>
  403dc4:	48 89 df             	mov    %rbx,%rdi
  403dc7:	e8 f4 07 00 00       	call   4045c0 <sprite>
  403dcc:	48 89 83 28 06 00 00 	mov    %rax,0x628(%rbx)
	sp[SP_BNRV_TL] = sprite(g, "textures/gen/Bnrv_TopLeft.xpm");
  403dd3:	48 8d 35 f1 b7 00 00 	lea    0xb7f1(%rip),%rsi        # 40f5cb <_IO_stdin_used+0x5cb>
  403dda:	48 89 df             	mov    %rbx,%rdi
  403ddd:	e8 de 07 00 00       	call   4045c0 <sprite>
  403de2:	48 89 83 30 06 00 00 	mov    %rax,0x630(%rbx)
	sp[SP_BNRV_T] = sprite(g, "textures/gen/Bnrv_Top.xpm");
  403de9:	48 8d 35 f9 b7 00 00 	lea    0xb7f9(%rip),%rsi        # 40f5e9 <_IO_stdin_used+0x5e9>
  403df0:	48 89 df             	mov    %rbx,%rdi
  403df3:	e8 c8 07 00 00       	call   4045c0 <sprite>
  403df8:	48 89 83 38 06 00 00 	mov    %rax,0x638(%rbx)
	sp[SP_BNRV_TR] = sprite(g, "textures/gen/Bnrv_TopRight.xpm");
  403dff:	48 8d 35 fd b7 00 00 	lea    0xb7fd(%rip),%rsi        # 40f603 <_IO_stdin_used+0x603>
  403e06:	48 89 df             	mov    %rbx,%rdi
  403e09:	e8 b2 07 00 00       	call   4045c0 <sprite>
  403e0e:	48 89 83 40 06 00 00 	mov    %rax,0x640(%rbx)
	sp[SP_BNRV_L] = sprite(g, "textures/gen/Bnrv_Left.xpm");
  403e15:	48 8d 35 06 b8 00 00 	lea    0xb806(%rip),%rsi        # 40f622 <_IO_stdin_used+0x622>
  403e1c:	48 89 df             	mov    %rbx,%rdi
  403e1f:	e8 9c 07 00 00       	call   4045c0 <sprite>
  403e24:	48 89 83 48 06 00 00 	mov    %rax,0x648(%rbx)
	sp[SP_BNRV_M] = sprite(g, "textures/gen/Bnrv_Mid.xpm");
  403e2b:	48 8d 35 0b b8 00 00 	lea    0xb80b(%rip),%rsi        # 40f63d <_IO_stdin_used+0x63d>
  403e32:	48 89 df             	mov    %rbx,%rdi
  403e35:	e8 86 07 00 00       	call   4045c0 <sprite>
  403e3a:	48 89 83 50 06 00 00 	mov    %rax,0x650(%rbx)
	sp[SP_BNRV_R] = sprite(g, "textures/gen/Bnrv_Right.xpm");
  403e41:	48 8d 35 0f b8 00 00 	lea    0xb80f(%rip),%rsi        # 40f657 <_IO_stdin_used+0x657>
  403e48:	48 89 df             	mov    %rbx,%rdi
  403e4b:	e8 70 07 00 00       	call   4045c0 <sprite>
  403e50:	48 89 83 58 06 00 00 	mov    %rax,0x658(%rbx)
	sp[SP_BNRV_BL] = sprite(g, "textures/gen/Bnrv_BotLeft.xpm");
  403e57:	48 8d 35 15 b8 00 00 	lea    0xb815(%rip),%rsi        # 40f673 <_IO_stdin_used+0x673>
  403e5e:	48 89 df             	mov    %rbx,%rdi
  403e61:	e8 5a 07 00 00       	call   4045c0 <sprite>
  403e66:	48 89 83 60 06 00 00 	mov    %rax,0x660(%rbx)
	sp[SP_BNRV_B] = sprite(g, "textures/gen/Bnrv_Bot.xpm");
  403e6d:	48 8d 35 1d b8 00 00 	lea    0xb81d(%rip),%rsi        # 40f691 <_IO_stdin_used+0x691>
  403e74:	48 89 df             	mov    %rbx,%rdi
  403e77:	e8 44 07 00 00       	call   4045c0 <sprite>
  403e7c:	48 89 83 68 06 00 00 	mov    %rax,0x668(%rbx)
	sp[SP_BNRV_BR] = sprite(g, "textures/gen/Bnrv_BotRight.xpm");
  403e83:	48 8d 35 21 b8 00 00 	lea    0xb821(%rip),%rsi        # 40f6ab <_IO_stdin_used+0x6ab>
  403e8a:	48 89 df             	mov    %rbx,%rdi
  403e8d:	e8 2e 07 00 00       	call   4045c0 <sprite>
  403e92:	48 89 83 70 06 00 00 	mov    %rax,0x670(%rbx)
	sp[SP_ONE] = sprite(g, "textures/gen/One.xpm");
  403e99:	48 8d 35 2a b8 00 00 	lea    0xb82a(%rip),%rsi        # 40f6ca <_IO_stdin_used+0x6ca>
  403ea0:	48 89 df             	mov    %rbx,%rdi
  403ea3:	e8 18 07 00 00       	call   4045c0 <sprite>
  403ea8:	48 89 83 30 07 00 00 	mov    %rax,0x730(%rbx)
	sp[SP_TWO] = sprite(g, "textures/gen/Two.xpm");
  403eaf:	48 8d 35 29 b8 00 00 	lea    0xb829(%rip),%rsi        # 40f6df <_IO_stdin_used+0x6df>
  403eb6:	48 89 df             	mov    %rbx,%rdi
  403eb9:	e8 02 07 00 00       	call   4045c0 <sprite>
  403ebe:	48 89 83 38 07 00 00 	mov    %rax,0x738(%rbx)
	sp[SP_THREE] = sprite(g, "textures/gen/Three.xpm");
  403ec5:	48 8d 35 28 b8 00 00 	lea    0xb828(%rip),%rsi        # 40f6f4 <_IO_stdin_used+0x6f4>
  403ecc:	48 89 df             	mov    %rbx,%rdi
  403ecf:	e8 ec 06 00 00       	call   4045c0 <sprite>
  403ed4:	48 89 83 40 07 00 00 	mov    %rax,0x740(%rbx)
	sp[SP_BNRCL_TL] = sprite(g, "textures/gen/Bnrcl_TopLeft.xpm");
  403edb:	48 8d 35 29 b8 00 00 	lea    0xb829(%rip),%rsi        # 40f70b <_IO_stdin_used+0x70b>
  403ee2:	48 89 df             	mov    %rbx,%rdi
  403ee5:	e8 d6 06 00 00       	call   4045c0 <sprite>
  403eea:	48 89 83 78 06 00 00 	mov    %rax,0x678(%rbx)
	sp[SP_BNRCL_T] = sprite(g, "textures/gen/Bnrcl_Top.xpm");
  403ef1:	48 8d 35 32 b8 00 00 	lea    0xb832(%rip),%rsi        # 40f72a <_IO_stdin_used+0x72a>
  403ef8:	48 89 df             	mov    %rbx,%rdi
  403efb:	e8 c0 06 00 00       	call   4045c0 <sprite>
  403f00:	48 89 83 80 06 00 00 	mov    %rax,0x680(%rbx)
	sp[SP_BNRCL_TR] = sprite(g, "textures/gen/Bnrcl_TopRight.xpm");
  403f07:	48 8d 35 37 b8 00 00 	lea    0xb837(%rip),%rsi        # 40f745 <_IO_stdin_used+0x745>
  403f0e:	48 89 df             	mov    %rbx,%rdi
  403f11:	e8 aa 06 00 00       	call   4045c0 <sprite>
  403f16:	48 89 83 88 06 00 00 	mov    %rax,0x688(%rbx)
	sp[SP_BNRCL_L] = sprite(g, "textures/gen/Bnrcl_Left.xpm");
  403f1d:	48 8d 35 41 b8 00 00 	lea    0xb841(%rip),%rsi        # 40f765 <_IO_stdin_used+0x765>
  403f24:	48 89 df             	mov    %rbx,%rdi
  403f27:	e8 94 06 00 00       	call   4045c0 <sprite>
  403f2c:	48 89 83 90 06 00 00 	mov    %rax,0x690(%rbx)
	sp[SP_BNRCL_M] = sprite(g, "textures/gen/Bnrcl_Mid.xpm");
  403f33:	48 8d 35 47 b8 00 00 	lea    0xb847(%rip),%rsi        # 40f781 <_IO_stdin_used+0x781>
  403f3a:	48 89 df             	mov    %rbx,%rdi
  403f3d:	e8 7e 06 00 00       	call   4045c0 <sprite>
  403f42:	48 89 83 98 06 00 00 	mov    %rax,0x698(%rbx)
	sp[SP_BNRCL_R] = sprite(g, "textures/gen/Bnrcl_Right.xpm");
  403f49:	48 8d 35 4c b8 00 00 	lea    0xb84c(%rip),%rsi        # 40f79c <_IO_stdin_used+0x79c>
  403f50:	48 89 df             	mov    %rbx,%rdi
  403f53:	e8 68 06 00 00       	call   4045c0 <sprite>
  403f58:	48 89 83 a0 06 00 00 	mov    %rax,0x6a0(%rbx)
	sp[SP_BNRCL_BL] = sprite(g, "textures/gen/Bnrcl_BotLeft.xpm");
  403f5f:	48 8d 35 53 b8 00 00 	lea    0xb853(%rip),%rsi        # 40f7b9 <_IO_stdin_used+0x7b9>
  403f66:	48 89 df             	mov    %rbx,%rdi
  403f69:	e8 52 06 00 00       	call   4045c0 <sprite>
  403f6e:	48 89 83 a8 06 00 00 	mov    %rax,0x6a8(%rbx)
	sp[SP_BNRCL_B] = sprite(g, "textures/gen/Bnrcl_Bot.xpm");
  403f75:	48 8d 35 5c b8 00 00 	lea    0xb85c(%rip),%rsi        # 40f7d8 <_IO_stdin_used+0x7d8>
  403f7c:	48 89 df             	mov    %rbx,%rdi
  403f7f:	e8 3c 06 00 00       	call   4045c0 <sprite>
  403f84:	48 89 83 b0 06 00 00 	mov    %rax,0x6b0(%rbx)
	sp[SP_BNRCL_BR] = sprite(g, "textures/gen/Bnrcl_BotRight.xpm");
  403f8b:	48 8d 35 61 b8 00 00 	lea    0xb861(%rip),%rsi        # 40f7f3 <_IO_stdin_used+0x7f3>
  403f92:	48 89 df             	mov    %rbx,%rdi
  403f95:	e8 26 06 00 00       	call   4045c0 <sprite>
  403f9a:	48 89 83 b8 06 00 00 	mov    %rax,0x6b8(%rbx)
	sp[SP_BNRCR_TL] = sprite(g, "textures/gen/Bnrcr_TopLeft.xpm");
  403fa1:	48 8d 35 6b b8 00 00 	lea    0xb86b(%rip),%rsi        # 40f813 <_IO_stdin_used+0x813>
  403fa8:	48 89 df             	mov    %rbx,%rdi
  403fab:	e8 10 06 00 00       	call   4045c0 <sprite>
  403fb0:	48 89 83 c0 06 00 00 	mov    %rax,0x6c0(%rbx)
	sp[SP_BNRCR_T] = sprite(g, "textures/gen/Bnrcr_Top.xpm");
  403fb7:	48 8d 35 74 b8 00 00 	lea    0xb874(%rip),%rsi        # 40f832 <_IO_stdin_used+0x832>
  403fbe:	48 89 df             	mov    %rbx,%rdi
  403fc1:	e8 fa 05 00 00       	call   4045c0 <sprite>
  403fc6:	48 89 83 c8 06 00 00 	mov    %rax,0x6c8(%rbx)
	sp[SP_BNRCR_TR] = sprite(g, "textures/gen/Bnrcr_TopRight.xpm");
  403fcd:	48 8d 35 79 b8 00 00 	lea    0xb879(%rip),%rsi        # 40f84d <_IO_stdin_used+0x84d>
  403fd4:	48 89 df             	mov    %rbx,%rdi
  403fd7:	e8 e4 05 00 00       	call   4045c0 <sprite>
  403fdc:	48 89 83 d0 06 00 00 	mov    %rax,0x6d0(%rbx)
	sp[SP_BNRCR_L] = sprite(g, "textures/gen/Bnrcr_Left.xpm");
  403fe3:	48 8d 35 83 b8 00 00 	lea    0xb883(%rip),%rsi        # 40f86d <_IO_stdin_used+0x86d>
  403fea:	48 89 df             	mov    %rbx,%rdi
  403fed:	e8 ce 05 00 00       	call   4045c0 <sprite>
  403ff2:	48 89 83 d8 06 00 00 	mov    %rax,0x6d8(%rbx)
	sp[SP_BNRCR_M] = sprite(g, "textures/gen/Bnrcr_Mid.xpm");
  403ff9:	48 8d 35 89 b8 00 00 	lea    0xb889(%rip),%rsi        # 40f889 <_IO_stdin_used+0x889>
  404000:	48 89 df             	mov    %rbx,%rdi
  404003:	e8 b8 05 00 00       	call   4045c0 <sprite>
  404008:	48 89 83 e0 06 00 00 	mov    %rax,0x6e0(%rbx)
	sp[SP_BNRCR_R] = sprite(g, "textures/gen/Bnrcr_Right.xpm");
  40400f:	48 8d 35 8e b8 00 00 	lea    0xb88e(%rip),%rsi        # 40f8a4 <_IO_stdin_used+0x8a4>
  404016:	48 89 df             	mov    %rbx,%rdi
  404019:	e8 a2 05 00 00       	call   4045c0 <sprite>
  40401e:	48 89 83 e8 06 00 00 	mov    %rax,0x6e8(%rbx)
	sp[SP_BNRCR_BL] = sprite(g, "textures/gen/Bnrcr_BotLeft.xpm");
  404025:	48 8d 35 95 b8 00 00 	lea    0xb895(%rip),%rsi        # 40f8c1 <_IO_stdin_used+0x8c1>
  40402c:	48 89 df             	mov    %rbx,%rdi
  40402f:	e8 8c 05 00 00       	call   4045c0 <sprite>
  404034:	48 89 83 f0 06 00 00 	mov    %rax,0x6f0(%rbx)
	sp[SP_BNRCR_B] = sprite(g, "textures/gen/Bnrcr_Bot.xpm");
  40403b:	48 8d 35 9e b8 00 00 	lea    0xb89e(%rip),%rsi        # 40f8e0 <_IO_stdin_used+0x8e0>
  404042:	48 89 df             	mov    %rbx,%rdi
  404045:	e8 76 05 00 00       	call   4045c0 <sprite>
  40404a:	48 89 83 f8 06 00 00 	mov    %rax,0x6f8(%rbx)
	sp[SP_BNRCR_BR] = sprite(g, "textures/gen/Bnrcr_BotRight.xpm");
  404051:	48 8d 35 a3 b8 00 00 	lea    0xb8a3(%rip),%rsi        # 40f8fb <_IO_stdin_used+0x8fb>
  404058:	48 89 df             	mov    %rbx,%rdi
  40405b:	e8 60 05 00 00       	call   4045c0 <sprite>
  404060:	48 89 83 00 07 00 00 	mov    %rax,0x700(%rbx)
	sp[SP_BTN_LEFT] = sprite(g, "textures/gen/Btn_Left.xpm");
  404067:	48 8d 35 ad b8 00 00 	lea    0xb8ad(%rip),%rsi        # 40f91b <_IO_stdin_used+0x91b>
  40406e:	48 89 df             	mov    %rbx,%rdi
  404071:	e8 4a 05 00 00       	call   4045c0 <sprite>
  404076:	48 89 83 80 05 00 00 	mov    %rax,0x580(%rbx)
	sp[SP_BTN_MID] = sprite(g, "textures/gen/Btn_Mid.xpm");
  40407d:	48 8d 35 b1 b8 00 00 	lea    0xb8b1(%rip),%rsi        # 40f935 <_IO_stdin_used+0x935>
  404084:	48 89 df             	mov    %rbx,%rdi
  404087:	e8 34 05 00 00       	call   4045c0 <sprite>
  40408c:	48 89 83 88 05 00 00 	mov    %rax,0x588(%rbx)
	sp[SP_BTN_RIGHT] = sprite(g, "textures/gen/Btn_Right.xpm");
  404093:	48 8d 35 b4 b8 00 00 	lea    0xb8b4(%rip),%rsi        # 40f94e <_IO_stdin_used+0x94e>
  40409a:	48 89 df             	mov    %rbx,%rdi
  40409d:	e8 1e 05 00 00       	call   4045c0 <sprite>
  4040a2:	48 89 83 90 05 00 00 	mov    %rax,0x590(%rbx)
	sp[SP_BTN_ALL] = sprite(g, "textures/gen/Btn_All.xpm");
  4040a9:	48 8d 35 b9 b8 00 00 	lea    0xb8b9(%rip),%rsi        # 40f969 <_IO_stdin_used+0x969>
  4040b0:	48 89 df             	mov    %rbx,%rdi
  4040b3:	e8 08 05 00 00       	call   4045c0 <sprite>
  4040b8:	48 89 83 98 05 00 00 	mov    %rax,0x598(%rbx)
	sp[SP_POINTER] = sprite(g, "textures/gen/Pointer.xpm");
  4040bf:	48 8d 35 bc b8 00 00 	lea    0xb8bc(%rip),%rsi        # 40f982 <_IO_stdin_used+0x982>
  4040c6:	48 89 df             	mov    %rbx,%rdi
  4040c9:	e8 f2 04 00 00       	call   4045c0 <sprite>
  4040ce:	48 89 83 c0 05 00 00 	mov    %rax,0x5c0(%rbx)
	sp[SP_DOOR] = sprite(g, "textures/gen/Water.xpm");
  4040d5:	48 89 df             	mov    %rbx,%rdi
  4040d8:	4c 89 fe             	mov    %r15,%rsi
  4040db:	e8 e0 04 00 00       	call   4045c0 <sprite>
  4040e0:	48 89 83 b8 03 00 00 	mov    %rax,0x3b8(%rbx)
	sp[SP_RBN_LEFT] = sprite(g, "textures/gen/Rbn_Left.xpm");
  4040e7:	48 8d 35 ad b8 00 00 	lea    0xb8ad(%rip),%rsi        # 40f99b <_IO_stdin_used+0x99b>
  4040ee:	48 89 df             	mov    %rbx,%rdi
  4040f1:	e8 ca 04 00 00       	call   4045c0 <sprite>
  4040f6:	48 89 83 08 07 00 00 	mov    %rax,0x708(%rbx)
	sp[SP_RBN_MID] = sprite(g, "textures/gen/Rbn_Mid.xpm");
  4040fd:	48 8d 35 b1 b8 00 00 	lea    0xb8b1(%rip),%rsi        # 40f9b5 <_IO_stdin_used+0x9b5>
  404104:	48 89 df             	mov    %rbx,%rdi
  404107:	e8 b4 04 00 00       	call   4045c0 <sprite>
  40410c:	48 89 83 10 07 00 00 	mov    %rax,0x710(%rbx)
	sp[SP_RBN_RIGHT] = sprite(g, "textures/gen/Rbn_Right.xpm");
  404113:	48 8d 35 b4 b8 00 00 	lea    0xb8b4(%rip),%rsi        # 40f9ce <_IO_stdin_used+0x9ce>
  40411a:	48 89 df             	mov    %rbx,%rdi
  40411d:	e8 9e 04 00 00       	call   4045c0 <sprite>
  404122:	48 89 83 18 07 00 00 	mov    %rax,0x718(%rbx)
	sp[SP_PLUS] = sprite(g, "textures/gen/Plus.xpm");
  404129:	48 8d 35 b9 b8 00 00 	lea    0xb8b9(%rip),%rsi        # 40f9e9 <_IO_stdin_used+0x9e9>
  404130:	48 89 df             	mov    %rbx,%rdi
  404133:	e8 88 04 00 00       	call   4045c0 <sprite>
  404138:	48 89 83 20 07 00 00 	mov    %rax,0x720(%rbx)
	sp[SP_CLIFF_TL] = sprite(g, "textures/gen/Cliff_TopLeft.xpm");
  40413f:	48 8d 35 b9 b8 00 00 	lea    0xb8b9(%rip),%rsi        # 40f9ff <_IO_stdin_used+0x9ff>
  404146:	48 89 df             	mov    %rbx,%rdi
  404149:	e8 72 04 00 00       	call   4045c0 <sprite>
  40414e:	48 89 83 c0 04 00 00 	mov    %rax,0x4c0(%rbx)
	sp[SP_CLIFF_T] = sprite(g, "textures/gen/Cliff_Top.xpm");
  404155:	48 8d 35 c2 b8 00 00 	lea    0xb8c2(%rip),%rsi        # 40fa1e <_IO_stdin_used+0xa1e>
  40415c:	48 89 df             	mov    %rbx,%rdi
  40415f:	e8 5c 04 00 00       	call   4045c0 <sprite>
  404164:	48 89 83 c8 04 00 00 	mov    %rax,0x4c8(%rbx)
	sp[SP_CLIFF_TR] = sprite(g, "textures/gen/Cliff_TopRight.xpm");
  40416b:	48 8d 35 c7 b8 00 00 	lea    0xb8c7(%rip),%rsi        # 40fa39 <_IO_stdin_used+0xa39>
  404172:	48 89 df             	mov    %rbx,%rdi
  404175:	e8 46 04 00 00       	call   4045c0 <sprite>
  40417a:	48 89 83 d0 04 00 00 	mov    %rax,0x4d0(%rbx)
	sp[SP_CLIFF_L] = sprite(g, "textures/gen/Cliff_Left.xpm");
  404181:	48 8d 35 d1 b8 00 00 	lea    0xb8d1(%rip),%rsi        # 40fa59 <_IO_stdin_used+0xa59>
  404188:	48 89 df             	mov    %rbx,%rdi
  40418b:	e8 30 04 00 00       	call   4045c0 <sprite>
  404190:	48 89 83 d8 04 00 00 	mov    %rax,0x4d8(%rbx)
	sp[SP_CLIFF_M] = sprite(g, "textures/gen/Cliff_Mid.xpm");
  404197:	48 8d 35 d7 b8 00 00 	lea    0xb8d7(%rip),%rsi        # 40fa75 <_IO_stdin_used+0xa75>
  40419e:	48 89 df             	mov    %rbx,%rdi
  4041a1:	e8 1a 04 00 00       	call   4045c0 <sprite>
  4041a6:	48 89 83 e0 04 00 00 	mov    %rax,0x4e0(%rbx)
	sp[SP_CLIFF_R] = sprite(g, "textures/gen/Cliff_Right.xpm");
  4041ad:	48 8d 35 dc b8 00 00 	lea    0xb8dc(%rip),%rsi        # 40fa90 <_IO_stdin_used+0xa90>
  4041b4:	48 89 df             	mov    %rbx,%rdi
  4041b7:	e8 04 04 00 00       	call   4045c0 <sprite>
  4041bc:	48 89 83 e8 04 00 00 	mov    %rax,0x4e8(%rbx)
	sp[SP_CLIFF_BL] = sprite(g, "textures/gen/Cliff_BotLeft.xpm");
  4041c3:	48 8d 35 e3 b8 00 00 	lea    0xb8e3(%rip),%rsi        # 40faad <_IO_stdin_used+0xaad>
  4041ca:	48 89 df             	mov    %rbx,%rdi
  4041cd:	e8 ee 03 00 00       	call   4045c0 <sprite>
  4041d2:	48 89 83 f0 04 00 00 	mov    %rax,0x4f0(%rbx)
	sp[SP_CLIFF_B] = sprite(g, "textures/gen/Cliff_Bot.xpm");
  4041d9:	48 8d 35 ec b8 00 00 	lea    0xb8ec(%rip),%rsi        # 40facc <_IO_stdin_used+0xacc>
  4041e0:	48 89 df             	mov    %rbx,%rdi
  4041e3:	e8 d8 03 00 00       	call   4045c0 <sprite>
  4041e8:	48 89 83 f8 04 00 00 	mov    %rax,0x4f8(%rbx)
	sp[SP_CLIFF_BR] = sprite(g, "textures/gen/Cliff_BotRight.xpm");
  4041ef:	48 8d 35 f1 b8 00 00 	lea    0xb8f1(%rip),%rsi        # 40fae7 <_IO_stdin_used+0xae7>
  4041f6:	48 89 df             	mov    %rbx,%rdi
  4041f9:	e8 c2 03 00 00       	call   4045c0 <sprite>
  4041fe:	48 89 83 00 05 00 00 	mov    %rax,0x500(%rbx)
	sp[SP_CLIFF_TLR] = sprite(g, "textures/gen/Cliff_TopLR.xpm");
  404205:	48 8d 35 fb b8 00 00 	lea    0xb8fb(%rip),%rsi        # 40fb07 <_IO_stdin_used+0xb07>
  40420c:	48 89 df             	mov    %rbx,%rdi
  40420f:	e8 ac 03 00 00       	call   4045c0 <sprite>
  404214:	48 89 83 08 05 00 00 	mov    %rax,0x508(%rbx)
	sp[SP_CLIFF_LR] = sprite(g, "textures/gen/Cliff_LR.xpm");
  40421b:	48 8d 35 02 b9 00 00 	lea    0xb902(%rip),%rsi        # 40fb24 <_IO_stdin_used+0xb24>
  404222:	48 89 df             	mov    %rbx,%rdi
  404225:	e8 96 03 00 00       	call   4045c0 <sprite>
  40422a:	48 89 83 10 05 00 00 	mov    %rax,0x510(%rbx)
	sp[SP_CLIFF_BLR] = sprite(g, "textures/gen/Cliff_BotLR.xpm");
  404231:	48 8d 35 06 b9 00 00 	lea    0xb906(%rip),%rsi        # 40fb3e <_IO_stdin_used+0xb3e>
  404238:	48 89 df             	mov    %rbx,%rdi
  40423b:	e8 80 03 00 00       	call   4045c0 <sprite>
  404240:	48 89 83 18 05 00 00 	mov    %rax,0x518(%rbx)
	sp[SP_CLIFF_LBT] = sprite(g, "textures/gen/Cliff_LeftBT.xpm");
  404247:	48 8d 35 0d b9 00 00 	lea    0xb90d(%rip),%rsi        # 40fb5b <_IO_stdin_used+0xb5b>
  40424e:	48 89 df             	mov    %rbx,%rdi
  404251:	e8 6a 03 00 00       	call   4045c0 <sprite>
  404256:	48 89 83 20 05 00 00 	mov    %rax,0x520(%rbx)
	sp[SP_CLIFF_BT] = sprite(g, "textures/gen/Cliff_BT.xpm");
  40425d:	48 8d 35 15 b9 00 00 	lea    0xb915(%rip),%rsi        # 40fb79 <_IO_stdin_used+0xb79>
  404264:	48 89 df             	mov    %rbx,%rdi
  404267:	e8 54 03 00 00       	call   4045c0 <sprite>
  40426c:	48 89 83 28 05 00 00 	mov    %rax,0x528(%rbx)
	sp[SP_CLIFF_RBT] = sprite(g, "textures/gen/Cliff_RightBT.xpm");
  404273:	48 8d 35 19 b9 00 00 	lea    0xb919(%rip),%rsi        # 40fb93 <_IO_stdin_used+0xb93>
  40427a:	48 89 df             	mov    %rbx,%rdi
  40427d:	e8 3e 03 00 00       	call   4045c0 <sprite>
  404282:	48 89 83 30 05 00 00 	mov    %rax,0x530(%rbx)
	sp[SP_CLIFF_ALL] = sprite(g, "textures/gen/Cliff_All.xpm");
  404289:	48 8d 35 22 b9 00 00 	lea    0xb922(%rip),%rsi        # 40fbb2 <_IO_stdin_used+0xbb2>
  404290:	48 89 df             	mov    %rbx,%rdi
  404293:	e8 28 03 00 00       	call   4045c0 <sprite>
  404298:	48 89 83 38 05 00 00 	mov    %rax,0x538(%rbx)
	sp[SP_CLIFF_SIDE_L] = sprite(g, "textures/gen/Cliff_SideLeft.xpm");
  40429f:	48 8d 35 27 b9 00 00 	lea    0xb927(%rip),%rsi        # 40fbcd <_IO_stdin_used+0xbcd>
  4042a6:	48 89 df             	mov    %rbx,%rdi
  4042a9:	e8 12 03 00 00       	call   4045c0 <sprite>
  4042ae:	48 89 83 40 05 00 00 	mov    %rax,0x540(%rbx)
	sp[SP_CLIFF_SIDE_M] = sprite(g, "textures/gen/Cliff_SideMid.xpm");
  4042b5:	48 8d 35 31 b9 00 00 	lea    0xb931(%rip),%rsi        # 40fbed <_IO_stdin_used+0xbed>
  4042bc:	48 89 df             	mov    %rbx,%rdi
  4042bf:	e8 fc 02 00 00       	call   4045c0 <sprite>
  4042c4:	48 89 83 48 05 00 00 	mov    %rax,0x548(%rbx)
	sp[SP_CLIFF_SIDE_R] = sprite(g, "textures/gen/Cliff_SideRight.xpm");
  4042cb:	48 8d 35 3a b9 00 00 	lea    0xb93a(%rip),%rsi        # 40fc0c <_IO_stdin_used+0xc0c>
  4042d2:	48 89 df             	mov    %rbx,%rdi
  4042d5:	e8 e6 02 00 00       	call   4045c0 <sprite>
  4042da:	48 89 83 50 05 00 00 	mov    %rax,0x550(%rbx)
	sp[SP_CLIFF_SIDE_ALL] = sprite(g, "textures/gen/Cliff_SideAll.xpm");
  4042e1:	48 8d 35 45 b9 00 00 	lea    0xb945(%rip),%rsi        # 40fc2d <_IO_stdin_used+0xc2d>
  4042e8:	48 89 df             	mov    %rbx,%rdi
  4042eb:	e8 d0 02 00 00       	call   4045c0 <sprite>
  4042f0:	48 89 83 58 05 00 00 	mov    %rax,0x558(%rbx)
	_load_sprites2(game, game->sprites);
	_load_sprites3(game, game->sprites);
	_load_sprites4(game, game->sprites);
	game->sprites[SP_GOLDMINEI] = sprite(game, "textures/gen/GoldMineI.xpm");
  4042f7:	48 8d 35 d2 ae 00 00 	lea    0xaed2(%rip),%rsi        # 40f1d0 <_IO_stdin_used+0x1d0>
  4042fe:	48 89 df             	mov    %rbx,%rdi
  404301:	e8 ba 02 00 00       	call   4045c0 <sprite>
  404306:	48 89 83 50 07 00 00 	mov    %rax,0x750(%rbx)
	game->sprites[SP_GOLDMINEA] = sprite(game, "textures/gen/GoldMineA.xpm");
  40430d:	48 8d 35 d7 ae 00 00 	lea    0xaed7(%rip),%rsi        # 40f1eb <_IO_stdin_used+0x1eb>
  404314:	48 89 df             	mov    %rbx,%rdi
  404317:	e8 a4 02 00 00       	call   4045c0 <sprite>
  40431c:	48 89 83 48 07 00 00 	mov    %rax,0x748(%rbx)
	load_sprites_pt2(game, game->sprites);
  404323:	48 89 df             	mov    %rbx,%rdi
  404326:	4c 89 f6             	mov    %r14,%rsi
  404329:	31 c0                	xor    %eax,%eax
  40432b:	5b                   	pop    %rbx
  40432c:	41 5e                	pop    %r14
  40432e:	41 5f                	pop    %r15
  404330:	e9 0b 00 00 00       	jmp    404340 <load_sprites_pt2>
  404335:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40433c:	00 00 00 
  40433f:	90                   	nop

0000000000404340 <load_sprites_pt2>:
	g->symbols_font = ft_calloc(1, sizeof(t_font));
	g->symbols_font->chars[(int) 'A'] = sprite(g, "textures/gen/heart.xpm");
}

void	load_sprites_pt2(t_game *g, t_img **sp)
{
  404340:	41 56                	push   %r14
  404342:	53                   	push   %rbx
  404343:	50                   	push   %rax
  404344:	49 89 f6             	mov    %rsi,%r14
  404347:	48 89 fb             	mov    %rdi,%rbx
	sp[SP_SAND_M] = sprite(g, "textures/gen/MidS.xpm");
  40434a:	48 8d 35 fb b8 00 00 	lea    0xb8fb(%rip),%rsi        # 40fc4c <_IO_stdin_used+0xc4c>
  404351:	e8 6a 02 00 00       	call   4045c0 <sprite>
  404356:	49 89 86 90 00 00 00 	mov    %rax,0x90(%r14)
	sp[SP_SAND_T] = sprite(g, "textures/gen/TopS.xpm");
  40435d:	48 8d 35 fe b8 00 00 	lea    0xb8fe(%rip),%rsi        # 40fc62 <_IO_stdin_used+0xc62>
  404364:	48 89 df             	mov    %rbx,%rdi
  404367:	e8 54 02 00 00       	call   4045c0 <sprite>
  40436c:	49 89 86 98 00 00 00 	mov    %rax,0x98(%r14)
	sp[SP_SAND_TL] = sprite(g, "textures/gen/TopLeftS.xpm");
  404373:	48 8d 35 fe b8 00 00 	lea    0xb8fe(%rip),%rsi        # 40fc78 <_IO_stdin_used+0xc78>
  40437a:	48 89 df             	mov    %rbx,%rdi
  40437d:	e8 3e 02 00 00       	call   4045c0 <sprite>
  404382:	49 89 86 a0 00 00 00 	mov    %rax,0xa0(%r14)
	sp[SP_SAND_TR] = sprite(g, "textures/gen/TopRightS.xpm");
  404389:	48 8d 35 02 b9 00 00 	lea    0xb902(%rip),%rsi        # 40fc92 <_IO_stdin_used+0xc92>
  404390:	48 89 df             	mov    %rbx,%rdi
  404393:	e8 28 02 00 00       	call   4045c0 <sprite>
  404398:	49 89 86 a8 00 00 00 	mov    %rax,0xa8(%r14)
	sp[SP_SAND_L] = sprite(g, "textures/gen/LeftS.xpm");
  40439f:	48 8d 35 07 b9 00 00 	lea    0xb907(%rip),%rsi        # 40fcad <_IO_stdin_used+0xcad>
  4043a6:	48 89 df             	mov    %rbx,%rdi
  4043a9:	e8 12 02 00 00       	call   4045c0 <sprite>
  4043ae:	49 89 86 b0 00 00 00 	mov    %rax,0xb0(%r14)
	sp[SP_SAND_R] = sprite(g, "textures/gen/RightS.xpm");
  4043b5:	48 8d 35 08 b9 00 00 	lea    0xb908(%rip),%rsi        # 40fcc4 <_IO_stdin_used+0xcc4>
  4043bc:	48 89 df             	mov    %rbx,%rdi
  4043bf:	e8 fc 01 00 00       	call   4045c0 <sprite>
  4043c4:	49 89 86 b8 00 00 00 	mov    %rax,0xb8(%r14)
	sp[SP_SAND_B] = sprite(g, "textures/gen/BotS.xpm");
  4043cb:	48 8d 35 0a b9 00 00 	lea    0xb90a(%rip),%rsi        # 40fcdc <_IO_stdin_used+0xcdc>
  4043d2:	48 89 df             	mov    %rbx,%rdi
  4043d5:	e8 e6 01 00 00       	call   4045c0 <sprite>
  4043da:	49 89 86 c0 00 00 00 	mov    %rax,0xc0(%r14)
	sp[SP_SAND_BL] = sprite(g, "textures/gen/BotLeftS.xpm");
  4043e1:	48 8d 35 0a b9 00 00 	lea    0xb90a(%rip),%rsi        # 40fcf2 <_IO_stdin_used+0xcf2>
  4043e8:	48 89 df             	mov    %rbx,%rdi
  4043eb:	e8 d0 01 00 00       	call   4045c0 <sprite>
  4043f0:	49 89 86 c8 00 00 00 	mov    %rax,0xc8(%r14)
	sp[SP_SAND_BR] = sprite(g, "textures/gen/BotRightS.xpm");
  4043f7:	48 8d 35 0e b9 00 00 	lea    0xb90e(%rip),%rsi        # 40fd0c <_IO_stdin_used+0xd0c>
  4043fe:	48 89 df             	mov    %rbx,%rdi
  404401:	e8 ba 01 00 00       	call   4045c0 <sprite>
  404406:	49 89 86 d0 00 00 00 	mov    %rax,0xd0(%r14)
	sp[SP_SAND_TLR] = sprite(g, "textures/gen/TopLRS.xpm");
  40440d:	48 8d 35 13 b9 00 00 	lea    0xb913(%rip),%rsi        # 40fd27 <_IO_stdin_used+0xd27>
  404414:	48 89 df             	mov    %rbx,%rdi
  404417:	e8 a4 01 00 00       	call   4045c0 <sprite>
  40441c:	49 89 86 d8 00 00 00 	mov    %rax,0xd8(%r14)
	sp[SP_SAND_LR] = sprite(g, "textures/gen/LRS.xpm");
  404423:	48 8d 35 15 b9 00 00 	lea    0xb915(%rip),%rsi        # 40fd3f <_IO_stdin_used+0xd3f>
  40442a:	48 89 df             	mov    %rbx,%rdi
  40442d:	e8 8e 01 00 00       	call   4045c0 <sprite>
  404432:	49 89 86 e0 00 00 00 	mov    %rax,0xe0(%r14)
	sp[SP_SAND_BLR] = sprite(g, "textures/gen/BotLRS.xpm");
  404439:	48 8d 35 14 b9 00 00 	lea    0xb914(%rip),%rsi        # 40fd54 <_IO_stdin_used+0xd54>
  404440:	48 89 df             	mov    %rbx,%rdi
  404443:	e8 78 01 00 00       	call   4045c0 <sprite>
  404448:	49 89 86 e8 00 00 00 	mov    %rax,0xe8(%r14)
	sp[SP_SAND_LBT] = sprite(g, "textures/gen/LeftBTS.xpm");
  40444f:	48 8d 35 16 b9 00 00 	lea    0xb916(%rip),%rsi        # 40fd6c <_IO_stdin_used+0xd6c>
  404456:	48 89 df             	mov    %rbx,%rdi
  404459:	e8 62 01 00 00       	call   4045c0 <sprite>
  40445e:	49 89 86 f0 00 00 00 	mov    %rax,0xf0(%r14)
	sp[SP_SAND_BT] = sprite(g, "textures/gen/BTS.xpm");
  404465:	48 8d 35 19 b9 00 00 	lea    0xb919(%rip),%rsi        # 40fd85 <_IO_stdin_used+0xd85>
  40446c:	48 89 df             	mov    %rbx,%rdi
  40446f:	e8 4c 01 00 00       	call   4045c0 <sprite>
  404474:	49 89 86 f8 00 00 00 	mov    %rax,0xf8(%r14)
	sp[SP_SAND_RBT] = sprite(g, "textures/gen/RightBTS.xpm");
  40447b:	48 8d 35 18 b9 00 00 	lea    0xb918(%rip),%rsi        # 40fd9a <_IO_stdin_used+0xd9a>
  404482:	48 89 df             	mov    %rbx,%rdi
  404485:	e8 36 01 00 00       	call   4045c0 <sprite>
  40448a:	49 89 86 00 01 00 00 	mov    %rax,0x100(%r14)
	sp[SP_SAND_ALL] = sprite(g, "textures/gen/AllS.xpm");
  404491:	48 8d 35 1c b9 00 00 	lea    0xb91c(%rip),%rsi        # 40fdb4 <_IO_stdin_used+0xdb4>
  404498:	48 89 df             	mov    %rbx,%rdi
  40449b:	e8 20 01 00 00       	call   4045c0 <sprite>
  4044a0:	49 89 86 08 01 00 00 	mov    %rax,0x108(%r14)
	g->symbols_font = ft_calloc(1, sizeof(t_font));
  4044a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4044ac:	be 00 08 00 00       	mov    $0x800,%esi
  4044b1:	e8 ea 8f 00 00       	call   40d4a0 <ft_calloc>
  4044b6:	48 89 83 38 03 00 00 	mov    %rax,0x338(%rbx)
	g->symbols_font->chars[(int) 'A'] = sprite(g, "textures/gen/heart.xpm");
  4044bd:	48 8d 35 06 b9 00 00 	lea    0xb906(%rip),%rsi        # 40fdca <_IO_stdin_used+0xdca>
  4044c4:	48 89 df             	mov    %rbx,%rdi
  4044c7:	e8 f4 00 00 00       	call   4045c0 <sprite>
  4044cc:	48 8b 8b 38 03 00 00 	mov    0x338(%rbx),%rcx
  4044d3:	48 89 81 08 02 00 00 	mov    %rax,0x208(%rcx)
	_load_symbol_font(g);
}
  4044da:	48 83 c4 08          	add    $0x8,%rsp
  4044de:	5b                   	pop    %rbx
  4044df:	41 5e                	pop    %r14
  4044e1:	c3                   	ret    
  4044e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044e9:	00 00 00 
  4044ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004044f0 <key_pressed_hook>:

#include "gui.h"
#include "so_long.h"

int	key_pressed_hook(int keycode, t_game *game)
{
  4044f0:	50                   	push   %rax
	if (keycode == XK_Escape)
  4044f1:	81 ff 1b ff 00 00    	cmp    $0xff1b,%edi
  4044f7:	75 0a                	jne    404503 <key_pressed_hook+0x13>
	{
		mlx_loop_end(game->mlx);
  4044f9:	48 8b 3e             	mov    (%rsi),%rdi
  4044fc:	e8 5f 70 00 00       	call   40b560 <mlx_loop_end>
  404501:	eb 12                	jmp    404515 <key_pressed_hook+0x25>
		return (0);
	}
	if (keycode < 0 || keycode >= 0xFFFF)
  404503:	81 ff fe ff 00 00    	cmp    $0xfffe,%edi
  404509:	77 0a                	ja     404515 <key_pressed_hook+0x25>
		return (0);
	game->keys[keycode] = true;
  40450b:	48 8b 46 10          	mov    0x10(%rsi),%rax
  40450f:	89 f9                	mov    %edi,%ecx
  404511:	c6 04 08 01          	movb   $0x1,(%rax,%rcx,1)
	return (0);
}
  404515:	31 c0                	xor    %eax,%eax
  404517:	59                   	pop    %rcx
  404518:	c3                   	ret    
  404519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000404520 <key_released_hook>:

int	key_released_hook(int keycode, t_game *game)
{
	if (keycode >= 0xFFFF)
  404520:	81 ff fe ff 00 00    	cmp    $0xfffe,%edi
  404526:	7f 0b                	jg     404533 <key_released_hook+0x13>
		return (0);
	game->keys[keycode] = false;
  404528:	48 8b 46 10          	mov    0x10(%rsi),%rax
  40452c:	48 63 cf             	movslq %edi,%rcx
  40452f:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
	return (0);
}
  404533:	31 c0                	xor    %eax,%eax
  404535:	c3                   	ret    
  404536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40453d:	00 00 00 

0000000000404540 <mouse_hook>:

int	mouse_hook(unsigned int btn, int x, int y, t_game *game)
{
  404540:	50                   	push   %rax
  404541:	41 89 d0             	mov    %edx,%r8d
  404544:	89 f2                	mov    %esi,%edx
  404546:	89 f8                	mov    %edi,%eax
  404548:	83 ff 01             	cmp    $0x1,%edi
	if (game->menu_opened && btn == 1)
  40454b:	75 17                	jne    404564 <mouse_hook+0x24>
  40454d:	80 79 68 00          	cmpb   $0x0,0x68(%rcx)
  404551:	74 11                	je     404564 <mouse_hook+0x24>
		menu_mouse_click(game, game->menu, x, y);
  404553:	48 8b 71 60          	mov    0x60(%rcx),%rsi
  404557:	48 89 cf             	mov    %rcx,%rdi
  40455a:	44 89 c1             	mov    %r8d,%ecx
  40455d:	e8 fe 09 00 00       	call   404f60 <menu_mouse_click>
  404562:	eb 35                	jmp    404599 <mouse_hook+0x59>
	else if (game->editor_mode)
  404564:	80 b9 70 01 00 00 00 	cmpb   $0x0,0x170(%rcx)
  40456b:	74 11                	je     40457e <mouse_hook+0x3e>
		edit_click_hook(game, x, y, btn);
  40456d:	48 89 cf             	mov    %rcx,%rdi
  404570:	89 d6                	mov    %edx,%esi
  404572:	44 89 c2             	mov    %r8d,%edx
  404575:	89 c1                	mov    %eax,%ecx
  404577:	e8 14 2c 00 00       	call   407190 <edit_click_hook>
  40457c:	eb 1b                	jmp    404599 <mouse_hook+0x59>
	else if (game->end_reached)
  40457e:	80 b9 f0 02 00 00 00 	cmpb   $0x0,0x2f0(%rcx)
  404585:	74 12                	je     404599 <mouse_hook+0x59>
		btn_click(game, &game->end.exit, x, y);
  404587:	48 8d b1 a8 02 00 00 	lea    0x2a8(%rcx),%rsi
  40458e:	48 89 cf             	mov    %rcx,%rdi
  404591:	44 89 c1             	mov    %r8d,%ecx
  404594:	e8 57 0e 00 00       	call   4053f0 <btn_click>
	return (0);
  404599:	31 c0                	xor    %eax,%eax
  40459b:	59                   	pop    %rcx
  40459c:	c3                   	ret    
  40459d:	0f 1f 00             	nopl   (%rax)

00000000004045a0 <is_key_pressed>:
}

bool	is_key_pressed(t_game *game, int keycode)
{
	return (game->keys[keycode]);
  4045a0:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4045a4:	48 63 ce             	movslq %esi,%rcx
  4045a7:	8a 04 08             	mov    (%rax,%rcx,1),%al
  4045aa:	c3                   	ret    
  4045ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004045b0 <close_hook>:
}

int	close_hook(t_game *game)
{
  4045b0:	50                   	push   %rax
	mlx_loop_end(game->mlx);
  4045b1:	48 8b 3f             	mov    (%rdi),%rdi
  4045b4:	e8 a7 6f 00 00       	call   40b560 <mlx_loop_end>
	return (0);
  4045b9:	31 c0                	xor    %eax,%eax
  4045bb:	59                   	pop    %rcx
  4045bc:	c3                   	ret    
  4045bd:	0f 1f 00             	nopl   (%rax)

00000000004045c0 <sprite>:
/* ************************************************************************** */

#include "so_long.h"

t_img	*sprite(t_game *game, char *filename)
{
  4045c0:	50                   	push   %rax
	int	width;
	int	height;

	return (mlx_xpm_file_to_image(game->mlx, filename, &width, &height));
  4045c1:	48 8b 3f             	mov    (%rdi),%rdi
  4045c4:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  4045c9:	48 89 e1             	mov    %rsp,%rcx
  4045cc:	e8 2f 83 00 00       	call   40c900 <mlx_xpm_file_to_image>
  4045d1:	59                   	pop    %rcx
  4045d2:	c3                   	ret    
  4045d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4045da:	00 00 00 
  4045dd:	0f 1f 00             	nopl   (%rax)

00000000004045e0 <sp>:
}

t_img	**sp(t_game *game)
{
	return (game->sprites);
  4045e0:	48 8d 87 b0 03 00 00 	lea    0x3b0(%rdi),%rax
  4045e7:	c3                   	ret    
  4045e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4045ef:	00 

00000000004045f0 <update_hook>:
		game->camera_pos.y = (game->player->pos.y + game->player2->pos.y) / 2;
	}
}

int	update_hook(t_game *game)
{
  4045f0:	55                   	push   %rbp
  4045f1:	41 57                	push   %r15
  4045f3:	41 56                	push   %r14
  4045f5:	41 55                	push   %r13
  4045f7:	41 54                	push   %r12
  4045f9:	53                   	push   %rbx
  4045fa:	48 83 ec 28          	sub    $0x28,%rsp
  4045fe:	49 89 fe             	mov    %rdi,%r14
		time = getms();
		if (time - game->last_update < UPDATE_INTERVAL)
			return (0);
		game->last_update = time;
	}
	rdr_clear_screen(game, 0x0);
  404601:	31 f6                	xor    %esi,%esi
  404603:	e8 98 61 00 00       	call   40a7a0 <rdr_clear_screen>
	map2_draw(game, game->map2, game->rdr);
  404608:	49 8b 56 30          	mov    0x30(%r14),%rdx
  40460c:	49 8b 76 50          	mov    0x50(%r14),%rsi
  404610:	4c 89 f7             	mov    %r14,%rdi
  404613:	e8 c8 31 00 00       	call   4077e0 <map2_draw>
	if (game->menu_opened)
  404618:	41 80 7e 68 00       	cmpb   $0x0,0x68(%r14)
  40461d:	74 11                	je     404630 <update_hook+0x40>
		draw_menu(game, game->menu);
  40461f:	49 8b 76 60          	mov    0x60(%r14),%rsi
  404623:	4c 89 f7             	mov    %r14,%rdi
  404626:	e8 85 06 00 00       	call   404cb0 <draw_menu>
  40462b:	e9 95 02 00 00       	jmp    4048c5 <update_hook+0x2d5>
	else if (!game->end_reached)
  404630:	41 80 be f0 02 00 00 	cmpb   $0x0,0x2f0(%r14)
  404637:	00 
  404638:	74 0d                	je     404647 <update_hook+0x57>
		_update_game(game);
	else
		draw_end(game);
  40463a:	4c 89 f7             	mov    %r14,%rdi
  40463d:	e8 5e 1c 00 00       	call   4062a0 <draw_end>
  404642:	e9 7e 02 00 00       	jmp    4048c5 <update_hook+0x2d5>
	if (game->editor_mode)
  404647:	41 80 be 70 01 00 00 	cmpb   $0x0,0x170(%r14)
  40464e:	00 
  40464f:	74 0a                	je     40465b <update_hook+0x6b>
		edit_update(game);
  404651:	4c 89 f7             	mov    %r14,%rdi
  404654:	e8 c7 22 00 00       	call   406920 <edit_update>
  404659:	eb 08                	jmp    404663 <update_hook+0x73>
		draw_hud(game);
  40465b:	4c 89 f7             	mov    %r14,%rdi
  40465e:	e8 ad 02 00 00       	call   404910 <draw_hud>
	_update_entities(game, !game->editor_mode);
  404663:	41 8a 86 70 01 00 00 	mov    0x170(%r14),%al
  40466a:	88 04 24             	mov    %al,(%rsp)
	while (++i < vector_size(game->entities))
  40466d:	4d 8d 7e 20          	lea    0x20(%r14),%r15
  404671:	49 8b 7e 20          	mov    0x20(%r14),%rdi
  404675:	e8 76 5d 00 00       	call   40a3f0 <vector_size>
  40467a:	85 c0                	test   %eax,%eax
  40467c:	0f 84 96 00 00 00    	je     404718 <update_hook+0x128>
  404682:	31 ed                	xor    %ebp,%ebp
  404684:	eb 57                	jmp    4046dd <update_hook+0xed>
  404686:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40468d:	00 00 00 
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
  404690:	4d 8b 66 30          	mov    0x30(%r14),%r12
  404694:	4c 8b 6b 30          	mov    0x30(%rbx),%r13
  404698:	f2 0f 10 43 0c       	movsd  0xc(%rbx),%xmm0
  40469d:	f2 0f 10 4b 38       	movsd  0x38(%rbx),%xmm1
  4046a2:	e8 39 57 00 00       	call   409de0 <vec2_add>
			(t_add_sprite){entity->z_index, entity->level, entity->flipped,
  4046a7:	8b 43 40             	mov    0x40(%rbx),%eax
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
  4046aa:	8b 53 6c             	mov    0x6c(%rbx),%edx
			(t_add_sprite){entity->z_index, entity->level, entity->flipped,
  4046ad:	0f b6 4b 60          	movzbl 0x60(%rbx),%ecx
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
  4046b1:	48 c1 e2 20          	shl    $0x20,%rdx
  4046b5:	48 09 c2             	or     %rax,%rdx
  4046b8:	81 c9 00 01 00 00    	or     $0x100,%ecx
  4046be:	4c 89 e7             	mov    %r12,%rdi
  4046c1:	4c 89 ee             	mov    %r13,%rsi
  4046c4:	e8 57 62 00 00       	call   40a920 <rdr_add_sprite>
	while (++i < vector_size(game->entities))
  4046c9:	48 83 c5 01          	add    $0x1,%rbp
  4046cd:	49 8b 7e 20          	mov    0x20(%r14),%rdi
  4046d1:	e8 1a 5d 00 00       	call   40a3f0 <vector_size>
  4046d6:	89 c0                	mov    %eax,%eax
  4046d8:	48 39 c5             	cmp    %rax,%rbp
  4046db:	73 3b                	jae    404718 <update_hook+0x128>
		entity = game->entities[i];
  4046dd:	49 8b 07             	mov    (%r15),%rax
  4046e0:	48 8b 1c e8          	mov    (%rax,%rbp,8),%rbx
	_update_entities(game, !game->editor_mode);
  4046e4:	80 3c 24 00          	cmpb   $0x0,(%rsp)
		if (update && entity->update)
  4046e8:	75 a6                	jne    404690 <update_hook+0xa0>
  4046ea:	48 8b 43 18          	mov    0x18(%rbx),%rax
  4046ee:	48 85 c0             	test   %rax,%rax
  4046f1:	74 9d                	je     404690 <update_hook+0xa0>
			entity->update(game, entity);
  4046f3:	4c 89 f7             	mov    %r14,%rdi
  4046f6:	48 89 de             	mov    %rbx,%rsi
  4046f9:	ff d0                	call   *%rax
  4046fb:	eb 93                	jmp    404690 <update_hook+0xa0>
  4046fd:	0f 1f 00             	nopl   (%rax)
		entity_free((*entities)[i]);
  404700:	49 8b 07             	mov    (%r15),%rax
  404703:	89 d9                	mov    %ebx,%ecx
  404705:	48 8b 3c c8          	mov    (%rax,%rcx,8),%rdi
  404709:	e8 d2 18 00 00       	call   405fe0 <entity_free>
		vector_remove((void **)entities, i);
  40470e:	4c 89 ff             	mov    %r15,%rdi
  404711:	89 de                	mov    %ebx,%esi
  404713:	e8 58 5d 00 00       	call   40a470 <vector_remove>
		while (i < vector_size(*entities))
  404718:	49 8b 3f             	mov    (%r15),%rdi
  40471b:	e8 d0 5c 00 00       	call   40a3f0 <vector_size>
  404720:	bb 00 00 00 00       	mov    $0x0,%ebx
  404725:	85 c0                	test   %eax,%eax
  404727:	74 24                	je     40474d <update_hook+0x15d>
  404729:	31 db                	xor    %ebx,%ebx
  40472b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
			if ((*entities)[i]->state == STATE_DEAD)
  404730:	49 8b 3f             	mov    (%r15),%rdi
  404733:	48 8b 04 df          	mov    (%rdi,%rbx,8),%rax
  404737:	83 78 5c 01          	cmpl   $0x1,0x5c(%rax)
  40473b:	74 10                	je     40474d <update_hook+0x15d>
			i++;
  40473d:	48 83 c3 01          	add    $0x1,%rbx
		while (i < vector_size(*entities))
  404741:	e8 aa 5c 00 00       	call   40a3f0 <vector_size>
  404746:	89 c0                	mov    %eax,%eax
  404748:	48 39 c3             	cmp    %rax,%rbx
  40474b:	72 e3                	jb     404730 <update_hook+0x140>
		if (i >= vector_size(*entities))
  40474d:	49 8b 3f             	mov    (%r15),%rdi
  404750:	e8 9b 5c 00 00       	call   40a3f0 <vector_size>
  404755:	39 c3                	cmp    %eax,%ebx
  404757:	72 a7                	jb     404700 <update_hook+0x110>
	if (!game->player && !game->end_reached)
  404759:	49 8b 46 40          	mov    0x40(%r14),%rax
  40475d:	48 85 c0             	test   %rax,%rax
  404760:	75 0e                	jne    404770 <update_hook+0x180>
  404762:	41 80 be f0 02 00 00 	cmpb   $0x0,0x2f0(%r14)
  404769:	00 
  40476a:	0f 84 3f 01 00 00    	je     4048af <update_hook+0x2bf>
	if (game->editor_mode)
  404770:	41 80 be 70 01 00 00 	cmpb   $0x0,0x170(%r14)
  404777:	00 
  404778:	74 50                	je     4047ca <update_hook+0x1da>
  40477a:	49 8b 46 40          	mov    0x40(%r14),%rax
	if (game->player2 == NULL)
  40477e:	49 8b 4e 48          	mov    0x48(%r14),%rcx
  404782:	f3 0f 10 40 0c       	movss  0xc(%rax),%xmm0
  404787:	48 85 c9             	test   %rcx,%rcx
  40478a:	0f 84 06 01 00 00    	je     404896 <update_hook+0x2a6>
		game->camera_pos.x = (game->player->pos.x + game->player2->pos.x) / 2;
  404790:	f3 0f 58 41 0c       	addss  0xc(%rcx),%xmm0
  404795:	f3 0f 10 0d 63 b6 00 	movss  0xb663(%rip),%xmm1        # 40fe00 <_IO_stdin_used+0xe00>
  40479c:	00 
  40479d:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  4047a1:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
  4047a5:	41 89 96 74 01 00 00 	mov    %edx,0x174(%r14)
		game->camera_pos.y = (game->player->pos.y + game->player2->pos.y) / 2;
  4047ac:	f3 0f 10 40 10       	movss  0x10(%rax),%xmm0
  4047b1:	f3 0f 58 41 10       	addss  0x10(%rcx),%xmm0
  4047b6:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  4047ba:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
  4047be:	41 89 86 78 01 00 00 	mov    %eax,0x178(%r14)
  4047c5:	e9 fb 00 00 00       	jmp    4048c5 <update_hook+0x2d5>
	if ((box_collide_with_box(box_for_position(player->box, player->pos),
  4047ca:	f2 0f 10 50 0c       	movsd  0xc(%rax),%xmm2
  4047cf:	f2 0f 10 40 44       	movsd  0x44(%rax),%xmm0
  4047d4:	f2 0f 10 48 4c       	movsd  0x4c(%rax),%xmm1
  4047d9:	e8 82 55 00 00       	call   409d60 <box_for_position>
  4047de:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4047e2:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
				box_for_position((t_box){{0, 0},
  4047e7:	f2 41 0f 10 96 0c 03 	movsd  0x30c(%r14),%xmm2
  4047ee:	00 00 
  4047f0:	0f 28 0d f9 b5 00 00 	movaps 0xb5f9(%rip),%xmm1        # 40fdf0 <_IO_stdin_used+0xdf0>
  4047f7:	0f 57 c0             	xorps  %xmm0,%xmm0
  4047fa:	e8 61 55 00 00       	call   409d60 <box_for_position>
  4047ff:	0f 28 d0             	movaps %xmm0,%xmm2
  404802:	0f 28 d9             	movaps %xmm1,%xmm3
  404805:	0f 28 04 24          	movaps (%rsp),%xmm0
  404809:	0f 28 4c 24 10       	movaps 0x10(%rsp),%xmm1
	if ((box_collide_with_box(box_for_position(player->box, player->pos),
  40480e:	e8 9d 55 00 00       	call   409db0 <box_collide_with_box>
		|| (game->player2 != NULL && box_collide_with_box(
  404813:	84 c0                	test   %al,%al
  404815:	75 5e                	jne    404875 <update_hook+0x285>
  404817:	49 8b 46 48          	mov    0x48(%r14),%rax
  40481b:	48 85 c0             	test   %rax,%rax
  40481e:	0f 84 56 ff ff ff    	je     40477a <update_hook+0x18a>
				box_for_position(game->player2->box, game->player2->pos),
  404824:	f2 0f 10 50 0c       	movsd  0xc(%rax),%xmm2
  404829:	f2 0f 10 40 44       	movsd  0x44(%rax),%xmm0
  40482e:	f2 0f 10 48 4c       	movsd  0x4c(%rax),%xmm1
  404833:	e8 28 55 00 00       	call   409d60 <box_for_position>
  404838:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40483c:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
				box_for_position((t_box){{0, 0},
  404841:	f2 41 0f 10 96 0c 03 	movsd  0x30c(%r14),%xmm2
  404848:	00 00 
  40484a:	0f 28 0d 9f b5 00 00 	movaps 0xb59f(%rip),%xmm1        # 40fdf0 <_IO_stdin_used+0xdf0>
  404851:	0f 57 c0             	xorps  %xmm0,%xmm0
  404854:	e8 07 55 00 00       	call   409d60 <box_for_position>
  404859:	0f 28 d0             	movaps %xmm0,%xmm2
  40485c:	0f 28 d9             	movaps %xmm1,%xmm3
  40485f:	0f 28 04 24          	movaps (%rsp),%xmm0
  404863:	0f 28 4c 24 10       	movaps 0x10(%rsp),%xmm1
		|| (game->player2 != NULL && box_collide_with_box(
  404868:	e8 43 55 00 00       	call   409db0 <box_collide_with_box>
		&& game->collectibles == game->collectibles_count)
  40486d:	84 c0                	test   %al,%al
  40486f:	0f 84 05 ff ff ff    	je     40477a <update_hook+0x18a>
  404875:	41 8b 86 04 03 00 00 	mov    0x304(%r14),%eax
  40487c:	41 3b 86 00 03 00 00 	cmp    0x300(%r14),%eax
	if ((box_collide_with_box(box_for_position(player->box, player->pos),
  404883:	0f 85 f1 fe ff ff    	jne    40477a <update_hook+0x18a>
		game->end_reached = true;
  404889:	41 c6 86 f0 02 00 00 	movb   $0x1,0x2f0(%r14)
  404890:	01 
  404891:	e9 e4 fe ff ff       	jmp    40477a <update_hook+0x18a>
		game->camera_pos.x = game->player->pos.x;
  404896:	f3 0f 2c c8          	cvttss2si %xmm0,%ecx
  40489a:	41 89 8e 74 01 00 00 	mov    %ecx,0x174(%r14)
		game->camera_pos.y = game->player->pos.y;
  4048a1:	f3 0f 2c 40 10       	cvttss2si 0x10(%rax),%eax
  4048a6:	41 89 86 78 01 00 00 	mov    %eax,0x178(%r14)
  4048ad:	eb 16                	jmp    4048c5 <update_hook+0x2d5>
		game->end_reached = true;
  4048af:	41 c6 86 f0 02 00 00 	movb   $0x1,0x2f0(%r14)
  4048b6:	01 
		game->end.title = "Game over";
  4048b7:	48 8d 05 46 b5 00 00 	lea    0xb546(%rip),%rax        # 40fe04 <_IO_stdin_used+0xe04>
  4048be:	49 89 86 e8 02 00 00 	mov    %rax,0x2e8(%r14)
	rdr_draw(game->rdr, game);
  4048c5:	49 8b 7e 30          	mov    0x30(%r14),%rdi
  4048c9:	4c 89 f6             	mov    %r14,%rsi
  4048cc:	e8 ff 5c 00 00       	call   40a5d0 <rdr_draw>
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
  4048d1:	49 8b 3e             	mov    (%r14),%rdi
  4048d4:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4048d8:	49 8b 56 18          	mov    0x18(%r14),%rdx
  4048dc:	31 c9                	xor    %ecx,%ecx
  4048de:	45 31 c0             	xor    %r8d,%r8d
  4048e1:	e8 3a 74 00 00       	call   40bd20 <mlx_put_image_to_window>
	rdr_clear(game->rdr);
  4048e6:	49 8b 7e 30          	mov    0x30(%r14),%rdi
  4048ea:	e8 91 5c 00 00       	call   40a580 <rdr_clear>
	anim_update(game->foam_anim);
  4048ef:	49 8b be 40 03 00 00 	mov    0x340(%r14),%rdi
  4048f6:	e8 e5 1d 00 00       	call   4066e0 <anim_update>
	return (0);
  4048fb:	31 c0                	xor    %eax,%eax
  4048fd:	48 83 c4 28          	add    $0x28,%rsp
  404901:	5b                   	pop    %rbx
  404902:	41 5c                	pop    %r12
  404904:	41 5d                	pop    %r13
  404906:	41 5e                	pop    %r14
  404908:	41 5f                	pop    %r15
  40490a:	5d                   	pop    %rbp
  40490b:	c3                   	ret    
  40490c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000404910 <draw_hud>:
	rdr_add_text(game->rdr, game->buffer, (t_vec2){25, y}, (t_add_text){
		992000, 5, game->symbols_font, color});
}

void	draw_hud(t_game *game)
{
  404910:	41 57                	push   %r15
  404912:	41 56                	push   %r14
  404914:	41 54                	push   %r12
  404916:	53                   	push   %rbx
  404917:	48 83 ec 68          	sub    $0x68,%rsp
  40491b:	48 89 fb             	mov    %rdi,%rbx
	const char	*msg2 = "Go back to your gold mine !";
	const int	x = WIN_WIDTH / 2 - SCALED_SIZE * 5;
	const int	size = 14;
	char		*msg;

	if (game->collectibles_count == game->collectibles)
  40491e:	8b 87 00 03 00 00    	mov    0x300(%rdi),%eax
  404924:	3b 87 04 03 00 00    	cmp    0x304(%rdi),%eax
  40492a:	48 8d 05 3e b5 00 00 	lea    0xb53e(%rip),%rax        # 40fe6f <_IO_stdin_used+0xe6f>
  404931:	4c 8d 35 20 b5 00 00 	lea    0xb520(%rip),%r14        # 40fe58 <_IO_stdin_used+0xe58>
  404938:	4c 0f 44 f0          	cmove  %rax,%r14
		msg = (char *) msg2;
	else
		msg = (char *) msg1;
	draw_ribbon(game, (t_vec2i){WIN_WIDTH / 2 - SCALED_SIZE * (size / 2), 0},
  40493c:	be 10 01 00 00       	mov    $0x110,%esi
  404941:	ba 0e 00 00 00       	mov    $0xe,%edx
  404946:	e8 e5 14 00 00       	call   405e30 <draw_ribbon>
  40494b:	48 be c0 ff ff ff d0 	movabs $0xffffffd0ffffffc0,%rsi
  404952:	ff ff ff 
  404955:	48 ba 05 00 00 00 04 	movabs $0x400000005,%rdx
  40495c:	00 00 00 
		size);
	draw_banner_h(game, (t_vec2i){-64, -48}, (t_vec2i){5, 4});
  40495f:	48 89 df             	mov    %rbx,%rdi
  404962:	e8 29 0c 00 00       	call   405590 <draw_banner_h>
	rdr_add_text(game->rdr, (void *)msg, (t_vec2){
  404967:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
		text_center_x(game->font, (void *)msg, x - 150, size * SCALED_SIZE),
  40496b:	48 8b bb 28 03 00 00 	mov    0x328(%rbx),%rdi
  404972:	4c 89 f6             	mov    %r14,%rsi
  404975:	ba fa 00 00 00       	mov    $0xfa,%edx
  40497a:	b9 80 03 00 00       	mov    $0x380,%ecx
  40497f:	e8 2c 06 00 00       	call   404fb0 <text_center_x>
  404984:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404988:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
		text_center_y(game->font, (void *)msg, 0, SCALED_SIZE) - 8},
  40498d:	48 8b bb 28 03 00 00 	mov    0x328(%rbx),%rdi
  404994:	4c 89 f6             	mov    %r14,%rsi
  404997:	31 d2                	xor    %edx,%edx
  404999:	b9 40 00 00 00       	mov    $0x40,%ecx
  40499e:	e8 5d 06 00 00       	call   405000 <text_center_y>
  4049a3:	83 c0 f8             	add    $0xfffffff8,%eax
  4049a6:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
  4049aa:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
	rdr_add_text(game->rdr, (void *)msg, (t_vec2){
  4049af:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4049b2:	49 bc 00 23 0f 00 05 	movabs $0x5000f2300,%r12
  4049b9:	00 00 00 
		(t_add_text){992000, 5, game->font, 0x0});
  4049bc:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
  4049c1:	48 8b 83 28 03 00 00 	mov    0x328(%rbx),%rax
  4049c8:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  4049cd:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
  4049d4:	00 
	rdr_add_text(game->rdr, (void *)msg, (t_vec2){
  4049d5:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  4049da:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4049df:	0f 10 4c 24 38       	movups 0x38(%rsp),%xmm1
  4049e4:	0f 11 0c 24          	movups %xmm1,(%rsp)
  4049e8:	4c 89 ff             	mov    %r15,%rdi
  4049eb:	4c 89 f6             	mov    %r14,%rsi
  4049ee:	e8 0d 60 00 00       	call   40aa00 <rdr_add_text>
	ft_sprintf(game->buffer, "Moves %d", game->moves);
  4049f3:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
  4049f7:	8b 93 08 03 00 00    	mov    0x308(%rbx),%edx
  4049fd:	48 8d 35 87 b4 00 00 	lea    0xb487(%rip),%rsi        # 40fe8b <_IO_stdin_used+0xe8b>
  404a04:	31 c0                	xor    %eax,%eax
  404a06:	e8 05 8e 00 00       	call   40d810 <ft_sprintf>
	rdr_add_text(game->rdr, game->buffer, (t_vec2){10, 10},
  404a0b:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
  404a0f:	48 8b 73 38          	mov    0x38(%rbx),%rsi
		(t_add_text){992000, 5, game->small_font, 0x0});
  404a13:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  404a18:	48 8b 83 30 03 00 00 	mov    0x330(%rbx),%rax
  404a1f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  404a24:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404a2b:	00 
	rdr_add_text(game->rdr, game->buffer, (t_vec2){10, 10},
  404a2c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  404a31:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404a36:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404a3b:	0f 11 04 24          	movups %xmm0,(%rsp)
  404a3f:	0f 28 05 ca b3 00 00 	movaps 0xb3ca(%rip),%xmm0        # 40fe10 <_IO_stdin_used+0xe10>
  404a46:	e8 b5 5f 00 00       	call   40aa00 <rdr_add_text>
	rdr_add_sprite(game->rdr, game->money_spawn[6], (t_vec2){-40, -15},
  404a4b:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
  404a4f:	48 8b 83 98 03 00 00 	mov    0x398(%rbx),%rax
  404a56:	48 8b 70 30          	mov    0x30(%rax),%rsi
  404a5a:	0f 28 05 bf b3 00 00 	movaps 0xb3bf(%rip),%xmm0        # 40fe20 <_IO_stdin_used+0xe20>
  404a61:	48 ba 80 83 01 00 05 	movabs $0x500018380,%rdx
  404a68:	00 00 00 
  404a6b:	31 c9                	xor    %ecx,%ecx
  404a6d:	e8 ae 5e 00 00       	call   40a920 <rdr_add_sprite>
	ft_sprintf(game->buffer, "%d out of %d", game->collectibles,
  404a72:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
  404a76:	8b 93 04 03 00 00    	mov    0x304(%rbx),%edx
		game->collectibles_count);
  404a7c:	8b 8b 00 03 00 00    	mov    0x300(%rbx),%ecx
	ft_sprintf(game->buffer, "%d out of %d", game->collectibles,
  404a82:	48 8d 35 0b b4 00 00 	lea    0xb40b(%rip),%rsi        # 40fe94 <_IO_stdin_used+0xe94>
  404a89:	31 c0                	xor    %eax,%eax
  404a8b:	e8 80 8d 00 00       	call   40d810 <ft_sprintf>
	rdr_add_text(game->rdr, game->buffer, (t_vec2){50, 50},
  404a90:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
  404a94:	48 8b 73 38          	mov    0x38(%rbx),%rsi
		(t_add_text){992000, 5, game->small_font, 0x0});
  404a98:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  404a9d:	48 8b 83 30 03 00 00 	mov    0x330(%rbx),%rax
  404aa4:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  404aa9:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404ab0:	00 
	rdr_add_text(game->rdr, game->buffer, (t_vec2){50, 50},
  404ab1:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  404ab6:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404abb:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404ac0:	0f 11 04 24          	movups %xmm0,(%rsp)
  404ac4:	0f 28 05 65 b3 00 00 	movaps 0xb365(%rip),%xmm0        # 40fe30 <_IO_stdin_used+0xe30>
  404acb:	e8 30 5f 00 00       	call   40aa00 <rdr_add_text>
	_draw_movements(game);
	_draw_collects(game);
	_draw_health_bar(game, game->player->health,
  404ad0:	48 8b 43 40          	mov    0x40(%rbx),%rax
  404ad4:	8b 70 64             	mov    0x64(%rax),%esi
		((t_player *)game->player->extension)->is_p2);
  404ad7:	48 8b 40 28          	mov    0x28(%rax),%rax
  404adb:	0f b6 50 20          	movzbl 0x20(%rax),%edx
	_draw_health_bar(game, game->player->health,
  404adf:	48 89 df             	mov    %rbx,%rdi
  404ae2:	e8 39 00 00 00       	call   404b20 <_draw_health_bar>
	if (game->player2)
  404ae7:	48 8b 43 48          	mov    0x48(%rbx),%rax
  404aeb:	48 85 c0             	test   %rax,%rax
  404aee:	74 18                	je     404b08 <draw_hud+0x1f8>
		_draw_health_bar(game, game->player2->health, true);
  404af0:	8b 70 64             	mov    0x64(%rax),%esi
  404af3:	48 89 df             	mov    %rbx,%rdi
  404af6:	ba 01 00 00 00       	mov    $0x1,%edx
  404afb:	48 83 c4 68          	add    $0x68,%rsp
  404aff:	5b                   	pop    %rbx
  404b00:	41 5c                	pop    %r12
  404b02:	41 5e                	pop    %r14
  404b04:	41 5f                	pop    %r15
  404b06:	eb 18                	jmp    404b20 <_draw_health_bar>
}
  404b08:	48 83 c4 68          	add    $0x68,%rsp
  404b0c:	5b                   	pop    %rbx
  404b0d:	41 5c                	pop    %r12
  404b0f:	41 5e                	pop    %r14
  404b11:	41 5f                	pop    %r15
  404b13:	c3                   	ret    
  404b14:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404b1b:	00 00 00 
  404b1e:	66 90                	xchg   %ax,%ax

0000000000404b20 <_draw_health_bar>:
{
  404b20:	55                   	push   %rbp
  404b21:	41 56                	push   %r14
  404b23:	53                   	push   %rbx
  404b24:	48 83 ec 70          	sub    $0x70,%rsp
  404b28:	41 89 d6             	mov    %edx,%r14d
  404b2b:	89 f5                	mov    %esi,%ebp
  404b2d:	48 89 fb             	mov    %rdi,%rbx
	ft_bzero(game->buffer, 30);
  404b30:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
  404b34:	be 1e 00 00 00       	mov    $0x1e,%esi
  404b39:	e8 a2 86 00 00       	call   40d1e0 <ft_bzero>
	while (i < health)
  404b3e:	85 ed                	test   %ebp,%ebp
  404b40:	7e 70                	jle    404bb2 <_draw_health_bar+0x92>
  404b42:	89 ea                	mov    %ebp,%edx
  404b44:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  404b48:	89 d0                	mov    %edx,%eax
  404b4a:	83 e0 03             	and    $0x3,%eax
  404b4d:	48 83 f9 03          	cmp    $0x3,%rcx
  404b51:	73 04                	jae    404b57 <_draw_health_bar+0x37>
  404b53:	31 c9                	xor    %ecx,%ecx
  404b55:	eb 35                	jmp    404b8c <_draw_health_bar+0x6c>
  404b57:	83 e2 fc             	and    $0xfffffffc,%edx
  404b5a:	31 c9                	xor    %ecx,%ecx
  404b5c:	0f 1f 40 00          	nopl   0x0(%rax)
		game->buffer[i++] = 'A';
  404b60:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  404b64:	c6 04 0e 41          	movb   $0x41,(%rsi,%rcx,1)
  404b68:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  404b6c:	c6 44 0e 01 41       	movb   $0x41,0x1(%rsi,%rcx,1)
  404b71:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  404b75:	c6 44 0e 02 41       	movb   $0x41,0x2(%rsi,%rcx,1)
  404b7a:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  404b7e:	c6 44 0e 03 41       	movb   $0x41,0x3(%rsi,%rcx,1)
  404b83:	48 83 c1 04          	add    $0x4,%rcx
	while (i < health)
  404b87:	48 39 ca             	cmp    %rcx,%rdx
  404b8a:	75 d4                	jne    404b60 <_draw_health_bar+0x40>
  404b8c:	48 85 c0             	test   %rax,%rax
  404b8f:	74 21                	je     404bb2 <_draw_health_bar+0x92>
  404b91:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404b98:	00 00 00 
  404b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		game->buffer[i++] = 'A';
  404ba0:	48 8b 53 38          	mov    0x38(%rbx),%rdx
  404ba4:	c6 04 0a 41          	movb   $0x41,(%rdx,%rcx,1)
  404ba8:	48 83 c1 01          	add    $0x1,%rcx
	while (i < health)
  404bac:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  404bb0:	75 ee                	jne    404ba0 <_draw_health_bar+0x80>
  404bb2:	b8 ff 00 ff ff       	mov    $0xffff00ff,%eax
  404bb7:	bd 00 00 ff ff       	mov    $0xffff0000,%ebp
	if (p2)
  404bbc:	45 84 f6             	test   %r14b,%r14b
  404bbf:	0f 45 e8             	cmovne %eax,%ebp
  404bc2:	75 0a                	jne    404bce <_draw_health_bar+0xae>
  404bc4:	66 0f 6e 15 88 b2 00 	movd   0xb288(%rip),%xmm2        # 40fe54 <_IO_stdin_used+0xe54>
  404bcb:	00 
  404bcc:	eb 08                	jmp    404bd6 <_draw_health_bar+0xb6>
  404bce:	66 0f 6e 15 7a b2 00 	movd   0xb27a(%rip),%xmm2        # 40fe50 <_IO_stdin_used+0xe50>
  404bd5:	00 
  404bd6:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
  404bda:	f3 0f 7e c2          	movq   %xmm2,%xmm0
  404bde:	0f 57 c9             	xorps  %xmm1,%xmm1
  404be1:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  404be5:	49 be 00 23 0f 00 05 	movabs $0x5000f2300,%r14
  404bec:	00 00 00 
  404bef:	66 0f 7f 54 24 60    	movdqa %xmm2,0x60(%rsp)
	if (!p2)
  404bf5:	74 31                	je     404c28 <_draw_health_bar+0x108>
		rdr_add_text(game->rdr, "P2 ", (t_vec2){0, y}, (t_add_text){
  404bf7:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
			992000, 5, game->small_font, color});
  404bfc:	48 8b 83 30 03 00 00 	mov    0x330(%rbx),%rax
		rdr_add_text(game->rdr, "P2 ", (t_vec2){0, y}, (t_add_text){
  404c03:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404c08:	89 6c 24 40          	mov    %ebp,0x40(%rsp)
  404c0c:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  404c11:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404c16:	0f 10 4c 24 30       	movups 0x30(%rsp),%xmm1
  404c1b:	0f 11 0c 24          	movups %xmm1,(%rsp)
  404c1f:	48 8d 35 7f b2 00 00 	lea    0xb27f(%rip),%rsi        # 40fea5 <_IO_stdin_used+0xea5>
  404c26:	eb 2f                	jmp    404c57 <_draw_health_bar+0x137>
		rdr_add_text(game->rdr, "P1 ", (t_vec2){0, y}, (t_add_text){
  404c28:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
			992000, 5, game->small_font, color});
  404c2d:	48 8b 83 30 03 00 00 	mov    0x330(%rbx),%rax
		rdr_add_text(game->rdr, "P1 ", (t_vec2){0, y}, (t_add_text){
  404c34:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  404c39:	89 6c 24 58          	mov    %ebp,0x58(%rsp)
  404c3d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  404c42:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404c47:	0f 10 4c 24 48       	movups 0x48(%rsp),%xmm1
  404c4c:	0f 11 0c 24          	movups %xmm1,(%rsp)
  404c50:	48 8d 35 4a b2 00 00 	lea    0xb24a(%rip),%rsi        # 40fea1 <_IO_stdin_used+0xea1>
  404c57:	e8 a4 5d 00 00       	call   40aa00 <rdr_add_text>
  404c5c:	0f 28 4c 24 60       	movaps 0x60(%rsp),%xmm1
	rdr_add_text(game->rdr, game->buffer, (t_vec2){25, y}, (t_add_text){
  404c61:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
  404c65:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  404c69:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
		992000, 5, game->symbols_font, color});
  404c6e:	48 8b 83 38 03 00 00 	mov    0x338(%rbx),%rax
	rdr_add_text(game->rdr, game->buffer, (t_vec2){25, y}, (t_add_text){
  404c75:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  404c7a:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
  404c7e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  404c83:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404c88:	0f 10 44 24 18       	movups 0x18(%rsp),%xmm0
  404c8d:	0f 11 04 24          	movups %xmm0,(%rsp)
  404c91:	0f 28 05 a8 b1 00 00 	movaps 0xb1a8(%rip),%xmm0        # 40fe40 <_IO_stdin_used+0xe40>
  404c98:	0f 14 c1             	unpcklps %xmm1,%xmm0
  404c9b:	e8 60 5d 00 00       	call   40aa00 <rdr_add_text>
}
  404ca0:	48 83 c4 70          	add    $0x70,%rsp
  404ca4:	5b                   	pop    %rbx
  404ca5:	41 5e                	pop    %r14
  404ca7:	5d                   	pop    %rbp
  404ca8:	c3                   	ret    
  404ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000404cb0 <draw_menu>:
			text_center_x(game->small_font, (char *)msg, x + 64 * 3, 6 * 64),
			320}, (t_add_text){10, 5, game->small_font, 0x0});
}

void	draw_menu(t_game *g, t_gamemenu *menu)
{
  404cb0:	55                   	push   %rbp
  404cb1:	41 57                	push   %r15
  404cb3:	41 56                	push   %r14
  404cb5:	41 55                	push   %r13
  404cb7:	41 54                	push   %r12
  404cb9:	53                   	push   %rbx
  404cba:	48 83 ec 38          	sub    $0x38,%rsp
  404cbe:	49 89 f6             	mov    %rsi,%r14
  404cc1:	48 89 fb             	mov    %rdi,%rbx
  404cc4:	49 bc 90 00 00 00 80 	movabs $0x8000000090,%r12
  404ccb:	00 00 00 
  404cce:	48 bd 06 00 00 00 05 	movabs $0x500000006,%rbp
  404cd5:	00 00 00 
	const int	x = WIN_WIDTH / 2 - 4 * SCALED_SIZE;
	const char	*c_me[] = {"Made by ledelbec", "@FirePh0enix on Github"};
	const char	*c[] = {"Credits to Pixel Frog", "on itch.io for the art"};

	rdr_add_blur(g->rdr, 2, 250000);
  404cd8:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
  404cdc:	be 02 00 00 00       	mov    $0x2,%esi
  404ce1:	ba 90 d0 03 00       	mov    $0x3d090,%edx
  404ce6:	e8 f5 5d 00 00       	call   40aae0 <rdr_add_blur>
	draw_banner_cl(g, (t_vec2i){x - 5 * SCALED_SIZE, SCALED_SIZE * 2},
  404ceb:	48 89 df             	mov    %rbx,%rdi
  404cee:	4c 89 e6             	mov    %r12,%rsi
  404cf1:	48 89 ea             	mov    %rbp,%rdx
  404cf4:	e8 c7 0b 00 00       	call   4058c0 <draw_banner_cl>
	if (!game->map_valid)
  404cf9:	80 7b 58 00          	cmpb   $0x0,0x58(%rbx)
  404cfd:	49 bf 0a 00 00 00 05 	movabs $0x50000000a,%r15
  404d04:	00 00 00 
  404d07:	75 67                	jne    404d70 <draw_menu+0xc0>
		rdr_add_text(game->rdr, (char *)msg, (t_vec2){
  404d09:	4c 8b 6b 30          	mov    0x30(%rbx),%r13
			text_center_x(game->small_font, (char *)msg, x + 64 * 3, 6 * 64),
  404d0d:	48 8b bb 30 03 00 00 	mov    0x330(%rbx),%rdi
  404d14:	48 8d 35 1a b2 00 00 	lea    0xb21a(%rip),%rsi        # 40ff35 <_IO_stdin_used+0xf35>
  404d1b:	ba 90 02 00 00       	mov    $0x290,%edx
  404d20:	b9 80 01 00 00       	mov    $0x180,%ecx
  404d25:	e8 86 02 00 00       	call   404fb0 <text_center_x>
			320}, (t_add_text){10, 5, game->small_font, 0x0});
  404d2a:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  404d2f:	48 8b 8b 30 03 00 00 	mov    0x330(%rbx),%rcx
  404d36:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404d3b:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404d42:	00 
		rdr_add_text(game->rdr, (char *)msg, (t_vec2){
  404d43:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  404d48:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  404d4d:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404d52:	0f 11 04 24          	movups %xmm0,(%rsp)
  404d56:	0f 28 05 53 b1 00 00 	movaps 0xb153(%rip),%xmm0        # 40feb0 <_IO_stdin_used+0xeb0>
  404d5d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404d61:	4c 89 ef             	mov    %r13,%rdi
  404d64:	48 8d 35 ca b1 00 00 	lea    0xb1ca(%rip),%rsi        # 40ff35 <_IO_stdin_used+0xf35>
  404d6b:	e8 90 5c 00 00       	call   40aa00 <rdr_add_text>
		(t_vec2i){6, 5});
	_draw_error(g);
	_draw_text(g, (char *)c_me[0], (t_vec2i){
		text_center_x(g->small_font, (char *)c_me[0],
  404d70:	48 8b bb 30 03 00 00 	mov    0x330(%rbx),%rdi
  404d77:	4c 8d 2d 62 b1 00 00 	lea    0xb162(%rip),%r13        # 40fee0 <_IO_stdin_used+0xee0>
  404d7e:	4c 89 ee             	mov    %r13,%rsi
  404d81:	ba 10 01 00 00       	mov    $0x110,%edx
  404d86:	b9 80 00 00 00       	mov    $0x80,%ecx
  404d8b:	e8 20 02 00 00       	call   404fb0 <text_center_x>
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404d90:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
		(t_add_text){10, 5, game->small_font, 0x0});
  404d94:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  404d99:	48 8b 8b 30 03 00 00 	mov    0x330(%rbx),%rcx
  404da0:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404da5:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404dac:	00 
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404dad:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  404db2:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  404db7:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404dbc:	0f 11 04 24          	movups %xmm0,(%rsp)
  404dc0:	0f 28 05 f9 b0 00 00 	movaps 0xb0f9(%rip),%xmm0        # 40fec0 <_IO_stdin_used+0xec0>
  404dc7:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404dcb:	4c 89 ee             	mov    %r13,%rsi
  404dce:	e8 2d 5c 00 00       	call   40aa00 <rdr_add_text>
			x - 3 * 64, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(g, (char *)c_me[1], (t_vec2i){
		text_center_x(g->small_font, (char *)c_me[1], x - 3 * 64, 128), 288});
  404dd3:	48 8b bb 30 03 00 00 	mov    0x330(%rbx),%rdi
  404dda:	4c 8d 2d 10 b1 00 00 	lea    0xb110(%rip),%r13        # 40fef1 <_IO_stdin_used+0xef1>
  404de1:	4c 89 ee             	mov    %r13,%rsi
  404de4:	ba 10 01 00 00       	mov    $0x110,%edx
  404de9:	b9 80 00 00 00       	mov    $0x80,%ecx
  404dee:	e8 bd 01 00 00       	call   404fb0 <text_center_x>
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404df3:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
		(t_add_text){10, 5, game->small_font, 0x0});
  404df7:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  404dfc:	48 8b 8b 30 03 00 00 	mov    0x330(%rbx),%rcx
  404e03:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404e08:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404e0f:	00 
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404e10:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  404e15:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  404e1a:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404e1f:	0f 11 04 24          	movups %xmm0,(%rsp)
  404e23:	0f 28 05 a6 b0 00 00 	movaps 0xb0a6(%rip),%xmm0        # 40fed0 <_IO_stdin_used+0xed0>
  404e2a:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404e2e:	4c 89 ee             	mov    %r13,%rsi
  404e31:	e8 ca 5b 00 00       	call   40aa00 <rdr_add_text>
	draw_banner_cr(g, (t_vec2i){x + 7 * SCALED_SIZE, SCALED_SIZE * 2},
  404e36:	49 81 c4 00 03 00 00 	add    $0x300,%r12
  404e3d:	48 89 df             	mov    %rbx,%rdi
  404e40:	4c 89 e6             	mov    %r12,%rsi
  404e43:	48 89 ea             	mov    %rbp,%rdx
  404e46:	e8 75 0b 00 00       	call   4059c0 <draw_banner_cr>
		(t_vec2i){6, 5});
	_draw_text(g, (char *)c[0], (t_vec2i){text_center_x(g->small_font,
  404e4b:	48 8b bb 30 03 00 00 	mov    0x330(%rbx),%rdi
  404e52:	48 8d 2d af b0 00 00 	lea    0xb0af(%rip),%rbp        # 40ff08 <_IO_stdin_used+0xf08>
  404e59:	48 89 ee             	mov    %rbp,%rsi
  404e5c:	ba fc 03 00 00       	mov    $0x3fc,%edx
  404e61:	b9 80 00 00 00       	mov    $0x80,%ecx
  404e66:	e8 45 01 00 00       	call   404fb0 <text_center_x>
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404e6b:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
		(t_add_text){10, 5, game->small_font, 0x0});
  404e6f:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  404e74:	48 8b 8b 30 03 00 00 	mov    0x330(%rbx),%rcx
  404e7b:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404e80:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404e87:	00 
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404e88:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  404e8d:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  404e92:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404e97:	0f 11 04 24          	movups %xmm0,(%rsp)
  404e9b:	0f 28 05 1e b0 00 00 	movaps 0xb01e(%rip),%xmm0        # 40fec0 <_IO_stdin_used+0xec0>
  404ea2:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404ea6:	48 89 ee             	mov    %rbp,%rsi
  404ea9:	e8 52 5b 00 00       	call   40aa00 <rdr_add_text>
			(char *)c[0],
			x + 8.7 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(g, (char *)c[1], (t_vec2i){text_center_x(g->small_font,
  404eae:	48 8b bb 30 03 00 00 	mov    0x330(%rbx),%rdi
  404eb5:	48 8d 2d 62 b0 00 00 	lea    0xb062(%rip),%rbp        # 40ff1e <_IO_stdin_used+0xf1e>
  404ebc:	48 89 ee             	mov    %rbp,%rsi
  404ebf:	ba fc 03 00 00       	mov    $0x3fc,%edx
  404ec4:	b9 80 00 00 00       	mov    $0x80,%ecx
  404ec9:	e8 e2 00 00 00       	call   404fb0 <text_center_x>
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404ece:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
		(t_add_text){10, 5, game->small_font, 0x0});
  404ed2:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  404ed7:	48 8b 8b 30 03 00 00 	mov    0x330(%rbx),%rcx
  404ede:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404ee3:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  404eea:	00 
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
  404eeb:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  404ef0:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  404ef5:	0f 10 44 24 20       	movups 0x20(%rsp),%xmm0
  404efa:	0f 11 04 24          	movups %xmm0,(%rsp)
  404efe:	0f 28 05 cb af 00 00 	movaps 0xafcb(%rip),%xmm0        # 40fed0 <_IO_stdin_used+0xed0>
  404f05:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  404f09:	48 89 ee             	mov    %rbp,%rsi
  404f0c:	e8 ef 5a 00 00       	call   40aa00 <rdr_add_text>
  404f11:	48 ba 08 00 00 00 0a 	movabs $0xa00000008,%rdx
  404f18:	00 00 00 
			(char *)c[1],
			x + 8.7 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4.5});
	draw_banner_v(g, (t_vec2i){WIN_WIDTH / 2 - 64 * 4, 0}, (t_vec2i){8, 10});
  404f1b:	be d0 01 00 00       	mov    $0x1d0,%esi
  404f20:	48 89 df             	mov    %rbx,%rdi
  404f23:	e8 98 08 00 00       	call   4057c0 <draw_banner_v>
	btn_update(g, &menu->play);
  404f28:	48 89 df             	mov    %rbx,%rdi
  404f2b:	4c 89 f6             	mov    %r14,%rsi
  404f2e:	e8 5d 02 00 00       	call   405190 <btn_update>
	btn_update(g, &menu->coop);
  404f33:	49 8d 76 30          	lea    0x30(%r14),%rsi
  404f37:	48 89 df             	mov    %rbx,%rdi
  404f3a:	e8 51 02 00 00       	call   405190 <btn_update>
	btn_update(g, &menu->edit);
  404f3f:	49 83 c6 60          	add    $0x60,%r14
  404f43:	48 89 df             	mov    %rbx,%rdi
  404f46:	4c 89 f6             	mov    %r14,%rsi
  404f49:	48 83 c4 38          	add    $0x38,%rsp
  404f4d:	5b                   	pop    %rbx
  404f4e:	41 5c                	pop    %r12
  404f50:	41 5d                	pop    %r13
  404f52:	41 5e                	pop    %r14
  404f54:	41 5f                	pop    %r15
  404f56:	5d                   	pop    %rbp
  404f57:	e9 34 02 00 00       	jmp    405190 <btn_update>
  404f5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000404f60 <menu_mouse_click>:
}

void	menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y)
{
  404f60:	55                   	push   %rbp
  404f61:	41 57                	push   %r15
  404f63:	41 56                	push   %r14
  404f65:	53                   	push   %rbx
  404f66:	50                   	push   %rax
  404f67:	41 89 ce             	mov    %ecx,%r14d
  404f6a:	41 89 d7             	mov    %edx,%r15d
  404f6d:	48 89 f3             	mov    %rsi,%rbx
  404f70:	48 89 fd             	mov    %rdi,%rbp
	btn_click(game, &menu->play, x, y);
  404f73:	e8 78 04 00 00       	call   4053f0 <btn_click>
	btn_click(game, &menu->coop, x, y);
  404f78:	48 8d 73 30          	lea    0x30(%rbx),%rsi
  404f7c:	48 89 ef             	mov    %rbp,%rdi
  404f7f:	44 89 fa             	mov    %r15d,%edx
  404f82:	44 89 f1             	mov    %r14d,%ecx
  404f85:	e8 66 04 00 00       	call   4053f0 <btn_click>
	btn_click(game, &menu->edit, x, y);
  404f8a:	48 83 c3 60          	add    $0x60,%rbx
  404f8e:	48 89 ef             	mov    %rbp,%rdi
  404f91:	48 89 de             	mov    %rbx,%rsi
  404f94:	44 89 fa             	mov    %r15d,%edx
  404f97:	44 89 f1             	mov    %r14d,%ecx
  404f9a:	48 83 c4 08          	add    $0x8,%rsp
  404f9e:	5b                   	pop    %rbx
  404f9f:	41 5e                	pop    %r14
  404fa1:	41 5f                	pop    %r15
  404fa3:	5d                   	pop    %rbp
  404fa4:	e9 47 04 00 00       	jmp    4053f0 <btn_click>
  404fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000404fb0 <text_center_x>:
		return (font->chars[(int) 'A']->height);
	return (0);
}

int	text_center_x(t_font *font, char *s, int px, int pwidth)
{
  404fb0:	55                   	push   %rbp
  404fb1:	41 56                	push   %r14
  404fb3:	53                   	push   %rbx
  404fb4:	89 cd                	mov    %ecx,%ebp
  404fb6:	41 89 d6             	mov    %edx,%r14d
	if (font->chars[(int) 'A'])
  404fb9:	48 8b 87 08 02 00 00 	mov    0x208(%rdi),%rax
  404fc0:	48 85 c0             	test   %rax,%rax
  404fc3:	74 05                	je     404fca <text_center_x+0x1a>
		return (font->chars[(int) 'A']->width);
  404fc5:	8b 58 20             	mov    0x20(%rax),%ebx
  404fc8:	eb 02                	jmp    404fcc <text_center_x+0x1c>
  404fca:	31 db                	xor    %ebx,%ebx
	const int	width = _font_width(font) * ft_strlen(s);
  404fcc:	48 89 f7             	mov    %rsi,%rdi
  404fcf:	e8 8c 83 00 00       	call   40d360 <ft_strlen>
  404fd4:	0f af c3             	imul   %ebx,%eax
	const int	fx = px + pwidth / 2 - width / 2;
  404fd7:	89 e9                	mov    %ebp,%ecx
  404fd9:	c1 e9 1f             	shr    $0x1f,%ecx
  404fdc:	01 e9                	add    %ebp,%ecx
  404fde:	d1 f9                	sar    %ecx
  404fe0:	44 01 f1             	add    %r14d,%ecx
  404fe3:	89 c2                	mov    %eax,%edx
  404fe5:	c1 ea 1f             	shr    $0x1f,%edx
  404fe8:	01 c2                	add    %eax,%edx
  404fea:	d1 fa                	sar    %edx
  404fec:	29 d1                	sub    %edx,%ecx

	return (fx);
  404fee:	89 c8                	mov    %ecx,%eax
  404ff0:	5b                   	pop    %rbx
  404ff1:	41 5e                	pop    %r14
  404ff3:	5d                   	pop    %rbp
  404ff4:	c3                   	ret    
  404ff5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404ffc:	00 00 00 
  404fff:	90                   	nop

0000000000405000 <text_center_y>:
	if (font->chars[(int) 'A'])
  405000:	48 8b 87 08 02 00 00 	mov    0x208(%rdi),%rax
  405007:	48 85 c0             	test   %rax,%rax
  40500a:	74 10                	je     40501c <text_center_y+0x1c>
		return (font->chars[(int) 'A']->height);
  40500c:	8b 40 24             	mov    0x24(%rax),%eax
  40500f:	89 c6                	mov    %eax,%esi
  405011:	c1 ee 1f             	shr    $0x1f,%esi
  405014:	01 c6                	add    %eax,%esi
  405016:	d1 fe                	sar    %esi
  405018:	f7 de                	neg    %esi
  40501a:	eb 02                	jmp    40501e <text_center_y+0x1e>
  40501c:	31 f6                	xor    %esi,%esi
}

int	text_center_y(t_font *font, char *s, int py, int pheight)
{
	const int	height = _font_height(font);
	const int	fy = py + pheight / 2 - height / 2;
  40501e:	89 c8                	mov    %ecx,%eax
  405020:	c1 e8 1f             	shr    $0x1f,%eax
  405023:	01 c8                	add    %ecx,%eax
  405025:	d1 f8                	sar    %eax
  405027:	01 d0                	add    %edx,%eax
  405029:	01 f0                	add    %esi,%eax

	(void) s;
	return (fy);
  40502b:	c3                   	ret    
  40502c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405030 <menu_new>:
		game->start_time = getms();
	}
}

t_gamemenu	*menu_new(void)
{
  405030:	53                   	push   %rbx
  405031:	48 83 ec 30          	sub    $0x30,%rsp
	const int	x = 1440 / 2 - 4 * SCALED_SIZE / 2;
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
  405035:	bf 90 00 00 00       	mov    $0x90,%edi
  40503a:	e8 d1 d0 ff ff       	call   402110 <malloc@plt>
  40503f:	48 89 c3             	mov    %rax,%rbx
	menu->play = btn_new_label((t_vec2i){x, 4 * 64}, 4, "Play", play_click);
  405042:	48 8d 0d 01 af 00 00 	lea    0xaf01(%rip),%rcx        # 40ff4a <_IO_stdin_used+0xf4a>
  405049:	4c 8d 05 c0 00 00 00 	lea    0xc0(%rip),%r8        # 405110 <play_click>
  405050:	48 89 e7             	mov    %rsp,%rdi
  405053:	48 be 50 02 00 00 00 	movabs $0x10000000250,%rsi
  40505a:	01 00 00 
  40505d:	ba 04 00 00 00       	mov    $0x4,%edx
  405062:	e8 c9 04 00 00       	call   405530 <btn_new_label>
  405067:	0f 10 04 24          	movups (%rsp),%xmm0
  40506b:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  405070:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  405075:	0f 11 53 20          	movups %xmm2,0x20(%rbx)
  405079:	0f 11 4b 10          	movups %xmm1,0x10(%rbx)
  40507d:	0f 11 03             	movups %xmm0,(%rbx)
	menu->coop = btn_new_label((t_vec2i){x, 6 * 64}, 4, "2 Player",
  405080:	48 8d 0d c8 ae 00 00 	lea    0xaec8(%rip),%rcx        # 40ff4f <_IO_stdin_used+0xf4f>
  405087:	4c 8d 05 a2 00 00 00 	lea    0xa2(%rip),%r8        # 405130 <coop_click>
  40508e:	48 89 e7             	mov    %rsp,%rdi
  405091:	48 be 50 02 00 00 80 	movabs $0x18000000250,%rsi
  405098:	01 00 00 
  40509b:	ba 04 00 00 00       	mov    $0x4,%edx
  4050a0:	e8 8b 04 00 00       	call   405530 <btn_new_label>
  4050a5:	0f 10 04 24          	movups (%rsp),%xmm0
  4050a9:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  4050ae:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  4050b3:	0f 11 53 50          	movups %xmm2,0x50(%rbx)
  4050b7:	0f 11 4b 40          	movups %xmm1,0x40(%rbx)
  4050bb:	0f 11 43 30          	movups %xmm0,0x30(%rbx)
			coop_click);
	menu->edit = btn_new_label((t_vec2i){x, 8 * 64}, 4, "Edit", edit_click);
  4050bf:	48 8d 0d 92 ae 00 00 	lea    0xae92(%rip),%rcx        # 40ff58 <_IO_stdin_used+0xf58>
  4050c6:	4c 8d 05 b3 00 00 00 	lea    0xb3(%rip),%r8        # 405180 <edit_click>
  4050cd:	48 89 e7             	mov    %rsp,%rdi
  4050d0:	48 be 50 02 00 00 00 	movabs $0x20000000250,%rsi
  4050d7:	02 00 00 
  4050da:	ba 04 00 00 00       	mov    $0x4,%edx
  4050df:	e8 4c 04 00 00       	call   405530 <btn_new_label>
  4050e4:	0f 10 04 24          	movups (%rsp),%xmm0
  4050e8:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  4050ed:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  4050f2:	0f 11 93 80 00 00 00 	movups %xmm2,0x80(%rbx)
  4050f9:	0f 11 4b 70          	movups %xmm1,0x70(%rbx)
  4050fd:	0f 11 43 60          	movups %xmm0,0x60(%rbx)
	return (menu);
  405101:	48 89 d8             	mov    %rbx,%rax
  405104:	48 83 c4 30          	add    $0x30,%rsp
  405108:	5b                   	pop    %rbx
  405109:	c3                   	ret    
  40510a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405110 <play_click>:
{
  405110:	53                   	push   %rbx
	if (game->map_valid)
  405111:	80 7f 58 00          	cmpb   $0x0,0x58(%rdi)
  405115:	74 13                	je     40512a <play_click+0x1a>
  405117:	48 89 fb             	mov    %rdi,%rbx
		game->menu_opened = false;
  40511a:	c6 47 68 00          	movb   $0x0,0x68(%rdi)
		game->start_time = getms();
  40511e:	e8 5d 15 00 00       	call   406680 <getms>
  405123:	48 89 83 18 03 00 00 	mov    %rax,0x318(%rbx)
}
  40512a:	5b                   	pop    %rbx
  40512b:	c3                   	ret    
  40512c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405130 <coop_click>:
{
  405130:	41 56                	push   %r14
  405132:	53                   	push   %rbx
  405133:	50                   	push   %rax
	if (game->map_valid)
  405134:	80 7f 58 00          	cmpb   $0x0,0x58(%rdi)
  405138:	74 3c                	je     405176 <coop_click+0x46>
  40513a:	48 89 fb             	mov    %rdi,%rbx
		game->menu_opened = false;
  40513d:	c6 47 68 00          	movb   $0x0,0x68(%rdi)
		game->player2 = add_entity(&game->entities,
  405141:	4c 8d 77 20          	lea    0x20(%rdi),%r14
				player_new(game, game->player->pos, game->player->level, true));
  405145:	48 8b 47 40          	mov    0x40(%rdi),%rax
  405149:	8b 70 6c             	mov    0x6c(%rax),%esi
  40514c:	f2 0f 10 40 0c       	movsd  0xc(%rax),%xmm0
  405151:	ba 01 00 00 00       	mov    $0x1,%edx
  405156:	e8 15 43 00 00       	call   409470 <player_new>
		game->player2 = add_entity(&game->entities,
  40515b:	4c 89 f7             	mov    %r14,%rdi
  40515e:	48 89 c6             	mov    %rax,%rsi
  405161:	e8 aa 0d 00 00       	call   405f10 <add_entity>
  405166:	48 89 43 48          	mov    %rax,0x48(%rbx)
		game->start_time = getms();
  40516a:	e8 11 15 00 00       	call   406680 <getms>
  40516f:	48 89 83 18 03 00 00 	mov    %rax,0x318(%rbx)
}
  405176:	48 83 c4 08          	add    $0x8,%rsp
  40517a:	5b                   	pop    %rbx
  40517b:	41 5e                	pop    %r14
  40517d:	c3                   	ret    
  40517e:	66 90                	xchg   %ax,%ax

0000000000405180 <edit_click>:
	game->editor_mode = true;
  405180:	c6 87 70 01 00 00 01 	movb   $0x1,0x170(%rdi)
	game->menu_opened = false;
  405187:	c6 47 68 00          	movb   $0x0,0x68(%rdi)
}
  40518b:	c3                   	ret    
  40518c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405190 <btn_update>:
		rdr_add_sprite(game->rdr, btn->img, (t_vec2){btn->x, btn->y},
			(t_add_sprite){3, 5, false, false});
}

void	btn_update(t_game *game, t_btn *btn)
{
  405190:	55                   	push   %rbp
  405191:	41 57                	push   %r15
  405193:	41 56                	push   %r14
  405195:	41 55                	push   %r13
  405197:	41 54                	push   %r12
  405199:	53                   	push   %rbx
  40519a:	48 83 ec 58          	sub    $0x58,%rsp
  40519e:	49 89 f5             	mov    %rsi,%r13
  4051a1:	49 89 fe             	mov    %rdi,%r14
  4051a4:	49 bf 02 00 00 00 05 	movabs $0x500000002,%r15
  4051ab:	00 00 00 
	int			mx;
	int			my;

	mlx_mouse_get_pos(game->mlx, game->win, &mx, &my);
  4051ae:	48 8b 3f             	mov    (%rdi),%rdi
  4051b1:	49 8b 76 08          	mov    0x8(%r14),%rsi
  4051b5:	48 8d 54 24 24       	lea    0x24(%rsp),%rdx
  4051ba:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4051bf:	e8 9c 7f 00 00       	call   40d160 <mlx_mouse_get_pos>
	if (btn->size > 1)
  4051c4:	41 83 7d 08 02       	cmpl   $0x2,0x8(%r13)
  4051c9:	4d 8b 66 30          	mov    0x30(%r14),%r12
  4051cd:	0f 8c c2 00 00 00    	jl     405295 <btn_update+0x105>
	rdr_add_sprite(game->rdr, sp(game)[SP_BTN_LEFT],
  4051d3:	4c 89 f7             	mov    %r14,%rdi
  4051d6:	e8 05 f4 ff ff       	call   4045e0 <sp>
  4051db:	48 8b b0 d0 01 00 00 	mov    0x1d0(%rax),%rsi
		(t_vec2){btn->x, btn->y},
  4051e2:	f3 41 0f 2a 45 00    	cvtsi2ssl 0x0(%r13),%xmm0
  4051e8:	f3 41 0f 2a 4d 04    	cvtsi2ssl 0x4(%r13),%xmm1
	rdr_add_sprite(game->rdr, sp(game)[SP_BTN_LEFT],
  4051ee:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4051f1:	31 ed                	xor    %ebp,%ebp
  4051f3:	4c 89 e7             	mov    %r12,%rdi
  4051f6:	4c 89 fa             	mov    %r15,%rdx
  4051f9:	31 c9                	xor    %ecx,%ecx
  4051fb:	e8 20 57 00 00       	call   40a920 <rdr_add_sprite>
	while (++i < btn->size - 2)
  405200:	41 83 7d 08 03       	cmpl   $0x3,0x8(%r13)
  405205:	7c 53                	jl     40525a <btn_update+0xca>
  405207:	bb 40 00 00 00       	mov    $0x40,%ebx
  40520c:	0f 1f 40 00          	nopl   0x0(%rax)
		rdr_add_sprite(game->rdr, sp(game)[SP_BTN_MID],
  405210:	4d 8b 66 30          	mov    0x30(%r14),%r12
  405214:	4c 89 f7             	mov    %r14,%rdi
  405217:	e8 c4 f3 ff ff       	call   4045e0 <sp>
  40521c:	48 8b b0 d8 01 00 00 	mov    0x1d8(%rax),%rsi
  405223:	41 8b 45 00          	mov    0x0(%r13),%eax
			(t_vec2){btn->x + (1 + i) * SCALED_SIZE, btn->y},
  405227:	01 d8                	add    %ebx,%eax
  405229:	0f 57 c0             	xorps  %xmm0,%xmm0
  40522c:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  405230:	0f 57 c9             	xorps  %xmm1,%xmm1
  405233:	f3 41 0f 2a 4d 04    	cvtsi2ssl 0x4(%r13),%xmm1
		rdr_add_sprite(game->rdr, sp(game)[SP_BTN_MID],
  405239:	0f 14 c1             	unpcklps %xmm1,%xmm0
  40523c:	4c 89 e7             	mov    %r12,%rdi
  40523f:	4c 89 fa             	mov    %r15,%rdx
  405242:	31 c9                	xor    %ecx,%ecx
  405244:	e8 d7 56 00 00       	call   40a920 <rdr_add_sprite>
	while (++i < btn->size - 2)
  405249:	83 c5 01             	add    $0x1,%ebp
  40524c:	41 8b 45 08          	mov    0x8(%r13),%eax
  405250:	83 c0 fe             	add    $0xfffffffe,%eax
  405253:	83 c3 40             	add    $0x40,%ebx
  405256:	39 c5                	cmp    %eax,%ebp
  405258:	7c b6                	jl     405210 <btn_update+0x80>
	rdr_add_sprite(game->rdr, sp(game)[SP_BTN_RIGHT],
  40525a:	49 8b 5e 30          	mov    0x30(%r14),%rbx
  40525e:	4c 89 f7             	mov    %r14,%rdi
  405261:	e8 7a f3 ff ff       	call   4045e0 <sp>
  405266:	48 8b b0 e0 01 00 00 	mov    0x1e0(%rax),%rsi
		(t_vec2){btn->x + (btn->size - 1) * SCALED_SIZE, btn->y},
  40526d:	41 8b 45 00          	mov    0x0(%r13),%eax
  405271:	41 8b 4d 08          	mov    0x8(%r13),%ecx
  405275:	c1 e1 06             	shl    $0x6,%ecx
  405278:	01 c8                	add    %ecx,%eax
  40527a:	83 c0 c0             	add    $0xffffffc0,%eax
  40527d:	0f 57 c0             	xorps  %xmm0,%xmm0
  405280:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  405284:	0f 57 c9             	xorps  %xmm1,%xmm1
  405287:	f3 41 0f 2a 4d 04    	cvtsi2ssl 0x4(%r13),%xmm1
	rdr_add_sprite(game->rdr, sp(game)[SP_BTN_RIGHT],
  40528d:	0f 14 c1             	unpcklps %xmm1,%xmm0
  405290:	48 89 df             	mov    %rbx,%rdi
  405293:	eb 2b                	jmp    4052c0 <btn_update+0x130>
		rdr_add_sprite(game->rdr, _get_tile(game, 0, btn->pressed),
  405295:	41 0f b6 5d 28       	movzbl 0x28(%r13),%ebx
  40529a:	4c 89 f7             	mov    %r14,%rdi
  40529d:	e8 3e f3 ff ff       	call   4045e0 <sp>
	if (i == 0 && !pressed)
  4052a2:	48 c1 e3 05          	shl    $0x5,%rbx
  4052a6:	48 8b b4 03 e8 01 00 	mov    0x1e8(%rbx,%rax,1),%rsi
  4052ad:	00 
			(t_vec2){btn->x, btn->y}, (t_add_sprite){2, 5, false, false});
  4052ae:	f3 41 0f 2a 45 00    	cvtsi2ssl 0x0(%r13),%xmm0
  4052b4:	f3 41 0f 2a 4d 04    	cvtsi2ssl 0x4(%r13),%xmm1
		rdr_add_sprite(game->rdr, _get_tile(game, 0, btn->pressed),
  4052ba:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4052bd:	4c 89 e7             	mov    %r12,%rdi
  4052c0:	4c 89 fa             	mov    %r15,%rdx
  4052c3:	31 c9                	xor    %ecx,%ecx
  4052c5:	e8 56 56 00 00       	call   40a920 <rdr_add_sprite>
	if (btn->label)
  4052ca:	4d 8b 65 10          	mov    0x10(%r13),%r12
  4052ce:	4d 85 e4             	test   %r12,%r12
  4052d1:	0f 84 9b 00 00 00    	je     405372 <btn_update+0x1e2>
		rdr_add_text(game->rdr, btn->label, (t_vec2){
  4052d7:	4d 8b 7e 30          	mov    0x30(%r14),%r15
			text_center_x(game->font, btn->label, btn->x, btn->size * 64) - 14,
  4052db:	49 8b be 28 03 00 00 	mov    0x328(%r14),%rdi
  4052e2:	41 8b 55 00          	mov    0x0(%r13),%edx
  4052e6:	41 8b 4d 08          	mov    0x8(%r13),%ecx
  4052ea:	c1 e1 06             	shl    $0x6,%ecx
  4052ed:	4c 89 e6             	mov    %r12,%rsi
  4052f0:	e8 bb fc ff ff       	call   404fb0 <text_center_x>
  4052f5:	83 c0 f2             	add    $0xfffffff2,%eax
  4052f8:	0f 57 c0             	xorps  %xmm0,%xmm0
  4052fb:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4052ff:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
			text_center_y(game->font, btn->label, btn->y, 64) - 8},
  405304:	49 8b be 28 03 00 00 	mov    0x328(%r14),%rdi
  40530b:	49 8b 75 10          	mov    0x10(%r13),%rsi
  40530f:	41 8b 55 04          	mov    0x4(%r13),%edx
  405313:	b9 40 00 00 00       	mov    $0x40,%ecx
  405318:	e8 e3 fc ff ff       	call   405000 <text_center_y>
  40531d:	83 c0 f8             	add    $0xfffffff8,%eax
  405320:	0f 57 c9             	xorps  %xmm1,%xmm1
  405323:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
  405327:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
		rdr_add_text(game->rdr, btn->label, (t_vec2){
  40532c:	0f 14 c1             	unpcklps %xmm1,%xmm0
  40532f:	48 b8 03 00 00 00 05 	movabs $0x500000003,%rax
  405336:	00 00 00 
			(t_add_text){3, 5, game->font, 0x0});
  405339:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40533e:	49 8b 86 28 03 00 00 	mov    0x328(%r14),%rax
  405345:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40534a:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  405351:	00 
		rdr_add_text(game->rdr, btn->label, (t_vec2){
  405352:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  405357:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40535c:	0f 10 4c 24 28       	movups 0x28(%rsp),%xmm1
  405361:	0f 11 0c 24          	movups %xmm1,(%rsp)
  405365:	4c 89 ff             	mov    %r15,%rdi
  405368:	4c 89 e6             	mov    %r12,%rsi
  40536b:	e8 90 56 00 00       	call   40aa00 <rdr_add_text>
  405370:	eb 30                	jmp    4053a2 <btn_update+0x212>
	else if (btn->img)
  405372:	49 8b 75 18          	mov    0x18(%r13),%rsi
  405376:	48 85 f6             	test   %rsi,%rsi
  405379:	74 27                	je     4053a2 <btn_update+0x212>
		rdr_add_sprite(game->rdr, btn->img, (t_vec2){btn->x, btn->y},
  40537b:	0f 57 c0             	xorps  %xmm0,%xmm0
  40537e:	f3 41 0f 2a 45 00    	cvtsi2ssl 0x0(%r13),%xmm0
  405384:	0f 57 c9             	xorps  %xmm1,%xmm1
  405387:	f3 41 0f 2a 4d 04    	cvtsi2ssl 0x4(%r13),%xmm1
  40538d:	49 8b 7e 30          	mov    0x30(%r14),%rdi
  405391:	0f 14 c1             	unpcklps %xmm1,%xmm0
  405394:	49 83 c7 01          	add    $0x1,%r15
  405398:	4c 89 fa             	mov    %r15,%rdx
  40539b:	31 c9                	xor    %ecx,%ecx
  40539d:	e8 7e 55 00 00       	call   40a920 <rdr_add_sprite>
	_draw_button(game, btn);
	if (mx >= btn->x && mx <= btn->x + btn->size * SCALED_SIZE
  4053a2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4053a6:	41 8b 75 00          	mov    0x0(%r13),%esi
  4053aa:	39 f0                	cmp    %esi,%eax
  4053ac:	7c 2a                	jl     4053d8 <btn_update+0x248>
  4053ae:	41 8b 4d 08          	mov    0x8(%r13),%ecx
  4053b2:	89 ca                	mov    %ecx,%edx
  4053b4:	c1 e2 06             	shl    $0x6,%edx
  4053b7:	01 f2                	add    %esi,%edx
  4053b9:	39 d0                	cmp    %edx,%eax
		&& my >= btn->y && my <= btn->y + SCALED_SIZE)
  4053bb:	7f 1b                	jg     4053d8 <btn_update+0x248>
  4053bd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4053c1:	41 8b 55 04          	mov    0x4(%r13),%edx
  4053c5:	39 d0                	cmp    %edx,%eax
  4053c7:	7c 0f                	jl     4053d8 <btn_update+0x248>
  4053c9:	8d 7a 40             	lea    0x40(%rdx),%edi
  4053cc:	39 f8                	cmp    %edi,%eax
  4053ce:	7f 08                	jg     4053d8 <btn_update+0x248>
		draw_hl(game, btn->x, btn->y, btn->size);
  4053d0:	4c 89 f7             	mov    %r14,%rdi
  4053d3:	e8 48 00 00 00       	call   405420 <draw_hl>
}
  4053d8:	48 83 c4 58          	add    $0x58,%rsp
  4053dc:	5b                   	pop    %rbx
  4053dd:	41 5c                	pop    %r12
  4053df:	41 5d                	pop    %r13
  4053e1:	41 5e                	pop    %r14
  4053e3:	41 5f                	pop    %r15
  4053e5:	5d                   	pop    %rbp
  4053e6:	c3                   	ret    
  4053e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4053ee:	00 00 

00000000004053f0 <btn_click>:

void	btn_click(t_game *game, t_btn *btn, int mx, int my)
{
	if (mx >= btn->x && mx <= btn->x + btn->size * SCALED_SIZE
  4053f0:	44 8b 06             	mov    (%rsi),%r8d
  4053f3:	41 39 d0             	cmp    %edx,%r8d
  4053f6:	7f 1e                	jg     405416 <btn_click+0x26>
  4053f8:	8b 46 08             	mov    0x8(%rsi),%eax
  4053fb:	c1 e0 06             	shl    $0x6,%eax
  4053fe:	44 01 c0             	add    %r8d,%eax
  405401:	39 d0                	cmp    %edx,%eax
		&& my >= btn->y && my <= btn->y + SCALED_SIZE)
  405403:	7c 11                	jl     405416 <btn_click+0x26>
  405405:	8b 46 04             	mov    0x4(%rsi),%eax
  405408:	39 c8                	cmp    %ecx,%eax
  40540a:	7f 0a                	jg     405416 <btn_click+0x26>
  40540c:	83 c0 40             	add    $0x40,%eax
  40540f:	39 c8                	cmp    %ecx,%eax
  405411:	7c 03                	jl     405416 <btn_click+0x26>
		btn->click(game);
  405413:	ff 66 20             	jmp    *0x20(%rsi)
}
  405416:	c3                   	ret    
  405417:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40541e:	00 00 

0000000000405420 <draw_hl>:
/* ************************************************************************** */

#include "so_long.h"

void	draw_hl(t_game *game, int x, int y, int size)
{
  405420:	55                   	push   %rbp
  405421:	41 57                	push   %r15
  405423:	41 56                	push   %r14
  405425:	41 55                	push   %r13
  405427:	41 54                	push   %r12
  405429:	53                   	push   %rbx
  40542a:	48 83 ec 38          	sub    $0x38,%rsp
  40542e:	41 89 cc             	mov    %ecx,%r12d
  405431:	41 89 d7             	mov    %edx,%r15d
  405434:	41 89 f5             	mov    %esi,%r13d
  405437:	48 89 fb             	mov    %rdi,%rbx
	const int	s = size * SCALED_SIZE;
  40543a:	41 c1 e4 06          	shl    $0x6,%r12d

	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TL],
  40543e:	48 8b 6f 30          	mov    0x30(%rdi),%rbp
  405442:	e8 99 f1 ff ff       	call   4045e0 <sp>
  405447:	48 8b b0 18 02 00 00 	mov    0x218(%rax),%rsi
		(t_vec2){x - 32, y - 32}, (t_add_sprite){6, 5, false, false});
  40544e:	41 8d 45 e0          	lea    -0x20(%r13),%eax
  405452:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  405456:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  40545b:	41 8d 47 e0          	lea    -0x20(%r15),%eax
  40545f:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
  405463:	0f 29 0c 24          	movaps %xmm1,(%rsp)
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TL],
  405467:	0f 14 c1             	unpcklps %xmm1,%xmm0
  40546a:	49 be 06 00 00 00 05 	movabs $0x500000006,%r14
  405471:	00 00 00 
  405474:	48 89 ef             	mov    %rbp,%rdi
  405477:	4c 89 f2             	mov    %r14,%rdx
  40547a:	31 c9                	xor    %ecx,%ecx
  40547c:	e8 9f 54 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TR],
  405481:	48 8b 6b 30          	mov    0x30(%rbx),%rbp
  405485:	48 89 df             	mov    %rbx,%rdi
  405488:	e8 53 f1 ff ff       	call   4045e0 <sp>
  40548d:	48 8b b0 20 02 00 00 	mov    0x220(%rax),%rsi
		(t_vec2){x - 32 + s, y - 32}, (t_add_sprite){6, 5, false, false});
  405494:	43 8d 04 2c          	lea    (%r12,%r13,1),%eax
  405498:	83 c0 e0             	add    $0xffffffe0,%eax
  40549b:	0f 57 c0             	xorps  %xmm0,%xmm0
  40549e:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4054a2:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TR],
  4054a7:	0f 14 04 24          	unpcklps (%rsp),%xmm0
  4054ab:	48 89 ef             	mov    %rbp,%rdi
  4054ae:	4c 89 f2             	mov    %r14,%rdx
  4054b1:	31 c9                	xor    %ecx,%ecx
  4054b3:	e8 68 54 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BL],
  4054b8:	48 8b 6b 30          	mov    0x30(%rbx),%rbp
  4054bc:	48 89 df             	mov    %rbx,%rdi
  4054bf:	e8 1c f1 ff ff       	call   4045e0 <sp>
  4054c4:	48 8b b0 28 02 00 00 	mov    0x228(%rax),%rsi
		(t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_add_sprite){6, 5,
  4054cb:	41 83 c7 20          	add    $0x20,%r15d
  4054cf:	0f 57 c9             	xorps  %xmm1,%xmm1
  4054d2:	f3 41 0f 2a cf       	cvtsi2ss %r15d,%xmm1
  4054d7:	0f 29 0c 24          	movaps %xmm1,(%rsp)
  4054db:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BL],
  4054e0:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4054e3:	48 89 ef             	mov    %rbp,%rdi
  4054e6:	4c 89 f2             	mov    %r14,%rdx
  4054e9:	31 c9                	xor    %ecx,%ecx
  4054eb:	e8 30 54 00 00       	call   40a920 <rdr_add_sprite>
		false, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BR],
  4054f0:	48 8b 6b 30          	mov    0x30(%rbx),%rbp
  4054f4:	48 89 df             	mov    %rbx,%rdi
  4054f7:	e8 e4 f0 ff ff       	call   4045e0 <sp>
  4054fc:	48 8b b0 30 02 00 00 	mov    0x230(%rax),%rsi
  405503:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  405508:	0f 14 04 24          	unpcklps (%rsp),%xmm0
  40550c:	48 89 ef             	mov    %rbp,%rdi
  40550f:	4c 89 f2             	mov    %r14,%rdx
  405512:	31 c9                	xor    %ecx,%ecx
  405514:	48 83 c4 38          	add    $0x38,%rsp
  405518:	5b                   	pop    %rbx
  405519:	41 5c                	pop    %r12
  40551b:	41 5d                	pop    %r13
  40551d:	41 5e                	pop    %r14
  40551f:	41 5f                	pop    %r15
  405521:	5d                   	pop    %rbp
  405522:	e9 f9 53 00 00       	jmp    40a920 <rdr_add_sprite>
  405527:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40552e:	00 00 

0000000000405530 <btn_new_label>:
		(t_vec2){x - 32 + s, y - 32 + 64}, (t_add_sprite){6, 5, false, false});
}

t_btn	btn_new_label(t_vec2i pos, int size, char *label, t_click click)
{
  405530:	48 89 f8             	mov    %rdi,%rax
	return ((t_btn){pos.x, pos.y, size, label, NULL, click, false, false});
  405533:	89 37                	mov    %esi,(%rdi)
  405535:	48 c1 ee 20          	shr    $0x20,%rsi
  405539:	89 77 04             	mov    %esi,0x4(%rdi)
  40553c:	89 57 08             	mov    %edx,0x8(%rdi)
  40553f:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
  405543:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
  40554a:	00 
  40554b:	4c 89 47 20          	mov    %r8,0x20(%rdi)
  40554f:	66 c7 47 28 00 00    	movw   $0x0,0x28(%rdi)
  405555:	c3                   	ret    
  405556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40555d:	00 00 00 

0000000000405560 <btn_new_img>:
}

t_btn	btn_new_img(t_vec2i pos, int size, t_img *img, t_click click)
{
  405560:	48 89 f8             	mov    %rdi,%rax
	return ((t_btn){pos.x, pos.y, size, NULL, img, click, false, false});
  405563:	89 37                	mov    %esi,(%rdi)
  405565:	48 c1 ee 20          	shr    $0x20,%rsi
  405569:	89 77 04             	mov    %esi,0x4(%rdi)
  40556c:	89 57 08             	mov    %edx,0x8(%rdi)
  40556f:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  405576:	00 
  405577:	48 89 4f 18          	mov    %rcx,0x18(%rdi)
  40557b:	4c 89 47 20          	mov    %r8,0x20(%rdi)
  40557f:	66 c7 47 28 00 00    	movw   $0x0,0x28(%rdi)
  405585:	c3                   	ret    
  405586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40558d:	00 00 00 

0000000000405590 <draw_banner_h>:
		(t_draw_inter){size.x - 2, imgs->mid_index});
	draw_right(game, pos, size, imgs);
}

void	draw_banner_h(t_game *g, t_vec2i pos, t_vec2i size)
{
  405590:	41 57                	push   %r15
  405592:	41 56                	push   %r14
  405594:	53                   	push   %rbx
  405595:	48 83 ec 60          	sub    $0x60,%rsp
  405599:	49 89 d6             	mov    %rdx,%r14
  40559c:	49 89 f7             	mov    %rsi,%r15
  40559f:	48 89 fb             	mov    %rdi,%rbx
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  4055a2:	e8 39 f0 ff ff       	call   4045e0 <sp>
  4055a7:	48 8b 80 38 02 00 00 	mov    0x238(%rax),%rax
  4055ae:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4055b3:	48 89 df             	mov    %rbx,%rdi
  4055b6:	e8 25 f0 ff ff       	call   4045e0 <sp>
  4055bb:	48 8b 80 40 02 00 00 	mov    0x240(%rax),%rax
  4055c2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
		sp(g)[SP_BNR_TR], sp(g)[SP_BNR_L], sp(g)[SP_BNR_M], sp(g)[SP_BNR_R],
  4055c7:	48 89 df             	mov    %rbx,%rdi
  4055ca:	e8 11 f0 ff ff       	call   4045e0 <sp>
  4055cf:	48 8b 80 48 02 00 00 	mov    0x248(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  4055d6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
		sp(g)[SP_BNR_TR], sp(g)[SP_BNR_L], sp(g)[SP_BNR_M], sp(g)[SP_BNR_R],
  4055db:	48 89 df             	mov    %rbx,%rdi
  4055de:	e8 fd ef ff ff       	call   4045e0 <sp>
  4055e3:	48 8b 80 50 02 00 00 	mov    0x250(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  4055ea:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
		sp(g)[SP_BNR_TR], sp(g)[SP_BNR_L], sp(g)[SP_BNR_M], sp(g)[SP_BNR_R],
  4055ef:	48 89 df             	mov    %rbx,%rdi
  4055f2:	e8 e9 ef ff ff       	call   4045e0 <sp>
  4055f7:	48 8b 80 58 02 00 00 	mov    0x258(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  4055fe:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
		sp(g)[SP_BNR_TR], sp(g)[SP_BNR_L], sp(g)[SP_BNR_M], sp(g)[SP_BNR_R],
  405603:	48 89 df             	mov    %rbx,%rdi
  405606:	e8 d5 ef ff ff       	call   4045e0 <sp>
  40560b:	48 8b 80 60 02 00 00 	mov    0x260(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  405612:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		sp(g)[SP_BNR_BL], sp(g)[SP_BNR_B], sp(g)[SP_BNR_BR],
  405617:	48 89 df             	mov    %rbx,%rdi
  40561a:	e8 c1 ef ff ff       	call   4045e0 <sp>
  40561f:	48 8b 80 68 02 00 00 	mov    0x268(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  405626:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
		sp(g)[SP_BNR_BL], sp(g)[SP_BNR_B], sp(g)[SP_BNR_BR],
  40562b:	48 89 df             	mov    %rbx,%rdi
  40562e:	e8 ad ef ff ff       	call   4045e0 <sp>
  405633:	48 8b 80 70 02 00 00 	mov    0x270(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  40563a:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
		sp(g)[SP_BNR_BL], sp(g)[SP_BNR_B], sp(g)[SP_BNR_BR],
  40563f:	48 89 df             	mov    %rbx,%rdi
  405642:	e8 99 ef ff ff       	call   4045e0 <sp>
  405647:	48 8b 80 78 02 00 00 	mov    0x278(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
  40564e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  405653:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
  40565a:	00 00 00 
  40565d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  405662:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%rsp)
  405669:	00 
  40566a:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
		1, 1, 1};

	_draw_banner(g, pos, size, &imgs);
  40566f:	48 89 df             	mov    %rbx,%rdi
  405672:	4c 89 fe             	mov    %r15,%rsi
  405675:	4c 89 f2             	mov    %r14,%rdx
  405678:	e8 13 00 00 00       	call   405690 <_draw_banner>
}
  40567d:	48 83 c4 60          	add    $0x60,%rsp
  405681:	5b                   	pop    %rbx
  405682:	41 5e                	pop    %r14
  405684:	41 5f                	pop    %r15
  405686:	c3                   	ret    
  405687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40568e:	00 00 

0000000000405690 <_draw_banner>:
{
  405690:	55                   	push   %rbp
  405691:	41 57                	push   %r15
  405693:	41 56                	push   %r14
  405695:	41 55                	push   %r13
  405697:	41 54                	push   %r12
  405699:	53                   	push   %rbx
  40569a:	48 83 ec 38          	sub    $0x38,%rsp
  40569e:	48 89 cb             	mov    %rcx,%rbx
  4056a1:	49 89 d6             	mov    %rdx,%r14
  4056a4:	48 89 f5             	mov    %rsi,%rbp
  4056a7:	48 89 f0             	mov    %rsi,%rax
  4056aa:	48 c1 e8 20          	shr    $0x20,%rax
  4056ae:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4056b3:	48 89 d0             	mov    %rdx,%rax
  4056b6:	48 c1 e8 20          	shr    $0x20,%rax
  4056ba:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
	rdr = game->rdr;
  4056bf:	4c 8b 6f 30          	mov    0x30(%rdi),%r13
  4056c3:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  4056ca:	ff ff ff 
	draw_left(game, pos, size, imgs);
  4056cd:	49 21 f7             	and    %rsi,%r15
  4056d0:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  4056d5:	e8 f6 04 00 00       	call   405bd0 <draw_left>
	draw_horizontal_inter_tiles(rdr, imgs->top,
  4056da:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4056de:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
		(t_vec2i){pos.x + SCALED_SIZE, pos.y},
  4056e3:	44 8d 65 40          	lea    0x40(%rbp),%r12d
  4056e7:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
		(t_draw_inter){size.x - 2, imgs->mid_index});
  4056ec:	41 83 c6 fe          	add    $0xfffffffe,%r14d
	draw_horizontal_inter_tiles(rdr, imgs->top,
  4056f0:	4d 09 e7             	or     %r12,%r15
  4056f3:	8b 4b 4c             	mov    0x4c(%rbx),%ecx
  4056f6:	48 c1 e1 20          	shl    $0x20,%rcx
  4056fa:	4c 09 f1             	or     %r14,%rcx
  4056fd:	4c 89 ef             	mov    %r13,%rdi
  405700:	4c 89 fa             	mov    %r15,%rdx
  405703:	e8 38 04 00 00       	call   405b40 <draw_horizontal_inter_tiles>
  405708:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
	while (i < size.y - 1)
  40570d:	8d 41 ff             	lea    -0x1(%rcx),%eax
  405710:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405715:	83 f9 03             	cmp    $0x3,%ecx
  405718:	7c 55                	jl     40576f <_draw_banner+0xdf>
  40571a:	48 b8 00 00 00 00 40 	movabs $0x4000000000,%rax
  405721:	00 00 00 
  405724:	44 8b 7c 24 08       	mov    0x8(%rsp),%r15d
  405729:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  40572e:	48 c1 e5 20          	shl    $0x20,%rbp
  405732:	48 01 c5             	add    %rax,%rbp
  405735:	49 83 c7 ff          	add    $0xffffffffffffffff,%r15
  405739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
		draw_horizontal_inter_tiles(rdr, imgs->mid,
  405740:	48 8b 73 20          	mov    0x20(%rbx),%rsi
  405744:	48 89 ea             	mov    %rbp,%rdx
  405747:	4c 09 e2             	or     %r12,%rdx
  40574a:	8b 4b 4c             	mov    0x4c(%rbx),%ecx
  40574d:	48 c1 e1 20          	shl    $0x20,%rcx
  405751:	4c 09 f1             	or     %r14,%rcx
  405754:	4c 89 ef             	mov    %r13,%rdi
  405757:	e8 e4 03 00 00       	call   405b40 <draw_horizontal_inter_tiles>
	while (i < size.y - 1)
  40575c:	48 b8 00 00 00 00 40 	movabs $0x4000000000,%rax
  405763:	00 00 00 
  405766:	48 01 c5             	add    %rax,%rbp
  405769:	49 83 c7 ff          	add    $0xffffffffffffffff,%r15
  40576d:	75 d1                	jne    405740 <_draw_banner+0xb0>
	draw_horizontal_inter_tiles(rdr, imgs->bot,
  40576f:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  405773:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
  405778:	c1 e2 06             	shl    $0x6,%edx
  40577b:	03 54 24 10          	add    0x10(%rsp),%edx
	draw_horizontal_inter_tiles(rdr, imgs->bot,
  40577f:	48 c1 e2 20          	shl    $0x20,%rdx
  405783:	4c 09 e2             	or     %r12,%rdx
  405786:	8b 4b 4c             	mov    0x4c(%rbx),%ecx
  405789:	48 c1 e1 20          	shl    $0x20,%rcx
  40578d:	4c 09 f1             	or     %r14,%rcx
  405790:	4c 89 ef             	mov    %r13,%rdi
  405793:	e8 a8 03 00 00       	call   405b40 <draw_horizontal_inter_tiles>
  405798:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  40579d:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4057a2:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
	draw_right(game, pos, size, imgs);
  4057a7:	48 89 d9             	mov    %rbx,%rcx
  4057aa:	48 83 c4 38          	add    $0x38,%rsp
  4057ae:	5b                   	pop    %rbx
  4057af:	41 5c                	pop    %r12
  4057b1:	41 5d                	pop    %r13
  4057b3:	41 5e                	pop    %r14
  4057b5:	41 5f                	pop    %r15
  4057b7:	5d                   	pop    %rbp
  4057b8:	e9 53 05 00 00       	jmp    405d10 <draw_right>
  4057bd:	0f 1f 00             	nopl   (%rax)

00000000004057c0 <draw_banner_v>:

void	draw_banner_v(t_game *g, t_vec2i pos, t_vec2i size)
{
  4057c0:	41 57                	push   %r15
  4057c2:	41 56                	push   %r14
  4057c4:	53                   	push   %rbx
  4057c5:	48 83 ec 60          	sub    $0x60,%rsp
  4057c9:	49 89 d6             	mov    %rdx,%r14
  4057cc:	49 89 f7             	mov    %rsi,%r15
  4057cf:	48 89 fb             	mov    %rdi,%rbx
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  4057d2:	e8 09 ee ff ff       	call   4045e0 <sp>
  4057d7:	48 8b 80 80 02 00 00 	mov    0x280(%rax),%rax
  4057de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4057e3:	48 89 df             	mov    %rbx,%rdi
  4057e6:	e8 f5 ed ff ff       	call   4045e0 <sp>
  4057eb:	48 8b 80 88 02 00 00 	mov    0x288(%rax),%rax
  4057f2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
		sp(g)[SP_BNRV_TR], sp(g)[SP_BNRV_L], sp(g)[SP_BNRV_M], sp(g)[SP_BNRV_R],
  4057f7:	48 89 df             	mov    %rbx,%rdi
  4057fa:	e8 e1 ed ff ff       	call   4045e0 <sp>
  4057ff:	48 8b 80 90 02 00 00 	mov    0x290(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  405806:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
		sp(g)[SP_BNRV_TR], sp(g)[SP_BNRV_L], sp(g)[SP_BNRV_M], sp(g)[SP_BNRV_R],
  40580b:	48 89 df             	mov    %rbx,%rdi
  40580e:	e8 cd ed ff ff       	call   4045e0 <sp>
  405813:	48 8b 80 98 02 00 00 	mov    0x298(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  40581a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
		sp(g)[SP_BNRV_TR], sp(g)[SP_BNRV_L], sp(g)[SP_BNRV_M], sp(g)[SP_BNRV_R],
  40581f:	48 89 df             	mov    %rbx,%rdi
  405822:	e8 b9 ed ff ff       	call   4045e0 <sp>
  405827:	48 8b 80 a0 02 00 00 	mov    0x2a0(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  40582e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
		sp(g)[SP_BNRV_TR], sp(g)[SP_BNRV_L], sp(g)[SP_BNRV_M], sp(g)[SP_BNRV_R],
  405833:	48 89 df             	mov    %rbx,%rdi
  405836:	e8 a5 ed ff ff       	call   4045e0 <sp>
  40583b:	48 8b 80 a8 02 00 00 	mov    0x2a8(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  405842:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		sp(g)[SP_BNRV_BL], sp(g)[SP_BNRV_B], sp(g)[SP_BNRV_BR],
  405847:	48 89 df             	mov    %rbx,%rdi
  40584a:	e8 91 ed ff ff       	call   4045e0 <sp>
  40584f:	48 8b 80 b0 02 00 00 	mov    0x2b0(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  405856:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
		sp(g)[SP_BNRV_BL], sp(g)[SP_BNRV_B], sp(g)[SP_BNRV_BR],
  40585b:	48 89 df             	mov    %rbx,%rdi
  40585e:	e8 7d ed ff ff       	call   4045e0 <sp>
  405863:	48 8b 80 b8 02 00 00 	mov    0x2b8(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  40586a:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
		sp(g)[SP_BNRV_BL], sp(g)[SP_BNRV_B], sp(g)[SP_BNRV_BR],
  40586f:	48 89 df             	mov    %rbx,%rdi
  405872:	e8 69 ed ff ff       	call   4045e0 <sp>
  405877:	48 8b 80 c0 02 00 00 	mov    0x2c0(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
  40587e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  405883:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
  40588a:	00 00 00 
  40588d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  405892:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%rsp)
  405899:	00 
  40589a:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
		1, 1, 1};

	_draw_banner(g, pos, size, &imgs);
  40589f:	48 89 df             	mov    %rbx,%rdi
  4058a2:	4c 89 fe             	mov    %r15,%rsi
  4058a5:	4c 89 f2             	mov    %r14,%rdx
  4058a8:	e8 e3 fd ff ff       	call   405690 <_draw_banner>
}
  4058ad:	48 83 c4 60          	add    $0x60,%rsp
  4058b1:	5b                   	pop    %rbx
  4058b2:	41 5e                	pop    %r14
  4058b4:	41 5f                	pop    %r15
  4058b6:	c3                   	ret    
  4058b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4058be:	00 00 

00000000004058c0 <draw_banner_cl>:

void	draw_banner_cl(t_game *g, t_vec2i pos, t_vec2i size)
{
  4058c0:	41 57                	push   %r15
  4058c2:	41 56                	push   %r14
  4058c4:	53                   	push   %rbx
  4058c5:	48 83 ec 60          	sub    $0x60,%rsp
  4058c9:	49 89 d6             	mov    %rdx,%r14
  4058cc:	49 89 f7             	mov    %rsi,%r15
  4058cf:	48 89 fb             	mov    %rdi,%rbx
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  4058d2:	e8 09 ed ff ff       	call   4045e0 <sp>
  4058d7:	48 8b 80 c8 02 00 00 	mov    0x2c8(%rax),%rax
  4058de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4058e3:	48 89 df             	mov    %rbx,%rdi
  4058e6:	e8 f5 ec ff ff       	call   4045e0 <sp>
  4058eb:	48 8b 80 d0 02 00 00 	mov    0x2d0(%rax),%rax
  4058f2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
		sp(g)[SP_BNRCL_TR], sp(g)[SP_BNRCL_L], sp(g)[SP_BNRCL_M],
  4058f7:	48 89 df             	mov    %rbx,%rdi
  4058fa:	e8 e1 ec ff ff       	call   4045e0 <sp>
  4058ff:	48 8b 80 d8 02 00 00 	mov    0x2d8(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  405906:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
		sp(g)[SP_BNRCL_TR], sp(g)[SP_BNRCL_L], sp(g)[SP_BNRCL_M],
  40590b:	48 89 df             	mov    %rbx,%rdi
  40590e:	e8 cd ec ff ff       	call   4045e0 <sp>
  405913:	48 8b 80 e0 02 00 00 	mov    0x2e0(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  40591a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
		sp(g)[SP_BNRCL_TR], sp(g)[SP_BNRCL_L], sp(g)[SP_BNRCL_M],
  40591f:	48 89 df             	mov    %rbx,%rdi
  405922:	e8 b9 ec ff ff       	call   4045e0 <sp>
  405927:	48 8b 80 e8 02 00 00 	mov    0x2e8(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  40592e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
		sp(g)[SP_BNRCL_R],
  405933:	48 89 df             	mov    %rbx,%rdi
  405936:	e8 a5 ec ff ff       	call   4045e0 <sp>
  40593b:	48 8b 80 f0 02 00 00 	mov    0x2f0(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  405942:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		sp(g)[SP_BNRCL_BL], sp(g)[SP_BNRCL_B], sp(g)[SP_BNRCL_BR],
  405947:	48 89 df             	mov    %rbx,%rdi
  40594a:	e8 91 ec ff ff       	call   4045e0 <sp>
  40594f:	48 8b 80 f8 02 00 00 	mov    0x2f8(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  405956:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
		sp(g)[SP_BNRCL_BL], sp(g)[SP_BNRCL_B], sp(g)[SP_BNRCL_BR],
  40595b:	48 89 df             	mov    %rbx,%rdi
  40595e:	e8 7d ec ff ff       	call   4045e0 <sp>
  405963:	48 8b 80 00 03 00 00 	mov    0x300(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  40596a:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
		sp(g)[SP_BNRCL_BL], sp(g)[SP_BNRCL_B], sp(g)[SP_BNRCL_BR],
  40596f:	48 89 df             	mov    %rbx,%rdi
  405972:	e8 69 ec ff ff       	call   4045e0 <sp>
  405977:	48 8b 80 08 03 00 00 	mov    0x308(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
  40597e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  405983:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
  40598a:	00 00 00 
  40598d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  405992:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
  405999:	00 
  40599a:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
		1, 1, 0};

	_draw_banner(g, pos, size, &imgs);
  40599f:	48 89 df             	mov    %rbx,%rdi
  4059a2:	4c 89 fe             	mov    %r15,%rsi
  4059a5:	4c 89 f2             	mov    %r14,%rdx
  4059a8:	e8 e3 fc ff ff       	call   405690 <_draw_banner>
}
  4059ad:	48 83 c4 60          	add    $0x60,%rsp
  4059b1:	5b                   	pop    %rbx
  4059b2:	41 5e                	pop    %r14
  4059b4:	41 5f                	pop    %r15
  4059b6:	c3                   	ret    
  4059b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4059be:	00 00 

00000000004059c0 <draw_banner_cr>:

void	draw_banner_cr(t_game *g, t_vec2i pos, t_vec2i size)
{
  4059c0:	41 57                	push   %r15
  4059c2:	41 56                	push   %r14
  4059c4:	53                   	push   %rbx
  4059c5:	48 83 ec 60          	sub    $0x60,%rsp
  4059c9:	49 89 d6             	mov    %rdx,%r14
  4059cc:	49 89 f7             	mov    %rsi,%r15
  4059cf:	48 89 fb             	mov    %rdi,%rbx
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  4059d2:	e8 09 ec ff ff       	call   4045e0 <sp>
  4059d7:	48 8b 80 10 03 00 00 	mov    0x310(%rax),%rax
  4059de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4059e3:	48 89 df             	mov    %rbx,%rdi
  4059e6:	e8 f5 eb ff ff       	call   4045e0 <sp>
  4059eb:	48 8b 80 18 03 00 00 	mov    0x318(%rax),%rax
  4059f2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
		sp(g)[SP_BNRCR_TR], sp(g)[SP_BNRCR_L], sp(g)[SP_BNRCR_M],
  4059f7:	48 89 df             	mov    %rbx,%rdi
  4059fa:	e8 e1 eb ff ff       	call   4045e0 <sp>
  4059ff:	48 8b 80 20 03 00 00 	mov    0x320(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a06:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
		sp(g)[SP_BNRCR_TR], sp(g)[SP_BNRCR_L], sp(g)[SP_BNRCR_M],
  405a0b:	48 89 df             	mov    %rbx,%rdi
  405a0e:	e8 cd eb ff ff       	call   4045e0 <sp>
  405a13:	48 8b 80 28 03 00 00 	mov    0x328(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a1a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
		sp(g)[SP_BNRCR_TR], sp(g)[SP_BNRCR_L], sp(g)[SP_BNRCR_M],
  405a1f:	48 89 df             	mov    %rbx,%rdi
  405a22:	e8 b9 eb ff ff       	call   4045e0 <sp>
  405a27:	48 8b 80 30 03 00 00 	mov    0x330(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a2e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
		sp(g)[SP_BNRCR_R],
  405a33:	48 89 df             	mov    %rbx,%rdi
  405a36:	e8 a5 eb ff ff       	call   4045e0 <sp>
  405a3b:	48 8b 80 38 03 00 00 	mov    0x338(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a42:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		sp(g)[SP_BNRCR_BL], sp(g)[SP_BNRCR_B], sp(g)[SP_BNRCR_BR],
  405a47:	48 89 df             	mov    %rbx,%rdi
  405a4a:	e8 91 eb ff ff       	call   4045e0 <sp>
  405a4f:	48 8b 80 40 03 00 00 	mov    0x340(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a56:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
		sp(g)[SP_BNRCR_BL], sp(g)[SP_BNRCR_B], sp(g)[SP_BNRCR_BR],
  405a5b:	48 89 df             	mov    %rbx,%rdi
  405a5e:	e8 7d eb ff ff       	call   4045e0 <sp>
  405a63:	48 8b 80 48 03 00 00 	mov    0x348(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a6a:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
		sp(g)[SP_BNRCR_BL], sp(g)[SP_BNRCR_B], sp(g)[SP_BNRCR_BR],
  405a6f:	48 89 df             	mov    %rbx,%rdi
  405a72:	e8 69 eb ff ff       	call   4045e0 <sp>
  405a77:	48 8b 80 50 03 00 00 	mov    0x350(%rax),%rax
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
  405a7e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  405a83:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
  405a8a:	00 00 00 
  405a8d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  405a92:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%rsp)
  405a99:	00 
  405a9a:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
		0, 1, 1};

	_draw_banner(g, pos, size, &imgs);
  405a9f:	48 89 df             	mov    %rbx,%rdi
  405aa2:	4c 89 fe             	mov    %r15,%rsi
  405aa5:	4c 89 f2             	mov    %r14,%rdx
  405aa8:	e8 e3 fb ff ff       	call   405690 <_draw_banner>
}
  405aad:	48 83 c4 60          	add    $0x60,%rsp
  405ab1:	5b                   	pop    %rbx
  405ab2:	41 5e                	pop    %r14
  405ab4:	41 5f                	pop    %r15
  405ab6:	c3                   	ret    
  405ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405abe:	00 00 

0000000000405ac0 <draw_vertical_inter_tiles>:
void	draw_vertical_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	t_draw_inter inter)
{
  405ac0:	41 57                	push   %r15
  405ac2:	41 56                	push   %r14
  405ac4:	41 55                	push   %r13
  405ac6:	41 54                	push   %r12
  405ac8:	53                   	push   %rbx
  405ac9:	48 83 ec 10          	sub    $0x10,%rsp
  405acd:	49 89 cd             	mov    %rcx,%r13
	int	i;

	i = 0;
	while (i < inter.size)
  405ad0:	45 85 ed             	test   %r13d,%r13d
  405ad3:	7e 56                	jle    405b2b <draw_vertical_inter_tiles+0x6b>
  405ad5:	49 89 f6             	mov    %rsi,%r14
  405ad8:	49 89 ff             	mov    %rdi,%r15
  405adb:	48 89 d3             	mov    %rdx,%rbx
  405ade:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
  405ae2:	0f 29 04 24          	movaps %xmm0,(%rsp)
  405ae6:	48 c1 eb 20          	shr    $0x20,%rbx
  405aea:	4c 89 e8             	mov    %r13,%rax
  405aed:	48 c1 e8 20          	shr    $0x20,%rax
  405af1:	49 bc 00 00 00 00 05 	movabs $0x500000000,%r12
  405af8:	00 00 00 
  405afb:	49 09 c4             	or     %rax,%r12
  405afe:	66 90                	xchg   %ax,%ax
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x, pos.y + i * SCALED_SIZE},
  405b00:	0f 57 c0             	xorps  %xmm0,%xmm0
  405b03:	f3 0f 2a c3          	cvtsi2ss %ebx,%xmm0
  405b07:	0f 28 0c 24          	movaps (%rsp),%xmm1
  405b0b:	0f 16 c1             	movlhps %xmm1,%xmm0
  405b0e:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  405b12:	4c 89 ff             	mov    %r15,%rdi
  405b15:	4c 89 f6             	mov    %r14,%rsi
  405b18:	4c 89 e2             	mov    %r12,%rdx
  405b1b:	31 c9                	xor    %ecx,%ecx
  405b1d:	e8 fe 4d 00 00       	call   40a920 <rdr_add_sprite>
	while (i < inter.size)
  405b22:	83 c3 40             	add    $0x40,%ebx
  405b25:	41 83 c5 ff          	add    $0xffffffff,%r13d
  405b29:	75 d5                	jne    405b00 <draw_vertical_inter_tiles+0x40>
			(t_add_sprite){inter.z_index, 5, false, false});
		i++;
	}
}
  405b2b:	48 83 c4 10          	add    $0x10,%rsp
  405b2f:	5b                   	pop    %rbx
  405b30:	41 5c                	pop    %r12
  405b32:	41 5d                	pop    %r13
  405b34:	41 5e                	pop    %r14
  405b36:	41 5f                	pop    %r15
  405b38:	c3                   	ret    
  405b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405b40 <draw_horizontal_inter_tiles>:
void	draw_horizontal_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	t_draw_inter inter)
{
  405b40:	41 57                	push   %r15
  405b42:	41 56                	push   %r14
  405b44:	41 55                	push   %r13
  405b46:	41 54                	push   %r12
  405b48:	53                   	push   %rbx
  405b49:	48 83 ec 10          	sub    $0x10,%rsp
  405b4d:	49 89 ce             	mov    %rcx,%r14
	int	i;

	i = 0;
	while (i < inter.size)
  405b50:	45 85 f6             	test   %r14d,%r14d
  405b53:	7e 5f                	jle    405bb4 <draw_horizontal_inter_tiles+0x74>
  405b55:	48 89 d3             	mov    %rdx,%rbx
  405b58:	49 89 f7             	mov    %rsi,%r15
  405b5b:	49 89 fc             	mov    %rdi,%r12
  405b5e:	48 89 d0             	mov    %rdx,%rax
  405b61:	48 c1 e8 20          	shr    $0x20,%rax
  405b65:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  405b69:	0f 29 04 24          	movaps %xmm0,(%rsp)
  405b6d:	4c 89 f0             	mov    %r14,%rax
  405b70:	48 c1 e8 20          	shr    $0x20,%rax
  405b74:	49 bd 00 00 00 00 05 	movabs $0x500000000,%r13
  405b7b:	00 00 00 
  405b7e:	49 09 c5             	or     %rax,%r13
  405b81:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b88:	00 00 00 
  405b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x + i * SCALED_SIZE, pos.y},
  405b90:	0f 57 c0             	xorps  %xmm0,%xmm0
  405b93:	f3 0f 2a c3          	cvtsi2ss %ebx,%xmm0
  405b97:	0f 14 04 24          	unpcklps (%rsp),%xmm0
  405b9b:	4c 89 e7             	mov    %r12,%rdi
  405b9e:	4c 89 fe             	mov    %r15,%rsi
  405ba1:	4c 89 ea             	mov    %r13,%rdx
  405ba4:	31 c9                	xor    %ecx,%ecx
  405ba6:	e8 75 4d 00 00       	call   40a920 <rdr_add_sprite>
	while (i < inter.size)
  405bab:	83 c3 40             	add    $0x40,%ebx
  405bae:	41 83 c6 ff          	add    $0xffffffff,%r14d
  405bb2:	75 dc                	jne    405b90 <draw_horizontal_inter_tiles+0x50>
			(t_add_sprite){inter.z_index, 5, false, false});
		i++;
	}
}
  405bb4:	48 83 c4 10          	add    $0x10,%rsp
  405bb8:	5b                   	pop    %rbx
  405bb9:	41 5c                	pop    %r12
  405bbb:	41 5d                	pop    %r13
  405bbd:	41 5e                	pop    %r14
  405bbf:	41 5f                	pop    %r15
  405bc1:	c3                   	ret    
  405bc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405bc9:	00 00 00 
  405bcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405bd0 <draw_left>:
void	draw_left(
	t_game *game,
	t_vec2i pos,
	t_vec2i size,
	const struct s_images *imgs)
{
  405bd0:	55                   	push   %rbp
  405bd1:	41 57                	push   %r15
  405bd3:	41 56                	push   %r14
  405bd5:	41 55                	push   %r13
  405bd7:	41 54                	push   %r12
  405bd9:	53                   	push   %rbx
  405bda:	48 83 ec 48          	sub    $0x48,%rsp
  405bde:	48 89 d3             	mov    %rdx,%rbx
  405be1:	49 89 f7             	mov    %rsi,%r15
  405be4:	48 b8 00 00 00 00 05 	movabs $0x500000000,%rax
  405beb:	00 00 00 
  405bee:	48 89 f2             	mov    %rsi,%rdx
  405bf1:	48 c1 ea 20          	shr    $0x20,%rdx
  405bf5:	48 c1 eb 20          	shr    $0x20,%rbx
	t_renderer	*rdr;

	rdr = game->rdr;
	rdr_add_sprite(rdr, imgs->topleft, (t_vec2){pos.x, pos.y},
  405bf9:	f3 41 0f 2a c7       	cvtsi2ss %r15d,%xmm0
	rdr = game->rdr;
  405bfe:	4c 8b 6f 30          	mov    0x30(%rdi),%r13
  405c02:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
	rdr_add_sprite(rdr, imgs->topleft, (t_vec2){pos.x, pos.y},
  405c07:	f3 0f 2a ca          	cvtsi2ss %edx,%xmm1
  405c0b:	48 8b 31             	mov    (%rcx),%rsi
  405c0e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
		(t_add_sprite){imgs->left_index, 5, false, false});
  405c13:	8b 51 48             	mov    0x48(%rcx),%edx
	rdr_add_sprite(rdr, imgs->topleft, (t_vec2){pos.x, pos.y},
  405c16:	48 09 c2             	or     %rax,%rdx
  405c19:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  405c1e:	0f 14 c1             	unpcklps %xmm1,%xmm0
  405c21:	4c 89 ef             	mov    %r13,%rdi
  405c24:	31 c9                	xor    %ecx,%ecx
  405c26:	e8 f5 4c 00 00       	call   40a920 <rdr_add_sprite>
  405c2b:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  405c30:	44 8d 73 fe          	lea    -0x2(%rbx),%r14d
	while (i < inter.size)
  405c34:	45 85 f6             	test   %r14d,%r14d
  405c37:	7e 75                	jle    405cae <draw_left+0xde>
  405c39:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  405c3e:	48 8b 59 18          	mov    0x18(%rcx),%rbx
  405c42:	48 b8 00 00 00 00 40 	movabs $0x4000000000,%rax
  405c49:	00 00 00 
  405c4c:	49 01 c7             	add    %rax,%r15
  405c4f:	4d 89 fc             	mov    %r15,%r12
  405c52:	49 c1 ec 20          	shr    $0x20,%r12
	draw_vertical_inter_tiles(rdr, imgs->left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE},
		(t_draw_inter){size.y - 2, imgs->left_index});
  405c56:	8b 69 48             	mov    0x48(%rcx),%ebp
  405c59:	0f 57 c0             	xorps  %xmm0,%xmm0
  405c5c:	f3 41 0f 2a c7       	cvtsi2ss %r15d,%xmm0
  405c61:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  405c66:	48 b8 00 00 00 00 05 	movabs $0x500000000,%rax
  405c6d:	00 00 00 
  405c70:	48 09 c5             	or     %rax,%rbp
  405c73:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c7a:	00 00 00 
  405c7d:	0f 1f 00             	nopl   (%rax)
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x, pos.y + i * SCALED_SIZE},
  405c80:	0f 57 c0             	xorps  %xmm0,%xmm0
  405c83:	f3 41 0f 2a c4       	cvtsi2ss %r12d,%xmm0
  405c88:	0f 28 4c 24 30       	movaps 0x30(%rsp),%xmm1
  405c8d:	0f 16 c1             	movlhps %xmm1,%xmm0
  405c90:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  405c94:	4c 89 ef             	mov    %r13,%rdi
  405c97:	48 89 de             	mov    %rbx,%rsi
  405c9a:	48 89 ea             	mov    %rbp,%rdx
  405c9d:	31 c9                	xor    %ecx,%ecx
  405c9f:	e8 7c 4c 00 00       	call   40a920 <rdr_add_sprite>
	while (i < inter.size)
  405ca4:	41 83 c4 40          	add    $0x40,%r12d
  405ca8:	41 83 c6 ff          	add    $0xffffffff,%r14d
  405cac:	75 d2                	jne    405c80 <draw_left+0xb0>
  405cae:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
	rdr_add_sprite(rdr, imgs->botleft,
  405cb3:	48 8b 71 30          	mov    0x30(%rcx),%rsi
  405cb7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
  405cbc:	c1 e0 06             	shl    $0x6,%eax
  405cbf:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  405cc4:	01 d0                	add    %edx,%eax
  405cc6:	83 c0 c0             	add    $0xffffffc0,%eax
  405cc9:	0f 57 c0             	xorps  %xmm0,%xmm0
  405ccc:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
		(t_add_sprite){imgs->left_index, 5, false, false});
  405cd0:	8b 51 48             	mov    0x48(%rcx),%edx
	rdr_add_sprite(rdr, imgs->botleft,
  405cd3:	48 b8 00 00 00 00 05 	movabs $0x500000000,%rax
  405cda:	00 00 00 
  405cdd:	48 09 c2             	or     %rax,%rdx
  405ce0:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  405ce5:	0f 16 c1             	movlhps %xmm1,%xmm0
  405ce8:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  405cec:	4c 89 ef             	mov    %r13,%rdi
  405cef:	31 c9                	xor    %ecx,%ecx
  405cf1:	48 83 c4 48          	add    $0x48,%rsp
  405cf5:	5b                   	pop    %rbx
  405cf6:	41 5c                	pop    %r12
  405cf8:	41 5d                	pop    %r13
  405cfa:	41 5e                	pop    %r14
  405cfc:	41 5f                	pop    %r15
  405cfe:	5d                   	pop    %rbp
  405cff:	e9 1c 4c 00 00       	jmp    40a920 <rdr_add_sprite>
  405d04:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405d0b:	00 00 00 
  405d0e:	66 90                	xchg   %ax,%ax

0000000000405d10 <draw_right>:
void	draw_right(
	t_game *game,
	t_vec2i pos,
	t_vec2i size,
	const struct s_images *imgs)
{
  405d10:	55                   	push   %rbp
  405d11:	41 57                	push   %r15
  405d13:	41 56                	push   %r14
  405d15:	41 55                	push   %r13
  405d17:	41 54                	push   %r12
  405d19:	53                   	push   %rbx
  405d1a:	48 83 ec 28          	sub    $0x28,%rsp
  405d1e:	48 89 f3             	mov    %rsi,%rbx
  405d21:	49 b8 00 00 00 00 05 	movabs $0x500000000,%r8
  405d28:	00 00 00 
  405d2b:	48 c1 ee 20          	shr    $0x20,%rsi
  405d2f:	48 89 d5             	mov    %rdx,%rbp
  405d32:	48 c1 ed 20          	shr    $0x20,%rbp
	t_renderer	*rdr;

	rdr = game->rdr;
	rdr_add_sprite(rdr, imgs->topright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
  405d36:	c1 e2 06             	shl    $0x6,%edx
  405d39:	8d 04 13             	lea    (%rbx,%rdx,1),%eax
  405d3c:	83 c0 c0             	add    $0xffffffc0,%eax
  405d3f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
	rdr = game->rdr;
  405d43:	4c 8b 7f 30          	mov    0x30(%rdi),%r15
  405d47:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
  405d4c:	f3 0f 2a ce          	cvtsi2ss %esi,%xmm1
	rdr_add_sprite(rdr, imgs->topright,
  405d50:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  405d54:	48 89 0c 24          	mov    %rcx,(%rsp)
		(t_add_sprite){imgs->right_index, 5, false, false});
  405d58:	8b 51 50             	mov    0x50(%rcx),%edx
	rdr_add_sprite(rdr, imgs->topright,
  405d5b:	4c 09 c2             	or     %r8,%rdx
  405d5e:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  405d63:	0f 14 c1             	unpcklps %xmm1,%xmm0
  405d66:	4c 89 ff             	mov    %r15,%rdi
  405d69:	31 c9                	xor    %ecx,%ecx
  405d6b:	e8 b0 4b 00 00       	call   40a920 <rdr_add_sprite>
  405d70:	44 8d 75 fe          	lea    -0x2(%rbp),%r14d
	while (i < inter.size)
  405d74:	45 85 f6             	test   %r14d,%r14d
  405d77:	7e 63                	jle    405ddc <draw_right+0xcc>
  405d79:	48 8b 0c 24          	mov    (%rsp),%rcx
  405d7d:	4c 8b 61 28          	mov    0x28(%rcx),%r12
  405d81:	48 b8 00 00 00 00 40 	movabs $0x4000000000,%rax
  405d88:	00 00 00 
  405d8b:	48 01 c3             	add    %rax,%rbx
  405d8e:	48 c1 eb 20          	shr    $0x20,%rbx
	draw_vertical_inter_tiles(rdr, imgs->right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE},
		(t_draw_inter){size.y - 2, imgs->right_index});
  405d92:	44 8b 69 50          	mov    0x50(%rcx),%r13d
  405d96:	48 b8 00 00 00 00 05 	movabs $0x500000000,%rax
  405d9d:	00 00 00 
  405da0:	49 09 c5             	or     %rax,%r13
  405da3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405daa:	00 00 00 
  405dad:	0f 1f 00             	nopl   (%rax)
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x, pos.y + i * SCALED_SIZE},
  405db0:	0f 57 c0             	xorps  %xmm0,%xmm0
  405db3:	f3 0f 2a c3          	cvtsi2ss %ebx,%xmm0
  405db7:	0f 28 4c 24 10       	movaps 0x10(%rsp),%xmm1
  405dbc:	0f 16 c1             	movlhps %xmm1,%xmm0
  405dbf:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  405dc3:	4c 89 ff             	mov    %r15,%rdi
  405dc6:	4c 89 e6             	mov    %r12,%rsi
  405dc9:	4c 89 ea             	mov    %r13,%rdx
  405dcc:	31 c9                	xor    %ecx,%ecx
  405dce:	e8 4d 4b 00 00       	call   40a920 <rdr_add_sprite>
	while (i < inter.size)
  405dd3:	83 c3 40             	add    $0x40,%ebx
  405dd6:	41 83 c6 ff          	add    $0xffffffff,%r14d
  405dda:	75 d4                	jne    405db0 <draw_right+0xa0>
  405ddc:	48 8b 0c 24          	mov    (%rsp),%rcx
	rdr_add_sprite(rdr, imgs->botright,
  405de0:	48 8b 71 40          	mov    0x40(%rcx),%rsi
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE,
		pos.y + (size.y - 1) * SCALED_SIZE},
  405de4:	c1 e5 06             	shl    $0x6,%ebp
  405de7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  405dec:	01 e8                	add    %ebp,%eax
  405dee:	83 c0 c0             	add    $0xffffffc0,%eax
  405df1:	0f 57 c0             	xorps  %xmm0,%xmm0
  405df4:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
		(t_add_sprite){imgs->right_index, 5, false, false});
  405df8:	8b 51 50             	mov    0x50(%rcx),%edx
	rdr_add_sprite(rdr, imgs->botright,
  405dfb:	48 b8 00 00 00 00 05 	movabs $0x500000000,%rax
  405e02:	00 00 00 
  405e05:	48 09 c2             	or     %rax,%rdx
  405e08:	0f 28 4c 24 10       	movaps 0x10(%rsp),%xmm1
  405e0d:	0f 16 c1             	movlhps %xmm1,%xmm0
  405e10:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  405e14:	4c 89 ff             	mov    %r15,%rdi
  405e17:	31 c9                	xor    %ecx,%ecx
  405e19:	48 83 c4 28          	add    $0x28,%rsp
  405e1d:	5b                   	pop    %rbx
  405e1e:	41 5c                	pop    %r12
  405e20:	41 5d                	pop    %r13
  405e22:	41 5e                	pop    %r14
  405e24:	41 5f                	pop    %r15
  405e26:	5d                   	pop    %rbp
  405e27:	e9 f4 4a 00 00       	jmp    40a920 <rdr_add_sprite>
  405e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405e30 <draw_ribbon>:

#include "math/vec2.h"
#include "so_long.h"

void	draw_ribbon(t_game *game, t_vec2i pos, int size)
{
  405e30:	55                   	push   %rbp
  405e31:	41 57                	push   %r15
  405e33:	41 56                	push   %r14
  405e35:	41 55                	push   %r13
  405e37:	41 54                	push   %r12
  405e39:	53                   	push   %rbx
  405e3a:	48 83 ec 28          	sub    $0x28,%rsp
  405e3e:	89 d3                	mov    %edx,%ebx
  405e40:	49 89 f6             	mov    %rsi,%r14
  405e43:	49 89 fd             	mov    %rdi,%r13
  405e46:	49 bf 01 00 00 00 05 	movabs $0x500000001,%r15
  405e4d:	00 00 00 
  405e50:	48 89 f5             	mov    %rsi,%rbp
  405e53:	48 c1 ed 20          	shr    $0x20,%rbp
	t_renderer	*rdr;
	int			i;

	rdr = game->rdr;
  405e57:	4c 8b 67 30          	mov    0x30(%rdi),%r12
	rdr_add_sprite(rdr, sp(game)[SP_RBN_LEFT], (t_vec2){pos.x, pos.y},
  405e5b:	e8 80 e7 ff ff       	call   4045e0 <sp>
  405e60:	48 8b b0 58 03 00 00 	mov    0x358(%rax),%rsi
  405e67:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  405e6c:	f3 41 0f 2a c6       	cvtsi2ss %r14d,%xmm0
  405e71:	f3 0f 2a cd          	cvtsi2ss %ebp,%xmm1
  405e75:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
  405e7a:	0f 14 c1             	unpcklps %xmm1,%xmm0
  405e7d:	4c 89 e7             	mov    %r12,%rdi
  405e80:	4c 89 fa             	mov    %r15,%rdx
  405e83:	31 c9                	xor    %ecx,%ecx
  405e85:	e8 96 4a 00 00       	call   40a920 <rdr_add_sprite>
		(t_add_sprite){1, 5, false, false});
	i = 1;
	while (i < size - 1)
  405e8a:	8d 6b ff             	lea    -0x1(%rbx),%ebp
  405e8d:	83 fb 03             	cmp    $0x3,%ebx
  405e90:	7c 40                	jl     405ed2 <draw_ribbon+0xa2>
  405e92:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  405e97:	44 8d 70 40          	lea    0x40(%rax),%r14d
  405e9b:	83 c3 fe             	add    $0xfffffffe,%ebx
  405e9e:	66 90                	xchg   %ax,%ax
	{
		rdr_add_sprite(rdr, sp(game)[SP_RBN_MID], (t_vec2){
  405ea0:	4c 89 ef             	mov    %r13,%rdi
  405ea3:	e8 38 e7 ff ff       	call   4045e0 <sp>
  405ea8:	48 8b b0 60 03 00 00 	mov    0x360(%rax),%rsi
			pos.x + i * SCALED_SIZE,
  405eaf:	0f 57 c0             	xorps  %xmm0,%xmm0
  405eb2:	f3 41 0f 2a c6       	cvtsi2ss %r14d,%xmm0
		rdr_add_sprite(rdr, sp(game)[SP_RBN_MID], (t_vec2){
  405eb7:	0f 14 44 24 10       	unpcklps 0x10(%rsp),%xmm0
  405ebc:	4c 89 e7             	mov    %r12,%rdi
  405ebf:	4c 89 fa             	mov    %r15,%rdx
  405ec2:	31 c9                	xor    %ecx,%ecx
  405ec4:	e8 57 4a 00 00       	call   40a920 <rdr_add_sprite>
	while (i < size - 1)
  405ec9:	41 83 c6 40          	add    $0x40,%r14d
  405ecd:	83 c3 ff             	add    $0xffffffff,%ebx
  405ed0:	75 ce                	jne    405ea0 <draw_ribbon+0x70>
			pos.y}, (t_add_sprite){1, 5, false, false});
		i++;
	}
	rdr_add_sprite(rdr, sp(game)[SP_RBN_RIGHT],
  405ed2:	4c 89 ef             	mov    %r13,%rdi
  405ed5:	e8 06 e7 ff ff       	call   4045e0 <sp>
		(t_vec2){pos.x + (size - 1) * SCALED_SIZE, pos.y},
  405eda:	c1 e5 06             	shl    $0x6,%ebp
  405edd:	03 6c 24 08          	add    0x8(%rsp),%ebp
  405ee1:	0f 57 c0             	xorps  %xmm0,%xmm0
  405ee4:	f3 0f 2a c5          	cvtsi2ss %ebp,%xmm0
	rdr_add_sprite(rdr, sp(game)[SP_RBN_RIGHT],
  405ee8:	48 8b b0 68 03 00 00 	mov    0x368(%rax),%rsi
  405eef:	0f 14 44 24 10       	unpcklps 0x10(%rsp),%xmm0
  405ef4:	4c 89 e7             	mov    %r12,%rdi
  405ef7:	4c 89 fa             	mov    %r15,%rdx
  405efa:	31 c9                	xor    %ecx,%ecx
  405efc:	48 83 c4 28          	add    $0x28,%rsp
  405f00:	5b                   	pop    %rbx
  405f01:	41 5c                	pop    %r12
  405f03:	41 5d                	pop    %r13
  405f05:	41 5e                	pop    %r14
  405f07:	41 5f                	pop    %r15
  405f09:	5d                   	pop    %rbp
  405f0a:	e9 11 4a 00 00       	jmp    40a920 <rdr_add_sprite>
  405f0f:	90                   	nop

0000000000405f10 <add_entity>:
#include "math/box.h"
#include "entity.h"
#include <sys/time.h>

t_entity	*add_entity(t_entity ***entities, t_entity *entity)
{
  405f10:	50                   	push   %rax
  405f11:	48 89 34 24          	mov    %rsi,(%rsp)
  405f15:	48 89 e6             	mov    %rsp,%rsi
	vector_add((void **) entities, &entity);
  405f18:	e8 73 44 00 00       	call   40a390 <vector_add>
	return (entity);
  405f1d:	48 8b 04 24          	mov    (%rsp),%rax
  405f21:	59                   	pop    %rcx
  405f22:	c3                   	ret    
  405f23:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405f2a:	00 00 00 
  405f2d:	0f 1f 00             	nopl   (%rax)

0000000000405f30 <remove_entity>:
}

void	remove_entity(t_game *game, int x, int y)
{
  405f30:	55                   	push   %rbp
  405f31:	41 57                	push   %r15
  405f33:	41 56                	push   %r14
  405f35:	41 54                	push   %r12
  405f37:	53                   	push   %rbx
  405f38:	41 89 d4             	mov    %edx,%r12d
  405f3b:	89 f5                	mov    %esi,%ebp
  405f3d:	49 89 fe             	mov    %rdi,%r14
	unsigned int	i;

	i = 0;
	while (i < vector_size(game->entities))
  405f40:	4c 8d 7f 20          	lea    0x20(%rdi),%r15
  405f44:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405f48:	e8 a3 44 00 00       	call   40a3f0 <vector_size>
  405f4d:	31 db                	xor    %ebx,%ebx
  405f4f:	85 c0                	test   %eax,%eax
  405f51:	74 49                	je     405f9c <remove_entity+0x6c>
  405f53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405f5a:	00 00 00 
  405f5d:	0f 1f 00             	nopl   (%rax)
	{
		if (box_collide_with_point(box_for_position(game->entities[i]->box,
  405f60:	49 8b 07             	mov    (%r15),%rax
  405f63:	48 8b 04 d8          	mov    (%rax,%rbx,8),%rax
  405f67:	f2 0f 10 50 0c       	movsd  0xc(%rax),%xmm2
  405f6c:	f2 0f 10 40 44       	movsd  0x44(%rax),%xmm0
  405f71:	f2 0f 10 48 4c       	movsd  0x4c(%rax),%xmm1
  405f76:	e8 e5 3d 00 00       	call   409d60 <box_for_position>
  405f7b:	89 ef                	mov    %ebp,%edi
  405f7d:	44 89 e6             	mov    %r12d,%esi
  405f80:	e8 fb 3d 00 00       	call   409d80 <box_collide_with_point>
  405f85:	84 c0                	test   %al,%al
  405f87:	75 13                	jne    405f9c <remove_entity+0x6c>
					game->entities[i]->pos), x, y))
			break ;
		i++;
  405f89:	48 83 c3 01          	add    $0x1,%rbx
	while (i < vector_size(game->entities))
  405f8d:	49 8b 3f             	mov    (%r15),%rdi
  405f90:	e8 5b 44 00 00       	call   40a3f0 <vector_size>
  405f95:	89 c0                	mov    %eax,%eax
  405f97:	48 39 c3             	cmp    %rax,%rbx
  405f9a:	72 c4                	jb     405f60 <remove_entity+0x30>
	}
	if (i < vector_size(game->entities))
  405f9c:	49 8b 3f             	mov    (%r15),%rdi
  405f9f:	e8 4c 44 00 00       	call   40a3f0 <vector_size>
  405fa4:	39 c3                	cmp    %eax,%ebx
  405fa6:	73 2e                	jae    405fd6 <remove_entity+0xa6>
	{
		if (game->entities[i]->type == ETYPE_GEM)
  405fa8:	49 8b 07             	mov    (%r15),%rax
  405fab:	89 d9                	mov    %ebx,%ecx
  405fad:	48 8b 3c c8          	mov    (%rax,%rcx,8),%rdi
  405fb1:	83 7f 08 01          	cmpl   $0x1,0x8(%rdi)
  405fb5:	75 08                	jne    405fbf <remove_entity+0x8f>
			game->collectibles_count--;
  405fb7:	41 83 86 00 03 00 00 	addl   $0xffffffff,0x300(%r14)
  405fbe:	ff 
		free(game->entities[i]);
  405fbf:	e8 bc c1 ff ff       	call   402180 <free@plt>
		vector_remove((void **) &game->entities, i);
  405fc4:	4c 89 ff             	mov    %r15,%rdi
  405fc7:	89 de                	mov    %ebx,%esi
  405fc9:	5b                   	pop    %rbx
  405fca:	41 5c                	pop    %r12
  405fcc:	41 5e                	pop    %r14
  405fce:	41 5f                	pop    %r15
  405fd0:	5d                   	pop    %rbp
  405fd1:	e9 9a 44 00 00       	jmp    40a470 <vector_remove>
	}
}
  405fd6:	5b                   	pop    %rbx
  405fd7:	41 5c                	pop    %r12
  405fd9:	41 5e                	pop    %r14
  405fdb:	41 5f                	pop    %r15
  405fdd:	5d                   	pop    %rbp
  405fde:	c3                   	ret    
  405fdf:	90                   	nop

0000000000405fe0 <entity_free>:

#include "entity.h"
#include <stdlib.h>

void	entity_free(t_entity *entity)
{
  405fe0:	53                   	push   %rbx
  405fe1:	48 89 fb             	mov    %rdi,%rbx
	if (entity->free)
  405fe4:	48 8b 47 20          	mov    0x20(%rdi),%rax
  405fe8:	48 85 c0             	test   %rax,%rax
  405feb:	74 05                	je     405ff2 <entity_free+0x12>
		entity->free(entity);
  405fed:	48 89 df             	mov    %rbx,%rdi
  405ff0:	ff d0                	call   *%rax
	free(entity);
  405ff2:	48 89 df             	mov    %rbx,%rdi
  405ff5:	5b                   	pop    %rbx
  405ff6:	e9 85 c1 ff ff       	jmp    402180 <free@plt>
  405ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406000 <init_end>:
{
	mlx_loop_end(game->mlx);
}

void	init_end(t_game *game)
{
  406000:	53                   	push   %rbx
  406001:	48 83 ec 30          	sub    $0x30,%rsp
  406005:	48 89 fb             	mov    %rdi,%rbx
	int	i;

	i = -1;
	while (++i < EXPLOSION_COUNT)
		game->end.explosions[i].anim = anim_new(game->explosion, 9, 100, false);
  406008:	48 8b bf a8 03 00 00 	mov    0x3a8(%rdi),%rdi
  40600f:	be 09 00 00 00       	mov    $0x9,%esi
  406014:	ba 64 00 00 00       	mov    $0x64,%edx
  406019:	31 c9                	xor    %ecx,%ecx
  40601b:	e8 70 06 00 00       	call   406690 <anim_new>
  406020:	48 89 83 80 01 00 00 	mov    %rax,0x180(%rbx)
  406027:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  40602e:	be 09 00 00 00       	mov    $0x9,%esi
  406033:	ba 64 00 00 00       	mov    $0x64,%edx
  406038:	31 c9                	xor    %ecx,%ecx
  40603a:	e8 51 06 00 00       	call   406690 <anim_new>
  40603f:	48 89 83 98 01 00 00 	mov    %rax,0x198(%rbx)
  406046:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  40604d:	be 09 00 00 00       	mov    $0x9,%esi
  406052:	ba 64 00 00 00       	mov    $0x64,%edx
  406057:	31 c9                	xor    %ecx,%ecx
  406059:	e8 32 06 00 00       	call   406690 <anim_new>
  40605e:	48 89 83 b0 01 00 00 	mov    %rax,0x1b0(%rbx)
  406065:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  40606c:	be 09 00 00 00       	mov    $0x9,%esi
  406071:	ba 64 00 00 00       	mov    $0x64,%edx
  406076:	31 c9                	xor    %ecx,%ecx
  406078:	e8 13 06 00 00       	call   406690 <anim_new>
  40607d:	48 89 83 c8 01 00 00 	mov    %rax,0x1c8(%rbx)
  406084:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  40608b:	be 09 00 00 00       	mov    $0x9,%esi
  406090:	ba 64 00 00 00       	mov    $0x64,%edx
  406095:	31 c9                	xor    %ecx,%ecx
  406097:	e8 f4 05 00 00       	call   406690 <anim_new>
  40609c:	48 89 83 e0 01 00 00 	mov    %rax,0x1e0(%rbx)
  4060a3:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  4060aa:	be 09 00 00 00       	mov    $0x9,%esi
  4060af:	ba 64 00 00 00       	mov    $0x64,%edx
  4060b4:	31 c9                	xor    %ecx,%ecx
  4060b6:	e8 d5 05 00 00       	call   406690 <anim_new>
  4060bb:	48 89 83 f8 01 00 00 	mov    %rax,0x1f8(%rbx)
  4060c2:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  4060c9:	be 09 00 00 00       	mov    $0x9,%esi
  4060ce:	ba 64 00 00 00       	mov    $0x64,%edx
  4060d3:	31 c9                	xor    %ecx,%ecx
  4060d5:	e8 b6 05 00 00       	call   406690 <anim_new>
  4060da:	48 89 83 10 02 00 00 	mov    %rax,0x210(%rbx)
  4060e1:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  4060e8:	be 09 00 00 00       	mov    $0x9,%esi
  4060ed:	ba 64 00 00 00       	mov    $0x64,%edx
  4060f2:	31 c9                	xor    %ecx,%ecx
  4060f4:	e8 97 05 00 00       	call   406690 <anim_new>
  4060f9:	48 89 83 28 02 00 00 	mov    %rax,0x228(%rbx)
  406100:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  406107:	be 09 00 00 00       	mov    $0x9,%esi
  40610c:	ba 64 00 00 00       	mov    $0x64,%edx
  406111:	31 c9                	xor    %ecx,%ecx
  406113:	e8 78 05 00 00       	call   406690 <anim_new>
  406118:	48 89 83 40 02 00 00 	mov    %rax,0x240(%rbx)
  40611f:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  406126:	be 09 00 00 00       	mov    $0x9,%esi
  40612b:	ba 64 00 00 00       	mov    $0x64,%edx
  406130:	31 c9                	xor    %ecx,%ecx
  406132:	e8 59 05 00 00       	call   406690 <anim_new>
  406137:	48 89 83 58 02 00 00 	mov    %rax,0x258(%rbx)
  40613e:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  406145:	be 09 00 00 00       	mov    $0x9,%esi
  40614a:	ba 64 00 00 00       	mov    $0x64,%edx
  40614f:	31 c9                	xor    %ecx,%ecx
  406151:	e8 3a 05 00 00       	call   406690 <anim_new>
  406156:	48 89 83 70 02 00 00 	mov    %rax,0x270(%rbx)
  40615d:	48 8b bb a8 03 00 00 	mov    0x3a8(%rbx),%rdi
  406164:	be 09 00 00 00       	mov    $0x9,%esi
  406169:	ba 64 00 00 00       	mov    $0x64,%edx
  40616e:	31 c9                	xor    %ecx,%ecx
  406170:	e8 1b 05 00 00       	call   406690 <anim_new>
  406175:	48 89 83 88 02 00 00 	mov    %rax,0x288(%rbx)
	game->end.next_spawn = 0;
  40617c:	48 c7 83 a0 02 00 00 	movq   $0x0,0x2a0(%rbx)
  406183:	00 00 00 00 
	game->end.exit = btn_new_label((t_vec2i){630, 240}, 3, "Quit", exit_click);
  406187:	48 8d 0d cf 9d 00 00 	lea    0x9dcf(%rip),%rcx        # 40ff5d <_IO_stdin_used+0xf5d>
  40618e:	4c 8d 05 5b 00 00 00 	lea    0x5b(%rip),%r8        # 4061f0 <exit_click>
  406195:	48 89 e7             	mov    %rsp,%rdi
  406198:	48 be 76 02 00 00 f0 	movabs $0xf000000276,%rsi
  40619f:	00 00 00 
  4061a2:	ba 03 00 00 00       	mov    $0x3,%edx
  4061a7:	e8 84 f3 ff ff       	call   405530 <btn_new_label>
  4061ac:	0f 10 04 24          	movups (%rsp),%xmm0
  4061b0:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  4061b5:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  4061ba:	0f 11 93 c8 02 00 00 	movups %xmm2,0x2c8(%rbx)
  4061c1:	0f 11 8b b8 02 00 00 	movups %xmm1,0x2b8(%rbx)
  4061c8:	0f 11 83 a8 02 00 00 	movups %xmm0,0x2a8(%rbx)
	game->end.title = "You win!";
  4061cf:	48 8d 05 8c 9d 00 00 	lea    0x9d8c(%rip),%rax        # 40ff62 <_IO_stdin_used+0xf62>
  4061d6:	48 89 83 e8 02 00 00 	mov    %rax,0x2e8(%rbx)
}
  4061dd:	48 83 c4 30          	add    $0x30,%rsp
  4061e1:	5b                   	pop    %rbx
  4061e2:	c3                   	ret    
  4061e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061ea:	00 00 00 
  4061ed:	0f 1f 00             	nopl   (%rax)

00000000004061f0 <exit_click>:
	mlx_loop_end(game->mlx);
  4061f0:	48 8b 3f             	mov    (%rdi),%rdi
  4061f3:	e9 68 53 00 00       	jmp    40b560 <mlx_loop_end>
  4061f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4061ff:	00 

0000000000406200 <free_end>:

#include "so_long.h"
#include "anim/anim.h"

void	free_end(t_game *game)
{
  406200:	53                   	push   %rbx
  406201:	48 89 fb             	mov    %rdi,%rbx
	int	i;

	i = -1;
	while (++i < EXPLOSION_COUNT)
		free(game->end.explosions[i].anim);
  406204:	48 8b bf 80 01 00 00 	mov    0x180(%rdi),%rdi
  40620b:	e8 70 bf ff ff       	call   402180 <free@plt>
  406210:	48 8b bb 98 01 00 00 	mov    0x198(%rbx),%rdi
  406217:	e8 64 bf ff ff       	call   402180 <free@plt>
  40621c:	48 8b bb b0 01 00 00 	mov    0x1b0(%rbx),%rdi
  406223:	e8 58 bf ff ff       	call   402180 <free@plt>
  406228:	48 8b bb c8 01 00 00 	mov    0x1c8(%rbx),%rdi
  40622f:	e8 4c bf ff ff       	call   402180 <free@plt>
  406234:	48 8b bb e0 01 00 00 	mov    0x1e0(%rbx),%rdi
  40623b:	e8 40 bf ff ff       	call   402180 <free@plt>
  406240:	48 8b bb f8 01 00 00 	mov    0x1f8(%rbx),%rdi
  406247:	e8 34 bf ff ff       	call   402180 <free@plt>
  40624c:	48 8b bb 10 02 00 00 	mov    0x210(%rbx),%rdi
  406253:	e8 28 bf ff ff       	call   402180 <free@plt>
  406258:	48 8b bb 28 02 00 00 	mov    0x228(%rbx),%rdi
  40625f:	e8 1c bf ff ff       	call   402180 <free@plt>
  406264:	48 8b bb 40 02 00 00 	mov    0x240(%rbx),%rdi
  40626b:	e8 10 bf ff ff       	call   402180 <free@plt>
  406270:	48 8b bb 58 02 00 00 	mov    0x258(%rbx),%rdi
  406277:	e8 04 bf ff ff       	call   402180 <free@plt>
  40627c:	48 8b bb 70 02 00 00 	mov    0x270(%rbx),%rdi
  406283:	e8 f8 be ff ff       	call   402180 <free@plt>
  406288:	48 8b bb 88 02 00 00 	mov    0x288(%rbx),%rdi
  40628f:	5b                   	pop    %rbx
  406290:	e9 eb be ff ff       	jmp    402180 <free@plt>
  406295:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40629c:	00 00 00 
  40629f:	90                   	nop

00000000004062a0 <draw_end>:
		game->end.camera_pos_cached = true;
	}
}

void	draw_end(t_game *game)
{
  4062a0:	55                   	push   %rbp
  4062a1:	41 57                	push   %r15
  4062a3:	41 56                	push   %r14
  4062a5:	41 54                	push   %r12
  4062a7:	53                   	push   %rbx
  4062a8:	48 83 ec 60          	sub    $0x60,%rsp
  4062ac:	49 89 ff             	mov    %rdi,%r15
	if (!game->end.camera_pos_cached)
  4062af:	80 bf e0 02 00 00 00 	cmpb   $0x0,0x2e0(%rdi)
  4062b6:	75 16                	jne    4062ce <draw_end+0x2e>
		game->end.camera_pos = game->camera_pos;
  4062b8:	49 8b 87 74 01 00 00 	mov    0x174(%r15),%rax
  4062bf:	49 89 87 d8 02 00 00 	mov    %rax,0x2d8(%r15)
		game->end.camera_pos_cached = true;
  4062c6:	41 c6 87 e0 02 00 00 	movb   $0x1,0x2e0(%r15)
  4062cd:	01 
  4062ce:	bb 90 01 00 00       	mov    $0x190,%ebx
  4062d3:	49 be 0a 00 00 00 04 	movabs $0x40000000a,%r14
  4062da:	00 00 00 
  4062dd:	eb 1c                	jmp    4062fb <draw_end+0x5b>
  4062df:	90                   	nop
			&& game->end.next_spawn < getms())
		{
			if (!_set_explosion(game, i))
				break ;
		}
		anim_update(game->end.explosions[i].anim);
  4062e0:	49 8b 7c 1f f0       	mov    -0x10(%r15,%rbx,1),%rdi
  4062e5:	e8 f6 03 00 00       	call   4066e0 <anim_update>
	while (++i < EXPLOSION_COUNT)
  4062ea:	48 83 c3 18          	add    $0x18,%rbx
  4062ee:	48 81 fb b0 02 00 00 	cmp    $0x2b0,%rbx
  4062f5:	0f 84 86 00 00 00    	je     406381 <draw_end+0xe1>
		rdr_add_sprite(game->rdr, anim_get_sprite(game->end.explosions[i].anim),
  4062fb:	4d 8b 67 30          	mov    0x30(%r15),%r12
  4062ff:	49 8b 7c 1f f0       	mov    -0x10(%r15,%rbx,1),%rdi
  406304:	e8 e7 03 00 00       	call   4066f0 <anim_get_sprite>
  406309:	f2 41 0f 10 44 1f f8 	movsd  -0x8(%r15,%rbx,1),%xmm0
  406310:	4c 89 e7             	mov    %r12,%rdi
  406313:	48 89 c6             	mov    %rax,%rsi
  406316:	4c 89 f2             	mov    %r14,%rdx
  406319:	31 c9                	xor    %ecx,%ecx
  40631b:	e8 00 46 00 00       	call   40a920 <rdr_add_sprite>
		if ((!game->end.explosions[i].spawned
  406320:	41 80 3c 1f 00       	cmpb   $0x0,(%r15,%rbx,1)
				|| game->end.explosions[i
  406325:	74 13                	je     40633a <draw_end+0x9a>
				].anim->current_frame == game->end.explosions[i].anim->size - 1)
  406327:	49 8b 7c 1f f0       	mov    -0x10(%r15,%rbx,1),%rdi
  40632c:	48 8b 47 08          	mov    0x8(%rdi),%rax
  406330:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  406334:	48 39 47 10          	cmp    %rax,0x10(%rdi)
			&& game->end.next_spawn < getms())
  406338:	75 ab                	jne    4062e5 <draw_end+0x45>
  40633a:	4d 8b a7 a0 02 00 00 	mov    0x2a0(%r15),%r12
  406341:	e8 3a 03 00 00       	call   406680 <getms>
  406346:	49 39 c4             	cmp    %rax,%r12
		if ((!game->end.explosions[i].spawned
  406349:	7d 95                	jge    4062e0 <draw_end+0x40>
		game->end.explosions[i].pos = (t_vec2){};
  40634b:	49 c7 44 1f f8 00 00 	movq   $0x0,-0x8(%r15,%rbx,1)
  406352:	00 00 
	game->end.explosions[i].anim->current_frame = 0;
  406354:	49 8b 7c 1f f0       	mov    -0x10(%r15,%rbx,1),%rdi
  406359:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  406360:	00 
	if (!game->end.explosions[i].spawned)
  406361:	41 80 3c 1f 00       	cmpb   $0x0,(%r15,%rbx,1)
  406366:	0f 85 79 ff ff ff    	jne    4062e5 <draw_end+0x45>
		game->end.explosions[i].spawned = true;
  40636c:	41 c6 04 1f 01       	movb   $0x1,(%r15,%rbx,1)
		game->end.next_spawn = getms() + 50;
  406371:	e8 0a 03 00 00       	call   406680 <getms>
  406376:	48 83 c0 32          	add    $0x32,%rax
  40637a:	49 89 87 a0 02 00 00 	mov    %rax,0x2a0(%r15)
  406381:	48 ba 07 00 00 00 07 	movabs $0x700000007,%rdx
  406388:	00 00 00 
	}
	draw_banner_v(game, (t_vec2i){WIN_WIDTH / 2 - 224, 0}, (t_vec2i){7, 7});
  40638b:	be f0 01 00 00       	mov    $0x1f0,%esi
  406390:	4c 89 ff             	mov    %r15,%rdi
  406393:	e8 28 f4 ff ff       	call   4057c0 <draw_banner_v>
	rdr_add_text(game->rdr, game->end.title, (t_vec2){620, 100},
  406398:	49 8b 7f 30          	mov    0x30(%r15),%rdi
  40639c:	49 8b b7 e8 02 00 00 	mov    0x2e8(%r15),%rsi
  4063a3:	49 bc 0a 00 00 00 05 	movabs $0x50000000a,%r12
  4063aa:	00 00 00 
		(t_add_text){10, 5, game->font, 0x0});
  4063ad:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  4063b2:	49 8b 87 28 03 00 00 	mov    0x328(%r15),%rax
  4063b9:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4063be:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
  4063c5:	00 
	rdr_add_text(game->rdr, game->end.title, (t_vec2){620, 100},
  4063c6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4063cb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4063d0:	0f 10 44 24 18       	movups 0x18(%rsp),%xmm0
  4063d5:	0f 11 04 24          	movups %xmm0,(%rsp)
  4063d9:	0f 28 05 90 9b 00 00 	movaps 0x9b90(%rip),%xmm0        # 40ff70 <_IO_stdin_used+0xf70>
  4063e0:	e8 1b 46 00 00       	call   40aa00 <rdr_add_text>
	e = game->end_time - game->start_time;
  4063e5:	4d 8b 87 20 03 00 00 	mov    0x320(%r15),%r8
  4063ec:	4d 2b 87 18 03 00 00 	sub    0x318(%r15),%r8
  4063f3:	48 b9 cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rcx
  4063fa:	9b c4 20 
	ms = e % 1000;
  4063fd:	4c 89 c0             	mov    %r8,%rax
  406400:	48 f7 e9             	imul   %rcx
  406403:	48 89 d0             	mov    %rdx,%rax
  406406:	48 c1 e8 3f          	shr    $0x3f,%rax
  40640a:	48 c1 fa 07          	sar    $0x7,%rdx
  40640e:	48 01 c2             	add    %rax,%rdx
  406411:	48 69 ca e8 03 00 00 	imul   $0x3e8,%rdx,%rcx
  406418:	41 29 c8             	sub    %ecx,%r8d
  40641b:	48 ba 0f 77 08 f6 72 	movabs $0x45e7b272f608770f,%rdx
  406422:	b2 e7 45 
	secs = (e - ms) % 60000;
  406425:	48 89 c8             	mov    %rcx,%rax
  406428:	48 f7 ea             	imul   %rdx
  40642b:	48 89 d0             	mov    %rdx,%rax
  40642e:	48 c1 e8 3f          	shr    $0x3f,%rax
  406432:	48 c1 fa 0e          	sar    $0xe,%rdx
  406436:	48 01 c2             	add    %rax,%rdx
  406439:	48 69 c2 60 ea 00 00 	imul   $0xea60,%rdx,%rax
  406440:	48 89 ce             	mov    %rcx,%rsi
  406443:	48 29 c6             	sub    %rax,%rsi
	mins = (e - ms - secs);
  406446:	29 f1                	sub    %esi,%ecx
	ft_sprintf(game->buffer, "in %d'%d.%d", mins / 1000000, secs / 1000, ms);
  406448:	49 8b 7f 38          	mov    0x38(%r15),%rdi
  40644c:	48 63 c1             	movslq %ecx,%rax
  40644f:	48 69 d0 83 de 1b 43 	imul   $0x431bde83,%rax,%rdx
  406456:	48 89 d0             	mov    %rdx,%rax
  406459:	48 c1 e8 3f          	shr    $0x3f,%rax
  40645d:	48 c1 fa 32          	sar    $0x32,%rdx
  406461:	01 c2                	add    %eax,%edx
  406463:	48 63 c6             	movslq %esi,%rax
  406466:	48 69 c8 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rcx
  40646d:	48 89 c8             	mov    %rcx,%rax
  406470:	48 c1 e8 3f          	shr    $0x3f,%rax
  406474:	48 c1 f9 26          	sar    $0x26,%rcx
  406478:	01 c1                	add    %eax,%ecx
  40647a:	48 8d 35 1f 9b 00 00 	lea    0x9b1f(%rip),%rsi        # 40ffa0 <_IO_stdin_used+0xfa0>
  406481:	31 c0                	xor    %eax,%eax
  406483:	e8 88 73 00 00       	call   40d810 <ft_sprintf>
	rdr_add_text(game->rdr, game->buffer, (t_vec2){
  406488:	4d 8b 77 30          	mov    0x30(%r15),%r14
  40648c:	49 8b 5f 38          	mov    0x38(%r15),%rbx
		text_center_x(game->small_font, game->buffer, 0, WIN_WIDTH), 150},
  406490:	49 8b bf 30 03 00 00 	mov    0x330(%r15),%rdi
  406497:	48 89 de             	mov    %rbx,%rsi
  40649a:	31 d2                	xor    %edx,%edx
  40649c:	b9 a0 05 00 00       	mov    $0x5a0,%ecx
  4064a1:	e8 0a eb ff ff       	call   404fb0 <text_center_x>
		(t_add_text){10, 5, game->small_font, 0x0});
  4064a6:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  4064ab:	49 8b 8f 30 03 00 00 	mov    0x330(%r15),%rcx
  4064b2:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  4064b7:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
  4064be:	00 
	rdr_add_text(game->rdr, game->buffer, (t_vec2){
  4064bf:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4064c4:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  4064c9:	0f 10 44 24 48       	movups 0x48(%rsp),%xmm0
  4064ce:	0f 11 04 24          	movups %xmm0,(%rsp)
  4064d2:	0f 28 05 a7 9a 00 00 	movaps 0x9aa7(%rip),%xmm0        # 40ff80 <_IO_stdin_used+0xf80>
  4064d9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4064dd:	4c 89 f7             	mov    %r14,%rdi
  4064e0:	48 89 de             	mov    %rbx,%rsi
  4064e3:	e8 18 45 00 00       	call   40aa00 <rdr_add_text>
	ft_sprintf(game->buffer, "with %d moves", game->moves);
  4064e8:	49 8b 7f 38          	mov    0x38(%r15),%rdi
  4064ec:	41 8b 97 08 03 00 00 	mov    0x308(%r15),%edx
  4064f3:	48 8d 35 b2 9a 00 00 	lea    0x9ab2(%rip),%rsi        # 40ffac <_IO_stdin_used+0xfac>
  4064fa:	31 c0                	xor    %eax,%eax
  4064fc:	e8 0f 73 00 00       	call   40d810 <ft_sprintf>
	rdr_add_text(game->rdr, game->buffer, (t_vec2){
  406501:	4d 8b 77 30          	mov    0x30(%r15),%r14
  406505:	49 8b 5f 38          	mov    0x38(%r15),%rbx
		text_center_x(game->small_font, game->buffer, 0, WIN_WIDTH), 180},
  406509:	49 8b bf 30 03 00 00 	mov    0x330(%r15),%rdi
  406510:	48 89 de             	mov    %rbx,%rsi
  406513:	31 d2                	xor    %edx,%edx
  406515:	b9 a0 05 00 00       	mov    $0x5a0,%ecx
  40651a:	e8 91 ea ff ff       	call   404fb0 <text_center_x>
		(t_add_text){10, 5, game->small_font, 0x0});
  40651f:	4c 89 64 24 30       	mov    %r12,0x30(%rsp)
  406524:	49 8b 8f 30 03 00 00 	mov    0x330(%r15),%rcx
  40652b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  406530:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  406537:	00 
	rdr_add_text(game->rdr, game->buffer, (t_vec2){
  406538:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
  40653d:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  406542:	0f 10 44 24 30       	movups 0x30(%rsp),%xmm0
  406547:	0f 11 04 24          	movups %xmm0,(%rsp)
  40654b:	0f 28 05 3e 9a 00 00 	movaps 0x9a3e(%rip),%xmm0        # 40ff90 <_IO_stdin_used+0xf90>
  406552:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  406556:	4c 89 f7             	mov    %r14,%rdi
  406559:	48 89 de             	mov    %rbx,%rsi
  40655c:	e8 9f 44 00 00       	call   40aa00 <rdr_add_text>
	_draw_time(game);
	btn_update(game, &game->end.exit);
  406561:	49 8d b7 a8 02 00 00 	lea    0x2a8(%r15),%rsi
  406568:	4c 89 ff             	mov    %r15,%rdi
  40656b:	e8 20 ec ff ff       	call   405190 <btn_update>
	game->camera_pos = (t_vec2i){game->end.camera_pos.x + (rand() % 80 - 40),
  406570:	41 8b 9f d8 02 00 00 	mov    0x2d8(%r15),%ebx
  406577:	e8 54 be ff ff       	call   4023d0 <rand@plt>
  40657c:	48 98                	cltq   
  40657e:	48 69 c8 67 66 66 66 	imul   $0x66666667,%rax,%rcx
  406585:	48 89 ca             	mov    %rcx,%rdx
  406588:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40658c:	48 c1 f9 25          	sar    $0x25,%rcx
  406590:	01 d1                	add    %edx,%ecx
  406592:	c1 e1 04             	shl    $0x4,%ecx
  406595:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  406598:	29 c8                	sub    %ecx,%eax
  40659a:	8d 2c 03             	lea    (%rbx,%rax,1),%ebp
  40659d:	83 c5 d8             	add    $0xffffffd8,%ebp
		game->end.camera_pos.y + game->end.camera_pos.y + (rand() % 80 - 40)};
  4065a0:	41 8b 9f dc 02 00 00 	mov    0x2dc(%r15),%ebx
  4065a7:	e8 24 be ff ff       	call   4023d0 <rand@plt>
  4065ac:	48 98                	cltq   
  4065ae:	48 69 c8 67 66 66 66 	imul   $0x66666667,%rax,%rcx
  4065b5:	48 89 ca             	mov    %rcx,%rdx
  4065b8:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4065bc:	48 c1 f9 25          	sar    $0x25,%rcx
  4065c0:	01 d1                	add    %edx,%ecx
  4065c2:	c1 e1 04             	shl    $0x4,%ecx
  4065c5:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4065c8:	29 c8                	sub    %ecx,%eax
  4065ca:	8d 04 58             	lea    (%rax,%rbx,2),%eax
  4065cd:	83 c0 d8             	add    $0xffffffd8,%eax
	game->camera_pos = (t_vec2i){game->end.camera_pos.x + (rand() % 80 - 40),
  4065d0:	41 89 af 74 01 00 00 	mov    %ebp,0x174(%r15)
  4065d7:	41 89 87 78 01 00 00 	mov    %eax,0x178(%r15)
}
  4065de:	48 83 c4 60          	add    $0x60,%rsp
  4065e2:	5b                   	pop    %rbx
  4065e3:	41 5c                	pop    %r12
  4065e5:	41 5e                	pop    %r14
  4065e7:	41 5f                	pop    %r15
  4065e9:	5d                   	pop    %rbp
  4065ea:	c3                   	ret    
  4065eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004065f0 <end_get_rand_pos>:

#include "math/vec2.h"
#include "so_long.h"

t_vec2	end_get_rand_pos()
{
  4065f0:	48 83 ec 18          	sub    $0x18,%rsp
	return ((t_vec2){rand() % (WIN_WIDTH - 192),
  4065f4:	e8 d7 bd ff ff       	call   4023d0 <rand@plt>
  4065f9:	48 98                	cltq   
  4065fb:	48 69 c8 d3 20 0d d2 	imul   $0xffffffffd20d20d3,%rax,%rcx
  406602:	48 c1 e9 20          	shr    $0x20,%rcx
  406606:	01 c1                	add    %eax,%ecx
  406608:	89 ca                	mov    %ecx,%edx
  40660a:	c1 ea 1f             	shr    $0x1f,%edx
  40660d:	c1 f9 0a             	sar    $0xa,%ecx
  406610:	01 d1                	add    %edx,%ecx
  406612:	69 c9 e0 04 00 00    	imul   $0x4e0,%ecx,%ecx
  406618:	29 c8                	sub    %ecx,%eax
  40661a:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  40661e:	0f 29 04 24          	movaps %xmm0,(%rsp)
			rand() % (WIN_HEIGHT - 192)});
  406622:	e8 a9 bd ff ff       	call   4023d0 <rand@plt>
  406627:	48 98                	cltq   
  406629:	48 69 c8 ab aa aa 2a 	imul   $0x2aaaaaab,%rax,%rcx
  406630:	48 89 ca             	mov    %rcx,%rdx
  406633:	48 c1 ea 3f          	shr    $0x3f,%rdx
  406637:	48 c1 e9 27          	shr    $0x27,%rcx
  40663b:	01 d1                	add    %edx,%ecx
  40663d:	c1 e1 08             	shl    $0x8,%ecx
  406640:	8d 0c 49             	lea    (%rcx,%rcx,2),%ecx
  406643:	29 c8                	sub    %ecx,%eax
  406645:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
  406649:	0f 28 04 24          	movaps (%rsp),%xmm0
	return ((t_vec2){rand() % (WIN_WIDTH - 192),
  40664d:	0f 14 c1             	unpcklps %xmm1,%xmm0
  406650:	48 83 c4 18          	add    $0x18,%rsp
  406654:	c3                   	ret    
  406655:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40665c:	00 00 00 
  40665f:	90                   	nop

0000000000406660 <camera_off>:

#include "so_long.h"

t_vec2	camera_off(t_game *game, t_vec2 pos)
{
	return ((t_vec2){pos.x - game->camera_pos.x + WIN_WIDTH / 2.0,
  406660:	f2 0f 10 8f 74 01 00 	movsd  0x174(%rdi),%xmm1
  406667:	00 
  406668:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
  40666b:	0f 5c c1             	subps  %xmm1,%xmm0
  40666e:	0f 58 05 4b 99 00 00 	addps  0x994b(%rip),%xmm0        # 40ffc0 <_IO_stdin_used+0xfc0>
  406675:	c3                   	ret    
  406676:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40667d:	00 00 00 

0000000000406680 <getms>:
#include <sys/select.h>
#include <sys/time.h>

suseconds_t	getms(void)
{
	return (0);
  406680:	31 c0                	xor    %eax,%eax
  406682:	c3                   	ret    
  406683:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40668a:	00 00 00 
  40668d:	0f 1f 00             	nopl   (%rax)

0000000000406690 <anim_new>:
#include "anim.h"
#include "../so_long.h"
#include <sys/select.h>

t_anim	*anim_new(t_img **sprites, size_t size, int interval, bool loop)
{
  406690:	55                   	push   %rbp
  406691:	41 57                	push   %r15
  406693:	41 56                	push   %r14
  406695:	53                   	push   %rbx
  406696:	50                   	push   %rax
  406697:	41 89 ce             	mov    %ecx,%r14d
  40669a:	41 89 d7             	mov    %edx,%r15d
  40669d:	48 89 f3             	mov    %rsi,%rbx
  4066a0:	48 89 fd             	mov    %rdi,%rbp
	t_anim	*anim;

	anim = malloc(sizeof(t_anim));
  4066a3:	bf 30 00 00 00       	mov    $0x30,%edi
  4066a8:	e8 63 ba ff ff       	call   402110 <malloc@plt>
	anim->sprites = sprites;
  4066ad:	48 89 28             	mov    %rbp,(%rax)
	anim->size = size;
  4066b0:	48 89 58 08          	mov    %rbx,0x8(%rax)
	anim->frame_interval = interval;
  4066b4:	49 63 cf             	movslq %r15d,%rcx
  4066b7:	48 89 48 18          	mov    %rcx,0x18(%rax)
	anim->loop = loop;
  4066bb:	44 88 70 28          	mov    %r14b,0x28(%rax)
	anim->current_frame = 0;
  4066bf:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  4066c6:	00 
	anim->last_frame = 0;
  4066c7:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
  4066ce:	00 
	return (anim);
  4066cf:	48 83 c4 08          	add    $0x8,%rsp
  4066d3:	5b                   	pop    %rbx
  4066d4:	41 5e                	pop    %r14
  4066d6:	41 5f                	pop    %r15
  4066d8:	5d                   	pop    %rbp
  4066d9:	c3                   	ret    
  4066da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004066e0 <anim_update>:
	anim->last_frame = time;
	if (anim->current_frame == anim->size - 1 && anim->loop)
		anim->current_frame = 0;
	else if (anim->current_frame < anim->size - 1)
		anim->current_frame++;
}
  4066e0:	c3                   	ret    
  4066e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4066e8:	00 00 00 
  4066eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004066f0 <anim_get_sprite>:

t_img	*anim_get_sprite(t_anim *anim)
{
	return (anim->sprites[anim->current_frame]);
  4066f0:	48 8b 07             	mov    (%rdi),%rax
  4066f3:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  4066f7:	48 8b 04 c8          	mov    (%rax,%rcx,8),%rax
  4066fb:	c3                   	ret    
  4066fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406700 <arena_init>:
#include <stdbool.h>
#include "libft.h"
#include <stdio.h>

void	arena_init(t_arena *allocator, int el_size, int capacity)
{
  406700:	55                   	push   %rbp
  406701:	53                   	push   %rbx
  406702:	50                   	push   %rax
  406703:	89 d5                	mov    %edx,%ebp
  406705:	48 89 fb             	mov    %rdi,%rbx
	allocator->el_size = el_size;
  406708:	89 37                	mov    %esi,(%rdi)
	allocator->data = ft_calloc(1, el_size * capacity);
  40670a:	0f af f2             	imul   %edx,%esi
  40670d:	48 63 f6             	movslq %esi,%rsi
  406710:	bf 01 00 00 00       	mov    $0x1,%edi
  406715:	e8 86 6d 00 00       	call   40d4a0 <ft_calloc>
  40671a:	48 89 43 08          	mov    %rax,0x8(%rbx)
	allocator->capacity = capacity;
  40671e:	89 6b 10             	mov    %ebp,0x10(%rbx)
	allocator->index = 0;
  406721:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%rbx)
}
  406728:	48 83 c4 08          	add    $0x8,%rsp
  40672c:	5b                   	pop    %rbx
  40672d:	5d                   	pop    %rbp
  40672e:	c3                   	ret    
  40672f:	90                   	nop

0000000000406730 <arena_alloc>:

void	*arena_alloc(t_arena *allocator)
{
	if (allocator->index == allocator->capacity || allocator->data == NULL)
  406730:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
  406734:	3b 4f 10             	cmp    0x10(%rdi),%ecx
  406737:	74 1a                	je     406753 <arena_alloc+0x23>
  406739:	48 8b 47 08          	mov    0x8(%rdi),%rax
  40673d:	48 85 c0             	test   %rax,%rax
  406740:	74 11                	je     406753 <arena_alloc+0x23>
		return (NULL);
	allocator->index += 1;
  406742:	8d 51 01             	lea    0x1(%rcx),%edx
  406745:	89 57 14             	mov    %edx,0x14(%rdi)
	return (allocator->data + (allocator->el_size * (allocator->index - 1)));
  406748:	48 63 17             	movslq (%rdi),%rdx
  40674b:	48 0f af d1          	imul   %rcx,%rdx
  40674f:	48 01 d0             	add    %rdx,%rax
}
  406752:	c3                   	ret    
  406753:	31 c0                	xor    %eax,%eax
  406755:	c3                   	ret    
  406756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40675d:	00 00 00 

0000000000406760 <arena_release>:

void	arena_release(t_arena *allocator)
{
	allocator->index = 0;
  406760:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
}
  406767:	c3                   	ret    
  406768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40676f:	00 

0000000000406770 <arena_free>:

void	arena_free(t_arena *allocator)
{
	free(allocator->data);
  406770:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  406774:	e9 07 ba ff ff       	jmp    402180 <free@plt>
  406779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406780 <edit_init>:
#include "../so_long.h"
#include "../math/vec2.h"
#include "../render/render.h"

void	edit_init(t_editor *editor, t_game *g)
{
  406780:	41 57                	push   %r15
  406782:	41 56                	push   %r14
  406784:	53                   	push   %rbx
  406785:	48 83 ec 30          	sub    $0x30,%rsp
  406789:	49 89 f7             	mov    %rsi,%r15
  40678c:	48 89 fb             	mov    %rdi,%rbx
	editor->item = ITEM_EMPTY;
  40678f:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
	editor->save = btn_new_label((t_vec2i){32 + 8 * 64,
  406795:	48 8d 0d a4 98 00 00 	lea    0x98a4(%rip),%rcx        # 410040 <_IO_stdin_used+0x1040>
  40679c:	49 c7 c0 f0 70 40 00 	mov    $0x4070f0,%r8
  4067a3:	48 89 e7             	mov    %rsp,%rdi
  4067a6:	49 be 20 02 00 00 40 	movabs $0x34000000220,%r14
  4067ad:	03 00 00 
  4067b0:	4c 89 f6             	mov    %r14,%rsi
  4067b3:	ba 02 00 00 00       	mov    $0x2,%edx
  4067b8:	e8 73 ed ff ff       	call   405530 <btn_new_label>
  4067bd:	0f 10 04 24          	movups (%rsp),%xmm0
  4067c1:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  4067c6:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  4067cb:	0f 11 53 28          	movups %xmm2,0x28(%rbx)
  4067cf:	0f 11 4b 18          	movups %xmm1,0x18(%rbx)
  4067d3:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
			WIN_HEIGHT - 192 + 1 * 64}, 2, "Save", edit_save);
	editor->quit = btn_new_label((t_vec2i){32 + 10 * 64,
  4067d7:	49 8d b6 80 00 00 00 	lea    0x80(%r14),%rsi
  4067de:	48 8d 0d 60 98 00 00 	lea    0x9860(%rip),%rcx        # 410045 <_IO_stdin_used+0x1045>
  4067e5:	49 c7 c0 10 71 40 00 	mov    $0x407110,%r8
  4067ec:	48 89 e7             	mov    %rsp,%rdi
  4067ef:	ba 02 00 00 00       	mov    $0x2,%edx
  4067f4:	e8 37 ed ff ff       	call   405530 <btn_new_label>
  4067f9:	0f 10 04 24          	movups (%rsp),%xmm0
  4067fd:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  406802:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  406807:	0f 11 53 58          	movups %xmm2,0x58(%rbx)
  40680b:	0f 11 4b 48          	movups %xmm1,0x48(%rbx)
  40680f:	0f 11 43 38          	movups %xmm0,0x38(%rbx)
			WIN_HEIGHT - 192 + 1 * 64}, 2, "Close", edit_quit);
	editor->l1 = btn_new_img((t_vec2i){32 + 13 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_ONE], edit_l1);
  406813:	4c 89 ff             	mov    %r15,%rdi
  406816:	e8 c5 dd ff ff       	call   4045e0 <sp>
  40681b:	48 8b 88 80 03 00 00 	mov    0x380(%rax),%rcx
	editor->l1 = btn_new_img((t_vec2i){32 + 13 * 64,
  406822:	49 8d b6 40 01 00 00 	lea    0x140(%r14),%rsi
  406829:	49 c7 c0 30 71 40 00 	mov    $0x407130,%r8
  406830:	48 89 e7             	mov    %rsp,%rdi
  406833:	ba 01 00 00 00       	mov    $0x1,%edx
  406838:	e8 23 ed ff ff       	call   405560 <btn_new_img>
  40683d:	0f 10 04 24          	movups (%rsp),%xmm0
  406841:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  406846:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  40684b:	0f 11 93 88 00 00 00 	movups %xmm2,0x88(%rbx)
  406852:	0f 11 4b 78          	movups %xmm1,0x78(%rbx)
  406856:	0f 11 43 68          	movups %xmm0,0x68(%rbx)
	editor->l2 = btn_new_img((t_vec2i){32 + 14 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_TWO], edit_l2);
  40685a:	4c 89 ff             	mov    %r15,%rdi
  40685d:	e8 7e dd ff ff       	call   4045e0 <sp>
  406862:	48 8b 88 88 03 00 00 	mov    0x388(%rax),%rcx
	editor->l2 = btn_new_img((t_vec2i){32 + 14 * 64,
  406869:	49 8d b6 80 01 00 00 	lea    0x180(%r14),%rsi
  406870:	49 c7 c0 50 71 40 00 	mov    $0x407150,%r8
  406877:	48 89 e7             	mov    %rsp,%rdi
  40687a:	ba 01 00 00 00       	mov    $0x1,%edx
  40687f:	e8 dc ec ff ff       	call   405560 <btn_new_img>
  406884:	0f 10 04 24          	movups (%rsp),%xmm0
  406888:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  40688d:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  406892:	0f 11 93 b8 00 00 00 	movups %xmm2,0xb8(%rbx)
  406899:	0f 11 8b a8 00 00 00 	movups %xmm1,0xa8(%rbx)
  4068a0:	0f 11 83 98 00 00 00 	movups %xmm0,0x98(%rbx)
	editor->l3 = btn_new_img((t_vec2i){32 + 15 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_THREE], edit_l3);
  4068a7:	4c 89 ff             	mov    %r15,%rdi
  4068aa:	e8 31 dd ff ff       	call   4045e0 <sp>
  4068af:	48 8b 88 90 03 00 00 	mov    0x390(%rax),%rcx
	editor->l3 = btn_new_img((t_vec2i){32 + 15 * 64,
  4068b6:	49 81 ce c0 01 00 00 	or     $0x1c0,%r14
  4068bd:	49 c7 c0 70 71 40 00 	mov    $0x407170,%r8
  4068c4:	48 89 e7             	mov    %rsp,%rdi
  4068c7:	4c 89 f6             	mov    %r14,%rsi
  4068ca:	ba 01 00 00 00       	mov    $0x1,%edx
  4068cf:	e8 8c ec ff ff       	call   405560 <btn_new_img>
  4068d4:	0f 10 04 24          	movups (%rsp),%xmm0
  4068d8:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  4068dd:	0f 10 54 24 20       	movups 0x20(%rsp),%xmm2
  4068e2:	0f 11 93 e8 00 00 00 	movups %xmm2,0xe8(%rbx)
  4068e9:	0f 11 8b d8 00 00 00 	movups %xmm1,0xd8(%rbx)
  4068f0:	0f 11 83 c8 00 00 00 	movups %xmm0,0xc8(%rbx)
	editor->l1.pressed = true;
  4068f7:	c6 83 90 00 00 00 01 	movb   $0x1,0x90(%rbx)
	editor->level = 0;
  4068fe:	c7 83 f8 00 00 00 00 	movl   $0x0,0xf8(%rbx)
  406905:	00 00 00 
}
  406908:	48 83 c4 30          	add    $0x30,%rsp
  40690c:	5b                   	pop    %rbx
  40690d:	41 5e                	pop    %r14
  40690f:	41 5f                	pop    %r15
  406911:	c3                   	ret    
  406912:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406919:	00 00 00 
  40691c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406920 <edit_update>:
		x = 6 * SCALED_SIZE;
	draw_hl(game, ox + x, oy, 1);
}

void	edit_update(t_game *game)
{
  406920:	41 57                	push   %r15
  406922:	41 56                	push   %r14
  406924:	53                   	push   %rbx
  406925:	48 89 fb             	mov    %rdi,%rbx
  406928:	48 be 20 00 00 00 00 	movabs $0x30000000020,%rsi
  40692f:	03 00 00 
  406932:	48 ba 11 00 00 00 03 	movabs $0x300000011,%rdx
  406939:	00 00 00 
	draw_banner_h(game, (t_vec2i){32, WIN_HEIGHT - 192}, (t_vec2i){17, 3});
  40693c:	e8 4f ec ff ff       	call   405590 <draw_banner_h>
	_draw_icons(game, game->rdr);
  406941:	4c 8b 73 30          	mov    0x30(%rbx),%r14
	rdr_add_sprite(rdr, sp(game)[SP_GROUND_ALL], (t_vec2){x, y},
  406945:	48 89 df             	mov    %rbx,%rdi
  406948:	e8 93 dc ff ff       	call   4045e0 <sp>
  40694d:	48 8b b0 88 00 00 00 	mov    0x88(%rax),%rsi
  406954:	0f 28 05 75 96 00 00 	movaps 0x9675(%rip),%xmm0        # 40ffd0 <_IO_stdin_used+0xfd0>
  40695b:	49 bf 8c 23 00 00 05 	movabs $0x50000238c,%r15
  406962:	00 00 00 
  406965:	4c 89 f7             	mov    %r14,%rdi
  406968:	4c 89 fa             	mov    %r15,%rdx
  40696b:	31 c9                	xor    %ecx,%ecx
  40696d:	e8 ae 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, sp(game)[SP_WATER], (t_vec2){x + 1 * SCALED_SIZE, y},
  406972:	48 89 df             	mov    %rbx,%rdi
  406975:	e8 66 dc ff ff       	call   4045e0 <sp>
  40697a:	48 8b 30             	mov    (%rax),%rsi
  40697d:	0f 28 05 5c 96 00 00 	movaps 0x965c(%rip),%xmm0        # 40ffe0 <_IO_stdin_used+0xfe0>
  406984:	4c 89 f7             	mov    %r14,%rdi
  406987:	4c 89 fa             	mov    %r15,%rdx
  40698a:	31 c9                	xor    %ecx,%ecx
  40698c:	e8 8f 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, sp(game)[SP_DOOR], (t_vec2){x + 2 * SCALED_SIZE, y},
  406991:	48 89 df             	mov    %rbx,%rdi
  406994:	e8 47 dc ff ff       	call   4045e0 <sp>
  406999:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40699d:	0f 28 05 4c 96 00 00 	movaps 0x964c(%rip),%xmm0        # 40fff0 <_IO_stdin_used+0xff0>
  4069a4:	4c 89 f7             	mov    %r14,%rdi
  4069a7:	4c 89 fa             	mov    %r15,%rdx
  4069aa:	31 c9                	xor    %ecx,%ecx
  4069ac:	e8 6f 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, sp(game)[SP_STAIR_ALL], (t_vec2){x + 3 * 64, y},
  4069b1:	48 89 df             	mov    %rbx,%rdi
  4069b4:	e8 27 dc ff ff       	call   4045e0 <sp>
  4069b9:	48 8b b0 c8 01 00 00 	mov    0x1c8(%rax),%rsi
  4069c0:	0f 28 05 39 96 00 00 	movaps 0x9639(%rip),%xmm0        # 410000 <_IO_stdin_used+0x1000>
  4069c7:	4c 89 f7             	mov    %r14,%rdi
  4069ca:	4c 89 fa             	mov    %r15,%rdx
  4069cd:	31 c9                	xor    %ecx,%ecx
  4069cf:	e8 4c 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, game->money_spawn[6],
  4069d4:	48 8b 83 98 03 00 00 	mov    0x398(%rbx),%rax
  4069db:	48 8b 70 30          	mov    0x30(%rax),%rsi
  4069df:	0f 28 05 2a 96 00 00 	movaps 0x962a(%rip),%xmm0        # 410010 <_IO_stdin_used+0x1010>
  4069e6:	4c 89 f7             	mov    %r14,%rdi
  4069e9:	4c 89 fa             	mov    %r15,%rdx
  4069ec:	31 c9                	xor    %ecx,%ecx
  4069ee:	e8 2d 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, game->goblin_idle[0],
  4069f3:	48 8b 83 58 03 00 00 	mov    0x358(%rbx),%rax
  4069fa:	48 8b 30             	mov    (%rax),%rsi
  4069fd:	0f 28 05 1c 96 00 00 	movaps 0x961c(%rip),%xmm0        # 410020 <_IO_stdin_used+0x1020>
  406a04:	4c 89 f7             	mov    %r14,%rdi
  406a07:	4c 89 fa             	mov    %r15,%rdx
  406a0a:	31 c9                	xor    %ecx,%ecx
  406a0c:	e8 0f 3f 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(rdr, game->warrior_idle[0],
  406a11:	48 8b 83 88 03 00 00 	mov    0x388(%rbx),%rax
  406a18:	48 8b 30             	mov    (%rax),%rsi
  406a1b:	0f 28 05 0e 96 00 00 	movaps 0x960e(%rip),%xmm0        # 410030 <_IO_stdin_used+0x1030>
  406a22:	4c 89 f7             	mov    %r14,%rdi
  406a25:	4c 89 fa             	mov    %r15,%rdx
  406a28:	31 c9                	xor    %ecx,%ecx
  406a2a:	e8 f1 3e 00 00       	call   40a920 <rdr_add_sprite>
	if (editor->item == ITEM_EMPTY)
  406a2f:	8b 43 70             	mov    0x70(%rbx),%eax
  406a32:	83 c0 ff             	add    $0xffffffff,%eax
  406a35:	be 60 00 00 00       	mov    $0x60,%esi
  406a3a:	83 f8 05             	cmp    $0x5,%eax
  406a3d:	77 0c                	ja     406a4b <edit_update+0x12b>
  406a3f:	48 98                	cltq   
  406a41:	48 8d 0d 04 96 00 00 	lea    0x9604(%rip),%rcx        # 41004c <_IO_stdin_used+0x104c>
  406a48:	8b 34 81             	mov    (%rcx,%rax,4),%esi
	draw_hl(game, ox + x, oy, 1);
  406a4b:	48 89 df             	mov    %rbx,%rdi
  406a4e:	ba 40 03 00 00       	mov    $0x340,%edx
  406a53:	b9 01 00 00 00       	mov    $0x1,%ecx
  406a58:	e8 c3 e9 ff ff       	call   405420 <draw_hl>
	_draw_hl(game, &game->editor);
	btn_update(game, &game->editor.save);
  406a5d:	48 8d 73 78          	lea    0x78(%rbx),%rsi
  406a61:	48 89 df             	mov    %rbx,%rdi
  406a64:	e8 27 e7 ff ff       	call   405190 <btn_update>
	btn_update(game, &game->editor.quit);
  406a69:	48 8d b3 a8 00 00 00 	lea    0xa8(%rbx),%rsi
  406a70:	48 89 df             	mov    %rbx,%rdi
  406a73:	e8 18 e7 ff ff       	call   405190 <btn_update>
	btn_update(game, &game->editor.l1);
  406a78:	48 8d b3 d8 00 00 00 	lea    0xd8(%rbx),%rsi
  406a7f:	48 89 df             	mov    %rbx,%rdi
  406a82:	e8 09 e7 ff ff       	call   405190 <btn_update>
	btn_update(game, &game->editor.l2);
  406a87:	48 8d b3 08 01 00 00 	lea    0x108(%rbx),%rsi
  406a8e:	48 89 df             	mov    %rbx,%rdi
  406a91:	e8 fa e6 ff ff       	call   405190 <btn_update>
	btn_update(game, &game->editor.l3);
  406a96:	48 8d b3 38 01 00 00 	lea    0x138(%rbx),%rsi
  406a9d:	48 89 df             	mov    %rbx,%rdi
  406aa0:	5b                   	pop    %rbx
  406aa1:	41 5e                	pop    %r14
  406aa3:	41 5f                	pop    %r15
  406aa5:	e9 e6 e6 ff ff       	jmp    405190 <btn_update>
  406aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406ab0 <edit_place>:
		map->data = tile;
	}
}

void	edit_place(t_game *game, int btn, int x, int y)
{
  406ab0:	55                   	push   %rbp
  406ab1:	41 57                	push   %r15
  406ab3:	41 56                	push   %r14
  406ab5:	41 55                	push   %r13
  406ab7:	41 54                	push   %r12
  406ab9:	53                   	push   %rbx
  406aba:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  406ac1:	41 89 ce             	mov    %ecx,%r14d
  406ac4:	89 d5                	mov    %edx,%ebp
	if (btn == 1)
  406ac6:	83 fe 03             	cmp    $0x3,%esi
  406ac9:	0f 84 87 03 00 00    	je     406e56 <edit_place+0x3a6>
  406acf:	83 fe 01             	cmp    $0x1,%esi
  406ad2:	0f 85 fe 05 00 00    	jne    4070d6 <edit_place+0x626>
	{
		_resize(&game->map2->levels[game->editor.level],
  406ad8:	48 8b 47 50          	mov    0x50(%rdi),%rax
  406adc:	48 8b 08             	mov    (%rax),%rcx
			x / SCALED_SIZE, y / SCALED_SIZE);
  406adf:	44 8d 65 3f          	lea    0x3f(%rbp),%r12d
  406ae3:	85 ed                	test   %ebp,%ebp
  406ae5:	44 0f 49 e5          	cmovns %ebp,%r12d
		_resize(&game->map2->levels[game->editor.level],
  406ae9:	48 63 87 68 01 00 00 	movslq 0x168(%rdi),%rax
			x / SCALED_SIZE, y / SCALED_SIZE);
  406af0:	41 c1 fc 06          	sar    $0x6,%r12d
  406af4:	45 8d 7e 3f          	lea    0x3f(%r14),%r15d
  406af8:	45 85 f6             	test   %r14d,%r14d
  406afb:	45 0f 49 fe          	cmovns %r14d,%r15d
  406aff:	41 c1 ff 06          	sar    $0x6,%r15d
	if (tile_y >= map->height)
  406b03:	48 8d 1c 40          	lea    (%rax,%rax,2),%rbx
  406b07:	48 c1 e3 04          	shl    $0x4,%rbx
  406b0b:	4c 8d 2c 19          	lea    (%rcx,%rbx,1),%r13
  406b0f:	49 83 c5 24          	add    $0x24,%r13
  406b13:	48 63 54 19 24       	movslq 0x24(%rcx,%rbx,1),%rdx
  406b18:	44 39 fa             	cmp    %r15d,%edx
  406b1b:	0f 8e 50 03 00 00    	jle    406e71 <edit_place+0x3c1>
	else if (tile_x >= map->width)
  406b21:	48 63 44 19 20       	movslq 0x20(%rcx,%rbx,1),%rax
  406b26:	44 39 e0             	cmp    %r12d,%eax
  406b29:	0f 8f c0 03 00 00    	jg     406eef <edit_place+0x43f>
  406b2f:	48 89 3c 24          	mov    %rdi,(%rsp)
  406b33:	48 89 6c 24 60       	mov    %rbp,0x60(%rsp)
  406b38:	48 8d 2c 19          	lea    (%rcx,%rbx,1),%rbp
  406b3c:	48 83 c5 20          	add    $0x20,%rbp
		tile = malloc(sizeof(t_tile) * (map->width + 1) * map->height);
  406b40:	48 83 c0 01          	add    $0x1,%rax
  406b44:	48 0f af d0          	imul   %rax,%rdx
  406b48:	48 c1 e2 02          	shl    $0x2,%rdx
  406b4c:	48 89 d7             	mov    %rdx,%rdi
  406b4f:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  406b54:	e8 b7 b5 ff ff       	call   402110 <malloc@plt>
		while (++y < map->height)
  406b59:	41 8b 4d 00          	mov    0x0(%r13),%ecx
  406b5d:	48 89 6c 24 58       	mov    %rbp,0x58(%rsp)
  406b62:	4c 63 6d 00          	movslq 0x0(%rbp),%r13
  406b66:	85 c9                	test   %ecx,%ecx
  406b68:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
  406b6d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  406b72:	0f 8e 42 03 00 00    	jle    406eba <edit_place+0x40a>
  406b78:	48 89 ca             	mov    %rcx,%rdx
  406b7b:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
  406b80:	44 89 64 24 18       	mov    %r12d,0x18(%rsp)
  406b85:	44 89 7c 24 1c       	mov    %r15d,0x1c(%rsp)
  406b8a:	45 89 ec             	mov    %r13d,%r12d
  406b8d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  406b92:	48 8d 4c 19 08       	lea    0x8(%rcx,%rbx,1),%rcx
  406b97:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
  406b9e:	00 
  406b9f:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  406ba3:	49 8d 4c 24 ff       	lea    -0x1(%r12),%rcx
  406ba8:	48 8d 70 04          	lea    0x4(%rax),%rsi
  406bac:	48 89 b4 24 98 00 00 	mov    %rsi,0x98(%rsp)
  406bb3:	00 
  406bb4:	41 8d 7d 01          	lea    0x1(%r13),%edi
  406bb8:	4a 8d 34 a0          	lea    (%rax,%r12,4),%rsi
  406bbc:	48 89 b4 24 88 00 00 	mov    %rsi,0x88(%rsp)
  406bc3:	00 
  406bc4:	49 8d 74 24 f7       	lea    -0x9(%r12),%rsi
  406bc9:	48 c1 ee 03          	shr    $0x3,%rsi
  406bcd:	48 89 b4 24 80 00 00 	mov    %rsi,0x80(%rsp)
  406bd4:	00 
  406bd5:	48 83 c6 01          	add    $0x1,%rsi
  406bd9:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  406bde:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  406be2:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  406be7:	48 83 c1 01          	add    $0x1,%rcx
  406beb:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
  406bf0:	48 8d 48 34          	lea    0x34(%rax),%rcx
  406bf4:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  406bf9:	48 89 f1             	mov    %rsi,%rcx
  406bfc:	48 89 74 24 78       	mov    %rsi,0x78(%rsp)
  406c01:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
  406c05:	48 f7 de             	neg    %rsi
  406c08:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  406c0d:	48 8d 48 0c          	lea    0xc(%rax),%rcx
  406c11:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
  406c18:	00 
  406c19:	31 c9                	xor    %ecx,%ecx
  406c1b:	45 31 c9             	xor    %r9d,%r9d
  406c1e:	45 31 db             	xor    %r11d,%r11d
  406c21:	49 89 c7             	mov    %rax,%r15
  406c24:	48 89 d0             	mov    %rdx,%rax
  406c27:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  406c2c:	eb 16                	jmp    406c44 <edit_place+0x194>
  406c2e:	66 90                	xchg   %ax,%ax
  406c30:	49 83 c3 01          	add    $0x1,%r11
  406c34:	41 01 f9             	add    %edi,%r9d
  406c37:	43 8d 0c 04          	lea    (%r12,%r8,1),%ecx
  406c3b:	49 39 c3             	cmp    %rax,%r11
  406c3e:	0f 84 65 02 00 00    	je     406ea9 <edit_place+0x3f9>
			while (++x < map->width)
  406c44:	4c 63 c1             	movslq %ecx,%r8
  406c47:	45 85 ed             	test   %r13d,%r13d
  406c4a:	7e e4                	jle    406c30 <edit_place+0x180>
				tile[x + y * (map->width + 1)] = map->data[x + y * map->width];
  406c4c:	4c 89 d9             	mov    %r11,%rcx
  406c4f:	49 0f af cd          	imul   %r13,%rcx
  406c53:	4c 89 da             	mov    %r11,%rdx
  406c56:	48 0f af d3          	imul   %rbx,%rdx
  406c5a:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
  406c61:	00 
  406c62:	4c 8b 16             	mov    (%rsi),%r10
  406c65:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
  406c69:	41 89 0c 97          	mov    %ecx,(%r15,%rdx,4)
  406c6d:	41 83 fd 01          	cmp    $0x1,%r13d
			while (++x < map->width)
  406c71:	74 bd                	je     406c30 <edit_place+0x180>
  406c73:	49 63 c9             	movslq %r9d,%rcx
  406c76:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  406c7b:	41 be 01 00 00 00    	mov    $0x1,%r14d
  406c81:	48 83 7c 24 28 08    	cmpq   $0x8,0x28(%rsp)
  406c87:	0f 82 13 01 00 00    	jb     406da0 <edit_place+0x2f0>
  406c8d:	89 f9                	mov    %edi,%ecx
  406c8f:	41 0f af cb          	imul   %r11d,%ecx
  406c93:	44 89 e2             	mov    %r12d,%edx
  406c96:	41 0f af d3          	imul   %r11d,%edx
  406c9a:	48 63 c9             	movslq %ecx,%rcx
  406c9d:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
  406ca4:	00 
  406ca5:	48 8d 34 8e          	lea    (%rsi,%rcx,4),%rsi
  406ca9:	48 63 d2             	movslq %edx,%rdx
  406cac:	4b 8d 1c a2          	lea    (%r10,%r12,4),%rbx
  406cb0:	48 8d 1c 93          	lea    (%rbx,%rdx,4),%rbx
  406cb4:	48 39 de             	cmp    %rbx,%rsi
  406cb7:	73 1d                	jae    406cd6 <edit_place+0x226>
  406cb9:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
  406cc0:	00 
  406cc1:	48 8d 0c 8e          	lea    (%rsi,%rcx,4),%rcx
  406cc5:	49 8d 14 92          	lea    (%r10,%rdx,4),%rdx
  406cc9:	48 83 c2 04          	add    $0x4,%rdx
  406ccd:	48 39 d1             	cmp    %rdx,%rcx
  406cd0:	0f 87 ca 00 00 00    	ja     406da0 <edit_place+0x2f0>
  406cd6:	48 83 bc 24 80 00 00 	cmpq   $0x0,0x80(%rsp)
  406cdd:	00 00 
  406cdf:	0f 84 5f 01 00 00    	je     406e44 <edit_place+0x394>
  406ce5:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
  406cea:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  406cef:	48 8d 34 91          	lea    (%rcx,%rdx,4),%rsi
  406cf3:	4b 8d 14 82          	lea    (%r10,%r8,4),%rdx
  406cf7:	48 83 c2 34          	add    $0x34,%rdx
  406cfb:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  406d00:	31 ed                	xor    %ebp,%ebp
  406d02:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d09:	00 00 00 
  406d0c:	0f 1f 40 00          	nopl   0x0(%rax)
				tile[x + y * (map->width + 1)] = map->data[x + y * map->width];
  406d10:	0f 10 44 aa d0       	movups -0x30(%rdx,%rbp,4),%xmm0
  406d15:	0f 10 4c aa e0       	movups -0x20(%rdx,%rbp,4),%xmm1
  406d1a:	0f 11 44 ae d0       	movups %xmm0,-0x30(%rsi,%rbp,4)
  406d1f:	0f 11 4c ae e0       	movups %xmm1,-0x20(%rsi,%rbp,4)
  406d24:	0f 10 44 aa f0       	movups -0x10(%rdx,%rbp,4),%xmm0
  406d29:	0f 10 0c aa          	movups (%rdx,%rbp,4),%xmm1
  406d2d:	0f 11 44 ae f0       	movups %xmm0,-0x10(%rsi,%rbp,4)
  406d32:	0f 11 0c ae          	movups %xmm1,(%rsi,%rbp,4)
  406d36:	48 83 c5 10          	add    $0x10,%rbp
  406d3a:	48 83 c1 02          	add    $0x2,%rcx
  406d3e:	75 d0                	jne    406d10 <edit_place+0x260>
  406d40:	f6 44 24 78 01       	testb  $0x1,0x78(%rsp)
  406d45:	74 36                	je     406d7d <edit_place+0x2cd>
  406d47:	44 89 e1             	mov    %r12d,%ecx
  406d4a:	41 0f af cb          	imul   %r11d,%ecx
  406d4e:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  406d53:	41 0f af d3          	imul   %r11d,%edx
  406d57:	48 63 c9             	movslq %ecx,%rcx
  406d5a:	48 63 d2             	movslq %edx,%rdx
  406d5d:	48 83 cd 01          	or     $0x1,%rbp
  406d61:	48 01 e9             	add    %rbp,%rcx
  406d64:	41 0f 10 04 8a       	movups (%r10,%rcx,4),%xmm0
  406d69:	41 0f 10 4c 8a 10    	movups 0x10(%r10,%rcx,4),%xmm1
  406d6f:	48 01 d5             	add    %rdx,%rbp
  406d72:	41 0f 11 04 af       	movups %xmm0,(%r15,%rbp,4)
  406d77:	41 0f 11 4c af 10    	movups %xmm1,0x10(%r15,%rbp,4)
  406d7d:	4c 8b 74 24 68       	mov    0x68(%rsp),%r14
  406d82:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
  406d87:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
  406d8c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
			while (++x < map->width)
  406d91:	0f 84 99 fe ff ff    	je     406c30 <edit_place+0x180>
  406d97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406d9e:	00 00 
  406da0:	44 89 e6             	mov    %r12d,%esi
  406da3:	44 29 f6             	sub    %r14d,%esi
  406da6:	4c 89 f5             	mov    %r14,%rbp
  406da9:	48 f7 d5             	not    %rbp
  406dac:	4c 01 e5             	add    %r12,%rbp
  406daf:	48 83 e6 03          	and    $0x3,%rsi
  406db3:	74 2d                	je     406de2 <edit_place+0x332>
  406db5:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  406dba:	49 8d 0c 8f          	lea    (%r15,%rcx,4),%rcx
  406dbe:	4b 8d 14 82          	lea    (%r10,%r8,4),%rdx
  406dc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406dc9:	00 00 00 
  406dcc:	0f 1f 40 00          	nopl   0x0(%rax)
				tile[x + y * (map->width + 1)] = map->data[x + y * map->width];
  406dd0:	42 8b 1c b2          	mov    (%rdx,%r14,4),%ebx
  406dd4:	42 89 1c b1          	mov    %ebx,(%rcx,%r14,4)
			while (++x < map->width)
  406dd8:	49 83 c6 01          	add    $0x1,%r14
  406ddc:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
  406de0:	75 ee                	jne    406dd0 <edit_place+0x320>
  406de2:	48 83 fd 03          	cmp    $0x3,%rbp
  406de6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  406deb:	0f 82 3f fe ff ff    	jb     406c30 <edit_place+0x180>
  406df1:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  406df8:	00 
  406df9:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  406dfe:	48 8d 0c 91          	lea    (%rcx,%rdx,4),%rcx
  406e02:	4b 8d 14 82          	lea    (%r10,%r8,4),%rdx
  406e06:	48 83 c2 0c          	add    $0xc,%rdx
  406e0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
				tile[x + y * (map->width + 1)] = map->data[x + y * map->width];
  406e10:	42 8b 74 b2 f4       	mov    -0xc(%rdx,%r14,4),%esi
  406e15:	42 89 74 b1 f4       	mov    %esi,-0xc(%rcx,%r14,4)
  406e1a:	42 8b 74 b2 f8       	mov    -0x8(%rdx,%r14,4),%esi
  406e1f:	42 89 74 b1 f8       	mov    %esi,-0x8(%rcx,%r14,4)
  406e24:	42 8b 74 b2 fc       	mov    -0x4(%rdx,%r14,4),%esi
  406e29:	42 89 74 b1 fc       	mov    %esi,-0x4(%rcx,%r14,4)
  406e2e:	42 8b 34 b2          	mov    (%rdx,%r14,4),%esi
  406e32:	42 89 34 b1          	mov    %esi,(%rcx,%r14,4)
			while (++x < map->width)
  406e36:	49 83 c6 04          	add    $0x4,%r14
  406e3a:	4d 39 f4             	cmp    %r14,%r12
  406e3d:	75 d1                	jne    406e10 <edit_place+0x360>
  406e3f:	e9 ec fd ff ff       	jmp    406c30 <edit_place+0x180>
  406e44:	31 ed                	xor    %ebp,%ebp
  406e46:	f6 44 24 78 01       	testb  $0x1,0x78(%rsp)
  406e4b:	0f 85 f6 fe ff ff    	jne    406d47 <edit_place+0x297>
  406e51:	e9 27 ff ff ff       	jmp    406d7d <edit_place+0x2cd>
		_place_item(x, y, game->editor.item, game);
	}
	else if (btn == 3)
	{
		remove_entity(game, x, y);
  406e56:	89 ee                	mov    %ebp,%esi
  406e58:	44 89 f2             	mov    %r14d,%edx
  406e5b:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  406e62:	5b                   	pop    %rbx
  406e63:	41 5c                	pop    %r12
  406e65:	41 5d                	pop    %r13
  406e67:	41 5e                	pop    %r14
  406e69:	41 5f                	pop    %r15
  406e6b:	5d                   	pop    %rbp
  406e6c:	e9 bf f0 ff ff       	jmp    405f30 <remove_entity>
  406e71:	48 89 3c 24          	mov    %rdi,(%rsp)
		map->data = ft_realloc(map->data,
  406e75:	48 8b 7c 19 08       	mov    0x8(%rcx,%rbx,1),%rdi
				sizeof(t_tile) * map->width * map->height,
  406e7a:	48 63 44 19 20       	movslq 0x20(%rcx,%rbx,1),%rax
  406e7f:	48 c1 e0 02          	shl    $0x2,%rax
  406e83:	48 89 c6             	mov    %rax,%rsi
  406e86:	48 0f af f2          	imul   %rdx,%rsi
				sizeof(t_tile) * map->width * (++map->height));
  406e8a:	48 83 c2 01          	add    $0x1,%rdx
  406e8e:	41 89 55 00          	mov    %edx,0x0(%r13)
  406e92:	48 0f af d0          	imul   %rax,%rdx
  406e96:	49 89 cd             	mov    %rcx,%r13
		map->data = ft_realloc(map->data,
  406e99:	e8 b2 66 00 00       	call   40d550 <ft_realloc>
  406e9e:	48 8b 3c 24          	mov    (%rsp),%rdi
  406ea2:	49 89 44 1d 08       	mov    %rax,0x8(%r13,%rbx,1)
  406ea7:	eb 46                	jmp    406eef <edit_place+0x43f>
  406ea9:	44 8b 7c 24 1c       	mov    0x1c(%rsp),%r15d
  406eae:	44 8b 64 24 18       	mov    0x18(%rsp),%r12d
  406eb3:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
  406eb8:	eb 07                	jmp    406ec1 <edit_place+0x411>
		map->width++;
  406eba:	41 83 c5 01          	add    $0x1,%r13d
  406ebe:	44 89 eb             	mov    %r13d,%ebx
  406ec1:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  406ec6:	89 18                	mov    %ebx,(%rax)
  406ec8:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  406ecd:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
		free(map->data);
  406ed2:	48 8b 7c 1d 08       	mov    0x8(%rbp,%rbx,1),%rdi
  406ed7:	e8 a4 b2 ff ff       	call   402180 <free@plt>
  406edc:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
		map->data = tile;
  406ee1:	48 89 44 1d 08       	mov    %rax,0x8(%rbp,%rbx,1)
  406ee6:	48 8b 6c 24 60       	mov    0x60(%rsp),%rbp
  406eeb:	48 8b 3c 24          	mov    (%rsp),%rdi
		_place_item(x, y, game->editor.item, game);
  406eef:	8b 47 70             	mov    0x70(%rdi),%eax
  406ef2:	48 83 f8 06          	cmp    $0x6,%rax
	if (item == ITEM_EMPTY)
  406ef6:	0f 87 da 01 00 00    	ja     4070d6 <edit_place+0x626>
  406efc:	4c 89 f2             	mov    %r14,%rdx
  406eff:	48 8b 4f 50          	mov    0x50(%rdi),%rcx
  406f03:	4c 8b 31             	mov    (%rcx),%r14
  406f06:	48 63 9f 68 01 00 00 	movslq 0x168(%rdi),%rbx
  406f0d:	48 8d 0d 50 91 00 00 	lea    0x9150(%rip),%rcx        # 410064 <_IO_stdin_used+0x1064>
  406f14:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  406f18:	48 01 c8             	add    %rcx,%rax
  406f1b:	ff e0                	jmp    *%rax
		level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  406f1d:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  406f21:	48 c1 e0 04          	shl    $0x4,%rax
  406f25:	45 0f af 7c 06 20    	imul   0x20(%r14,%rax,1),%r15d
  406f2b:	49 8b 44 06 08       	mov    0x8(%r14,%rax,1),%rax
  406f30:	45 01 e7             	add    %r12d,%r15d
  406f33:	49 63 cf             	movslq %r15d,%rcx
  406f36:	c7 04 88 00 00 00 00 	movl   $0x0,(%rax,%rcx,4)
  406f3d:	e9 94 01 00 00       	jmp    4070d6 <edit_place+0x626>
		level->data[tile_x + tile_y * level->width] = TILE_SOLID;
  406f42:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  406f46:	48 c1 e0 04          	shl    $0x4,%rax
  406f4a:	45 0f af 7c 06 20    	imul   0x20(%r14,%rax,1),%r15d
  406f50:	49 8b 44 06 08       	mov    0x8(%r14,%rax,1),%rax
  406f55:	45 01 e7             	add    %r12d,%r15d
  406f58:	49 63 cf             	movslq %r15d,%rcx
  406f5b:	c7 04 88 01 00 00 00 	movl   $0x1,(%rax,%rcx,4)
  406f62:	e9 6f 01 00 00       	jmp    4070d6 <edit_place+0x626>
		level->data[tile_x + tile_y * level->width] = TILE_DOOR;
  406f67:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  406f6b:	48 c1 e0 04          	shl    $0x4,%rax
  406f6f:	45 0f af 7c 06 20    	imul   0x20(%r14,%rax,1),%r15d
  406f75:	49 8b 44 06 08       	mov    0x8(%r14,%rax,1),%rax
  406f7a:	45 01 e7             	add    %r12d,%r15d
  406f7d:	49 63 cf             	movslq %r15d,%rcx
  406f80:	c7 04 88 02 00 00 00 	movl   $0x2,(%rax,%rcx,4)
  406f87:	e9 4a 01 00 00       	jmp    4070d6 <edit_place+0x626>
  406f8c:	49 89 fd             	mov    %rdi,%r13
	remove_entity(game, x, y);
  406f8f:	89 ee                	mov    %ebp,%esi
  406f91:	e8 9a ef ff ff       	call   405f30 <remove_entity>
	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  406f96:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  406f9a:	48 c1 e0 04          	shl    $0x4,%rax
  406f9e:	49 8b 4c 06 08       	mov    0x8(%r14,%rax,1),%rcx
  406fa3:	41 8b 44 06 20       	mov    0x20(%r14,%rax,1),%eax
  406fa8:	41 0f af c7          	imul   %r15d,%eax
  406fac:	44 01 e0             	add    %r12d,%eax
  406faf:	48 98                	cltq   
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
  406fb1:	41 c1 e4 06          	shl    $0x6,%r12d
  406fb5:	0f 57 c0             	xorps  %xmm0,%xmm0
  406fb8:	f3 41 0f 2a c4       	cvtsi2ss %r12d,%xmm0
  406fbd:	41 c1 e7 06          	shl    $0x6,%r15d
  406fc1:	0f 57 c9             	xorps  %xmm1,%xmm1
  406fc4:	f3 41 0f 2a cf       	cvtsi2ss %r15d,%xmm1
	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  406fc9:	c7 04 81 00 00 00 00 	movl   $0x0,(%rcx,%rax,4)
	add_entity(&game->entities, gem_new(game,
  406fd0:	4d 8d 75 20          	lea    0x20(%r13),%r14
  406fd4:	0f 14 c1             	unpcklps %xmm1,%xmm0
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
  406fd7:	41 8b b5 68 01 00 00 	mov    0x168(%r13),%esi
	add_entity(&game->entities, gem_new(game,
  406fde:	4c 89 ef             	mov    %r13,%rdi
  406fe1:	e8 6a 2b 00 00       	call   409b50 <gem_new>
  406fe6:	4c 89 f7             	mov    %r14,%rdi
  406fe9:	48 89 c6             	mov    %rax,%rsi
  406fec:	e8 1f ef ff ff       	call   405f10 <add_entity>
	game->collectibles_count++;
  406ff1:	41 83 85 00 03 00 00 	addl   $0x1,0x300(%r13)
  406ff8:	01 
  406ff9:	e9 d8 00 00 00       	jmp    4070d6 <edit_place+0x626>
	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  406ffe:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  407002:	48 c1 e0 04          	shl    $0x4,%rax
  407006:	49 8b 4c 06 08       	mov    0x8(%r14,%rax,1),%rcx
  40700b:	41 8b 44 06 20       	mov    0x20(%r14,%rax,1),%eax
  407010:	41 0f af c7          	imul   %r15d,%eax
  407014:	44 01 e0             	add    %r12d,%eax
  407017:	48 98                	cltq   
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level, false));
  407019:	41 c1 e4 06          	shl    $0x6,%r12d
  40701d:	0f 57 c0             	xorps  %xmm0,%xmm0
  407020:	f3 41 0f 2a c4       	cvtsi2ss %r12d,%xmm0
  407025:	41 c1 e7 06          	shl    $0x6,%r15d
  407029:	0f 57 c9             	xorps  %xmm1,%xmm1
  40702c:	f3 41 0f 2a cf       	cvtsi2ss %r15d,%xmm1
	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  407031:	c7 04 81 00 00 00 00 	movl   $0x0,(%rcx,%rax,4)
	add_entity(&game->entities, player_new(game,
  407038:	4c 8d 77 20          	lea    0x20(%rdi),%r14
  40703c:	0f 14 c1             	unpcklps %xmm1,%xmm0
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level, false));
  40703f:	8b b7 68 01 00 00    	mov    0x168(%rdi),%esi
	add_entity(&game->entities, player_new(game,
  407045:	31 d2                	xor    %edx,%edx
  407047:	e8 24 24 00 00       	call   409470 <player_new>
  40704c:	eb 4c                	jmp    40709a <edit_place+0x5ea>
		level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  40704e:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  407052:	48 c1 e0 04          	shl    $0x4,%rax
  407056:	49 8b 4c 06 08       	mov    0x8(%r14,%rax,1),%rcx
  40705b:	41 8b 44 06 20       	mov    0x20(%r14,%rax,1),%eax
  407060:	41 0f af c7          	imul   %r15d,%eax
  407064:	44 01 e0             	add    %r12d,%eax
  407067:	48 98                	cltq   
				(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
  407069:	41 c1 e4 06          	shl    $0x6,%r12d
  40706d:	0f 57 c0             	xorps  %xmm0,%xmm0
  407070:	f3 41 0f 2a c4       	cvtsi2ss %r12d,%xmm0
  407075:	41 c1 e7 06          	shl    $0x6,%r15d
  407079:	0f 57 c9             	xorps  %xmm1,%xmm1
  40707c:	f3 41 0f 2a cf       	cvtsi2ss %r15d,%xmm1
		level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
  407081:	c7 04 81 00 00 00 00 	movl   $0x0,(%rcx,%rax,4)
		add_entity(&game->entities, knight_new(game,
  407088:	4c 8d 77 20          	lea    0x20(%rdi),%r14
  40708c:	0f 14 c1             	unpcklps %xmm1,%xmm0
				(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
  40708f:	8b b7 68 01 00 00    	mov    0x168(%rdi),%esi
		add_entity(&game->entities, knight_new(game,
  407095:	e8 b6 2c 00 00       	call   409d50 <knight_new>
  40709a:	4c 89 f7             	mov    %r14,%rdi
  40709d:	48 89 c6             	mov    %rax,%rsi
  4070a0:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  4070a7:	5b                   	pop    %rbx
  4070a8:	41 5c                	pop    %r12
  4070aa:	41 5d                	pop    %r13
  4070ac:	41 5e                	pop    %r14
  4070ae:	41 5f                	pop    %r15
  4070b0:	5d                   	pop    %rbp
  4070b1:	e9 5a ee ff ff       	jmp    405f10 <add_entity>
		level->data[tile_x + tile_y * level->width] = TILE_STAIR;
  4070b6:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
  4070ba:	48 c1 e0 04          	shl    $0x4,%rax
  4070be:	45 0f af 7c 06 20    	imul   0x20(%r14,%rax,1),%r15d
  4070c4:	49 8b 44 06 08       	mov    0x8(%r14,%rax,1),%rax
  4070c9:	45 01 e7             	add    %r12d,%r15d
  4070cc:	49 63 cf             	movslq %r15d,%rcx
  4070cf:	c7 04 88 05 00 00 00 	movl   $0x5,(%rax,%rcx,4)
	}
}
  4070d6:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  4070dd:	5b                   	pop    %rbx
  4070de:	41 5c                	pop    %r12
  4070e0:	41 5d                	pop    %r13
  4070e2:	41 5e                	pop    %r14
  4070e4:	41 5f                	pop    %r15
  4070e6:	5d                   	pop    %rbp
  4070e7:	c3                   	ret    
  4070e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4070ef:	00 

00000000004070f0 <edit_save>:
/* ************************************************************************** */

#include "../so_long.h"

void	edit_save(t_game *game)
{
  4070f0:	53                   	push   %rbx
  4070f1:	48 89 fb             	mov    %rdi,%rbx
	map2_save(game->map2, game);
  4070f4:	48 8b 7f 50          	mov    0x50(%rdi),%rdi
  4070f8:	48 89 de             	mov    %rbx,%rsi
  4070fb:	e8 80 16 00 00       	call   408780 <map2_save>
	map2_reload(game, game->map2);
  407100:	48 8b 73 50          	mov    0x50(%rbx),%rsi
  407104:	48 89 df             	mov    %rbx,%rdi
  407107:	5b                   	pop    %rbx
  407108:	e9 53 05 00 00       	jmp    407660 <map2_reload>
  40710d:	0f 1f 00             	nopl   (%rax)

0000000000407110 <edit_quit>:
}

void	edit_quit(t_game *game)
{
  407110:	53                   	push   %rbx
  407111:	48 89 fb             	mov    %rdi,%rbx
	map2_reload(game, game->map2);
  407114:	48 8b 77 50          	mov    0x50(%rdi),%rsi
  407118:	e8 43 05 00 00       	call   407660 <map2_reload>
	game->menu_opened = true;
  40711d:	c6 43 68 01          	movb   $0x1,0x68(%rbx)
	game->editor_mode = false;
  407121:	c6 83 70 01 00 00 00 	movb   $0x0,0x170(%rbx)
}
  407128:	5b                   	pop    %rbx
  407129:	c3                   	ret    
  40712a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407130 <edit_l1>:

void	edit_l1(t_game *game)
{
	game->editor.l1.pressed = true;
  407130:	c6 87 00 01 00 00 01 	movb   $0x1,0x100(%rdi)
	game->editor.l2.pressed = false;
  407137:	c6 87 30 01 00 00 00 	movb   $0x0,0x130(%rdi)
	game->editor.l3.pressed = false;
  40713e:	c6 87 60 01 00 00 00 	movb   $0x0,0x160(%rdi)
	game->editor.level = 0;
  407145:	c7 87 68 01 00 00 00 	movl   $0x0,0x168(%rdi)
  40714c:	00 00 00 
}
  40714f:	c3                   	ret    

0000000000407150 <edit_l2>:

void	edit_l2(t_game *game)
{
	game->editor.l1.pressed = false;
  407150:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
	game->editor.l2.pressed = true;
  407157:	c6 87 30 01 00 00 01 	movb   $0x1,0x130(%rdi)
	game->editor.l3.pressed = false;
  40715e:	c6 87 60 01 00 00 00 	movb   $0x0,0x160(%rdi)
	game->editor.level = 1;
  407165:	c7 87 68 01 00 00 01 	movl   $0x1,0x168(%rdi)
  40716c:	00 00 00 
}
  40716f:	c3                   	ret    

0000000000407170 <edit_l3>:

void	edit_l3(t_game *game)
{
	game->editor.l1.pressed = false;
  407170:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
	game->editor.l2.pressed = false;
  407177:	c6 87 30 01 00 00 00 	movb   $0x0,0x130(%rdi)
	game->editor.l3.pressed = true;
  40717e:	c6 87 60 01 00 00 01 	movb   $0x1,0x160(%rdi)
	game->editor.level = 2;
  407185:	c7 87 68 01 00 00 02 	movl   $0x2,0x168(%rdi)
  40718c:	00 00 00 
}
  40718f:	c3                   	ret    

0000000000407190 <edit_click_hook>:
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 6 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_ENEMY;
}

void	edit_click_hook(t_game *game, int mx, int my, int btn)
{
  407190:	55                   	push   %rbp
  407191:	41 57                	push   %r15
  407193:	41 56                	push   %r14
  407195:	53                   	push   %rbx
  407196:	50                   	push   %rax
  407197:	41 89 cf             	mov    %ecx,%r15d
  40719a:	41 89 d6             	mov    %edx,%r14d
  40719d:	89 f5                	mov    %esi,%ebp
  40719f:	48 89 fb             	mov    %rdi,%rbx
	const int		y = WIN_HEIGHT - 192 + 64;

	btn_click(game, &game->editor.save, mx, my);
  4071a2:	48 8d 77 78          	lea    0x78(%rdi),%rsi
  4071a6:	89 ea                	mov    %ebp,%edx
  4071a8:	44 89 f1             	mov    %r14d,%ecx
  4071ab:	e8 40 e2 ff ff       	call   4053f0 <btn_click>
	btn_click(game, &game->editor.quit, mx, my);
  4071b0:	48 8d b3 a8 00 00 00 	lea    0xa8(%rbx),%rsi
  4071b7:	48 89 df             	mov    %rbx,%rdi
  4071ba:	89 ea                	mov    %ebp,%edx
  4071bc:	44 89 f1             	mov    %r14d,%ecx
  4071bf:	e8 2c e2 ff ff       	call   4053f0 <btn_click>
	btn_click(game, &game->editor.l1, mx, my);
  4071c4:	48 8d b3 d8 00 00 00 	lea    0xd8(%rbx),%rsi
  4071cb:	48 89 df             	mov    %rbx,%rdi
  4071ce:	89 ea                	mov    %ebp,%edx
  4071d0:	44 89 f1             	mov    %r14d,%ecx
  4071d3:	e8 18 e2 ff ff       	call   4053f0 <btn_click>
	btn_click(game, &game->editor.l2, mx, my);
  4071d8:	48 8d b3 08 01 00 00 	lea    0x108(%rbx),%rsi
  4071df:	48 89 df             	mov    %rbx,%rdi
  4071e2:	89 ea                	mov    %ebp,%edx
  4071e4:	44 89 f1             	mov    %r14d,%ecx
  4071e7:	e8 04 e2 ff ff       	call   4053f0 <btn_click>
	btn_click(game, &game->editor.l3, mx, my);
  4071ec:	48 8d b3 38 01 00 00 	lea    0x138(%rbx),%rsi
  4071f3:	48 89 df             	mov    %rbx,%rdi
  4071f6:	89 ea                	mov    %ebp,%edx
  4071f8:	44 89 f1             	mov    %r14d,%ecx
  4071fb:	e8 f0 e1 ff ff       	call   4053f0 <btn_click>
	return (m.x >= min.x && m.x <= min.x + size.x
  407200:	85 ed                	test   %ebp,%ebp
  407202:	0f 88 ff 00 00 00    	js     407307 <edit_click_hook+0x177>
  407208:	81 fd a0 05 00 00    	cmp    $0x5a0,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  40720e:	0f 8f f3 00 00 00    	jg     407307 <edit_click_hook+0x177>
  407214:	41 8d 86 00 fd ff ff 	lea    -0x300(%r14),%eax
  40721b:	3d c0 00 00 00       	cmp    $0xc0,%eax
  407220:	0f 87 e1 00 00 00    	ja     407307 <edit_click_hook+0x177>
	return (m.x >= min.x && m.x <= min.x + size.x
  407226:	83 fd 60             	cmp    $0x60,%ebp
  407229:	0f 8c cd 00 00 00    	jl     4072fc <edit_click_hook+0x16c>
		&& m.y >= min.y && m.y <= min.y + size.y);
  40722f:	41 81 c6 c0 fc ff ff 	add    $0xfffffcc0,%r14d
	return (m.x >= min.x && m.x <= min.x + size.x
  407236:	81 fd a0 00 00 00    	cmp    $0xa0,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  40723c:	7f 0d                	jg     40724b <edit_click_hook+0xbb>
  40723e:	41 83 fe 40          	cmp    $0x40,%r14d
  407242:	77 07                	ja     40724b <edit_click_hook+0xbb>
		game->editor.item = ITEM_EMPTY;
  407244:	c7 43 70 00 00 00 00 	movl   $0x0,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  40724b:	81 fd a0 00 00 00    	cmp    $0xa0,%ebp
  407251:	0f 8c a5 00 00 00    	jl     4072fc <edit_click_hook+0x16c>
  407257:	81 fd e0 00 00 00    	cmp    $0xe0,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  40725d:	7f 0d                	jg     40726c <edit_click_hook+0xdc>
  40725f:	41 83 fe 40          	cmp    $0x40,%r14d
  407263:	77 07                	ja     40726c <edit_click_hook+0xdc>
		game->editor.item = ITEM_SOLID;
  407265:	c7 43 70 01 00 00 00 	movl   $0x1,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  40726c:	81 fd e0 00 00 00    	cmp    $0xe0,%ebp
  407272:	0f 8c 84 00 00 00    	jl     4072fc <edit_click_hook+0x16c>
  407278:	81 fd 20 01 00 00    	cmp    $0x120,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  40727e:	7f 0d                	jg     40728d <edit_click_hook+0xfd>
  407280:	41 83 fe 40          	cmp    $0x40,%r14d
  407284:	77 07                	ja     40728d <edit_click_hook+0xfd>
		game->editor.item = ITEM_DOOR;
  407286:	c7 43 70 02 00 00 00 	movl   $0x2,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  40728d:	81 fd 20 01 00 00    	cmp    $0x120,%ebp
  407293:	7c 67                	jl     4072fc <edit_click_hook+0x16c>
  407295:	81 fd 60 01 00 00    	cmp    $0x160,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  40729b:	7f 0d                	jg     4072aa <edit_click_hook+0x11a>
  40729d:	41 83 fe 40          	cmp    $0x40,%r14d
  4072a1:	77 07                	ja     4072aa <edit_click_hook+0x11a>
		game->editor.item = ITEM_STAIR;
  4072a3:	c7 43 70 06 00 00 00 	movl   $0x6,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  4072aa:	81 fd 60 01 00 00    	cmp    $0x160,%ebp
  4072b0:	7c 4a                	jl     4072fc <edit_click_hook+0x16c>
  4072b2:	81 fd a0 01 00 00    	cmp    $0x1a0,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  4072b8:	7f 0d                	jg     4072c7 <edit_click_hook+0x137>
  4072ba:	41 83 fe 40          	cmp    $0x40,%r14d
  4072be:	77 07                	ja     4072c7 <edit_click_hook+0x137>
		game->editor.item = ITEM_COLLECT;
  4072c0:	c7 43 70 03 00 00 00 	movl   $0x3,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  4072c7:	81 fd a0 01 00 00    	cmp    $0x1a0,%ebp
  4072cd:	7c 2d                	jl     4072fc <edit_click_hook+0x16c>
  4072cf:	81 fd e0 01 00 00    	cmp    $0x1e0,%ebp
		&& m.y >= min.y && m.y <= min.y + size.y);
  4072d5:	7f 0d                	jg     4072e4 <edit_click_hook+0x154>
  4072d7:	41 83 fe 40          	cmp    $0x40,%r14d
  4072db:	77 07                	ja     4072e4 <edit_click_hook+0x154>
		game->editor.item = ITEM_PLAYER;
  4072dd:	c7 43 70 04 00 00 00 	movl   $0x4,0x70(%rbx)
	return (m.x >= min.x && m.x <= min.x + size.x
  4072e4:	81 c5 20 fe ff ff    	add    $0xfffffe20,%ebp
  4072ea:	83 fd 40             	cmp    $0x40,%ebp
  4072ed:	77 0d                	ja     4072fc <edit_click_hook+0x16c>
  4072ef:	41 83 fe 40          	cmp    $0x40,%r14d
  4072f3:	77 07                	ja     4072fc <edit_click_hook+0x16c>
		game->editor.item = ITEM_ENEMY;
  4072f5:	c7 43 70 05 00 00 00 	movl   $0x5,0x70(%rbx)
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){0, y - 64},
		(t_vec2i){WIN_WIDTH, 192}))
		_select(game, mx, my);
	else
		edit_place(game, btn, mx, my);
}
  4072fc:	48 83 c4 08          	add    $0x8,%rsp
  407300:	5b                   	pop    %rbx
  407301:	41 5e                	pop    %r14
  407303:	41 5f                	pop    %r15
  407305:	5d                   	pop    %rbp
  407306:	c3                   	ret    
		edit_place(game, btn, mx, my);
  407307:	48 89 df             	mov    %rbx,%rdi
  40730a:	44 89 fe             	mov    %r15d,%esi
  40730d:	89 ea                	mov    %ebp,%edx
  40730f:	44 89 f1             	mov    %r14d,%ecx
  407312:	48 83 c4 08          	add    $0x8,%rsp
  407316:	5b                   	pop    %rbx
  407317:	41 5e                	pop    %r14
  407319:	41 5f                	pop    %r15
  40731b:	5d                   	pop    %rbp
  40731c:	e9 8f f7 ff ff       	jmp    406ab0 <edit_place>
  407321:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  407328:	00 00 00 
  40732b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000407330 <map2_load>:
	}
	return (0);
}

t_map2	*map2_load(t_game *game, char **filenames, int count)
{
  407330:	55                   	push   %rbp
  407331:	41 57                	push   %r15
  407333:	41 56                	push   %r14
  407335:	41 55                	push   %r13
  407337:	41 54                	push   %r12
  407339:	53                   	push   %rbx
  40733a:	50                   	push   %rax
  40733b:	89 d5                	mov    %edx,%ebp
  40733d:	49 89 f4             	mov    %rsi,%r12
  407340:	49 89 fe             	mov    %rdi,%r14
	int		i;
	t_map2	*map;

	if (!check_files(filenames, count))
  407343:	48 89 f7             	mov    %rsi,%rdi
  407346:	89 d6                	mov    %edx,%esi
  407348:	e8 63 17 00 00       	call   408ab0 <check_files>
  40734d:	45 31 ff             	xor    %r15d,%r15d
  407350:	84 c0                	test   %al,%al
  407352:	0f 84 a0 00 00 00    	je     4073f8 <map2_load+0xc8>
		return (NULL);
	map = malloc(sizeof(t_map2));
  407358:	bf 18 00 00 00       	mov    $0x18,%edi
  40735d:	e8 ae ad ff ff       	call   402110 <malloc@plt>
  407362:	48 89 c3             	mov    %rax,%rbx
	map->levels = malloc(sizeof(t_level) * (count + 1));
  407365:	48 63 c5             	movslq %ebp,%rax
  407368:	48 c1 e0 04          	shl    $0x4,%rax
  40736c:	48 8d 3c 40          	lea    (%rax,%rax,2),%rdi
  407370:	48 83 c7 30          	add    $0x30,%rdi
  407374:	e8 97 ad ff ff       	call   402110 <malloc@plt>
  407379:	48 89 03             	mov    %rax,(%rbx)
	map->level_count = count;
  40737c:	89 6b 08             	mov    %ebp,0x8(%rbx)
	i = -1;
	while (++i < count)
  40737f:	85 ed                	test   %ebp,%ebp
  407381:	41 0f 48 ef          	cmovs  %r15d,%ebp
  407385:	4c 63 ed             	movslq %ebp,%r13
  407388:	45 31 ff             	xor    %r15d,%r15d
  40738b:	31 ed                	xor    %ebp,%ebp
  40738d:	0f 1f 00             	nopl   (%rax)
  407390:	48 8b 33             	mov    (%rbx),%rsi
  407393:	49 39 ed             	cmp    %rbp,%r13
  407396:	74 24                	je     4073bc <map2_load+0x8c>
	{
		map->levels[i].map = map;
  407398:	4a 89 1c 3e          	mov    %rbx,(%rsi,%r15,1)
  40739c:	4c 01 fe             	add    %r15,%rsi
		if (_load_level(game, map->levels + i, i, filenames[i]) == -1)
  40739f:	49 8b 0c ec          	mov    (%r12,%rbp,8),%rcx
  4073a3:	4c 89 f7             	mov    %r14,%rdi
  4073a6:	89 ea                	mov    %ebp,%edx
  4073a8:	e8 63 00 00 00       	call   407410 <_load_level>
  4073ad:	48 83 c5 01          	add    $0x1,%rbp
  4073b1:	49 83 c7 30          	add    $0x30,%r15
  4073b5:	83 f8 ff             	cmp    $0xffffffff,%eax
  4073b8:	75 d6                	jne    407390 <map2_load+0x60>
  4073ba:	eb 39                	jmp    4073f5 <map2_load+0xc5>
			return (NULL);
	}
	map->width = map->levels[0].width;
  4073bc:	8b 46 20             	mov    0x20(%rsi),%eax
  4073bf:	89 43 0c             	mov    %eax,0xc(%rbx)
	map->height = map->levels[0].height;
  4073c2:	8b 46 24             	mov    0x24(%rsi),%eax
  4073c5:	89 43 10             	mov    %eax,0x10(%rbx)
	if (!check_errors(map) || !check_finish(game, map))
  4073c8:	48 89 df             	mov    %rbx,%rdi
  4073cb:	e8 60 17 00 00       	call   408b30 <check_errors>
  4073d0:	84 c0                	test   %al,%al
  4073d2:	74 19                	je     4073ed <map2_load+0xbd>
  4073d4:	4c 89 f7             	mov    %r14,%rdi
  4073d7:	48 89 de             	mov    %rbx,%rsi
  4073da:	e8 21 18 00 00       	call   408c00 <check_finish>
  4073df:	84 c0                	test   %al,%al
  4073e1:	74 0a                	je     4073ed <map2_load+0xbd>
		return (map2_free(map), NULL);
	game->map_valid = true;
  4073e3:	41 c6 46 58 01       	movb   $0x1,0x58(%r14)
  4073e8:	49 89 df             	mov    %rbx,%r15
  4073eb:	eb 0b                	jmp    4073f8 <map2_load+0xc8>
		return (map2_free(map), NULL);
  4073ed:	48 89 df             	mov    %rbx,%rdi
  4073f0:	e8 2b 1d 00 00       	call   409120 <map2_free>
  4073f5:	45 31 ff             	xor    %r15d,%r15d
	return (map);
}
  4073f8:	4c 89 f8             	mov    %r15,%rax
  4073fb:	48 83 c4 08          	add    $0x8,%rsp
  4073ff:	5b                   	pop    %rbx
  407400:	41 5c                	pop    %r12
  407402:	41 5d                	pop    %r13
  407404:	41 5e                	pop    %r14
  407406:	41 5f                	pop    %r15
  407408:	5d                   	pop    %rbp
  407409:	c3                   	ret    
  40740a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407410 <_load_level>:
{
  407410:	55                   	push   %rbp
  407411:	41 57                	push   %r15
  407413:	41 56                	push   %r14
  407415:	41 55                	push   %r13
  407417:	41 54                	push   %r12
  407419:	53                   	push   %rbx
  40741a:	48 83 ec 38          	sub    $0x38,%rsp
  40741e:	49 89 cc             	mov    %rcx,%r12
  407421:	89 d5                	mov    %edx,%ebp
  407423:	48 89 f3             	mov    %rsi,%rbx
  407426:	49 89 fd             	mov    %rdi,%r13
	level->string = read_to_string(filename);
  407429:	48 89 cf             	mov    %rcx,%rdi
  40742c:	e8 df 02 00 00       	call   407710 <read_to_string>
  407431:	48 89 43 10          	mov    %rax,0x10(%rbx)
	level->width = line_width_and_check(level->string);
  407435:	48 89 c7             	mov    %rax,%rdi
  407438:	e8 e3 1b 00 00       	call   409020 <line_width_and_check>
  40743d:	89 43 20             	mov    %eax,0x20(%rbx)
	if (level->width == -1)
  407440:	83 f8 ff             	cmp    $0xffffffff,%eax
  407443:	0f 84 e7 01 00 00    	je     407630 <_load_level+0x220>
	level->height = line_count(level->string);
  407449:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  40744d:	e8 1e 1c 00 00       	call   409070 <line_count>
  407452:	89 43 24             	mov    %eax,0x24(%rbx)
	level->data = malloc(sizeof(t_tile) * level->width * level->height);
  407455:	48 63 4b 20          	movslq 0x20(%rbx),%rcx
  407459:	48 63 f8             	movslq %eax,%rdi
  40745c:	48 0f af f9          	imul   %rcx,%rdi
  407460:	48 c1 e7 02          	shl    $0x2,%rdi
  407464:	e8 a7 ac ff ff       	call   402110 <malloc@plt>
  407469:	48 89 43 08          	mov    %rax,0x8(%rbx)
	level->filename = filename;
  40746d:	4c 89 63 18          	mov    %r12,0x18(%rbx)
	level->index = index;
  407471:	89 6b 28             	mov    %ebp,0x28(%rbx)
	while (++x < level->width)
  407474:	8b 43 20             	mov    0x20(%rbx),%eax
  407477:	85 c0                	test   %eax,%eax
  407479:	0f 8e bb 01 00 00    	jle    40763a <_load_level+0x22a>
  40747f:	89 ea                	mov    %ebp,%edx
  407481:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  407488:	ff 
  407489:	49 8d 4d 20          	lea    0x20(%r13),%rcx
  40748d:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
		while (++y < level->height)
  407492:	8b 4b 24             	mov    0x24(%rbx),%ecx
  407495:	31 ed                	xor    %ebp,%ebp
  407497:	48 8d 35 e2 8b 00 00 	lea    0x8be2(%rip),%rsi        # 410080 <_IO_stdin_used+0x1080>
  40749e:	89 54 24 10          	mov    %edx,0x10(%rsp)
  4074a2:	eb 17                	jmp    4074bb <_load_level+0xab>
  4074a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4074ab:	00 00 00 
  4074ae:	66 90                	xchg   %ax,%ax
	while (++x < level->width)
  4074b0:	83 c5 01             	add    $0x1,%ebp
  4074b3:	39 c5                	cmp    %eax,%ebp
  4074b5:	0f 8d 7f 01 00 00    	jge    40763a <_load_level+0x22a>
		while (++y < level->height)
  4074bb:	85 c9                	test   %ecx,%ecx
  4074bd:	7e f1                	jle    4074b0 <_load_level+0xa0>
  4074bf:	0f 57 c0             	xorps  %xmm0,%xmm0
  4074c2:	f3 0f 2a c5          	cvtsi2ss %ebp,%xmm0
  4074c6:	f3 0f 11 44 24 14    	movss  %xmm0,0x14(%rsp)
  4074cc:	89 e9                	mov    %ebp,%ecx
  4074ce:	c1 e1 06             	shl    $0x6,%ecx
  4074d1:	0f 57 c0             	xorps  %xmm0,%xmm0
  4074d4:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  4074d8:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  4074dd:	45 31 e4             	xor    %r12d,%r12d
  4074e0:	41 bf f0 ff ff ff    	mov    $0xfffffff0,%r15d
  4074e6:	eb 71                	jmp    407559 <_load_level+0x149>
				pos.y * 64}, level));
  4074e8:	41 8d 47 10          	lea    0x10(%r15),%eax
  4074ec:	0f 57 c0             	xorps  %xmm0,%xmm0
  4074ef:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4074f3:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
		add_entity(&game->entities, gem_new(game, (t_vec2){pos.x * 64,
  4074f8:	0f 16 c1             	movlhps %xmm1,%xmm0
  4074fb:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  4074ff:	4c 89 ef             	mov    %r13,%rdi
  407502:	8b 74 24 10          	mov    0x10(%rsp),%esi
  407506:	e8 45 26 00 00       	call   409b50 <gem_new>
  40750b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  407510:	48 89 c6             	mov    %rax,%rsi
  407513:	e8 f8 e9 ff ff       	call   405f10 <add_entity>
  407518:	48 8d 35 61 8b 00 00 	lea    0x8b61(%rip),%rsi        # 410080 <_IO_stdin_used+0x1080>
  40751f:	8b 54 24 10          	mov    0x10(%rsp),%edx
		game->collectibles_count++;
  407523:	41 83 85 00 03 00 00 	addl   $0x1,0x300(%r13)
  40752a:	01 
  40752b:	45 31 f6             	xor    %r14d,%r14d
			level->data[x + y * level->width] = tile;
  40752e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  407532:	8b 4b 20             	mov    0x20(%rbx),%ecx
  407535:	41 0f af cc          	imul   %r12d,%ecx
  407539:	01 e9                	add    %ebp,%ecx
  40753b:	48 63 c9             	movslq %ecx,%rcx
  40753e:	44 89 34 88          	mov    %r14d,(%rax,%rcx,4)
		while (++y < level->height)
  407542:	41 83 c4 01          	add    $0x1,%r12d
  407546:	8b 43 20             	mov    0x20(%rbx),%eax
  407549:	8b 4b 24             	mov    0x24(%rbx),%ecx
  40754c:	41 83 c7 40          	add    $0x40,%r15d
  407550:	41 39 cc             	cmp    %ecx,%r12d
  407553:	0f 8d 57 ff ff ff    	jge    4074b0 <_load_level+0xa0>
			tile = _put_tile(game, level->string[x + y * (level->width + 1)],
  407559:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  40755d:	83 c0 01             	add    $0x1,%eax
  407560:	41 0f af c4          	imul   %r12d,%eax
  407564:	01 e8                	add    %ebp,%eax
  407566:	48 98                	cltq   
  407568:	0f b6 04 01          	movzbl (%rcx,%rax,1),%eax
	if (c == '1')
  40756c:	04 d0                	add    $0xd0,%al
  40756e:	3c 20                	cmp    $0x20,%al
  407570:	0f 87 cc 00 00 00    	ja     407642 <_load_level+0x232>
  407576:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40757c:	0f b6 c0             	movzbl %al,%eax
  40757f:	48 63 04 86          	movslq (%rsi,%rax,4),%rax
  407583:	48 01 f0             	add    %rsi,%rax
  407586:	ff e0                	jmp    *%rax
		return (game->exit_pos = (t_vec2){pos.x * 64, pos.y * 64},
  407588:	41 8d 47 10          	lea    0x10(%r15),%eax
  40758c:	0f 57 c0             	xorps  %xmm0,%xmm0
  40758f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  407593:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  407598:	f3 41 0f 11 8d 0c 03 	movss  %xmm1,0x30c(%r13)
  40759f:	00 00 
  4075a1:	f3 41 0f 11 85 10 03 	movss  %xmm0,0x310(%r13)
  4075a8:	00 00 
			game->exit_level = level, TILE_DOOR);
  4075aa:	41 89 95 14 03 00 00 	mov    %edx,0x314(%r13)
  4075b1:	41 be 02 00 00 00    	mov    $0x2,%r14d
  4075b7:	e9 72 ff ff ff       	jmp    40752e <_load_level+0x11e>
	if (game->player)
  4075bc:	49 83 7d 40 00       	cmpq   $0x0,0x40(%r13)
  4075c1:	75 7f                	jne    407642 <_load_level+0x232>
	game->start_pos.y = pos.y;
  4075c3:	0f 57 c9             	xorps  %xmm1,%xmm1
  4075c6:	f3 41 0f 2a cc       	cvtsi2ss %r12d,%xmm1
  4075cb:	f3 0f 10 44 24 14    	movss  0x14(%rsp),%xmm0
	game->start_pos.x = pos.x;
  4075d1:	f3 41 0f 11 85 f4 02 	movss  %xmm0,0x2f4(%r13)
  4075d8:	00 00 
			player_new(game, (t_vec2){pos.x * 64, pos.y * 64 - 16}, level, 0));
  4075da:	0f 57 c0             	xorps  %xmm0,%xmm0
  4075dd:	f3 41 0f 2a c7       	cvtsi2ss %r15d,%xmm0
	game->start_pos.y = pos.y;
  4075e2:	f3 41 0f 11 8d f8 02 	movss  %xmm1,0x2f8(%r13)
  4075e9:	00 00 
	game->start_level = level;
  4075eb:	41 89 95 fc 02 00 00 	mov    %edx,0x2fc(%r13)
  4075f2:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
			player_new(game, (t_vec2){pos.x * 64, pos.y * 64 - 16}, level, 0));
  4075f7:	0f 16 c1             	movlhps %xmm1,%xmm0
  4075fa:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  4075fe:	45 31 f6             	xor    %r14d,%r14d
  407601:	4c 89 ef             	mov    %r13,%rdi
  407604:	8b 74 24 10          	mov    0x10(%rsp),%esi
  407608:	31 d2                	xor    %edx,%edx
  40760a:	e8 61 1e 00 00       	call   409470 <player_new>
  40760f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
	game->player = add_entity(&game->entities,
  407614:	48 89 c6             	mov    %rax,%rsi
  407617:	e8 f4 e8 ff ff       	call   405f10 <add_entity>
  40761c:	48 8d 35 5d 8a 00 00 	lea    0x8a5d(%rip),%rsi        # 410080 <_IO_stdin_used+0x1080>
  407623:	8b 54 24 10          	mov    0x10(%rsp),%edx
  407627:	49 89 45 40          	mov    %rax,0x40(%r13)
  40762b:	e9 fe fe ff ff       	jmp    40752e <_load_level+0x11e>
  407630:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  407637:	ff 
  407638:	eb 08                	jmp    407642 <_load_level+0x232>
  40763a:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  407641:	00 
  407642:	8b 44 24 0c          	mov    0xc(%rsp),%eax
}
  407646:	48 83 c4 38          	add    $0x38,%rsp
  40764a:	5b                   	pop    %rbx
  40764b:	41 5c                	pop    %r12
  40764d:	41 5d                	pop    %r13
  40764f:	41 5e                	pop    %r14
  407651:	41 5f                	pop    %r15
  407653:	5d                   	pop    %rbp
  407654:	c3                   	ret    
  407655:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40765c:	00 00 00 
  40765f:	90                   	nop

0000000000407660 <map2_reload>:

void	map2_reload(t_game *game, t_map2 *map)
{
  407660:	41 57                	push   %r15
  407662:	41 56                	push   %r14
  407664:	41 54                	push   %r12
  407666:	53                   	push   %rbx
  407667:	50                   	push   %rax
  407668:	49 89 f7             	mov    %rsi,%r15
  40766b:	49 89 fe             	mov    %rdi,%r14
	int	i;

	vector_free_with(game->entities, (void *) entity_free);
  40766e:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  407672:	48 c7 c6 e0 5f 40 00 	mov    $0x405fe0,%rsi
  407679:	e8 a2 2d 00 00       	call   40a420 <vector_free_with>
	game->entities = vector_new(sizeof(void *), 0);
  40767e:	bf 08 00 00 00       	mov    $0x8,%edi
  407683:	31 f6                	xor    %esi,%esi
  407685:	e8 c6 2c 00 00       	call   40a350 <vector_new>
  40768a:	49 89 46 20          	mov    %rax,0x20(%r14)
	game->player = NULL;
  40768e:	49 c7 46 40 00 00 00 	movq   $0x0,0x40(%r14)
  407695:	00 
	game->collectibles = 0;
	game->collectibles_count = 0;
  407696:	49 c7 86 00 03 00 00 	movq   $0x0,0x300(%r14)
  40769d:	00 00 00 00 
	i = -1;
	while (++i < map->level_count)
  4076a1:	41 83 7f 08 00       	cmpl   $0x0,0x8(%r15)
  4076a6:	7e 34                	jle    4076dc <map2_reload+0x7c>
  4076a8:	31 db                	xor    %ebx,%ebx
  4076aa:	45 31 e4             	xor    %r12d,%r12d
  4076ad:	0f 1f 00             	nopl   (%rax)
	{
		map->levels[i].map = map;
  4076b0:	49 8b 07             	mov    (%r15),%rax
  4076b3:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
  4076b7:	4c 89 3c 18          	mov    %r15,(%rax,%rbx,1)
		_load_level(game, map->levels + i, i, map->levels[i].filename);
  4076bb:	48 8b 4c 18 18       	mov    0x18(%rax,%rbx,1),%rcx
  4076c0:	4c 89 f7             	mov    %r14,%rdi
  4076c3:	44 89 e2             	mov    %r12d,%edx
  4076c6:	e8 45 fd ff ff       	call   407410 <_load_level>
	while (++i < map->level_count)
  4076cb:	49 83 c4 01          	add    $0x1,%r12
  4076cf:	49 63 47 08          	movslq 0x8(%r15),%rax
  4076d3:	48 83 c3 30          	add    $0x30,%rbx
  4076d7:	49 39 c4             	cmp    %rax,%r12
  4076da:	7c d4                	jl     4076b0 <map2_reload+0x50>
	}
	if (check_errors(map) && check_finish(game, map))
  4076dc:	4c 89 ff             	mov    %r15,%rdi
  4076df:	e8 4c 14 00 00       	call   408b30 <check_errors>
  4076e4:	84 c0                	test   %al,%al
  4076e6:	74 11                	je     4076f9 <map2_reload+0x99>
  4076e8:	4c 89 f7             	mov    %r14,%rdi
  4076eb:	4c 89 fe             	mov    %r15,%rsi
  4076ee:	e8 0d 15 00 00       	call   408c00 <check_finish>
  4076f3:	b1 01                	mov    $0x1,%cl
  4076f5:	84 c0                	test   %al,%al
  4076f7:	75 02                	jne    4076fb <map2_reload+0x9b>
  4076f9:	31 c9                	xor    %ecx,%ecx
  4076fb:	41 88 4e 58          	mov    %cl,0x58(%r14)
		game->map_valid = true;
	else
		game->map_valid = false;
}
  4076ff:	48 83 c4 08          	add    $0x8,%rsp
  407703:	5b                   	pop    %rbx
  407704:	41 5c                	pop    %r12
  407706:	41 5e                	pop    %r14
  407708:	41 5f                	pop    %r15
  40770a:	c3                   	ret    
  40770b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000407710 <read_to_string>:
	fd = open(filename, mode);
	return (fd);
}

char	*read_to_string(char *filename)
{
  407710:	55                   	push   %rbp
  407711:	41 57                	push   %r15
  407713:	41 56                	push   %r14
  407715:	41 55                	push   %r13
  407717:	41 54                	push   %r12
  407719:	53                   	push   %rbx
  40771a:	48 81 ec 08 10 00 00 	sub    $0x1008,%rsp
  407721:	48 89 fb             	mov    %rdi,%rbx
	fd = open(filename, mode | O_DIRECTORY);
  407724:	be 00 00 01 00       	mov    $0x10000,%esi
  407729:	31 c0                	xor    %eax,%eax
  40772b:	e8 20 ad ff ff       	call   402450 <open@plt>
	if (fd != -1)
  407730:	83 f8 ff             	cmp    $0xffffffff,%eax
  407733:	74 1f                	je     407754 <read_to_string+0x44>
		return (close(fd), -1);
  407735:	89 c7                	mov    %eax,%edi
  407737:	e8 14 a9 ff ff       	call   402050 <close@plt>
  40773c:	45 31 e4             	xor    %r12d,%r12d
		ft_memcpy(str + str_size, buffer, n);
		str[str_size + n] = '\0';
		str_size += n;
	}
	return (close(fd), str);
}
  40773f:	4c 89 e0             	mov    %r12,%rax
  407742:	48 81 c4 08 10 00 00 	add    $0x1008,%rsp
  407749:	5b                   	pop    %rbx
  40774a:	41 5c                	pop    %r12
  40774c:	41 5d                	pop    %r13
  40774e:	41 5e                	pop    %r14
  407750:	41 5f                	pop    %r15
  407752:	5d                   	pop    %rbp
  407753:	c3                   	ret    
	fd = open(filename, mode);
  407754:	48 89 df             	mov    %rbx,%rdi
  407757:	31 f6                	xor    %esi,%esi
  407759:	31 c0                	xor    %eax,%eax
  40775b:	e8 f0 ac ff ff       	call   402450 <open@plt>
	if (fd == -1)
  407760:	83 f8 ff             	cmp    $0xffffffff,%eax
  407763:	74 d7                	je     40773c <read_to_string+0x2c>
  407765:	41 89 c7             	mov    %eax,%r15d
  407768:	49 89 e6             	mov    %rsp,%r14
  40776b:	31 db                	xor    %ebx,%ebx
  40776d:	45 31 e4             	xor    %r12d,%r12d
		n = read(fd, buffer, 4096);
  407770:	ba 00 10 00 00       	mov    $0x1000,%edx
  407775:	44 89 ff             	mov    %r15d,%edi
  407778:	4c 89 f6             	mov    %r14,%rsi
  40777b:	e8 70 a9 ff ff       	call   4020f0 <read@plt>
  407780:	48 89 c5             	mov    %rax,%rbp
		if (n == -1)
  407783:	83 fd ff             	cmp    $0xffffffff,%ebp
  407786:	74 b4                	je     40773c <read_to_string+0x2c>
		str = ft_realloc(str, str_size + 1, str_size + n + 1);
  407788:	8d 43 01             	lea    0x1(%rbx),%eax
  40778b:	48 63 f0             	movslq %eax,%rsi
  40778e:	44 8d 2c 2b          	lea    (%rbx,%rbp,1),%r13d
  407792:	8d 04 2b             	lea    (%rbx,%rbp,1),%eax
  407795:	83 c0 01             	add    $0x1,%eax
  407798:	48 63 d0             	movslq %eax,%rdx
  40779b:	4c 89 e7             	mov    %r12,%rdi
  40779e:	e8 ad 5d 00 00       	call   40d550 <ft_realloc>
  4077a3:	49 89 c4             	mov    %rax,%r12
		ft_memcpy(str + str_size, buffer, n);
  4077a6:	48 63 fb             	movslq %ebx,%rdi
  4077a9:	48 01 c7             	add    %rax,%rdi
  4077ac:	48 63 d5             	movslq %ebp,%rdx
  4077af:	4c 89 f6             	mov    %r14,%rsi
  4077b2:	e8 a9 5a 00 00       	call   40d260 <ft_memcpy>
		str[str_size + n] = '\0';
  4077b7:	49 63 c5             	movslq %r13d,%rax
  4077ba:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  4077bf:	44 89 eb             	mov    %r13d,%ebx
	while (n == 4096)
  4077c2:	81 fd 00 10 00 00    	cmp    $0x1000,%ebp
  4077c8:	74 a6                	je     407770 <read_to_string+0x60>
	return (close(fd), str);
  4077ca:	44 89 ff             	mov    %r15d,%edi
  4077cd:	e8 7e a8 ff ff       	call   402050 <close@plt>
  4077d2:	e9 68 ff ff ff       	jmp    40773f <read_to_string+0x2f>
  4077d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4077de:	00 00 

00000000004077e0 <map2_draw>:
		}
	}
}

void	map2_draw(t_game *game, t_map2 *map, t_renderer *rdr)
{
  4077e0:	55                   	push   %rbp
  4077e1:	41 57                	push   %r15
  4077e3:	41 56                	push   %r14
  4077e5:	41 55                	push   %r13
  4077e7:	41 54                	push   %r12
  4077e9:	53                   	push   %rbx
  4077ea:	48 83 ec 28          	sub    $0x28,%rsp
  4077ee:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
	int	i;

	i = -1;
	while (++i < map->level_count)
  4077f3:	8b 4e 08             	mov    0x8(%rsi),%ecx
  4077f6:	85 c9                	test   %ecx,%ecx
  4077f8:	0f 8e 30 01 00 00    	jle    40792e <map2_draw+0x14e>
  4077fe:	49 89 fc             	mov    %rdi,%r12
  407801:	45 31 ed             	xor    %r13d,%r13d
  407804:	48 89 34 24          	mov    %rsi,(%rsp)
  407808:	eb 1d                	jmp    407827 <map2_draw+0x47>
  40780a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407810:	48 8b 34 24          	mov    (%rsp),%rsi
  407814:	8b 4e 08             	mov    0x8(%rsi),%ecx
  407817:	49 83 c5 01          	add    $0x1,%r13
  40781b:	48 63 c1             	movslq %ecx,%rax
  40781e:	49 39 c5             	cmp    %rax,%r13
  407821:	0f 8d 07 01 00 00    	jge    40792e <map2_draw+0x14e>
		_draw_level(game, rdr, map->levels + i, i);
  407827:	48 8b 16             	mov    (%rsi),%rdx
	while (++x < level->width)
  40782a:	4a 8d 3c 6d 00 00 00 	lea    0x0(,%r13,2),%rdi
  407831:	00 
  407832:	4c 01 ef             	add    %r13,%rdi
  407835:	48 c1 e7 04          	shl    $0x4,%rdi
  407839:	8b 44 3a 20          	mov    0x20(%rdx,%rdi,1),%eax
  40783d:	85 c0                	test   %eax,%eax
  40783f:	7e d6                	jle    407817 <map2_draw+0x37>
  407841:	4c 8d 34 3a          	lea    (%rdx,%rdi,1),%r14
  407845:	49 83 c6 20          	add    $0x20,%r14
		while (++y < level->height)
  407849:	8b 4c 3a 24          	mov    0x24(%rdx,%rdi,1),%ecx
  40784d:	31 ed                	xor    %ebp,%ebp
  40784f:	eb 16                	jmp    407867 <map2_draw+0x87>
  407851:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  407858:	00 00 00 
  40785b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	while (++x < level->width)
  407860:	83 c5 01             	add    $0x1,%ebp
  407863:	39 c5                	cmp    %eax,%ebp
  407865:	7d a9                	jge    407810 <map2_draw+0x30>
		while (++y < level->height)
  407867:	85 c9                	test   %ecx,%ecx
  407869:	7e f5                	jle    407860 <map2_draw+0x80>
  40786b:	89 e9                	mov    %ebp,%ecx
  40786d:	c1 e1 06             	shl    $0x6,%ecx
  407870:	0f 57 c0             	xorps  %xmm0,%xmm0
  407873:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  407877:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  40787c:	45 31 ff             	xor    %r15d,%r15d
  40787f:	31 db                	xor    %ebx,%ebx
  407881:	eb 52                	jmp    4078d5 <map2_draw+0xf5>
  407883:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40788a:	00 00 00 
  40788d:	0f 1f 00             	nopl   (%rax)
				rdr_add_sprite(rdr, sp(g)[SP_WATER], (t_vec2){x * 64, y * 64},
  407890:	4c 89 e7             	mov    %r12,%rdi
  407893:	e8 48 cd ff ff       	call   4045e0 <sp>
  407898:	0f 57 c0             	xorps  %xmm0,%xmm0
  40789b:	f3 41 0f 2a c7       	cvtsi2ss %r15d,%xmm0
  4078a0:	48 8b 30             	mov    (%rax),%rsi
  4078a3:	0f 28 4c 24 10       	movaps 0x10(%rsp),%xmm1
  4078a8:	0f 16 c1             	movlhps %xmm1,%xmm0
  4078ab:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  4078af:	ba fd ff ff ff       	mov    $0xfffffffd,%edx
  4078b4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4078b9:	b9 00 01 00 00       	mov    $0x100,%ecx
  4078be:	e8 5d 30 00 00       	call   40a920 <rdr_add_sprite>
		while (++y < level->height)
  4078c3:	83 c3 01             	add    $0x1,%ebx
  4078c6:	41 8b 4e 04          	mov    0x4(%r14),%ecx
  4078ca:	41 8b 06             	mov    (%r14),%eax
  4078cd:	41 83 c7 40          	add    $0x40,%r15d
  4078d1:	39 cb                	cmp    %ecx,%ebx
  4078d3:	7d 8b                	jge    407860 <map2_draw+0x80>
			tile = level->data[x + y * level->width];
  4078d5:	0f af c3             	imul   %ebx,%eax
  4078d8:	01 e8                	add    %ebp,%eax
  4078da:	49 8b 4e e8          	mov    -0x18(%r14),%rcx
  4078de:	48 98                	cltq   
  4078e0:	8b 04 81             	mov    (%rcx,%rax,4),%eax
  4078e3:	4d 85 ed             	test   %r13,%r13
			if (tile == TILE_SOLID && index == 0)
  4078e6:	75 05                	jne    4078ed <map2_draw+0x10d>
  4078e8:	83 f8 01             	cmp    $0x1,%eax
  4078eb:	74 a3                	je     407890 <map2_draw+0xb0>
			else if (tile == TILE_STAIR)
  4078ed:	85 c0                	test   %eax,%eax
  4078ef:	74 1b                	je     40790c <map2_draw+0x12c>
  4078f1:	83 f8 02             	cmp    $0x2,%eax
  4078f4:	74 27                	je     40791d <map2_draw+0x13d>
  4078f6:	83 f8 05             	cmp    $0x5,%eax
  4078f9:	75 c8                	jne    4078c3 <map2_draw+0xe3>
				draw_stair(g, index, x, y);
  4078fb:	4c 89 e7             	mov    %r12,%rdi
  4078fe:	44 89 ee             	mov    %r13d,%esi
  407901:	89 ea                	mov    %ebp,%edx
  407903:	89 d9                	mov    %ebx,%ecx
  407905:	e8 f6 1a 00 00       	call   409400 <draw_stair>
  40790a:	eb b7                	jmp    4078c3 <map2_draw+0xe3>
				draw_empty(g, index, x, y);
  40790c:	4c 89 e7             	mov    %r12,%rdi
  40790f:	44 89 ee             	mov    %r13d,%esi
  407912:	89 ea                	mov    %ebp,%edx
  407914:	89 d9                	mov    %ebx,%ecx
  407916:	e8 65 18 00 00       	call   409180 <draw_empty>
  40791b:	eb a6                	jmp    4078c3 <map2_draw+0xe3>
				draw_door(g, index, x, y);
  40791d:	4c 89 e7             	mov    %r12,%rdi
  407920:	44 89 ee             	mov    %r13d,%esi
  407923:	89 ea                	mov    %ebp,%edx
  407925:	89 d9                	mov    %ebx,%ecx
  407927:	e8 44 1a 00 00       	call   409370 <draw_door>
  40792c:	eb 95                	jmp    4078c3 <map2_draw+0xe3>
}
  40792e:	48 83 c4 28          	add    $0x28,%rsp
  407932:	5b                   	pop    %rbx
  407933:	41 5c                	pop    %r12
  407935:	41 5d                	pop    %r13
  407937:	41 5e                	pop    %r14
  407939:	41 5f                	pop    %r15
  40793b:	5d                   	pop    %rbp
  40793c:	c3                   	ret    
  40793d:	0f 1f 00             	nopl   (%rax)

0000000000407940 <get_ground_tile>:
		return (sp(game)[SP_GROUND_LR + _off(map)]);
	return (NULL);
}

t_img	*get_ground_tile(t_game *game, t_level *map, int x, int y)
{
  407940:	55                   	push   %rbp
  407941:	41 57                	push   %r15
  407943:	41 56                	push   %r14
  407945:	41 55                	push   %r13
  407947:	41 54                	push   %r12
  407949:	53                   	push   %rbx
  40794a:	50                   	push   %rax
  40794b:	41 89 cc             	mov    %ecx,%r12d
  40794e:	89 d3                	mov    %edx,%ebx
  407950:	49 89 f7             	mov    %rsi,%r15
  407953:	49 89 fe             	mov    %rdi,%r14
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
  407956:	44 8d 6b ff          	lea    -0x1(%rbx),%r13d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  40795a:	85 d2                	test   %edx,%edx
  40795c:	0f 8e dd 00 00 00    	jle    407a3f <get_ground_tile+0xff>
  407962:	45 8b 5f 20          	mov    0x20(%r15),%r11d
  407966:	45 85 e4             	test   %r12d,%r12d
  407969:	0f 88 58 01 00 00    	js     407ac7 <get_ground_tile+0x187>
  40796f:	41 39 db             	cmp    %ebx,%r11d
  407972:	0f 8c 4f 01 00 00    	jl     407ac7 <get_ground_tile+0x187>
  407978:	41 8b 7f 24          	mov    0x24(%r15),%edi
  40797c:	44 39 e7             	cmp    %r12d,%edi
  40797f:	0f 8e 42 01 00 00    	jle    407ac7 <get_ground_tile+0x187>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407985:	4d 8b 57 08          	mov    0x8(%r15),%r10
  407989:	44 89 da             	mov    %r11d,%edx
  40798c:	41 0f af d4          	imul   %r12d,%edx
  407990:	42 8d 0c 2a          	lea    (%rdx,%r13,1),%ecx
  407994:	48 63 c9             	movslq %ecx,%rcx
  407997:	41 8b 34 8a          	mov    (%r10,%rcx,4),%esi
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
  40799b:	83 fe 05             	cmp    $0x5,%esi
  40799e:	74 08                	je     4079a8 <get_ground_tile+0x68>
  4079a0:	85 f6                	test   %esi,%esi
  4079a2:	0f 85 1f 01 00 00    	jne    407ac7 <get_ground_tile+0x187>
  4079a8:	44 8d 43 01          	lea    0x1(%rbx),%r8d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  4079ac:	45 39 c3             	cmp    %r8d,%r11d
  4079af:	0f 8e ae 00 00 00    	jle    407a63 <get_ground_tile+0x123>
	return (map->data[x + y * map->width] == TILE_EMPTY
  4079b5:	42 8d 0c 02          	lea    (%rdx,%r8,1),%ecx
  4079b9:	48 63 c9             	movslq %ecx,%rcx
  4079bc:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
  4079c0:	83 f9 05             	cmp    $0x5,%ecx
  4079c3:	74 08                	je     4079cd <get_ground_tile+0x8d>
  4079c5:	85 c9                	test   %ecx,%ecx
  4079c7:	0f 85 96 00 00 00    	jne    407a63 <get_ground_tile+0x123>
  4079cd:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  4079d0:	0f 8e 8d 00 00 00    	jle    407a63 <get_ground_tile+0x123>
  4079d6:	41 39 db             	cmp    %ebx,%r11d
  4079d9:	0f 8e 84 00 00 00    	jle    407a63 <get_ground_tile+0x123>
  4079df:	44 39 e7             	cmp    %r12d,%edi
  4079e2:	7c 7f                	jl     407a63 <get_ground_tile+0x123>
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
  4079e4:	41 8d 4c 24 ff       	lea    -0x1(%r12),%ecx
	return (map->data[x + y * map->width] == TILE_EMPTY
  4079e9:	41 0f af cb          	imul   %r11d,%ecx
  4079ed:	01 d9                	add    %ebx,%ecx
  4079ef:	48 63 c9             	movslq %ecx,%rcx
  4079f2:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
		&& isg(map, x, y + 1))
  4079f6:	83 f9 05             	cmp    $0x5,%ecx
  4079f9:	74 04                	je     4079ff <get_ground_tile+0xbf>
  4079fb:	85 c9                	test   %ecx,%ecx
  4079fd:	75 64                	jne    407a63 <get_ground_tile+0x123>
  4079ff:	45 8d 4c 24 01       	lea    0x1(%r12),%r9d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407a04:	44 39 cf             	cmp    %r9d,%edi
  407a07:	7e 5a                	jle    407a63 <get_ground_tile+0x123>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407a09:	45 0f af cb          	imul   %r11d,%r9d
  407a0d:	41 01 d9             	add    %ebx,%r9d
  407a10:	49 63 c9             	movslq %r9d,%rcx
  407a13:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
  407a17:	83 f9 05             	cmp    $0x5,%ecx
  407a1a:	74 04                	je     407a20 <get_ground_tile+0xe0>
  407a1c:	85 c9                	test   %ecx,%ecx
  407a1e:	75 43                	jne    407a63 <get_ground_tile+0x123>
		return (sp(game)[SP_GROUND_M + _off(map)]);
  407a20:	4c 89 f7             	mov    %r14,%rdi
  407a23:	e8 b8 cb ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407a28:	31 c9                	xor    %ecx,%ecx
  407a2a:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407a2f:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_M + _off(map)]);
  407a32:	48 c1 e1 04          	shl    $0x4,%rcx
  407a36:	48 83 c9 02          	or     $0x2,%rcx
  407a3a:	e9 ea 06 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
  407a3f:	45 8d 54 24 ff       	lea    -0x1(%r12),%r10d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407a44:	85 db                	test   %ebx,%ebx
  407a46:	78 06                	js     407a4e <get_ground_tile+0x10e>
  407a48:	45 8b 5f 20          	mov    0x20(%r15),%r11d
  407a4c:	eb 7e                	jmp    407acc <get_ground_tile+0x18c>
  407a4e:	83 fb ff             	cmp    $0xffffffff,%ebx
  407a51:	0f 85 61 06 00 00    	jne    4080b8 <get_ground_tile+0x778>
  407a57:	45 8b 5f 20          	mov    0x20(%r15),%r11d
  407a5b:	40 b6 01             	mov    $0x1,%sil
  407a5e:	e9 54 02 00 00       	jmp    407cb7 <get_ground_tile+0x377>
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
  407a63:	83 fe 05             	cmp    $0x5,%esi
  407a66:	74 04                	je     407a6c <get_ground_tile+0x12c>
  407a68:	85 f6                	test   %esi,%esi
  407a6a:	75 5b                	jne    407ac7 <get_ground_tile+0x187>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407a6c:	41 39 db             	cmp    %ebx,%r11d
  407a6f:	7e 56                	jle    407ac7 <get_ground_tile+0x187>
  407a71:	41 8d 74 24 01       	lea    0x1(%r12),%esi
  407a76:	39 f7                	cmp    %esi,%edi
  407a78:	7e 4d                	jle    407ac7 <get_ground_tile+0x187>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407a7a:	41 0f af f3          	imul   %r11d,%esi
  407a7e:	01 de                	add    %ebx,%esi
  407a80:	48 63 ce             	movslq %esi,%rcx
  407a83:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
  407a87:	83 f9 05             	cmp    $0x5,%ecx
  407a8a:	74 04                	je     407a90 <get_ground_tile+0x150>
  407a8c:	85 c9                	test   %ecx,%ecx
  407a8e:	75 37                	jne    407ac7 <get_ground_tile+0x187>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407a90:	45 39 c3             	cmp    %r8d,%r11d
  407a93:	7e 32                	jle    407ac7 <get_ground_tile+0x187>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407a95:	44 01 c2             	add    %r8d,%edx
  407a98:	48 63 ca             	movslq %edx,%rcx
  407a9b:	41 8b 0c 8a          	mov    (%r10,%rcx,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
  407a9f:	83 f9 05             	cmp    $0x5,%ecx
  407aa2:	74 04                	je     407aa8 <get_ground_tile+0x168>
  407aa4:	85 c9                	test   %ecx,%ecx
  407aa6:	75 1f                	jne    407ac7 <get_ground_tile+0x187>
		return (sp(game)[SP_GROUND_T + _off(map)]);
  407aa8:	4c 89 f7             	mov    %r14,%rdi
  407aab:	e8 30 cb ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407ab0:	31 c9                	xor    %ecx,%ecx
  407ab2:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407ab7:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_T + _off(map)]);
  407aba:	48 c1 e1 04          	shl    $0x4,%rcx
  407abe:	48 83 c9 03          	or     $0x3,%rcx
  407ac2:	e9 62 06 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
  407ac7:	45 8d 54 24 ff       	lea    -0x1(%r12),%r10d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407acc:	41 39 db             	cmp    %ebx,%r11d
  407acf:	0f 9e c1             	setle  %cl
  407ad2:	45 85 d2             	test   %r10d,%r10d
  407ad5:	0f 98 c2             	sets   %dl
  407ad8:	08 ca                	or     %cl,%dl
  407ada:	0f 85 8f 00 00 00    	jne    407b6f <get_ground_tile+0x22f>
  407ae0:	41 8b 7f 24          	mov    0x24(%r15),%edi
  407ae4:	44 39 d7             	cmp    %r10d,%edi
  407ae7:	0f 8e 82 00 00 00    	jle    407b6f <get_ground_tile+0x22f>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407aed:	49 8b 77 08          	mov    0x8(%r15),%rsi
  407af1:	44 89 d1             	mov    %r10d,%ecx
  407af4:	41 0f af cb          	imul   %r11d,%ecx
  407af8:	01 d9                	add    %ebx,%ecx
  407afa:	48 63 c9             	movslq %ecx,%rcx
  407afd:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
  407b00:	83 f9 05             	cmp    $0x5,%ecx
  407b03:	74 04                	je     407b09 <get_ground_tile+0x1c9>
  407b05:	85 c9                	test   %ecx,%ecx
  407b07:	75 66                	jne    407b6f <get_ground_tile+0x22f>
  407b09:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407b0c:	78 61                	js     407b6f <get_ground_tile+0x22f>
  407b0e:	8d 4b 01             	lea    0x1(%rbx),%ecx
  407b11:	41 39 cb             	cmp    %ecx,%r11d
  407b14:	7e 59                	jle    407b6f <get_ground_tile+0x22f>
  407b16:	44 39 e7             	cmp    %r12d,%edi
  407b19:	7e 54                	jle    407b6f <get_ground_tile+0x22f>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407b1b:	44 89 d8             	mov    %r11d,%eax
  407b1e:	41 0f af c4          	imul   %r12d,%eax
  407b22:	01 c8                	add    %ecx,%eax
  407b24:	48 98                	cltq   
  407b26:	8b 0c 86             	mov    (%rsi,%rax,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
  407b29:	83 f9 05             	cmp    $0x5,%ecx
  407b2c:	74 04                	je     407b32 <get_ground_tile+0x1f2>
  407b2e:	85 c9                	test   %ecx,%ecx
  407b30:	75 3d                	jne    407b6f <get_ground_tile+0x22f>
  407b32:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407b37:	39 cf                	cmp    %ecx,%edi
  407b39:	7e 34                	jle    407b6f <get_ground_tile+0x22f>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407b3b:	41 0f af cb          	imul   %r11d,%ecx
  407b3f:	01 d9                	add    %ebx,%ecx
  407b41:	48 63 c1             	movslq %ecx,%rax
  407b44:	8b 0c 86             	mov    (%rsi,%rax,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
  407b47:	83 f9 05             	cmp    $0x5,%ecx
  407b4a:	74 04                	je     407b50 <get_ground_tile+0x210>
  407b4c:	85 c9                	test   %ecx,%ecx
  407b4e:	75 1f                	jne    407b6f <get_ground_tile+0x22f>
		return (sp(game)[SP_GROUND_L + _off(map)]);
  407b50:	4c 89 f7             	mov    %r14,%rdi
  407b53:	e8 88 ca ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407b58:	31 c9                	xor    %ecx,%ecx
  407b5a:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407b5f:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_L + _off(map)]);
  407b62:	48 c1 e1 04          	shl    $0x4,%rcx
  407b66:	48 83 c9 06          	or     $0x6,%rcx
  407b6a:	e9 ba 05 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407b6f:	85 db                	test   %ebx,%ebx
  407b71:	0f 8e 99 00 00 00    	jle    407c10 <get_ground_tile+0x2d0>
  407b77:	45 85 e4             	test   %r12d,%r12d
  407b7a:	0f 88 90 00 00 00    	js     407c10 <get_ground_tile+0x2d0>
  407b80:	41 39 db             	cmp    %ebx,%r11d
  407b83:	0f 8c 87 00 00 00    	jl     407c10 <get_ground_tile+0x2d0>
  407b89:	41 8b 4f 24          	mov    0x24(%r15),%ecx
  407b8d:	44 39 e1             	cmp    %r12d,%ecx
  407b90:	7e 7e                	jle    407c10 <get_ground_tile+0x2d0>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407b92:	4d 8b 47 08          	mov    0x8(%r15),%r8
  407b96:	44 89 df             	mov    %r11d,%edi
  407b99:	41 0f af fc          	imul   %r12d,%edi
  407b9d:	42 8d 04 2f          	lea    (%rdi,%r13,1),%eax
  407ba1:	48 98                	cltq   
  407ba3:	41 8b 34 80          	mov    (%r8,%rax,4),%esi
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
  407ba7:	83 fe 05             	cmp    $0x5,%esi
  407baa:	74 04                	je     407bb0 <get_ground_tile+0x270>
  407bac:	85 f6                	test   %esi,%esi
  407bae:	75 60                	jne    407c10 <get_ground_tile+0x2d0>
  407bb0:	45 85 d2             	test   %r10d,%r10d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407bb3:	78 5b                	js     407c10 <get_ground_tile+0x2d0>
  407bb5:	41 39 db             	cmp    %ebx,%r11d
  407bb8:	7e 56                	jle    407c10 <get_ground_tile+0x2d0>
  407bba:	44 39 d1             	cmp    %r10d,%ecx
  407bbd:	7e 51                	jle    407c10 <get_ground_tile+0x2d0>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407bbf:	44 89 d8             	mov    %r11d,%eax
  407bc2:	41 0f af c2          	imul   %r10d,%eax
  407bc6:	01 d8                	add    %ebx,%eax
  407bc8:	48 98                	cltq   
  407bca:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
  407bce:	83 f9 05             	cmp    $0x5,%ecx
  407bd1:	74 04                	je     407bd7 <get_ground_tile+0x297>
  407bd3:	85 c9                	test   %ecx,%ecx
  407bd5:	75 39                	jne    407c10 <get_ground_tile+0x2d0>
  407bd7:	8d 4b 01             	lea    0x1(%rbx),%ecx
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407bda:	41 39 cb             	cmp    %ecx,%r11d
  407bdd:	7e 31                	jle    407c10 <get_ground_tile+0x2d0>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407bdf:	01 cf                	add    %ecx,%edi
  407be1:	48 63 c7             	movslq %edi,%rax
  407be4:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
  407be8:	83 f9 05             	cmp    $0x5,%ecx
  407beb:	74 04                	je     407bf1 <get_ground_tile+0x2b1>
  407bed:	85 c9                	test   %ecx,%ecx
  407bef:	75 1f                	jne    407c10 <get_ground_tile+0x2d0>
		return (sp(game)[SP_GROUND_B + _off(map)]);
  407bf1:	4c 89 f7             	mov    %r14,%rdi
  407bf4:	e8 e7 c9 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407bf9:	31 c9                	xor    %ecx,%ecx
  407bfb:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407c00:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_B + _off(map)]);
  407c03:	48 c1 e1 04          	shl    $0x4,%rcx
  407c07:	48 83 c9 08          	or     $0x8,%rcx
  407c0b:	e9 19 05 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407c10:	84 d2                	test   %dl,%dl
  407c12:	0f 85 9d 00 00 00    	jne    407cb5 <get_ground_tile+0x375>
  407c18:	41 8b 7f 24          	mov    0x24(%r15),%edi
  407c1c:	44 39 d7             	cmp    %r10d,%edi
  407c1f:	0f 8e 90 00 00 00    	jle    407cb5 <get_ground_tile+0x375>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407c25:	4d 8b 47 08          	mov    0x8(%r15),%r8
  407c29:	44 89 d8             	mov    %r11d,%eax
  407c2c:	41 0f af c2          	imul   %r10d,%eax
  407c30:	01 d8                	add    %ebx,%eax
  407c32:	48 98                	cltq   
  407c34:	41 8b 04 80          	mov    (%r8,%rax,4),%eax
  407c38:	85 c0                	test   %eax,%eax
  407c3a:	0f 95 c1             	setne  %cl
		|| map->data[x + y * map->width] == TILE_STAIR);
  407c3d:	83 f8 05             	cmp    $0x5,%eax
  407c40:	0f 95 c2             	setne  %dl
  407c43:	31 f6                	xor    %esi,%esi
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407c45:	85 db                	test   %ebx,%ebx
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
  407c47:	7e 6e                	jle    407cb7 <get_ground_tile+0x377>
  407c49:	20 d1                	and    %dl,%cl
  407c4b:	75 6a                	jne    407cb7 <get_ground_tile+0x377>
  407c4d:	31 f6                	xor    %esi,%esi
  407c4f:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407c52:	78 63                	js     407cb7 <get_ground_tile+0x377>
  407c54:	41 39 db             	cmp    %ebx,%r11d
  407c57:	7c 5e                	jl     407cb7 <get_ground_tile+0x377>
  407c59:	44 39 e7             	cmp    %r12d,%edi
  407c5c:	7e 59                	jle    407cb7 <get_ground_tile+0x377>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407c5e:	44 89 d8             	mov    %r11d,%eax
  407c61:	41 0f af c4          	imul   %r12d,%eax
  407c65:	44 01 e8             	add    %r13d,%eax
  407c68:	48 98                	cltq   
  407c6a:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
  407c6e:	83 f9 05             	cmp    $0x5,%ecx
  407c71:	74 04                	je     407c77 <get_ground_tile+0x337>
  407c73:	85 c9                	test   %ecx,%ecx
  407c75:	75 3e                	jne    407cb5 <get_ground_tile+0x375>
  407c77:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407c7c:	39 cf                	cmp    %ecx,%edi
  407c7e:	7e 35                	jle    407cb5 <get_ground_tile+0x375>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407c80:	41 0f af cb          	imul   %r11d,%ecx
  407c84:	01 d9                	add    %ebx,%ecx
  407c86:	48 63 c1             	movslq %ecx,%rax
  407c89:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
  407c8d:	83 f9 05             	cmp    $0x5,%ecx
  407c90:	74 04                	je     407c96 <get_ground_tile+0x356>
  407c92:	85 c9                	test   %ecx,%ecx
  407c94:	75 1f                	jne    407cb5 <get_ground_tile+0x375>
		return (sp(game)[SP_GROUND_R + _off(map)]);
  407c96:	4c 89 f7             	mov    %r14,%rdi
  407c99:	e8 42 c9 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407c9e:	31 c9                	xor    %ecx,%ecx
  407ca0:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407ca5:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_R + _off(map)]);
  407ca8:	48 c1 e1 04          	shl    $0x4,%rcx
  407cac:	48 83 c9 07          	or     $0x7,%rcx
  407cb0:	e9 74 04 00 00       	jmp    408129 <get_ground_tile+0x7e9>
  407cb5:	31 f6                	xor    %esi,%esi
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
  407cb7:	44 8d 4b 01          	lea    0x1(%rbx),%r9d
  407cbb:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407cbe:	78 71                	js     407d31 <get_ground_tile+0x3f1>
  407cc0:	45 39 cb             	cmp    %r9d,%r11d
  407cc3:	7e 6c                	jle    407d31 <get_ground_tile+0x3f1>
  407cc5:	41 8b 4f 24          	mov    0x24(%r15),%ecx
  407cc9:	44 39 e1             	cmp    %r12d,%ecx
  407ccc:	7e 63                	jle    407d31 <get_ground_tile+0x3f1>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407cce:	49 8b 57 08          	mov    0x8(%r15),%rdx
  407cd2:	44 89 d8             	mov    %r11d,%eax
  407cd5:	41 0f af c4          	imul   %r12d,%eax
  407cd9:	44 01 c8             	add    %r9d,%eax
  407cdc:	48 98                	cltq   
  407cde:	8b 3c 82             	mov    (%rdx,%rax,4),%edi
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
  407ce1:	83 ff 05             	cmp    $0x5,%edi
  407ce4:	74 04                	je     407cea <get_ground_tile+0x3aa>
  407ce6:	85 ff                	test   %edi,%edi
  407ce8:	75 47                	jne    407d31 <get_ground_tile+0x3f1>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407cea:	40 84 f6             	test   %sil,%sil
  407ced:	75 42                	jne    407d31 <get_ground_tile+0x3f1>
  407cef:	41 39 db             	cmp    %ebx,%r11d
  407cf2:	7e 3d                	jle    407d31 <get_ground_tile+0x3f1>
  407cf4:	41 8d 7c 24 01       	lea    0x1(%r12),%edi
  407cf9:	39 f9                	cmp    %edi,%ecx
  407cfb:	7e 34                	jle    407d31 <get_ground_tile+0x3f1>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407cfd:	41 0f af fb          	imul   %r11d,%edi
  407d01:	01 df                	add    %ebx,%edi
  407d03:	48 63 c7             	movslq %edi,%rax
  407d06:	8b 0c 82             	mov    (%rdx,%rax,4),%ecx
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
  407d09:	83 f9 05             	cmp    $0x5,%ecx
  407d0c:	74 04                	je     407d12 <get_ground_tile+0x3d2>
  407d0e:	85 c9                	test   %ecx,%ecx
  407d10:	75 1f                	jne    407d31 <get_ground_tile+0x3f1>
		return (sp(game)[SP_GROUND_TL + _off(map)]);
  407d12:	4c 89 f7             	mov    %r14,%rdi
  407d15:	e8 c6 c8 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407d1a:	31 c9                	xor    %ecx,%ecx
  407d1c:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407d21:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_TL + _off(map)]);
  407d24:	48 c1 e1 04          	shl    $0x4,%rcx
  407d28:	48 83 c9 04          	or     $0x4,%rcx
  407d2c:	e9 f8 03 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407d31:	85 db                	test   %ebx,%ebx
  407d33:	7e 7f                	jle    407db4 <get_ground_tile+0x474>
  407d35:	45 85 e4             	test   %r12d,%r12d
  407d38:	78 7a                	js     407db4 <get_ground_tile+0x474>
  407d3a:	41 39 db             	cmp    %ebx,%r11d
  407d3d:	7c 75                	jl     407db4 <get_ground_tile+0x474>
  407d3f:	41 8b 57 24          	mov    0x24(%r15),%edx
  407d43:	44 39 e2             	cmp    %r12d,%edx
  407d46:	7e 6c                	jle    407db4 <get_ground_tile+0x474>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407d48:	4d 8b 47 08          	mov    0x8(%r15),%r8
  407d4c:	44 89 d8             	mov    %r11d,%eax
  407d4f:	41 0f af c4          	imul   %r12d,%eax
  407d53:	44 01 e8             	add    %r13d,%eax
  407d56:	48 98                	cltq   
  407d58:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y + 1))
  407d5c:	83 f9 05             	cmp    $0x5,%ecx
  407d5f:	74 04                	je     407d65 <get_ground_tile+0x425>
  407d61:	85 c9                	test   %ecx,%ecx
  407d63:	75 4f                	jne    407db4 <get_ground_tile+0x474>
  407d65:	40 b7 01             	mov    $0x1,%dil
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407d68:	40 84 f6             	test   %sil,%sil
  407d6b:	0f 85 cd 00 00 00    	jne    407e3e <get_ground_tile+0x4fe>
  407d71:	41 39 db             	cmp    %ebx,%r11d
  407d74:	7e 46                	jle    407dbc <get_ground_tile+0x47c>
  407d76:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
  407d7b:	39 ca                	cmp    %ecx,%edx
  407d7d:	7e 3d                	jle    407dbc <get_ground_tile+0x47c>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407d7f:	41 0f af cb          	imul   %r11d,%ecx
  407d83:	01 d9                	add    %ebx,%ecx
  407d85:	48 63 c1             	movslq %ecx,%rax
  407d88:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y + 1))
  407d8c:	83 f9 05             	cmp    $0x5,%ecx
  407d8f:	74 04                	je     407d95 <get_ground_tile+0x455>
  407d91:	85 c9                	test   %ecx,%ecx
  407d93:	75 27                	jne    407dbc <get_ground_tile+0x47c>
		return (sp(game)[SP_GROUND_TR + _off(map)]);
  407d95:	4c 89 f7             	mov    %r14,%rdi
  407d98:	e8 43 c8 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407d9d:	31 c9                	xor    %ecx,%ecx
  407d9f:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407da4:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_TR + _off(map)]);
  407da7:	48 c1 e1 04          	shl    $0x4,%rcx
  407dab:	48 83 c9 05          	or     $0x5,%rcx
  407daf:	e9 75 03 00 00       	jmp    408129 <get_ground_tile+0x7e9>
  407db4:	40 b7 01             	mov    $0x1,%dil
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407db7:	40 84 f6             	test   %sil,%sil
  407dba:	75 7a                	jne    407e36 <get_ground_tile+0x4f6>
  407dbc:	31 ff                	xor    %edi,%edi
  407dbe:	45 85 d2             	test   %r10d,%r10d
  407dc1:	78 73                	js     407e36 <get_ground_tile+0x4f6>
  407dc3:	41 39 db             	cmp    %ebx,%r11d
  407dc6:	7e 6e                	jle    407e36 <get_ground_tile+0x4f6>
  407dc8:	41 8b 4f 24          	mov    0x24(%r15),%ecx
  407dcc:	44 39 d1             	cmp    %r10d,%ecx
  407dcf:	7e 63                	jle    407e34 <get_ground_tile+0x4f4>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407dd1:	49 8b 57 08          	mov    0x8(%r15),%rdx
  407dd5:	44 89 d8             	mov    %r11d,%eax
  407dd8:	41 0f af c2          	imul   %r10d,%eax
  407ddc:	01 d8                	add    %ebx,%eax
  407dde:	48 98                	cltq   
  407de0:	8b 34 82             	mov    (%rdx,%rax,4),%esi
	if (isg(map, x, y - 1) && isg(map, x + 1, y))
  407de3:	83 fe 05             	cmp    $0x5,%esi
  407de6:	74 04                	je     407dec <get_ground_tile+0x4ac>
  407de8:	85 f6                	test   %esi,%esi
  407dea:	75 48                	jne    407e34 <get_ground_tile+0x4f4>
  407dec:	31 ff                	xor    %edi,%edi
  407dee:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407df1:	78 43                	js     407e36 <get_ground_tile+0x4f6>
  407df3:	45 39 cb             	cmp    %r9d,%r11d
  407df6:	7e 3e                	jle    407e36 <get_ground_tile+0x4f6>
  407df8:	44 39 e1             	cmp    %r12d,%ecx
  407dfb:	7e 39                	jle    407e36 <get_ground_tile+0x4f6>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407dfd:	44 89 d8             	mov    %r11d,%eax
  407e00:	41 0f af c4          	imul   %r12d,%eax
  407e04:	44 01 c8             	add    %r9d,%eax
  407e07:	48 98                	cltq   
  407e09:	8b 0c 82             	mov    (%rdx,%rax,4),%ecx
	if (isg(map, x, y - 1) && isg(map, x + 1, y))
  407e0c:	83 f9 05             	cmp    $0x5,%ecx
  407e0f:	74 04                	je     407e15 <get_ground_tile+0x4d5>
  407e11:	85 c9                	test   %ecx,%ecx
  407e13:	75 1f                	jne    407e34 <get_ground_tile+0x4f4>
		return (sp(game)[SP_GROUND_BL + _off(map)]);
  407e15:	4c 89 f7             	mov    %r14,%rdi
  407e18:	e8 c3 c7 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407e1d:	31 c9                	xor    %ecx,%ecx
  407e1f:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407e24:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_BL + _off(map)]);
  407e27:	48 c1 e1 04          	shl    $0x4,%rcx
  407e2b:	48 83 c9 09          	or     $0x9,%rcx
  407e2f:	e9 f5 02 00 00       	jmp    408129 <get_ground_tile+0x7e9>
  407e34:	31 ff                	xor    %edi,%edi
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407e36:	85 db                	test   %ebx,%ebx
  407e38:	0f 8e 8a 00 00 00    	jle    407ec8 <get_ground_tile+0x588>
  407e3e:	45 85 e4             	test   %r12d,%r12d
  407e41:	0f 88 81 00 00 00    	js     407ec8 <get_ground_tile+0x588>
  407e47:	41 39 db             	cmp    %ebx,%r11d
  407e4a:	7c 7c                	jl     407ec8 <get_ground_tile+0x588>
  407e4c:	41 8b 4f 24          	mov    0x24(%r15),%ecx
  407e50:	44 39 e1             	cmp    %r12d,%ecx
  407e53:	7e 73                	jle    407ec8 <get_ground_tile+0x588>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407e55:	4d 8b 47 08          	mov    0x8(%r15),%r8
  407e59:	44 89 de             	mov    %r11d,%esi
  407e5c:	41 0f af f4          	imul   %r12d,%esi
  407e60:	42 8d 04 2e          	lea    (%rsi,%r13,1),%eax
  407e64:	48 98                	cltq   
  407e66:	41 8b 14 80          	mov    (%r8,%rax,4),%edx
  407e6a:	85 d2                	test   %edx,%edx
  407e6c:	40 0f 95 c5          	setne  %bpl
		|| map->data[x + y * map->width] == TILE_STAIR);
  407e70:	83 fa 05             	cmp    $0x5,%edx
  407e73:	0f 95 c0             	setne  %al
	if (isg(map, x - 1, y) && isg(map, x, y - 1))
  407e76:	40 20 e8             	and    %bpl,%al
  407e79:	40 08 f8             	or     %dil,%al
  407e7c:	0f 84 56 02 00 00    	je     4080d8 <get_ground_tile+0x798>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407e82:	85 d2                	test   %edx,%edx
  407e84:	0f 94 c1             	sete   %cl
		|| map->data[x + y * map->width] == TILE_STAIR);
  407e87:	83 fa 05             	cmp    $0x5,%edx
  407e8a:	0f 94 c2             	sete   %dl
  407e8d:	45 39 cb             	cmp    %r9d,%r11d
	if (isg(map, x - 1, y) && isg(map, x + 1, y))
  407e90:	7e 36                	jle    407ec8 <get_ground_tile+0x588>
  407e92:	08 d1                	or     %dl,%cl
  407e94:	74 32                	je     407ec8 <get_ground_tile+0x588>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407e96:	44 01 ce             	add    %r9d,%esi
  407e99:	48 63 c6             	movslq %esi,%rax
  407e9c:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x + 1, y))
  407ea0:	83 f9 05             	cmp    $0x5,%ecx
  407ea3:	74 04                	je     407ea9 <get_ground_tile+0x569>
  407ea5:	85 c9                	test   %ecx,%ecx
  407ea7:	75 1f                	jne    407ec8 <get_ground_tile+0x588>
		return (sp(game)[SP_GROUND_BT + _off(map)]);
  407ea9:	4c 89 f7             	mov    %r14,%rdi
  407eac:	e8 2f c7 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407eb1:	31 c9                	xor    %ecx,%ecx
  407eb3:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407eb8:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_BT + _off(map)]);
  407ebb:	48 c1 e1 04          	shl    $0x4,%rcx
  407ebf:	48 83 c9 0f          	or     $0xf,%rcx
  407ec3:	e9 61 02 00 00       	jmp    408129 <get_ground_tile+0x7e9>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407ec8:	40 84 ff             	test   %dil,%dil
  407ecb:	0f 84 10 01 00 00    	je     407fe1 <get_ground_tile+0x6a1>
  407ed1:	85 db                	test   %ebx,%ebx
  407ed3:	7e 50                	jle    407f25 <get_ground_tile+0x5e5>
  407ed5:	45 85 e4             	test   %r12d,%r12d
  407ed8:	78 4b                	js     407f25 <get_ground_tile+0x5e5>
  407eda:	41 8b 47 20          	mov    0x20(%r15),%eax
  407ede:	39 d8                	cmp    %ebx,%eax
  407ee0:	7c 43                	jl     407f25 <get_ground_tile+0x5e5>
  407ee2:	45 39 67 24          	cmp    %r12d,0x24(%r15)
  407ee6:	7e 3d                	jle    407f25 <get_ground_tile+0x5e5>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407ee8:	49 8b 4f 08          	mov    0x8(%r15),%rcx
  407eec:	41 0f af c4          	imul   %r12d,%eax
  407ef0:	44 01 e8             	add    %r13d,%eax
  407ef3:	48 98                	cltq   
  407ef5:	8b 04 81             	mov    (%rcx,%rax,4),%eax
	t_img	*img;

	img = _get_ground_tile1(game, map, x, y);
	if (img)
		return (img);
	if (isg(map, x - 1, y))
  407ef8:	83 f8 05             	cmp    $0x5,%eax
  407efb:	74 04                	je     407f01 <get_ground_tile+0x5c1>
  407efd:	85 c0                	test   %eax,%eax
  407eff:	75 24                	jne    407f25 <get_ground_tile+0x5e5>
		img = sp(game)[SP_GROUND_RBT + _off(map)];
  407f01:	4c 89 f7             	mov    %r14,%rdi
  407f04:	e8 d7 c6 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407f09:	31 c9                	xor    %ecx,%ecx
  407f0b:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407f10:	0f 94 c1             	sete   %cl
		img = sp(game)[SP_GROUND_RBT + _off(map)];
  407f13:	48 c1 e1 07          	shl    $0x7,%rcx
  407f17:	48 01 c8             	add    %rcx,%rax
  407f1a:	48 05 80 00 00 00    	add    $0x80,%rax
  407f20:	e9 a1 01 00 00       	jmp    4080c6 <get_ground_tile+0x786>
  407f25:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407f28:	78 4c                	js     407f76 <get_ground_tile+0x636>
  407f2a:	8d 43 01             	lea    0x1(%rbx),%eax
  407f2d:	41 8b 4f 20          	mov    0x20(%r15),%ecx
  407f31:	39 c1                	cmp    %eax,%ecx
  407f33:	7e 41                	jle    407f76 <get_ground_tile+0x636>
  407f35:	45 39 67 24          	cmp    %r12d,0x24(%r15)
  407f39:	7e 3b                	jle    407f76 <get_ground_tile+0x636>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407f3b:	49 8b 57 08          	mov    0x8(%r15),%rdx
  407f3f:	41 0f af cc          	imul   %r12d,%ecx
  407f43:	01 c1                	add    %eax,%ecx
  407f45:	48 63 c1             	movslq %ecx,%rax
  407f48:	8b 04 82             	mov    (%rdx,%rax,4),%eax
	else if (isg(map, x + 1, y))
  407f4b:	83 f8 05             	cmp    $0x5,%eax
  407f4e:	74 04                	je     407f54 <get_ground_tile+0x614>
  407f50:	85 c0                	test   %eax,%eax
  407f52:	75 22                	jne    407f76 <get_ground_tile+0x636>
		img = sp(game)[SP_GROUND_LBT + _off(map)];
  407f54:	4c 89 f7             	mov    %r14,%rdi
  407f57:	e8 84 c6 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407f5c:	31 c9                	xor    %ecx,%ecx
  407f5e:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407f63:	0f 94 c1             	sete   %cl
		img = sp(game)[SP_GROUND_LBT + _off(map)];
  407f66:	48 c1 e1 07          	shl    $0x7,%rcx
  407f6a:	48 01 c8             	add    %rcx,%rax
  407f6d:	48 83 c0 70          	add    $0x70,%rax
  407f71:	e9 50 01 00 00       	jmp    4080c6 <get_ground_tile+0x786>
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407f76:	85 db                	test   %ebx,%ebx
  407f78:	0f 88 3a 01 00 00    	js     4080b8 <get_ground_tile+0x778>
  407f7e:	41 8b 47 20          	mov    0x20(%r15),%eax
  407f82:	41 83 fc ff          	cmp    $0xffffffff,%r12d
  407f86:	0f 8c e2 00 00 00    	jl     40806e <get_ground_tile+0x72e>
  407f8c:	39 d8                	cmp    %ebx,%eax
  407f8e:	0f 8e da 00 00 00    	jle    40806e <get_ground_tile+0x72e>
  407f94:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
  407f99:	41 39 4f 24          	cmp    %ecx,0x24(%r15)
  407f9d:	0f 8e cb 00 00 00    	jle    40806e <get_ground_tile+0x72e>
	return (map->data[x + y * map->width] == TILE_EMPTY
  407fa3:	49 8b 57 08          	mov    0x8(%r15),%rdx
  407fa7:	0f af c8             	imul   %eax,%ecx
  407faa:	01 d9                	add    %ebx,%ecx
  407fac:	48 63 c9             	movslq %ecx,%rcx
  407faf:	8b 0c 8a             	mov    (%rdx,%rcx,4),%ecx
	else if (isg(map, x, y + 1))
  407fb2:	83 f9 05             	cmp    $0x5,%ecx
  407fb5:	74 08                	je     407fbf <get_ground_tile+0x67f>
  407fb7:	85 c9                	test   %ecx,%ecx
  407fb9:	0f 85 af 00 00 00    	jne    40806e <get_ground_tile+0x72e>
		img = sp(game)[SP_GROUND_TLR + _off(map)];
  407fbf:	4c 89 f7             	mov    %r14,%rdi
  407fc2:	e8 19 c6 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  407fc7:	31 c9                	xor    %ecx,%ecx
  407fc9:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  407fce:	0f 94 c1             	sete   %cl
		img = sp(game)[SP_GROUND_TLR + _off(map)];
  407fd1:	48 c1 e1 07          	shl    $0x7,%rcx
  407fd5:	48 01 c8             	add    %rcx,%rax
  407fd8:	48 83 c0 58          	add    $0x58,%rax
  407fdc:	e9 e5 00 00 00       	jmp    4080c6 <get_ground_tile+0x786>
  407fe1:	45 85 d2             	test   %r10d,%r10d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  407fe4:	0f 88 e7 fe ff ff    	js     407ed1 <get_ground_tile+0x591>
  407fea:	41 39 db             	cmp    %ebx,%r11d
  407fed:	0f 8e de fe ff ff    	jle    407ed1 <get_ground_tile+0x591>
  407ff3:	41 8b 57 24          	mov    0x24(%r15),%edx
  407ff7:	44 39 d2             	cmp    %r10d,%edx
  407ffa:	0f 8e d1 fe ff ff    	jle    407ed1 <get_ground_tile+0x591>
	return (map->data[x + y * map->width] == TILE_EMPTY
  408000:	49 8b 4f 08          	mov    0x8(%r15),%rcx
  408004:	45 0f af d3          	imul   %r11d,%r10d
  408008:	41 01 da             	add    %ebx,%r10d
  40800b:	49 63 c2             	movslq %r10d,%rax
  40800e:	8b 34 81             	mov    (%rcx,%rax,4),%esi
	if (isg(map, x, y - 1) && isg(map, x, y + 1))
  408011:	83 fe 05             	cmp    $0x5,%esi
  408014:	74 08                	je     40801e <get_ground_tile+0x6de>
  408016:	85 f6                	test   %esi,%esi
  408018:	0f 85 b3 fe ff ff    	jne    407ed1 <get_ground_tile+0x591>
  40801e:	41 83 fc ff          	cmp    $0xffffffff,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  408022:	0f 8c a9 fe ff ff    	jl     407ed1 <get_ground_tile+0x591>
  408028:	41 8d 74 24 01       	lea    0x1(%r12),%esi
  40802d:	39 f2                	cmp    %esi,%edx
  40802f:	0f 8e 9c fe ff ff    	jle    407ed1 <get_ground_tile+0x591>
	return (map->data[x + y * map->width] == TILE_EMPTY
  408035:	44 0f af de          	imul   %esi,%r11d
  408039:	41 01 db             	add    %ebx,%r11d
  40803c:	49 63 c3             	movslq %r11d,%rax
  40803f:	8b 04 81             	mov    (%rcx,%rax,4),%eax
	if (isg(map, x, y - 1) && isg(map, x, y + 1))
  408042:	83 f8 05             	cmp    $0x5,%eax
  408045:	74 08                	je     40804f <get_ground_tile+0x70f>
  408047:	85 c0                	test   %eax,%eax
  408049:	0f 85 82 fe ff ff    	jne    407ed1 <get_ground_tile+0x591>
		return (sp(game)[SP_GROUND_LR + _off(map)]);
  40804f:	4c 89 f7             	mov    %r14,%rdi
  408052:	e8 89 c5 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  408057:	31 c9                	xor    %ecx,%ecx
  408059:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  40805e:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_LR + _off(map)]);
  408061:	48 c1 e1 04          	shl    $0x4,%rcx
  408065:	48 83 c9 0c          	or     $0xc,%rcx
  408069:	e9 bb 00 00 00       	jmp    408129 <get_ground_tile+0x7e9>
  40806e:	45 85 e4             	test   %r12d,%r12d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  408071:	7e 45                	jle    4080b8 <get_ground_tile+0x778>
  408073:	39 d8                	cmp    %ebx,%eax
  408075:	7e 41                	jle    4080b8 <get_ground_tile+0x778>
  408077:	45 39 67 24          	cmp    %r12d,0x24(%r15)
  40807b:	7c 3b                	jl     4080b8 <get_ground_tile+0x778>
  40807d:	41 83 c4 ff          	add    $0xffffffff,%r12d
	return (map->data[x + y * map->width] == TILE_EMPTY
  408081:	49 8b 4f 08          	mov    0x8(%r15),%rcx
  408085:	41 0f af c4          	imul   %r12d,%eax
  408089:	01 d8                	add    %ebx,%eax
  40808b:	48 98                	cltq   
  40808d:	8b 04 81             	mov    (%rcx,%rax,4),%eax
	else if (isg(map, x, y - 1))
  408090:	83 f8 05             	cmp    $0x5,%eax
  408093:	74 04                	je     408099 <get_ground_tile+0x759>
  408095:	85 c0                	test   %eax,%eax
  408097:	75 1f                	jne    4080b8 <get_ground_tile+0x778>
		img = sp(game)[SP_GROUND_BLR + _off(map)];
  408099:	4c 89 f7             	mov    %r14,%rdi
  40809c:	e8 3f c5 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  4080a1:	31 c9                	xor    %ecx,%ecx
  4080a3:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  4080a8:	0f 94 c1             	sete   %cl
		img = sp(game)[SP_GROUND_BLR + _off(map)];
  4080ab:	48 c1 e1 07          	shl    $0x7,%rcx
  4080af:	48 01 c8             	add    %rcx,%rax
  4080b2:	48 83 c0 68          	add    $0x68,%rax
  4080b6:	eb 0e                	jmp    4080c6 <get_ground_tile+0x786>
	else
		img = sp(game)[SP_GROUND_ALL];
  4080b8:	4c 89 f7             	mov    %r14,%rdi
  4080bb:	e8 20 c5 ff ff       	call   4045e0 <sp>
  4080c0:	48 05 88 00 00 00    	add    $0x88,%rax
  4080c6:	48 8b 00             	mov    (%rax),%rax
	return (img);
}
  4080c9:	48 83 c4 08          	add    $0x8,%rsp
  4080cd:	5b                   	pop    %rbx
  4080ce:	41 5c                	pop    %r12
  4080d0:	41 5d                	pop    %r13
  4080d2:	41 5e                	pop    %r14
  4080d4:	41 5f                	pop    %r15
  4080d6:	5d                   	pop    %rbp
  4080d7:	c3                   	ret    
  4080d8:	45 85 d2             	test   %r10d,%r10d
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
  4080db:	0f 88 a1 fd ff ff    	js     407e82 <get_ground_tile+0x542>
  4080e1:	41 39 db             	cmp    %ebx,%r11d
  4080e4:	0f 8e 98 fd ff ff    	jle    407e82 <get_ground_tile+0x542>
  4080ea:	44 39 d1             	cmp    %r10d,%ecx
  4080ed:	0f 8e 8f fd ff ff    	jle    407e82 <get_ground_tile+0x542>
	return (map->data[x + y * map->width] == TILE_EMPTY
  4080f3:	44 89 d8             	mov    %r11d,%eax
  4080f6:	41 0f af c2          	imul   %r10d,%eax
  4080fa:	01 d8                	add    %ebx,%eax
  4080fc:	48 98                	cltq   
  4080fe:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
	if (isg(map, x - 1, y) && isg(map, x, y - 1))
  408102:	83 f9 05             	cmp    $0x5,%ecx
  408105:	74 08                	je     40810f <get_ground_tile+0x7cf>
  408107:	85 c9                	test   %ecx,%ecx
  408109:	0f 85 73 fd ff ff    	jne    407e82 <get_ground_tile+0x542>
		return (sp(game)[SP_GROUND_BR + _off(map)]);
  40810f:	4c 89 f7             	mov    %r14,%rdi
  408112:	e8 c9 c4 ff ff       	call   4045e0 <sp>
	if (level->index == 0)
  408117:	31 c9                	xor    %ecx,%ecx
  408119:	41 83 7f 28 00       	cmpl   $0x0,0x28(%r15)
  40811e:	0f 94 c1             	sete   %cl
		return (sp(game)[SP_GROUND_BR + _off(map)]);
  408121:	48 c1 e1 04          	shl    $0x4,%rcx
  408125:	48 83 c9 0a          	or     $0xa,%rcx
  408129:	48 8b 04 c8          	mov    (%rax,%rcx,8),%rax
	if (img)
  40812d:	48 85 c0             	test   %rax,%rax
  408130:	75 97                	jne    4080c9 <get_ground_tile+0x789>
  408132:	e9 9a fd ff ff       	jmp    407ed1 <get_ground_tile+0x591>
  408137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40813e:	00 00 

0000000000408140 <box_collide_with_map2>:
					|| map->levels[index
						- 1].data[pos.x + pos.y * level->width] != TILE_STAIR));
}

bool	box_collide_with_map2(t_game *game, t_box box, int index, t_map2 *map)
{
  408140:	55                   	push   %rbp
  408141:	41 57                	push   %r15
  408143:	41 56                	push   %r14
  408145:	41 55                	push   %r13
  408147:	41 54                	push   %r12
  408149:	53                   	push   %rbx
  40814a:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
  408151:	49 89 d4             	mov    %rdx,%r12
  408154:	0f 29 4c 24 20       	movaps %xmm1,0x20(%rsp)
  408159:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  40815e:	48 89 7c 24 78       	mov    %rdi,0x78(%rsp)
  408163:	89 74 24 0c          	mov    %esi,0xc(%rsp)
	const t_level	*level = &map->levels[index];
  408167:	48 63 d6             	movslq %esi,%rdx
	int				x;
	int				y;

	x = -1;
	while (++x < map->width)
  40816a:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
  40816f:	85 c0                	test   %eax,%eax
  408171:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
  408178:	00 
  408179:	0f 8e c8 04 00 00    	jle    408647 <box_collide_with_map2+0x507>
  40817f:	49 8b 0c 24          	mov    (%r12),%rcx
  408183:	8d 7a ff             	lea    -0x1(%rdx),%edi
  408186:	48 89 fe             	mov    %rdi,%rsi
  408189:	48 89 bc 24 b8 00 00 	mov    %rdi,0xb8(%rsp)
  408190:	00 
  408191:	48 63 f7             	movslq %edi,%rsi
  408194:	48 89 b4 24 b0 00 00 	mov    %rsi,0xb0(%rsp)
  40819b:	00 
  40819c:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  4081a0:	48 c1 e2 04          	shl    $0x4,%rdx
  4081a4:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
  4081ab:	00 
  4081ac:	48 01 d1             	add    %rdx,%rcx
  4081af:	48 83 c1 08          	add    $0x8,%rcx
  4081b3:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
  4081ba:	00 
	{
		y = -1;
		while (++y < map->height)
  4081bb:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
  4081c0:	31 ed                	xor    %ebp,%ebp
  4081c2:	85 c9                	test   %ecx,%ecx
  4081c4:	0f 8e 72 04 00 00    	jle    40863c <box_collide_with_map2+0x4fc>
  4081ca:	89 e8                	mov    %ebp,%eax
  4081cc:	c1 e0 06             	shl    $0x6,%eax
  4081cf:	0f 57 c0             	xorps  %xmm0,%xmm0
  4081d2:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4081d6:	8d 48 40             	lea    0x40(%rax),%ecx
  4081d9:	0f 57 c9             	xorps  %xmm1,%xmm1
  4081dc:	f3 0f 2a c9          	cvtsi2ss %ecx,%xmm1
  4081e0:	0f 29 4c 24 50       	movaps %xmm1,0x50(%rsp)
  4081e5:	83 c0 c0             	add    $0xffffffc0,%eax
  4081e8:	0f 57 c9             	xorps  %xmm1,%xmm1
  4081eb:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
  4081ef:	0f 29 8c 24 d0 00 00 	movaps %xmm1,0xd0(%rsp)
  4081f6:	00 
  4081f7:	45 31 ff             	xor    %r15d,%r15d
  4081fa:	41 bd 40 00 00 00    	mov    $0x40,%r13d
  408200:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  408205:	eb 61                	jmp    408268 <box_collide_with_map2+0x128>
  408207:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40820e:	00 00 
  408210:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
  408215:	0f 28 54 24 40       	movaps 0x40(%rsp),%xmm2
			|| box_collide_with_box(box, box_for_position((t_box){{0, 0},
  40821a:	0f 16 d0             	movlhps %xmm0,%xmm2
  40821d:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  408221:	0f 57 c0             	xorps  %xmm0,%xmm0
  408224:	0f 28 0d e5 7e 00 00 	movaps 0x7ee5(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  40822b:	e8 30 1b 00 00       	call   409d60 <box_for_position>
  408230:	0f 28 d0             	movaps %xmm0,%xmm2
  408233:	0f 28 d9             	movaps %xmm1,%xmm3
  408236:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  40823b:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408240:	e8 6b 1b 00 00       	call   409db0 <box_collide_with_box>
			else if (_collision_stair(map, index, box, (t_vec2i){x, y}))
				return (true);
			else if (level->data[x + y * level->width] == TILE_STAIR
				&& _collide_with_stair(box, x, y, false))
				return (true);
			else if (_collide_door(game, (void *)level, box, (t_vec2i){x, y}))
  408245:	84 c0                	test   %al,%al
  408247:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  40824c:	0f 85 10 05 00 00    	jne    408762 <box_collide_with_map2+0x622>
		while (++y < map->height)
  408252:	41 83 c7 01          	add    $0x1,%r15d
  408256:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
  40825b:	41 83 c5 40          	add    $0x40,%r13d
  40825f:	41 39 cf             	cmp    %ecx,%r15d
  408262:	0f 8d cf 03 00 00    	jge    408637 <box_collide_with_map2+0x4f7>
  408268:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
				&& map->levels[index - 1].data[x + y * map->width] == TILE_STAIR
  40826d:	0f 8e ab 00 00 00    	jle    40831e <box_collide_with_map2+0x1de>
  408273:	49 8b 04 24          	mov    (%r12),%rax
  408277:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
  40827e:	00 
  40827f:	48 8d 0c 49          	lea    (%rcx,%rcx,2),%rcx
  408283:	48 c1 e1 04          	shl    $0x4,%rcx
  408287:	48 8b 44 08 08       	mov    0x8(%rax,%rcx,1),%rax
  40828c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  408291:	41 0f af cf          	imul   %r15d,%ecx
  408295:	01 e9                	add    %ebp,%ecx
  408297:	48 63 c9             	movslq %ecx,%rcx
  40829a:	83 3c 88 05          	cmpl   $0x5,(%rax,%rcx,4)
				&& _collide_with_stair(box, x, y, true))
  40829e:	75 7e                	jne    40831e <box_collide_with_map2+0x1de>
	up = (t_box){{pos.x, pos.y}, {pos.x + 64, pos.y}};
  4082a0:	41 8d 45 c0          	lea    -0x40(%r13),%eax
  4082a4:	0f 57 d2             	xorps  %xmm2,%xmm2
  4082a7:	f3 0f 2a d0          	cvtsi2ss %eax,%xmm2
	left = (t_box){{pos.x, pos.y}, {pos.x, pos.y + 64}};
  4082ab:	0f 57 db             	xorps  %xmm3,%xmm3
  4082ae:	f3 41 0f 2a dd       	cvtsi2ss %r13d,%xmm3
  4082b3:	0f 29 5c 24 60       	movaps %xmm3,0x60(%rsp)
		|| box_collide_with_box(box, left)
  4082b8:	0f 16 d8             	movlhps %xmm0,%xmm3
  4082bb:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  4082bf:	0f 29 54 24 40       	movaps %xmm2,0x40(%rsp)
  4082c4:	0f 16 d0             	movlhps %xmm0,%xmm2
  4082c7:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  4082cb:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  4082d0:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  4082d5:	e8 d6 1a 00 00       	call   409db0 <box_collide_with_box>
  4082da:	41 b6 01             	mov    $0x1,%r14b
		|| box_collide_with_box(box, right));
  4082dd:	84 c0                	test   %al,%al
  4082df:	0f 85 7d 04 00 00    	jne    408762 <box_collide_with_map2+0x622>
  4082e5:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
  4082ea:	0f 28 54 24 40       	movaps 0x40(%rsp),%xmm2
  4082ef:	0f 16 d0             	movlhps %xmm0,%xmm2
  4082f2:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  4082f6:	0f 28 5c 24 60       	movaps 0x60(%rsp),%xmm3
  4082fb:	0f 16 d8             	movlhps %xmm0,%xmm3
  4082fe:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  408302:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408307:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  40830c:	e8 9f 1a 00 00       	call   409db0 <box_collide_with_box>
			if (index > 0
  408311:	84 c0                	test   %al,%al
  408313:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  408318:	0f 85 44 04 00 00    	jne    408762 <box_collide_with_map2+0x622>
	level = &map->levels[index];
  40831e:	49 8b 1c 24          	mov    (%r12),%rbx
  408322:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
  408329:	00 
	return (level->data[pos.x + pos.y * level->width] == TILE_SOLID
  40832a:	48 8b 44 0b 08       	mov    0x8(%rbx,%rcx,1),%rax
  40832f:	8b 4c 0b 20          	mov    0x20(%rbx,%rcx,1),%ecx
  408333:	41 0f af cf          	imul   %r15d,%ecx
  408337:	01 e9                	add    %ebp,%ecx
  408339:	48 63 c9             	movslq %ecx,%rcx
  40833c:	83 3c 88 01          	cmpl   $0x1,(%rax,%rcx,4)
		&& box_collide_with_box(box, box_for_position((t_box){{0, 0},
  408340:	0f 85 89 00 00 00    	jne    4083cf <box_collide_with_map2+0x28f>
				{64, 64}}, (t_vec2){pos.x * 64, pos.y * 64}))
  408346:	41 8d 45 c0          	lea    -0x40(%r13),%eax
  40834a:	0f 57 d2             	xorps  %xmm2,%xmm2
  40834d:	f3 0f 2a d0          	cvtsi2ss %eax,%xmm2
		&& box_collide_with_box(box, box_for_position((t_box){{0, 0},
  408351:	0f 16 d0             	movlhps %xmm0,%xmm2
  408354:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  408358:	0f 57 c0             	xorps  %xmm0,%xmm0
  40835b:	0f 28 0d ae 7d 00 00 	movaps 0x7dae(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  408362:	e8 f9 19 00 00       	call   409d60 <box_for_position>
  408367:	0f 28 d0             	movaps %xmm0,%xmm2
  40836a:	0f 28 d9             	movaps %xmm1,%xmm3
  40836d:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408372:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408377:	e8 34 1a 00 00       	call   409db0 <box_collide_with_box>
  40837c:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
			&& (index == 0
  408381:	84 c0                	test   %al,%al
  408383:	74 4a                	je     4083cf <box_collide_with_map2+0x28f>
  408385:	41 b6 01             	mov    $0x1,%r14b
  408388:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
					|| map->levels[index
  40838d:	0f 84 cf 03 00 00    	je     408762 <box_collide_with_map2+0x622>
  408393:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40839a:	00 
  40839b:	48 01 d8             	add    %rbx,%rax
  40839e:	48 83 c0 20          	add    $0x20,%rax
  4083a2:	49 8b 0c 24          	mov    (%r12),%rcx
  4083a6:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
  4083ad:	00 
						- 1].data[pos.x + pos.y * level->width] != TILE_STAIR));
  4083ae:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  4083b2:	48 c1 e2 04          	shl    $0x4,%rdx
  4083b6:	48 8b 4c 11 08       	mov    0x8(%rcx,%rdx,1),%rcx
  4083bb:	8b 00                	mov    (%rax),%eax
  4083bd:	41 0f af c7          	imul   %r15d,%eax
  4083c1:	01 e8                	add    %ebp,%eax
					|| map->levels[index
  4083c3:	48 98                	cltq   
						- 1].data[pos.x + pos.y * level->width] != TILE_STAIR));
  4083c5:	83 3c 81 05          	cmpl   $0x5,(%rcx,%rax,4)
			else if (_collision_stair(map, index, box, (t_vec2i){x, y}))
  4083c9:	0f 85 93 03 00 00    	jne    408762 <box_collide_with_map2+0x622>
  4083cf:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  4083d6:	00 
			else if (level->data[x + y * level->width] == TILE_STAIR
  4083d7:	48 8b 01             	mov    (%rcx),%rax
  4083da:	8b 49 18             	mov    0x18(%rcx),%ecx
  4083dd:	41 0f af cf          	imul   %r15d,%ecx
  4083e1:	01 e9                	add    %ebp,%ecx
  4083e3:	48 63 c9             	movslq %ecx,%rcx
  4083e6:	83 3c 88 05          	cmpl   $0x5,(%rax,%rcx,4)
				&& _collide_with_stair(box, x, y, false))
  4083ea:	0f 85 c9 00 00 00    	jne    4084b9 <box_collide_with_map2+0x379>
	up = (t_box){{pos.x, pos.y}, {pos.x + 64, pos.y}};
  4083f0:	41 8d 45 c0          	lea    -0x40(%r13),%eax
  4083f4:	0f 57 db             	xorps  %xmm3,%xmm3
  4083f7:	f3 0f 2a d8          	cvtsi2ss %eax,%xmm3
  4083fb:	0f 28 d3             	movaps %xmm3,%xmm2
  4083fe:	0f 16 d0             	movlhps %xmm0,%xmm2
  408401:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  408405:	0f 28 4c 24 50       	movaps 0x50(%rsp),%xmm1
  40840a:	0f 16 d9             	movlhps %xmm1,%xmm3
  40840d:	0f c6 d9 e2          	shufps $0xe2,%xmm1,%xmm3
  408411:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408416:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  40841b:	0f 29 54 24 40       	movaps %xmm2,0x40(%rsp)
  408420:	0f 29 5c 24 60       	movaps %xmm3,0x60(%rsp)
	return ((!sides && box_collide_with_box(box, up))
  408425:	e8 86 19 00 00       	call   409db0 <box_collide_with_box>
  40842a:	41 b6 01             	mov    $0x1,%r14b
		|| box_collide_with_box(box, left)
  40842d:	84 c0                	test   %al,%al
  40842f:	0f 85 2d 03 00 00    	jne    408762 <box_collide_with_map2+0x622>
  408435:	0f 57 db             	xorps  %xmm3,%xmm3
  408438:	f3 41 0f 2a dd       	cvtsi2ss %r13d,%xmm3
  40843d:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
  408444:	00 
  408445:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  40844a:	0f 16 d8             	movlhps %xmm0,%xmm3
  40844d:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  408451:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408456:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  40845b:	0f 28 54 24 40       	movaps 0x40(%rsp),%xmm2
  408460:	e8 4b 19 00 00       	call   409db0 <box_collide_with_box>
		|| box_collide_with_box(box, right));
  408465:	84 c0                	test   %al,%al
  408467:	0f 85 f5 02 00 00    	jne    408762 <box_collide_with_map2+0x622>
  40846d:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
  408472:	0f 28 9c 24 90 00 00 	movaps 0x90(%rsp),%xmm3
  408479:	00 
  40847a:	0f 16 d8             	movlhps %xmm0,%xmm3
  40847d:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  408481:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408486:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  40848b:	0f 28 54 24 60       	movaps 0x60(%rsp),%xmm2
  408490:	e8 1b 19 00 00       	call   409db0 <box_collide_with_box>
			else if (level->data[x + y * level->width] == TILE_STAIR
  408495:	84 c0                	test   %al,%al
  408497:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  40849c:	0f 85 c0 02 00 00    	jne    408762 <box_collide_with_map2+0x622>
  4084a2:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  4084a9:	00 
	return (level->data[pos.x + pos.y * level->width] == TILE_DOOR
  4084aa:	48 8b 01             	mov    (%rcx),%rax
  4084ad:	8b 49 18             	mov    0x18(%rcx),%ecx
  4084b0:	41 0f af cf          	imul   %r15d,%ecx
  4084b4:	01 e9                	add    %ebp,%ecx
  4084b6:	48 63 c9             	movslq %ecx,%rcx
  4084b9:	83 3c 88 02          	cmpl   $0x2,(%rax,%rcx,4)
		&& (
  4084bd:	0f 85 8f fd ff ff    	jne    408252 <box_collide_with_map2+0x112>
					{64, 64}}, (t_vec2){(pos.x - 1) * 64, pos.y * 64}))
  4084c3:	41 8d 45 c0          	lea    -0x40(%r13),%eax
  4084c7:	0f 57 d2             	xorps  %xmm2,%xmm2
  4084ca:	f3 0f 2a d0          	cvtsi2ss %eax,%xmm2
  4084ce:	0f 29 54 24 40       	movaps %xmm2,0x40(%rsp)
  4084d3:	0f 28 84 24 d0 00 00 	movaps 0xd0(%rsp),%xmm0
  4084da:	00 
			box_collide_with_box(box, box_for_position((t_box){{0, 0},
  4084db:	0f 16 d0             	movlhps %xmm0,%xmm2
  4084de:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  4084e2:	0f 57 c0             	xorps  %xmm0,%xmm0
  4084e5:	0f 28 0d 24 7c 00 00 	movaps 0x7c24(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  4084ec:	e8 6f 18 00 00       	call   409d60 <box_for_position>
  4084f1:	0f 28 d0             	movaps %xmm0,%xmm2
  4084f4:	0f 28 d9             	movaps %xmm1,%xmm3
  4084f7:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  4084fc:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408501:	e8 aa 18 00 00       	call   409db0 <box_collide_with_box>
  408506:	41 b6 01             	mov    $0x1,%r14b
			|| ((game->collectibles == game->collectibles_count
  408509:	84 c0                	test   %al,%al
  40850b:	0f 85 51 02 00 00    	jne    408762 <box_collide_with_map2+0x622>
  408511:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  408516:	8b 81 00 03 00 00    	mov    0x300(%rcx),%eax
  40851c:	8b 89 04 03 00 00    	mov    0x304(%rcx),%ecx
  408522:	39 c1                	cmp    %eax,%ecx
					&& _collide_with_stair(box, pos.x, pos.y, false))
  408524:	0f 85 c3 00 00 00    	jne    4085ed <box_collide_with_map2+0x4ad>
  40852a:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
	up = (t_box){{pos.x, pos.y}, {pos.x + 64, pos.y}};
  40852f:	0f 28 d0             	movaps %xmm0,%xmm2
  408532:	0f 28 4c 24 30       	movaps 0x30(%rsp),%xmm1
  408537:	0f 16 d1             	movlhps %xmm1,%xmm2
  40853a:	0f c6 d1 e2          	shufps $0xe2,%xmm1,%xmm2
  40853e:	0f 28 d8             	movaps %xmm0,%xmm3
  408541:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
  408546:	0f 16 d8             	movlhps %xmm0,%xmm3
  408549:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  40854d:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408552:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408557:	0f 29 54 24 60       	movaps %xmm2,0x60(%rsp)
  40855c:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
  408563:	00 
	return ((!sides && box_collide_with_box(box, up))
  408564:	e8 47 18 00 00       	call   409db0 <box_collide_with_box>
		|| box_collide_with_box(box, left)
  408569:	84 c0                	test   %al,%al
  40856b:	0f 85 f1 01 00 00    	jne    408762 <box_collide_with_map2+0x622>
  408571:	0f 57 db             	xorps  %xmm3,%xmm3
  408574:	f3 41 0f 2a dd       	cvtsi2ss %r13d,%xmm3
  408579:	0f 29 9c 24 c0 00 00 	movaps %xmm3,0xc0(%rsp)
  408580:	00 
  408581:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  408586:	0f 16 d8             	movlhps %xmm0,%xmm3
  408589:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  40858d:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408592:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408597:	0f 28 54 24 60       	movaps 0x60(%rsp),%xmm2
  40859c:	e8 0f 18 00 00       	call   409db0 <box_collide_with_box>
		|| box_collide_with_box(box, right));
  4085a1:	84 c0                	test   %al,%al
  4085a3:	0f 85 b9 01 00 00    	jne    408762 <box_collide_with_map2+0x622>
  4085a9:	0f 28 44 24 50       	movaps 0x50(%rsp),%xmm0
  4085ae:	0f 28 9c 24 c0 00 00 	movaps 0xc0(%rsp),%xmm3
  4085b5:	00 
  4085b6:	0f 16 d8             	movlhps %xmm0,%xmm3
  4085b9:	0f c6 d8 e2          	shufps $0xe2,%xmm0,%xmm3
  4085bd:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  4085c2:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  4085c7:	0f 28 94 24 90 00 00 	movaps 0x90(%rsp),%xmm2
  4085ce:	00 
  4085cf:	e8 dc 17 00 00       	call   409db0 <box_collide_with_box>
				|| (game->collectibles != game->collectibles_count
  4085d4:	84 c0                	test   %al,%al
  4085d6:	0f 85 86 01 00 00    	jne    408762 <box_collide_with_map2+0x622>
  4085dc:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  4085e1:	8b 81 00 03 00 00    	mov    0x300(%rcx),%eax
  4085e7:	8b 89 04 03 00 00    	mov    0x304(%rcx),%ecx
  4085ed:	39 c1                	cmp    %eax,%ecx
				&& box_collide_with_box(box, box_for_position((t_box){{0, 0},
  4085ef:	0f 84 1b fc ff ff    	je     408210 <box_collide_with_map2+0xd0>
  4085f5:	0f 28 54 24 40       	movaps 0x40(%rsp),%xmm2
  4085fa:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
  4085ff:	0f 16 d0             	movlhps %xmm0,%xmm2
  408602:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  408606:	0f 57 c0             	xorps  %xmm0,%xmm0
  408609:	0f 28 0d 00 7b 00 00 	movaps 0x7b00(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  408610:	e8 4b 17 00 00       	call   409d60 <box_for_position>
  408615:	0f 28 d0             	movaps %xmm0,%xmm2
  408618:	0f 28 d9             	movaps %xmm1,%xmm3
  40861b:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408620:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408625:	e8 86 17 00 00       	call   409db0 <box_collide_with_box>
			|| box_collide_with_box(box, box_for_position((t_box){{0, 0},
  40862a:	84 c0                	test   %al,%al
  40862c:	0f 84 de fb ff ff    	je     408210 <box_collide_with_map2+0xd0>
  408632:	e9 2b 01 00 00       	jmp    408762 <box_collide_with_map2+0x622>
	while (++x < map->width)
  408637:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
  40863c:	83 c5 01             	add    $0x1,%ebp
  40863f:	39 c5                	cmp    %eax,%ebp
  408641:	0f 8c 7b fb ff ff    	jl     4081c2 <box_collide_with_map2+0x82>
	if (index >= map->level_count - 1)
  408647:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
  40864c:	83 c1 ff             	add    $0xffffffff,%ecx
  40864f:	3b 4c 24 0c          	cmp    0xc(%rsp),%ecx
  408653:	0f 8e 01 01 00 00    	jle    40875a <box_collide_with_map2+0x61a>
  408659:	45 31 ff             	xor    %r15d,%r15d
	while (++x < map->width)
  40865c:	85 c0                	test   %eax,%eax
  40865e:	0f 8e f6 00 00 00    	jle    40875a <box_collide_with_map2+0x61a>
  408664:	49 8b 0c 24          	mov    (%r12),%rcx
  408668:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40866c:	83 c2 01             	add    $0x1,%edx
  40866f:	48 63 d2             	movslq %edx,%rdx
  408672:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  408676:	48 c1 e2 04          	shl    $0x4,%rdx
  40867a:	4c 8d 2c 11          	lea    (%rcx,%rdx,1),%r13
  40867e:	49 83 c5 08          	add    $0x8,%r13
		while (++y < map->height)
  408682:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
  408687:	eb 1c                	jmp    4086a5 <box_collide_with_map2+0x565>
  408689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	while (++x < map->width)
  408690:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
  408695:	41 83 c7 01          	add    $0x1,%r15d
  408699:	45 31 f6             	xor    %r14d,%r14d
  40869c:	41 39 c7             	cmp    %eax,%r15d
  40869f:	0f 8d bd 00 00 00    	jge    408762 <box_collide_with_map2+0x622>
		while (++y < map->height)
  4086a5:	85 c9                	test   %ecx,%ecx
  4086a7:	7e ec                	jle    408695 <box_collide_with_map2+0x555>
  4086a9:	44 89 f8             	mov    %r15d,%eax
  4086ac:	c1 e0 06             	shl    $0x6,%eax
  4086af:	0f 57 c0             	xorps  %xmm0,%xmm0
  4086b2:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4086b6:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  4086bb:	bb 40 00 00 00       	mov    $0x40,%ebx
  4086c0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4086c5:	4c 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%r14
  4086cc:	00 
  4086cd:	eb 0d                	jmp    4086dc <box_collide_with_map2+0x59c>
  4086cf:	90                   	nop
  4086d0:	83 c3 40             	add    $0x40,%ebx
  4086d3:	8d 45 01             	lea    0x1(%rbp),%eax
  4086d6:	39 cd                	cmp    %ecx,%ebp
  4086d8:	89 c5                	mov    %eax,%ebp
  4086da:	7d b4                	jge    408690 <box_collide_with_map2+0x550>
			if (level->data[x + y * level->width] == TILE_EMPTY
  4086dc:	8d 55 ff             	lea    -0x1(%rbp),%edx
  4086df:	49 8b 75 00          	mov    0x0(%r13),%rsi
  4086e3:	41 8b 45 18          	mov    0x18(%r13),%eax
  4086e7:	0f af d0             	imul   %eax,%edx
  4086ea:	44 01 fa             	add    %r15d,%edx
  4086ed:	48 63 d2             	movslq %edx,%rdx
  4086f0:	83 3c 96 00          	cmpl   $0x0,(%rsi,%rdx,4)
				&& (map->levels[index].data[x
  4086f4:	75 da                	jne    4086d0 <box_collide_with_map2+0x590>
  4086f6:	49 8b 14 24          	mov    (%r12),%rdx
  4086fa:	4b 8d 34 76          	lea    (%r14,%r14,2),%rsi
  4086fe:	48 c1 e6 04          	shl    $0x4,%rsi
  408702:	48 8b 54 32 08       	mov    0x8(%rdx,%rsi,1),%rdx
						+ (y + 1) * level->width] != TILE_STAIR))
  408707:	0f af c5             	imul   %ebp,%eax
  40870a:	44 01 f8             	add    %r15d,%eax
				&& (map->levels[index].data[x
  40870d:	48 98                	cltq   
						+ (y + 1) * level->width] != TILE_STAIR))
  40870f:	83 3c 82 05          	cmpl   $0x5,(%rdx,%rax,4)
			if (level->data[x + y * level->width] == TILE_EMPTY
  408713:	74 bb                	je     4086d0 <box_collide_with_map2+0x590>
							{0, 0}, {64, 64}}, (t_vec2){x * 64, (y + 1) * 64})))
  408715:	0f 57 d2             	xorps  %xmm2,%xmm2
  408718:	f3 0f 2a d3          	cvtsi2ss %ebx,%xmm2
  40871c:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
				if (box_collide_with_box(box, box_for_position((t_box){
  408721:	0f 16 d0             	movlhps %xmm0,%xmm2
  408724:	0f c6 d0 e2          	shufps $0xe2,%xmm0,%xmm2
  408728:	0f 57 c0             	xorps  %xmm0,%xmm0
  40872b:	0f 28 0d de 79 00 00 	movaps 0x79de(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  408732:	e8 29 16 00 00       	call   409d60 <box_for_position>
  408737:	0f 28 d0             	movaps %xmm0,%xmm2
  40873a:	0f 28 d9             	movaps %xmm1,%xmm3
  40873d:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  408742:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
  408747:	e8 64 16 00 00       	call   409db0 <box_collide_with_box>
  40874c:	84 c0                	test   %al,%al
  40874e:	75 0f                	jne    40875f <box_collide_with_map2+0x61f>
		while (++y < map->height)
  408750:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
  408755:	e9 76 ff ff ff       	jmp    4086d0 <box_collide_with_map2+0x590>
  40875a:	45 31 f6             	xor    %r14d,%r14d
  40875d:	eb 03                	jmp    408762 <box_collide_with_map2+0x622>
  40875f:	41 b6 01             	mov    $0x1,%r14b
				return (true);
		}
	}
	return (_collide_with_upper_layer(box, index, map));
}
  408762:	44 89 f0             	mov    %r14d,%eax
  408765:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
  40876c:	5b                   	pop    %rbx
  40876d:	41 5c                	pop    %r12
  40876f:	41 5d                	pop    %r13
  408771:	41 5e                	pop    %r14
  408773:	41 5f                	pop    %r15
  408775:	5d                   	pop    %rbp
  408776:	c3                   	ret    
  408777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40877e:	00 00 

0000000000408780 <map2_save>:
	_rewrite_to_string(level);
	ft_printf("Map saved to %s\n", level->filename);
}

void	map2_save(t_map2 *map, t_game *game)
{
  408780:	55                   	push   %rbp
  408781:	41 57                	push   %r15
  408783:	41 56                	push   %r14
  408785:	41 55                	push   %r13
  408787:	41 54                	push   %r12
  408789:	53                   	push   %rbx
  40878a:	48 83 ec 28          	sub    $0x28,%rsp
  40878e:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
	int	i;

	i = -1;
	while (++i < map->level_count)
  408793:	83 7f 08 00          	cmpl   $0x0,0x8(%rdi)
  408797:	0f 8e df 02 00 00    	jle    408a7c <map2_save+0x2fc>
  40879d:	4c 8d 25 97 79 00 00 	lea    0x7997(%rip),%r12        # 41013b <_IO_stdin_used+0x113b>
  4087a4:	31 c9                	xor    %ecx,%ecx
  4087a6:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  4087ab:	eb 3f                	jmp    4087ec <map2_save+0x6c>
  4087ad:	0f 1f 00             	nopl   (%rax)
  4087b0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4087b5:	48 8b 0c 24          	mov    (%rsp),%rcx
  4087b9:	48 01 c8             	add    %rcx,%rax
  4087bc:	48 83 c0 18          	add    $0x18,%rax
	ft_printf("Map saved to %s\n", level->filename);
  4087c0:	48 8b 30             	mov    (%rax),%rsi
  4087c3:	48 8d 3d 5a 79 00 00 	lea    0x795a(%rip),%rdi        # 410124 <_IO_stdin_used+0x1124>
  4087ca:	31 c0                	xor    %eax,%eax
  4087cc:	e8 7f 4e 00 00       	call   40d650 <ft_printf>
  4087d1:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
	while (++i < map->level_count)
  4087d6:	48 83 c1 01          	add    $0x1,%rcx
  4087da:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4087df:	48 63 47 08          	movslq 0x8(%rdi),%rax
  4087e3:	48 39 c1             	cmp    %rax,%rcx
  4087e6:	0f 8d 90 02 00 00    	jge    408a7c <map2_save+0x2fc>
		_save_level(&map->levels[i], i, game);
  4087ec:	48 8b 07             	mov    (%rdi),%rax
  4087ef:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
	const int	fd = open(level->filename, O_WRONLY);
  4087f4:	48 8d 0c 49          	lea    (%rcx,%rcx,2),%rcx
  4087f8:	48 c1 e1 04          	shl    $0x4,%rcx
  4087fc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  408801:	48 89 0c 24          	mov    %rcx,(%rsp)
  408805:	48 8b 7c 08 18       	mov    0x18(%rax,%rcx,1),%rdi
  40880a:	be 01 00 00 00       	mov    $0x1,%esi
  40880f:	31 c0                	xor    %eax,%eax
  408811:	e8 3a 9c ff ff       	call   402450 <open@plt>
  408816:	89 c5                	mov    %eax,%ebp
  408818:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
	_save_entities(level, index, game->entities);
  40881d:	4c 8b 78 20          	mov    0x20(%rax),%r15
	while (i < vector_size(entities))
  408821:	4c 89 ff             	mov    %r15,%rdi
  408824:	e8 c7 1b 00 00       	call   40a3f0 <vector_size>
  408829:	85 c0                	test   %eax,%eax
  40882b:	0f 84 8f 00 00 00    	je     4088c0 <map2_save+0x140>
  408831:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  408836:	48 8b 0c 24          	mov    (%rsp),%rcx
  40883a:	4c 8d 2c 08          	lea    (%rax,%rcx,1),%r13
  40883e:	49 83 c5 08          	add    $0x8,%r13
  408842:	31 db                	xor    %ebx,%ebx
  408844:	eb 1d                	jmp    408863 <map2_save+0xe3>
  408846:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40884d:	00 00 00 
		i++;
  408850:	48 83 c3 01          	add    $0x1,%rbx
	while (i < vector_size(entities))
  408854:	4c 89 ff             	mov    %r15,%rdi
  408857:	e8 94 1b 00 00       	call   40a3f0 <vector_size>
  40885c:	89 c0                	mov    %eax,%eax
  40885e:	48 39 c3             	cmp    %rax,%rbx
  408861:	73 5d                	jae    4088c0 <map2_save+0x140>
		entity = entities[i];
  408863:	4d 8b 34 df          	mov    (%r15,%rbx,8),%r14
		if (entity->level == index)
  408867:	41 8b 46 6c          	mov    0x6c(%r14),%eax
  40886b:	48 39 44 24 10       	cmp    %rax,0x10(%rsp)
  408870:	75 de                	jne    408850 <map2_save+0xd0>
				= etype_to_tile(entity->type);
  408872:	41 8b 7e 08          	mov    0x8(%r14),%edi
  408876:	e8 15 02 00 00       	call   408a90 <etype_to_tile>
			level->data[((int)entity->pos.x / SCALED_SIZE)
  40887b:	f3 41 0f 2c 4e 0c    	cvttss2si 0xc(%r14),%ecx
  408881:	8d 51 3f             	lea    0x3f(%rcx),%edx
  408884:	85 c9                	test   %ecx,%ecx
  408886:	0f 49 d1             	cmovns %ecx,%edx
  408889:	c1 fa 06             	sar    $0x6,%edx
  40888c:	f3 41 0f 10 46 10    	movss  0x10(%r14),%xmm0
				+ ((int)(entity->pos.y + 32) / SCALED_SIZE) * level->width]
  408892:	f3 0f 58 05 86 78 00 	addss  0x7886(%rip),%xmm0        # 410120 <_IO_stdin_used+0x1120>
  408899:	00 
  40889a:	f3 0f 2c c8          	cvttss2si %xmm0,%ecx
  40889e:	8d 71 3f             	lea    0x3f(%rcx),%esi
  4088a1:	85 c9                	test   %ecx,%ecx
  4088a3:	0f 49 f1             	cmovns %ecx,%esi
  4088a6:	c1 fe 06             	sar    $0x6,%esi
  4088a9:	41 0f af 75 18       	imul   0x18(%r13),%esi
			level->data[((int)entity->pos.x / SCALED_SIZE)
  4088ae:	49 8b 4d 00          	mov    0x0(%r13),%rcx
				+ ((int)(entity->pos.y + 32) / SCALED_SIZE) * level->width]
  4088b2:	01 d6                	add    %edx,%esi
			level->data[((int)entity->pos.x / SCALED_SIZE)
  4088b4:	48 63 d6             	movslq %esi,%rdx
				= etype_to_tile(entity->type);
  4088b7:	89 04 91             	mov    %eax,(%rcx,%rdx,4)
  4088ba:	eb 94                	jmp    408850 <map2_save+0xd0>
  4088bc:	0f 1f 40 00          	nopl   0x0(%rax)
	if (fd == -1)
  4088c0:	83 fd ff             	cmp    $0xffffffff,%ebp
  4088c3:	0f 84 08 ff ff ff    	je     4087d1 <map2_save+0x51>
  4088c9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4088ce:	48 8b 0c 24          	mov    (%rsp),%rcx
	while (y < level->height)
  4088d2:	4c 8d 2c 08          	lea    (%rax,%rcx,1),%r13
  4088d6:	49 83 c5 24          	add    $0x24,%r13
  4088da:	83 7c 08 24 00       	cmpl   $0x0,0x24(%rax,%rcx,1)
  4088df:	0f 8e 8b 00 00 00    	jle    408970 <map2_save+0x1f0>
  4088e5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4088ea:	48 8b 0c 24          	mov    (%rsp),%rcx
  4088ee:	48 8d 1c 08          	lea    (%rax,%rcx,1),%rbx
  4088f2:	48 83 c3 20          	add    $0x20,%rbx
  4088f6:	45 31 ff             	xor    %r15d,%r15d
  4088f9:	eb 22                	jmp    40891d <map2_save+0x19d>
  4088fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		write(fd, "\n", 1);
  408900:	ba 01 00 00 00       	mov    $0x1,%edx
  408905:	89 ef                	mov    %ebp,%edi
  408907:	48 8d 35 07 67 00 00 	lea    0x6707(%rip),%rsi        # 40f015 <_IO_stdin_used+0x15>
  40890e:	e8 0d 9b ff ff       	call   402420 <write@plt>
		y++;
  408913:	41 83 c7 01          	add    $0x1,%r15d
	while (y < level->height)
  408917:	45 3b 7d 00          	cmp    0x0(%r13),%r15d
  40891b:	7d 53                	jge    408970 <map2_save+0x1f0>
		while (x < level->width)
  40891d:	8b 03                	mov    (%rbx),%eax
  40891f:	85 c0                	test   %eax,%eax
  408921:	7e dd                	jle    408900 <map2_save+0x180>
  408923:	45 31 f6             	xor    %r14d,%r14d
  408926:	eb 1f                	jmp    408947 <map2_save+0x1c7>
  408928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40892f:	00 
			write(fd, _get_tile_str(tile), 1);
  408930:	ba 01 00 00 00       	mov    $0x1,%edx
  408935:	89 ef                	mov    %ebp,%edi
  408937:	e8 e4 9a ff ff       	call   402420 <write@plt>
			x++;
  40893c:	41 83 c6 01          	add    $0x1,%r14d
		while (x < level->width)
  408940:	8b 03                	mov    (%rbx),%eax
  408942:	41 39 c6             	cmp    %eax,%r14d
  408945:	7d b9                	jge    408900 <map2_save+0x180>
			tile = level->data[x + y * level->width];
  408947:	48 8b 4b e8          	mov    -0x18(%rbx),%rcx
  40894b:	41 0f af c7          	imul   %r15d,%eax
  40894f:	44 01 f0             	add    %r14d,%eax
  408952:	48 98                	cltq   
  408954:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  408958:	4c 89 e6             	mov    %r12,%rsi
  40895b:	48 83 f8 06          	cmp    $0x6,%rax
	if (tile == TILE_SOLID)
  40895f:	77 cf                	ja     408930 <map2_save+0x1b0>
  408961:	48 8d 0d 40 d4 00 00 	lea    0xd440(%rip),%rcx        # 415da8 <__do_global_dtors_aux_fini_array_entry+0x8>
  408968:	48 8b 34 c1          	mov    (%rcx,%rax,8),%rsi
  40896c:	eb c2                	jmp    408930 <map2_save+0x1b0>
  40896e:	66 90                	xchg   %ax,%ax
	close(fd);
  408970:	89 ef                	mov    %ebp,%edi
  408972:	e8 d9 96 ff ff       	call   402050 <close@plt>
  408977:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40897c:	48 8b 2c 24          	mov    (%rsp),%rbp
	const int	width = level->width + 1;
  408980:	4c 63 74 2b 20       	movslq 0x20(%rbx,%rbp,1),%r14
  408985:	4d 8d 7e 01          	lea    0x1(%r14),%r15
	free(level->string);
  408989:	48 8b 7c 2b 10       	mov    0x10(%rbx,%rbp,1),%rdi
  40898e:	e8 ed 97 ff ff       	call   402180 <free@plt>
	level->string = ft_calloc(1, width * level->height);
  408993:	49 63 75 00          	movslq 0x0(%r13),%rsi
  408997:	49 0f af f7          	imul   %r15,%rsi
  40899b:	bf 01 00 00 00       	mov    $0x1,%edi
  4089a0:	e8 fb 4a 00 00       	call   40d4a0 <ft_calloc>
  4089a5:	48 89 44 2b 10       	mov    %rax,0x10(%rbx,%rbp,1)
	if (!level->string)
  4089aa:	48 85 c0             	test   %rax,%rax
  4089ad:	0f 84 fd fd ff ff    	je     4087b0 <map2_save+0x30>
  4089b3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4089b8:	48 8b 0c 24          	mov    (%rsp),%rcx
  4089bc:	4c 8d 04 08          	lea    (%rax,%rcx,1),%r8
  4089c0:	49 83 c0 20          	add    $0x20,%r8
	while (x < level->width)
  4089c4:	41 8b 28             	mov    (%r8),%ebp
  4089c7:	85 ed                	test   %ebp,%ebp
  4089c9:	0f 8e e1 fd ff ff    	jle    4087b0 <map2_save+0x30>
  4089cf:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4089d4:	48 8b 0c 24          	mov    (%rsp),%rcx
  4089d8:	48 01 c1             	add    %rax,%rcx
  4089db:	48 83 c1 10          	add    $0x10,%rcx
  4089df:	4d 63 cf             	movslq %r15d,%r9
  4089e2:	45 31 d2             	xor    %r10d,%r10d
  4089e5:	eb 2f                	jmp    408a16 <map2_save+0x296>
  4089e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4089ee:	00 00 
  4089f0:	31 ff                	xor    %edi,%edi
		level->string[(width - 1) + (y - 1) * width] = '\n';
  4089f2:	48 8b 01             	mov    (%rcx),%rax
  4089f5:	83 c7 ff             	add    $0xffffffff,%edi
  4089f8:	41 0f af ff          	imul   %r15d,%edi
  4089fc:	48 63 d7             	movslq %edi,%rdx
  4089ff:	4c 01 f2             	add    %r14,%rdx
  408a02:	c6 04 10 0a          	movb   $0xa,(%rax,%rdx,1)
		x++;
  408a06:	49 83 c2 01          	add    $0x1,%r10
	while (x < level->width)
  408a0a:	49 63 28             	movslq (%r8),%rbp
  408a0d:	49 39 ea             	cmp    %rbp,%r10
  408a10:	0f 8d 9a fd ff ff    	jge    4087b0 <map2_save+0x30>
		while (y < level->height)
  408a16:	41 83 7d 00 00       	cmpl   $0x0,0x0(%r13)
  408a1b:	7e d3                	jle    4089f0 <map2_save+0x270>
  408a1d:	bf 01 00 00 00       	mov    $0x1,%edi
					level->data[x + y * level->width])[0];
  408a22:	4c 89 d6             	mov    %r10,%rsi
  408a25:	31 c0                	xor    %eax,%eax
  408a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408a2e:	00 00 
  408a30:	48 8b 51 f8          	mov    -0x8(%rcx),%rdx
  408a34:	89 c3                	mov    %eax,%ebx
  408a36:	0f af dd             	imul   %ebp,%ebx
  408a39:	48 63 eb             	movslq %ebx,%rbp
  408a3c:	4c 01 d5             	add    %r10,%rbp
  408a3f:	48 63 14 aa          	movslq (%rdx,%rbp,4),%rdx
  408a43:	4c 89 e5             	mov    %r12,%rbp
  408a46:	48 83 fa 06          	cmp    $0x6,%rdx
	if (tile == TILE_SOLID)
  408a4a:	77 0c                	ja     408a58 <map2_save+0x2d8>
  408a4c:	48 8d 2d 55 d3 00 00 	lea    0xd355(%rip),%rbp        # 415da8 <__do_global_dtors_aux_fini_array_entry+0x8>
  408a53:	48 8b 6c d5 00       	mov    0x0(%rbp,%rdx,8),%rbp
			level->string[x + y * width] = _get_tile_str(
  408a58:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  408a5c:	48 8b 29             	mov    (%rcx),%rbp
  408a5f:	88 54 35 00          	mov    %dl,0x0(%rbp,%rsi,1)
		while (y < level->height)
  408a63:	49 63 55 00          	movslq 0x0(%r13),%rdx
  408a67:	48 39 d7             	cmp    %rdx,%rdi
  408a6a:	7d 86                	jge    4089f2 <map2_save+0x272>
  408a6c:	48 83 c0 01          	add    $0x1,%rax
					level->data[x + y * level->width])[0];
  408a70:	41 8b 28             	mov    (%r8),%ebp
		while (y < level->height)
  408a73:	48 83 c7 01          	add    $0x1,%rdi
  408a77:	4c 01 ce             	add    %r9,%rsi
  408a7a:	eb b4                	jmp    408a30 <map2_save+0x2b0>
}
  408a7c:	48 83 c4 28          	add    $0x28,%rsp
  408a80:	5b                   	pop    %rbx
  408a81:	41 5c                	pop    %r12
  408a83:	41 5d                	pop    %r13
  408a85:	41 5e                	pop    %r14
  408a87:	41 5f                	pop    %r15
  408a89:	5d                   	pop    %rbp
  408a8a:	c3                   	ret    
  408a8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000408a90 <etype_to_tile>:
#include "../so_long.h"
#include "../entity.h"

t_tile	etype_to_tile(t_etype etype)
{
	if (etype == ETYPE_GEM)
  408a90:	83 ff 02             	cmp    $0x2,%edi
  408a93:	77 0e                	ja     408aa3 <etype_to_tile+0x13>
  408a95:	48 63 c7             	movslq %edi,%rax
  408a98:	48 8d 0d a1 76 00 00 	lea    0x76a1(%rip),%rcx        # 410140 <_IO_stdin_used+0x1140>
  408a9f:	8b 04 81             	mov    (%rcx,%rax,4),%eax
  408aa2:	c3                   	ret    
	else if (etype == ETYPE_PLAYER)
		return (TILE_PLAYER);
	else if (etype == ETYPE_ENEMY)
		return (TILE_ENEMY);
	return (TILE_EMPTY);
}
  408aa3:	31 c0                	xor    %eax,%eax
  408aa5:	c3                   	ret    
  408aa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  408aad:	00 00 00 

0000000000408ab0 <check_files>:
#include <unistd.h>
#include "libft.h"
#include "../so_long.h"

bool	check_files(char **filenames, int count)
{
  408ab0:	55                   	push   %rbp
  408ab1:	41 57                	push   %r15
  408ab3:	41 56                	push   %r14
  408ab5:	41 54                	push   %r12
  408ab7:	53                   	push   %rbx
	int	i;
	int	fd;

	i = -1;
	while (++i < count)
  408ab8:	85 f6                	test   %esi,%esi
  408aba:	7e 5d                	jle    408b19 <check_files+0x69>
  408abc:	49 89 fc             	mov    %rdi,%r12
  408abf:	41 89 f7             	mov    %esi,%r15d
  408ac2:	31 db                	xor    %ebx,%ebx
  408ac4:	4c 8d 35 81 76 00 00 	lea    0x7681(%rip),%r14        # 41014c <_IO_stdin_used+0x114c>
  408acb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	{
		if (ft_strncmp(filenames[i] + ft_strlen(filenames[i]) - 4, ".ber", 4))
  408ad0:	49 8b 2c dc          	mov    (%r12,%rbx,8),%rbp
  408ad4:	48 89 ef             	mov    %rbp,%rdi
  408ad7:	e8 84 48 00 00       	call   40d360 <ft_strlen>
  408adc:	48 8d 3c 28          	lea    (%rax,%rbp,1),%rdi
  408ae0:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
  408ae4:	ba 04 00 00 00       	mov    $0x4,%edx
  408ae9:	4c 89 f6             	mov    %r14,%rsi
  408aec:	e8 af 48 00 00       	call   40d3a0 <ft_strncmp>
  408af1:	85 c0                	test   %eax,%eax
  408af3:	75 29                	jne    408b1e <check_files+0x6e>
			return (false);
		fd = open(filenames[i], O_RDONLY);
  408af5:	49 8b 3c dc          	mov    (%r12,%rbx,8),%rdi
  408af9:	31 ed                	xor    %ebp,%ebp
  408afb:	31 f6                	xor    %esi,%esi
  408afd:	31 c0                	xor    %eax,%eax
  408aff:	e8 4c 99 ff ff       	call   402450 <open@plt>
		if (fd == -1)
  408b04:	83 f8 ff             	cmp    $0xffffffff,%eax
  408b07:	74 17                	je     408b20 <check_files+0x70>
			return (false);
		close(fd);
  408b09:	89 c7                	mov    %eax,%edi
  408b0b:	e8 40 95 ff ff       	call   402050 <close@plt>
	while (++i < count)
  408b10:	48 83 c3 01          	add    $0x1,%rbx
  408b14:	49 39 df             	cmp    %rbx,%r15
  408b17:	75 b7                	jne    408ad0 <check_files+0x20>
  408b19:	40 b5 01             	mov    $0x1,%bpl
  408b1c:	eb 02                	jmp    408b20 <check_files+0x70>
  408b1e:	31 ed                	xor    %ebp,%ebp
	}
	return (true);
}
  408b20:	89 e8                	mov    %ebp,%eax
  408b22:	5b                   	pop    %rbx
  408b23:	41 5c                	pop    %r12
  408b25:	41 5e                	pop    %r14
  408b27:	41 5f                	pop    %r15
  408b29:	5d                   	pop    %rbp
  408b2a:	c3                   	ret    
  408b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000408b30 <check_errors>:
	}
	return (1);
}

bool	check_errors(t_map2 *map)
{
  408b30:	55                   	push   %rbp
  408b31:	41 57                	push   %r15
  408b33:	41 56                	push   %r14
  408b35:	53                   	push   %rbx
	int	i;
	int	width;
	int	height;

	if (!map || map->level_count == 0)
  408b36:	48 85 ff             	test   %rdi,%rdi
  408b39:	0f 84 b2 00 00 00    	je     408bf1 <check_errors+0xc1>
  408b3f:	44 8b 57 08          	mov    0x8(%rdi),%r10d
  408b43:	4d 85 d2             	test   %r10,%r10
  408b46:	0f 84 a5 00 00 00    	je     408bf1 <check_errors+0xc1>
  408b4c:	b0 01                	mov    $0x1,%al
		return (false);
	i = -1;
	width = map->width;
	height = map->height;
	while (++i < map->level_count)
  408b4e:	45 85 d2             	test   %r10d,%r10d
  408b51:	0f 8e 9c 00 00 00    	jle    408bf3 <check_errors+0xc3>
  408b57:	8b 57 0c             	mov    0xc(%rdi),%edx
  408b5a:	44 8b 47 10          	mov    0x10(%rdi),%r8d
  408b5e:	4c 63 fa             	movslq %edx,%r15
  408b61:	4c 8b 0f             	mov    (%rdi),%r9
  408b64:	41 8d 78 ff          	lea    -0x1(%r8),%edi
  408b68:	41 0f af ff          	imul   %r15d,%edi
  408b6c:	4e 8d 34 bd 00 00 00 	lea    0x0(,%r15,4),%r14
  408b73:	00 
  408b74:	45 31 db             	xor    %r11d,%r11d
		if (map->levels[i].width != width || map->levels[i].height != height
  408b77:	4b 8d 1c 5b          	lea    (%r11,%r11,2),%rbx
  408b7b:	48 c1 e3 04          	shl    $0x4,%rbx
  408b7f:	41 39 54 19 20       	cmp    %edx,0x20(%r9,%rbx,1)
  408b84:	75 6b                	jne    408bf1 <check_errors+0xc1>
  408b86:	45 39 44 19 24       	cmp    %r8d,0x24(%r9,%rbx,1)
			|| !_check_bounds(&map->levels[i]))
  408b8b:	75 64                	jne    408bf1 <check_errors+0xc1>
  408b8d:	85 d2                	test   %edx,%edx
	while (i < level->width)
  408b8f:	7e 2a                	jle    408bbb <check_errors+0x8b>
  408b91:	49 8b 4c 19 08       	mov    0x8(%r9,%rbx,1),%rcx
  408b96:	31 f6                	xor    %esi,%esi
  408b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408b9f:	00 
		if (_get_tile(level, i, 0) != TILE_SOLID
  408ba0:	83 3c b1 01          	cmpl   $0x1,(%rcx,%rsi,4)
			|| _get_tile(level, i, level->height - 1) != TILE_SOLID)
  408ba4:	75 4b                	jne    408bf1 <check_errors+0xc1>
	return (level->data[x + y * level->width]);
  408ba6:	8d 2c 37             	lea    (%rdi,%rsi,1),%ebp
  408ba9:	48 63 ed             	movslq %ebp,%rbp
			|| _get_tile(level, i, level->height - 1) != TILE_SOLID)
  408bac:	83 3c a9 01          	cmpl   $0x1,(%rcx,%rbp,4)
		if (_get_tile(level, i, 0) != TILE_SOLID
  408bb0:	75 3f                	jne    408bf1 <check_errors+0xc1>
  408bb2:	48 83 c6 01          	add    $0x1,%rsi
	while (i < level->width)
  408bb6:	48 39 f2             	cmp    %rsi,%rdx
  408bb9:	75 e5                	jne    408ba0 <check_errors+0x70>
  408bbb:	45 85 c0             	test   %r8d,%r8d
	while (i < level->height)
  408bbe:	7e 26                	jle    408be6 <check_errors+0xb6>
  408bc0:	49 8b 4c 19 08       	mov    0x8(%r9,%rbx,1),%rcx
  408bc5:	4c 89 c6             	mov    %r8,%rsi
  408bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408bcf:	00 
		if (_get_tile(level, 0, i) != TILE_SOLID
  408bd0:	83 39 01             	cmpl   $0x1,(%rcx)
			|| _get_tile(level, level->width - 1, i) != TILE_SOLID)
  408bd3:	75 1c                	jne    408bf1 <check_errors+0xc1>
  408bd5:	42 83 7c b9 fc 01    	cmpl   $0x1,-0x4(%rcx,%r15,4)
		if (_get_tile(level, 0, i) != TILE_SOLID
  408bdb:	75 14                	jne    408bf1 <check_errors+0xc1>
	while (i < level->height)
  408bdd:	4c 01 f1             	add    %r14,%rcx
  408be0:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
  408be4:	75 ea                	jne    408bd0 <check_errors+0xa0>
	while (++i < map->level_count)
  408be6:	49 83 c3 01          	add    $0x1,%r11
  408bea:	4d 39 d3             	cmp    %r10,%r11
  408bed:	75 88                	jne    408b77 <check_errors+0x47>
  408bef:	eb 02                	jmp    408bf3 <check_errors+0xc3>
  408bf1:	31 c0                	xor    %eax,%eax
			return (false);
	return (true);
}
  408bf3:	5b                   	pop    %rbx
  408bf4:	41 5e                	pop    %r14
  408bf6:	41 5f                	pop    %r15
  408bf8:	5d                   	pop    %rbp
  408bf9:	c3                   	ret    
  408bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408c00 <check_finish>:
	}
	return (level);
}

bool	check_finish(t_game *game, t_map2 *map)
{
  408c00:	55                   	push   %rbp
  408c01:	41 57                	push   %r15
  408c03:	41 56                	push   %r14
  408c05:	41 55                	push   %r13
  408c07:	41 54                	push   %r12
  408c09:	53                   	push   %rbx
  408c0a:	48 83 ec 48          	sub    $0x48,%rsp
  408c0e:	49 89 f4             	mov    %rsi,%r12
  408c11:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
	t_map_check	c;
	int			i;

	c.levels = ft_calloc(1, sizeof(char *) * (map->level_count + 1));
  408c16:	48 63 46 08          	movslq 0x8(%rsi),%rax
  408c1a:	48 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%rsi
  408c21:	00 
  408c22:	bf 01 00 00 00       	mov    $0x1,%edi
  408c27:	e8 74 48 00 00       	call   40d4a0 <ft_calloc>
  408c2c:	48 89 c3             	mov    %rax,%rbx
  408c2f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
	c.level_count = map->level_count;
  408c34:	45 8b 74 24 08       	mov    0x8(%r12),%r14d
  408c39:	44 89 74 24 18       	mov    %r14d,0x18(%rsp)
	c.width = map->width;
  408c3e:	45 8b 7c 24 0c       	mov    0xc(%r12),%r15d
  408c43:	44 89 7c 24 1c       	mov    %r15d,0x1c(%rsp)
	c.height = map->height;
  408c48:	41 8b 44 24 10       	mov    0x10(%r12),%eax
  408c4d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  408c51:	89 44 24 20          	mov    %eax,0x20(%rsp)
	c.collectibles = 0;
  408c55:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
  408c5c:	00 
	c.has_exit = false;
  408c5d:	c6 44 24 28 00       	movb   $0x0,0x28(%rsp)
	i = -1;
	while (++i < c.level_count)
  408c62:	45 85 f6             	test   %r14d,%r14d
  408c65:	0f 8e 8c 01 00 00    	jle    408df7 <check_finish+0x1f7>
		c.levels[i] = ft_strdup(map->levels[i].string);
  408c6b:	49 8b 04 24          	mov    (%r12),%rax
  408c6f:	48 8b 78 10          	mov    0x10(%rax),%rdi
  408c73:	e8 58 49 00 00       	call   40d5d0 <ft_strdup>
  408c78:	48 89 03             	mov    %rax,(%rbx)
	while (++i < c.level_count)
  408c7b:	41 83 fe 01          	cmp    $0x1,%r14d
  408c7f:	74 33                	je     408cb4 <check_finish+0xb4>
  408c81:	bd 01 00 00 00       	mov    $0x1,%ebp
  408c86:	bb 08 00 00 00       	mov    $0x8,%ebx
  408c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		c.levels[i] = ft_strdup(map->levels[i].string);
  408c90:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
  408c95:	49 8b 04 24          	mov    (%r12),%rax
  408c99:	48 8b 3c d8          	mov    (%rax,%rbx,8),%rdi
  408c9d:	e8 2e 49 00 00       	call   40d5d0 <ft_strdup>
  408ca2:	49 89 44 ed 00       	mov    %rax,0x0(%r13,%rbp,8)
	while (++i < c.level_count)
  408ca7:	48 83 c5 01          	add    $0x1,%rbp
  408cab:	48 83 c3 06          	add    $0x6,%rbx
  408caf:	49 39 ee             	cmp    %rbp,%r14
  408cb2:	75 dc                	jne    408c90 <check_finish+0x90>
  408cb4:	45 85 f6             	test   %r14d,%r14d
	i = -1;
	while (++i < c.level_count)
  408cb7:	0f 8e 3a 01 00 00    	jle    408df7 <check_finish+0x1f7>
  408cbd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  408cc4:	31 d2                	xor    %edx,%edx
	while (++x < width)
  408cc6:	45 85 ff             	test   %r15d,%r15d
  408cc9:	0f 8e 00 01 00 00    	jle    408dcf <check_finish+0x1cf>
  408ccf:	90                   	nop
  408cd0:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  408cd5:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  408cda:	4c 8b 14 d0          	mov    (%rax,%rdx,8),%r10
  408cde:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  408ce3:	48 8b 74 c8 10       	mov    0x10(%rax,%rcx,8),%rsi
  408ce8:	41 8d 47 01          	lea    0x1(%r15),%eax
  408cec:	48 63 f8             	movslq %eax,%rdi
  408cef:	45 89 fb             	mov    %r15d,%r11d
  408cf2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  408cf6:	49 89 f7             	mov    %rsi,%r15
  408cf9:	49 29 ff             	sub    %rdi,%r15
  408cfc:	48 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%rbp
  408d03:	4c 89 d2             	mov    %r10,%rdx
  408d06:	45 31 ed             	xor    %r13d,%r13d
  408d09:	eb 1e                	jmp    408d29 <check_finish+0x129>
  408d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408d10:	49 83 c5 01          	add    $0x1,%r13
  408d14:	48 83 c5 01          	add    $0x1,%rbp
  408d18:	49 83 c7 01          	add    $0x1,%r15
  408d1c:	48 83 c2 01          	add    $0x1,%rdx
  408d20:	4d 39 dd             	cmp    %r11,%r13
  408d23:	0f 84 97 00 00 00    	je     408dc0 <check_finish+0x1c0>
  408d29:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
		while (++y < height)
  408d2e:	7e e0                	jle    408d10 <check_finish+0x110>
  408d30:	4c 8d 65 02          	lea    0x2(%rbp),%r12
  408d34:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
  408d3b:	45 31 f6             	xor    %r14d,%r14d
  408d3e:	45 31 c0             	xor    %r8d,%r8d
  408d41:	eb 29                	jmp    408d6c <check_finish+0x16c>
  408d43:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  408d4a:	00 00 00 
  408d4d:	0f 1f 00             	nopl   (%rax)
				level[x + y * (width + 1)] = '1';
  408d50:	4d 01 e9             	add    %r13,%r9
  408d53:	43 c6 04 0a 31       	movb   $0x31,(%r10,%r9,1)
		while (++y < height)
  408d58:	49 83 c0 01          	add    $0x1,%r8
  408d5c:	49 01 fe             	add    %rdi,%r14
  408d5f:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
  408d63:	48 83 c3 01          	add    $0x1,%rbx
  408d67:	48 39 c1             	cmp    %rax,%rcx
  408d6a:	74 a4                	je     408d10 <check_finish+0x110>
  408d6c:	48 85 f6             	test   %rsi,%rsi
			if (upper != NULL && y - 1 >= 0
  408d6f:	74 1f                	je     408d90 <check_finish+0x190>
  408d71:	48 85 db             	test   %rbx,%rbx
  408d74:	78 1a                	js     408d90 <check_finish+0x190>
				&& upper[x + (y - 1) * (width + 1)] != '1'
  408d76:	43 80 3c 37 31       	cmpb   $0x31,(%r15,%r14,1)
				&& level[x + y * (width + 1)] != 'S')
  408d7b:	74 13                	je     408d90 <check_finish+0x190>
  408d7d:	42 80 3c 32 53       	cmpb   $0x53,(%rdx,%r14,1)
			if (upper != NULL && y - 1 >= 0
  408d82:	75 32                	jne    408db6 <check_finish+0x1b6>
  408d84:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  408d8b:	00 00 00 
  408d8e:	66 90                	xchg   %ax,%ax
  408d90:	48 85 ed             	test   %rbp,%rbp
			else if ((x - 1 >= 0 && level[(x - 1) + y * (width + 1)] == 'E')
  408d93:	78 0b                	js     408da0 <check_finish+0x1a0>
  408d95:	42 80 7c 32 ff 45    	cmpb   $0x45,-0x1(%rdx,%r14,1)
				level[x + y * (width + 1)] = '1';
  408d9b:	4d 89 f1             	mov    %r14,%r9
				|| (x + 1 < width && level[(x + 1) + y * (width + 1)] == 'E'))
  408d9e:	74 b0                	je     408d50 <check_finish+0x150>
  408da0:	4d 39 dc             	cmp    %r11,%r12
  408da3:	73 b3                	jae    408d58 <check_finish+0x158>
  408da5:	42 80 7c 32 01 45    	cmpb   $0x45,0x1(%rdx,%r14,1)
			else if ((x - 1 >= 0 && level[(x - 1) + y * (width + 1)] == 'E')
  408dab:	75 ab                	jne    408d58 <check_finish+0x158>
  408dad:	4d 89 c1             	mov    %r8,%r9
  408db0:	4c 0f af cf          	imul   %rdi,%r9
  408db4:	eb 9a                	jmp    408d50 <check_finish+0x150>
				level[x + y * (width + 1)] = '1';
  408db6:	42 c6 04 32 31       	movb   $0x31,(%rdx,%r14,1)
  408dbb:	eb 9b                	jmp    408d58 <check_finish+0x158>
  408dbd:	0f 1f 00             	nopl   (%rax)
	while (++i < c.level_count)
  408dc0:	44 8b 74 24 18       	mov    0x18(%rsp),%r14d
  408dc5:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
  408dca:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  408dcf:	48 83 c2 01          	add    $0x1,%rdx
  408dd3:	49 63 c6             	movslq %r14d,%rax
  408dd6:	48 39 c2             	cmp    %rax,%rdx
  408dd9:	7d 1c                	jge    408df7 <check_finish+0x1f7>
  408ddb:	48 83 c1 01          	add    $0x1,%rcx
		_preprocess(c.levels[i], c.levels[i + 1], c.width, c.height);
  408ddf:	44 8b 7c 24 1c       	mov    0x1c(%rsp),%r15d
  408de4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  408de8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
	while (++x < width)
  408dec:	45 85 ff             	test   %r15d,%r15d
  408def:	0f 8f db fe ff ff    	jg     408cd0 <check_finish+0xd0>
  408df5:	eb d8                	jmp    408dcf <check_finish+0x1cf>
  408df7:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
	_check_rec(&c, game->start_level, game->start_pos.x, game->start_pos.y);
  408dfc:	f3 0f 2c 95 f4 02 00 	cvttss2si 0x2f4(%rbp),%edx
  408e03:	00 
  408e04:	8b b5 fc 02 00 00    	mov    0x2fc(%rbp),%esi
  408e0a:	f3 0f 2c 8d f8 02 00 	cvttss2si 0x2f8(%rbp),%ecx
  408e11:	00 
  408e12:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  408e17:	e8 64 00 00 00       	call   408e80 <_check_rec>
	i = -1;
	while (++i < c.level_count)
  408e1c:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  408e21:	7e 29                	jle    408e4c <check_finish+0x24c>
  408e23:	31 db                	xor    %ebx,%ebx
  408e25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  408e2c:	00 00 00 
  408e2f:	90                   	nop
		free(c.levels[i]);
  408e30:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  408e35:	48 8b 3c d8          	mov    (%rax,%rbx,8),%rdi
  408e39:	e8 42 93 ff ff       	call   402180 <free@plt>
	while (++i < c.level_count)
  408e3e:	48 83 c3 01          	add    $0x1,%rbx
  408e42:	48 63 44 24 18       	movslq 0x18(%rsp),%rax
  408e47:	48 39 c3             	cmp    %rax,%rbx
  408e4a:	7c e4                	jl     408e30 <check_finish+0x230>
	free(c.levels);
  408e4c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  408e51:	e8 2a 93 ff ff       	call   402180 <free@plt>
	return (c.collectibles == game->collectibles_count
  408e56:	8b 4c 24 24          	mov    0x24(%rsp),%ecx
  408e5a:	31 c0                	xor    %eax,%eax
  408e5c:	85 c9                	test   %ecx,%ecx
		&& c.collectibles > 0 && c.has_exit);
  408e5e:	7e 10                	jle    408e70 <check_finish+0x270>
  408e60:	3b 8d 00 03 00 00    	cmp    0x300(%rbp),%ecx
  408e66:	75 08                	jne    408e70 <check_finish+0x270>
  408e68:	80 7c 24 28 00       	cmpb   $0x0,0x28(%rsp)
  408e6d:	0f 95 c0             	setne  %al
	return (c.collectibles == game->collectibles_count
  408e70:	48 83 c4 48          	add    $0x48,%rsp
  408e74:	5b                   	pop    %rbx
  408e75:	41 5c                	pop    %r12
  408e77:	41 5d                	pop    %r13
  408e79:	41 5e                	pop    %r14
  408e7b:	41 5f                	pop    %r15
  408e7d:	5d                   	pop    %rbp
  408e7e:	c3                   	ret    
  408e7f:	90                   	nop

0000000000408e80 <_check_rec>:
{
  408e80:	55                   	push   %rbp
  408e81:	41 57                	push   %r15
  408e83:	41 56                	push   %r14
  408e85:	41 55                	push   %r13
  408e87:	41 54                	push   %r12
  408e89:	53                   	push   %rbx
  408e8a:	48 83 ec 18          	sub    $0x18,%rsp
  408e8e:	89 0c 24             	mov    %ecx,(%rsp)
  408e91:	85 d2                	test   %edx,%edx
		_check_rec(check, level, x, y + 1);
  408e93:	0f 88 72 01 00 00    	js     40900b <_check_rec+0x18b>
  408e99:	89 d3                	mov    %edx,%ebx
  408e9b:	41 89 f7             	mov    %esi,%r15d
  408e9e:	48 89 fd             	mov    %rdi,%rbp
  408ea1:	8d 43 ff             	lea    -0x1(%rbx),%eax
  408ea4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  408ea8:	8d 43 01             	lea    0x1(%rbx),%eax
  408eab:	89 44 24 08          	mov    %eax,0x8(%rsp)
  408eaf:	41 8d 47 01          	lea    0x1(%r15),%eax
  408eb3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  408eb7:	41 8d 47 ff          	lea    -0x1(%r15),%eax
  408ebb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  408ec0:	4c 63 ee             	movslq %esi,%r13
	if (x < 0 || x >= check->width || y < 0 || y >= check->height
  408ec3:	8b 47 0c             	mov    0xc(%rdi),%eax
  408ec6:	8b 0c 24             	mov    (%rsp),%ecx
  408ec9:	41 89 cc             	mov    %ecx,%r12d
  408ecc:	eb 2d                	jmp    408efb <_check_rec+0x7b>
  408ece:	66 90                	xchg   %ax,%ax
	if (check->levels[level][x + (y + 1) * (check->width + 1)] != 'E')
  408ed0:	41 83 c4 01          	add    $0x1,%r12d
  408ed4:	45 89 e6             	mov    %r12d,%r14d
  408ed7:	48 8b 45 00          	mov    0x0(%rbp),%rax
  408edb:	4a 8b 0c e8          	mov    (%rax,%r13,8),%rcx
  408edf:	8b 45 0c             	mov    0xc(%rbp),%eax
  408ee2:	8d 50 01             	lea    0x1(%rax),%edx
  408ee5:	41 0f af d6          	imul   %r14d,%edx
  408ee9:	01 da                	add    %ebx,%edx
  408eeb:	48 63 d2             	movslq %edx,%rdx
  408eee:	80 3c 11 45          	cmpb   $0x45,(%rcx,%rdx,1)
  408ef2:	45 89 f4             	mov    %r14d,%r12d
  408ef5:	0f 84 10 01 00 00    	je     40900b <_check_rec+0x18b>
  408efb:	83 3c 24 00          	cmpl   $0x0,(%rsp)
	if (x < 0 || x >= check->width || y < 0 || y >= check->height
  408eff:	0f 88 06 01 00 00    	js     40900b <_check_rec+0x18b>
  408f05:	39 d8                	cmp    %ebx,%eax
  408f07:	0f 8e fe 00 00 00    	jle    40900b <_check_rec+0x18b>
  408f0d:	44 39 65 10          	cmp    %r12d,0x10(%rbp)
		|| level >= check->level_count
  408f11:	0f 8e f4 00 00 00    	jle    40900b <_check_rec+0x18b>
  408f17:	44 39 7d 08          	cmp    %r15d,0x8(%rbp)
		|| _is_tile_solid(check, level, x, y))
  408f1b:	0f 8e ea 00 00 00    	jle    40900b <_check_rec+0x18b>
	index = x + y * (check->width + 1);
  408f21:	83 c0 01             	add    $0x1,%eax
  408f24:	41 0f af c4          	imul   %r12d,%eax
  408f28:	01 d8                	add    %ebx,%eax
	return (check->levels[level][index] == '1'
  408f2a:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
  408f2e:	4a 8b 0c e9          	mov    (%rcx,%r13,8),%rcx
  408f32:	48 98                	cltq   
  408f34:	0f b6 14 01          	movzbl (%rcx,%rax,1),%edx
	if (x < 0 || x >= check->width || y < 0 || y >= check->height
  408f38:	80 c2 cf             	add    $0xcf,%dl
  408f3b:	80 fa 22             	cmp    $0x22,%dl
  408f3e:	77 17                	ja     408f57 <_check_rec+0xd7>
  408f40:	0f b6 d2             	movzbl %dl,%edx
  408f43:	48 8d 35 0a 72 00 00 	lea    0x720a(%rip),%rsi        # 410154 <_IO_stdin_used+0x1154>
  408f4a:	48 63 14 96          	movslq (%rsi,%rdx,4),%rdx
  408f4e:	48 01 f2             	add    %rsi,%rdx
  408f51:	ff e2                	jmp    *%rdx
		check->collectibles++;
  408f53:	83 45 14 01          	addl   $0x1,0x14(%rbp)
	check->levels[level][index] = '1';
  408f57:	c6 04 01 31          	movb   $0x31,(%rcx,%rax,1)
	_check_rec(check, level, x - 1, y);
  408f5b:	48 89 ef             	mov    %rbp,%rdi
  408f5e:	44 89 fe             	mov    %r15d,%esi
  408f61:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  408f65:	44 89 e1             	mov    %r12d,%ecx
  408f68:	e8 13 ff ff ff       	call   408e80 <_check_rec>
	_check_rec(check, level, x + 1, y);
  408f6d:	48 89 ef             	mov    %rbp,%rdi
  408f70:	44 89 fe             	mov    %r15d,%esi
  408f73:	8b 54 24 08          	mov    0x8(%rsp),%edx
  408f77:	44 89 e1             	mov    %r12d,%ecx
  408f7a:	e8 01 ff ff ff       	call   408e80 <_check_rec>
	if (check->levels[level][x + (y - 1) * (check->width + 1)] == 'S')
  408f7f:	48 8b 45 00          	mov    0x0(%rbp),%rax
  408f83:	4a 8b 04 e8          	mov    (%rax,%r13,8),%rax
  408f87:	41 8d 4c 24 ff       	lea    -0x1(%r12),%ecx
  408f8c:	8b 55 0c             	mov    0xc(%rbp),%edx
  408f8f:	83 c2 01             	add    $0x1,%edx
  408f92:	0f af d1             	imul   %ecx,%edx
  408f95:	01 da                	add    %ebx,%edx
  408f97:	48 63 d2             	movslq %edx,%rdx
  408f9a:	80 3c 10 53          	cmpb   $0x53,(%rax,%rdx,1)
  408f9e:	75 10                	jne    408fb0 <_check_rec+0x130>
		_check_rec(check, level + 1, x, y - 2);
  408fa0:	41 8d 4c 24 fe       	lea    -0x2(%r12),%ecx
  408fa5:	48 89 ef             	mov    %rbp,%rdi
  408fa8:	8b 74 24 04          	mov    0x4(%rsp),%esi
  408fac:	eb 08                	jmp    408fb6 <_check_rec+0x136>
  408fae:	66 90                	xchg   %ax,%ax
		_check_rec(check, level, x, y - 1);
  408fb0:	48 89 ef             	mov    %rbp,%rdi
  408fb3:	44 89 fe             	mov    %r15d,%esi
  408fb6:	89 da                	mov    %ebx,%edx
  408fb8:	e8 c3 fe ff ff       	call   408e80 <_check_rec>
  408fbd:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  408fc2:	45 85 ff             	test   %r15d,%r15d
	if (level > 0 && check->levels[level - 1][x + (y + 1)
  408fc5:	0f 8e 05 ff ff ff    	jle    408ed0 <_check_rec+0x50>
  408fcb:	48 8b 45 00          	mov    0x0(%rbp),%rax
  408fcf:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
  408fd3:	45 8d 74 24 01       	lea    0x1(%r12),%r14d
		* (check->width + 1)] == 'S')
  408fd8:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  408fdb:	83 c1 01             	add    $0x1,%ecx
  408fde:	41 0f af ce          	imul   %r14d,%ecx
	if (level > 0 && check->levels[level - 1][x + (y + 1)
  408fe2:	01 d9                	add    %ebx,%ecx
  408fe4:	48 63 c9             	movslq %ecx,%rcx
		* (check->width + 1)] == 'S')
  408fe7:	80 3c 08 53          	cmpb   $0x53,(%rax,%rcx,1)
	if (level > 0 && check->levels[level - 1][x + (y + 1)
  408feb:	0f 85 e6 fe ff ff    	jne    408ed7 <_check_rec+0x57>
		_check_rec(check, level - 1, x, y + 2);
  408ff1:	41 83 c4 02          	add    $0x2,%r12d
  408ff5:	48 89 ef             	mov    %rbp,%rdi
  408ff8:	89 da                	mov    %ebx,%edx
  408ffa:	44 89 e1             	mov    %r12d,%ecx
  408ffd:	e8 7e fe ff ff       	call   408e80 <_check_rec>
  409002:	e9 d0 fe ff ff       	jmp    408ed7 <_check_rec+0x57>
		check->has_exit = true;
  409007:	c6 45 18 01          	movb   $0x1,0x18(%rbp)
}
  40900b:	48 83 c4 18          	add    $0x18,%rsp
  40900f:	5b                   	pop    %rbx
  409010:	41 5c                	pop    %r12
  409012:	41 5d                	pop    %r13
  409014:	41 5e                	pop    %r14
  409016:	41 5f                	pop    %r15
  409018:	5d                   	pop    %rbp
  409019:	c3                   	ret    
  40901a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000409020 <line_width_and_check>:
/* ************************************************************************** */

#include "../so_long.h"

int	line_width_and_check(char *str)
{
  409020:	31 c9                	xor    %ecx,%ecx
  409022:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  409027:	eb 0d                	jmp    409036 <line_width_and_check+0x16>
  409029:	89 c8                	mov    %ecx,%eax
  40902b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	int	len;

	i = 0;
	first_len = -1;
	len = 0;
	while (str[i])
  409030:	48 83 c7 01          	add    $0x1,%rdi
  409034:	89 d1                	mov    %edx,%ecx
  409036:	0f b6 17             	movzbl (%rdi),%edx
  409039:	80 fa 0a             	cmp    $0xa,%dl
  40903c:	74 12                	je     409050 <line_width_and_check+0x30>
  40903e:	84 d2                	test   %dl,%dl
  409040:	74 1e                	je     409060 <line_width_and_check+0x40>
			else if (first_len != len)
				return (-1);
			len = 0;
		}
		else
			len++;
  409042:	83 c1 01             	add    $0x1,%ecx
  409045:	89 ca                	mov    %ecx,%edx
  409047:	eb e7                	jmp    409030 <line_width_and_check+0x10>
  409049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409050:	31 d2                	xor    %edx,%edx
			if (first_len == -1)
  409052:	83 f8 ff             	cmp    $0xffffffff,%eax
  409055:	74 d2                	je     409029 <line_width_and_check+0x9>
			else if (first_len != len)
  409057:	39 c8                	cmp    %ecx,%eax
  409059:	74 d5                	je     409030 <line_width_and_check+0x10>
  40905b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
		i++;
	}
	return (first_len);
}
  409060:	c3                   	ret    
  409061:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409068:	00 00 00 
  40906b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409070 <line_count>:

int	line_count(char *str)
{
  409070:	31 c0                	xor    %eax,%eax
  409072:	eb 13                	jmp    409087 <line_count+0x17>
  409074:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40907b:	00 00 00 
  40907e:	66 90                	xchg   %ax,%ax
	i = 0;
	count = 0;
	while (str[i])
	{
		if (str[i] == '\n')
			count++;
  409080:	83 c0 01             	add    $0x1,%eax
	while (str[i])
  409083:	48 83 c7 01          	add    $0x1,%rdi
  409087:	0f b6 0f             	movzbl (%rdi),%ecx
  40908a:	80 f9 0a             	cmp    $0xa,%cl
  40908d:	74 f1                	je     409080 <line_count+0x10>
  40908f:	84 c9                	test   %cl,%cl
  409091:	75 f0                	jne    409083 <line_count+0x13>
		i++;
	}
	return (count);
  409093:	c3                   	ret    
  409094:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40909b:	00 00 00 
  40909e:	66 90                	xchg   %ax,%ax

00000000004090a0 <check_borders>:
bool	check_borders(t_level *map)
{
	int	i;

	i = 0;
	while (i < map->width)
  4090a0:	4c 63 4f 20          	movslq 0x20(%rdi),%r9
  4090a4:	4d 85 c9             	test   %r9,%r9
  4090a7:	7e 2d                	jle    4090d6 <check_borders+0x36>
  4090a9:	48 8b 47 08          	mov    0x8(%rdi),%rax
  4090ad:	31 f6                	xor    %esi,%esi
  4090af:	90                   	nop
	{
		if (map->data[i] != TILE_SOLID)
  4090b0:	83 3c b0 01          	cmpl   $0x1,(%rax,%rsi,4)
  4090b4:	75 62                	jne    409118 <check_borders+0x78>
			return (false);
		else if (map->data[i + (map->height - 1) * map->width] != TILE_SOLID)
  4090b6:	8b 57 24             	mov    0x24(%rdi),%edx
  4090b9:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  4090bc:	41 0f af c9          	imul   %r9d,%ecx
  4090c0:	01 f1                	add    %esi,%ecx
  4090c2:	48 63 c9             	movslq %ecx,%rcx
  4090c5:	83 3c 88 01          	cmpl   $0x1,(%rax,%rcx,4)
  4090c9:	75 4d                	jne    409118 <check_borders+0x78>
  4090cb:	48 83 c6 01          	add    $0x1,%rsi
	while (i < map->width)
  4090cf:	4c 39 ce             	cmp    %r9,%rsi
  4090d2:	7c dc                	jl     4090b0 <check_borders+0x10>
  4090d4:	eb 03                	jmp    4090d9 <check_borders+0x39>
			return (false);
		i++;
	}
	i = 0;
	while (i < map->height)
  4090d6:	8b 57 24             	mov    0x24(%rdi),%edx
  4090d9:	b0 01                	mov    $0x1,%al
  4090db:	85 d2                	test   %edx,%edx
  4090dd:	7e 38                	jle    409117 <check_borders+0x77>
	{
		if (map->data[i * map->width] != TILE_SOLID)
			return (false);
		else if (map->data[(map->width - 1) + i * map->width] != TILE_SOLID)
  4090df:	45 8d 41 ff          	lea    -0x1(%r9),%r8d
  4090e3:	48 8b 77 08          	mov    0x8(%rdi),%rsi
	while (i < map->height)
  4090e7:	49 63 f8             	movslq %r8d,%rdi
  4090ea:	4c 63 c2             	movslq %edx,%r8
  4090ed:	49 c1 e1 02          	shl    $0x2,%r9
  4090f1:	31 d2                	xor    %edx,%edx
  4090f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4090fa:	00 00 00 
  4090fd:	0f 1f 00             	nopl   (%rax)
		if (map->data[i * map->width] != TILE_SOLID)
  409100:	83 3e 01             	cmpl   $0x1,(%rsi)
  409103:	75 13                	jne    409118 <check_borders+0x78>
		else if (map->data[(map->width - 1) + i * map->width] != TILE_SOLID)
  409105:	83 3c be 01          	cmpl   $0x1,(%rsi,%rdi,4)
  409109:	75 0d                	jne    409118 <check_borders+0x78>
  40910b:	48 83 c2 01          	add    $0x1,%rdx
	while (i < map->height)
  40910f:	4c 01 ce             	add    %r9,%rsi
  409112:	4c 39 c2             	cmp    %r8,%rdx
  409115:	7c e9                	jl     409100 <check_borders+0x60>
			return (false);
		i++;
	}
	return (true);
}
  409117:	c3                   	ret    
  409118:	31 c0                	xor    %eax,%eax
  40911a:	c3                   	ret    
  40911b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409120 <map2_free>:
/* ************************************************************************** */

#include "../so_long.h"

void	map2_free(t_map2 *map)
{
  409120:	41 57                	push   %r15
  409122:	41 56                	push   %r14
  409124:	53                   	push   %rbx
  409125:	49 89 fe             	mov    %rdi,%r14
	int	i;

	i = -1;
	while (++i < map->level_count)
  409128:	83 7f 08 00          	cmpl   $0x0,0x8(%rdi)
  40912c:	7e 3d                	jle    40916b <map2_free+0x4b>
  40912e:	31 db                	xor    %ebx,%ebx
  409130:	45 31 ff             	xor    %r15d,%r15d
  409133:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40913a:	00 00 00 
  40913d:	0f 1f 00             	nopl   (%rax)
	{
		free(map->levels[i].string);
  409140:	49 8b 06             	mov    (%r14),%rax
  409143:	48 8b 7c 18 10       	mov    0x10(%rax,%rbx,1),%rdi
  409148:	e8 33 90 ff ff       	call   402180 <free@plt>
		free(map->levels[i].data);
  40914d:	49 8b 06             	mov    (%r14),%rax
  409150:	48 8b 7c 18 08       	mov    0x8(%rax,%rbx,1),%rdi
  409155:	e8 26 90 ff ff       	call   402180 <free@plt>
	while (++i < map->level_count)
  40915a:	49 83 c7 01          	add    $0x1,%r15
  40915e:	49 63 46 08          	movslq 0x8(%r14),%rax
  409162:	48 83 c3 30          	add    $0x30,%rbx
  409166:	49 39 c7             	cmp    %rax,%r15
  409169:	7c d5                	jl     409140 <map2_free+0x20>
	}
	free(map->levels);
  40916b:	49 8b 3e             	mov    (%r14),%rdi
  40916e:	e8 0d 90 ff ff       	call   402180 <free@plt>
	free(map);
  409173:	4c 89 f7             	mov    %r14,%rdi
  409176:	5b                   	pop    %rbx
  409177:	41 5e                	pop    %r14
  409179:	41 5f                	pop    %r15
  40917b:	e9 00 90 ff ff       	jmp    402180 <free@plt>

0000000000409180 <draw_empty>:
	rdr_add_sprite(g->rdr, get_ground_tile(g, &g->map2->levels[0], x, y),
		(t_vec2){x * 64, y * 64}, (t_add_sprite){-1, 0, false, true});
}

void	draw_empty(t_game *g, int index, int x, int y)
{
  409180:	55                   	push   %rbp
  409181:	41 57                	push   %r15
  409183:	41 56                	push   %r14
  409185:	41 55                	push   %r13
  409187:	41 54                	push   %r12
  409189:	53                   	push   %rbx
  40918a:	48 83 ec 48          	sub    $0x48,%rsp
  40918e:	41 89 cf             	mov    %ecx,%r15d
  409191:	89 d3                	mov    %edx,%ebx
  409193:	49 89 fc             	mov    %rdi,%r12
	if (index == 0)
  409196:	85 f6                	test   %esi,%esi
  409198:	89 54 24 0c          	mov    %edx,0xc(%rsp)
  40919c:	0f 84 24 01 00 00    	je     4092c6 <draw_empty+0x146>
  4091a2:	89 f5                	mov    %esi,%ebp
	rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_TLR],
  4091a4:	49 8b 44 24 30       	mov    0x30(%r12),%rax
  4091a9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
	level = &g->map2->levels[index];
  4091ae:	49 8b 44 24 50       	mov    0x50(%r12),%rax
  4091b3:	4c 8b 30             	mov    (%rax),%r14
	level1 = &g->map2->levels[index - 1];
  4091b6:	8d 45 ff             	lea    -0x1(%rbp),%eax
  4091b9:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4091be:	48 98                	cltq   
  4091c0:	48 89 04 24          	mov    %rax,(%rsp)
	rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_TLR],
  4091c4:	4c 89 e7             	mov    %r12,%rdi
  4091c7:	e8 14 b4 ff ff       	call   4045e0 <sp>
		(t_vec2){x * 64, y * 64}, (t_add_sprite){9, index,
  4091cc:	89 d9                	mov    %ebx,%ecx
  4091ce:	c1 e1 06             	shl    $0x6,%ecx
  4091d1:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  4091d5:	44 89 f9             	mov    %r15d,%ecx
  4091d8:	c1 e1 06             	shl    $0x6,%ecx
  4091db:	f3 0f 2a c9          	cvtsi2ss %ecx,%xmm1
	rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_TLR],
  4091df:	48 8b b0 58 01 00 00 	mov    0x158(%rax),%rsi
  4091e6:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
		(t_vec2){x * 64, y * 64}, (t_add_sprite){9, index,
  4091eb:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4091ee:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
	rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_TLR],
  4091f3:	49 89 ed             	mov    %rbp,%r13
  4091f6:	49 c1 e5 20          	shl    $0x20,%r13
  4091fa:	49 8d 55 09          	lea    0x9(%r13),%rdx
  4091fe:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  409203:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  409208:	b9 00 01 00 00       	mov    $0x100,%ecx
  40920d:	e8 0e 17 00 00       	call   40a920 <rdr_add_sprite>
  409212:	48 8b 04 24          	mov    (%rsp),%rax
	if (level1->data[x + (y + 1) * level1->width] != TILE_STAIR)
  409216:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  40921a:	48 c1 e0 04          	shl    $0x4,%rax
  40921e:	49 8b 4c 06 08       	mov    0x8(%r14,%rax,1),%rcx
  409223:	4c 89 3c 24          	mov    %r15,(%rsp)
  409227:	41 83 c7 01          	add    $0x1,%r15d
  40922b:	4c 89 f5             	mov    %r14,%rbp
  40922e:	41 8b 44 06 20       	mov    0x20(%r14,%rax,1),%eax
  409233:	41 0f af c7          	imul   %r15d,%eax
  409237:	01 d8                	add    %ebx,%eax
  409239:	48 98                	cltq   
  40923b:	83 3c 81 05          	cmpl   $0x5,(%rcx,%rax,4)
  40923f:	74 46                	je     409287 <draw_empty+0x107>
		rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_SIDE_ALL],
  409241:	49 8b 5c 24 30       	mov    0x30(%r12),%rbx
  409246:	4c 89 e7             	mov    %r12,%rdi
  409249:	e8 92 b3 ff ff       	call   4045e0 <sp>
  40924e:	48 8b b0 a8 01 00 00 	mov    0x1a8(%rax),%rsi
			(t_vec2){x * 64, (y + 1) * 64}, (t_add_sprite){11,
  409255:	41 c1 e7 06          	shl    $0x6,%r15d
  409259:	0f 57 c0             	xorps  %xmm0,%xmm0
  40925c:	f3 41 0f 2a c7       	cvtsi2ss %r15d,%xmm0
  409261:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
		rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_SIDE_ALL],
  409266:	48 c1 e2 20          	shl    $0x20,%rdx
  40926a:	48 83 ca 0b          	or     $0xb,%rdx
  40926e:	0f 28 4c 24 30       	movaps 0x30(%rsp),%xmm1
  409273:	0f 16 c1             	movlhps %xmm1,%xmm0
  409276:	0f c6 c1 e2          	shufps $0xe2,%xmm1,%xmm0
  40927a:	48 89 df             	mov    %rbx,%rdi
  40927d:	b9 00 01 00 00       	mov    $0x100,%ecx
  409282:	e8 99 16 00 00       	call   40a920 <rdr_add_sprite>
	level = &g->map2->levels[index];
  409287:	48 63 44 24 28       	movslq 0x28(%rsp),%rax
  40928c:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  409290:	48 c1 e0 04          	shl    $0x4,%rax
  409294:	48 01 c5             	add    %rax,%rbp
	rdr_add_sprite(g->rdr, get_ground_tile(g, level, x, y),
  409297:	4d 8b 74 24 30       	mov    0x30(%r12),%r14
  40929c:	4c 89 e7             	mov    %r12,%rdi
  40929f:	48 89 ee             	mov    %rbp,%rsi
  4092a2:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  4092a6:	48 8b 0c 24          	mov    (%rsp),%rcx
  4092aa:	e8 91 e6 ff ff       	call   407940 <get_ground_tile>
  4092af:	49 83 cd 0a          	or     $0xa,%r13
  4092b3:	4c 89 f7             	mov    %r14,%rdi
  4092b6:	48 89 c6             	mov    %rax,%rsi
  4092b9:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  4092be:	4c 89 ea             	mov    %r13,%rdx
  4092c1:	e9 8f 00 00 00       	jmp    409355 <draw_empty+0x1d5>
	rdr_add_sprite(g->rdr, anim_get_sprite(g->foam_anim),
  4092c6:	49 8b 44 24 30       	mov    0x30(%r12),%rax
  4092cb:	48 89 04 24          	mov    %rax,(%rsp)
  4092cf:	49 8b bc 24 40 03 00 	mov    0x340(%r12),%rdi
  4092d6:	00 
  4092d7:	e8 14 d4 ff ff       	call   4066f0 <anim_get_sprite>
		(t_vec2){x * 64 - 64, y * 64 - 64}, (t_add_sprite){-2, 0, false, true});
  4092dc:	41 89 de             	mov    %ebx,%r14d
  4092df:	41 c1 e6 06          	shl    $0x6,%r14d
  4092e3:	41 8d 4e c0          	lea    -0x40(%r14),%ecx
  4092e7:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  4092eb:	4d 89 fd             	mov    %r15,%r13
  4092ee:	44 89 ed             	mov    %r13d,%ebp
  4092f1:	c1 e5 06             	shl    $0x6,%ebp
  4092f4:	8d 4d c0             	lea    -0x40(%rbp),%ecx
  4092f7:	f3 0f 2a c9          	cvtsi2ss %ecx,%xmm1
	rdr_add_sprite(g->rdr, anim_get_sprite(g->foam_anim),
  4092fb:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4092fe:	41 bf fe ff ff ff    	mov    $0xfffffffe,%r15d
  409304:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
  409309:	48 8b 3c 24          	mov    (%rsp),%rdi
  40930d:	48 89 c6             	mov    %rax,%rsi
  409310:	b9 00 01 00 00       	mov    $0x100,%ecx
  409315:	e8 06 16 00 00       	call   40a920 <rdr_add_sprite>
	rdr_add_sprite(g->rdr, get_ground_tile(g, &g->map2->levels[0], x, y),
  40931a:	49 8b 5c 24 30       	mov    0x30(%r12),%rbx
  40931f:	49 8b 44 24 50       	mov    0x50(%r12),%rax
  409324:	48 8b 30             	mov    (%rax),%rsi
  409327:	4c 89 e7             	mov    %r12,%rdi
  40932a:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40932e:	44 89 e9             	mov    %r13d,%ecx
  409331:	e8 0a e6 ff ff       	call   407940 <get_ground_tile>
		(t_vec2){x * 64, y * 64}, (t_add_sprite){-1, 0, false, true});
  409336:	0f 57 c0             	xorps  %xmm0,%xmm0
  409339:	f3 41 0f 2a c6       	cvtsi2ss %r14d,%xmm0
  40933e:	0f 57 c9             	xorps  %xmm1,%xmm1
  409341:	f3 0f 2a cd          	cvtsi2ss %ebp,%xmm1
	rdr_add_sprite(g->rdr, get_ground_tile(g, &g->map2->levels[0], x, y),
  409345:	0f 14 c1             	unpcklps %xmm1,%xmm0
  409348:	49 83 cf 01          	or     $0x1,%r15
  40934c:	48 89 df             	mov    %rbx,%rdi
  40934f:	48 89 c6             	mov    %rax,%rsi
  409352:	4c 89 fa             	mov    %r15,%rdx
  409355:	b9 00 01 00 00       	mov    $0x100,%ecx
  40935a:	48 83 c4 48          	add    $0x48,%rsp
  40935e:	5b                   	pop    %rbx
  40935f:	41 5c                	pop    %r12
  409361:	41 5d                	pop    %r13
  409363:	41 5e                	pop    %r14
  409365:	41 5f                	pop    %r15
  409367:	5d                   	pop    %rbp
  409368:	e9 b3 15 00 00       	jmp    40a920 <rdr_add_sprite>
  40936d:	0f 1f 00             	nopl   (%rax)

0000000000409370 <draw_door>:
	else
		_draw_elevated_tile(g, index, x, y);
}

void	draw_door(t_game *g, int index, int x, int y)
{
  409370:	55                   	push   %rbp
  409371:	41 57                	push   %r15
  409373:	41 56                	push   %r14
  409375:	41 55                	push   %r13
  409377:	41 54                	push   %r12
  409379:	53                   	push   %rbx
  40937a:	50                   	push   %rax
  40937b:	41 89 cf             	mov    %ecx,%r15d
  40937e:	89 d3                	mov    %edx,%ebx
  409380:	41 89 f6             	mov    %esi,%r14d
  409383:	48 89 fd             	mov    %rdi,%rbp
	draw_empty(g, index, x, y);
  409386:	e8 f5 fd ff ff       	call   409180 <draw_empty>
	if (g->collectibles != g->collectibles_count)
  40938b:	8b 85 04 03 00 00    	mov    0x304(%rbp),%eax
  409391:	45 31 ed             	xor    %r13d,%r13d
  409394:	3b 85 00 03 00 00    	cmp    0x300(%rbp),%eax
  40939a:	41 0f 95 c5          	setne  %r13b
  40939e:	4c 8b 65 30          	mov    0x30(%rbp),%r12
  4093a2:	48 89 ef             	mov    %rbp,%rdi
  4093a5:	e8 36 b2 ff ff       	call   4045e0 <sp>
  4093aa:	4a 8b b4 e8 98 03 00 	mov    0x398(%rax,%r13,8),%rsi
  4093b1:	00 
  4093b2:	c1 e3 06             	shl    $0x6,%ebx
  4093b5:	83 c3 c0             	add    $0xffffffc0,%ebx
  4093b8:	f3 0f 2a c3          	cvtsi2ss %ebx,%xmm0
  4093bc:	41 c1 e7 06          	shl    $0x6,%r15d
  4093c0:	41 83 c7 e0          	add    $0xffffffe0,%r15d
  4093c4:	f3 41 0f 2a cf       	cvtsi2ss %r15d,%xmm1
  4093c9:	0f 14 c1             	unpcklps %xmm1,%xmm0
  4093cc:	49 c1 e6 20          	shl    $0x20,%r14
  4093d0:	49 83 ce 0e          	or     $0xe,%r14
  4093d4:	4c 89 e7             	mov    %r12,%rdi
  4093d7:	4c 89 f2             	mov    %r14,%rdx
  4093da:	b9 00 01 00 00       	mov    $0x100,%ecx
  4093df:	48 83 c4 08          	add    $0x8,%rsp
  4093e3:	5b                   	pop    %rbx
  4093e4:	41 5c                	pop    %r12
  4093e6:	41 5d                	pop    %r13
  4093e8:	41 5e                	pop    %r14
  4093ea:	41 5f                	pop    %r15
  4093ec:	5d                   	pop    %rbp
  4093ed:	e9 2e 15 00 00       	jmp    40a920 <rdr_add_sprite>
  4093f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4093f9:	00 00 00 
  4093fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409400 <draw_stair>:
			(t_vec2){x * 64 - 64, y * 64 - 32}, (t_add_sprite){14,
			index, false, true});
}

void	draw_stair(t_game *g, int index, int x, int y)
{
  409400:	55                   	push   %rbp
  409401:	41 57                	push   %r15
  409403:	41 56                	push   %r14
  409405:	41 54                	push   %r12
  409407:	53                   	push   %rbx
  409408:	41 89 ce             	mov    %ecx,%r14d
  40940b:	41 89 d7             	mov    %edx,%r15d
  40940e:	89 f3                	mov    %esi,%ebx
  409410:	48 89 fd             	mov    %rdi,%rbp
	rdr_add_sprite(g->rdr, sp(g)[SP_STAIR_ALL],
  409413:	4c 8b 67 30          	mov    0x30(%rdi),%r12
  409417:	e8 c4 b1 ff ff       	call   4045e0 <sp>
		(t_vec2){x * 64, y * 64}, (t_add_sprite){10, index, false, true});
  40941c:	44 89 f9             	mov    %r15d,%ecx
  40941f:	c1 e1 06             	shl    $0x6,%ecx
  409422:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  409426:	44 89 f1             	mov    %r14d,%ecx
  409429:	c1 e1 06             	shl    $0x6,%ecx
  40942c:	f3 0f 2a c9          	cvtsi2ss %ecx,%xmm1
	rdr_add_sprite(g->rdr, sp(g)[SP_STAIR_ALL],
  409430:	48 8b b0 c8 01 00 00 	mov    0x1c8(%rax),%rsi
  409437:	0f 14 c1             	unpcklps %xmm1,%xmm0
  40943a:	48 89 da             	mov    %rbx,%rdx
  40943d:	48 c1 e2 20          	shl    $0x20,%rdx
  409441:	48 83 ca 0a          	or     $0xa,%rdx
  409445:	4c 89 e7             	mov    %r12,%rdi
  409448:	b9 00 01 00 00       	mov    $0x100,%ecx
  40944d:	e8 ce 14 00 00       	call   40a920 <rdr_add_sprite>
	draw_empty(g, index, x, y);
  409452:	48 89 ef             	mov    %rbp,%rdi
  409455:	89 de                	mov    %ebx,%esi
  409457:	44 89 fa             	mov    %r15d,%edx
  40945a:	44 89 f1             	mov    %r14d,%ecx
  40945d:	5b                   	pop    %rbx
  40945e:	41 5c                	pop    %r12
  409460:	41 5e                	pop    %r14
  409462:	41 5f                	pop    %r15
  409464:	5d                   	pop    %rbp
  409465:	e9 16 fd ff ff       	jmp    409180 <draw_empty>
  40946a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000409470 <player_new>:
		return (g->goblin_atk_side);
	return (NULL);
}

t_entity	*player_new(t_game *game, t_vec2 pos, int level, bool is_player2)
{
  409470:	55                   	push   %rbp
  409471:	41 57                	push   %r15
  409473:	41 56                	push   %r14
  409475:	41 54                	push   %r12
  409477:	53                   	push   %rbx
  409478:	48 83 ec 10          	sub    $0x10,%rsp
  40947c:	41 89 d7             	mov    %edx,%r15d
  40947f:	41 89 f6             	mov    %esi,%r14d
  409482:	0f 29 04 24          	movaps %xmm0,(%rsp)
  409486:	49 89 fc             	mov    %rdi,%r12
	t_entity	*player;
	t_player	*ext;

	player = ft_calloc(1, sizeof(t_entity));
  409489:	bf 01 00 00 00       	mov    $0x1,%edi
  40948e:	be 70 00 00 00       	mov    $0x70,%esi
  409493:	e8 08 40 00 00       	call   40d4a0 <ft_calloc>
  409498:	48 89 c3             	mov    %rax,%rbx
	player->game = game;
  40949b:	4c 89 20             	mov    %r12,(%rax)
	player->type = ETYPE_PLAYER;
  40949e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
	player->state = STATE_ALIVE;
  4094a5:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%rax)
  4094ac:	0f 28 04 24          	movaps (%rsp),%xmm0
	player->pos = pos;
  4094b0:	0f 13 40 0c          	movlps %xmm0,0xc(%rax)
	player->box = (t_box){{5, 43}, {59, 69}};
  4094b4:	0f 28 05 25 6d 00 00 	movaps 0x6d25(%rip),%xmm0        # 4101e0 <_IO_stdin_used+0x11e0>
  4094bb:	0f 11 40 44          	movups %xmm0,0x44(%rax)
	player->update = player_update;
  4094bf:	48 c7 c0 50 96 40 00 	mov    $0x409650,%rax
  4094c6:	48 89 43 18          	mov    %rax,0x18(%rbx)
	player->free = player_free;
  4094ca:	48 8d 05 1f 01 00 00 	lea    0x11f(%rip),%rax        # 4095f0 <player_free>
  4094d1:	48 89 43 20          	mov    %rax,0x20(%rbx)
	ext = ft_calloc(1, sizeof(t_player));
  4094d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4094da:	be 28 00 00 00       	mov    $0x28,%esi
  4094df:	e8 bc 3f 00 00       	call   40d4a0 <ft_calloc>
  4094e4:	48 89 c5             	mov    %rax,%rbp
	player->extension = ext;
  4094e7:	48 89 43 28          	mov    %rax,0x28(%rbx)
	if (is_player2 && i == 0)
  4094eb:	45 84 ff             	test   %r15b,%r15b
  4094ee:	74 4a                	je     40953a <player_new+0xca>
		return (g->goblin2_walk);
  4094f0:	49 8b bc 24 68 03 00 	mov    0x368(%r12),%rdi
  4094f7:	00 
	ext->walk = anim_new(_anim(game, 0, is_player2), 6, 100, true);
  4094f8:	be 06 00 00 00       	mov    $0x6,%esi
  4094fd:	ba 64 00 00 00       	mov    $0x64,%edx
  409502:	b9 01 00 00 00       	mov    $0x1,%ecx
  409507:	e8 84 d1 ff ff       	call   406690 <anim_new>
  40950c:	48 89 45 08          	mov    %rax,0x8(%rbp)
		return (g->goblin2_idle);
  409510:	49 8b bc 24 70 03 00 	mov    0x370(%r12),%rdi
  409517:	00 
	ext->idle = anim_new(_anim(game, 1, is_player2), 6, 100, true);
  409518:	be 06 00 00 00       	mov    $0x6,%esi
  40951d:	ba 64 00 00 00       	mov    $0x64,%edx
  409522:	b9 01 00 00 00       	mov    $0x1,%ecx
  409527:	e8 64 d1 ff ff       	call   406690 <anim_new>
  40952c:	48 89 45 10          	mov    %rax,0x10(%rbp)
		return (g->goblin2_atk_side);
  409530:	49 8d 84 24 78 03 00 	lea    0x378(%r12),%rax
  409537:	00 
  409538:	eb 48                	jmp    409582 <player_new+0x112>
		return (g->goblin_walk);
  40953a:	49 8b bc 24 50 03 00 	mov    0x350(%r12),%rdi
  409541:	00 
	ext->walk = anim_new(_anim(game, 0, is_player2), 6, 100, true);
  409542:	be 06 00 00 00       	mov    $0x6,%esi
  409547:	ba 64 00 00 00       	mov    $0x64,%edx
  40954c:	b9 01 00 00 00       	mov    $0x1,%ecx
  409551:	e8 3a d1 ff ff       	call   406690 <anim_new>
  409556:	48 89 45 08          	mov    %rax,0x8(%rbp)
		return (g->goblin_idle);
  40955a:	49 8b bc 24 58 03 00 	mov    0x358(%r12),%rdi
  409561:	00 
	ext->idle = anim_new(_anim(game, 1, is_player2), 6, 100, true);
  409562:	be 06 00 00 00       	mov    $0x6,%esi
  409567:	ba 64 00 00 00       	mov    $0x64,%edx
  40956c:	b9 01 00 00 00       	mov    $0x1,%ecx
  409571:	e8 1a d1 ff ff       	call   406690 <anim_new>
  409576:	48 89 45 10          	mov    %rax,0x10(%rbp)
		return (g->goblin_atk_side);
  40957a:	49 8d 84 24 60 03 00 	lea    0x360(%r12),%rax
  409581:	00 
  409582:	48 8b 38             	mov    (%rax),%rdi
	ext->atk_side = anim_new(_anim(game, 2, is_player2), 6, 100, true);
  409585:	be 06 00 00 00       	mov    $0x6,%esi
  40958a:	ba 64 00 00 00       	mov    $0x64,%edx
  40958f:	b9 01 00 00 00       	mov    $0x1,%ecx
  409594:	e8 f7 d0 ff ff       	call   406690 <anim_new>
  409599:	48 89 45 18          	mov    %rax,0x18(%rbp)
	ext->current_anim = ext->walk;
  40959d:	48 8b 45 08          	mov    0x8(%rbp),%rax
  4095a1:	48 89 45 00          	mov    %rax,0x0(%rbp)
	ext->is_p2 = is_player2;
  4095a5:	44 88 7d 20          	mov    %r15b,0x20(%rbp)
	player->sprite = game->goblin_idle[0];
  4095a9:	49 8b 84 24 58 03 00 	mov    0x358(%r12),%rax
  4095b0:	00 
  4095b1:	48 8b 00             	mov    (%rax),%rax
  4095b4:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4095b8:	48 b8 00 00 80 c2 00 	movabs $0xc2800000c2800000,%rax
  4095bf:	00 80 c2 
	player->sprite_offset = (t_vec2){-64, -64};
  4095c2:	48 89 43 38          	mov    %rax,0x38(%rbx)
	player->z_index = 15;
  4095c6:	c7 43 40 0f 00 00 00 	movl   $0xf,0x40(%rbx)
  4095cd:	48 b8 05 00 00 00 05 	movabs $0x500000005,%rax
  4095d4:	00 00 00 
	player->max_health = 5;
	player->health = player->max_health;
  4095d7:	48 89 43 64          	mov    %rax,0x64(%rbx)
	player->level = level;
  4095db:	44 89 73 6c          	mov    %r14d,0x6c(%rbx)
	return (player);
  4095df:	48 89 d8             	mov    %rbx,%rax
  4095e2:	48 83 c4 10          	add    $0x10,%rsp
  4095e6:	5b                   	pop    %rbx
  4095e7:	41 5c                	pop    %r12
  4095e9:	41 5e                	pop    %r14
  4095eb:	41 5f                	pop    %r15
  4095ed:	5d                   	pop    %rbp
  4095ee:	c3                   	ret    
  4095ef:	90                   	nop

00000000004095f0 <player_free>:
}

static void	player_free(t_entity *entity)
{
  4095f0:	41 56                	push   %r14
  4095f2:	53                   	push   %rbx
  4095f3:	50                   	push   %rax
  4095f4:	49 89 fe             	mov    %rdi,%r14
	t_player	*ext;

	ext = entity->extension;
  4095f7:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
	free(ext->walk);
  4095fb:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4095ff:	e8 7c 8b ff ff       	call   402180 <free@plt>
	free(ext->idle);
  409604:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  409608:	e8 73 8b ff ff       	call   402180 <free@plt>
	free(ext->atk_side);
  40960d:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  409611:	e8 6a 8b ff ff       	call   402180 <free@plt>
	free(entity->extension);
  409616:	49 8b 7e 28          	mov    0x28(%r14),%rdi
  40961a:	48 83 c4 08          	add    $0x8,%rsp
  40961e:	5b                   	pop    %rbx
  40961f:	41 5e                	pop    %r14
  409621:	e9 5a 8b ff ff       	jmp    402180 <free@plt>
  409626:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40962d:	00 00 00 

0000000000409630 <_keycode>:
}

int	_keycode(t_game *g, t_entity *e, int keycode, bool is_p2)
{
  409630:	8d 82 af 00 ff ff    	lea    -0xff51(%rdx),%eax
  409636:	83 f8 03             	cmp    $0x3,%eax
	(void) g;
	(void) e;
	if (is_p2)
  409639:	77 11                	ja     40964c <_keycode+0x1c>
  40963b:	84 c9                	test   %cl,%cl
  40963d:	74 0d                	je     40964c <_keycode+0x1c>
	{
		if (keycode == XK_Right)
  40963f:	48 98                	cltq   
  409641:	48 8d 0d a8 6b 00 00 	lea    0x6ba8(%rip),%rcx        # 4101f0 <_IO_stdin_used+0x11f0>
  409648:	8b 04 81             	mov    (%rcx,%rax,4),%eax
  40964b:	c3                   	ret    
			return (XK_w);
		else if (keycode == XK_Down)
			return (XK_s);
	}
	return (keycode);
}
  40964c:	89 d0                	mov    %edx,%eax
  40964e:	c3                   	ret    
  40964f:	90                   	nop

0000000000409650 <player_update>:
	else if (game->keys[_keycode(game, entity, XK_Left, ext->is_p2)])
		entity->flipped = true;
}

void	player_update(t_game *game, t_entity *entity)
{
  409650:	41 57                	push   %r15
  409652:	41 56                	push   %r14
  409654:	41 54                	push   %r12
  409656:	53                   	push   %rbx
  409657:	50                   	push   %rax
  409658:	48 89 f3             	mov    %rsi,%rbx
	t_player	*ext;

	ext = entity->extension;
	if (entity->health <= 0)
  40965b:	83 7e 64 00          	cmpl   $0x0,0x64(%rsi)
  40965f:	0f 8e 59 02 00 00    	jle    4098be <player_update+0x26e>
  409665:	49 89 fe             	mov    %rdi,%r14
  409668:	4c 8b 7b 28          	mov    0x28(%rbx),%r15
		}
		else if (entity == entity->game->player2)
			entity->game->player2 = NULL;
		return ;
	}
	entity->sprite = anim_get_sprite(ext->current_anim);
  40966c:	49 8b 3f             	mov    (%r15),%rdi
  40966f:	e8 7c d0 ff ff       	call   4066f0 <anim_get_sprite>
  409674:	48 89 43 30          	mov    %rax,0x30(%rbx)
	if (game->keys[_keycode(game, entity, XK_Right, ext->is_p2)])
  409678:	4d 8b 66 10          	mov    0x10(%r14),%r12
  40967c:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  409681:	4c 89 f7             	mov    %r14,%rdi
  409684:	48 89 de             	mov    %rbx,%rsi
  409687:	ba 53 ff 00 00       	mov    $0xff53,%edx
  40968c:	e8 9f ff ff ff       	call   409630 <_keycode>
  409691:	48 98                	cltq   
  409693:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
  409698:	74 1a                	je     4096b4 <player_update+0x64>
		entity->vel.x += 1;
  40969a:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
  40969f:	f3 0f 58 05 59 6b 00 	addss  0x6b59(%rip),%xmm0        # 410200 <_IO_stdin_used+0x1200>
  4096a6:	00 
  4096a7:	f3 0f 11 43 54       	movss  %xmm0,0x54(%rbx)
		game->moves += 1;
  4096ac:	41 83 86 08 03 00 00 	addl   $0x1,0x308(%r14)
  4096b3:	01 
	if (game->keys[_keycode(game, entity, XK_Left, ext->is_p2)])
  4096b4:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4096b8:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4096bd:	4c 89 f7             	mov    %r14,%rdi
  4096c0:	48 89 de             	mov    %rbx,%rsi
  4096c3:	ba 51 ff 00 00       	mov    $0xff51,%edx
  4096c8:	e8 63 ff ff ff       	call   409630 <_keycode>
  4096cd:	48 98                	cltq   
  4096cf:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
  4096d4:	74 1a                	je     4096f0 <player_update+0xa0>
		entity->vel.x -= 1;
  4096d6:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
  4096db:	f3 0f 58 05 21 6b 00 	addss  0x6b21(%rip),%xmm0        # 410204 <_IO_stdin_used+0x1204>
  4096e2:	00 
  4096e3:	f3 0f 11 43 54       	movss  %xmm0,0x54(%rbx)
		game->moves += 1;
  4096e8:	41 83 86 08 03 00 00 	addl   $0x1,0x308(%r14)
  4096ef:	01 
	if (game->keys[_keycode(game, entity, XK_Up, ext->is_p2)])
  4096f0:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4096f4:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4096f9:	4c 89 f7             	mov    %r14,%rdi
  4096fc:	48 89 de             	mov    %rbx,%rsi
  4096ff:	ba 52 ff 00 00       	mov    $0xff52,%edx
  409704:	e8 27 ff ff ff       	call   409630 <_keycode>
  409709:	48 98                	cltq   
  40970b:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
  409710:	74 1a                	je     40972c <player_update+0xdc>
		entity->vel.y -= 1;
  409712:	f3 0f 10 43 58       	movss  0x58(%rbx),%xmm0
  409717:	f3 0f 58 05 e5 6a 00 	addss  0x6ae5(%rip),%xmm0        # 410204 <_IO_stdin_used+0x1204>
  40971e:	00 
  40971f:	f3 0f 11 43 58       	movss  %xmm0,0x58(%rbx)
		game->moves += 1;
  409724:	41 83 86 08 03 00 00 	addl   $0x1,0x308(%r14)
  40972b:	01 
	if (game->keys[_keycode(game, entity, XK_Down, ext->is_p2)])
  40972c:	4d 8b 66 10          	mov    0x10(%r14),%r12
  409730:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  409735:	4c 89 f7             	mov    %r14,%rdi
  409738:	48 89 de             	mov    %rbx,%rsi
  40973b:	ba 54 ff 00 00       	mov    $0xff54,%edx
  409740:	e8 eb fe ff ff       	call   409630 <_keycode>
  409745:	48 98                	cltq   
  409747:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
  40974c:	74 1a                	je     409768 <player_update+0x118>
		entity->vel.y += 1;
  40974e:	f3 0f 10 43 58       	movss  0x58(%rbx),%xmm0
  409753:	f3 0f 58 05 a5 6a 00 	addss  0x6aa5(%rip),%xmm0        # 410200 <_IO_stdin_used+0x1200>
  40975a:	00 
  40975b:	f3 0f 11 43 58       	movss  %xmm0,0x58(%rbx)
		game->moves += 1;
  409760:	41 83 86 08 03 00 00 	addl   $0x1,0x308(%r14)
  409767:	01 
	if (entity->vel.x != 0 || entity->vel.y != 0)
  409768:	f3 0f 10 4b 54       	movss  0x54(%rbx),%xmm1
  40976d:	0f 57 c0             	xorps  %xmm0,%xmm0
  409770:	0f 2e c8             	ucomiss %xmm0,%xmm1
  409773:	75 12                	jne    409787 <player_update+0x137>
  409775:	7a 10                	jp     409787 <player_update+0x137>
  409777:	f3 0f 10 4b 58       	movss  0x58(%rbx),%xmm1
  40977c:	0f 2e c8             	ucomiss %xmm0,%xmm1
  40977f:	75 06                	jne    409787 <player_update+0x137>
  409781:	0f 8b 85 02 00 00    	jnp    409a0c <player_update+0x3bc>
		entity->vel = vec2_normalized(entity->vel);
  409787:	f2 0f 10 43 54       	movsd  0x54(%rbx),%xmm0
  40978c:	e8 ef 06 00 00       	call   409e80 <vec2_normalized>
  409791:	0f 13 43 54          	movlps %xmm0,0x54(%rbx)
  409795:	f3 0f 10 0d 6b 6a 00 	movss  0x6a6b(%rip),%xmm1        # 410208 <_IO_stdin_used+0x1208>
  40979c:	00 
	entity->vel = vec2_mul(entity->vel, PLAYER_SPEED);
  40979d:	e8 5e 06 00 00       	call   409e00 <vec2_mul>
  4097a2:	0f 13 43 54          	movlps %xmm0,0x54(%rbx)
	if ((game->keys[_keycode(game, entity, XK_Right, ext->is_p2)]
  4097a6:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4097aa:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4097af:	4c 89 f7             	mov    %r14,%rdi
  4097b2:	48 89 de             	mov    %rbx,%rsi
  4097b5:	ba 53 ff 00 00       	mov    $0xff53,%edx
  4097ba:	e8 71 fe ff ff       	call   409630 <_keycode>
  4097bf:	48 98                	cltq   
  4097c1:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
			|| game->keys[_keycode(game, entity, XK_Left, ext->is_p2)]
  4097c6:	75 6a                	jne    409832 <player_update+0x1e2>
  4097c8:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4097cc:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4097d1:	4c 89 f7             	mov    %r14,%rdi
  4097d4:	48 89 de             	mov    %rbx,%rsi
  4097d7:	ba 51 ff 00 00       	mov    $0xff51,%edx
  4097dc:	e8 4f fe ff ff       	call   409630 <_keycode>
  4097e1:	48 98                	cltq   
  4097e3:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
			|| game->keys[_keycode(game, entity, XK_Up, ext->is_p2)]
  4097e8:	75 48                	jne    409832 <player_update+0x1e2>
  4097ea:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4097ee:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4097f3:	4c 89 f7             	mov    %r14,%rdi
  4097f6:	48 89 de             	mov    %rbx,%rsi
  4097f9:	ba 52 ff 00 00       	mov    $0xff52,%edx
  4097fe:	e8 2d fe ff ff       	call   409630 <_keycode>
  409803:	48 98                	cltq   
  409805:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
			|| game->keys[_keycode(game, entity, XK_Down, ext->is_p2)])
  40980a:	75 26                	jne    409832 <player_update+0x1e2>
  40980c:	4d 8b 66 10          	mov    0x10(%r14),%r12
  409810:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  409815:	4c 89 f7             	mov    %r14,%rdi
  409818:	48 89 de             	mov    %rbx,%rsi
  40981b:	ba 54 ff 00 00       	mov    $0xff54,%edx
  409820:	e8 0b fe ff ff       	call   409630 <_keycode>
  409825:	48 98                	cltq   
  409827:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
		&& !_is_attacking(ext))
  40982c:	0f 84 e4 01 00 00    	je     409a16 <player_update+0x3c6>
	return ((ext->current_anim == ext->atk_side)
  409832:	49 8b 07             	mov    (%r15),%rax
  409835:	49 3b 47 18          	cmp    0x18(%r15),%rax
		&& (ext->current_anim->current_frame < 5
  409839:	75 53                	jne    40988e <player_update+0x23e>
  40983b:	48 8b 40 10          	mov    0x10(%rax),%rax
			&& ext->current_anim->current_frame > 2
  40983f:	48 83 c0 fd          	add    $0xfffffffffffffffd,%rax
  409843:	48 83 f8 01          	cmp    $0x1,%rax
  409847:	77 45                	ja     40988e <player_update+0x23e>
			&& getms() - ext->current_anim->last_frame
  409849:	e8 32 ce ff ff       	call   406680 <getms>
  40984e:	49 8b 0f             	mov    (%r15),%rcx
  409851:	48 2b 41 20          	sub    0x20(%rcx),%rax
			< ext->current_anim->frame_interval));
  409855:	48 3b 41 18          	cmp    0x18(%rcx),%rax
	if ((game->keys[_keycode(game, entity, XK_Right, ext->is_p2)]
  409859:	7d 33                	jge    40988e <player_update+0x23e>
	return ((ext->current_anim == ext->atk_side)
  40985b:	49 3b 4f 18          	cmp    0x18(%r15),%rcx
		&& (ext->current_anim->current_frame < 5
  40985f:	0f 85 be 01 00 00    	jne    409a23 <player_update+0x3d3>
  409865:	48 8b 41 10          	mov    0x10(%rcx),%rax
			&& ext->current_anim->current_frame > 2
  409869:	48 83 c0 fd          	add    $0xfffffffffffffffd,%rax
  40986d:	48 83 f8 01          	cmp    $0x1,%rax
  409871:	0f 87 ac 01 00 00    	ja     409a23 <player_update+0x3d3>
			&& getms() - ext->current_anim->last_frame
  409877:	e8 04 ce ff ff       	call   406680 <getms>
  40987c:	49 8b 0f             	mov    (%r15),%rcx
  40987f:	48 2b 41 20          	sub    0x20(%rcx),%rax
			< ext->current_anim->frame_interval));
  409883:	48 3b 41 18          	cmp    0x18(%rcx),%rax
	else if (!_is_attacking(ext))
  409887:	7c 0f                	jl     409898 <player_update+0x248>
  409889:	e9 95 01 00 00       	jmp    409a23 <player_update+0x3d3>
		ext->current_anim = ext->walk;
  40988e:	49 8d 47 08          	lea    0x8(%r15),%rax
  409892:	48 8b 00             	mov    (%rax),%rax
  409895:	49 89 07             	mov    %rax,(%r15)
	if (game->keys[_keycode(game, entity, XK_Right, ext->is_p2)])
  409898:	4d 8b 66 10          	mov    0x10(%r14),%r12
  40989c:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4098a1:	4c 89 f7             	mov    %r14,%rdi
  4098a4:	48 89 de             	mov    %rbx,%rsi
  4098a7:	ba 53 ff 00 00       	mov    $0xff53,%edx
  4098ac:	e8 7f fd ff ff       	call   409630 <_keycode>
  4098b1:	48 98                	cltq   
  4098b3:	41 80 3c 04 00       	cmpb   $0x0,(%r12,%rax,1)
  4098b8:	74 2a                	je     4098e4 <player_update+0x294>
  4098ba:	31 c0                	xor    %eax,%eax
  4098bc:	eb 4b                	jmp    409909 <player_update+0x2b9>
		entity->state = STATE_DEAD;
  4098be:	c7 43 5c 01 00 00 00 	movl   $0x1,0x5c(%rbx)
		if (entity == entity->game->player)
  4098c5:	48 8b 03             	mov    (%rbx),%rax
  4098c8:	48 8b 48 48          	mov    0x48(%rax),%rcx
  4098cc:	48 39 58 40          	cmp    %rbx,0x40(%rax)
  4098d0:	0f 84 1e 01 00 00    	je     4099f4 <player_update+0x3a4>
		else if (entity == entity->game->player2)
  4098d6:	48 39 d9             	cmp    %rbx,%rcx
  4098d9:	0f 85 21 01 00 00    	jne    409a00 <player_update+0x3b0>
  4098df:	e9 14 01 00 00       	jmp    4099f8 <player_update+0x3a8>
	else if (game->keys[_keycode(game, entity, XK_Left, ext->is_p2)])
  4098e4:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4098e8:	41 0f b6 4f 20       	movzbl 0x20(%r15),%ecx
  4098ed:	4c 89 f7             	mov    %r14,%rdi
  4098f0:	48 89 de             	mov    %rbx,%rsi
  4098f3:	ba 51 ff 00 00       	mov    $0xff51,%edx
  4098f8:	e8 33 fd ff ff       	call   409630 <_keycode>
  4098fd:	48 63 c8             	movslq %eax,%rcx
  409900:	b0 01                	mov    $0x1,%al
  409902:	41 80 3c 0c 00       	cmpb   $0x0,(%r12,%rcx,1)
  409907:	74 03                	je     40990c <player_update+0x2bc>
  409909:	88 43 60             	mov    %al,0x60(%rbx)
	_handle_keys(game, entity, ext);
	anim_update(ext->current_anim);
  40990c:	49 8b 3f             	mov    (%r15),%rdi
  40990f:	e8 cc cd ff ff       	call   4066e0 <anim_update>
	move_player(game, entity);
  409914:	4c 89 f7             	mov    %r14,%rdi
  409917:	48 89 de             	mov    %rbx,%rsi
  40991a:	e8 11 01 00 00       	call   409a30 <move_player>
	entity->vel.x = 0;
  40991f:	48 c7 43 54 00 00 00 	movq   $0x0,0x54(%rbx)
  409926:	00 
	const t_map2	*map = entity->game->map2;
  409927:	48 8b 03             	mov    (%rbx),%rax
	const t_vec2i	tpos = (t_vec2i){(entity->pos.x + 32) / 64,
  40992a:	f3 0f 10 43 0c       	movss  0xc(%rbx),%xmm0
  40992f:	f3 0f 58 05 e9 67 00 	addss  0x67e9(%rip),%xmm0        # 410120 <_IO_stdin_used+0x1120>
  409936:	00 
  409937:	f3 0f 10 0d cd 68 00 	movss  0x68cd(%rip),%xmm1        # 41020c <_IO_stdin_used+0x120c>
  40993e:	00 
  40993f:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  409943:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
		(entity->pos.y + 60) / 64};
  409947:	f3 0f 10 43 10       	movss  0x10(%rbx),%xmm0
  40994c:	f3 0f 10 15 bc 68 00 	movss  0x68bc(%rip),%xmm2        # 410210 <_IO_stdin_used+0x1210>
  409953:	00 
  409954:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  409958:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
  40995c:	f3 0f 2c fa          	cvttss2si %xmm2,%edi
	const t_map2	*map = entity->game->map2;
  409960:	48 8b 70 50          	mov    0x50(%rax),%rsi
	if (map->levels[entity->level].data[tpos.x
  409964:	4c 8b 06             	mov    (%rsi),%r8
  409967:	48 63 43 6c          	movslq 0x6c(%rbx),%rax
  40996b:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
  40996f:	48 c1 e1 04          	shl    $0x4,%rcx
  409973:	49 8b 4c 08 08       	mov    0x8(%r8,%rcx,1),%rcx
			+ tpos.y * map->width] == TILE_STAIR
  409978:	0f af 7e 0c          	imul   0xc(%rsi),%edi
  40997c:	01 d7                	add    %edx,%edi
	if (map->levels[entity->level].data[tpos.x
  40997e:	48 63 d7             	movslq %edi,%rdx
			+ tpos.y * map->width] == TILE_STAIR
  409981:	83 3c 91 05          	cmpl   $0x5,(%rcx,%rdx,4)
		&& entity->level < map->level_count - 1)
  409985:	75 30                	jne    4099b7 <player_update+0x367>
  409987:	8b 4e 08             	mov    0x8(%rsi),%ecx
  40998a:	83 c1 ff             	add    $0xffffffff,%ecx
  40998d:	39 c8                	cmp    %ecx,%eax
	if (map->levels[entity->level].data[tpos.x
  40998f:	7d 26                	jge    4099b7 <player_update+0x367>
		if (((int)entity->pos.y + 40) % 64 < 32)
  409991:	f3 0f 2c c8          	cvttss2si %xmm0,%ecx
  409995:	8d 51 28             	lea    0x28(%rcx),%edx
  409998:	8d 71 67             	lea    0x67(%rcx),%esi
  40999b:	85 d2                	test   %edx,%edx
  40999d:	0f 49 f2             	cmovns %edx,%esi
  4099a0:	83 e6 c0             	and    $0xffffffc0,%esi
  4099a3:	f7 de                	neg    %esi
  4099a5:	01 f1                	add    %esi,%ecx
  4099a7:	83 c1 28             	add    $0x28,%ecx
  4099aa:	83 f9 1f             	cmp    $0x1f,%ecx
  4099ad:	7f 51                	jg     409a00 <player_update+0x3b0>
			entity->level++;
  4099af:	83 c0 01             	add    $0x1,%eax
  4099b2:	89 43 6c             	mov    %eax,0x6c(%rbx)
  4099b5:	eb 49                	jmp    409a00 <player_update+0x3b0>
	else if (entity->level > 0
  4099b7:	85 c0                	test   %eax,%eax
		&& map->levels[entity->level - 1].data[tpos.x
  4099b9:	7e 45                	jle    409a00 <player_update+0x3b0>
  4099bb:	83 c0 ff             	add    $0xffffffff,%eax
  4099be:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
  4099c2:	48 c1 e1 04          	shl    $0x4,%rcx
  4099c6:	49 8b 4c 08 08       	mov    0x8(%r8,%rcx,1),%rcx
			+ tpos.y * map->width] == TILE_STAIR)
  4099cb:	83 3c 91 05          	cmpl   $0x5,(%rcx,%rdx,4)
	else if (entity->level > 0
  4099cf:	75 2f                	jne    409a00 <player_update+0x3b0>
		if (((int)entity->pos.y + 63) % 64 > 56)
  4099d1:	f3 0f 2c c8          	cvttss2si %xmm0,%ecx
  4099d5:	8d 51 3f             	lea    0x3f(%rcx),%edx
  4099d8:	8d 71 7e             	lea    0x7e(%rcx),%esi
  4099db:	85 d2                	test   %edx,%edx
  4099dd:	0f 49 f2             	cmovns %edx,%esi
  4099e0:	83 e6 c0             	and    $0xffffffc0,%esi
  4099e3:	f7 de                	neg    %esi
  4099e5:	01 f1                	add    %esi,%ecx
  4099e7:	83 c1 3f             	add    $0x3f,%ecx
  4099ea:	83 f9 39             	cmp    $0x39,%ecx
  4099ed:	7c 11                	jl     409a00 <player_update+0x3b0>
			entity->level--;
  4099ef:	89 43 6c             	mov    %eax,0x6c(%rbx)
  4099f2:	eb 0c                	jmp    409a00 <player_update+0x3b0>
			entity->game->player = entity->game->player2;
  4099f4:	48 89 48 40          	mov    %rcx,0x40(%rax)
  4099f8:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
  4099ff:	00 
	entity->vel.y = 0;
	_stair_collision(entity);
}
  409a00:	48 83 c4 08          	add    $0x8,%rsp
  409a04:	5b                   	pop    %rbx
  409a05:	41 5c                	pop    %r12
  409a07:	41 5e                	pop    %r14
  409a09:	41 5f                	pop    %r15
  409a0b:	c3                   	ret    
	entity->vel = vec2_mul(entity->vel, PLAYER_SPEED);
  409a0c:	f2 0f 10 43 54       	movsd  0x54(%rbx),%xmm0
  409a11:	e9 7f fd ff ff       	jmp    409795 <player_update+0x145>
	return ((ext->current_anim == ext->atk_side)
  409a16:	49 8b 0f             	mov    (%r15),%rcx
  409a19:	49 3b 4f 18          	cmp    0x18(%r15),%rcx
		&& (ext->current_anim->current_frame < 5
  409a1d:	0f 84 42 fe ff ff    	je     409865 <player_update+0x215>
		ext->current_anim = ext->idle;
  409a23:	49 8d 47 10          	lea    0x10(%r15),%rax
  409a27:	e9 66 fe ff ff       	jmp    409892 <player_update+0x242>
  409a2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409a30 <move_player>:

#include "../entity.h"
#include "../so_long.h"

void	move_player(t_game *game, t_entity *ent)
{
  409a30:	41 57                	push   %r15
  409a32:	41 56                	push   %r14
  409a34:	53                   	push   %rbx
  409a35:	48 89 f3             	mov    %rsi,%rbx
  409a38:	49 89 fe             	mov    %rdi,%r14
	while (ent->vel.x != 0)
  409a3b:	f3 0f 10 46 54       	movss  0x54(%rsi),%xmm0
  409a40:	0f 57 c9             	xorps  %xmm1,%xmm1
  409a43:	0f 2e c1             	ucomiss %xmm1,%xmm0
  409a46:	75 02                	jne    409a4a <move_player+0x1a>
  409a48:	7b 6e                	jnp    409ab8 <move_player+0x88>
  409a4a:	4c 8d 3d c3 67 00 00 	lea    0x67c3(%rip),%r15        # 410214 <_IO_stdin_used+0x1214>
  409a51:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409a58:	00 00 00 
  409a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	{
		if (!box_collide_with_map2(game, box_for_position(
					ent->box, vec2_add(ent->pos,
  409a60:	0f 57 c9             	xorps  %xmm1,%xmm1
  409a63:	f3 0f 10 c8          	movss  %xmm0,%xmm1
  409a67:	f2 0f 10 43 0c       	movsd  0xc(%rbx),%xmm0
  409a6c:	e8 6f 03 00 00       	call   409de0 <vec2_add>
  409a71:	0f 28 d0             	movaps %xmm0,%xmm2
		if (!box_collide_with_map2(game, box_for_position(
  409a74:	f2 0f 10 43 44       	movsd  0x44(%rbx),%xmm0
  409a79:	f2 0f 10 4b 4c       	movsd  0x4c(%rbx),%xmm1
  409a7e:	e8 dd 02 00 00       	call   409d60 <box_for_position>
						(t_vec2){ent->vel.x, 0})), ent->level, game->map2))
  409a83:	8b 73 6c             	mov    0x6c(%rbx),%esi
  409a86:	49 8b 56 50          	mov    0x50(%r14),%rdx
		if (!box_collide_with_map2(game, box_for_position(
  409a8a:	4c 89 f7             	mov    %r14,%rdi
  409a8d:	e8 ae e6 ff ff       	call   408140 <box_collide_with_map2>
  409a92:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
  409a97:	84 c0                	test   %al,%al
  409a99:	74 1d                	je     409ab8 <move_player+0x88>
			break ;
		if (ent->vel.x > 0)
  409a9b:	31 c0                	xor    %eax,%eax
  409a9d:	0f 57 c9             	xorps  %xmm1,%xmm1
  409aa0:	0f 2e c1             	ucomiss %xmm1,%xmm0
  409aa3:	0f 97 c0             	seta   %al
  409aa6:	f3 41 0f 58 04 87    	addss  (%r15,%rax,4),%xmm0
  409aac:	f3 0f 11 43 54       	movss  %xmm0,0x54(%rbx)
	while (ent->vel.x != 0)
  409ab1:	0f 2e c1             	ucomiss %xmm1,%xmm0
  409ab4:	75 aa                	jne    409a60 <move_player+0x30>
  409ab6:	7a a8                	jp     409a60 <move_player+0x30>
			ent->vel.x--;
		else
			ent->vel.x++;
	}
	ent->pos.x += ent->vel.x;
  409ab8:	f3 0f 58 43 0c       	addss  0xc(%rbx),%xmm0
  409abd:	f3 0f 11 43 0c       	movss  %xmm0,0xc(%rbx)
	while (ent->vel.y != 0)
  409ac2:	f3 0f 10 4b 58       	movss  0x58(%rbx),%xmm1
  409ac7:	0f 2e 0d 4e 67 00 00 	ucomiss 0x674e(%rip),%xmm1        # 41021c <_IO_stdin_used+0x121c>
  409ace:	75 02                	jne    409ad2 <move_player+0xa2>
  409ad0:	7b 6b                	jnp    409b3d <move_player+0x10d>
  409ad2:	4c 8d 3d 3b 67 00 00 	lea    0x673b(%rip),%r15        # 410214 <_IO_stdin_used+0x1214>
  409ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	{
		if (!box_collide_with_map2(game, box_for_position(
					ent->box, vec2_add(ent->pos,
  409ae0:	f2 0f 10 43 0c       	movsd  0xc(%rbx),%xmm0
  409ae5:	f3 0f 7e c9          	movq   %xmm1,%xmm1
  409ae9:	0f c6 0d 2f 67 00 00 	shufps $0xe2,0x672f(%rip),%xmm1        # 410220 <_IO_stdin_used+0x1220>
  409af0:	e2 
  409af1:	e8 ea 02 00 00       	call   409de0 <vec2_add>
  409af6:	0f 28 d0             	movaps %xmm0,%xmm2
		if (!box_collide_with_map2(game, box_for_position(
  409af9:	f2 0f 10 43 44       	movsd  0x44(%rbx),%xmm0
  409afe:	f2 0f 10 4b 4c       	movsd  0x4c(%rbx),%xmm1
  409b03:	e8 58 02 00 00       	call   409d60 <box_for_position>
						(t_vec2){0, ent->vel.y})), ent->level, game->map2))
  409b08:	8b 73 6c             	mov    0x6c(%rbx),%esi
  409b0b:	49 8b 56 50          	mov    0x50(%r14),%rdx
		if (!box_collide_with_map2(game, box_for_position(
  409b0f:	4c 89 f7             	mov    %r14,%rdi
  409b12:	e8 29 e6 ff ff       	call   408140 <box_collide_with_map2>
  409b17:	f3 0f 10 4b 58       	movss  0x58(%rbx),%xmm1
  409b1c:	84 c0                	test   %al,%al
  409b1e:	74 1d                	je     409b3d <move_player+0x10d>
			break ;
		if (ent->vel.y > 0)
  409b20:	31 c0                	xor    %eax,%eax
  409b22:	0f 57 c0             	xorps  %xmm0,%xmm0
  409b25:	0f 2e c8             	ucomiss %xmm0,%xmm1
  409b28:	0f 97 c0             	seta   %al
  409b2b:	f3 41 0f 58 0c 87    	addss  (%r15,%rax,4),%xmm1
  409b31:	f3 0f 11 4b 58       	movss  %xmm1,0x58(%rbx)
	while (ent->vel.y != 0)
  409b36:	0f 2e c8             	ucomiss %xmm0,%xmm1
  409b39:	75 a5                	jne    409ae0 <move_player+0xb0>
  409b3b:	7a a3                	jp     409ae0 <move_player+0xb0>
			ent->vel.y--;
		else
			ent->vel.y++;
	}
	ent->pos.y += ent->vel.y;
  409b3d:	f3 0f 58 4b 10       	addss  0x10(%rbx),%xmm1
  409b42:	f3 0f 11 4b 10       	movss  %xmm1,0x10(%rbx)
}
  409b47:	5b                   	pop    %rbx
  409b48:	41 5e                	pop    %r14
  409b4a:	41 5f                	pop    %r15
  409b4c:	c3                   	ret    
  409b4d:	0f 1f 00             	nopl   (%rax)

0000000000409b50 <gem_new>:
}	t_money;

void	gem_free(t_entity *entity);

t_entity	*gem_new(t_game *game, t_vec2 pos, int level)
{
  409b50:	55                   	push   %rbp
  409b51:	41 57                	push   %r15
  409b53:	41 56                	push   %r14
  409b55:	53                   	push   %rbx
  409b56:	48 83 ec 18          	sub    $0x18,%rsp
  409b5a:	41 89 f6             	mov    %esi,%r14d
  409b5d:	0f 29 04 24          	movaps %xmm0,(%rsp)
  409b61:	49 89 ff             	mov    %rdi,%r15
	t_entity	*gem;
	t_money		*ext;

	gem = ft_calloc(1, sizeof(t_entity));
  409b64:	bf 01 00 00 00       	mov    $0x1,%edi
  409b69:	be 70 00 00 00       	mov    $0x70,%esi
  409b6e:	e8 2d 39 00 00       	call   40d4a0 <ft_calloc>
  409b73:	48 89 c5             	mov    %rax,%rbp
	gem->game = game;
  409b76:	4c 89 38             	mov    %r15,(%rax)
	gem->type = ETYPE_GEM;
  409b79:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
	gem->state = STATE_NOT_ALIVE;
  409b80:	c7 40 5c 02 00 00 00 	movl   $0x2,0x5c(%rax)
  409b87:	0f 28 04 24          	movaps (%rsp),%xmm0
	gem->pos = pos;
  409b8b:	0f 13 40 0c          	movlps %xmm0,0xc(%rax)
	ext = ft_calloc(1, sizeof(t_money));
  409b8f:	bf 01 00 00 00       	mov    $0x1,%edi
  409b94:	be 08 00 00 00       	mov    $0x8,%esi
  409b99:	e8 02 39 00 00       	call   40d4a0 <ft_calloc>
  409b9e:	48 89 c3             	mov    %rax,%rbx
	gem->extension = ext;
  409ba1:	48 89 45 28          	mov    %rax,0x28(%rbp)
	ext->anim = anim_new(game->money_spawn, 7, 100, false);
  409ba5:	49 8b bf 98 03 00 00 	mov    0x398(%r15),%rdi
  409bac:	be 07 00 00 00       	mov    $0x7,%esi
  409bb1:	ba 64 00 00 00       	mov    $0x64,%edx
  409bb6:	31 c9                	xor    %ecx,%ecx
  409bb8:	e8 d3 ca ff ff       	call   406690 <anim_new>
  409bbd:	48 89 03             	mov    %rax,(%rbx)
	gem->box = (t_box){{16, 16}, {48 * SCALE, 48 * SCALE}};
  409bc0:	0f 28 05 69 66 00 00 	movaps 0x6669(%rip),%xmm0        # 410230 <_IO_stdin_used+0x1230>
  409bc7:	0f 11 45 44          	movups %xmm0,0x44(%rbp)
  409bcb:	48 b8 00 00 00 c2 00 	movabs $0xc2000000c2000000,%rax
  409bd2:	00 00 c2 
	gem->sprite_offset = (t_vec2){-32, -32};
  409bd5:	48 89 45 38          	mov    %rax,0x38(%rbp)
	gem->update = gem_update;
  409bd9:	48 c7 c0 20 9c 40 00 	mov    $0x409c20,%rax
  409be0:	48 89 45 18          	mov    %rax,0x18(%rbp)
	gem->free = gem_free;
  409be4:	48 c7 c0 30 9d 40 00 	mov    $0x409d30,%rax
  409beb:	48 89 45 20          	mov    %rax,0x20(%rbp)
	gem->sprite = game->money_spawn[6];
  409bef:	49 8b 87 98 03 00 00 	mov    0x398(%r15),%rax
  409bf6:	48 8b 40 30          	mov    0x30(%rax),%rax
  409bfa:	48 89 45 30          	mov    %rax,0x30(%rbp)
	gem->z_index = 14;
  409bfe:	c7 45 40 0e 00 00 00 	movl   $0xe,0x40(%rbp)
	gem->level = level;
  409c05:	44 89 75 6c          	mov    %r14d,0x6c(%rbp)
	return (gem);
  409c09:	48 89 e8             	mov    %rbp,%rax
  409c0c:	48 83 c4 18          	add    $0x18,%rsp
  409c10:	5b                   	pop    %rbx
  409c11:	41 5e                	pop    %r14
  409c13:	41 5f                	pop    %r15
  409c15:	5d                   	pop    %rbp
  409c16:	c3                   	ret    
  409c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  409c1e:	00 00 

0000000000409c20 <gem_update>:
	free(ext->anim);
	free(ext);
}

void	gem_update(t_game *game, t_entity *entity)
{
  409c20:	41 57                	push   %r15
  409c22:	41 56                	push   %r14
  409c24:	53                   	push   %rbx
  409c25:	48 83 ec 20          	sub    $0x20,%rsp
  409c29:	49 89 f7             	mov    %rsi,%r15
  409c2c:	49 89 fe             	mov    %rdi,%r14
	t_money		*money;
	const t_box	pbox = {{0, 0}, {64, 64}};

	money = entity->extension;
  409c2f:	48 8b 5e 28          	mov    0x28(%rsi),%rbx
	entity->sprite = anim_get_sprite(money->anim);
  409c33:	48 8b 3b             	mov    (%rbx),%rdi
  409c36:	e8 b5 ca ff ff       	call   4066f0 <anim_get_sprite>
  409c3b:	49 89 47 30          	mov    %rax,0x30(%r15)
	anim_update(money->anim);
  409c3f:	48 8b 3b             	mov    (%rbx),%rdi
  409c42:	e8 99 ca ff ff       	call   4066e0 <anim_update>
	if ((game->player && game->player->level == entity->level
  409c47:	49 8b 46 40          	mov    0x40(%r14),%rax
  409c4b:	48 85 c0             	test   %rax,%rax
  409c4e:	74 59                	je     409ca9 <gem_update+0x89>
  409c50:	8b 40 6c             	mov    0x6c(%rax),%eax
  409c53:	41 3b 47 6c          	cmp    0x6c(%r15),%eax
			&& box_collide_with_box(box_for_position(entity->box, entity->pos),
  409c57:	75 50                	jne    409ca9 <gem_update+0x89>
  409c59:	f2 41 0f 10 57 0c    	movsd  0xc(%r15),%xmm2
  409c5f:	f2 41 0f 10 47 44    	movsd  0x44(%r15),%xmm0
  409c65:	f2 41 0f 10 4f 4c    	movsd  0x4c(%r15),%xmm1
  409c6b:	e8 f0 00 00 00       	call   409d60 <box_for_position>
  409c70:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  409c75:	0f 29 0c 24          	movaps %xmm1,(%rsp)
				box_for_position(pbox, game->player->pos)))
  409c79:	49 8b 46 40          	mov    0x40(%r14),%rax
  409c7d:	f2 0f 10 50 0c       	movsd  0xc(%rax),%xmm2
  409c82:	0f 28 0d 87 64 00 00 	movaps 0x6487(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  409c89:	0f 57 c0             	xorps  %xmm0,%xmm0
  409c8c:	e8 cf 00 00 00       	call   409d60 <box_for_position>
  409c91:	0f 28 d0             	movaps %xmm0,%xmm2
  409c94:	0f 28 d9             	movaps %xmm1,%xmm3
  409c97:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  409c9c:	0f 28 0c 24          	movaps (%rsp),%xmm1
			&& box_collide_with_box(box_for_position(entity->box, entity->pos),
  409ca0:	e8 0b 01 00 00       	call   409db0 <box_collide_with_box>
		|| (game->player2 != NULL && game->player2->level == entity->level
  409ca5:	84 c0                	test   %al,%al
  409ca7:	75 62                	jne    409d0b <gem_update+0xeb>
  409ca9:	49 8b 46 48          	mov    0x48(%r14),%rax
  409cad:	48 85 c0             	test   %rax,%rax
  409cb0:	74 69                	je     409d1b <gem_update+0xfb>
  409cb2:	8b 40 6c             	mov    0x6c(%rax),%eax
  409cb5:	41 3b 47 6c          	cmp    0x6c(%r15),%eax
			&& box_collide_with_box(
  409cb9:	75 60                	jne    409d1b <gem_update+0xfb>
				box_for_position(entity->box, entity->pos),
  409cbb:	f2 41 0f 10 57 0c    	movsd  0xc(%r15),%xmm2
  409cc1:	f2 41 0f 10 47 44    	movsd  0x44(%r15),%xmm0
  409cc7:	f2 41 0f 10 4f 4c    	movsd  0x4c(%r15),%xmm1
  409ccd:	e8 8e 00 00 00       	call   409d60 <box_for_position>
  409cd2:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  409cd7:	0f 29 0c 24          	movaps %xmm1,(%rsp)
				box_for_position(pbox, game->player2->pos))))
  409cdb:	49 8b 46 48          	mov    0x48(%r14),%rax
  409cdf:	f2 0f 10 50 0c       	movsd  0xc(%rax),%xmm2
  409ce4:	0f 28 0d 25 64 00 00 	movaps 0x6425(%rip),%xmm1        # 410110 <_IO_stdin_used+0x1110>
  409ceb:	0f 57 c0             	xorps  %xmm0,%xmm0
  409cee:	e8 6d 00 00 00       	call   409d60 <box_for_position>
  409cf3:	0f 28 d0             	movaps %xmm0,%xmm2
  409cf6:	0f 28 d9             	movaps %xmm1,%xmm3
  409cf9:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
  409cfe:	0f 28 0c 24          	movaps (%rsp),%xmm1
			&& box_collide_with_box(
  409d02:	e8 a9 00 00 00       	call   409db0 <box_collide_with_box>
	if ((game->player && game->player->level == entity->level
  409d07:	84 c0                	test   %al,%al
  409d09:	74 10                	je     409d1b <gem_update+0xfb>
	{
		entity->state = STATE_DEAD;
  409d0b:	41 c7 47 5c 01 00 00 	movl   $0x1,0x5c(%r15)
  409d12:	00 
		game->collectibles++;
  409d13:	41 83 86 04 03 00 00 	addl   $0x1,0x304(%r14)
  409d1a:	01 
	}
}
  409d1b:	48 83 c4 20          	add    $0x20,%rsp
  409d1f:	5b                   	pop    %rbx
  409d20:	41 5e                	pop    %r14
  409d22:	41 5f                	pop    %r15
  409d24:	c3                   	ret    
  409d25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409d2c:	00 00 00 
  409d2f:	90                   	nop

0000000000409d30 <gem_free>:
{
  409d30:	53                   	push   %rbx
	ext = entity->extension;
  409d31:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
	free(ext->anim);
  409d35:	48 8b 3b             	mov    (%rbx),%rdi
  409d38:	e8 43 84 ff ff       	call   402180 <free@plt>
	free(ext);
  409d3d:	48 89 df             	mov    %rbx,%rdi
  409d40:	5b                   	pop    %rbx
  409d41:	e9 3a 84 ff ff       	jmp    402180 <free@plt>
  409d46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409d4d:	00 00 00 

0000000000409d50 <knight_new>:
t_entity	*knight_new(t_game *game, t_vec2 pos, int level)
{
	(void) game;
	(void) pos;
	(void) level;
	return (NULL);
  409d50:	31 c0                	xor    %eax,%eax
  409d52:	c3                   	ret    
  409d53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409d5a:	00 00 00 
  409d5d:	0f 1f 00             	nopl   (%rax)

0000000000409d60 <box_for_position>:
#include "box.h"
#include "../so_long.h"

t_box	box_for_position(t_box box, t_vec2 pos)
{
	return ((t_box){{box.min.x + pos.x, box.min.y + pos.y},
  409d60:	0f 16 d2             	movlhps %xmm2,%xmm2
  409d63:	0f 16 c1             	movlhps %xmm1,%xmm0
  409d66:	0f 58 c2             	addps  %xmm2,%xmm0
  409d69:	0f 28 c8             	movaps %xmm0,%xmm1
  409d6c:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
  409d70:	c3                   	ret    
  409d71:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409d78:	00 00 00 
  409d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409d80 <box_collide_with_point>:
		{box.max.x + pos.x, box.max.y + pos.y}});
}

bool	box_collide_with_point(t_box box, int x, int y)
{
	return (x >= box.min.x && x <= box.max.x
  409d80:	f3 0f 2a d7          	cvtsi2ss %edi,%xmm2
  409d84:	31 c0                	xor    %eax,%eax
  409d86:	0f 2e d0             	ucomiss %xmm0,%xmm2
  409d89:	72 22                	jb     409dad <box_collide_with_point+0x2d>
  409d8b:	0f 2e ca             	ucomiss %xmm2,%xmm1
  409d8e:	72 1d                	jb     409dad <box_collide_with_point+0x2d>
		&& y >= box.min.y && y <= box.max.y);
  409d90:	0f 57 d2             	xorps  %xmm2,%xmm2
  409d93:	f3 0f 2a d6          	cvtsi2ss %esi,%xmm2
  409d97:	0f c6 c0 55          	shufps $0x55,%xmm0,%xmm0
  409d9b:	0f 2e d0             	ucomiss %xmm0,%xmm2
  409d9e:	73 03                	jae    409da3 <box_collide_with_point+0x23>
  409da0:	31 c0                	xor    %eax,%eax
	return (x >= box.min.x && x <= box.max.x
  409da2:	c3                   	ret    
		&& y >= box.min.y && y <= box.max.y);
  409da3:	0f c6 c9 55          	shufps $0x55,%xmm1,%xmm1
  409da7:	0f 2e ca             	ucomiss %xmm2,%xmm1
  409daa:	0f 93 c0             	setae  %al
	return (x >= box.min.x && x <= box.max.x
  409dad:	c3                   	ret    
  409dae:	66 90                	xchg   %ax,%ax

0000000000409db0 <box_collide_with_box>:
}

bool	box_collide_with_box(t_box b1, t_box b2)
{
	return (b1.min.x <= b2.max.x
  409db0:	0f 2e d8             	ucomiss %xmm0,%xmm3
		&& b1.max.x >= b2.min.x
  409db3:	72 12                	jb     409dc7 <box_collide_with_box+0x17>
  409db5:	0f 2e ca             	ucomiss %xmm2,%xmm1
		&& b1.min.y <= b2.max.y
  409db8:	72 0d                	jb     409dc7 <box_collide_with_box+0x17>
  409dba:	0f c2 c3 06          	cmpnleps %xmm3,%xmm0
  409dbe:	66 0f c5 c0 02       	pextrw $0x2,%xmm0,%eax
		&& b1.max.y >= b2.min.y);
  409dc3:	a8 01                	test   $0x1,%al
  409dc5:	74 05                	je     409dcc <box_collide_with_box+0x1c>
  409dc7:	31 c0                	xor    %eax,%eax
	return (b1.min.x <= b2.max.x
  409dc9:	24 01                	and    $0x1,%al
  409dcb:	c3                   	ret    
		&& b1.max.y >= b2.min.y);
  409dcc:	0f c2 d1 02          	cmpleps %xmm1,%xmm2
  409dd0:	66 0f c5 c2 02       	pextrw $0x2,%xmm2,%eax
	return (b1.min.x <= b2.max.x
  409dd5:	24 01                	and    $0x1,%al
  409dd7:	c3                   	ret    
  409dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  409ddf:	00 

0000000000409de0 <vec2_add>:

#include "vec2.h"

t_vec2	vec2_add(t_vec2 v1, t_vec2 v2)
{
	return ((t_vec2){v1.x + v2.x, v1.y + v2.y});
  409de0:	0f 58 c1             	addps  %xmm1,%xmm0
  409de3:	c3                   	ret    
  409de4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409deb:	00 00 00 
  409dee:	66 90                	xchg   %ax,%ax

0000000000409df0 <vec2_sub>:
}

t_vec2	vec2_sub(t_vec2 v1, t_vec2 v2)
{
	return ((t_vec2){v1.x - v2.x, v1.y - v2.y});
  409df0:	0f 5c c1             	subps  %xmm1,%xmm0
  409df3:	c3                   	ret    
  409df4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409dfb:	00 00 00 
  409dfe:	66 90                	xchg   %ax,%ax

0000000000409e00 <vec2_mul>:
}

t_vec2	vec2_mul(t_vec2 v, float scale)
{
	return ((t_vec2){v.x * scale, v.y * scale});
  409e00:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
  409e04:	0f 59 c1             	mulps  %xmm1,%xmm0
  409e07:	c3                   	ret    
  409e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  409e0f:	00 

0000000000409e10 <vec2_equals>:
	return (a);
}

bool	vec2_equals(t_vec2 v1, t_vec2 v2, float approx)
{
	return (_abs(v1.x - v2.x) <= approx && _abs(v1.y - v2.y) <= approx);
  409e10:	0f 28 d8             	movaps %xmm0,%xmm3
  409e13:	f3 0f 5c d9          	subss  %xmm1,%xmm3
  409e17:	f3 0f 2c c3          	cvttss2si %xmm3,%eax
	if (a < 0)
  409e1b:	89 c1                	mov    %eax,%ecx
  409e1d:	f7 d9                	neg    %ecx
  409e1f:	0f 4c c8             	cmovl  %eax,%ecx
	return (_abs(v1.x - v2.x) <= approx && _abs(v1.y - v2.y) <= approx);
  409e22:	0f 57 db             	xorps  %xmm3,%xmm3
  409e25:	f3 0f 2a d9          	cvtsi2ss %ecx,%xmm3
  409e29:	0f 2e d3             	ucomiss %xmm3,%xmm2
  409e2c:	73 03                	jae    409e31 <vec2_equals+0x21>
  409e2e:	31 c0                	xor    %eax,%eax
  409e30:	c3                   	ret    
  409e31:	0f 5c c1             	subps  %xmm1,%xmm0
  409e34:	0f c6 c0 55          	shufps $0x55,%xmm0,%xmm0
  409e38:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
	if (a < 0)
  409e3c:	89 c1                	mov    %eax,%ecx
  409e3e:	f7 d9                	neg    %ecx
  409e40:	0f 4c c8             	cmovl  %eax,%ecx
	return (_abs(v1.x - v2.x) <= approx && _abs(v1.y - v2.y) <= approx);
  409e43:	0f 57 c0             	xorps  %xmm0,%xmm0
  409e46:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  409e4a:	0f 2e d0             	ucomiss %xmm0,%xmm2
  409e4d:	0f 93 c0             	setae  %al
  409e50:	c3                   	ret    
  409e51:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409e58:	00 00 00 
  409e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409e60 <vec2_length>:
}

float	vec2_length(t_vec2 v)
{
	return (sqrtf(v.x * v.x + v.y * v.y));
  409e60:	0f 59 c0             	mulps  %xmm0,%xmm0
  409e63:	0f 28 c8             	movaps %xmm0,%xmm1
  409e66:	0f c6 c8 55          	shufps $0x55,%xmm0,%xmm1
  409e6a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  409e6e:	0f 28 c1             	movaps %xmm1,%xmm0
  409e71:	e9 2a 86 ff ff       	jmp    4024a0 <sqrtf@plt>
  409e76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409e7d:	00 00 00 

0000000000409e80 <vec2_normalized>:
}

t_vec2	vec2_normalized(t_vec2 v)
{
  409e80:	48 83 ec 18          	sub    $0x18,%rsp
  409e84:	0f 29 04 24          	movaps %xmm0,(%rsp)
	return (sqrtf(v.x * v.x + v.y * v.y));
  409e88:	0f 28 c8             	movaps %xmm0,%xmm1
  409e8b:	0f 59 c8             	mulps  %xmm0,%xmm1
  409e8e:	0f 28 c1             	movaps %xmm1,%xmm0
  409e91:	0f c6 c1 55          	shufps $0x55,%xmm1,%xmm0
  409e95:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  409e99:	e8 02 86 ff ff       	call   4024a0 <sqrtf@plt>
	const float	length = vec2_length(v);

	return ((t_vec2){v.x / length, v.y / length});
  409e9e:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
  409ea2:	0f 28 0c 24          	movaps (%rsp),%xmm1
  409ea6:	0f 5e c8             	divps  %xmm0,%xmm1
}
  409ea9:	0f 28 c1             	movaps %xmm1,%xmm0
  409eac:	48 83 c4 18          	add    $0x18,%rsp
  409eb0:	c3                   	ret    
  409eb1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409eb8:	00 00 00 
  409ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409ec0 <vec2i_length_sqr>:
/* ************************************************************************** */

#include "vec2.h"

int	vec2i_length_sqr(t_vec2i a, t_vec2i b)
{
  409ec0:	48 89 f8             	mov    %rdi,%rax
  409ec3:	48 89 f9             	mov    %rdi,%rcx
  409ec6:	48 c1 e9 20          	shr    $0x20,%rcx
	return ((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
  409eca:	29 f0                	sub    %esi,%eax
  409ecc:	48 c1 ee 20          	shr    $0x20,%rsi
  409ed0:	0f af c0             	imul   %eax,%eax
  409ed3:	29 f1                	sub    %esi,%ecx
  409ed5:	0f af c9             	imul   %ecx,%ecx
  409ed8:	01 c8                	add    %ecx,%eax
  409eda:	c3                   	ret    
  409edb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409ee0 <astar_search>:

/*
 * https://gist.github.com/ryancollingwood/32446307e976a11a1185a5394d6657bc
 */
t_vec2i	*astar_search(t_arena *arena, t_level *map, t_vec2i start, t_vec2i end)
{
  409ee0:	55                   	push   %rbp
  409ee1:	41 57                	push   %r15
  409ee3:	41 56                	push   %r14
  409ee5:	41 55                	push   %r13
  409ee7:	41 54                	push   %r12
  409ee9:	53                   	push   %rbx
  409eea:	48 83 ec 38          	sub    $0x38,%rsp
  409eee:	48 89 cb             	mov    %rcx,%rbx
  409ef1:	49 89 f4             	mov    %rsi,%r12
  409ef4:	49 89 fd             	mov    %rdi,%r13
	t_anode	*start_node;
	t_anode	*end_node;

	start_node = new_node(arena, NULL, start);
  409ef7:	31 f6                	xor    %esi,%esi
  409ef9:	e8 32 03 00 00       	call   40a230 <new_node>
  409efe:	48 89 c5             	mov    %rax,%rbp
	end_node = new_node(arena, NULL, end);
  409f01:	4c 89 ef             	mov    %r13,%rdi
  409f04:	31 f6                	xor    %esi,%esi
  409f06:	48 89 da             	mov    %rbx,%rdx
  409f09:	e8 22 03 00 00       	call   40a230 <new_node>
  409f0e:	49 89 c7             	mov    %rax,%r15
  409f11:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
	open_list = vector_new(sizeof(t_anode *), 0);
  409f16:	bf 08 00 00 00       	mov    $0x8,%edi
  409f1b:	31 f6                	xor    %esi,%esi
  409f1d:	e8 2e 04 00 00       	call   40a350 <vector_new>
  409f22:	48 89 04 24          	mov    %rax,(%rsp)
	close_list = vector_new(sizeof(t_anode *), 0);
  409f26:	bf 08 00 00 00       	mov    $0x8,%edi
  409f2b:	31 f6                	xor    %esi,%esi
  409f2d:	e8 1e 04 00 00       	call   40a350 <vector_new>
  409f32:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409f37:	48 89 e7             	mov    %rsp,%rdi
  409f3a:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
	vector_add((void *) &open_list, &start_node);
  409f3f:	e8 4c 04 00 00       	call   40a390 <vector_add>
	while (vector_size(open_list) > 0)
  409f44:	48 8b 3c 24          	mov    (%rsp),%rdi
  409f48:	e8 a3 04 00 00       	call   40a3f0 <vector_size>
  409f4d:	85 c0                	test   %eax,%eax
  409f4f:	0f 84 0e 02 00 00    	je     40a163 <astar_search+0x283>
  409f55:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  409f5a:	eb 22                	jmp    409f7e <astar_search+0x9e>
  409f5c:	0f 1f 40 00          	nopl   0x0(%rax)
	vector_free(children);
  409f60:	48 89 ef             	mov    %rbp,%rdi
  409f63:	e8 a8 04 00 00       	call   40a410 <vector_free>
	while (vector_size(open_list) > 0)
  409f68:	48 8b 3c 24          	mov    (%rsp),%rdi
  409f6c:	e8 7f 04 00 00       	call   40a3f0 <vector_size>
  409f71:	85 c0                	test   %eax,%eax
  409f73:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  409f78:	0f 84 e5 01 00 00    	je     40a163 <astar_search+0x283>
		_find_current_node(&current_node, &current_index, open_list);
  409f7e:	48 8b 2c 24          	mov    (%rsp),%rbp
	*current_node = open_list[0];
  409f82:	48 8b 45 00          	mov    0x0(%rbp),%rax
  409f86:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
	while (j < vector_size(open_list))
  409f8b:	48 89 ef             	mov    %rbp,%rdi
  409f8e:	e8 5d 04 00 00       	call   40a3f0 <vector_size>
  409f93:	41 be 00 00 00 00    	mov    $0x0,%r14d
  409f99:	85 c0                	test   %eax,%eax
  409f9b:	74 43                	je     409fe0 <astar_search+0x100>
  409f9d:	45 31 f6             	xor    %r14d,%r14d
  409fa0:	31 db                	xor    %ebx,%ebx
  409fa2:	eb 1f                	jmp    409fc3 <astar_search+0xe3>
  409fa4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  409fab:	00 00 00 
  409fae:	66 90                	xchg   %ax,%ax
		j++;
  409fb0:	48 83 c3 01          	add    $0x1,%rbx
	while (j < vector_size(open_list))
  409fb4:	48 89 ef             	mov    %rbp,%rdi
  409fb7:	e8 34 04 00 00       	call   40a3f0 <vector_size>
  409fbc:	89 c0                	mov    %eax,%eax
  409fbe:	48 39 c3             	cmp    %rax,%rbx
  409fc1:	73 1d                	jae    409fe0 <astar_search+0x100>
		if (open_list[j]->f < (*current_node)->f)
  409fc3:	48 8b 44 dd 00       	mov    0x0(%rbp,%rbx,8),%rax
  409fc8:	8b 48 10             	mov    0x10(%rax),%ecx
  409fcb:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  409fd0:	3b 4a 10             	cmp    0x10(%rdx),%ecx
  409fd3:	7d db                	jge    409fb0 <astar_search+0xd0>
			*current_node = open_list[j];
  409fd5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409fda:	41 89 de             	mov    %ebx,%r14d
  409fdd:	eb d1                	jmp    409fb0 <astar_search+0xd0>
  409fdf:	90                   	nop
		vector_remove((void *)&open_list, current_index);
  409fe0:	48 89 e7             	mov    %rsp,%rdi
  409fe3:	44 89 f6             	mov    %r14d,%esi
  409fe6:	e8 85 04 00 00       	call   40a470 <vector_remove>
		vector_add((void *)&close_list, &current_node);
  409feb:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  409ff0:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  409ff5:	e8 96 03 00 00       	call   40a390 <vector_add>
		if (node_equals(current_node, end_node))
  409ffa:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  409fff:	4c 89 fe             	mov    %r15,%rsi
  40a002:	e8 59 02 00 00       	call   40a260 <node_equals>
  40a007:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  40a00c:	84 c0                	test   %al,%al
  40a00e:	0f 85 6e 01 00 00    	jne    40a182 <astar_search+0x2a2>
	children = vector_new(sizeof(t_anode *), 0);
  40a014:	bf 08 00 00 00       	mov    $0x8,%edi
  40a019:	31 f6                	xor    %esi,%esi
  40a01b:	e8 30 03 00 00       	call   40a350 <vector_new>
  40a020:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40a025:	31 ed                	xor    %ebp,%ebp
	if (!children)
  40a027:	48 85 c0             	test   %rax,%rax
  40a02a:	0f 84 95 00 00 00    	je     40a0c5 <astar_search+0x1e5>
  40a030:	48 8d 15 09 62 00 00 	lea    0x6209(%rip),%rdx        # 410240 <_IO_stdin_used+0x1240>
  40a037:	eb 11                	jmp    40a04a <astar_search+0x16a>
  40a039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	while (++i < 8)
  40a040:	48 83 c5 01          	add    $0x1,%rbp
  40a044:	48 83 fd 08          	cmp    $0x8,%rbp
  40a048:	74 76                	je     40a0c0 <astar_search+0x1e0>
		pos = (t_vec2i){c->pos.x + positions[i][0], c->pos.y + positions[i][1]};
  40a04a:	8b 04 ea             	mov    (%rdx,%rbp,8),%eax
  40a04d:	41 03 46 14          	add    0x14(%r14),%eax
		if (pos.x >= m->width || pos.x < 0 || pos.y >= m->height || pos.y < 0
  40a051:	78 ed                	js     40a040 <astar_search+0x160>
  40a053:	41 3b 44 24 20       	cmp    0x20(%r12),%eax
  40a058:	7d e6                	jge    40a040 <astar_search+0x160>
  40a05a:	8b 4c ea 04          	mov    0x4(%rdx,%rbp,8),%ecx
  40a05e:	41 03 4e 18          	add    0x18(%r14),%ecx
  40a062:	78 dc                	js     40a040 <astar_search+0x160>
  40a064:	41 3b 4c 24 24       	cmp    0x24(%r12),%ecx
  40a069:	7d d5                	jge    40a040 <astar_search+0x160>
			|| astar_is_tile_solid(m, pos))
  40a06b:	48 c1 e1 20          	shl    $0x20,%rcx
  40a06f:	89 c3                	mov    %eax,%ebx
  40a071:	48 09 cb             	or     %rcx,%rbx
  40a074:	4c 89 e7             	mov    %r12,%rdi
  40a077:	48 89 de             	mov    %rbx,%rsi
  40a07a:	e8 61 02 00 00       	call   40a2e0 <astar_is_tile_solid>
  40a07f:	48 8d 15 ba 61 00 00 	lea    0x61ba(%rip),%rdx        # 410240 <_IO_stdin_used+0x1240>
		if (pos.x >= m->width || pos.x < 0 || pos.y >= m->height || pos.y < 0
  40a086:	84 c0                	test   %al,%al
  40a088:	75 b6                	jne    40a040 <astar_search+0x160>
		node = new_node(arena, c, pos);
  40a08a:	4c 89 ef             	mov    %r13,%rdi
  40a08d:	4c 89 f6             	mov    %r14,%rsi
  40a090:	48 89 da             	mov    %rbx,%rdx
  40a093:	e8 98 01 00 00       	call   40a230 <new_node>
  40a098:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		vector_add((void *)&children, &node);
  40a09d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40a0a2:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  40a0a7:	e8 e4 02 00 00       	call   40a390 <vector_add>
  40a0ac:	48 8d 15 8d 61 00 00 	lea    0x618d(%rip),%rdx        # 410240 <_IO_stdin_used+0x1240>
  40a0b3:	eb 8b                	jmp    40a040 <astar_search+0x160>
  40a0b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a0bc:	00 00 00 
  40a0bf:	90                   	nop
	return (children);
  40a0c0:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
			current_node, end_node, (t_lists){&open_list, close_list});
  40a0c5:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40a0ca:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
	while (i < vector_size(children))
  40a0cf:	48 89 ef             	mov    %rbp,%rdi
  40a0d2:	e8 19 03 00 00       	call   40a3f0 <vector_size>
  40a0d7:	85 c0                	test   %eax,%eax
  40a0d9:	0f 84 81 fe ff ff    	je     409f60 <astar_search+0x80>
  40a0df:	45 31 ed             	xor    %r13d,%r13d
  40a0e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a0e9:	00 00 00 
  40a0ec:	0f 1f 40 00          	nopl   0x0(%rax)
		child = children[i];
  40a0f0:	4a 8b 74 ed 00       	mov    0x0(%rbp,%r13,8),%rsi
  40a0f5:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
		if (contains_node(l.close_list, child))
  40a0fa:	4c 89 f7             	mov    %r14,%rdi
  40a0fd:	e8 7e 01 00 00       	call   40a280 <contains_node>
  40a102:	84 c0                	test   %al,%al
  40a104:	75 57                	jne    40a15d <astar_search+0x27d>
		child->g = current_node->g + 1;
  40a106:	8b 43 08             	mov    0x8(%rbx),%eax
  40a109:	83 c0 01             	add    $0x1,%eax
  40a10c:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  40a111:	89 41 08             	mov    %eax,0x8(%rcx)
		child->h = vec2i_length_sqr(child->pos, end_node->pos);
  40a114:	48 8b 79 14          	mov    0x14(%rcx),%rdi
  40a118:	49 8b 77 14          	mov    0x14(%r15),%rsi
  40a11c:	e8 9f fd ff ff       	call   409ec0 <vec2i_length_sqr>
  40a121:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  40a126:	89 46 0c             	mov    %eax,0xc(%rsi)
		child->f = child->g + child->h;
  40a129:	03 46 08             	add    0x8(%rsi),%eax
  40a12c:	89 46 10             	mov    %eax,0x10(%rsi)
		if (contains_node(*l.open_list, child))
  40a12f:	48 8b 3c 24          	mov    (%rsp),%rdi
  40a133:	e8 48 01 00 00       	call   40a280 <contains_node>
  40a138:	84 c0                	test   %al,%al
  40a13a:	75 21                	jne    40a15d <astar_search+0x27d>
		vector_add((void *)l.open_list, &child);
  40a13c:	48 89 e7             	mov    %rsp,%rdi
  40a13f:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40a144:	e8 47 02 00 00       	call   40a390 <vector_add>
	while (i < vector_size(children))
  40a149:	48 89 ef             	mov    %rbp,%rdi
  40a14c:	e8 9f 02 00 00       	call   40a3f0 <vector_size>
  40a151:	89 c0                	mov    %eax,%eax
  40a153:	49 39 c5             	cmp    %rax,%r13
  40a156:	72 98                	jb     40a0f0 <astar_search+0x210>
  40a158:	e9 03 fe ff ff       	jmp    409f60 <astar_search+0x80>
  40a15d:	49 83 c5 01          	add    $0x1,%r13
  40a161:	eb e6                	jmp    40a149 <astar_search+0x269>
	vector_free(open_list);
  40a163:	48 8b 3c 24          	mov    (%rsp),%rdi
  40a167:	e8 a4 02 00 00       	call   40a410 <vector_free>
	vector_free(close_list);
  40a16c:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40a171:	e8 9a 02 00 00       	call   40a410 <vector_free>
	arena_release(arena);
  40a176:	4c 89 ef             	mov    %r13,%rdi
  40a179:	e8 e2 c5 ff ff       	call   406760 <arena_release>
  40a17e:	31 c0                	xor    %eax,%eax
  40a180:	eb 14                	jmp    40a196 <astar_search+0x2b6>
			return (construct_path(current_node, open_list, close_list, arena));
  40a182:	48 8b 34 24          	mov    (%rsp),%rsi
  40a186:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40a18b:	4c 89 f7             	mov    %r14,%rdi
  40a18e:	4c 89 e9             	mov    %r13,%rcx
  40a191:	e8 1a 00 00 00       	call   40a1b0 <construct_path>
	return (_astar_search_int(arena, map, start_node, end_node));
  40a196:	48 83 c4 38          	add    $0x38,%rsp
  40a19a:	5b                   	pop    %rbx
  40a19b:	41 5c                	pop    %r12
  40a19d:	41 5d                	pop    %r13
  40a19f:	41 5e                	pop    %r14
  40a1a1:	41 5f                	pop    %r15
  40a1a3:	5d                   	pop    %rbp
  40a1a4:	c3                   	ret    
  40a1a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a1ac:	00 00 00 
  40a1af:	90                   	nop

000000000040a1b0 <construct_path>:
#include "a_star.h"
#include "../data/vector.h"

t_vec2i	*construct_path(t_anode *current_node, t_anode **open_list,
	t_anode **close_list, t_arena *arena)
{
  40a1b0:	41 57                	push   %r15
  40a1b2:	41 56                	push   %r14
  40a1b4:	41 55                	push   %r13
  40a1b6:	41 54                	push   %r12
  40a1b8:	53                   	push   %rbx
  40a1b9:	48 83 ec 10          	sub    $0x10,%rsp
  40a1bd:	49 89 ce             	mov    %rcx,%r14
  40a1c0:	49 89 d7             	mov    %rdx,%r15
  40a1c3:	49 89 f4             	mov    %rsi,%r12
  40a1c6:	48 89 fb             	mov    %rdi,%rbx
	t_vec2i	*path;
	t_anode	*prev;

	path = vector_new(sizeof(t_vec2i), 0);
  40a1c9:	bf 08 00 00 00       	mov    $0x8,%edi
  40a1ce:	31 f6                	xor    %esi,%esi
  40a1d0:	e8 7b 01 00 00       	call   40a350 <vector_new>
  40a1d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
	while (current_node)
  40a1da:	48 85 db             	test   %rbx,%rbx
  40a1dd:	74 25                	je     40a204 <construct_path+0x54>
  40a1df:	4c 8d 6c 24 08       	lea    0x8(%rsp),%r13
  40a1e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a1eb:	00 00 00 
  40a1ee:	66 90                	xchg   %ax,%ax
	{
		vector_add((void *)&path, &current_node->pos);
  40a1f0:	48 8d 73 14          	lea    0x14(%rbx),%rsi
  40a1f4:	4c 89 ef             	mov    %r13,%rdi
  40a1f7:	e8 94 01 00 00       	call   40a390 <vector_add>
		prev = current_node->parent;
  40a1fc:	48 8b 1b             	mov    (%rbx),%rbx
	while (current_node)
  40a1ff:	48 85 db             	test   %rbx,%rbx
  40a202:	75 ec                	jne    40a1f0 <construct_path+0x40>
		current_node = prev;
	}
	vector_free(open_list);
  40a204:	4c 89 e7             	mov    %r12,%rdi
  40a207:	e8 04 02 00 00       	call   40a410 <vector_free>
	vector_free(close_list);
  40a20c:	4c 89 ff             	mov    %r15,%rdi
  40a20f:	e8 fc 01 00 00       	call   40a410 <vector_free>
	arena_release(arena);
  40a214:	4c 89 f7             	mov    %r14,%rdi
  40a217:	e8 44 c5 ff ff       	call   406760 <arena_release>
	return (path);
  40a21c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40a221:	48 83 c4 10          	add    $0x10,%rsp
  40a225:	5b                   	pop    %rbx
  40a226:	41 5c                	pop    %r12
  40a228:	41 5d                	pop    %r13
  40a22a:	41 5e                	pop    %r14
  40a22c:	41 5f                	pop    %r15
  40a22e:	c3                   	ret    
  40a22f:	90                   	nop

000000000040a230 <new_node>:
}

t_anode	*new_node(t_arena *arena, t_anode *parent, t_vec2i pos)
{
  40a230:	41 56                	push   %r14
  40a232:	53                   	push   %rbx
  40a233:	50                   	push   %rax
  40a234:	49 89 d6             	mov    %rdx,%r14
  40a237:	48 89 f3             	mov    %rsi,%rbx
	t_anode	*node;

	node = arena_alloc(arena);
  40a23a:	e8 f1 c4 ff ff       	call   406730 <arena_alloc>
	node->parent = parent;
  40a23f:	48 89 18             	mov    %rbx,(%rax)
	node->pos = pos;
  40a242:	4c 89 70 14          	mov    %r14,0x14(%rax)
	node->g = 0;
  40a246:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40a24d:	00 
	node->h = 0;
	node->f = 0;
  40a24e:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
	return (node);
  40a255:	48 83 c4 08          	add    $0x8,%rsp
  40a259:	5b                   	pop    %rbx
  40a25a:	41 5e                	pop    %r14
  40a25c:	c3                   	ret    
  40a25d:	0f 1f 00             	nopl   (%rax)

000000000040a260 <node_equals>:
}

bool	node_equals(t_anode *n1, t_anode *n2)
{
	return (n1->pos.x == n2->pos.x && n1->pos.y == n2->pos.y);
  40a260:	8b 47 14             	mov    0x14(%rdi),%eax
  40a263:	3b 46 14             	cmp    0x14(%rsi),%eax
  40a266:	75 0a                	jne    40a272 <node_equals+0x12>
  40a268:	8b 47 18             	mov    0x18(%rdi),%eax
  40a26b:	3b 46 18             	cmp    0x18(%rsi),%eax
  40a26e:	0f 94 c0             	sete   %al
  40a271:	c3                   	ret    
  40a272:	31 c0                	xor    %eax,%eax
  40a274:	c3                   	ret    
  40a275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a27c:	00 00 00 
  40a27f:	90                   	nop

000000000040a280 <contains_node>:
}

bool	contains_node(t_anode **nodes, t_anode *n)
{
  40a280:	41 57                	push   %r15
  40a282:	41 56                	push   %r14
  40a284:	53                   	push   %rbx
  40a285:	49 89 f6             	mov    %rsi,%r14
  40a288:	49 89 ff             	mov    %rdi,%r15
	unsigned int	i;

	i = 0;
	while (i < vector_size(nodes))
  40a28b:	e8 60 01 00 00       	call   40a3f0 <vector_size>
  40a290:	85 c0                	test   %eax,%eax
  40a292:	74 39                	je     40a2cd <contains_node+0x4d>
  40a294:	31 db                	xor    %ebx,%ebx
  40a296:	eb 1b                	jmp    40a2b3 <contains_node+0x33>
  40a298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a29f:	00 
	{
		if (node_equals(nodes[i], n))
			return (true);
		i++;
  40a2a0:	48 83 c3 01          	add    $0x1,%rbx
	while (i < vector_size(nodes))
  40a2a4:	4c 89 ff             	mov    %r15,%rdi
  40a2a7:	e8 44 01 00 00       	call   40a3f0 <vector_size>
  40a2ac:	89 c0                	mov    %eax,%eax
  40a2ae:	48 39 c3             	cmp    %rax,%rbx
  40a2b1:	73 1a                	jae    40a2cd <contains_node+0x4d>
		if (node_equals(nodes[i], n))
  40a2b3:	49 8b 04 df          	mov    (%r15,%rbx,8),%rax
	return (n1->pos.x == n2->pos.x && n1->pos.y == n2->pos.y);
  40a2b7:	8b 48 14             	mov    0x14(%rax),%ecx
  40a2ba:	41 3b 4e 14          	cmp    0x14(%r14),%ecx
  40a2be:	75 e0                	jne    40a2a0 <contains_node+0x20>
  40a2c0:	8b 40 18             	mov    0x18(%rax),%eax
  40a2c3:	41 3b 46 18          	cmp    0x18(%r14),%eax
		if (node_equals(nodes[i], n))
  40a2c7:	75 d7                	jne    40a2a0 <contains_node+0x20>
  40a2c9:	b0 01                	mov    $0x1,%al
  40a2cb:	eb 02                	jmp    40a2cf <contains_node+0x4f>
  40a2cd:	31 c0                	xor    %eax,%eax
	}
	return (false);
}
  40a2cf:	5b                   	pop    %rbx
  40a2d0:	41 5e                	pop    %r14
  40a2d2:	41 5f                	pop    %r15
  40a2d4:	c3                   	ret    
  40a2d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a2dc:	00 00 00 
  40a2df:	90                   	nop

000000000040a2e0 <astar_is_tile_solid>:

bool	astar_is_tile_solid(t_level *m, t_vec2i pos)
{
  40a2e0:	48 89 f1             	mov    %rsi,%rcx
  40a2e3:	48 c1 e9 20          	shr    $0x20,%rcx
	t_level	*up;

	up = &m->map->levels[m->index + 1];
  40a2e7:	4c 8b 1f             	mov    (%rdi),%r11
	return (m->data[pos.x + pos.y * m->width] == TILE_SOLID
  40a2ea:	48 8b 47 08          	mov    0x8(%rdi),%rax
	up = &m->map->levels[m->index + 1];
  40a2ee:	4d 8b 03             	mov    (%r11),%r8
  40a2f1:	4c 63 4f 28          	movslq 0x28(%rdi),%r9
	return (m->data[pos.x + pos.y * m->width] == TILE_SOLID
  40a2f5:	44 8b 57 20          	mov    0x20(%rdi),%r10d
  40a2f9:	44 89 d7             	mov    %r10d,%edi
  40a2fc:	0f af f9             	imul   %ecx,%edi
  40a2ff:	01 f7                	add    %esi,%edi
  40a301:	48 63 ff             	movslq %edi,%rdi
  40a304:	8b 3c b8             	mov    (%rax,%rdi,4),%edi
		|| m->data[pos.x + pos.y * m->width] == TILE_STAIR
  40a307:	83 ff 05             	cmp    $0x5,%edi
  40a30a:	77 0d                	ja     40a319 <astar_is_tile_solid+0x39>
  40a30c:	b0 01                	mov    $0x1,%al
  40a30e:	ba 26 00 00 00       	mov    $0x26,%edx
  40a313:	0f a3 fa             	bt     %edi,%edx
  40a316:	73 01                	jae    40a319 <astar_is_tile_solid+0x39>
	return (m->data[pos.x + pos.y * m->width] == TILE_SOLID
  40a318:	c3                   	ret    
  40a319:	31 c0                	xor    %eax,%eax
  40a31b:	85 c9                	test   %ecx,%ecx
		|| m->data[pos.x + pos.y * m->width] == TILE_DOOR
		|| (m->index + 1 < m->map->level_count && pos.y - 1 >= 0
  40a31d:	7e f9                	jle    40a318 <astar_is_tile_solid+0x38>
  40a31f:	49 83 c1 01          	add    $0x1,%r9
  40a323:	45 3b 4b 08          	cmp    0x8(%r11),%r9d
  40a327:	7d ef                	jge    40a318 <astar_is_tile_solid+0x38>
  40a329:	83 c1 ff             	add    $0xffffffff,%ecx
			&& up->data[pos.x + (pos.y - 1) * m->width] == TILE_EMPTY));
  40a32c:	4b 8d 04 49          	lea    (%r9,%r9,2),%rax
  40a330:	48 c1 e0 04          	shl    $0x4,%rax
  40a334:	49 8b 44 00 08       	mov    0x8(%r8,%rax,1),%rax
  40a339:	44 0f af d1          	imul   %ecx,%r10d
  40a33d:	41 01 f2             	add    %esi,%r10d
  40a340:	49 63 ca             	movslq %r10d,%rcx
  40a343:	83 3c 88 00          	cmpl   $0x0,(%rax,%rcx,4)
  40a347:	0f 94 c0             	sete   %al
	return (m->data[pos.x + pos.y * m->width] == TILE_SOLID
  40a34a:	c3                   	ret    
  40a34b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040a350 <vector_new>:
#include "vector.h"
#include "libft.h"
#include <stdlib.h>

void	*vector_new(unsigned int el_size, unsigned int capacity)
{
  40a350:	55                   	push   %rbp
  40a351:	53                   	push   %rbx
  40a352:	50                   	push   %rax
  40a353:	89 fb                	mov    %edi,%ebx
	t_vec_data	*vec_data;

	if (capacity == 0)
  40a355:	85 f6                	test   %esi,%esi
  40a357:	bd 01 00 00 00       	mov    $0x1,%ebp
  40a35c:	0f 45 ee             	cmovne %esi,%ebp
		capacity = 1;
	vec_data = malloc(sizeof(t_vec_data) + capacity * el_size);
  40a35f:	89 ef                	mov    %ebp,%edi
  40a361:	0f af fb             	imul   %ebx,%edi
  40a364:	48 83 c7 0c          	add    $0xc,%rdi
  40a368:	e8 a3 7d ff ff       	call   402110 <malloc@plt>
	vec_data->capacity = capacity;
  40a36d:	89 68 04             	mov    %ebp,0x4(%rax)
	vec_data->el_size = el_size;
  40a370:	89 58 08             	mov    %ebx,0x8(%rax)
	vec_data->size = 0;
  40a373:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
	return (((void *)vec_data) + sizeof(t_vec_data));
  40a379:	48 83 c0 0c          	add    $0xc,%rax
  40a37d:	48 83 c4 08          	add    $0x8,%rsp
  40a381:	5b                   	pop    %rbx
  40a382:	5d                   	pop    %rbp
  40a383:	c3                   	ret    
  40a384:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a38b:	00 00 00 
  40a38e:	66 90                	xchg   %ax,%ax

000000000040a390 <vector_add>:
}

void	vector_add(void **vec, void *elp)
{
  40a390:	41 57                	push   %r15
  40a392:	41 56                	push   %r14
  40a394:	53                   	push   %rbx
  40a395:	49 89 f6             	mov    %rsi,%r14
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
  40a398:	48 8b 0f             	mov    (%rdi),%rcx
  40a39b:	48 8d 59 f4          	lea    -0xc(%rcx),%rbx
	if (vec_data->size == vec_data->capacity)
  40a39f:	8b 41 f4             	mov    -0xc(%rcx),%eax
  40a3a2:	3b 41 f8             	cmp    -0x8(%rcx),%eax
  40a3a5:	75 2b                	jne    40a3d2 <vector_add+0x42>
  40a3a7:	49 89 ff             	mov    %rdi,%r15
	{
		vec_data = ft_realloc(vec_data, sizeof(t_vec_data)
				+ vec_data->capacity * vec_data->el_size, sizeof(t_vec_data)
  40a3aa:	0f af 41 fc          	imul   -0x4(%rcx),%eax
  40a3ae:	48 8d 70 0c          	lea    0xc(%rax),%rsi
				+ vec_data->capacity * 2 * vec_data->el_size);
  40a3b2:	01 c0                	add    %eax,%eax
  40a3b4:	48 83 c0 0c          	add    $0xc,%rax
		vec_data = ft_realloc(vec_data, sizeof(t_vec_data)
  40a3b8:	48 89 df             	mov    %rbx,%rdi
  40a3bb:	48 89 c2             	mov    %rax,%rdx
  40a3be:	e8 8d 31 00 00       	call   40d550 <ft_realloc>
  40a3c3:	48 89 c3             	mov    %rax,%rbx
		vec_data->capacity *= 2;
  40a3c6:	d1 60 04             	shll   0x4(%rax)
		*vec = ((void *)vec_data) + sizeof(t_vec_data);
  40a3c9:	48 8d 48 0c          	lea    0xc(%rax),%rcx
  40a3cd:	49 89 0f             	mov    %rcx,(%r15)
	}
	ft_memcpy(*vec + vec_data->size * vec_data->el_size, elp,
  40a3d0:	8b 00                	mov    (%rax),%eax
  40a3d2:	8b 53 08             	mov    0x8(%rbx),%edx
  40a3d5:	0f af c2             	imul   %edx,%eax
  40a3d8:	48 01 c8             	add    %rcx,%rax
  40a3db:	48 89 c7             	mov    %rax,%rdi
  40a3de:	4c 89 f6             	mov    %r14,%rsi
  40a3e1:	e8 7a 2e 00 00       	call   40d260 <ft_memcpy>
		vec_data->el_size);
	vec_data->size++;
  40a3e6:	83 03 01             	addl   $0x1,(%rbx)
}
  40a3e9:	5b                   	pop    %rbx
  40a3ea:	41 5e                	pop    %r14
  40a3ec:	41 5f                	pop    %r15
  40a3ee:	c3                   	ret    
  40a3ef:	90                   	nop

000000000040a3f0 <vector_size>:
unsigned int	vector_size(void *vec)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(vec - sizeof(t_vec_data));
	return (vec_data->size);
  40a3f0:	8b 47 f4             	mov    -0xc(%rdi),%eax
  40a3f3:	c3                   	ret    
  40a3f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a3fb:	00 00 00 
  40a3fe:	66 90                	xchg   %ax,%ax

000000000040a400 <vector_pop>:
void	vector_pop(void *vec)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(vec - sizeof(t_vec_data));
	vec_data->size--;
  40a400:	83 47 f4 ff          	addl   $0xffffffff,-0xc(%rdi)
}
  40a404:	c3                   	ret    
  40a405:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a40c:	00 00 00 
  40a40f:	90                   	nop

000000000040a410 <vector_free>:
#include "libft.h"
#include <stdlib.h>

void	vector_free(void *vec)
{
	free(vec - sizeof(t_vec_data));
  40a410:	48 83 c7 f4          	add    $0xfffffffffffffff4,%rdi
  40a414:	e9 67 7d ff ff       	jmp    402180 <free@plt>
  40a419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040a420 <vector_free_with>:
}

void	vector_free_with(void *vec, void (*func)(void *))
{
  40a420:	41 57                	push   %r15
  40a422:	41 56                	push   %r14
  40a424:	53                   	push   %rbx
  40a425:	49 89 f6             	mov    %rsi,%r14
  40a428:	49 89 ff             	mov    %rdi,%r15
	unsigned int	i;

	i = 0;
	while (i < vector_size(vec))
  40a42b:	e8 c0 ff ff ff       	call   40a3f0 <vector_size>
  40a430:	85 c0                	test   %eax,%eax
  40a432:	74 26                	je     40a45a <vector_free_with+0x3a>
  40a434:	31 db                	xor    %ebx,%ebx
  40a436:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a43d:	00 00 00 
	{
		func(*((void **)vec + i));
  40a440:	49 8b 3c df          	mov    (%r15,%rbx,8),%rdi
  40a444:	41 ff d6             	call   *%r14
		i++;
  40a447:	48 83 c3 01          	add    $0x1,%rbx
	while (i < vector_size(vec))
  40a44b:	4c 89 ff             	mov    %r15,%rdi
  40a44e:	e8 9d ff ff ff       	call   40a3f0 <vector_size>
  40a453:	89 c0                	mov    %eax,%eax
  40a455:	48 39 c3             	cmp    %rax,%rbx
  40a458:	72 e6                	jb     40a440 <vector_free_with+0x20>
	free(vec - sizeof(t_vec_data));
  40a45a:	49 83 c7 f4          	add    $0xfffffffffffffff4,%r15
  40a45e:	4c 89 ff             	mov    %r15,%rdi
  40a461:	5b                   	pop    %rbx
  40a462:	41 5e                	pop    %r14
  40a464:	41 5f                	pop    %r15
  40a466:	e9 15 7d ff ff       	jmp    402180 <free@plt>
  40a46b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040a470 <vector_remove>:
	}
	vector_free(vec);
}

void	vector_remove(void **vec, unsigned int index)
{
  40a470:	53                   	push   %rbx
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
  40a471:	48 8b 1f             	mov    (%rdi),%rbx
	if (index >= vec_data->size)
  40a474:	8b 53 f4             	mov    -0xc(%rbx),%edx
  40a477:	39 f2                	cmp    %esi,%edx
  40a479:	76 27                	jbe    40a4a2 <vector_remove+0x32>
		return ;
	ft_memcpy(*vec + index * vec_data->el_size,
  40a47b:	8b 4b fc             	mov    -0x4(%rbx),%ecx
  40a47e:	89 cf                	mov    %ecx,%edi
  40a480:	0f af fe             	imul   %esi,%edi
  40a483:	48 01 df             	add    %rbx,%rdi
		*vec + (index + 1) * vec_data->el_size,
  40a486:	8d 46 01             	lea    0x1(%rsi),%eax
  40a489:	0f af c1             	imul   %ecx,%eax
  40a48c:	48 01 d8             	add    %rbx,%rax
		(vec_data->size - index - 1) * vec_data->el_size);
  40a48f:	f7 d6                	not    %esi
  40a491:	01 f2                	add    %esi,%edx
  40a493:	0f af d1             	imul   %ecx,%edx
	ft_memcpy(*vec + index * vec_data->el_size,
  40a496:	48 89 c6             	mov    %rax,%rsi
  40a499:	e8 c2 2d 00 00       	call   40d260 <ft_memcpy>
	vec_data->size--;
  40a49e:	83 43 f4 ff          	addl   $0xffffffff,-0xc(%rbx)
}
  40a4a2:	5b                   	pop    %rbx
  40a4a3:	c3                   	ret    
  40a4a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a4ab:	00 00 00 
  40a4ae:	66 90                	xchg   %ax,%ax

000000000040a4b0 <vector_remove_swap>:

void	vector_remove_swap(void **vec, unsigned int index)
{
  40a4b0:	53                   	push   %rbx
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
  40a4b1:	48 8b 1f             	mov    (%rdi),%rbx
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (vec_data->size - 1) * vec_data->el_size,
  40a4b4:	8b 43 f4             	mov    -0xc(%rbx),%eax
	ft_memcpy(*vec + index * vec_data->el_size,
  40a4b7:	8b 53 fc             	mov    -0x4(%rbx),%edx
  40a4ba:	0f af f2             	imul   %edx,%esi
  40a4bd:	48 8d 3c 1e          	lea    (%rsi,%rbx,1),%rdi
		*vec + (vec_data->size - 1) * vec_data->el_size,
  40a4c1:	83 c0 ff             	add    $0xffffffff,%eax
  40a4c4:	0f af c2             	imul   %edx,%eax
  40a4c7:	48 01 d8             	add    %rbx,%rax
	ft_memcpy(*vec + index * vec_data->el_size,
  40a4ca:	48 89 c6             	mov    %rax,%rsi
  40a4cd:	e8 8e 2d 00 00       	call   40d260 <ft_memcpy>
		vec_data->el_size);
	vec_data->size--;
  40a4d2:	83 43 f4 ff          	addl   $0xffffffff,-0xc(%rbx)
}
  40a4d6:	5b                   	pop    %rbx
  40a4d7:	c3                   	ret    
  40a4d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a4df:	00 

000000000040a4e0 <rdr_new>:
#include "render.h"
#include "../so_long.h"
#include <stdlib.h>

t_renderer	*rdr_new(void)
{
  40a4e0:	53                   	push   %rbx
	t_renderer	*rdr;

	rdr = malloc(sizeof(t_renderer));
  40a4e1:	bf 28 00 00 00       	mov    $0x28,%edi
  40a4e6:	e8 25 7c ff ff       	call   402110 <malloc@plt>
  40a4eb:	48 89 c3             	mov    %rax,%rbx
	rdr->root = NULL;
  40a4ee:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
	rdr->pixels = malloc(sizeof(t_trgb) * WIN_WIDTH * WIN_HEIGHT);
  40a4f5:	bf 00 60 54 00       	mov    $0x546000,%edi
  40a4fa:	e8 11 7c ff ff       	call   402110 <malloc@plt>
  40a4ff:	48 89 43 08          	mov    %rax,0x8(%rbx)
	arena_init(&rdr->allocator, sizeof(t_node), 1000000);
  40a503:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
  40a507:	be 38 00 00 00       	mov    $0x38,%esi
  40a50c:	ba 40 42 0f 00       	mov    $0xf4240,%edx
  40a511:	e8 ea c1 ff ff       	call   406700 <arena_init>
	return (rdr);
  40a516:	48 89 d8             	mov    %rbx,%rax
  40a519:	5b                   	pop    %rbx
  40a51a:	c3                   	ret    
  40a51b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040a520 <rdr_free>:
}

void	rdr_free(t_renderer *rdr)
{
  40a520:	41 56                	push   %r14
  40a522:	53                   	push   %rbx
  40a523:	50                   	push   %rax
  40a524:	49 89 fe             	mov    %rdi,%r14
  40a527:	48 8b 1f             	mov    (%rdi),%rbx
  40a52a:	eb 08                	jmp    40a534 <rdr_free+0x14>
  40a52c:	0f 1f 40 00          	nopl   0x0(%rax)
  40a530:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
void	rdr_clear(t_renderer *rdr)
{
	t_node	*node;

	node = rdr->root;
	while (node)
  40a534:	48 85 db             	test   %rbx,%rbx
  40a537:	74 10                	je     40a549 <rdr_free+0x29>
	{
		if (node->type == NODE_TEXT)
  40a539:	83 3b 01             	cmpl   $0x1,(%rbx)
  40a53c:	75 f2                	jne    40a530 <rdr_free+0x10>
			free(node->text.str);
  40a53e:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  40a542:	e8 39 7c ff ff       	call   402180 <free@plt>
  40a547:	eb e7                	jmp    40a530 <rdr_free+0x10>
		node = node->next;
	}
	arena_release(&rdr->allocator);
  40a549:	49 8d 5e 10          	lea    0x10(%r14),%rbx
  40a54d:	48 89 df             	mov    %rbx,%rdi
  40a550:	e8 0b c2 ff ff       	call   406760 <arena_release>
	rdr->root = NULL;
  40a555:	49 c7 06 00 00 00 00 	movq   $0x0,(%r14)
	arena_free(&rdr->allocator);
  40a55c:	48 89 df             	mov    %rbx,%rdi
  40a55f:	e8 0c c2 ff ff       	call   406770 <arena_free>
	free(rdr->pixels);
  40a564:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  40a568:	e8 13 7c ff ff       	call   402180 <free@plt>
	free(rdr);
  40a56d:	4c 89 f7             	mov    %r14,%rdi
  40a570:	48 83 c4 08          	add    $0x8,%rsp
  40a574:	5b                   	pop    %rbx
  40a575:	41 5e                	pop    %r14
  40a577:	e9 04 7c ff ff       	jmp    402180 <free@plt>
  40a57c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a580 <rdr_clear>:
{
  40a580:	41 56                	push   %r14
  40a582:	53                   	push   %rbx
  40a583:	50                   	push   %rax
  40a584:	49 89 fe             	mov    %rdi,%r14
  40a587:	48 8b 1f             	mov    (%rdi),%rbx
  40a58a:	eb 08                	jmp    40a594 <rdr_clear+0x14>
  40a58c:	0f 1f 40 00          	nopl   0x0(%rax)
  40a590:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
	while (node)
  40a594:	48 85 db             	test   %rbx,%rbx
  40a597:	74 10                	je     40a5a9 <rdr_clear+0x29>
		if (node->type == NODE_TEXT)
  40a599:	83 3b 01             	cmpl   $0x1,(%rbx)
  40a59c:	75 f2                	jne    40a590 <rdr_clear+0x10>
			free(node->text.str);
  40a59e:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  40a5a2:	e8 d9 7b ff ff       	call   402180 <free@plt>
  40a5a7:	eb e7                	jmp    40a590 <rdr_clear+0x10>
	arena_release(&rdr->allocator);
  40a5a9:	49 8d 7e 10          	lea    0x10(%r14),%rdi
  40a5ad:	e8 ae c1 ff ff       	call   406760 <arena_release>
	rdr->root = NULL;
  40a5b2:	49 c7 06 00 00 00 00 	movq   $0x0,(%r14)
}
  40a5b9:	48 83 c4 08          	add    $0x8,%rsp
  40a5bd:	5b                   	pop    %rbx
  40a5be:	41 5e                	pop    %r14
  40a5c0:	c3                   	ret    
  40a5c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a5c8:	00 00 00 
  40a5cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040a5d0 <rdr_draw>:

void	rdr_draw(t_renderer *rdr, t_game *game)
{
  40a5d0:	41 56                	push   %r14
  40a5d2:	53                   	push   %rbx
  40a5d3:	50                   	push   %rax
  40a5d4:	48 8b 1f             	mov    (%rdi),%rbx
	t_node	*node;

	node = rdr->root;
	while (node)
  40a5d7:	48 85 db             	test   %rbx,%rbx
  40a5da:	0f 84 7d 00 00 00    	je     40a65d <rdr_draw+0x8d>
  40a5e0:	49 89 f6             	mov    %rsi,%r14
  40a5e3:	eb 2c                	jmp    40a611 <rdr_draw+0x41>
  40a5e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a5ec:	00 00 00 
  40a5ef:	90                   	nop
		if (node->type == NODE_SPRITE)
			rdr_draw_sprite(game, node->sprite.ptr, node->sprite.pos,
				(t_draw){SCALE, node->sprite.flipped, node->sprite.camera});
		else if (node->type == NODE_TEXT)
			rdr_draw_text(game, node->text.str, node->text.pos,
				(t_draw_text){node->text.font, node->text.color});
  40a5f0:	48 8b 53 18          	mov    0x18(%rbx),%rdx
			rdr_draw_text(game, node->text.str, node->text.pos,
  40a5f4:	48 8b 73 20          	mov    0x20(%rbx),%rsi
				(t_draw_text){node->text.font, node->text.color});
  40a5f8:	8b 4b 30             	mov    0x30(%rbx),%ecx
			rdr_draw_text(game, node->text.str, node->text.pos,
  40a5fb:	f2 0f 10 43 28       	movsd  0x28(%rbx),%xmm0
  40a600:	4c 89 f7             	mov    %r14,%rdi
  40a603:	e8 48 06 00 00       	call   40ac50 <rdr_draw_text>
  40a608:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
	while (node)
  40a60c:	48 85 db             	test   %rbx,%rbx
  40a60f:	74 4c                	je     40a65d <rdr_draw+0x8d>
		if (node->type == NODE_SPRITE)
  40a611:	8b 03                	mov    (%rbx),%eax
  40a613:	83 f8 02             	cmp    $0x2,%eax
  40a616:	74 38                	je     40a650 <rdr_draw+0x80>
  40a618:	83 f8 01             	cmp    $0x1,%eax
  40a61b:	74 d3                	je     40a5f0 <rdr_draw+0x20>
  40a61d:	85 c0                	test   %eax,%eax
  40a61f:	75 e7                	jne    40a608 <rdr_draw+0x38>
			rdr_draw_sprite(game, node->sprite.ptr, node->sprite.pos,
  40a621:	48 8b 73 18          	mov    0x18(%rbx),%rsi
				(t_draw){SCALE, node->sprite.flipped, node->sprite.camera});
  40a625:	0f b6 43 28          	movzbl 0x28(%rbx),%eax
  40a629:	0f b6 4b 29          	movzbl 0x29(%rbx),%ecx
			rdr_draw_sprite(game, node->sprite.ptr, node->sprite.pos,
  40a62d:	f2 0f 10 43 20       	movsd  0x20(%rbx),%xmm0
  40a632:	48 c1 e1 28          	shl    $0x28,%rcx
  40a636:	48 c1 e0 20          	shl    $0x20,%rax
  40a63a:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  40a63e:	48 83 c2 01          	add    $0x1,%rdx
  40a642:	4c 89 f7             	mov    %r14,%rdi
  40a645:	e8 26 00 00 00       	call   40a670 <rdr_draw_sprite>
  40a64a:	eb bc                	jmp    40a608 <rdr_draw+0x38>
  40a64c:	0f 1f 40 00          	nopl   0x0(%rax)
		else if (node->type == NODE_BLUR)
			rdr_blur_screen(game, node->blur.px);
  40a650:	8b 73 18             	mov    0x18(%rbx),%esi
  40a653:	4c 89 f7             	mov    %r14,%rdi
  40a656:	e8 c5 07 00 00       	call   40ae20 <rdr_blur_screen>
  40a65b:	eb ab                	jmp    40a608 <rdr_draw+0x38>
		node = node->next;
	}
}
  40a65d:	48 83 c4 08          	add    $0x8,%rsp
  40a661:	5b                   	pop    %rbx
  40a662:	41 5e                	pop    %r14
  40a664:	c3                   	ret    
  40a665:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a66c:	00 00 00 
  40a66f:	90                   	nop

000000000040a670 <rdr_draw_sprite>:
		pos = camera_off(game, pos);
	return (pos);
}

void	rdr_draw_sprite(t_game *game, t_img *sp, t_vec2 pos, t_draw draw)
{
  40a670:	55                   	push   %rbp
  40a671:	41 57                	push   %r15
  40a673:	41 56                	push   %r14
  40a675:	41 55                	push   %r13
  40a677:	41 54                	push   %r12
  40a679:	53                   	push   %rbx
  40a67a:	50                   	push   %rax
	int				height;
	int				x;
	int				y;
	unsigned int	color;

	if (!sp)
  40a67b:	48 85 f6             	test   %rsi,%rsi
  40a67e:	0f 84 09 01 00 00    	je     40a78d <rdr_draw_sprite+0x11d>
  40a684:	49 89 d6             	mov    %rdx,%r14
  40a687:	49 89 f7             	mov    %rsi,%r15
  40a68a:	49 89 fd             	mov    %rdi,%r13
  40a68d:	8b 6e 20             	mov    0x20(%rsi),%ebp
		return ;
	width = sp->width * draw.scale;
  40a690:	41 0f af ee          	imul   %r14d,%ebp
  40a694:	44 8b 66 24          	mov    0x24(%rsi),%r12d
	height = sp->height * draw.scale;
  40a698:	45 0f af e6          	imul   %r14d,%r12d
	if (draw.camera)
  40a69c:	48 0f ba e2 28       	bt     $0x28,%rdx
  40a6a1:	73 08                	jae    40a6ab <rdr_draw_sprite+0x3b>
		pos = camera_off(game, pos);
  40a6a3:	4c 89 ef             	mov    %r13,%rdi
  40a6a6:	e8 b5 bf ff ff       	call   406660 <camera_off>
	pos = _offset_pos(game, pos, draw);
	y = -1;
	while (++y < height)
  40a6ab:	45 85 e4             	test   %r12d,%r12d
  40a6ae:	0f 8e d9 00 00 00    	jle    40a78d <rdr_draw_sprite+0x11d>
  40a6b4:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
  40a6b9:	0f 28 c8             	movaps %xmm0,%xmm1
  40a6bc:	0f c6 c8 55          	shufps $0x55,%xmm0,%xmm1
  40a6c0:	f3 44 0f 2c c9       	cvttss2si %xmm1,%r9d
  40a6c5:	45 31 d2             	xor    %r10d,%r10d
  40a6c8:	0f 57 d2             	xorps  %xmm2,%xmm2
  40a6cb:	eb 14                	jmp    40a6e1 <rdr_draw_sprite+0x71>
  40a6cd:	0f 1f 00             	nopl   (%rax)
  40a6d0:	41 83 c2 01          	add    $0x1,%r10d
  40a6d4:	41 83 c1 01          	add    $0x1,%r9d
  40a6d8:	45 39 e2             	cmp    %r12d,%r10d
  40a6db:	0f 84 ac 00 00 00    	je     40a78d <rdr_draw_sprite+0x11d>
  40a6e1:	85 ed                	test   %ebp,%ebp
	{
		x = -1;
		while (++x < width)
  40a6e3:	7e eb                	jle    40a6d0 <rdr_draw_sprite+0x60>
  40a6e5:	0f 57 db             	xorps  %xmm3,%xmm3
  40a6e8:	f3 41 0f 2a da       	cvtsi2ss %r10d,%xmm3
  40a6ed:	f3 0f 58 d9          	addss  %xmm1,%xmm3
  40a6f1:	31 f6                	xor    %esi,%esi
  40a6f3:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  40a6f8:	eb 10                	jmp    40a70a <rdr_draw_sprite+0x9a>
  40a6fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40a700:	83 c6 01             	add    $0x1,%esi
  40a703:	83 c7 ff             	add    $0xffffffff,%edi
  40a706:	39 f5                	cmp    %esi,%ebp
  40a708:	74 c6                	je     40a6d0 <rdr_draw_sprite+0x60>
		{
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40a70a:	0f 57 e4             	xorps  %xmm4,%xmm4
  40a70d:	f3 0f 2a e6          	cvtsi2ss %esi,%xmm4
  40a711:	f3 0f 58 e0          	addss  %xmm0,%xmm4
  40a715:	0f 2e d4             	ucomiss %xmm4,%xmm2
  40a718:	77 e6                	ja     40a700 <rdr_draw_sprite+0x90>
  40a71a:	49 8b 4d 18          	mov    0x18(%r13),%rcx
  40a71e:	8b 41 20             	mov    0x20(%rcx),%eax
  40a721:	0f 57 ed             	xorps  %xmm5,%xmm5
  40a724:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
  40a728:	0f 2e e5             	ucomiss %xmm5,%xmm4
				|| pos.y + y < 0 || pos.y + y >= game->canvas->height)
  40a72b:	73 d3                	jae    40a700 <rdr_draw_sprite+0x90>
  40a72d:	0f 2e d3             	ucomiss %xmm3,%xmm2
  40a730:	77 ce                	ja     40a700 <rdr_draw_sprite+0x90>
  40a732:	0f 57 e4             	xorps  %xmm4,%xmm4
  40a735:	f3 0f 2a 61 24       	cvtsi2ssl 0x24(%rcx),%xmm4
  40a73a:	0f 2e dc             	ucomiss %xmm4,%xmm3
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40a73d:	73 c1                	jae    40a700 <rdr_draw_sprite+0x90>
  40a73f:	49 0f ba e6 20       	bt     $0x20,%r14
	const int		width = sp->width * draw.scale;
  40a744:	41 8b 5f 20          	mov    0x20(%r15),%ebx
	if (!draw.flipped)
  40a748:	72 08                	jb     40a752 <rdr_draw_sprite+0xe2>
		return (((unsigned int *) sp->data)[x + y * sp->width]);
  40a74a:	41 0f af da          	imul   %r10d,%ebx
  40a74e:	89 f2                	mov    %esi,%edx
  40a750:	eb 0e                	jmp    40a760 <rdr_draw_sprite+0xf0>
		return (((unsigned int *) sp->data)[(width - x - 1) + y * sp->height]);
  40a752:	41 0f af de          	imul   %r14d,%ebx
  40a756:	01 fb                	add    %edi,%ebx
  40a758:	41 8b 57 24          	mov    0x24(%r15),%edx
  40a75c:	41 0f af d2          	imul   %r10d,%edx
  40a760:	01 da                	add    %ebx,%edx
  40a762:	49 8b 5f 30          	mov    0x30(%r15),%rbx
  40a766:	48 63 d2             	movslq %edx,%rdx
  40a769:	8b 1c 93             	mov    (%rbx,%rdx,4),%ebx
				continue ;
			color = _get_pixel(sp, x, y, draw);
			if (color != 0xff000000)
  40a76c:	81 fb 00 00 00 ff    	cmp    $0xff000000,%ebx
  40a772:	74 8c                	je     40a700 <rdr_draw_sprite+0x90>
	((unsigned int *) game->canvas->data)[(int)pos.x
  40a774:	48 8b 49 30          	mov    0x30(%rcx),%rcx
  40a778:	41 0f af c1          	imul   %r9d,%eax
  40a77c:	41 8d 14 30          	lea    (%r8,%rsi,1),%edx
  40a780:	01 c2                	add    %eax,%edx
  40a782:	48 63 c2             	movslq %edx,%rax
		+ iter.x + ((int)pos.y + iter.y) * game->canvas->width] = color;
  40a785:	89 1c 81             	mov    %ebx,(%rcx,%rax,4)
  40a788:	e9 73 ff ff ff       	jmp    40a700 <rdr_draw_sprite+0x90>
				_set_color(game, pos, (t_vec2i){x, y}, color);
		}
	}
}
  40a78d:	48 83 c4 08          	add    $0x8,%rsp
  40a791:	5b                   	pop    %rbx
  40a792:	41 5c                	pop    %r12
  40a794:	41 5d                	pop    %r13
  40a796:	41 5e                	pop    %r14
  40a798:	41 5f                	pop    %r15
  40a79a:	5d                   	pop    %rbp
  40a79b:	c3                   	ret    
  40a79c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a7a0 <rdr_clear_screen>:

void	rdr_clear_screen(t_game *game, unsigned int color)
{
  40a7a0:	55                   	push   %rbp
  40a7a1:	53                   	push   %rbx
  40a7a2:	50                   	push   %rax
  40a7a3:	48 89 fb             	mov    %rdi,%rbx
	const int	s = game->canvas->width * game->canvas->height;
  40a7a6:	48 8b 47 18          	mov    0x18(%rdi),%rax
  40a7aa:	8b 68 24             	mov    0x24(%rax),%ebp
  40a7ad:	0f af 68 20          	imul   0x20(%rax),%ebp
	int			i;

	if (color == 0x0 && sp(game)[SP_WATER] != NULL)
  40a7b1:	85 f6                	test   %esi,%esi
  40a7b3:	75 1f                	jne    40a7d4 <rdr_clear_screen+0x34>
  40a7b5:	48 89 df             	mov    %rbx,%rdi
  40a7b8:	e8 23 9e ff ff       	call   4045e0 <sp>
  40a7bd:	48 83 38 00          	cmpq   $0x0,(%rax)
  40a7c1:	74 60                	je     40a823 <rdr_clear_screen+0x83>
		color = (((unsigned int *) sp(game)[SP_WATER]->data)[0]);
  40a7c3:	48 89 df             	mov    %rbx,%rdi
  40a7c6:	e8 15 9e ff ff       	call   4045e0 <sp>
  40a7cb:	48 8b 00             	mov    (%rax),%rax
  40a7ce:	48 8b 40 30          	mov    0x30(%rax),%rax
  40a7d2:	8b 30                	mov    (%rax),%esi
	i = -1;
	while (++i < s)
  40a7d4:	85 ed                	test   %ebp,%ebp
  40a7d6:	0f 8e 30 01 00 00    	jle    40a90c <rdr_clear_screen+0x16c>
  40a7dc:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40a7e0:	48 8b 40 30          	mov    0x30(%rax),%rax
  40a7e4:	89 e9                	mov    %ebp,%ecx
  40a7e6:	83 fd 08             	cmp    $0x8,%ebp
  40a7e9:	73 07                	jae    40a7f2 <rdr_clear_screen+0x52>
  40a7eb:	31 d2                	xor    %edx,%edx
  40a7ed:	e9 0e 01 00 00       	jmp    40a900 <rdr_clear_screen+0x160>
  40a7f2:	89 ca                	mov    %ecx,%edx
  40a7f4:	83 e2 f8             	and    $0xfffffff8,%edx
  40a7f7:	66 0f 6e c6          	movd   %esi,%xmm0
  40a7fb:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40a800:	48 8d 6a f8          	lea    -0x8(%rdx),%rbp
  40a804:	48 89 ef             	mov    %rbp,%rdi
  40a807:	48 c1 ef 03          	shr    $0x3,%rdi
  40a80b:	48 83 c7 01          	add    $0x1,%rdi
  40a80f:	41 89 f8             	mov    %edi,%r8d
  40a812:	41 83 e0 07          	and    $0x7,%r8d
  40a816:	48 83 fd 38          	cmp    $0x38,%rbp
  40a81a:	73 12                	jae    40a82e <rdr_clear_screen+0x8e>
  40a81c:	31 db                	xor    %ebx,%ebx
  40a81e:	e9 a2 00 00 00       	jmp    40a8c5 <rdr_clear_screen+0x125>
  40a823:	31 f6                	xor    %esi,%esi
  40a825:	85 ed                	test   %ebp,%ebp
  40a827:	7f b3                	jg     40a7dc <rdr_clear_screen+0x3c>
  40a829:	e9 de 00 00 00       	jmp    40a90c <rdr_clear_screen+0x16c>
  40a82e:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  40a832:	48 f7 df             	neg    %rdi
  40a835:	31 db                	xor    %ebx,%ebx
  40a837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a83e:	00 00 
		*(((unsigned int *)game->canvas->data + i)) = color;
  40a840:	f3 0f 7f 04 98       	movdqu %xmm0,(%rax,%rbx,4)
  40a845:	f3 0f 7f 44 98 10    	movdqu %xmm0,0x10(%rax,%rbx,4)
  40a84b:	f3 0f 7f 44 98 20    	movdqu %xmm0,0x20(%rax,%rbx,4)
  40a851:	f3 0f 7f 44 98 30    	movdqu %xmm0,0x30(%rax,%rbx,4)
  40a857:	f3 0f 7f 44 98 40    	movdqu %xmm0,0x40(%rax,%rbx,4)
  40a85d:	f3 0f 7f 44 98 50    	movdqu %xmm0,0x50(%rax,%rbx,4)
  40a863:	f3 0f 7f 44 98 60    	movdqu %xmm0,0x60(%rax,%rbx,4)
  40a869:	f3 0f 7f 44 98 70    	movdqu %xmm0,0x70(%rax,%rbx,4)
  40a86f:	f3 0f 7f 84 98 80 00 	movdqu %xmm0,0x80(%rax,%rbx,4)
  40a876:	00 00 
  40a878:	f3 0f 7f 84 98 90 00 	movdqu %xmm0,0x90(%rax,%rbx,4)
  40a87f:	00 00 
  40a881:	f3 0f 7f 84 98 a0 00 	movdqu %xmm0,0xa0(%rax,%rbx,4)
  40a888:	00 00 
  40a88a:	f3 0f 7f 84 98 b0 00 	movdqu %xmm0,0xb0(%rax,%rbx,4)
  40a891:	00 00 
  40a893:	f3 0f 7f 84 98 c0 00 	movdqu %xmm0,0xc0(%rax,%rbx,4)
  40a89a:	00 00 
  40a89c:	f3 0f 7f 84 98 d0 00 	movdqu %xmm0,0xd0(%rax,%rbx,4)
  40a8a3:	00 00 
  40a8a5:	f3 0f 7f 84 98 e0 00 	movdqu %xmm0,0xe0(%rax,%rbx,4)
  40a8ac:	00 00 
  40a8ae:	f3 0f 7f 84 98 f0 00 	movdqu %xmm0,0xf0(%rax,%rbx,4)
  40a8b5:	00 00 
	while (++i < s)
  40a8b7:	48 83 c3 40          	add    $0x40,%rbx
  40a8bb:	48 83 c7 08          	add    $0x8,%rdi
  40a8bf:	0f 85 7b ff ff ff    	jne    40a840 <rdr_clear_screen+0xa0>
  40a8c5:	4d 85 c0             	test   %r8,%r8
  40a8c8:	74 2a                	je     40a8f4 <rdr_clear_screen+0x154>
  40a8ca:	48 8d 3c 98          	lea    (%rax,%rbx,4),%rdi
  40a8ce:	48 83 c7 10          	add    $0x10,%rdi
  40a8d2:	49 c1 e0 05          	shl    $0x5,%r8
  40a8d6:	31 ed                	xor    %ebp,%ebp
  40a8d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a8df:	00 
		*(((unsigned int *)game->canvas->data + i)) = color;
  40a8e0:	f3 0f 7f 44 2f f0    	movdqu %xmm0,-0x10(%rdi,%rbp,1)
  40a8e6:	f3 0f 7f 04 2f       	movdqu %xmm0,(%rdi,%rbp,1)
	while (++i < s)
  40a8eb:	48 83 c5 20          	add    $0x20,%rbp
  40a8ef:	49 39 e8             	cmp    %rbp,%r8
  40a8f2:	75 ec                	jne    40a8e0 <rdr_clear_screen+0x140>
  40a8f4:	48 39 ca             	cmp    %rcx,%rdx
  40a8f7:	74 13                	je     40a90c <rdr_clear_screen+0x16c>
  40a8f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
		*(((unsigned int *)game->canvas->data + i)) = color;
  40a900:	89 34 90             	mov    %esi,(%rax,%rdx,4)
	while (++i < s)
  40a903:	48 83 c2 01          	add    $0x1,%rdx
  40a907:	48 39 d1             	cmp    %rdx,%rcx
  40a90a:	75 f4                	jne    40a900 <rdr_clear_screen+0x160>
}
  40a90c:	48 83 c4 08          	add    $0x8,%rsp
  40a910:	5b                   	pop    %rbx
  40a911:	5d                   	pop    %rbp
  40a912:	c3                   	ret    
  40a913:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40a91a:	00 00 00 
  40a91d:	0f 1f 00             	nopl   (%rax)

000000000040a920 <rdr_add_sprite>:
void	rdr_add_sprite(
	t_renderer *rdr,
	t_img *sp,
	t_vec2 pos,
	t_add_sprite param)
{
  40a920:	55                   	push   %rbp
  40a921:	41 57                	push   %r15
  40a923:	41 56                	push   %r14
  40a925:	53                   	push   %rbx
  40a926:	48 83 ec 18          	sub    $0x18,%rsp
  40a92a:	89 cd                	mov    %ecx,%ebp
  40a92c:	49 89 d7             	mov    %rdx,%r15
  40a92f:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40a933:	49 89 f6             	mov    %rsi,%r14
  40a936:	48 89 fb             	mov    %rdi,%rbx
	t_node	*node;

	node = arena_alloc(&rdr->allocator);
  40a939:	48 83 c7 10          	add    $0x10,%rdi
  40a93d:	e8 ee bd ff ff       	call   406730 <arena_alloc>
	if (!node)
  40a942:	48 85 c0             	test   %rax,%rax
  40a945:	0f 84 a1 00 00 00    	je     40a9ec <rdr_add_sprite+0xcc>
  40a94b:	4c 89 f9             	mov    %r15,%rcx
  40a94e:	48 c1 e9 20          	shr    $0x20,%rcx
		return ;
	node->type = NODE_SPRITE;
  40a952:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
	return (level * 100000 + order * 1000 + (pos.y / 64 * 10));
  40a958:	69 c9 a0 86 01 00    	imul   $0x186a0,%ecx,%ecx
  40a95e:	41 69 d7 e8 03 00 00 	imul   $0x3e8,%r15d,%edx
  40a965:	01 ca                	add    %ecx,%edx
  40a967:	0f 57 c0             	xorps  %xmm0,%xmm0
  40a96a:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
	node->next = NULL;
  40a96e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40a975:	00 
  40a976:	0f 28 14 24          	movaps (%rsp),%xmm2
	return (level * 100000 + order * 1000 + (pos.y / 64 * 10));
  40a97a:	0f 28 ca             	movaps %xmm2,%xmm1
  40a97d:	0f c6 ca 55          	shufps $0x55,%xmm2,%xmm1
  40a981:	f3 0f 59 0d 83 58 00 	mulss  0x5883(%rip),%xmm1        # 41020c <_IO_stdin_used+0x120c>
  40a988:	00 
	node->freed = false;
  40a989:	c6 40 14 00          	movb   $0x0,0x14(%rax)
	return (level * 100000 + order * 1000 + (pos.y / 64 * 10));
  40a98d:	f3 0f 59 0d eb 58 00 	mulss  0x58eb(%rip),%xmm1        # 410280 <_IO_stdin_used+0x1280>
  40a994:	00 
  40a995:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  40a999:	f3 0f 2c c9          	cvttss2si %xmm1,%ecx
	node->order = _calc_order_with_depth_testing(pos, param.order, param.level);
  40a99d:	89 48 10             	mov    %ecx,0x10(%rax)
	node->sprite.ptr = sp;
  40a9a0:	4c 89 70 18          	mov    %r14,0x18(%rax)
	node->sprite.pos = pos;
  40a9a4:	0f 13 50 20          	movlps %xmm2,0x20(%rax)
	node->sprite.flipped = param.flipped;
  40a9a8:	89 ea                	mov    %ebp,%edx
  40a9aa:	80 e2 01             	and    $0x1,%dl
  40a9ad:	88 50 28             	mov    %dl,0x28(%rax)
	node->sprite.camera = param.camera;
  40a9b0:	c1 ed 08             	shr    $0x8,%ebp
  40a9b3:	40 80 e5 01          	and    $0x1,%bpl
  40a9b7:	40 88 68 29          	mov    %bpl,0x29(%rax)
	if (!rdr->root || rdr->root->order >= node->order)
  40a9bb:	48 8b 13             	mov    (%rbx),%rdx
  40a9be:	48 85 d2             	test   %rdx,%rdx
  40a9c1:	74 22                	je     40a9e5 <rdr_add_sprite+0xc5>
  40a9c3:	39 4a 10             	cmp    %ecx,0x10(%rdx)
  40a9c6:	7d 1d                	jge    40a9e5 <rdr_add_sprite+0xc5>
  40a9c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a9cf:	00 
  40a9d0:	48 89 d3             	mov    %rdx,%rbx
	while (cur_node->next && cur_node->next->order < node->order)
  40a9d3:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40a9d7:	48 85 d2             	test   %rdx,%rdx
  40a9da:	74 05                	je     40a9e1 <rdr_add_sprite+0xc1>
  40a9dc:	39 4a 10             	cmp    %ecx,0x10(%rdx)
  40a9df:	7c ef                	jl     40a9d0 <rdr_add_sprite+0xb0>
  40a9e1:	48 83 c3 08          	add    $0x8,%rbx
  40a9e5:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40a9e9:	48 89 03             	mov    %rax,(%rbx)
	_add_node(rdr, node);
}
  40a9ec:	48 83 c4 18          	add    $0x18,%rsp
  40a9f0:	5b                   	pop    %rbx
  40a9f1:	41 5e                	pop    %r14
  40a9f3:	41 5f                	pop    %r15
  40a9f5:	5d                   	pop    %rbp
  40a9f6:	c3                   	ret    
  40a9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a9fe:	00 00 

000000000040aa00 <rdr_add_text>:
void	rdr_add_text(
	t_renderer *rdr,
	char *str,
	t_vec2 pos,
	t_add_text param)
{
  40aa00:	41 57                	push   %r15
  40aa02:	41 56                	push   %r14
  40aa04:	41 54                	push   %r12
  40aa06:	53                   	push   %rbx
  40aa07:	48 83 ec 18          	sub    $0x18,%rsp
  40aa0b:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40aa0f:	49 89 f7             	mov    %rsi,%r15
  40aa12:	48 89 fb             	mov    %rdi,%rbx
	t_node	*node;

	node = arena_alloc(&rdr->allocator);
  40aa15:	48 83 c7 10          	add    $0x10,%rdi
  40aa19:	e8 12 bd ff ff       	call   406730 <arena_alloc>
	if (!node)
  40aa1e:	48 85 c0             	test   %rax,%rax
  40aa21:	0f 84 a5 00 00 00    	je     40aacc <rdr_add_text+0xcc>
  40aa27:	49 89 c6             	mov    %rax,%r14
  40aa2a:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
		return ;
	node->type = NODE_TEXT;
  40aa2f:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
	node->next = NULL;
  40aa35:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40aa3c:	00 
	node->freed = false;
  40aa3d:	c6 40 14 00          	movb   $0x0,0x14(%rax)
	return (level * 100000 + order * 1000 + (pos.y / 64 * 10));
  40aa41:	41 69 44 24 04 88 8a 	imul   $0x18a88,0x4(%r12),%eax
  40aa48:	01 00 
  40aa4a:	0f 57 c0             	xorps  %xmm0,%xmm0
  40aa4d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  40aa51:	0f 28 0c 24          	movaps (%rsp),%xmm1
  40aa55:	0f c6 c9 55          	shufps $0x55,%xmm1,%xmm1
  40aa59:	f3 0f 59 0d ab 57 00 	mulss  0x57ab(%rip),%xmm1        # 41020c <_IO_stdin_used+0x120c>
  40aa60:	00 
  40aa61:	f3 0f 59 0d 17 58 00 	mulss  0x5817(%rip),%xmm1        # 410280 <_IO_stdin_used+0x1280>
  40aa68:	00 
  40aa69:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  40aa6d:	f3 0f 2c c1          	cvttss2si %xmm1,%eax
	node->order = _calc_order_with_depth_testing(pos, param.level, param.level);
  40aa71:	41 89 46 10          	mov    %eax,0x10(%r14)
	node->text.str = ft_strdup(str);
  40aa75:	4c 89 ff             	mov    %r15,%rdi
  40aa78:	e8 53 2b 00 00       	call   40d5d0 <ft_strdup>
  40aa7d:	49 89 46 20          	mov    %rax,0x20(%r14)
  40aa81:	0f 28 04 24          	movaps (%rsp),%xmm0
	node->text.pos = pos;
  40aa85:	41 0f 13 46 28       	movlps %xmm0,0x28(%r14)
	node->text.color = param.color;
  40aa8a:	41 8b 44 24 10       	mov    0x10(%r12),%eax
  40aa8f:	41 89 46 30          	mov    %eax,0x30(%r14)
	node->text.font = param.font;
  40aa93:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40aa98:	49 89 46 18          	mov    %rax,0x18(%r14)
	if (!rdr->root || rdr->root->order >= node->order)
  40aa9c:	48 8b 03             	mov    (%rbx),%rax
  40aa9f:	48 85 c0             	test   %rax,%rax
  40aaa2:	74 21                	je     40aac5 <rdr_add_text+0xc5>
  40aaa4:	41 8b 4e 10          	mov    0x10(%r14),%ecx
  40aaa8:	39 48 10             	cmp    %ecx,0x10(%rax)
  40aaab:	7d 18                	jge    40aac5 <rdr_add_text+0xc5>
  40aaad:	0f 1f 00             	nopl   (%rax)
  40aab0:	48 89 c3             	mov    %rax,%rbx
	while (cur_node->next && cur_node->next->order < node->order)
  40aab3:	48 8b 40 08          	mov    0x8(%rax),%rax
  40aab7:	48 85 c0             	test   %rax,%rax
  40aaba:	74 05                	je     40aac1 <rdr_add_text+0xc1>
  40aabc:	39 48 10             	cmp    %ecx,0x10(%rax)
  40aabf:	7c ef                	jl     40aab0 <rdr_add_text+0xb0>
  40aac1:	48 83 c3 08          	add    $0x8,%rbx
  40aac5:	49 89 46 08          	mov    %rax,0x8(%r14)
  40aac9:	4c 89 33             	mov    %r14,(%rbx)
	_add_node(rdr, node);
}
  40aacc:	48 83 c4 18          	add    $0x18,%rsp
  40aad0:	5b                   	pop    %rbx
  40aad1:	41 5c                	pop    %r12
  40aad3:	41 5e                	pop    %r14
  40aad5:	41 5f                	pop    %r15
  40aad7:	c3                   	ret    
  40aad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40aadf:	00 

000000000040aae0 <rdr_add_blur>:

void	rdr_add_blur(t_renderer *rdr, int px, int z_index)
{
  40aae0:	55                   	push   %rbp
  40aae1:	41 56                	push   %r14
  40aae3:	53                   	push   %rbx
  40aae4:	89 d5                	mov    %edx,%ebp
  40aae6:	41 89 f6             	mov    %esi,%r14d
  40aae9:	48 89 fb             	mov    %rdi,%rbx
	t_node	*node;

	node = arena_alloc(&rdr->allocator);
  40aaec:	48 83 c7 10          	add    $0x10,%rdi
  40aaf0:	e8 3b bc ff ff       	call   406730 <arena_alloc>
	if (!node)
  40aaf5:	48 85 c0             	test   %rax,%rax
  40aaf8:	74 42                	je     40ab3c <rdr_add_blur+0x5c>
		return ;
	node->type = NODE_BLUR;
  40aafa:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
	node->next = NULL;
  40ab00:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40ab07:	00 
	node->freed = false;
  40ab08:	c6 40 14 00          	movb   $0x0,0x14(%rax)
	node->order = z_index;
  40ab0c:	89 68 10             	mov    %ebp,0x10(%rax)
	node->blur.px = px;
  40ab0f:	44 89 70 18          	mov    %r14d,0x18(%rax)
	if (!rdr->root || rdr->root->order >= node->order)
  40ab13:	48 8b 0b             	mov    (%rbx),%rcx
  40ab16:	48 85 c9             	test   %rcx,%rcx
  40ab19:	74 1a                	je     40ab35 <rdr_add_blur+0x55>
  40ab1b:	39 69 10             	cmp    %ebp,0x10(%rcx)
  40ab1e:	7d 15                	jge    40ab35 <rdr_add_blur+0x55>
  40ab20:	48 89 cb             	mov    %rcx,%rbx
	while (cur_node->next && cur_node->next->order < node->order)
  40ab23:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  40ab27:	48 85 c9             	test   %rcx,%rcx
  40ab2a:	74 05                	je     40ab31 <rdr_add_blur+0x51>
  40ab2c:	39 69 10             	cmp    %ebp,0x10(%rcx)
  40ab2f:	7c ef                	jl     40ab20 <rdr_add_blur+0x40>
  40ab31:	48 83 c3 08          	add    $0x8,%rbx
  40ab35:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40ab39:	48 89 03             	mov    %rax,(%rbx)
	_add_node(rdr, node);
}
  40ab3c:	5b                   	pop    %rbx
  40ab3d:	41 5e                	pop    %r14
  40ab3f:	5d                   	pop    %rbp
  40ab40:	c3                   	ret    
  40ab41:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40ab48:	00 00 00 
  40ab4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ab50 <rdr_draw_glyph>:

	*((int *)(addr + pixel_offset)) = color;
}

void	rdr_draw_glyph(t_game *game, char c, t_vec2 pos, t_draw_text d)
{
  40ab50:	55                   	push   %rbp
  40ab51:	41 57                	push   %r15
  40ab53:	41 56                	push   %r14
  40ab55:	53                   	push   %rbx
	const t_img		*glyph = d.font->chars[(int)c];
  40ab56:	48 63 c6             	movslq %esi,%rax
  40ab59:	4c 8b 14 c2          	mov    (%rdx,%rax,8),%r10
	const int		width = glyph->width * SCALE;
  40ab5d:	45 8b 42 20          	mov    0x20(%r10),%r8d
	const int		height = glyph->height * SCALE;
	int				x;
	int				y;

	x = 0;
	while (x < width)
  40ab61:	45 85 c0             	test   %r8d,%r8d
  40ab64:	0f 8e db 00 00 00    	jle    40ac45 <rdr_draw_glyph+0xf5>
  40ab6a:	41 8b 72 24          	mov    0x24(%r10),%esi
  40ab6e:	0f 28 c8             	movaps %xmm0,%xmm1
  40ab71:	0f c6 c8 55          	shufps $0x55,%xmm0,%xmm1
  40ab75:	45 31 db             	xor    %r11d,%r11d
  40ab78:	0f 57 d2             	xorps  %xmm2,%xmm2
  40ab7b:	eb 10                	jmp    40ab8d <rdr_draw_glyph+0x3d>
  40ab7d:	0f 1f 00             	nopl   (%rax)
			}
			if (_get_pixel_color(glyph, x, y) != (int)0xFF000000)
				_set_pixel_color(game->canvas, pos.x + x, pos.y + y, d.color);
			y++;
		}
		x++;
  40ab80:	41 83 c3 01          	add    $0x1,%r11d
	while (x < width)
  40ab84:	45 39 c3             	cmp    %r8d,%r11d
  40ab87:	0f 84 b8 00 00 00    	je     40ac45 <rdr_draw_glyph+0xf5>
  40ab8d:	85 f6                	test   %esi,%esi
		while (y < height)
  40ab8f:	7e ef                	jle    40ab80 <rdr_draw_glyph+0x30>
  40ab91:	0f 57 db             	xorps  %xmm3,%xmm3
  40ab94:	f3 41 0f 2a db       	cvtsi2ss %r11d,%xmm3
  40ab99:	f3 0f 58 d8          	addss  %xmm0,%xmm3
  40ab9d:	f3 44 0f 2c cb       	cvttss2si %xmm3,%r9d
  40aba2:	31 c0                	xor    %eax,%eax
  40aba4:	eb 11                	jmp    40abb7 <rdr_draw_glyph+0x67>
  40aba6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40abad:	00 00 00 
  40abb0:	83 c0 01             	add    $0x1,%eax
  40abb3:	39 c6                	cmp    %eax,%esi
  40abb5:	74 c9                	je     40ab80 <rdr_draw_glyph+0x30>
  40abb7:	0f 2e d3             	ucomiss %xmm3,%xmm2
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40abba:	77 f4                	ja     40abb0 <rdr_draw_glyph+0x60>
  40abbc:	48 8b 57 18          	mov    0x18(%rdi),%rdx
  40abc0:	0f 57 e4             	xorps  %xmm4,%xmm4
  40abc3:	f3 0f 2a 62 20       	cvtsi2ssl 0x20(%rdx),%xmm4
  40abc8:	0f 2e dc             	ucomiss %xmm4,%xmm3
				|| pos.y + y < 0 || pos.y + y >= game->canvas->height)
  40abcb:	73 e3                	jae    40abb0 <rdr_draw_glyph+0x60>
  40abcd:	0f 57 e4             	xorps  %xmm4,%xmm4
  40abd0:	f3 0f 2a e0          	cvtsi2ss %eax,%xmm4
  40abd4:	f3 0f 58 e1          	addss  %xmm1,%xmm4
  40abd8:	0f 2e d4             	ucomiss %xmm4,%xmm2
  40abdb:	77 d3                	ja     40abb0 <rdr_draw_glyph+0x60>
  40abdd:	0f 57 ed             	xorps  %xmm5,%xmm5
  40abe0:	f3 0f 2a 6a 24       	cvtsi2ssl 0x24(%rdx),%xmm5
  40abe5:	0f 2e e5             	ucomiss %xmm5,%xmm4
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40abe8:	73 c6                	jae    40abb0 <rdr_draw_glyph+0x60>
	const char	*addr = image->data;
  40abea:	4d 8b 72 30          	mov    0x30(%r10),%r14
	const int	bits_per_pixel = image->bpp;
  40abee:	41 8b 5a 1c          	mov    0x1c(%r10),%ebx
  40abf2:	45 8b 7a 18          	mov    0x18(%r10),%r15d
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
  40abf6:	44 0f af f8          	imul   %eax,%r15d
  40abfa:	8d 6b 07             	lea    0x7(%rbx),%ebp
  40abfd:	85 db                	test   %ebx,%ebx
  40abff:	0f 49 eb             	cmovns %ebx,%ebp
  40ac02:	c1 fd 03             	sar    $0x3,%ebp
  40ac05:	41 0f af eb          	imul   %r11d,%ebp
  40ac09:	44 01 fd             	add    %r15d,%ebp
	const int	color = *((int *)(addr + pixel_offset));
  40ac0c:	48 63 dd             	movslq %ebp,%rbx
			if (_get_pixel_color(glyph, x, y) != (int)0xFF000000)
  40ac0f:	41 81 3c 1e 00 00 00 	cmpl   $0xff000000,(%r14,%rbx,1)
  40ac16:	ff 
  40ac17:	74 97                	je     40abb0 <rdr_draw_glyph+0x60>
				_set_pixel_color(game->canvas, pos.x + x, pos.y + y, d.color);
  40ac19:	f3 0f 2c dc          	cvttss2si %xmm4,%ebx
	const char	*addr = image->data;
  40ac1d:	4c 8b 72 30          	mov    0x30(%rdx),%r14
	const int	bits_per_pixel = image->bpp;
  40ac21:	8b 6a 1c             	mov    0x1c(%rdx),%ebp
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
  40ac24:	0f af 5a 18          	imul   0x18(%rdx),%ebx
  40ac28:	8d 55 07             	lea    0x7(%rbp),%edx
  40ac2b:	85 ed                	test   %ebp,%ebp
  40ac2d:	0f 49 d5             	cmovns %ebp,%edx
  40ac30:	c1 fa 03             	sar    $0x3,%edx
  40ac33:	41 0f af d1          	imul   %r9d,%edx
  40ac37:	01 da                	add    %ebx,%edx
	*((int *)(addr + pixel_offset)) = color;
  40ac39:	48 63 d2             	movslq %edx,%rdx
  40ac3c:	41 89 0c 16          	mov    %ecx,(%r14,%rdx,1)
  40ac40:	e9 6b ff ff ff       	jmp    40abb0 <rdr_draw_glyph+0x60>
	}
}
  40ac45:	5b                   	pop    %rbx
  40ac46:	41 5e                	pop    %r14
  40ac48:	41 5f                	pop    %r15
  40ac4a:	5d                   	pop    %rbp
  40ac4b:	c3                   	ret    
  40ac4c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040ac50 <rdr_draw_text>:
		return (font->chars[(int) 'A']->width);
	return (0);
}

void	rdr_draw_text(t_game *game, char *str, t_vec2 pos, t_draw_text draw)
{
  40ac50:	55                   	push   %rbp
  40ac51:	41 57                	push   %r15
  40ac53:	41 56                	push   %r14
  40ac55:	41 55                	push   %r13
  40ac57:	41 54                	push   %r12
  40ac59:	53                   	push   %rbx
  40ac5a:	89 4c 24 e4          	mov    %ecx,-0x1c(%rsp)
  40ac5e:	48 89 74 24 e8       	mov    %rsi,-0x18(%rsp)
  40ac63:	48 89 54 24 f0       	mov    %rdx,-0x10(%rsp)
	if (font->chars[(int) 'A'])
  40ac68:	48 8b 82 08 02 00 00 	mov    0x208(%rdx),%rax
  40ac6f:	48 85 c0             	test   %rax,%rax
  40ac72:	74 07                	je     40ac7b <rdr_draw_text+0x2b>
		return (font->chars[(int) 'A']->width);
  40ac74:	f3 0f 2a 48 20       	cvtsi2ssl 0x20(%rax),%xmm1
  40ac79:	eb 03                	jmp    40ac7e <rdr_draw_text+0x2e>
  40ac7b:	0f 57 c9             	xorps  %xmm1,%xmm1
  40ac7e:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
	const int	offset = _font_width(draw.font);
	int			i;

	i = 0;
	while (str[i])
  40ac83:	8a 00                	mov    (%rax),%al
  40ac85:	84 c0                	test   %al,%al
  40ac87:	0f 84 40 01 00 00    	je     40adcd <rdr_draw_text+0x17d>
  40ac8d:	31 c9                	xor    %ecx,%ecx
  40ac8f:	0f 57 d2             	xorps  %xmm2,%xmm2
  40ac92:	eb 2a                	jmp    40acbe <rdr_draw_text+0x6e>
  40ac94:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40ac9b:	00 00 00 
  40ac9e:	66 90                	xchg   %ax,%ax
  40aca0:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  40aca4:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  40aca9:	48 8b 4c 24 f8       	mov    -0x8(%rsp),%rcx
  40acae:	8a 44 08 01          	mov    0x1(%rax,%rcx,1),%al
	{
		pos.x += offset;
		if (draw.font->chars[(int)str[i]])
			rdr_draw_glyph(game, str[i], pos, draw);
		i++;
  40acb2:	48 83 c1 01          	add    $0x1,%rcx
	while (str[i])
  40acb6:	84 c0                	test   %al,%al
  40acb8:	0f 84 0f 01 00 00    	je     40adcd <rdr_draw_text+0x17d>
  40acbe:	48 89 4c 24 f8       	mov    %rcx,-0x8(%rsp)
		if (draw.font->chars[(int)str[i]])
  40acc3:	48 0f be c0          	movsbq %al,%rax
  40acc7:	48 8b 4c 24 f0       	mov    -0x10(%rsp),%rcx
  40accc:	4c 8b 14 c1          	mov    (%rcx,%rax,8),%r10
  40acd0:	4d 85 d2             	test   %r10,%r10
  40acd3:	74 cb                	je     40aca0 <rdr_draw_text+0x50>
	const int		width = glyph->width * SCALE;
  40acd5:	45 8b 4a 20          	mov    0x20(%r10),%r9d
	while (x < width)
  40acd9:	45 85 c9             	test   %r9d,%r9d
  40acdc:	7e c2                	jle    40aca0 <rdr_draw_text+0x50>
  40acde:	0f 28 d9             	movaps %xmm1,%xmm3
  40ace1:	f3 0f 58 d8          	addss  %xmm0,%xmm3
  40ace5:	41 8b 42 24          	mov    0x24(%r10),%eax
  40ace9:	0f 28 e0             	movaps %xmm0,%xmm4
  40acec:	0f c6 e0 55          	shufps $0x55,%xmm0,%xmm4
  40acf0:	45 31 db             	xor    %r11d,%r11d
  40acf3:	eb 14                	jmp    40ad09 <rdr_draw_text+0xb9>
  40acf5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40acfc:	00 00 00 
  40acff:	90                   	nop
		x++;
  40ad00:	41 83 c3 01          	add    $0x1,%r11d
	while (x < width)
  40ad04:	45 39 cb             	cmp    %r9d,%r11d
  40ad07:	74 97                	je     40aca0 <rdr_draw_text+0x50>
  40ad09:	85 c0                	test   %eax,%eax
		while (y < height)
  40ad0b:	7e f3                	jle    40ad00 <rdr_draw_text+0xb0>
  40ad0d:	0f 57 ed             	xorps  %xmm5,%xmm5
  40ad10:	f3 41 0f 2a eb       	cvtsi2ss %r11d,%xmm5
  40ad15:	f3 0f 58 eb          	addss  %xmm3,%xmm5
  40ad19:	f3 44 0f 2c f5       	cvttss2si %xmm5,%r14d
  40ad1e:	31 ed                	xor    %ebp,%ebp
  40ad20:	eb 15                	jmp    40ad37 <rdr_draw_text+0xe7>
  40ad22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40ad29:	00 00 00 
  40ad2c:	0f 1f 40 00          	nopl   0x0(%rax)
  40ad30:	83 c5 01             	add    $0x1,%ebp
  40ad33:	39 e8                	cmp    %ebp,%eax
  40ad35:	74 c9                	je     40ad00 <rdr_draw_text+0xb0>
  40ad37:	0f 2e d5             	ucomiss %xmm5,%xmm2
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40ad3a:	77 f4                	ja     40ad30 <rdr_draw_text+0xe0>
  40ad3c:	48 8b 5f 18          	mov    0x18(%rdi),%rbx
  40ad40:	0f 57 f6             	xorps  %xmm6,%xmm6
  40ad43:	f3 0f 2a 73 20       	cvtsi2ssl 0x20(%rbx),%xmm6
  40ad48:	0f 2e ee             	ucomiss %xmm6,%xmm5
				|| pos.y + y < 0 || pos.y + y >= game->canvas->height)
  40ad4b:	73 e3                	jae    40ad30 <rdr_draw_text+0xe0>
  40ad4d:	0f 57 f6             	xorps  %xmm6,%xmm6
  40ad50:	f3 0f 2a f5          	cvtsi2ss %ebp,%xmm6
  40ad54:	f3 0f 58 f4          	addss  %xmm4,%xmm6
  40ad58:	0f 2e d6             	ucomiss %xmm6,%xmm2
  40ad5b:	77 d3                	ja     40ad30 <rdr_draw_text+0xe0>
  40ad5d:	0f 57 ff             	xorps  %xmm7,%xmm7
  40ad60:	f3 0f 2a 7b 24       	cvtsi2ssl 0x24(%rbx),%xmm7
  40ad65:	0f 2e f7             	ucomiss %xmm7,%xmm6
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
  40ad68:	73 c6                	jae    40ad30 <rdr_draw_text+0xe0>
	const char	*addr = image->data;
  40ad6a:	4d 8b 7a 30          	mov    0x30(%r10),%r15
	const int	bits_per_pixel = image->bpp;
  40ad6e:	45 8b 62 1c          	mov    0x1c(%r10),%r12d
  40ad72:	45 8b 6a 18          	mov    0x18(%r10),%r13d
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
  40ad76:	44 0f af ed          	imul   %ebp,%r13d
  40ad7a:	45 8d 44 24 07       	lea    0x7(%r12),%r8d
  40ad7f:	45 85 e4             	test   %r12d,%r12d
  40ad82:	45 0f 49 c4          	cmovns %r12d,%r8d
  40ad86:	41 c1 f8 03          	sar    $0x3,%r8d
  40ad8a:	45 0f af c3          	imul   %r11d,%r8d
  40ad8e:	45 01 e8             	add    %r13d,%r8d
	const int	color = *((int *)(addr + pixel_offset));
  40ad91:	49 63 d0             	movslq %r8d,%rdx
			if (_get_pixel_color(glyph, x, y) != (int)0xFF000000)
  40ad94:	41 81 3c 17 00 00 00 	cmpl   $0xff000000,(%r15,%rdx,1)
  40ad9b:	ff 
  40ad9c:	74 92                	je     40ad30 <rdr_draw_text+0xe0>
				_set_pixel_color(game->canvas, pos.x + x, pos.y + y, d.color);
  40ad9e:	f3 0f 2c d6          	cvttss2si %xmm6,%edx
	const char	*addr = image->data;
  40ada2:	48 8b 73 30          	mov    0x30(%rbx),%rsi
	const int	bits_per_pixel = image->bpp;
  40ada6:	8b 4b 1c             	mov    0x1c(%rbx),%ecx
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
  40ada9:	0f af 53 18          	imul   0x18(%rbx),%edx
  40adad:	8d 59 07             	lea    0x7(%rcx),%ebx
  40adb0:	85 c9                	test   %ecx,%ecx
  40adb2:	0f 49 d9             	cmovns %ecx,%ebx
  40adb5:	c1 fb 03             	sar    $0x3,%ebx
  40adb8:	41 0f af de          	imul   %r14d,%ebx
  40adbc:	01 d3                	add    %edx,%ebx
	*((int *)(addr + pixel_offset)) = color;
  40adbe:	48 63 cb             	movslq %ebx,%rcx
  40adc1:	8b 54 24 e4          	mov    -0x1c(%rsp),%edx
  40adc5:	89 14 0e             	mov    %edx,(%rsi,%rcx,1)
  40adc8:	e9 63 ff ff ff       	jmp    40ad30 <rdr_draw_text+0xe0>
	}
}
  40adcd:	5b                   	pop    %rbx
  40adce:	41 5c                	pop    %r12
  40add0:	41 5d                	pop    %r13
  40add2:	41 5e                	pop    %r14
  40add4:	41 5f                	pop    %r15
  40add6:	5d                   	pop    %rbp
  40add7:	c3                   	ret    
  40add8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40addf:	00 

000000000040ade0 <get_pixel_color>:

#include "render.h"

t_trgb	get_pixel_color(t_img *img, int x, int y)
{
	return (((t_trgb *)img->data)[x + y * img->width]);
  40ade0:	0f af 57 20          	imul   0x20(%rdi),%edx
  40ade4:	48 8b 47 30          	mov    0x30(%rdi),%rax
  40ade8:	01 f2                	add    %esi,%edx
  40adea:	48 63 ca             	movslq %edx,%rcx
  40aded:	8b 04 88             	mov    (%rax,%rcx,4),%eax
  40adf0:	c3                   	ret    
  40adf1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40adf8:	00 00 00 
  40adfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ae00 <set_pixel_color>:
}

void	set_pixel_color(t_img *img, int x, int y, t_trgb color)
{
	((t_trgb *)img->data)[x + y * img->width] = color;
  40ae00:	0f af 57 20          	imul   0x20(%rdi),%edx
  40ae04:	48 8b 47 30          	mov    0x30(%rdi),%rax
  40ae08:	01 f2                	add    %esi,%edx
  40ae0a:	48 63 d2             	movslq %edx,%rdx
  40ae0d:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
}
  40ae10:	c3                   	ret    
  40ae11:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40ae18:	00 00 00 
  40ae1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ae20 <rdr_blur_screen>:
	_div_color(total, count);
	return ((total[0] << 16) | (total[1] << 8) | total[2]);
}

void	rdr_blur_screen(t_game *game, int px)
{
  40ae20:	55                   	push   %rbp
  40ae21:	41 57                	push   %r15
  40ae23:	41 56                	push   %r14
  40ae25:	41 55                	push   %r13
  40ae27:	41 54                	push   %r12
  40ae29:	53                   	push   %rbx
  40ae2a:	48 83 ec 28          	sub    $0x28,%rsp
  40ae2e:	49 89 ff             	mov    %rdi,%r15
	int	x;
	int	y;

	y = 0;
	while (y < game->canvas->height)
  40ae31:	48 8b 47 18          	mov    0x18(%rdi),%rax
  40ae35:	8b 48 24             	mov    0x24(%rax),%ecx
  40ae38:	85 c9                	test   %ecx,%ecx
  40ae3a:	0f 8e 78 01 00 00    	jle    40afb8 <rdr_blur_screen+0x198>
  40ae40:	89 f5                	mov    %esi,%ebp
  40ae42:	41 89 f0             	mov    %esi,%r8d
  40ae45:	41 f7 d0             	not    %r8d
  40ae48:	41 89 f1             	mov    %esi,%r9d
  40ae4b:	41 f7 d9             	neg    %r9d
  40ae4e:	45 31 f6             	xor    %r14d,%r14d
  40ae51:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
  40ae56:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
  40ae5b:	eb 13                	jmp    40ae70 <rdr_blur_screen+0x50>
  40ae5d:	0f 1f 00             	nopl   (%rax)
		{
			game->rdr->pixels[x + y * game->canvas->width] = _blur_pixel(
					game, x, y, px);
			x++;
		}
		y++;
  40ae60:	41 83 c6 01          	add    $0x1,%r14d
	while (y < game->canvas->height)
  40ae64:	8b 48 24             	mov    0x24(%rax),%ecx
  40ae67:	41 39 ce             	cmp    %ecx,%r14d
  40ae6a:	0f 8d 48 01 00 00    	jge    40afb8 <rdr_blur_screen+0x198>
		while (x < game->canvas->width)
  40ae70:	83 78 20 00          	cmpl   $0x0,0x20(%rax)
  40ae74:	7e ea                	jle    40ae60 <rdr_blur_screen+0x40>
  40ae76:	45 31 d2             	xor    %r10d,%r10d
  40ae79:	eb 53                	jmp    40aece <rdr_blur_screen+0xae>
  40ae7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	total[0] /= count;
  40ae80:	8b 44 24 18          	mov    0x18(%rsp),%eax
	total[1] /= count;
  40ae84:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
	total[0] /= count;
  40ae88:	99                   	cltd   
  40ae89:	41 f7 fb             	idiv   %r11d
  40ae8c:	89 c6                	mov    %eax,%esi
	total[1] /= count;
  40ae8e:	89 c8                	mov    %ecx,%eax
  40ae90:	99                   	cltd   
  40ae91:	41 f7 fb             	idiv   %r11d
  40ae94:	89 c1                	mov    %eax,%ecx
	total[2] /= count;
  40ae96:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40ae9a:	99                   	cltd   
  40ae9b:	41 f7 fb             	idiv   %r11d
	return ((total[0] << 16) | (total[1] << 8) | total[2]);
  40ae9e:	c1 e6 10             	shl    $0x10,%esi
  40aea1:	c1 e1 08             	shl    $0x8,%ecx
  40aea4:	09 f1                	or     %esi,%ecx
  40aea6:	09 c1                	or     %eax,%ecx
			game->rdr->pixels[x + y * game->canvas->width] = _blur_pixel(
  40aea8:	49 8b 47 18          	mov    0x18(%r15),%rax
  40aeac:	49 8b 57 30          	mov    0x30(%r15),%rdx
  40aeb0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40aeb4:	8b 70 20             	mov    0x20(%rax),%esi
  40aeb7:	41 0f af f6          	imul   %r14d,%esi
  40aebb:	44 01 d6             	add    %r10d,%esi
  40aebe:	48 63 f6             	movslq %esi,%rsi
  40aec1:	89 0c b2             	mov    %ecx,(%rdx,%rsi,4)
			x++;
  40aec4:	41 83 c2 01          	add    $0x1,%r10d
		while (x < game->canvas->width)
  40aec8:	44 3b 50 20          	cmp    0x20(%rax),%r10d
  40aecc:	7d 92                	jge    40ae60 <rdr_blur_screen+0x40>
  40aece:	44 89 54 24 14       	mov    %r10d,0x14(%rsp)
	ft_memset(total, 0, sizeof(int) * 3);
  40aed3:	ba 0c 00 00 00       	mov    $0xc,%edx
  40aed8:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  40aedd:	31 f6                	xor    %esi,%esi
  40aedf:	e8 1c 24 00 00       	call   40d300 <ft_memset>
  40aee4:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
  40aee9:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  40aeee:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
	count = 0;
  40aef3:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  40aef9:	41 39 e9             	cmp    %ebp,%r9d
	while (++i < px)
  40aefc:	7d 82                	jge    40ae80 <rdr_blur_screen+0x60>
  40aefe:	45 31 db             	xor    %r11d,%r11d
  40af01:	44 89 cb             	mov    %r9d,%ebx
  40af04:	45 89 c4             	mov    %r8d,%r12d
  40af07:	eb 1f                	jmp    40af28 <rdr_blur_screen+0x108>
  40af09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
		i++;
  40af10:	41 8d 44 24 02       	lea    0x2(%r12),%eax
	while (++i < px)
  40af15:	41 83 c4 03          	add    $0x3,%r12d
  40af19:	44 89 e3             	mov    %r12d,%ebx
  40af1c:	41 39 ec             	cmp    %ebp,%r12d
  40af1f:	41 89 c4             	mov    %eax,%r12d
  40af22:	0f 8d 58 ff ff ff    	jge    40ae80 <rdr_blur_screen+0x60>
  40af28:	44 01 d3             	add    %r10d,%ebx
  40af2b:	44 89 c9             	mov    %r9d,%ecx
  40af2e:	44 89 c0             	mov    %r8d,%eax
  40af31:	eb 14                	jmp    40af47 <rdr_blur_screen+0x127>
  40af33:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40af3a:	00 00 00 
  40af3d:	0f 1f 00             	nopl   (%rax)
		while (++j < px)
  40af40:	8d 48 01             	lea    0x1(%rax),%ecx
  40af43:	39 e9                	cmp    %ebp,%ecx
  40af45:	7d c9                	jge    40af10 <rdr_blur_screen+0xf0>
  40af47:	41 89 c5             	mov    %eax,%r13d
  40af4a:	89 c8                	mov    %ecx,%eax
  40af4c:	85 db                	test   %ebx,%ebx
			if (x + i < 0 || x + i > g->canvas->width
  40af4e:	78 f0                	js     40af40 <rdr_blur_screen+0x120>
  40af50:	44 89 f2             	mov    %r14d,%edx
  40af53:	01 c2                	add    %eax,%edx
				|| y + j < 0 || y + j > g->canvas->height)
  40af55:	78 e9                	js     40af40 <rdr_blur_screen+0x120>
  40af57:	49 8b 7f 18          	mov    0x18(%r15),%rdi
  40af5b:	3b 5f 20             	cmp    0x20(%rdi),%ebx
  40af5e:	7f e0                	jg     40af40 <rdr_blur_screen+0x120>
  40af60:	3b 57 24             	cmp    0x24(%rdi),%edx
			if (x + i < 0 || x + i > g->canvas->width
  40af63:	7f db                	jg     40af40 <rdr_blur_screen+0x120>
			_add_pixel_color(total, get_pixel_color(g->canvas, x + i, y + j));
  40af65:	89 de                	mov    %ebx,%esi
  40af67:	44 89 5c 24 24       	mov    %r11d,0x24(%rsp)
  40af6c:	e8 6f fe ff ff       	call   40ade0 <get_pixel_color>
  40af71:	44 8b 5c 24 24       	mov    0x24(%rsp),%r11d
  40af76:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
  40af7b:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  40af80:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
  40af85:	89 c1                	mov    %eax,%ecx
  40af87:	c1 e9 10             	shr    $0x10,%ecx
	total[0] += pixel.r;
  40af8a:	0f b6 c9             	movzbl %cl,%ecx
  40af8d:	01 4c 24 18          	add    %ecx,0x18(%rsp)
	total[1] += pixel.g;
  40af91:	0f b6 cc             	movzbl %ah,%ecx
  40af94:	01 4c 24 1c          	add    %ecx,0x1c(%rsp)
	total[2] += pixel.b;
  40af98:	0f b6 c0             	movzbl %al,%eax
  40af9b:	01 44 24 20          	add    %eax,0x20(%rsp)
			count++;
  40af9f:	41 83 c3 01          	add    $0x1,%r11d
			j++;
  40afa3:	41 8d 45 02          	lea    0x2(%r13),%eax
		while (++j < px)
  40afa7:	41 83 c5 03          	add    $0x3,%r13d
  40afab:	44 89 e9             	mov    %r13d,%ecx
  40afae:	41 39 ed             	cmp    %ebp,%r13d
  40afb1:	7c 94                	jl     40af47 <rdr_blur_screen+0x127>
  40afb3:	e9 58 ff ff ff       	jmp    40af10 <rdr_blur_screen+0xf0>
	}
	ft_memcpy(game->canvas->data, game->rdr->pixels,
  40afb8:	48 8b 78 30          	mov    0x30(%rax),%rdi
  40afbc:	49 8b 57 30          	mov    0x30(%r15),%rdx
  40afc0:	48 8b 72 08          	mov    0x8(%rdx),%rsi
		sizeof(t_trgb) * game->canvas->width * game->canvas->height);
  40afc4:	48 63 40 20          	movslq 0x20(%rax),%rax
  40afc8:	48 63 d1             	movslq %ecx,%rdx
  40afcb:	48 0f af d0          	imul   %rax,%rdx
  40afcf:	48 c1 e2 02          	shl    $0x2,%rdx
	ft_memcpy(game->canvas->data, game->rdr->pixels,
  40afd3:	e8 88 22 00 00       	call   40d260 <ft_memcpy>
}
  40afd8:	48 83 c4 28          	add    $0x28,%rsp
  40afdc:	5b                   	pop    %rbx
  40afdd:	41 5c                	pop    %r12
  40afdf:	41 5d                	pop    %r13
  40afe1:	41 5e                	pop    %r14
  40afe3:	41 5f                	pop    %r15
  40afe5:	5d                   	pop    %rbp
  40afe6:	c3                   	ret    
  40afe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40afee:	00 00 

000000000040aff0 <font_load>:
#include "mlx.h"
#include "render.h"
#include "../so_long.h"

t_font	*font_load(t_game *game, char *path)
{
  40aff0:	55                   	push   %rbp
  40aff1:	41 57                	push   %r15
  40aff3:	41 56                	push   %r14
  40aff5:	41 55                	push   %r13
  40aff7:	41 54                	push   %r12
  40aff9:	53                   	push   %rbx
  40affa:	48 83 ec 48          	sub    $0x48,%rsp
  40affe:	49 89 f6             	mov    %rsi,%r14
  40b001:	49 89 ff             	mov    %rdi,%r15
	t_font			*font;
	char			buf[64];
	unsigned char	i;

	font = ft_calloc(1, sizeof(t_font));
  40b004:	bf 01 00 00 00       	mov    $0x1,%edi
  40b009:	be 00 08 00 00       	mov    $0x800,%esi
  40b00e:	e8 8d 24 00 00       	call   40d4a0 <ft_calloc>
  40b013:	49 89 c4             	mov    %rax,%r12
  40b016:	bb 20 00 00 00       	mov    $0x20,%ebx
  40b01b:	4c 8d 2d 62 52 00 00 	lea    0x5262(%rip),%r13        # 410284 <_IO_stdin_used+0x1284>
  40b022:	48 89 e5             	mov    %rsp,%rbp
  40b025:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b02c:	00 00 00 
  40b02f:	90                   	nop
	i = 32;
	while (i < 127)
	{
		ft_sprintf(buf, "%s/%c.xpm", path, i);
  40b030:	48 89 ef             	mov    %rbp,%rdi
  40b033:	4c 89 ee             	mov    %r13,%rsi
  40b036:	4c 89 f2             	mov    %r14,%rdx
  40b039:	89 d9                	mov    %ebx,%ecx
  40b03b:	31 c0                	xor    %eax,%eax
  40b03d:	e8 ce 27 00 00       	call   40d810 <ft_sprintf>
		font->chars[i] = sprite(game, buf);
  40b042:	4c 89 ff             	mov    %r15,%rdi
  40b045:	48 89 ee             	mov    %rbp,%rsi
  40b048:	e8 73 95 ff ff       	call   4045c0 <sprite>
  40b04d:	49 89 04 dc          	mov    %rax,(%r12,%rbx,8)
		i++;
  40b051:	48 83 c3 01          	add    $0x1,%rbx
	while (i < 127)
  40b055:	48 83 fb 7f          	cmp    $0x7f,%rbx
  40b059:	75 d5                	jne    40b030 <font_load+0x40>
	}
	return (font);
  40b05b:	4c 89 e0             	mov    %r12,%rax
  40b05e:	48 83 c4 48          	add    $0x48,%rsp
  40b062:	5b                   	pop    %rbx
  40b063:	41 5c                	pop    %r12
  40b065:	41 5d                	pop    %r13
  40b067:	41 5e                	pop    %r14
  40b069:	41 5f                	pop    %r15
  40b06b:	5d                   	pop    %rbp
  40b06c:	c3                   	ret    
  40b06d:	0f 1f 00             	nopl   (%rax)

000000000040b070 <font_free>:

void	font_free(t_game *game, t_font *font)
{
	int	i;

	if (!font)
  40b070:	48 85 f6             	test   %rsi,%rsi
  40b073:	74 48                	je     40b0bd <font_free+0x4d>
  40b075:	41 57                	push   %r15
  40b077:	41 56                	push   %r14
  40b079:	53                   	push   %rbx
  40b07a:	49 89 f7             	mov    %rsi,%r15
  40b07d:	49 89 fe             	mov    %rdi,%r14
  40b080:	31 db                	xor    %ebx,%ebx
  40b082:	eb 19                	jmp    40b09d <font_free+0x2d>
  40b084:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b08b:	00 00 00 
  40b08e:	66 90                	xchg   %ax,%ax
		return ;
	i = -1;
	while (++i < 256)
  40b090:	48 83 c3 01          	add    $0x1,%rbx
  40b094:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
  40b09b:	74 13                	je     40b0b0 <font_free+0x40>
		if (font->chars[i])
  40b09d:	49 8b 34 df          	mov    (%r15,%rbx,8),%rsi
  40b0a1:	48 85 f6             	test   %rsi,%rsi
  40b0a4:	74 ea                	je     40b090 <font_free+0x20>
			mlx_destroy_image(game->mlx, font->chars[i]);
  40b0a6:	49 8b 3e             	mov    (%r14),%rdi
  40b0a9:	e8 32 1f 00 00       	call   40cfe0 <mlx_destroy_image>
  40b0ae:	eb e0                	jmp    40b090 <font_free+0x20>
	free(font);
  40b0b0:	4c 89 ff             	mov    %r15,%rdi
  40b0b3:	5b                   	pop    %rbx
  40b0b4:	41 5e                	pop    %r14
  40b0b6:	41 5f                	pop    %r15
  40b0b8:	e9 c3 70 ff ff       	jmp    402180 <free@plt>
}
  40b0bd:	c3                   	ret    
  40b0be:	66 90                	xchg   %ax,%ax

000000000040b0c0 <mlx_int_deal_shm>:
  40b0c0:	f3 0f 1e fa          	endbr64 
  40b0c4:	41 54                	push   %r12
  40b0c6:	55                   	push   %rbp
  40b0c7:	53                   	push   %rbx
  40b0c8:	48 89 fb             	mov    %rdi,%rbx
  40b0cb:	48 83 ec 40          	sub    $0x40,%rsp
  40b0cf:	48 8b 3f             	mov    (%rdi),%rdi
  40b0d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b0d9:	00 00 
  40b0db:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40b0e0:	31 c0                	xor    %eax,%eax
  40b0e2:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40b0e7:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40b0ec:	48 89 f2             	mov    %rsi,%rdx
  40b0ef:	e8 0c 71 ff ff       	call   402200 <XShmQueryVersion@plt>
  40b0f4:	89 43 48             	mov    %eax,0x48(%rbx)
  40b0f7:	85 c0                	test   %eax,%eax
  40b0f9:	74 0c                	je     40b107 <mlx_int_deal_shm+0x47>
  40b0fb:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40b0ff:	85 c0                	test   %eax,%eax
  40b101:	0f 85 99 00 00 00    	jne    40b1a0 <mlx_int_deal_shm+0xe0>
  40b107:	c7 43 4c ff ff ff ff 	movl   $0xffffffff,0x4c(%rbx)
  40b10e:	4c 8d 64 24 10       	lea    0x10(%rsp),%r12
  40b113:	be 20 00 00 00       	mov    $0x20,%esi
  40b118:	4c 89 e7             	mov    %r12,%rdi
  40b11b:	e8 40 71 ff ff       	call   402260 <gethostname@plt>
  40b120:	48 8d 3d 67 51 00 00 	lea    0x5167(%rip),%rdi        # 41028e <_IO_stdin_used+0x128e>
  40b127:	e8 74 71 ff ff       	call   4022a0 <getenv@plt>
  40b12c:	48 89 c5             	mov    %rax,%rbp
  40b12f:	48 85 c0             	test   %rax,%rax
  40b132:	74 4c                	je     40b180 <mlx_int_deal_shm+0xc0>
  40b134:	0f b6 00             	movzbl (%rax),%eax
  40b137:	3c 3a                	cmp    $0x3a,%al
  40b139:	74 45                	je     40b180 <mlx_int_deal_shm+0xc0>
  40b13b:	84 c0                	test   %al,%al
  40b13d:	74 41                	je     40b180 <mlx_int_deal_shm+0xc0>
  40b13f:	4c 89 e7             	mov    %r12,%rdi
  40b142:	e8 59 70 ff ff       	call   4021a0 <strlen@plt>
  40b147:	4c 89 e6             	mov    %r12,%rsi
  40b14a:	48 89 ef             	mov    %rbp,%rdi
  40b14d:	48 89 c2             	mov    %rax,%rdx
  40b150:	e8 ab 6f ff ff       	call   402100 <strncmp@plt>
  40b155:	85 c0                	test   %eax,%eax
  40b157:	74 27                	je     40b180 <mlx_int_deal_shm+0xc0>
  40b159:	b9 09 00 00 00       	mov    $0x9,%ecx
  40b15e:	48 8d 3d 31 51 00 00 	lea    0x5131(%rip),%rdi        # 410296 <_IO_stdin_used+0x1296>
  40b165:	48 89 ee             	mov    %rbp,%rsi
  40b168:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40b16a:	0f 97 c0             	seta   %al
  40b16d:	1c 00                	sbb    $0x0,%al
  40b16f:	84 c0                	test   %al,%al
  40b171:	74 0d                	je     40b180 <mlx_int_deal_shm+0xc0>
  40b173:	48 8b 05 76 51 00 00 	mov    0x5176(%rip),%rax        # 4102f0 <_IO_stdin_used+0x12f0>
  40b17a:	48 89 43 48          	mov    %rax,0x48(%rbx)
  40b17e:	66 90                	xchg   %ax,%ax
  40b180:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40b185:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b18c:	00 00 
  40b18e:	75 20                	jne    40b1b0 <mlx_int_deal_shm+0xf0>
  40b190:	48 83 c4 40          	add    $0x40,%rsp
  40b194:	31 c0                	xor    %eax,%eax
  40b196:	5b                   	pop    %rbx
  40b197:	5d                   	pop    %rbp
  40b198:	41 5c                	pop    %r12
  40b19a:	c3                   	ret    
  40b19b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b1a0:	48 8b 3b             	mov    (%rbx),%rdi
  40b1a3:	e8 68 72 ff ff       	call   402410 <XShmPixmapFormat@plt>
  40b1a8:	89 43 4c             	mov    %eax,0x4c(%rbx)
  40b1ab:	e9 5e ff ff ff       	jmp    40b10e <mlx_int_deal_shm+0x4e>
  40b1b0:	e8 1b 71 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b1b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40b1bc:	00 00 00 00 

000000000040b1c0 <mlx_int_rgb_conversion>:
  40b1c0:	f3 0f 1e fa          	endbr64 
  40b1c4:	48 8b 77 18          	mov    0x18(%rdi),%rsi
  40b1c8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40b1cc:	48 c7 47 64 00 00 00 	movq   $0x0,0x64(%rdi)
  40b1d3:	00 
  40b1d4:	0f 11 47 54          	movups %xmm0,0x54(%rdi)
  40b1d8:	48 8b 46 18          	mov    0x18(%rsi),%rax
  40b1dc:	a8 01                	test   $0x1,%al
  40b1de:	75 17                	jne    40b1f7 <mlx_int_rgb_conversion+0x37>
  40b1e0:	ba 01 00 00 00       	mov    $0x1,%edx
  40b1e5:	0f 1f 00             	nopl   (%rax)
  40b1e8:	48 d1 e8             	shr    %rax
  40b1eb:	89 d1                	mov    %edx,%ecx
  40b1ed:	83 c2 01             	add    $0x1,%edx
  40b1f0:	a8 01                	test   $0x1,%al
  40b1f2:	74 f4                	je     40b1e8 <mlx_int_rgb_conversion+0x28>
  40b1f4:	89 4f 54             	mov    %ecx,0x54(%rdi)
  40b1f7:	ba 01 00 00 00       	mov    $0x1,%edx
  40b1fc:	0f 1f 40 00          	nopl   0x0(%rax)
  40b200:	48 d1 e8             	shr    %rax
  40b203:	89 d1                	mov    %edx,%ecx
  40b205:	83 c2 01             	add    $0x1,%edx
  40b208:	a8 01                	test   $0x1,%al
  40b20a:	75 f4                	jne    40b200 <mlx_int_rgb_conversion+0x40>
  40b20c:	48 89 46 18          	mov    %rax,0x18(%rsi)
  40b210:	48 8b 46 20          	mov    0x20(%rsi),%rax
  40b214:	89 4f 58             	mov    %ecx,0x58(%rdi)
  40b217:	a8 01                	test   $0x1,%al
  40b219:	75 14                	jne    40b22f <mlx_int_rgb_conversion+0x6f>
  40b21b:	ba 01 00 00 00       	mov    $0x1,%edx
  40b220:	48 d1 e8             	shr    %rax
  40b223:	89 d1                	mov    %edx,%ecx
  40b225:	83 c2 01             	add    $0x1,%edx
  40b228:	a8 01                	test   $0x1,%al
  40b22a:	74 f4                	je     40b220 <mlx_int_rgb_conversion+0x60>
  40b22c:	89 4f 5c             	mov    %ecx,0x5c(%rdi)
  40b22f:	ba 01 00 00 00       	mov    $0x1,%edx
  40b234:	0f 1f 40 00          	nopl   0x0(%rax)
  40b238:	48 d1 e8             	shr    %rax
  40b23b:	89 d1                	mov    %edx,%ecx
  40b23d:	83 c2 01             	add    $0x1,%edx
  40b240:	a8 01                	test   $0x1,%al
  40b242:	75 f4                	jne    40b238 <mlx_int_rgb_conversion+0x78>
  40b244:	48 89 46 20          	mov    %rax,0x20(%rsi)
  40b248:	48 8b 46 28          	mov    0x28(%rsi),%rax
  40b24c:	89 4f 60             	mov    %ecx,0x60(%rdi)
  40b24f:	a8 01                	test   $0x1,%al
  40b251:	75 1c                	jne    40b26f <mlx_int_rgb_conversion+0xaf>
  40b253:	ba 01 00 00 00       	mov    $0x1,%edx
  40b258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b25f:	00 
  40b260:	48 d1 e8             	shr    %rax
  40b263:	89 d1                	mov    %edx,%ecx
  40b265:	83 c2 01             	add    $0x1,%edx
  40b268:	a8 01                	test   $0x1,%al
  40b26a:	74 f4                	je     40b260 <mlx_int_rgb_conversion+0xa0>
  40b26c:	89 4f 64             	mov    %ecx,0x64(%rdi)
  40b26f:	ba 01 00 00 00       	mov    $0x1,%edx
  40b274:	0f 1f 40 00          	nopl   0x0(%rax)
  40b278:	48 d1 e8             	shr    %rax
  40b27b:	89 d1                	mov    %edx,%ecx
  40b27d:	83 c2 01             	add    $0x1,%edx
  40b280:	a8 01                	test   $0x1,%al
  40b282:	75 f4                	jne    40b278 <mlx_int_rgb_conversion+0xb8>
  40b284:	48 89 46 28          	mov    %rax,0x28(%rsi)
  40b288:	31 c0                	xor    %eax,%eax
  40b28a:	89 4f 68             	mov    %ecx,0x68(%rdi)
  40b28d:	c3                   	ret    
  40b28e:	66 90                	xchg   %ax,%ax

000000000040b290 <mlx_init>:
  40b290:	f3 0f 1e fa          	endbr64 
  40b294:	41 54                	push   %r12
  40b296:	bf 88 00 00 00       	mov    $0x88,%edi
  40b29b:	e8 70 6e ff ff       	call   402110 <malloc@plt>
  40b2a0:	49 89 c4             	mov    %rax,%r12
  40b2a3:	48 85 c0             	test   %rax,%rax
  40b2a6:	0f 84 e5 00 00 00    	je     40b391 <mlx_init+0x101>
  40b2ac:	48 8d 3d 63 3d 00 00 	lea    0x3d63(%rip),%rdi        # 40f016 <_IO_stdin_used+0x16>
  40b2b3:	e8 b8 6e ff ff       	call   402170 <XOpenDisplay@plt>
  40b2b8:	49 89 04 24          	mov    %rax,(%r12)
  40b2bc:	48 89 c2             	mov    %rax,%rdx
  40b2bf:	48 85 c0             	test   %rax,%rax
  40b2c2:	0f 84 f8 00 00 00    	je     40b3c0 <mlx_init+0x130>
  40b2c8:	48 63 80 e0 00 00 00 	movslq 0xe0(%rax),%rax
  40b2cf:	4c 89 e7             	mov    %r12,%rdi
  40b2d2:	48 89 c1             	mov    %rax,%rcx
  40b2d5:	48 c1 e0 07          	shl    $0x7,%rax
  40b2d9:	48 03 82 e8 00 00 00 	add    0xe8(%rdx),%rax
  40b2e0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  40b2e4:	66 0f 6e c1          	movd   %ecx,%xmm0
  40b2e8:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40b2ed:	48 8b 50 50          	mov    0x50(%rax),%rdx
  40b2f1:	8b 40 38             	mov    0x38(%rax),%eax
  40b2f4:	49 89 54 24 20       	mov    %rdx,0x20(%r12)
  40b2f9:	66 0f 6e c8          	movd   %eax,%xmm1
  40b2fd:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
  40b301:	66 41 0f d6 44 24 10 	movq   %xmm0,0x10(%r12)
  40b308:	e8 43 05 00 00       	call   40b850 <mlx_int_get_visual>
  40b30d:	83 f8 ff             	cmp    $0xffffffff,%eax
  40b310:	0f 84 b7 00 00 00    	je     40b3cd <mlx_init+0x13d>
  40b316:	49 c7 44 24 30 00 00 	movq   $0x0,0x30(%r12)
  40b31d:	00 00 
  40b31f:	49 8b 3c 24          	mov    (%r12),%rdi
  40b323:	31 d2                	xor    %edx,%edx
  40b325:	48 8d 35 74 4f 00 00 	lea    0x4f74(%rip),%rsi        # 4102a0 <_IO_stdin_used+0x12a0>
  40b32c:	49 c7 44 24 38 00 00 	movq   $0x0,0x38(%r12)
  40b333:	00 00 
  40b335:	49 c7 44 24 40 00 00 	movq   $0x0,0x40(%r12)
  40b33c:	00 00 
  40b33e:	41 c7 44 24 50 01 00 	movl   $0x1,0x50(%r12)
  40b345:	00 00 
  40b347:	e8 04 70 ff ff       	call   402350 <XInternAtom@plt>
  40b34c:	49 8b 3c 24          	mov    (%r12),%rdi
  40b350:	31 d2                	xor    %edx,%edx
  40b352:	48 8d 35 58 4f 00 00 	lea    0x4f58(%rip),%rsi        # 4102b1 <_IO_stdin_used+0x12b1>
  40b359:	49 89 44 24 70       	mov    %rax,0x70(%r12)
  40b35e:	e8 ed 6f ff ff       	call   402350 <XInternAtom@plt>
  40b363:	4c 89 e7             	mov    %r12,%rdi
  40b366:	49 89 44 24 78       	mov    %rax,0x78(%r12)
  40b36b:	31 c0                	xor    %eax,%eax
  40b36d:	e8 4e fd ff ff       	call   40b0c0 <mlx_int_deal_shm>
  40b372:	41 8b 44 24 28       	mov    0x28(%r12),%eax
  40b377:	85 c0                	test   %eax,%eax
  40b379:	75 25                	jne    40b3a0 <mlx_init+0x110>
  40b37b:	4c 89 e7             	mov    %r12,%rdi
  40b37e:	31 c0                	xor    %eax,%eax
  40b380:	e8 3b fe ff ff       	call   40b1c0 <mlx_int_rgb_conversion>
  40b385:	41 c7 84 24 80 00 00 	movl   $0x0,0x80(%r12)
  40b38c:	00 00 00 00 00 
  40b391:	4c 89 e0             	mov    %r12,%rax
  40b394:	41 5c                	pop    %r12
  40b396:	c3                   	ret    
  40b397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b39e:	00 00 
  40b3a0:	49 8b 54 24 18       	mov    0x18(%r12),%rdx
  40b3a5:	49 8b 74 24 08       	mov    0x8(%r12),%rsi
  40b3aa:	31 c9                	xor    %ecx,%ecx
  40b3ac:	49 8b 3c 24          	mov    (%r12),%rdi
  40b3b0:	e8 9b 6d ff ff       	call   402150 <XCreateColormap@plt>
  40b3b5:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  40b3ba:	eb bf                	jmp    40b37b <mlx_init+0xeb>
  40b3bc:	0f 1f 40 00          	nopl   0x0(%rax)
  40b3c0:	4c 89 e7             	mov    %r12,%rdi
  40b3c3:	45 31 e4             	xor    %r12d,%r12d
  40b3c6:	e8 b5 6d ff ff       	call   402180 <free@plt>
  40b3cb:	eb c4                	jmp    40b391 <mlx_init+0x101>
  40b3cd:	48 8d 3d ec 4e 00 00 	lea    0x4eec(%rip),%rdi        # 4102c0 <_IO_stdin_used+0x12c0>
  40b3d4:	e8 b7 6c ff ff       	call   402090 <puts@plt>
  40b3d9:	bf 01 00 00 00       	mov    $0x1,%edi
  40b3de:	e8 cd 6c ff ff       	call   4020b0 <exit@plt>
  40b3e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b3ea:	00 00 00 
  40b3ed:	0f 1f 00             	nopl   (%rax)

000000000040b3f0 <mlx_new_window>:
  40b3f0:	f3 0f 1e fa          	endbr64 
  40b3f4:	41 57                	push   %r15
  40b3f6:	49 89 cf             	mov    %rcx,%r15
  40b3f9:	41 56                	push   %r14
  40b3fb:	41 89 d6             	mov    %edx,%r14d
  40b3fe:	41 55                	push   %r13
  40b400:	41 89 f5             	mov    %esi,%r13d
  40b403:	41 54                	push   %r12
  40b405:	55                   	push   %rbp
  40b406:	48 89 fd             	mov    %rdi,%rbp
  40b409:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40b410:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b417:	00 00 
  40b419:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40b420:	00 
  40b421:	31 c0                	xor    %eax,%eax
  40b423:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40b427:	bf a8 03 00 00       	mov    $0x3a8,%edi
  40b42c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40b433:	00 00 
  40b435:	48 c7 44 24 18 ff ff 	movq   $0xffffffffffffffff,0x18(%rsp)
  40b43c:	ff ff 
  40b43e:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  40b443:	48 c7 44 24 48 ff ff 	movq   $0xffffff,0x48(%rsp)
  40b44a:	ff 00 
  40b44c:	e8 bf 6c ff ff       	call   402110 <malloc@plt>
  40b451:	49 89 c4             	mov    %rax,%r12
  40b454:	48 85 c0             	test   %rax,%rax
  40b457:	0f 84 d1 00 00 00    	je     40b52e <mlx_new_window+0x13e>
  40b45d:	48 89 e0             	mov    %rsp,%rax
  40b460:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40b464:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40b468:	45 89 f1             	mov    %r14d,%r9d
  40b46b:	50                   	push   %rax
  40b46c:	45 89 e8             	mov    %r13d,%r8d
  40b46f:	31 c9                	xor    %ecx,%ecx
  40b471:	31 d2                	xor    %edx,%edx
  40b473:	68 0a 28 00 00       	push   $0x280a
  40b478:	ff 75 18             	push   0x18(%rbp)
  40b47b:	6a 01                	push   $0x1
  40b47d:	6a 00                	push   $0x0
  40b47f:	6a 00                	push   $0x0
  40b481:	e8 aa 6c ff ff       	call   402130 <XCreateWindow@plt>
  40b486:	48 83 c4 30          	add    $0x30,%rsp
  40b48a:	44 89 f1             	mov    %r14d,%ecx
  40b48d:	44 89 ea             	mov    %r13d,%edx
  40b490:	48 89 c6             	mov    %rax,%rsi
  40b493:	49 89 04 24          	mov    %rax,(%r12)
  40b497:	48 89 ef             	mov    %rbp,%rdi
  40b49a:	31 c0                	xor    %eax,%eax
  40b49c:	e8 8f 02 00 00       	call   40b730 <mlx_int_anti_resize_win>
  40b4a1:	49 8b 34 24          	mov    (%r12),%rsi
  40b4a5:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40b4a9:	4c 89 fa             	mov    %r15,%rdx
  40b4ac:	e8 bf 6b ff ff       	call   402070 <XStoreName@plt>
  40b4b1:	49 8b 34 24          	mov    (%r12),%rsi
  40b4b5:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40b4b9:	48 8d 55 70          	lea    0x70(%rbp),%rdx
  40b4bd:	b9 01 00 00 00       	mov    $0x1,%ecx
  40b4c2:	e8 69 6d ff ff       	call   402230 <XSetWMProtocols@plt>
  40b4c7:	49 8b 34 24          	mov    (%r12),%rsi
  40b4cb:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40b4cf:	66 0f 76 c0          	pcmpeqd %xmm0,%xmm0
  40b4d3:	48 8d 4c 24 70       	lea    0x70(%rsp),%rcx
  40b4d8:	ba 07 00 00 00       	mov    $0x7,%edx
  40b4dd:	0f 11 44 24 78       	movups %xmm0,0x78(%rsp)
  40b4e2:	c7 44 24 70 03 00 00 	movl   $0x3,0x70(%rsp)
  40b4e9:	00 
  40b4ea:	e8 a1 6d ff ff       	call   402290 <XCreateGC@plt>
  40b4ef:	49 8d 54 24 48       	lea    0x48(%r12),%rdx
  40b4f4:	b9 6c 00 00 00       	mov    $0x6c,%ecx
  40b4f9:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40b4fe:	48 8b 45 30          	mov    0x30(%rbp),%rax
  40b502:	48 89 d7             	mov    %rdx,%rdi
  40b505:	4c 89 65 30          	mov    %r12,0x30(%rbp)
  40b509:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40b50e:	31 c0                	xor    %eax,%eax
  40b510:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40b513:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40b517:	49 8b 34 24          	mov    (%r12),%rsi
  40b51b:	e8 e0 6e ff ff       	call   402400 <XMapRaised@plt>
  40b520:	49 8b 34 24          	mov    (%r12),%rsi
  40b524:	48 89 ef             	mov    %rbp,%rdi
  40b527:	31 c0                	xor    %eax,%eax
  40b529:	e8 b2 02 00 00       	call   40b7e0 <mlx_int_wait_first_expose>
  40b52e:	48 8b 84 24 f8 00 00 	mov    0xf8(%rsp),%rax
  40b535:	00 
  40b536:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b53d:	00 00 
  40b53f:	75 14                	jne    40b555 <mlx_new_window+0x165>
  40b541:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  40b548:	4c 89 e0             	mov    %r12,%rax
  40b54b:	5d                   	pop    %rbp
  40b54c:	41 5c                	pop    %r12
  40b54e:	41 5d                	pop    %r13
  40b550:	41 5e                	pop    %r14
  40b552:	41 5f                	pop    %r15
  40b554:	c3                   	ret    
  40b555:	e8 76 6d ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b55a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040b560 <mlx_loop_end>:
  40b560:	f3 0f 1e fa          	endbr64 
  40b564:	c7 87 80 00 00 00 01 	movl   $0x1,0x80(%rdi)
  40b56b:	00 00 00 
  40b56e:	b8 01 00 00 00       	mov    $0x1,%eax
  40b573:	c3                   	ret    
  40b574:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40b57b:	00 00 00 00 
  40b57f:	90                   	nop

000000000040b580 <mlx_loop>:
  40b580:	f3 0f 1e fa          	endbr64 
  40b584:	41 54                	push   %r12
  40b586:	55                   	push   %rbp
  40b587:	48 8d 2d f2 ac 00 00 	lea    0xacf2(%rip),%rbp        # 416280 <mlx_int_param_event>
  40b58e:	53                   	push   %rbx
  40b58f:	48 89 fb             	mov    %rdi,%rbx
  40b592:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
  40b599:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b5a0:	00 00 
  40b5a2:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
  40b5a9:	00 
  40b5aa:	31 c0                	xor    %eax,%eax
  40b5ac:	e8 3f 19 00 00       	call   40cef0 <mlx_int_set_win_event_mask>
  40b5b1:	c7 43 50 00 00 00 00 	movl   $0x0,0x50(%rbx)
  40b5b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b5bf:	00 
  40b5c0:	48 83 7b 30 00       	cmpq   $0x0,0x30(%rbx)
  40b5c5:	0f 84 9d 00 00 00    	je     40b668 <mlx_loop+0xe8>
  40b5cb:	8b 83 80 00 00 00    	mov    0x80(%rbx),%eax
  40b5d1:	85 c0                	test   %eax,%eax
  40b5d3:	0f 85 8f 00 00 00    	jne    40b668 <mlx_loop+0xe8>
  40b5d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40b5e0:	48 83 7b 38 00       	cmpq   $0x0,0x38(%rbx)
  40b5e5:	74 0c                	je     40b5f3 <mlx_loop+0x73>
  40b5e7:	48 8b 3b             	mov    (%rbx),%rdi
  40b5ea:	e8 81 6e ff ff       	call   402470 <XPending@plt>
  40b5ef:	85 c0                	test   %eax,%eax
  40b5f1:	74 4b                	je     40b63e <mlx_loop+0xbe>
  40b5f3:	48 8b 3b             	mov    (%rbx),%rdi
  40b5f6:	4c 8d 64 24 10       	lea    0x10(%rsp),%r12
  40b5fb:	4c 89 e6             	mov    %r12,%rsi
  40b5fe:	e8 0d 6c ff ff       	call   402210 <XNextEvent@plt>
  40b603:	48 8b 53 30          	mov    0x30(%rbx),%rdx
  40b607:	48 85 d2             	test   %rdx,%rdx
  40b60a:	74 28                	je     40b634 <mlx_loop+0xb4>
  40b60c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40b611:	eb 0e                	jmp    40b621 <mlx_loop+0xa1>
  40b613:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b618:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  40b61c:	48 85 d2             	test   %rdx,%rdx
  40b61f:	74 13                	je     40b634 <mlx_loop+0xb4>
  40b621:	48 39 02             	cmp    %rax,(%rdx)
  40b624:	75 f2                	jne    40b618 <mlx_loop+0x98>
  40b626:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40b62a:	83 f8 21             	cmp    $0x21,%eax
  40b62d:	74 61                	je     40b690 <mlx_loop+0x110>
  40b62f:	83 f8 23             	cmp    $0x23,%eax
  40b632:	7e 67                	jle    40b69b <mlx_loop+0x11b>
  40b634:	8b 93 80 00 00 00    	mov    0x80(%rbx),%edx
  40b63a:	85 d2                	test   %edx,%edx
  40b63c:	74 a2                	je     40b5e0 <mlx_loop+0x60>
  40b63e:	48 8b 3b             	mov    (%rbx),%rdi
  40b641:	31 f6                	xor    %esi,%esi
  40b643:	e8 78 6c ff ff       	call   4022c0 <XSync@plt>
  40b648:	48 8b 53 38          	mov    0x38(%rbx),%rdx
  40b64c:	48 85 d2             	test   %rdx,%rdx
  40b64f:	0f 84 6b ff ff ff    	je     40b5c0 <mlx_loop+0x40>
  40b655:	31 c0                	xor    %eax,%eax
  40b657:	48 8b 7b 40          	mov    0x40(%rbx),%rdi
  40b65b:	ff d2                	call   *%rdx
  40b65d:	48 83 7b 30 00       	cmpq   $0x0,0x30(%rbx)
  40b662:	0f 85 63 ff ff ff    	jne    40b5cb <mlx_loop+0x4b>
  40b668:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b66f:	00 
  40b670:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b677:	00 00 
  40b679:	75 75                	jne    40b6f0 <mlx_loop+0x170>
  40b67b:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  40b682:	31 c0                	xor    %eax,%eax
  40b684:	5b                   	pop    %rbx
  40b685:	5d                   	pop    %rbp
  40b686:	41 5c                	pop    %r12
  40b688:	c3                   	ret    
  40b689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40b690:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
  40b694:	48 39 4c 24 38       	cmp    %rcx,0x38(%rsp)
  40b699:	74 20                	je     40b6bb <mlx_loop+0x13b>
  40b69b:	48 63 c8             	movslq %eax,%rcx
  40b69e:	48 8d 04 49          	lea    (%rcx,%rcx,2),%rax
  40b6a2:	48 83 7c c2 50 00    	cmpq   $0x0,0x50(%rdx,%rax,8)
  40b6a8:	74 8a                	je     40b634 <mlx_loop+0xb4>
  40b6aa:	4c 89 e6             	mov    %r12,%rsi
  40b6ad:	48 89 df             	mov    %rbx,%rdi
  40b6b0:	31 c0                	xor    %eax,%eax
  40b6b2:	ff 54 cd 00          	call   *0x0(%rbp,%rcx,8)
  40b6b6:	e9 79 ff ff ff       	jmp    40b634 <mlx_loop+0xb4>
  40b6bb:	48 8b 73 70          	mov    0x70(%rbx),%rsi
  40b6bf:	48 39 74 24 48       	cmp    %rsi,0x48(%rsp)
  40b6c4:	75 d5                	jne    40b69b <mlx_loop+0x11b>
  40b6c6:	48 8b 8a e8 01 00 00 	mov    0x1e8(%rdx),%rcx
  40b6cd:	48 85 c9             	test   %rcx,%rcx
  40b6d0:	74 c9                	je     40b69b <mlx_loop+0x11b>
  40b6d2:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  40b6d7:	48 8b ba f0 01 00 00 	mov    0x1f0(%rdx),%rdi
  40b6de:	31 c0                	xor    %eax,%eax
  40b6e0:	ff d1                	call   *%rcx
  40b6e2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40b6e6:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40b6eb:	e9 3f ff ff ff       	jmp    40b62f <mlx_loop+0xaf>
  40b6f0:	e8 db 6b ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b6f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b6fc:	00 00 00 
  40b6ff:	90                   	nop

000000000040b700 <mlx_mouse_hook>:
  40b700:	f3 0f 1e fa          	endbr64 
  40b704:	48 89 b7 b0 00 00 00 	mov    %rsi,0xb0(%rdi)
  40b70b:	48 89 97 b8 00 00 00 	mov    %rdx,0xb8(%rdi)
  40b712:	c7 87 a8 00 00 00 04 	movl   $0x4,0xa8(%rdi)
  40b719:	00 00 00 
  40b71c:	c3                   	ret    
  40b71d:	0f 1f 00             	nopl   (%rax)

000000000040b720 <mlx_loop_hook>:
  40b720:	f3 0f 1e fa          	endbr64 
  40b724:	48 89 77 38          	mov    %rsi,0x38(%rdi)
  40b728:	48 89 57 40          	mov    %rdx,0x40(%rdi)
  40b72c:	c3                   	ret    
  40b72d:	0f 1f 00             	nopl   (%rax)

000000000040b730 <mlx_int_anti_resize_win>:
  40b730:	f3 0f 1e fa          	endbr64 
  40b734:	41 56                	push   %r14
  40b736:	66 0f 6e c9          	movd   %ecx,%xmm1
  40b73a:	66 0f 6e c2          	movd   %edx,%xmm0
  40b73e:	41 55                	push   %r13
  40b740:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
  40b744:	41 89 d5             	mov    %edx,%r13d
  40b747:	41 54                	push   %r12
  40b749:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  40b74d:	41 89 cc             	mov    %ecx,%r12d
  40b750:	55                   	push   %rbp
  40b751:	48 89 f5             	mov    %rsi,%rbp
  40b754:	53                   	push   %rbx
  40b755:	48 89 fb             	mov    %rdi,%rbx
  40b758:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  40b75c:	48 8b 3f             	mov    (%rdi),%rdi
  40b75f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b766:	00 00 
  40b768:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40b76d:	31 c0                	xor    %eax,%eax
  40b76f:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
  40b774:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40b779:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40b77d:	4c 89 f2             	mov    %r14,%rdx
  40b780:	e8 fb 68 ff ff       	call   402080 <XGetWMNormalHints@plt>
  40b785:	66 0f 6f 04 24       	movdqa (%rsp),%xmm0
  40b78a:	48 8b 3b             	mov    (%rbx),%rdi
  40b78d:	4c 89 f2             	mov    %r14,%rdx
  40b790:	48 89 ee             	mov    %rbp,%rsi
  40b793:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
  40b798:	44 89 64 24 44       	mov    %r12d,0x44(%rsp)
  40b79d:	48 c7 44 24 20 3c 00 	movq   $0x3c,0x20(%rsp)
  40b7a4:	00 00 
  40b7a6:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  40b7ab:	e8 70 69 ff ff       	call   402120 <XSetWMNormalHints@plt>
  40b7b0:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
  40b7b5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b7bc:	00 00 
  40b7be:	75 0f                	jne    40b7cf <mlx_int_anti_resize_win+0x9f>
  40b7c0:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  40b7c4:	31 c0                	xor    %eax,%eax
  40b7c6:	5b                   	pop    %rbx
  40b7c7:	5d                   	pop    %rbp
  40b7c8:	41 5c                	pop    %r12
  40b7ca:	41 5d                	pop    %r13
  40b7cc:	41 5e                	pop    %r14
  40b7ce:	c3                   	ret    
  40b7cf:	e8 fc 6a ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b7d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b7db:	00 00 00 
  40b7de:	66 90                	xchg   %ax,%ax

000000000040b7e0 <mlx_int_wait_first_expose>:
  40b7e0:	f3 0f 1e fa          	endbr64 
  40b7e4:	55                   	push   %rbp
  40b7e5:	ba 00 80 00 00       	mov    $0x8000,%edx
  40b7ea:	53                   	push   %rbx
  40b7eb:	48 89 fb             	mov    %rdi,%rbx
  40b7ee:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  40b7f5:	48 8b 3f             	mov    (%rdi),%rdi
  40b7f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b7ff:	00 00 
  40b801:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  40b808:	00 
  40b809:	31 c0                	xor    %eax,%eax
  40b80b:	48 89 e5             	mov    %rsp,%rbp
  40b80e:	48 89 e9             	mov    %rbp,%rcx
  40b811:	e8 0a 6a ff ff       	call   402220 <XWindowEvent@plt>
  40b816:	48 8b 3b             	mov    (%rbx),%rdi
  40b819:	48 89 ee             	mov    %rbp,%rsi
  40b81c:	e8 4f 6a ff ff       	call   402270 <XPutBackEvent@plt>
  40b821:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
  40b828:	00 
  40b829:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b830:	00 00 
  40b832:	75 0c                	jne    40b840 <mlx_int_wait_first_expose+0x60>
  40b834:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  40b83b:	31 c0                	xor    %eax,%eax
  40b83d:	5b                   	pop    %rbx
  40b83e:	5d                   	pop    %rbp
  40b83f:	c3                   	ret    
  40b840:	e8 8b 6a ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b845:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b84c:	00 00 00 
  40b84f:	90                   	nop

000000000040b850 <mlx_int_get_visual>:
  40b850:	f3 0f 1e fa          	endbr64 
  40b854:	41 54                	push   %r12
  40b856:	45 31 e4             	xor    %r12d,%r12d
  40b859:	53                   	push   %rbx
  40b85a:	48 89 fb             	mov    %rdi,%rbx
  40b85d:	48 83 ec 68          	sub    $0x68,%rsp
  40b861:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40b868:	00 00 
  40b86a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40b86f:	31 c0                	xor    %eax,%eax
  40b871:	c7 47 28 00 00 00 00 	movl   $0x0,0x28(%rdi)
  40b878:	48 63 43 10          	movslq 0x10(%rbx),%rax
  40b87c:	48 8b 3f             	mov    (%rdi),%rdi
  40b87f:	48 c1 e0 07          	shl    $0x7,%rax
  40b883:	48 03 87 e8 00 00 00 	add    0xe8(%rdi),%rax
  40b88a:	48 8b 40 40          	mov    0x40(%rax),%rax
  40b88e:	83 78 10 04          	cmpl   $0x4,0x10(%rax)
  40b892:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40b896:	74 36                	je     40b8ce <mlx_int_get_visual+0x7e>
  40b898:	8b 43 14             	mov    0x14(%rbx),%eax
  40b89b:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  40b8a0:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  40b8a5:	be 0c 00 00 00       	mov    $0xc,%esi
  40b8aa:	c7 44 24 28 04 00 00 	movl   $0x4,0x28(%rsp)
  40b8b1:	00 
  40b8b2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40b8b6:	e8 c5 6a ff ff       	call   402380 <XGetVisualInfo@plt>
  40b8bb:	48 85 c0             	test   %rax,%rax
  40b8be:	74 29                	je     40b8e9 <mlx_int_get_visual+0x99>
  40b8c0:	48 8b 00             	mov    (%rax),%rax
  40b8c3:	c7 43 28 01 00 00 00 	movl   $0x1,0x28(%rbx)
  40b8ca:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40b8ce:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b8d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40b8da:	00 00 
  40b8dc:	75 13                	jne    40b8f1 <mlx_int_get_visual+0xa1>
  40b8de:	48 83 c4 68          	add    $0x68,%rsp
  40b8e2:	44 89 e0             	mov    %r12d,%eax
  40b8e5:	5b                   	pop    %rbx
  40b8e6:	41 5c                	pop    %r12
  40b8e8:	c3                   	ret    
  40b8e9:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  40b8ef:	eb dd                	jmp    40b8ce <mlx_int_get_visual+0x7e>
  40b8f1:	e8 da 69 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40b8f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40b8fd:	00 00 00 

000000000040b900 <shm_att_pb>:
  40b900:	f3 0f 1e fa          	endbr64 
  40b904:	8b 46 20             	mov    0x20(%rsi),%eax
  40b907:	25 00 ff ff 00       	and    $0xffff00,%eax
  40b90c:	3d 00 92 01 00       	cmp    $0x19200,%eax
  40b911:	74 0d                	je     40b920 <shm_att_pb+0x20>
  40b913:	c7 05 a7 d9 00 00 01 	movl   $0x1,0xd9a7(%rip)        # 4192c4 <mlx_X_error>
  40b91a:	00 00 00 
  40b91d:	c3                   	ret    
  40b91e:	66 90                	xchg   %ax,%ax
  40b920:	48 83 ec 08          	sub    $0x8,%rsp
  40b924:	ba 38 00 00 00       	mov    $0x38,%edx
  40b929:	bf 02 00 00 00       	mov    $0x2,%edi
  40b92e:	48 8d 35 c3 49 00 00 	lea    0x49c3(%rip),%rsi        # 4102f8 <_IO_stdin_used+0x12f8>
  40b935:	e8 e6 6a ff ff       	call   402420 <write@plt>
  40b93a:	c7 05 80 d9 00 00 01 	movl   $0x1,0xd980(%rip)        # 4192c4 <mlx_X_error>
  40b941:	00 00 00 
  40b944:	48 83 c4 08          	add    $0x8,%rsp
  40b948:	c3                   	ret    
  40b949:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040b950 <mlx_int_new_xshm_image>:
  40b950:	f3 0f 1e fa          	endbr64 
  40b954:	41 57                	push   %r15
  40b956:	41 56                	push   %r14
  40b958:	41 55                	push   %r13
  40b95a:	41 89 d5             	mov    %edx,%r13d
  40b95d:	41 54                	push   %r12
  40b95f:	41 89 f4             	mov    %esi,%r12d
  40b962:	be 01 00 00 00       	mov    $0x1,%esi
  40b967:	55                   	push   %rbp
  40b968:	89 cd                	mov    %ecx,%ebp
  40b96a:	53                   	push   %rbx
  40b96b:	48 89 fb             	mov    %rdi,%rbx
  40b96e:	bf 58 00 00 00       	mov    $0x58,%edi
  40b973:	48 83 ec 18          	sub    $0x18,%rsp
  40b977:	e8 a4 69 ff ff       	call   402320 <calloc@plt>
  40b97c:	49 89 c7             	mov    %rax,%r15
  40b97f:	48 85 c0             	test   %rax,%rax
  40b982:	0f 84 33 01 00 00    	je     40babb <mlx_int_new_xshm_image+0x16b>
  40b988:	41 55                	push   %r13
  40b98a:	48 8b 3b             	mov    (%rbx),%rdi
  40b98d:	4c 8d 70 38          	lea    0x38(%rax),%r14
  40b991:	45 31 c0             	xor    %r8d,%r8d
  40b994:	41 54                	push   %r12
  40b996:	8b 53 14             	mov    0x14(%rbx),%edx
  40b999:	4d 89 f1             	mov    %r14,%r9
  40b99c:	89 e9                	mov    %ebp,%ecx
  40b99e:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  40b9a2:	e8 29 68 ff ff       	call   4021d0 <XShmCreateImage@plt>
  40b9a7:	49 89 07             	mov    %rax,(%r15)
  40b9aa:	5f                   	pop    %rdi
  40b9ab:	41 58                	pop    %r8
  40b9ad:	48 85 c0             	test   %rax,%rax
  40b9b0:	0f 84 43 01 00 00    	je     40baf9 <mlx_int_new_xshm_image+0x1a9>
  40b9b6:	66 41 0f 6e cd       	movd   %r13d,%xmm1
  40b9bb:	66 41 0f 6e c4       	movd   %r12d,%xmm0
  40b9c0:	41 8d 74 24 20       	lea    0x20(%r12),%esi
  40b9c5:	31 ff                	xor    %edi,%edi
  40b9c7:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
  40b9cb:	41 0f af f5          	imul   %r13d,%esi
  40b9cf:	ba ff 03 00 00       	mov    $0x3ff,%edx
  40b9d4:	66 41 0f d6 47 20    	movq   %xmm0,0x20(%r15)
  40b9da:	48 8b 40 2c          	mov    0x2c(%rax),%rax
  40b9de:	41 89 6f 2c          	mov    %ebp,0x2c(%r15)
  40b9e2:	49 89 47 18          	mov    %rax,0x18(%r15)
  40b9e6:	c1 e6 02             	shl    $0x2,%esi
  40b9e9:	48 63 f6             	movslq %esi,%rsi
  40b9ec:	e8 4f 69 ff ff       	call   402340 <shmget@plt>
  40b9f1:	41 89 47 40          	mov    %eax,0x40(%r15)
  40b9f5:	89 c7                	mov    %eax,%edi
  40b9f7:	83 f8 ff             	cmp    $0xffffffff,%eax
  40b9fa:	0f 84 f0 00 00 00    	je     40baf0 <mlx_int_new_xshm_image+0x1a0>
  40ba00:	49 8b 0f             	mov    (%r15),%rcx
  40ba03:	31 d2                	xor    %edx,%edx
  40ba05:	31 f6                	xor    %esi,%esi
  40ba07:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40ba0c:	e8 6f 6a ff ff       	call   402480 <shmat@plt>
  40ba11:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40ba16:	48 89 41 10          	mov    %rax,0x10(%rcx)
  40ba1a:	49 89 47 48          	mov    %rax,0x48(%r15)
  40ba1e:	49 89 47 30          	mov    %rax,0x30(%r15)
  40ba22:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40ba26:	0f 84 b7 00 00 00    	je     40bae3 <mlx_int_new_xshm_image+0x193>
  40ba2c:	41 c7 47 50 00 00 00 	movl   $0x0,0x50(%r15)
  40ba33:	00 
  40ba34:	48 8d 3d c5 fe ff ff 	lea    -0x13b(%rip),%rdi        # 40b900 <shm_att_pb>
  40ba3b:	c7 05 7f d8 00 00 00 	movl   $0x0,0xd87f(%rip)        # 4192c4 <mlx_X_error>
  40ba42:	00 00 00 
  40ba45:	e8 56 69 ff ff       	call   4023a0 <XSetErrorHandler@plt>
  40ba4a:	48 8b 3b             	mov    (%rbx),%rdi
  40ba4d:	4c 89 f6             	mov    %r14,%rsi
  40ba50:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40ba55:	e8 a6 68 ff ff       	call   402300 <XShmAttach@plt>
  40ba5a:	85 c0                	test   %eax,%eax
  40ba5c:	74 72                	je     40bad0 <mlx_int_new_xshm_image+0x180>
  40ba5e:	48 8b 3b             	mov    (%rbx),%rdi
  40ba61:	31 f6                	xor    %esi,%esi
  40ba63:	e8 58 68 ff ff       	call   4022c0 <XSync@plt>
  40ba68:	8b 35 56 d8 00 00    	mov    0xd856(%rip),%esi        # 4192c4 <mlx_X_error>
  40ba6e:	85 f6                	test   %esi,%esi
  40ba70:	75 5e                	jne    40bad0 <mlx_int_new_xshm_image+0x180>
  40ba72:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40ba77:	e8 24 69 ff ff       	call   4023a0 <XSetErrorHandler@plt>
  40ba7c:	41 8b 7f 40          	mov    0x40(%r15),%edi
  40ba80:	31 d2                	xor    %edx,%edx
  40ba82:	31 f6                	xor    %esi,%esi
  40ba84:	e8 57 69 ff ff       	call   4023e0 <shmctl@plt>
  40ba89:	39 6b 4c             	cmp    %ebp,0x4c(%rbx)
  40ba8c:	0f 84 8e 00 00 00    	je     40bb20 <mlx_int_new_xshm_image+0x1d0>
  40ba92:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40ba96:	44 8b 43 14          	mov    0x14(%rbx),%r8d
  40ba9a:	44 89 e9             	mov    %r13d,%ecx
  40ba9d:	44 89 e2             	mov    %r12d,%edx
  40baa0:	48 8b 3b             	mov    (%rbx),%rdi
  40baa3:	e8 48 69 ff ff       	call   4023f0 <XCreatePixmap@plt>
  40baa8:	41 c7 47 28 02 00 00 	movl   $0x2,0x28(%r15)
  40baaf:	00 
  40bab0:	49 89 47 08          	mov    %rax,0x8(%r15)
  40bab4:	8b 43 50             	mov    0x50(%rbx),%eax
  40bab7:	85 c0                	test   %eax,%eax
  40bab9:	75 55                	jne    40bb10 <mlx_int_new_xshm_image+0x1c0>
  40babb:	48 83 c4 18          	add    $0x18,%rsp
  40babf:	4c 89 f8             	mov    %r15,%rax
  40bac2:	5b                   	pop    %rbx
  40bac3:	5d                   	pop    %rbp
  40bac4:	41 5c                	pop    %r12
  40bac6:	41 5d                	pop    %r13
  40bac8:	41 5e                	pop    %r14
  40baca:	41 5f                	pop    %r15
  40bacc:	c3                   	ret    
  40bacd:	0f 1f 00             	nopl   (%rax)
  40bad0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40bad5:	e8 c6 68 ff ff       	call   4023a0 <XSetErrorHandler@plt>
  40bada:	49 8b 7f 30          	mov    0x30(%r15),%rdi
  40bade:	e8 7d 65 ff ff       	call   402060 <shmdt@plt>
  40bae3:	41 8b 7f 40          	mov    0x40(%r15),%edi
  40bae7:	31 d2                	xor    %edx,%edx
  40bae9:	31 f6                	xor    %esi,%esi
  40baeb:	e8 f0 68 ff ff       	call   4023e0 <shmctl@plt>
  40baf0:	49 8b 07             	mov    (%r15),%rax
  40baf3:	48 89 c7             	mov    %rax,%rdi
  40baf6:	ff 50 60             	call   *0x60(%rax)
  40baf9:	4c 89 ff             	mov    %r15,%rdi
  40bafc:	45 31 ff             	xor    %r15d,%r15d
  40baff:	e8 7c 66 ff ff       	call   402180 <free@plt>
  40bb04:	eb b5                	jmp    40babb <mlx_int_new_xshm_image+0x16b>
  40bb06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40bb0d:	00 00 00 
  40bb10:	48 8b 3b             	mov    (%rbx),%rdi
  40bb13:	e8 98 67 ff ff       	call   4022b0 <XFlush@plt>
  40bb18:	eb a1                	jmp    40babb <mlx_int_new_xshm_image+0x16b>
  40bb1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40bb20:	8b 43 14             	mov    0x14(%rbx),%eax
  40bb23:	48 83 ec 08          	sub    $0x8,%rsp
  40bb27:	49 8b 57 48          	mov    0x48(%r15),%rdx
  40bb2b:	4c 89 f1             	mov    %r14,%rcx
  40bb2e:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40bb32:	48 8b 3b             	mov    (%rbx),%rdi
  40bb35:	45 89 e9             	mov    %r13d,%r9d
  40bb38:	45 89 e0             	mov    %r12d,%r8d
  40bb3b:	50                   	push   %rax
  40bb3c:	e8 9f 65 ff ff       	call   4020e0 <XShmCreatePixmap@plt>
  40bb41:	41 c7 47 28 03 00 00 	movl   $0x3,0x28(%r15)
  40bb48:	00 
  40bb49:	49 89 47 08          	mov    %rax,0x8(%r15)
  40bb4d:	5a                   	pop    %rdx
  40bb4e:	59                   	pop    %rcx
  40bb4f:	e9 60 ff ff ff       	jmp    40bab4 <mlx_int_new_xshm_image+0x164>
  40bb54:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40bb5b:	00 00 00 00 
  40bb5f:	90                   	nop

000000000040bb60 <mlx_int_new_image>:
  40bb60:	f3 0f 1e fa          	endbr64 
  40bb64:	41 56                	push   %r14
  40bb66:	41 89 d6             	mov    %edx,%r14d
  40bb69:	41 55                	push   %r13
  40bb6b:	41 89 f5             	mov    %esi,%r13d
  40bb6e:	41 54                	push   %r12
  40bb70:	55                   	push   %rbp
  40bb71:	89 cd                	mov    %ecx,%ebp
  40bb73:	53                   	push   %rbx
  40bb74:	48 89 fb             	mov    %rdi,%rbx
  40bb77:	bf 58 00 00 00       	mov    $0x58,%edi
  40bb7c:	e8 8f 65 ff ff       	call   402110 <malloc@plt>
  40bb81:	49 89 c4             	mov    %rax,%r12
  40bb84:	48 85 c0             	test   %rax,%rax
  40bb87:	0f 84 ad 00 00 00    	je     40bc3a <mlx_int_new_image+0xda>
  40bb8d:	41 8d 7d 20          	lea    0x20(%r13),%edi
  40bb91:	be 01 00 00 00       	mov    $0x1,%esi
  40bb96:	41 0f af fe          	imul   %r14d,%edi
  40bb9a:	c1 e7 02             	shl    $0x2,%edi
  40bb9d:	48 63 ff             	movslq %edi,%rdi
  40bba0:	e8 7b 67 ff ff       	call   402320 <calloc@plt>
  40bba5:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  40bbaa:	49 89 c1             	mov    %rax,%r9
  40bbad:	48 85 c0             	test   %rax,%rax
  40bbb0:	0f 84 bc 00 00 00    	je     40bc72 <mlx_int_new_image+0x112>
  40bbb6:	6a 00                	push   $0x0
  40bbb8:	8b 53 14             	mov    0x14(%rbx),%edx
  40bbbb:	45 31 c0             	xor    %r8d,%r8d
  40bbbe:	89 e9                	mov    %ebp,%ecx
  40bbc0:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  40bbc4:	48 8b 3b             	mov    (%rbx),%rdi
  40bbc7:	6a 20                	push   $0x20
  40bbc9:	41 56                	push   %r14
  40bbcb:	41 55                	push   %r13
  40bbcd:	e8 ee 64 ff ff       	call   4020c0 <XCreateImage@plt>
  40bbd2:	48 83 c4 20          	add    $0x20,%rsp
  40bbd6:	49 89 04 24          	mov    %rax,(%r12)
  40bbda:	48 85 c0             	test   %rax,%rax
  40bbdd:	0f 84 85 00 00 00    	je     40bc68 <mlx_int_new_image+0x108>
  40bbe3:	48 8b 40 2c          	mov    0x2c(%rax),%rax
  40bbe7:	66 41 0f 6e ce       	movd   %r14d,%xmm1
  40bbec:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40bbf0:	44 89 f1             	mov    %r14d,%ecx
  40bbf3:	66 41 0f 6e c5       	movd   %r13d,%xmm0
  40bbf8:	44 8b 43 14          	mov    0x14(%rbx),%r8d
  40bbfc:	48 8b 3b             	mov    (%rbx),%rdi
  40bbff:	44 89 ea             	mov    %r13d,%edx
  40bc02:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
  40bc09:	00 00 
  40bc0b:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
  40bc0f:	49 89 44 24 18       	mov    %rax,0x18(%r12)
  40bc14:	66 41 0f d6 44 24 20 	movq   %xmm0,0x20(%r12)
  40bc1b:	e8 d0 67 ff ff       	call   4023f0 <XCreatePixmap@plt>
  40bc20:	41 89 6c 24 2c       	mov    %ebp,0x2c(%r12)
  40bc25:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40bc2a:	8b 43 50             	mov    0x50(%rbx),%eax
  40bc2d:	41 c7 44 24 28 01 00 	movl   $0x1,0x28(%r12)
  40bc34:	00 00 
  40bc36:	85 c0                	test   %eax,%eax
  40bc38:	75 16                	jne    40bc50 <mlx_int_new_image+0xf0>
  40bc3a:	5b                   	pop    %rbx
  40bc3b:	4c 89 e0             	mov    %r12,%rax
  40bc3e:	5d                   	pop    %rbp
  40bc3f:	41 5c                	pop    %r12
  40bc41:	41 5d                	pop    %r13
  40bc43:	41 5e                	pop    %r14
  40bc45:	c3                   	ret    
  40bc46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40bc4d:	00 00 00 
  40bc50:	48 8b 3b             	mov    (%rbx),%rdi
  40bc53:	e8 58 66 ff ff       	call   4022b0 <XFlush@plt>
  40bc58:	5b                   	pop    %rbx
  40bc59:	4c 89 e0             	mov    %r12,%rax
  40bc5c:	5d                   	pop    %rbp
  40bc5d:	41 5c                	pop    %r12
  40bc5f:	41 5d                	pop    %r13
  40bc61:	41 5e                	pop    %r14
  40bc63:	c3                   	ret    
  40bc64:	0f 1f 40 00          	nopl   0x0(%rax)
  40bc68:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  40bc6d:	e8 0e 65 ff ff       	call   402180 <free@plt>
  40bc72:	4c 89 e7             	mov    %r12,%rdi
  40bc75:	45 31 e4             	xor    %r12d,%r12d
  40bc78:	e8 03 65 ff ff       	call   402180 <free@plt>
  40bc7d:	eb bb                	jmp    40bc3a <mlx_int_new_image+0xda>
  40bc7f:	90                   	nop

000000000040bc80 <mlx_new_image>:
  40bc80:	f3 0f 1e fa          	endbr64 
  40bc84:	41 55                	push   %r13
  40bc86:	41 89 d5             	mov    %edx,%r13d
  40bc89:	41 54                	push   %r12
  40bc8b:	41 89 f4             	mov    %esi,%r12d
  40bc8e:	55                   	push   %rbp
  40bc8f:	8b 47 48             	mov    0x48(%rdi),%eax
  40bc92:	48 89 fd             	mov    %rdi,%rbp
  40bc95:	85 c0                	test   %eax,%eax
  40bc97:	74 17                	je     40bcb0 <mlx_new_image+0x30>
  40bc99:	b9 02 00 00 00       	mov    $0x2,%ecx
  40bc9e:	e8 ad fc ff ff       	call   40b950 <mlx_int_new_xshm_image>
  40bca3:	48 85 c0             	test   %rax,%rax
  40bca6:	74 08                	je     40bcb0 <mlx_new_image+0x30>
  40bca8:	5d                   	pop    %rbp
  40bca9:	41 5c                	pop    %r12
  40bcab:	41 5d                	pop    %r13
  40bcad:	c3                   	ret    
  40bcae:	66 90                	xchg   %ax,%ax
  40bcb0:	44 89 ea             	mov    %r13d,%edx
  40bcb3:	44 89 e6             	mov    %r12d,%esi
  40bcb6:	48 89 ef             	mov    %rbp,%rdi
  40bcb9:	b9 02 00 00 00       	mov    $0x2,%ecx
  40bcbe:	5d                   	pop    %rbp
  40bcbf:	41 5c                	pop    %r12
  40bcc1:	41 5d                	pop    %r13
  40bcc3:	e9 98 fe ff ff       	jmp    40bb60 <mlx_int_new_image>
  40bcc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40bccf:	00 

000000000040bcd0 <mlx_new_image2>:
  40bcd0:	f3 0f 1e fa          	endbr64 
  40bcd4:	41 55                	push   %r13
  40bcd6:	41 89 d5             	mov    %edx,%r13d
  40bcd9:	41 54                	push   %r12
  40bcdb:	41 89 f4             	mov    %esi,%r12d
  40bcde:	55                   	push   %rbp
  40bcdf:	8b 47 48             	mov    0x48(%rdi),%eax
  40bce2:	48 89 fd             	mov    %rdi,%rbp
  40bce5:	85 c0                	test   %eax,%eax
  40bce7:	74 17                	je     40bd00 <mlx_new_image2+0x30>
  40bce9:	b9 01 00 00 00       	mov    $0x1,%ecx
  40bcee:	e8 5d fc ff ff       	call   40b950 <mlx_int_new_xshm_image>
  40bcf3:	48 85 c0             	test   %rax,%rax
  40bcf6:	74 08                	je     40bd00 <mlx_new_image2+0x30>
  40bcf8:	5d                   	pop    %rbp
  40bcf9:	41 5c                	pop    %r12
  40bcfb:	41 5d                	pop    %r13
  40bcfd:	c3                   	ret    
  40bcfe:	66 90                	xchg   %ax,%ax
  40bd00:	44 89 ea             	mov    %r13d,%edx
  40bd03:	44 89 e6             	mov    %r12d,%esi
  40bd06:	48 89 ef             	mov    %rbp,%rdi
  40bd09:	b9 01 00 00 00       	mov    $0x1,%ecx
  40bd0e:	5d                   	pop    %rbp
  40bd0f:	41 5c                	pop    %r12
  40bd11:	41 5d                	pop    %r13
  40bd13:	e9 48 fe ff ff       	jmp    40bb60 <mlx_int_new_image>
  40bd18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40bd1f:	00 

000000000040bd20 <mlx_put_image_to_window>:
  40bd20:	f3 0f 1e fa          	endbr64 
  40bd24:	41 57                	push   %r15
  40bd26:	41 56                	push   %r14
  40bd28:	45 89 c6             	mov    %r8d,%r14d
  40bd2b:	41 55                	push   %r13
  40bd2d:	41 89 cd             	mov    %ecx,%r13d
  40bd30:	41 54                	push   %r12
  40bd32:	49 89 f4             	mov    %rsi,%r12
  40bd35:	55                   	push   %rbp
  40bd36:	48 89 fd             	mov    %rdi,%rbp
  40bd39:	53                   	push   %rbx
  40bd3a:	48 89 d3             	mov    %rdx,%rbx
  40bd3d:	48 83 ec 08          	sub    $0x8,%rsp
  40bd41:	4c 8b 7a 10          	mov    0x10(%rdx),%r15
  40bd45:	4d 85 ff             	test   %r15,%r15
  40bd48:	74 66                	je     40bdb0 <mlx_put_image_to_window+0x90>
  40bd4a:	48 8b 3f             	mov    (%rdi),%rdi
  40bd4d:	44 89 c1             	mov    %r8d,%ecx
  40bd50:	44 89 ea             	mov    %r13d,%edx
  40bd53:	4c 89 fe             	mov    %r15,%rsi
  40bd56:	e8 d5 66 ff ff       	call   402430 <XSetClipOrigin@plt>
  40bd5b:	8b 43 28             	mov    0x28(%rbx),%eax
  40bd5e:	83 f8 02             	cmp    $0x2,%eax
  40bd61:	74 59                	je     40bdbc <mlx_put_image_to_window+0x9c>
  40bd63:	83 f8 01             	cmp    $0x1,%eax
  40bd66:	0f 84 8d 00 00 00    	je     40bdf9 <mlx_put_image_to_window+0xd9>
  40bd6c:	8b 43 24             	mov    0x24(%rbx),%eax
  40bd6f:	41 56                	push   %r14
  40bd71:	45 31 c9             	xor    %r9d,%r9d
  40bd74:	45 31 c0             	xor    %r8d,%r8d
  40bd77:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40bd7b:	49 8b 14 24          	mov    (%r12),%rdx
  40bd7f:	41 55                	push   %r13
  40bd81:	4c 89 f9             	mov    %r15,%rcx
  40bd84:	50                   	push   %rax
  40bd85:	8b 43 20             	mov    0x20(%rbx),%eax
  40bd88:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40bd8c:	50                   	push   %rax
  40bd8d:	e8 fe 63 ff ff       	call   402190 <XCopyArea@plt>
  40bd92:	8b 45 50             	mov    0x50(%rbp),%eax
  40bd95:	48 83 c4 20          	add    $0x20,%rsp
  40bd99:	85 c0                	test   %eax,%eax
  40bd9b:	0f 85 8f 00 00 00    	jne    40be30 <mlx_put_image_to_window+0x110>
  40bda1:	48 83 c4 08          	add    $0x8,%rsp
  40bda5:	5b                   	pop    %rbx
  40bda6:	5d                   	pop    %rbp
  40bda7:	41 5c                	pop    %r12
  40bda9:	41 5d                	pop    %r13
  40bdab:	41 5e                	pop    %r14
  40bdad:	41 5f                	pop    %r15
  40bdaf:	c3                   	ret    
  40bdb0:	8b 43 28             	mov    0x28(%rbx),%eax
  40bdb3:	4c 8b 7e 08          	mov    0x8(%rsi),%r15
  40bdb7:	83 f8 02             	cmp    $0x2,%eax
  40bdba:	75 a7                	jne    40bd63 <mlx_put_image_to_window+0x43>
  40bdbc:	8b 43 24             	mov    0x24(%rbx),%eax
  40bdbf:	48 83 ec 08          	sub    $0x8,%rsp
  40bdc3:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
  40bdc8:	45 31 c9             	xor    %r9d,%r9d
  40bdcb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40bdcf:	48 8b 0b             	mov    (%rbx),%rcx
  40bdd2:	6a 00                	push   $0x0
  40bdd4:	45 31 c0             	xor    %r8d,%r8d
  40bdd7:	50                   	push   %rax
  40bdd8:	8b 43 20             	mov    0x20(%rbx),%eax
  40bddb:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40bddf:	50                   	push   %rax
  40bde0:	6a 00                	push   $0x0
  40bde2:	6a 00                	push   $0x0
  40bde4:	e8 a7 65 ff ff       	call   402390 <XShmPutImage@plt>
  40bde9:	8b 43 28             	mov    0x28(%rbx),%eax
  40bdec:	48 83 c4 30          	add    $0x30,%rsp
  40bdf0:	83 f8 01             	cmp    $0x1,%eax
  40bdf3:	0f 85 73 ff ff ff    	jne    40bd6c <mlx_put_image_to_window+0x4c>
  40bdf9:	8b 43 24             	mov    0x24(%rbx),%eax
  40bdfc:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
  40be01:	45 31 c9             	xor    %r9d,%r9d
  40be04:	45 31 c0             	xor    %r8d,%r8d
  40be07:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40be0b:	48 8b 0b             	mov    (%rbx),%rcx
  40be0e:	50                   	push   %rax
  40be0f:	8b 43 20             	mov    0x20(%rbx),%eax
  40be12:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40be16:	50                   	push   %rax
  40be17:	6a 00                	push   $0x0
  40be19:	6a 00                	push   $0x0
  40be1b:	e8 d0 64 ff ff       	call   4022f0 <XPutImage@plt>
  40be20:	48 83 c4 20          	add    $0x20,%rsp
  40be24:	e9 43 ff ff ff       	jmp    40bd6c <mlx_put_image_to_window+0x4c>
  40be29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40be30:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40be34:	48 83 c4 08          	add    $0x8,%rsp
  40be38:	5b                   	pop    %rbx
  40be39:	5d                   	pop    %rbp
  40be3a:	41 5c                	pop    %r12
  40be3c:	41 5d                	pop    %r13
  40be3e:	41 5e                	pop    %r14
  40be40:	41 5f                	pop    %r15
  40be42:	e9 69 64 ff ff       	jmp    4022b0 <XFlush@plt>
  40be47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40be4e:	00 00 

000000000040be50 <mlx_int_get_line>:
  40be50:	f3 0f 1e fa          	endbr64 
  40be54:	41 56                	push   %r14
  40be56:	41 55                	push   %r13
  40be58:	49 89 f5             	mov    %rsi,%r13
  40be5b:	41 54                	push   %r12
  40be5d:	55                   	push   %rbp
  40be5e:	48 89 fd             	mov    %rdi,%rbp
  40be61:	53                   	push   %rbx
  40be62:	48 63 3e             	movslq (%rsi),%rdi
  40be65:	89 d3                	mov    %edx,%ebx
  40be67:	48 8d 35 c3 44 00 00 	lea    0x44c3(%rip),%rsi        # 410331 <_IO_stdin_used+0x1331>
  40be6e:	29 fa                	sub    %edi,%edx
  40be70:	48 01 ef             	add    %rbp,%rdi
  40be73:	e8 a8 0b 00 00       	call   40ca20 <mlx_int_str_str>
  40be78:	83 f8 ff             	cmp    $0xffffffff,%eax
  40be7b:	74 73                	je     40bef0 <mlx_int_get_line+0xa0>
  40be7d:	41 89 c4             	mov    %eax,%r12d
  40be80:	49 63 45 00          	movslq 0x0(%r13),%rax
  40be84:	48 8d 35 a6 44 00 00 	lea    0x44a6(%rip),%rsi        # 410331 <_IO_stdin_used+0x1331>
  40be8b:	4d 63 f4             	movslq %r12d,%r14
  40be8e:	29 c3                	sub    %eax,%ebx
  40be90:	49 8d 7c 06 01       	lea    0x1(%r14,%rax,1),%rdi
  40be95:	44 29 e3             	sub    %r12d,%ebx
  40be98:	48 01 ef             	add    %rbp,%rdi
  40be9b:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40be9e:	e8 7d 0b 00 00       	call   40ca20 <mlx_int_str_str>
  40bea3:	83 f8 ff             	cmp    $0xffffffff,%eax
  40bea6:	74 48                	je     40bef0 <mlx_int_get_line+0xa0>
  40bea8:	49 63 55 00          	movslq 0x0(%r13),%rdx
  40beac:	49 01 ee             	add    %rbp,%r14
  40beaf:	41 c6 04 16 00       	movb   $0x0,(%r14,%rdx,1)
  40beb4:	49 63 4d 00          	movslq 0x0(%r13),%rcx
  40beb8:	48 63 d0             	movslq %eax,%rdx
  40bebb:	41 8d 44 04 02       	lea    0x2(%r12,%rax,1),%eax
  40bec0:	49 01 ce             	add    %rcx,%r14
  40bec3:	42 c6 44 32 01 00    	movb   $0x0,0x1(%rdx,%r14,1)
  40bec9:	41 8b 55 00          	mov    0x0(%r13),%edx
  40becd:	5b                   	pop    %rbx
  40bece:	01 d0                	add    %edx,%eax
  40bed0:	41 89 45 00          	mov    %eax,0x0(%r13)
  40bed4:	42 8d 44 22 01       	lea    0x1(%rdx,%r12,1),%eax
  40bed9:	48 98                	cltq   
  40bedb:	48 01 e8             	add    %rbp,%rax
  40bede:	5d                   	pop    %rbp
  40bedf:	41 5c                	pop    %r12
  40bee1:	41 5d                	pop    %r13
  40bee3:	41 5e                	pop    %r14
  40bee5:	c3                   	ret    
  40bee6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40beed:	00 00 00 
  40bef0:	5b                   	pop    %rbx
  40bef1:	31 c0                	xor    %eax,%eax
  40bef3:	5d                   	pop    %rbp
  40bef4:	41 5c                	pop    %r12
  40bef6:	41 5d                	pop    %r13
  40bef8:	41 5e                	pop    %r14
  40befa:	c3                   	ret    
  40befb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040bf00 <mlx_int_static_line>:
  40bf00:	f3 0f 1e fa          	endbr64 
  40bf04:	55                   	push   %rbp
  40bf05:	53                   	push   %rbx
  40bf06:	48 83 ec 08          	sub    $0x8,%rsp
  40bf0a:	48 63 06             	movslq (%rsi),%rax
  40bf0d:	8d 50 01             	lea    0x1(%rax),%edx
  40bf10:	48 8b 1c c7          	mov    (%rdi,%rax,8),%rbx
  40bf14:	89 16                	mov    %edx,(%rsi)
  40bf16:	48 89 df             	mov    %rbx,%rdi
  40bf19:	e8 82 62 ff ff       	call   4021a0 <strlen@plt>
  40bf1e:	39 05 ac d3 00 00    	cmp    %eax,0xd3ac(%rip)        # 4192d0 <len.1>
  40bf24:	4c 8b 05 9d d3 00 00 	mov    0xd39d(%rip),%r8        # 4192c8 <copy.0>
  40bf2b:	48 89 c5             	mov    %rax,%rbp
  40bf2e:	7d 2d                	jge    40bf5d <mlx_int_static_line+0x5d>
  40bf30:	4d 85 c0             	test   %r8,%r8
  40bf33:	74 08                	je     40bf3d <mlx_int_static_line+0x3d>
  40bf35:	4c 89 c7             	mov    %r8,%rdi
  40bf38:	e8 43 62 ff ff       	call   402180 <free@plt>
  40bf3d:	8d 7d 01             	lea    0x1(%rbp),%edi
  40bf40:	48 63 ff             	movslq %edi,%rdi
  40bf43:	e8 c8 61 ff ff       	call   402110 <malloc@plt>
  40bf48:	48 89 05 79 d3 00 00 	mov    %rax,0xd379(%rip)        # 4192c8 <copy.0>
  40bf4f:	49 89 c0             	mov    %rax,%r8
  40bf52:	48 85 c0             	test   %rax,%rax
  40bf55:	74 5e                	je     40bfb5 <mlx_int_static_line+0xb5>
  40bf57:	89 2d 73 d3 00 00    	mov    %ebp,0xd373(%rip)        # 4192d0 <len.1>
  40bf5d:	0f b6 0b             	movzbl (%rbx),%ecx
  40bf60:	84 c9                	test   %cl,%cl
  40bf62:	74 5c                	je     40bfc0 <mlx_int_static_line+0xc0>
  40bf64:	31 c0                	xor    %eax,%eax
  40bf66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40bf6d:	00 00 00 
  40bf70:	8d 50 01             	lea    0x1(%rax),%edx
  40bf73:	80 3c 13 00          	cmpb   $0x0,(%rbx,%rdx,1)
  40bf77:	48 89 d0             	mov    %rdx,%rax
  40bf7a:	75 f4                	jne    40bf70 <mlx_int_static_line+0x70>
  40bf7c:	83 fd 01             	cmp    $0x1,%ebp
  40bf7f:	74 3f                	je     40bfc0 <mlx_int_static_line+0xc0>
  40bf81:	8d 75 fe             	lea    -0x2(%rbp),%esi
  40bf84:	49 8d 40 01          	lea    0x1(%r8),%rax
  40bf88:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40bf8c:	49 8d 7c 30 02       	lea    0x2(%r8,%rsi,1),%rdi
  40bf91:	eb 12                	jmp    40bfa5 <mlx_int_static_line+0xa5>
  40bf93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bf98:	48 83 c0 01          	add    $0x1,%rax
  40bf9c:	48 83 c2 01          	add    $0x1,%rdx
  40bfa0:	48 39 c7             	cmp    %rax,%rdi
  40bfa3:	74 0d                	je     40bfb2 <mlx_int_static_line+0xb2>
  40bfa5:	88 48 ff             	mov    %cl,-0x1(%rax)
  40bfa8:	0f b6 0a             	movzbl (%rdx),%ecx
  40bfab:	48 89 c6             	mov    %rax,%rsi
  40bfae:	84 c9                	test   %cl,%cl
  40bfb0:	75 e6                	jne    40bf98 <mlx_int_static_line+0x98>
  40bfb2:	c6 06 00             	movb   $0x0,(%rsi)
  40bfb5:	48 83 c4 08          	add    $0x8,%rsp
  40bfb9:	4c 89 c0             	mov    %r8,%rax
  40bfbc:	5b                   	pop    %rbx
  40bfbd:	5d                   	pop    %rbp
  40bfbe:	c3                   	ret    
  40bfbf:	90                   	nop
  40bfc0:	4c 89 c6             	mov    %r8,%rsi
  40bfc3:	eb ed                	jmp    40bfb2 <mlx_int_static_line+0xb2>
  40bfc5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40bfcc:	00 00 00 00 

000000000040bfd0 <strlcpy_is_not_posix>:
  40bfd0:	f3 0f 1e fa          	endbr64 
  40bfd4:	89 d1                	mov    %edx,%ecx
  40bfd6:	0f b6 16             	movzbl (%rsi),%edx
  40bfd9:	45 31 c0             	xor    %r8d,%r8d
  40bfdc:	84 d2                	test   %dl,%dl
  40bfde:	74 42                	je     40c022 <strlcpy_is_not_posix+0x52>
  40bfe0:	41 8d 40 01          	lea    0x1(%r8),%eax
  40bfe4:	80 3c 06 00          	cmpb   $0x0,(%rsi,%rax,1)
  40bfe8:	49 89 c0             	mov    %rax,%r8
  40bfeb:	75 f3                	jne    40bfe0 <strlcpy_is_not_posix+0x10>
  40bfed:	83 f9 01             	cmp    $0x1,%ecx
  40bff0:	74 30                	je     40c022 <strlcpy_is_not_posix+0x52>
  40bff2:	83 e9 02             	sub    $0x2,%ecx
  40bff5:	48 8d 47 01          	lea    0x1(%rdi),%rax
  40bff9:	48 83 c6 01          	add    $0x1,%rsi
  40bffd:	48 8d 4c 0f 02       	lea    0x2(%rdi,%rcx,1),%rcx
  40c002:	eb 11                	jmp    40c015 <strlcpy_is_not_posix+0x45>
  40c004:	0f 1f 40 00          	nopl   0x0(%rax)
  40c008:	48 83 c0 01          	add    $0x1,%rax
  40c00c:	48 83 c6 01          	add    $0x1,%rsi
  40c010:	48 39 c8             	cmp    %rcx,%rax
  40c013:	74 0d                	je     40c022 <strlcpy_is_not_posix+0x52>
  40c015:	88 50 ff             	mov    %dl,-0x1(%rax)
  40c018:	0f b6 16             	movzbl (%rsi),%edx
  40c01b:	48 89 c7             	mov    %rax,%rdi
  40c01e:	84 d2                	test   %dl,%dl
  40c020:	75 e6                	jne    40c008 <strlcpy_is_not_posix+0x38>
  40c022:	c6 07 00             	movb   $0x0,(%rdi)
  40c025:	44 89 c0             	mov    %r8d,%eax
  40c028:	c3                   	ret    
  40c029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040c030 <mlx_int_get_col_name>:
  40c030:	f3 0f 1e fa          	endbr64 
  40c034:	85 f6                	test   %esi,%esi
  40c036:	74 20                	je     40c058 <mlx_int_get_col_name+0x28>
  40c038:	89 f6                	mov    %esi,%esi
  40c03a:	31 c0                	xor    %eax,%eax
  40c03c:	48 8d 0c 37          	lea    (%rdi,%rsi,1),%rcx
  40c040:	0f be 17             	movsbl (%rdi),%edx
  40c043:	c1 e0 08             	shl    $0x8,%eax
  40c046:	48 83 c7 01          	add    $0x1,%rdi
  40c04a:	01 d0                	add    %edx,%eax
  40c04c:	48 39 f9             	cmp    %rdi,%rcx
  40c04f:	75 ef                	jne    40c040 <mlx_int_get_col_name+0x10>
  40c051:	c3                   	ret    
  40c052:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c058:	31 c0                	xor    %eax,%eax
  40c05a:	c3                   	ret    
  40c05b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040c060 <mlx_int_get_text_rgb>:
  40c060:	f3 0f 1e fa          	endbr64 
  40c064:	41 54                	push   %r12
  40c066:	49 89 fc             	mov    %rdi,%r12
  40c069:	55                   	push   %rbp
  40c06a:	53                   	push   %rbx
  40c06b:	48 83 ec 50          	sub    $0x50,%rsp
  40c06f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40c076:	00 00 
  40c078:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40c07d:	31 c0                	xor    %eax,%eax
  40c07f:	80 3f 23             	cmpb   $0x23,(%rdi)
  40c082:	0f 84 a0 00 00 00    	je     40c128 <mlx_int_get_text_rgb+0xc8>
  40c088:	48 85 f6             	test   %rsi,%rsi
  40c08b:	74 31                	je     40c0be <mlx_int_get_text_rgb+0x5e>
  40c08d:	48 89 e3             	mov    %rsp,%rbx
  40c090:	48 83 ec 08          	sub    $0x8,%rsp
  40c094:	49 89 f9             	mov    %rdi,%r9
  40c097:	b9 40 00 00 00       	mov    $0x40,%ecx
  40c09c:	56                   	push   %rsi
  40c09d:	4c 8d 05 8f 42 00 00 	lea    0x428f(%rip),%r8        # 410333 <_IO_stdin_used+0x1333>
  40c0a4:	ba 01 00 00 00       	mov    $0x1,%edx
  40c0a9:	48 89 df             	mov    %rbx,%rdi
  40c0ac:	be 40 00 00 00       	mov    $0x40,%esi
  40c0b1:	31 c0                	xor    %eax,%eax
  40c0b3:	49 89 dc             	mov    %rbx,%r12
  40c0b6:	e8 05 63 ff ff       	call   4023c0 <__snprintf_chk@plt>
  40c0bb:	48 89 dc             	mov    %rbx,%rsp
  40c0be:	48 8b 3d db a2 00 00 	mov    0xa2db(%rip),%rdi        # 4163a0 <mlx_col_name>
  40c0c5:	48 85 ff             	test   %rdi,%rdi
  40c0c8:	74 56                	je     40c120 <mlx_int_get_text_rgb+0xc0>
  40c0ca:	48 8d 1d df a2 00 00 	lea    0xa2df(%rip),%rbx        # 4163b0 <mlx_col_name+0x10>
  40c0d1:	31 ed                	xor    %ebp,%ebp
  40c0d3:	eb 12                	jmp    40c0e7 <mlx_int_get_text_rgb+0x87>
  40c0d5:	0f 1f 00             	nopl   (%rax)
  40c0d8:	48 8b 3b             	mov    (%rbx),%rdi
  40c0db:	48 83 c3 10          	add    $0x10,%rbx
  40c0df:	83 c5 01             	add    $0x1,%ebp
  40c0e2:	48 85 ff             	test   %rdi,%rdi
  40c0e5:	74 39                	je     40c120 <mlx_int_get_text_rgb+0xc0>
  40c0e7:	4c 89 e6             	mov    %r12,%rsi
  40c0ea:	e8 e1 5f ff ff       	call   4020d0 <strcasecmp@plt>
  40c0ef:	85 c0                	test   %eax,%eax
  40c0f1:	75 e5                	jne    40c0d8 <mlx_int_get_text_rgb+0x78>
  40c0f3:	48 63 ed             	movslq %ebp,%rbp
  40c0f6:	48 8d 05 a3 a2 00 00 	lea    0xa2a3(%rip),%rax        # 4163a0 <mlx_col_name>
  40c0fd:	48 c1 e5 04          	shl    $0x4,%rbp
  40c101:	8b 44 28 08          	mov    0x8(%rax,%rbp,1),%eax
  40c105:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  40c10a:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  40c111:	00 00 
  40c113:	75 25                	jne    40c13a <mlx_int_get_text_rgb+0xda>
  40c115:	48 83 c4 50          	add    $0x50,%rsp
  40c119:	5b                   	pop    %rbx
  40c11a:	5d                   	pop    %rbp
  40c11b:	41 5c                	pop    %r12
  40c11d:	c3                   	ret    
  40c11e:	66 90                	xchg   %ax,%ax
  40c120:	31 c0                	xor    %eax,%eax
  40c122:	eb e1                	jmp    40c105 <mlx_int_get_text_rgb+0xa5>
  40c124:	0f 1f 40 00          	nopl   0x0(%rax)
  40c128:	48 8d 7f 01          	lea    0x1(%rdi),%rdi
  40c12c:	ba 10 00 00 00       	mov    $0x10,%edx
  40c131:	31 f6                	xor    %esi,%esi
  40c133:	e8 18 61 ff ff       	call   402250 <strtol@plt>
  40c138:	eb cb                	jmp    40c105 <mlx_int_get_text_rgb+0xa5>
  40c13a:	e8 91 61 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40c13f:	90                   	nop

000000000040c140 <mlx_int_xpm_set_pixel>:
  40c140:	f3 0f 1e fa          	endbr64 
  40c144:	49 89 f9             	mov    %rdi,%r9
  40c147:	49 89 f2             	mov    %rsi,%r10
  40c14a:	85 d2                	test   %edx,%edx
  40c14c:	74 58                	je     40c1a6 <mlx_int_xpm_set_pixel+0x66>
  40c14e:	44 0f af c2          	imul   %edx,%r8d
  40c152:	48 63 fa             	movslq %edx,%rdi
  40c155:	83 ea 01             	sub    $0x1,%edx
  40c158:	49 63 f0             	movslq %r8d,%rsi
  40c15b:	4c 8d 44 3e ff       	lea    -0x1(%rsi,%rdi,1),%r8
  40c160:	49 8d 7c 3a fe       	lea    -0x2(%r10,%rdi,1),%rdi
  40c165:	48 01 f7             	add    %rsi,%rdi
  40c168:	4b 8d 04 02          	lea    (%r10,%r8,1),%rax
  40c16c:	4c 01 c6             	add    %r8,%rsi
  40c16f:	48 29 d7             	sub    %rdx,%rdi
  40c172:	eb 12                	jmp    40c186 <mlx_int_xpm_set_pixel+0x46>
  40c174:	0f 1f 40 00          	nopl   0x0(%rax)
  40c178:	88 08                	mov    %cl,(%rax)
  40c17a:	48 83 e8 01          	sub    $0x1,%rax
  40c17e:	c1 f9 08             	sar    $0x8,%ecx
  40c181:	48 39 f8             	cmp    %rdi,%rax
  40c184:	74 20                	je     40c1a6 <mlx_int_xpm_set_pixel+0x66>
  40c186:	49 8b 11             	mov    (%r9),%rdx
  40c189:	8b 52 18             	mov    0x18(%rdx),%edx
  40c18c:	85 d2                	test   %edx,%edx
  40c18e:	75 e8                	jne    40c178 <mlx_int_xpm_set_pixel+0x38>
  40c190:	48 89 f2             	mov    %rsi,%rdx
  40c193:	48 29 c2             	sub    %rax,%rdx
  40c196:	48 83 e8 01          	sub    $0x1,%rax
  40c19a:	42 88 0c 52          	mov    %cl,(%rdx,%r10,2)
  40c19e:	c1 f9 08             	sar    $0x8,%ecx
  40c1a1:	48 39 f8             	cmp    %rdi,%rax
  40c1a4:	75 e0                	jne    40c186 <mlx_int_xpm_set_pixel+0x46>
  40c1a6:	31 c0                	xor    %eax,%eax
  40c1a8:	c3                   	ret    
  40c1a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040c1b0 <mlx_int_parse_xpm>:
  40c1b0:	f3 0f 1e fa          	endbr64 
  40c1b4:	41 57                	push   %r15
  40c1b6:	41 56                	push   %r14
  40c1b8:	41 55                	push   %r13
  40c1ba:	41 54                	push   %r12
  40c1bc:	55                   	push   %rbp
  40c1bd:	53                   	push   %rbx
  40c1be:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  40c1c5:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  40c1ca:	48 89 f7             	mov    %rsi,%rdi
  40c1cd:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40c1d2:	89 54 24 50          	mov    %edx,0x50(%rsp)
  40c1d6:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  40c1db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40c1e2:	00 00 
  40c1e4:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  40c1eb:	00 
  40c1ec:	31 c0                	xor    %eax,%eax
  40c1ee:	48 8d 44 24 7c       	lea    0x7c(%rsp),%rax
  40c1f3:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
  40c1fa:	00 
  40c1fb:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40c200:	48 89 c6             	mov    %rax,%rsi
  40c203:	31 c0                	xor    %eax,%eax
  40c205:	ff d1                	call   *%rcx
  40c207:	48 85 c0             	test   %rax,%rax
  40c20a:	0f 84 c0 01 00 00    	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c210:	48 89 c7             	mov    %rax,%rdi
  40c213:	31 c0                	xor    %eax,%eax
  40c215:	e8 06 09 00 00       	call   40cb20 <mlx_int_str_to_wordtab>
  40c21a:	48 89 c5             	mov    %rax,%rbp
  40c21d:	48 85 c0             	test   %rax,%rax
  40c220:	0f 84 aa 01 00 00    	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c226:	48 8b 38             	mov    (%rax),%rdi
  40c229:	ba 0a 00 00 00       	mov    $0xa,%edx
  40c22e:	31 f6                	xor    %esi,%esi
  40c230:	e8 1b 60 ff ff       	call   402250 <strtol@plt>
  40c235:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  40c23a:	89 04 24             	mov    %eax,(%rsp)
  40c23d:	85 c0                	test   %eax,%eax
  40c23f:	0f 84 93 01 00 00    	je     40c3d8 <mlx_int_parse_xpm+0x228>
  40c245:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  40c249:	ba 0a 00 00 00       	mov    $0xa,%edx
  40c24e:	31 f6                	xor    %esi,%esi
  40c250:	e8 fb 5f ff ff       	call   402250 <strtol@plt>
  40c255:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  40c25a:	85 c0                	test   %eax,%eax
  40c25c:	0f 84 76 01 00 00    	je     40c3d8 <mlx_int_parse_xpm+0x228>
  40c262:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  40c266:	ba 0a 00 00 00       	mov    $0xa,%edx
  40c26b:	31 f6                	xor    %esi,%esi
  40c26d:	e8 de 5f ff ff       	call   402250 <strtol@plt>
  40c272:	89 44 24 54          	mov    %eax,0x54(%rsp)
  40c276:	48 89 c3             	mov    %rax,%rbx
  40c279:	85 c0                	test   %eax,%eax
  40c27b:	0f 84 57 01 00 00    	je     40c3d8 <mlx_int_parse_xpm+0x228>
  40c281:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  40c285:	ba 0a 00 00 00       	mov    $0xa,%edx
  40c28a:	31 f6                	xor    %esi,%esi
  40c28c:	e8 bf 5f ff ff       	call   402250 <strtol@plt>
  40c291:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40c295:	49 89 c4             	mov    %rax,%r12
  40c298:	85 c0                	test   %eax,%eax
  40c29a:	0f 84 38 01 00 00    	je     40c3d8 <mlx_int_parse_xpm+0x228>
  40c2a0:	48 89 ef             	mov    %rbp,%rdi
  40c2a3:	e8 d8 5e ff ff       	call   402180 <free@plt>
  40c2a8:	41 83 fc 02          	cmp    $0x2,%r12d
  40c2ac:	0f 8f 7c 04 00 00    	jg     40c72e <mlx_int_parse_xpm+0x57e>
  40c2b2:	b8 00 04 00 00       	mov    $0x400,%eax
  40c2b7:	bf 00 00 04 00       	mov    $0x40000,%edi
  40c2bc:	48 0f 45 f8          	cmovne %rax,%rdi
  40c2c0:	e8 4b 5e ff ff       	call   402110 <malloc@plt>
  40c2c5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40c2ca:	48 85 c0             	test   %rax,%rax
  40c2cd:	0f 84 fd 00 00 00    	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c2d3:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  40c2da:	00 00 
  40c2dc:	48 63 eb             	movslq %ebx,%rbp
  40c2df:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  40c2e6:	00 
  40c2e7:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  40c2ec:	83 eb 01             	sub    $0x1,%ebx
  40c2ef:	48 8d 14 ed f0 ff ff 	lea    -0x10(,%rbp,8),%rdx
  40c2f6:	ff 
  40c2f7:	48 63 c3             	movslq %ebx,%rax
  40c2fa:	89 db                	mov    %ebx,%ebx
  40c2fc:	4c 8d 2c c7          	lea    (%rdi,%rax,8),%r13
  40c300:	48 8d 04 dd 00 00 00 	lea    0x0(,%rbx,8),%rax
  40c307:	00 
  40c308:	48 29 c2             	sub    %rax,%rdx
  40c30b:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
  40c310:	48 01 fa             	add    %rdi,%rdx
  40c313:	48 83 c0 01          	add    $0x1,%rax
  40c317:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  40c31c:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  40c321:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c328:	8b 54 24 50          	mov    0x50(%rsp),%edx
  40c32c:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  40c331:	31 c0                	xor    %eax,%eax
  40c333:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40c338:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  40c33d:	ff d3                	call   *%rbx
  40c33f:	49 89 c7             	mov    %rax,%r15
  40c342:	48 85 c0             	test   %rax,%rax
  40c345:	0f 84 b3 03 00 00    	je     40c6fe <mlx_int_parse_xpm+0x54e>
  40c34b:	48 63 44 24 04       	movslq 0x4(%rsp),%rax
  40c350:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40c355:	49 8d 3c 07          	lea    (%r15,%rax,1),%rdi
  40c359:	31 c0                	xor    %eax,%eax
  40c35b:	e8 c0 07 00 00       	call   40cb20 <mlx_int_str_to_wordtab>
  40c360:	49 89 c4             	mov    %rax,%r12
  40c363:	48 85 c0             	test   %rax,%rax
  40c366:	0f 84 92 03 00 00    	je     40c6fe <mlx_int_parse_xpm+0x54e>
  40c36c:	ba 01 00 00 00       	mov    $0x1,%edx
  40c371:	eb 20                	jmp    40c393 <mlx_int_parse_xpm+0x1e3>
  40c373:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c378:	0f b6 01             	movzbl (%rcx),%eax
  40c37b:	48 63 f2             	movslq %edx,%rsi
  40c37e:	83 e8 63             	sub    $0x63,%eax
  40c381:	75 04                	jne    40c387 <mlx_int_parse_xpm+0x1d7>
  40c383:	0f b6 41 01          	movzbl 0x1(%rcx),%eax
  40c387:	48 83 c2 01          	add    $0x1,%rdx
  40c38b:	85 c0                	test   %eax,%eax
  40c38d:	0f 84 7d 00 00 00    	je     40c410 <mlx_int_parse_xpm+0x260>
  40c393:	49 8b 4c d4 f8       	mov    -0x8(%r12,%rdx,8),%rcx
  40c398:	48 85 c9             	test   %rcx,%rcx
  40c39b:	75 db                	jne    40c378 <mlx_int_parse_xpm+0x1c8>
  40c39d:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40c3a2:	48 85 c0             	test   %rax,%rax
  40c3a5:	74 08                	je     40c3af <mlx_int_parse_xpm+0x1ff>
  40c3a7:	48 89 c7             	mov    %rax,%rdi
  40c3aa:	e8 d1 5d ff ff       	call   402180 <free@plt>
  40c3af:	4c 89 e7             	mov    %r12,%rdi
  40c3b2:	e8 c9 5d ff ff       	call   402180 <free@plt>
  40c3b7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40c3bc:	48 85 ff             	test   %rdi,%rdi
  40c3bf:	74 0f                	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c3c1:	e8 ba 5d ff ff       	call   402180 <free@plt>
  40c3c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40c3cd:	00 00 00 
  40c3d0:	45 31 e4             	xor    %r12d,%r12d
  40c3d3:	eb 0e                	jmp    40c3e3 <mlx_int_parse_xpm+0x233>
  40c3d5:	0f 1f 00             	nopl   (%rax)
  40c3d8:	48 89 ef             	mov    %rbp,%rdi
  40c3db:	45 31 e4             	xor    %r12d,%r12d
  40c3de:	e8 9d 5d ff ff       	call   402180 <free@plt>
  40c3e3:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
  40c3ea:	00 
  40c3eb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40c3f2:	00 00 
  40c3f4:	0f 85 35 04 00 00    	jne    40c82f <mlx_int_parse_xpm+0x67f>
  40c3fa:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  40c401:	4c 89 e0             	mov    %r12,%rax
  40c404:	5b                   	pop    %rbx
  40c405:	5d                   	pop    %rbp
  40c406:	41 5c                	pop    %r12
  40c408:	41 5d                	pop    %r13
  40c40a:	41 5e                	pop    %r14
  40c40c:	41 5f                	pop    %r15
  40c40e:	c3                   	ret    
  40c40f:	90                   	nop
  40c410:	49 8b 1c f4          	mov    (%r12,%rsi,8),%rbx
  40c414:	48 8d 04 f5 00 00 00 	lea    0x0(,%rsi,8),%rax
  40c41b:	00 
  40c41c:	48 85 db             	test   %rbx,%rbx
  40c41f:	0f 84 78 ff ff ff    	je     40c39d <mlx_int_parse_xpm+0x1ed>
  40c425:	80 3b 23             	cmpb   $0x23,(%rbx)
  40c428:	49 8b 44 04 08       	mov    0x8(%r12,%rax,1),%rax
  40c42d:	0f 84 b4 02 00 00    	je     40c6e7 <mlx_int_parse_xpm+0x537>
  40c433:	48 85 c0             	test   %rax,%rax
  40c436:	74 37                	je     40c46f <mlx_int_parse_xpm+0x2bf>
  40c438:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40c43f:	00 
  40c440:	48 83 ec 08          	sub    $0x8,%rsp
  40c444:	49 89 d9             	mov    %rbx,%r9
  40c447:	b9 40 00 00 00       	mov    $0x40,%ecx
  40c44c:	50                   	push   %rax
  40c44d:	4c 8d 05 df 3e 00 00 	lea    0x3edf(%rip),%r8        # 410333 <_IO_stdin_used+0x1333>
  40c454:	ba 01 00 00 00       	mov    $0x1,%edx
  40c459:	48 89 ef             	mov    %rbp,%rdi
  40c45c:	be 40 00 00 00       	mov    $0x40,%esi
  40c461:	31 c0                	xor    %eax,%eax
  40c463:	48 89 eb             	mov    %rbp,%rbx
  40c466:	e8 55 5f ff ff       	call   4023c0 <__snprintf_chk@plt>
  40c46b:	41 58                	pop    %r8
  40c46d:	41 59                	pop    %r9
  40c46f:	48 8d 05 2a 9f 00 00 	lea    0x9f2a(%rip),%rax        # 4163a0 <mlx_col_name>
  40c476:	48 8b 38             	mov    (%rax),%rdi
  40c479:	48 85 ff             	test   %rdi,%rdi
  40c47c:	0f 84 5e 02 00 00    	je     40c6e0 <mlx_int_parse_xpm+0x530>
  40c482:	4c 8d 70 10          	lea    0x10(%rax),%r14
  40c486:	31 ed                	xor    %ebp,%ebp
  40c488:	eb 19                	jmp    40c4a3 <mlx_int_parse_xpm+0x2f3>
  40c48a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c490:	49 8b 3e             	mov    (%r14),%rdi
  40c493:	49 83 c6 10          	add    $0x10,%r14
  40c497:	83 c5 01             	add    $0x1,%ebp
  40c49a:	48 85 ff             	test   %rdi,%rdi
  40c49d:	0f 84 3d 02 00 00    	je     40c6e0 <mlx_int_parse_xpm+0x530>
  40c4a3:	48 89 de             	mov    %rbx,%rsi
  40c4a6:	e8 25 5c ff ff       	call   4020d0 <strcasecmp@plt>
  40c4ab:	85 c0                	test   %eax,%eax
  40c4ad:	75 e1                	jne    40c490 <mlx_int_parse_xpm+0x2e0>
  40c4af:	48 63 ed             	movslq %ebp,%rbp
  40c4b2:	48 8d 05 e7 9e 00 00 	lea    0x9ee7(%rip),%rax        # 4163a0 <mlx_col_name>
  40c4b9:	48 c1 e5 04          	shl    $0x4,%rbp
  40c4bd:	8b 4c 28 08          	mov    0x8(%rax,%rbp,1),%ecx
  40c4c1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40c4c5:	8b 7c 24 28          	mov    0x28(%rsp),%edi
  40c4c9:	8d 68 ff             	lea    -0x1(%rax),%ebp
  40c4cc:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  40c4d1:	49 8d 34 07          	lea    (%r15,%rax,1),%rsi
  40c4d5:	31 c0                	xor    %eax,%eax
  40c4d7:	85 ff                	test   %edi,%edi
  40c4d9:	74 25                	je     40c500 <mlx_int_parse_xpm+0x350>
  40c4db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c4e0:	41 0f be 17          	movsbl (%r15),%edx
  40c4e4:	c1 e0 08             	shl    $0x8,%eax
  40c4e7:	49 83 c7 01          	add    $0x1,%r15
  40c4eb:	01 d0                	add    %edx,%eax
  40c4ed:	49 39 f7             	cmp    %rsi,%r15
  40c4f0:	75 ee                	jne    40c4e0 <mlx_int_parse_xpm+0x330>
  40c4f2:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40c4f7:	48 98                	cltq   
  40c4f9:	89 0c 83             	mov    %ecx,(%rbx,%rax,4)
  40c4fc:	eb 26                	jmp    40c524 <mlx_int_parse_xpm+0x374>
  40c4fe:	66 90                	xchg   %ax,%ax
  40c500:	41 0f be 17          	movsbl (%r15),%edx
  40c504:	c1 e0 08             	shl    $0x8,%eax
  40c507:	49 83 c7 01          	add    $0x1,%r15
  40c50b:	01 d0                	add    %edx,%eax
  40c50d:	49 39 f7             	cmp    %rsi,%r15
  40c510:	75 ee                	jne    40c500 <mlx_int_parse_xpm+0x350>
  40c512:	66 0f 6e c0          	movd   %eax,%xmm0
  40c516:	66 0f 6e c9          	movd   %ecx,%xmm1
  40c51a:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
  40c51e:	66 41 0f d6 45 00    	movq   %xmm0,0x0(%r13)
  40c524:	4c 89 e7             	mov    %r12,%rdi
  40c527:	49 83 ed 08          	sub    $0x8,%r13
  40c52b:	e8 50 5c ff ff       	call   402180 <free@plt>
  40c530:	4c 3b 6c 24 38       	cmp    0x38(%rsp),%r13
  40c535:	0f 85 ed fd ff ff    	jne    40c328 <mlx_int_parse_xpm+0x178>
  40c53b:	8b 54 24 68          	mov    0x68(%rsp),%edx
  40c53f:	8b 74 24 60          	mov    0x60(%rsp),%esi
  40c543:	31 c0                	xor    %eax,%eax
  40c545:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  40c54a:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
  40c54f:	89 6c 24 48          	mov    %ebp,0x48(%rsp)
  40c553:	e8 28 f7 ff ff       	call   40bc80 <mlx_new_image>
  40c558:	49 89 c4             	mov    %rax,%r12
  40c55b:	48 85 c0             	test   %rax,%rax
  40c55e:	0f 84 a6 02 00 00    	je     40c80a <mlx_int_parse_xpm+0x65a>
  40c564:	8b 40 1c             	mov    0x1c(%rax),%eax
  40c567:	44 8b 74 24 28       	mov    0x28(%rsp),%r14d
  40c56c:	49 8b 6c 24 30       	mov    0x30(%r12),%rbp
  40c571:	85 c0                	test   %eax,%eax
  40c573:	44 8d 68 07          	lea    0x7(%rax),%r13d
  40c577:	44 0f 49 e8          	cmovns %eax,%r13d
  40c57b:	8b 44 24 68          	mov    0x68(%rsp),%eax
  40c57f:	41 c1 fd 03          	sar    $0x3,%r13d
  40c583:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40c587:	4d 63 dd             	movslq %r13d,%r11
  40c58a:	49 8d 43 fe          	lea    -0x2(%r11),%rax
  40c58e:	4c 89 5c 24 28       	mov    %r11,0x28(%rsp)
  40c593:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  40c598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40c59f:	00 
  40c5a0:	31 c0                	xor    %eax,%eax
  40c5a2:	8b 54 24 50          	mov    0x50(%rsp),%edx
  40c5a6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  40c5ab:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40c5b0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40c5b5:	ff d1                	call   *%rcx
  40c5b7:	48 85 c0             	test   %rax,%rax
  40c5ba:	0f 84 02 02 00 00    	je     40c7c2 <mlx_int_parse_xpm+0x612>
  40c5c0:	8b 34 24             	mov    (%rsp),%esi
  40c5c3:	85 f6                	test   %esi,%esi
  40c5c5:	0f 8e d5 00 00 00    	jle    40c6a0 <mlx_int_parse_xpm+0x4f0>
  40c5cb:	44 8b 4c 24 48       	mov    0x48(%rsp),%r9d
  40c5d0:	4c 8b 54 24 60       	mov    0x60(%rsp),%r10
  40c5d5:	31 ff                	xor    %edi,%edi
  40c5d7:	45 31 c0             	xor    %r8d,%r8d
  40c5da:	4a 8d 74 08 01       	lea    0x1(%rax,%r9,1),%rsi
  40c5df:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40c5e4:	49 f7 d1             	not    %r9
  40c5e7:	48 83 e8 08          	sub    $0x8,%rax
  40c5eb:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40c5f0:	41 8d 45 ff          	lea    -0x1(%r13),%eax
  40c5f4:	49 29 c2             	sub    %rax,%r10
  40c5f7:	49 01 ea             	add    %rbp,%r10
  40c5fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c600:	49 8d 14 31          	lea    (%r9,%rsi,1),%rdx
  40c604:	31 c0                	xor    %eax,%eax
  40c606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40c60d:	00 00 00 
  40c610:	0f be 0a             	movsbl (%rdx),%ecx
  40c613:	c1 e0 08             	shl    $0x8,%eax
  40c616:	48 83 c2 01          	add    $0x1,%rdx
  40c61a:	01 c8                	add    %ecx,%eax
  40c61c:	48 39 f2             	cmp    %rsi,%rdx
  40c61f:	75 ef                	jne    40c610 <mlx_int_parse_xpm+0x460>
  40c621:	45 85 f6             	test   %r14d,%r14d
  40c624:	0f 84 3e 01 00 00    	je     40c768 <mlx_int_parse_xpm+0x5b8>
  40c62a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40c62f:	48 98                	cltq   
  40c631:	8b 14 82             	mov    (%rdx,%rax,4),%edx
  40c634:	83 fa ff             	cmp    $0xffffffff,%edx
  40c637:	b8 00 00 00 ff       	mov    $0xff000000,%eax
  40c63c:	0f 44 d0             	cmove  %eax,%edx
  40c63f:	45 85 ed             	test   %r13d,%r13d
  40c642:	74 4a                	je     40c68e <mlx_int_parse_xpm+0x4de>
  40c644:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  40c649:	4d 63 f8             	movslq %r8d,%r15
  40c64c:	4f 8d 1c 3a          	lea    (%r10,%r15,1),%r11
  40c650:	49 8d 4c 07 ff       	lea    -0x1(%r15,%rax,1),%rcx
  40c655:	48 8d 44 0d 00       	lea    0x0(%rbp,%rcx,1),%rax
  40c65a:	49 01 cf             	add    %rcx,%r15
  40c65d:	eb 0f                	jmp    40c66e <mlx_int_parse_xpm+0x4be>
  40c65f:	90                   	nop
  40c660:	88 10                	mov    %dl,(%rax)
  40c662:	48 83 e8 01          	sub    $0x1,%rax
  40c666:	c1 fa 08             	sar    $0x8,%edx
  40c669:	4c 39 d8             	cmp    %r11,%rax
  40c66c:	74 20                	je     40c68e <mlx_int_parse_xpm+0x4de>
  40c66e:	49 8b 0c 24          	mov    (%r12),%rcx
  40c672:	8b 49 18             	mov    0x18(%rcx),%ecx
  40c675:	85 c9                	test   %ecx,%ecx
  40c677:	75 e7                	jne    40c660 <mlx_int_parse_xpm+0x4b0>
  40c679:	4c 89 f9             	mov    %r15,%rcx
  40c67c:	48 29 c1             	sub    %rax,%rcx
  40c67f:	48 83 e8 01          	sub    $0x1,%rax
  40c683:	88 14 69             	mov    %dl,(%rcx,%rbp,2)
  40c686:	c1 fa 08             	sar    $0x8,%edx
  40c689:	4c 39 d8             	cmp    %r11,%rax
  40c68c:	75 e0                	jne    40c66e <mlx_int_parse_xpm+0x4be>
  40c68e:	83 c7 01             	add    $0x1,%edi
  40c691:	45 01 e8             	add    %r13d,%r8d
  40c694:	48 01 de             	add    %rbx,%rsi
  40c697:	3b 3c 24             	cmp    (%rsp),%edi
  40c69a:	0f 85 60 ff ff ff    	jne    40c600 <mlx_int_parse_xpm+0x450>
  40c6a0:	49 63 44 24 18       	movslq 0x18(%r12),%rax
  40c6a5:	48 01 c5             	add    %rax,%rbp
  40c6a8:	83 6c 24 40 01       	subl   $0x1,0x40(%rsp)
  40c6ad:	0f 85 ed fe ff ff    	jne    40c5a0 <mlx_int_parse_xpm+0x3f0>
  40c6b3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40c6b8:	48 85 c0             	test   %rax,%rax
  40c6bb:	74 08                	je     40c6c5 <mlx_int_parse_xpm+0x515>
  40c6bd:	48 89 c7             	mov    %rax,%rdi
  40c6c0:	e8 bb 5a ff ff       	call   402180 <free@plt>
  40c6c5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40c6ca:	48 85 c0             	test   %rax,%rax
  40c6cd:	0f 84 10 fd ff ff    	je     40c3e3 <mlx_int_parse_xpm+0x233>
  40c6d3:	48 89 c7             	mov    %rax,%rdi
  40c6d6:	e8 a5 5a ff ff       	call   402180 <free@plt>
  40c6db:	e9 03 fd ff ff       	jmp    40c3e3 <mlx_int_parse_xpm+0x233>
  40c6e0:	31 c9                	xor    %ecx,%ecx
  40c6e2:	e9 da fd ff ff       	jmp    40c4c1 <mlx_int_parse_xpm+0x311>
  40c6e7:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
  40c6eb:	ba 10 00 00 00       	mov    $0x10,%edx
  40c6f0:	31 f6                	xor    %esi,%esi
  40c6f2:	e8 59 5b ff ff       	call   402250 <strtol@plt>
  40c6f7:	89 c1                	mov    %eax,%ecx
  40c6f9:	e9 c3 fd ff ff       	jmp    40c4c1 <mlx_int_parse_xpm+0x311>
  40c6fe:	48 83 7c 24 30 00    	cmpq   $0x0,0x30(%rsp)
  40c704:	74 0a                	je     40c710 <mlx_int_parse_xpm+0x560>
  40c706:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  40c70b:	e8 70 5a ff ff       	call   402180 <free@plt>
  40c710:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  40c716:	0f 84 b4 fc ff ff    	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c71c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40c721:	45 31 e4             	xor    %r12d,%r12d
  40c724:	e8 57 5a ff ff       	call   402180 <free@plt>
  40c729:	e9 b5 fc ff ff       	jmp    40c3e3 <mlx_int_parse_xpm+0x233>
  40c72e:	48 63 eb             	movslq %ebx,%rbp
  40c731:	48 8d 3c ed 00 00 00 	lea    0x0(,%rbp,8),%rdi
  40c738:	00 
  40c739:	e8 d2 59 ff ff       	call   402110 <malloc@plt>
  40c73e:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40c743:	48 85 c0             	test   %rax,%rax
  40c746:	0f 84 84 fc ff ff    	je     40c3d0 <mlx_int_parse_xpm+0x220>
  40c74c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40c753:	00 00 
  40c755:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
  40c75c:	00 
  40c75d:	e9 85 fb ff ff       	jmp    40c2e7 <mlx_int_parse_xpm+0x137>
  40c762:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c768:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40c76c:	44 8b 7c 24 54       	mov    0x54(%rsp),%r15d
  40c771:	31 d2                	xor    %edx,%edx
  40c773:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40c778:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40c77d:	4d 63 df             	movslq %r15d,%r11
  40c780:	45 89 ff             	mov    %r15d,%r15d
  40c783:	49 c1 e7 03          	shl    $0x3,%r15
  40c787:	4a 8d 4c d9 f8       	lea    -0x8(%rcx,%r11,8),%rcx
  40c78c:	4e 8d 1c d8          	lea    (%rax,%r11,8),%r11
  40c790:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40c794:	4d 29 fb             	sub    %r15,%r11
  40c797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40c79e:	00 00 
  40c7a0:	49 39 cb             	cmp    %rcx,%r11
  40c7a3:	0f 84 8b fe ff ff    	je     40c634 <mlx_int_parse_xpm+0x484>
  40c7a9:	49 89 cf             	mov    %rcx,%r15
  40c7ac:	48 83 e9 08          	sub    $0x8,%rcx
  40c7b0:	39 41 08             	cmp    %eax,0x8(%rcx)
  40c7b3:	75 eb                	jne    40c7a0 <mlx_int_parse_xpm+0x5f0>
  40c7b5:	41 8b 57 04          	mov    0x4(%r15),%edx
  40c7b9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40c7bd:	45 31 ff             	xor    %r15d,%r15d
  40c7c0:	eb b1                	jmp    40c773 <mlx_int_parse_xpm+0x5c3>
  40c7c2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40c7c7:	48 85 c0             	test   %rax,%rax
  40c7ca:	74 08                	je     40c7d4 <mlx_int_parse_xpm+0x624>
  40c7cc:	48 89 c7             	mov    %rax,%rdi
  40c7cf:	e8 ac 59 ff ff       	call   402180 <free@plt>
  40c7d4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40c7d9:	48 85 c0             	test   %rax,%rax
  40c7dc:	74 08                	je     40c7e6 <mlx_int_parse_xpm+0x636>
  40c7de:	48 89 c7             	mov    %rax,%rdi
  40c7e1:	e8 9a 59 ff ff       	call   402180 <free@plt>
  40c7e6:	49 8b 04 24          	mov    (%r12),%rax
  40c7ea:	48 89 c7             	mov    %rax,%rdi
  40c7ed:	ff 50 60             	call   *0x60(%rax)
  40c7f0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c7f5:	49 8b 74 24 08       	mov    0x8(%r12),%rsi
  40c7fa:	48 8b 38             	mov    (%rax),%rdi
  40c7fd:	e8 ae 5b ff ff       	call   4023b0 <XFreePixmap@plt>
  40c802:	4c 89 e7             	mov    %r12,%rdi
  40c805:	e9 b7 fb ff ff       	jmp    40c3c1 <mlx_int_parse_xpm+0x211>
  40c80a:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  40c80f:	48 85 c0             	test   %rax,%rax
  40c812:	74 08                	je     40c81c <mlx_int_parse_xpm+0x66c>
  40c814:	48 89 c7             	mov    %rax,%rdi
  40c817:	e8 64 59 ff ff       	call   402180 <free@plt>
  40c81c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40c821:	48 85 ff             	test   %rdi,%rdi
  40c824:	0f 85 ac fe ff ff    	jne    40c6d6 <mlx_int_parse_xpm+0x526>
  40c82a:	e9 a1 fb ff ff       	jmp    40c3d0 <mlx_int_parse_xpm+0x220>
  40c82f:	e8 9c 5a ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40c834:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40c83b:	00 00 00 00 
  40c83f:	90                   	nop

000000000040c840 <mlx_int_file_get_rid_comment>:
  40c840:	f3 0f 1e fa          	endbr64 
  40c844:	41 55                	push   %r13
  40c846:	41 54                	push   %r12
  40c848:	4c 8d 25 ed 3a 00 00 	lea    0x3aed(%rip),%r12        # 41033c <_IO_stdin_used+0x133c>
  40c84f:	55                   	push   %rbp
  40c850:	89 f5                	mov    %esi,%ebp
  40c852:	53                   	push   %rbx
  40c853:	48 89 fb             	mov    %rdi,%rbx
  40c856:	48 83 ec 08          	sub    $0x8,%rsp
  40c85a:	eb 33                	jmp    40c88f <mlx_int_file_get_rid_comment+0x4f>
  40c85c:	0f 1f 40 00          	nopl   0x0(%rax)
  40c860:	89 ea                	mov    %ebp,%edx
  40c862:	4c 63 e8             	movslq %eax,%r13
  40c865:	48 8d 35 cd 3a 00 00 	lea    0x3acd(%rip),%rsi        # 410339 <_IO_stdin_used+0x1339>
  40c86c:	29 c2                	sub    %eax,%edx
  40c86e:	4a 8d 7c 2b 02       	lea    0x2(%rbx,%r13,1),%rdi
  40c873:	83 ea 02             	sub    $0x2,%edx
  40c876:	e8 a5 01 00 00       	call   40ca20 <mlx_int_str_str>
  40c87b:	4a 8d 3c 2b          	lea    (%rbx,%r13,1),%rdi
  40c87f:	be 20 00 00 00       	mov    $0x20,%esi
  40c884:	8d 50 04             	lea    0x4(%rax),%edx
  40c887:	48 63 d2             	movslq %edx,%rdx
  40c88a:	e8 b1 57 ff ff       	call   402040 <memset@plt>
  40c88f:	89 ea                	mov    %ebp,%edx
  40c891:	4c 89 e6             	mov    %r12,%rsi
  40c894:	48 89 df             	mov    %rbx,%rdi
  40c897:	e8 f4 01 00 00       	call   40ca90 <mlx_int_str_str_cote>
  40c89c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c89f:	75 bf                	jne    40c860 <mlx_int_file_get_rid_comment+0x20>
  40c8a1:	4c 8d 25 97 3a 00 00 	lea    0x3a97(%rip),%r12        # 41033f <_IO_stdin_used+0x133f>
  40c8a8:	eb 35                	jmp    40c8df <mlx_int_file_get_rid_comment+0x9f>
  40c8aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c8b0:	89 ea                	mov    %ebp,%edx
  40c8b2:	4c 63 e8             	movslq %eax,%r13
  40c8b5:	48 8d 35 59 27 00 00 	lea    0x2759(%rip),%rsi        # 40f015 <_IO_stdin_used+0x15>
  40c8bc:	29 c2                	sub    %eax,%edx
  40c8be:	4a 8d 7c 2b 02       	lea    0x2(%rbx,%r13,1),%rdi
  40c8c3:	83 ea 02             	sub    $0x2,%edx
  40c8c6:	e8 55 01 00 00       	call   40ca20 <mlx_int_str_str>
  40c8cb:	4a 8d 3c 2b          	lea    (%rbx,%r13,1),%rdi
  40c8cf:	be 20 00 00 00       	mov    $0x20,%esi
  40c8d4:	8d 50 03             	lea    0x3(%rax),%edx
  40c8d7:	48 63 d2             	movslq %edx,%rdx
  40c8da:	e8 61 57 ff ff       	call   402040 <memset@plt>
  40c8df:	89 ea                	mov    %ebp,%edx
  40c8e1:	4c 89 e6             	mov    %r12,%rsi
  40c8e4:	48 89 df             	mov    %rbx,%rdi
  40c8e7:	e8 a4 01 00 00       	call   40ca90 <mlx_int_str_str_cote>
  40c8ec:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c8ef:	75 bf                	jne    40c8b0 <mlx_int_file_get_rid_comment+0x70>
  40c8f1:	48 83 c4 08          	add    $0x8,%rsp
  40c8f5:	5b                   	pop    %rbx
  40c8f6:	5d                   	pop    %rbp
  40c8f7:	41 5c                	pop    %r12
  40c8f9:	41 5d                	pop    %r13
  40c8fb:	c3                   	ret    
  40c8fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c900 <mlx_xpm_file_to_image>:
  40c900:	f3 0f 1e fa          	endbr64 
  40c904:	41 57                	push   %r15
  40c906:	31 c0                	xor    %eax,%eax
  40c908:	41 56                	push   %r14
  40c90a:	49 89 d6             	mov    %rdx,%r14
  40c90d:	41 55                	push   %r13
  40c90f:	41 54                	push   %r12
  40c911:	49 89 fc             	mov    %rdi,%r12
  40c914:	48 89 f7             	mov    %rsi,%rdi
  40c917:	31 f6                	xor    %esi,%esi
  40c919:	55                   	push   %rbp
  40c91a:	53                   	push   %rbx
  40c91b:	48 83 ec 18          	sub    $0x18,%rsp
  40c91f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40c924:	e8 27 5b ff ff       	call   402450 <open@plt>
  40c929:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c92c:	0f 84 a9 00 00 00    	je     40c9db <mlx_xpm_file_to_image+0xdb>
  40c932:	ba 02 00 00 00       	mov    $0x2,%edx
  40c937:	31 f6                	xor    %esi,%esi
  40c939:	89 c7                	mov    %eax,%edi
  40c93b:	89 c5                	mov    %eax,%ebp
  40c93d:	e8 fe 58 ff ff       	call   402240 <lseek@plt>
  40c942:	48 89 c3             	mov    %rax,%rbx
  40c945:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c948:	0f 84 82 00 00 00    	je     40c9d0 <mlx_xpm_file_to_image+0xd0>
  40c94e:	4c 63 f8             	movslq %eax,%r15
  40c951:	45 31 c9             	xor    %r9d,%r9d
  40c954:	41 89 e8             	mov    %ebp,%r8d
  40c957:	b9 02 00 00 00       	mov    $0x2,%ecx
  40c95c:	ba 03 00 00 00       	mov    $0x3,%edx
  40c961:	4c 89 fe             	mov    %r15,%rsi
  40c964:	31 ff                	xor    %edi,%edi
  40c966:	e8 f5 5a ff ff       	call   402460 <mmap@plt>
  40c96b:	49 89 c5             	mov    %rax,%r13
  40c96e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40c972:	74 5c                	je     40c9d0 <mlx_xpm_file_to_image+0xd0>
  40c974:	89 de                	mov    %ebx,%esi
  40c976:	48 89 c7             	mov    %rax,%rdi
  40c979:	e8 c2 fe ff ff       	call   40c840 <mlx_int_file_get_rid_comment>
  40c97e:	4c 89 e7             	mov    %r12,%rdi
  40c981:	89 da                	mov    %ebx,%edx
  40c983:	4c 89 ee             	mov    %r13,%rsi
  40c986:	48 8d 0d c3 f4 ff ff 	lea    -0xb3d(%rip),%rcx        # 40be50 <mlx_int_get_line>
  40c98d:	e8 1e f8 ff ff       	call   40c1b0 <mlx_int_parse_xpm>
  40c992:	49 89 c4             	mov    %rax,%r12
  40c995:	48 85 c0             	test   %rax,%rax
  40c998:	74 12                	je     40c9ac <mlx_xpm_file_to_image+0xac>
  40c99a:	8b 40 20             	mov    0x20(%rax),%eax
  40c99d:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40c9a2:	41 89 06             	mov    %eax,(%r14)
  40c9a5:	41 8b 44 24 24       	mov    0x24(%r12),%eax
  40c9aa:	89 03                	mov    %eax,(%rbx)
  40c9ac:	4c 89 ef             	mov    %r13,%rdi
  40c9af:	4c 89 fe             	mov    %r15,%rsi
  40c9b2:	e8 79 59 ff ff       	call   402330 <munmap@plt>
  40c9b7:	89 ef                	mov    %ebp,%edi
  40c9b9:	e8 92 56 ff ff       	call   402050 <close@plt>
  40c9be:	48 83 c4 18          	add    $0x18,%rsp
  40c9c2:	4c 89 e0             	mov    %r12,%rax
  40c9c5:	5b                   	pop    %rbx
  40c9c6:	5d                   	pop    %rbp
  40c9c7:	41 5c                	pop    %r12
  40c9c9:	41 5d                	pop    %r13
  40c9cb:	41 5e                	pop    %r14
  40c9cd:	41 5f                	pop    %r15
  40c9cf:	c3                   	ret    
  40c9d0:	85 ed                	test   %ebp,%ebp
  40c9d2:	78 07                	js     40c9db <mlx_xpm_file_to_image+0xdb>
  40c9d4:	89 ef                	mov    %ebp,%edi
  40c9d6:	e8 75 56 ff ff       	call   402050 <close@plt>
  40c9db:	45 31 e4             	xor    %r12d,%r12d
  40c9de:	eb de                	jmp    40c9be <mlx_xpm_file_to_image+0xbe>

000000000040c9e0 <mlx_xpm_to_image>:
  40c9e0:	f3 0f 1e fa          	endbr64 
  40c9e4:	55                   	push   %rbp
  40c9e5:	48 89 cd             	mov    %rcx,%rbp
  40c9e8:	48 8d 0d 11 f5 ff ff 	lea    -0xaef(%rip),%rcx        # 40bf00 <mlx_int_static_line>
  40c9ef:	53                   	push   %rbx
  40c9f0:	48 89 d3             	mov    %rdx,%rbx
  40c9f3:	31 d2                	xor    %edx,%edx
  40c9f5:	48 83 ec 08          	sub    $0x8,%rsp
  40c9f9:	e8 b2 f7 ff ff       	call   40c1b0 <mlx_int_parse_xpm>
  40c9fe:	48 85 c0             	test   %rax,%rax
  40ca01:	74 0b                	je     40ca0e <mlx_xpm_to_image+0x2e>
  40ca03:	8b 50 20             	mov    0x20(%rax),%edx
  40ca06:	89 13                	mov    %edx,(%rbx)
  40ca08:	8b 50 24             	mov    0x24(%rax),%edx
  40ca0b:	89 55 00             	mov    %edx,0x0(%rbp)
  40ca0e:	48 83 c4 08          	add    $0x8,%rsp
  40ca12:	5b                   	pop    %rbx
  40ca13:	5d                   	pop    %rbp
  40ca14:	c3                   	ret    
  40ca15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40ca1c:	00 00 00 
  40ca1f:	90                   	nop

000000000040ca20 <mlx_int_str_str>:
  40ca20:	f3 0f 1e fa          	endbr64 
  40ca24:	41 54                	push   %r12
  40ca26:	41 89 d4             	mov    %edx,%r12d
  40ca29:	55                   	push   %rbp
  40ca2a:	48 89 f5             	mov    %rsi,%rbp
  40ca2d:	53                   	push   %rbx
  40ca2e:	48 89 fb             	mov    %rdi,%rbx
  40ca31:	48 89 f7             	mov    %rsi,%rdi
  40ca34:	e8 67 57 ff ff       	call   4021a0 <strlen@plt>
  40ca39:	44 39 e0             	cmp    %r12d,%eax
  40ca3c:	7f 44                	jg     40ca82 <mlx_int_str_str+0x62>
  40ca3e:	48 98                	cltq   
  40ca40:	31 c9                	xor    %ecx,%ecx
  40ca42:	80 7c 03 ff 00       	cmpb   $0x0,-0x1(%rbx,%rax,1)
  40ca47:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
  40ca4b:	74 35                	je     40ca82 <mlx_int_str_str+0x62>
  40ca4d:	41 89 c8             	mov    %ecx,%r8d
  40ca50:	48 8d 14 0b          	lea    (%rbx,%rcx,1),%rdx
  40ca54:	48 89 e8             	mov    %rbp,%rax
  40ca57:	eb 0c                	jmp    40ca65 <mlx_int_str_str+0x45>
  40ca59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ca60:	80 38 00             	cmpb   $0x0,(%rax)
  40ca63:	74 23                	je     40ca88 <mlx_int_str_str+0x68>
  40ca65:	48 83 c0 01          	add    $0x1,%rax
  40ca69:	48 83 c2 01          	add    $0x1,%rdx
  40ca6d:	0f b6 7a ff          	movzbl -0x1(%rdx),%edi
  40ca71:	40 38 78 ff          	cmp    %dil,-0x1(%rax)
  40ca75:	74 e9                	je     40ca60 <mlx_int_str_str+0x40>
  40ca77:	48 83 c1 01          	add    $0x1,%rcx
  40ca7b:	80 7c 0e ff 00       	cmpb   $0x0,-0x1(%rsi,%rcx,1)
  40ca80:	75 cb                	jne    40ca4d <mlx_int_str_str+0x2d>
  40ca82:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40ca88:	5b                   	pop    %rbx
  40ca89:	44 89 c0             	mov    %r8d,%eax
  40ca8c:	5d                   	pop    %rbp
  40ca8d:	41 5c                	pop    %r12
  40ca8f:	c3                   	ret    

000000000040ca90 <mlx_int_str_str_cote>:
  40ca90:	f3 0f 1e fa          	endbr64 
  40ca94:	41 54                	push   %r12
  40ca96:	41 89 d4             	mov    %edx,%r12d
  40ca99:	55                   	push   %rbp
  40ca9a:	48 89 f5             	mov    %rsi,%rbp
  40ca9d:	53                   	push   %rbx
  40ca9e:	48 89 fb             	mov    %rdi,%rbx
  40caa1:	48 89 f7             	mov    %rsi,%rdi
  40caa4:	e8 f7 56 ff ff       	call   4021a0 <strlen@plt>
  40caa9:	44 39 e0             	cmp    %r12d,%eax
  40caac:	7f 62                	jg     40cb10 <mlx_int_str_str_cote+0x80>
  40caae:	48 63 f0             	movslq %eax,%rsi
  40cab1:	80 7c 33 ff 00       	cmpb   $0x0,-0x1(%rbx,%rsi,1)
  40cab6:	74 58                	je     40cb10 <mlx_int_str_str_cote+0x80>
  40cab8:	31 c9                	xor    %ecx,%ecx
  40caba:	45 31 c0             	xor    %r8d,%r8d
  40cabd:	bf 01 00 00 00       	mov    $0x1,%edi
  40cac2:	eb 13                	jmp    40cad7 <mlx_int_str_str_cote+0x47>
  40cac4:	0f 1f 40 00          	nopl   0x0(%rax)
  40cac8:	48 83 c3 01          	add    $0x1,%rbx
  40cacc:	41 83 c0 01          	add    $0x1,%r8d
  40cad0:	80 7c 33 ff 00       	cmpb   $0x0,-0x1(%rbx,%rsi,1)
  40cad5:	74 39                	je     40cb10 <mlx_int_str_str_cote+0x80>
  40cad7:	89 fa                	mov    %edi,%edx
  40cad9:	89 c8                	mov    %ecx,%eax
  40cadb:	29 ca                	sub    %ecx,%edx
  40cadd:	80 3b 22             	cmpb   $0x22,(%rbx)
  40cae0:	0f 44 c2             	cmove  %edx,%eax
  40cae3:	89 c1                	mov    %eax,%ecx
  40cae5:	85 c0                	test   %eax,%eax
  40cae7:	75 df                	jne    40cac8 <mlx_int_str_str_cote+0x38>
  40cae9:	48 89 e8             	mov    %rbp,%rax
  40caec:	48 89 da             	mov    %rbx,%rdx
  40caef:	90                   	nop
  40caf0:	48 83 c0 01          	add    $0x1,%rax
  40caf4:	48 83 c2 01          	add    $0x1,%rdx
  40caf8:	44 0f b6 4a ff       	movzbl -0x1(%rdx),%r9d
  40cafd:	44 38 48 ff          	cmp    %r9b,-0x1(%rax)
  40cb01:	75 c5                	jne    40cac8 <mlx_int_str_str_cote+0x38>
  40cb03:	80 38 00             	cmpb   $0x0,(%rax)
  40cb06:	75 e8                	jne    40caf0 <mlx_int_str_str_cote+0x60>
  40cb08:	5b                   	pop    %rbx
  40cb09:	44 89 c0             	mov    %r8d,%eax
  40cb0c:	5d                   	pop    %rbp
  40cb0d:	41 5c                	pop    %r12
  40cb0f:	c3                   	ret    
  40cb10:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40cb16:	5b                   	pop    %rbx
  40cb17:	5d                   	pop    %rbp
  40cb18:	44 89 c0             	mov    %r8d,%eax
  40cb1b:	41 5c                	pop    %r12
  40cb1d:	c3                   	ret    
  40cb1e:	66 90                	xchg   %ax,%ax

000000000040cb20 <mlx_int_str_to_wordtab>:
  40cb20:	f3 0f 1e fa          	endbr64 
  40cb24:	55                   	push   %rbp
  40cb25:	53                   	push   %rbx
  40cb26:	48 89 fb             	mov    %rdi,%rbx
  40cb29:	48 83 ec 08          	sub    $0x8,%rsp
  40cb2d:	e8 6e 56 ff ff       	call   4021a0 <strlen@plt>
  40cb32:	31 f6                	xor    %esi,%esi
  40cb34:	31 c9                	xor    %ecx,%ecx
  40cb36:	89 c5                	mov    %eax,%ebp
  40cb38:	85 c0                	test   %eax,%eax
  40cb3a:	0f 8e 3c 01 00 00    	jle    40cc7c <mlx_int_str_to_wordtab+0x15c>
  40cb40:	48 63 c1             	movslq %ecx,%rax
  40cb43:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  40cb47:	80 fa 20             	cmp    $0x20,%dl
  40cb4a:	74 05                	je     40cb51 <mlx_int_str_to_wordtab+0x31>
  40cb4c:	80 fa 09             	cmp    $0x9,%dl
  40cb4f:	75 23                	jne    40cb74 <mlx_int_str_to_wordtab+0x54>
  40cb51:	8d 41 01             	lea    0x1(%rcx),%eax
  40cb54:	48 98                	cltq   
  40cb56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40cb5d:	00 00 00 
  40cb60:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  40cb64:	89 c1                	mov    %eax,%ecx
  40cb66:	48 83 c0 01          	add    $0x1,%rax
  40cb6a:	80 fa 20             	cmp    $0x20,%dl
  40cb6d:	74 f1                	je     40cb60 <mlx_int_str_to_wordtab+0x40>
  40cb6f:	80 fa 09             	cmp    $0x9,%dl
  40cb72:	74 ec                	je     40cb60 <mlx_int_str_to_wordtab+0x40>
  40cb74:	84 d2                	test   %dl,%dl
  40cb76:	74 2c                	je     40cba4 <mlx_int_str_to_wordtab+0x84>
  40cb78:	83 c6 01             	add    $0x1,%esi
  40cb7b:	f6 c2 df             	test   $0xdf,%dl
  40cb7e:	74 24                	je     40cba4 <mlx_int_str_to_wordtab+0x84>
  40cb80:	80 fa 09             	cmp    $0x9,%dl
  40cb83:	74 1f                	je     40cba4 <mlx_int_str_to_wordtab+0x84>
  40cb85:	8d 41 01             	lea    0x1(%rcx),%eax
  40cb88:	48 98                	cltq   
  40cb8a:	eb 09                	jmp    40cb95 <mlx_int_str_to_wordtab+0x75>
  40cb8c:	0f 1f 40 00          	nopl   0x0(%rax)
  40cb90:	80 fa 09             	cmp    $0x9,%dl
  40cb93:	74 0f                	je     40cba4 <mlx_int_str_to_wordtab+0x84>
  40cb95:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  40cb99:	89 c1                	mov    %eax,%ecx
  40cb9b:	48 83 c0 01          	add    $0x1,%rax
  40cb9f:	f6 c2 df             	test   $0xdf,%dl
  40cba2:	75 ec                	jne    40cb90 <mlx_int_str_to_wordtab+0x70>
  40cba4:	39 cd                	cmp    %ecx,%ebp
  40cba6:	7f 98                	jg     40cb40 <mlx_int_str_to_wordtab+0x20>
  40cba8:	8d 7e 01             	lea    0x1(%rsi),%edi
  40cbab:	48 63 ff             	movslq %edi,%rdi
  40cbae:	48 c1 e7 03          	shl    $0x3,%rdi
  40cbb2:	e8 59 55 ff ff       	call   402110 <malloc@plt>
  40cbb7:	49 89 c1             	mov    %rax,%r9
  40cbba:	48 85 c0             	test   %rax,%rax
  40cbbd:	0f 84 cb 00 00 00    	je     40cc8e <mlx_int_str_to_wordtab+0x16e>
  40cbc3:	45 31 c0             	xor    %r8d,%r8d
  40cbc6:	31 c9                	xor    %ecx,%ecx
  40cbc8:	4c 8d 53 01          	lea    0x1(%rbx),%r10
  40cbcc:	0f 1f 40 00          	nopl   0x0(%rax)
  40cbd0:	4c 63 d9             	movslq %ecx,%r11
  40cbd3:	4a 8d 14 1b          	lea    (%rbx,%r11,1),%rdx
  40cbd7:	0f b6 32             	movzbl (%rdx),%esi
  40cbda:	40 80 fe 09          	cmp    $0x9,%sil
  40cbde:	74 08                	je     40cbe8 <mlx_int_str_to_wordtab+0xc8>
  40cbe0:	89 c8                	mov    %ecx,%eax
  40cbe2:	40 80 fe 20          	cmp    $0x20,%sil
  40cbe6:	75 34                	jne    40cc1c <mlx_int_str_to_wordtab+0xfc>
  40cbe8:	8d 79 01             	lea    0x1(%rcx),%edi
  40cbeb:	4d 01 d3             	add    %r10,%r11
  40cbee:	48 63 cf             	movslq %edi,%rcx
  40cbf1:	49 29 d3             	sub    %rdx,%r11
  40cbf4:	29 d7                	sub    %edx,%edi
  40cbf6:	48 01 d9             	add    %rbx,%rcx
  40cbf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cc00:	c6 02 00             	movb   $0x0,(%rdx)
  40cc03:	0f b6 31             	movzbl (%rcx),%esi
  40cc06:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
  40cc09:	48 83 c1 01          	add    $0x1,%rcx
  40cc0d:	4c 01 da             	add    %r11,%rdx
  40cc10:	40 80 fe 20          	cmp    $0x20,%sil
  40cc14:	74 ea                	je     40cc00 <mlx_int_str_to_wordtab+0xe0>
  40cc16:	40 80 fe 09          	cmp    $0x9,%sil
  40cc1a:	74 e4                	je     40cc00 <mlx_int_str_to_wordtab+0xe0>
  40cc1c:	89 c1                	mov    %eax,%ecx
  40cc1e:	40 84 f6             	test   %sil,%sil
  40cc21:	74 39                	je     40cc5c <mlx_int_str_to_wordtab+0x13c>
  40cc23:	49 63 c8             	movslq %r8d,%rcx
  40cc26:	41 83 c0 01          	add    $0x1,%r8d
  40cc2a:	49 89 14 c9          	mov    %rdx,(%r9,%rcx,8)
  40cc2e:	40 f6 c6 df          	test   $0xdf,%sil
  40cc32:	74 5f                	je     40cc93 <mlx_int_str_to_wordtab+0x173>
  40cc34:	40 80 fe 09          	cmp    $0x9,%sil
  40cc38:	74 59                	je     40cc93 <mlx_int_str_to_wordtab+0x173>
  40cc3a:	83 c0 01             	add    $0x1,%eax
  40cc3d:	48 98                	cltq   
  40cc3f:	eb 0c                	jmp    40cc4d <mlx_int_str_to_wordtab+0x12d>
  40cc41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cc48:	80 fa 09             	cmp    $0x9,%dl
  40cc4b:	74 0f                	je     40cc5c <mlx_int_str_to_wordtab+0x13c>
  40cc4d:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  40cc51:	89 c1                	mov    %eax,%ecx
  40cc53:	48 83 c0 01          	add    $0x1,%rax
  40cc57:	f6 c2 df             	test   $0xdf,%dl
  40cc5a:	75 ec                	jne    40cc48 <mlx_int_str_to_wordtab+0x128>
  40cc5c:	39 cd                	cmp    %ecx,%ebp
  40cc5e:	0f 8f 6c ff ff ff    	jg     40cbd0 <mlx_int_str_to_wordtab+0xb0>
  40cc64:	4d 63 c0             	movslq %r8d,%r8
  40cc67:	4b 8d 04 c1          	lea    (%r9,%r8,8),%rax
  40cc6b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40cc72:	48 83 c4 08          	add    $0x8,%rsp
  40cc76:	4c 89 c8             	mov    %r9,%rax
  40cc79:	5b                   	pop    %rbx
  40cc7a:	5d                   	pop    %rbp
  40cc7b:	c3                   	ret    
  40cc7c:	bf 08 00 00 00       	mov    $0x8,%edi
  40cc81:	e8 8a 54 ff ff       	call   402110 <malloc@plt>
  40cc86:	49 89 c1             	mov    %rax,%r9
  40cc89:	48 85 c0             	test   %rax,%rax
  40cc8c:	75 dd                	jne    40cc6b <mlx_int_str_to_wordtab+0x14b>
  40cc8e:	45 31 c9             	xor    %r9d,%r9d
  40cc91:	eb df                	jmp    40cc72 <mlx_int_str_to_wordtab+0x152>
  40cc93:	89 c1                	mov    %eax,%ecx
  40cc95:	eb c5                	jmp    40cc5c <mlx_int_str_to_wordtab+0x13c>
  40cc97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40cc9e:	00 00 

000000000040cca0 <mlx_destroy_window>:
  40cca0:	f3 0f 1e fa          	endbr64 
  40cca4:	55                   	push   %rbp
  40cca5:	48 89 f5             	mov    %rsi,%rbp
  40cca8:	53                   	push   %rbx
  40cca9:	48 89 fb             	mov    %rdi,%rbx
  40ccac:	48 81 ec b8 03 00 00 	sub    $0x3b8,%rsp
  40ccb3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40ccba:	00 00 
  40ccbc:	48 89 84 24 a8 03 00 	mov    %rax,0x3a8(%rsp)
  40ccc3:	00 
  40ccc4:	48 8b 47 30          	mov    0x30(%rdi),%rax
  40ccc8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40cccd:	48 85 c0             	test   %rax,%rax
  40ccd0:	74 34                	je     40cd06 <mlx_destroy_window+0x66>
  40ccd2:	48 89 e1             	mov    %rsp,%rcx
  40ccd5:	eb 18                	jmp    40ccef <mlx_destroy_window+0x4f>
  40ccd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40ccde:	00 00 
  40cce0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  40cce4:	48 85 d2             	test   %rdx,%rdx
  40cce7:	74 18                	je     40cd01 <mlx_destroy_window+0x61>
  40cce9:	48 89 c1             	mov    %rax,%rcx
  40ccec:	48 89 d0             	mov    %rdx,%rax
  40ccef:	48 39 c5             	cmp    %rax,%rbp
  40ccf2:	75 ec                	jne    40cce0 <mlx_destroy_window+0x40>
  40ccf4:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  40ccf8:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  40ccfc:	48 85 d2             	test   %rdx,%rdx
  40ccff:	75 eb                	jne    40ccec <mlx_destroy_window+0x4c>
  40cd01:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40cd06:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  40cd0a:	48 8b 3b             	mov    (%rbx),%rdi
  40cd0d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40cd11:	e8 9a 54 ff ff       	call   4021b0 <XDestroyWindow@plt>
  40cd16:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40cd1a:	48 8b 3b             	mov    (%rbx),%rdi
  40cd1d:	e8 ce 54 ff ff       	call   4021f0 <XFreeGC@plt>
  40cd22:	48 89 ef             	mov    %rbp,%rdi
  40cd25:	e8 56 54 ff ff       	call   402180 <free@plt>
  40cd2a:	8b 43 50             	mov    0x50(%rbx),%eax
  40cd2d:	85 c0                	test   %eax,%eax
  40cd2f:	75 1f                	jne    40cd50 <mlx_destroy_window+0xb0>
  40cd31:	48 8b 84 24 a8 03 00 	mov    0x3a8(%rsp),%rax
  40cd38:	00 
  40cd39:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40cd40:	00 00 
  40cd42:	75 30                	jne    40cd74 <mlx_destroy_window+0xd4>
  40cd44:	48 81 c4 b8 03 00 00 	add    $0x3b8,%rsp
  40cd4b:	31 c0                	xor    %eax,%eax
  40cd4d:	5b                   	pop    %rbx
  40cd4e:	5d                   	pop    %rbp
  40cd4f:	c3                   	ret    
  40cd50:	48 8b 84 24 a8 03 00 	mov    0x3a8(%rsp),%rax
  40cd57:	00 
  40cd58:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40cd5f:	00 00 
  40cd61:	75 11                	jne    40cd74 <mlx_destroy_window+0xd4>
  40cd63:	48 8b 3b             	mov    (%rbx),%rdi
  40cd66:	48 81 c4 b8 03 00 00 	add    $0x3b8,%rsp
  40cd6d:	5b                   	pop    %rbx
  40cd6e:	5d                   	pop    %rbp
  40cd6f:	e9 3c 55 ff ff       	jmp    4022b0 <XFlush@plt>
  40cd74:	e8 57 55 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40cd79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040cd80 <mlx_int_param_undef>:
  40cd80:	f3 0f 1e fa          	endbr64 
  40cd84:	c3                   	ret    
  40cd85:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40cd8c:	00 00 00 00 

000000000040cd90 <mlx_int_param_ButtonPress>:
  40cd90:	f3 0f 1e fa          	endbr64 
  40cd94:	44 8b 56 44          	mov    0x44(%rsi),%r10d
  40cd98:	44 8b 4e 40          	mov    0x40(%rsi),%r9d
  40cd9c:	31 c0                	xor    %eax,%eax
  40cd9e:	48 8b 8a b8 00 00 00 	mov    0xb8(%rdx),%rcx
  40cda5:	8b 7e 54             	mov    0x54(%rsi),%edi
  40cda8:	4c 8b 82 b0 00 00 00 	mov    0xb0(%rdx),%r8
  40cdaf:	44 89 ce             	mov    %r9d,%esi
  40cdb2:	44 89 d2             	mov    %r10d,%edx
  40cdb5:	41 ff e0             	jmp    *%r8
  40cdb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cdbf:	00 

000000000040cdc0 <mlx_int_param_ButtonRelease>:
  40cdc0:	f3 0f 1e fa          	endbr64 
  40cdc4:	44 8b 56 44          	mov    0x44(%rsi),%r10d
  40cdc8:	44 8b 4e 40          	mov    0x40(%rsi),%r9d
  40cdcc:	31 c0                	xor    %eax,%eax
  40cdce:	48 8b 8a d0 00 00 00 	mov    0xd0(%rdx),%rcx
  40cdd5:	8b 7e 54             	mov    0x54(%rsi),%edi
  40cdd8:	4c 8b 82 c8 00 00 00 	mov    0xc8(%rdx),%r8
  40cddf:	44 89 ce             	mov    %r9d,%esi
  40cde2:	44 89 d2             	mov    %r10d,%edx
  40cde5:	41 ff e0             	jmp    *%r8
  40cde8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cdef:	00 

000000000040cdf0 <mlx_int_param_MotionNotify>:
  40cdf0:	f3 0f 1e fa          	endbr64 
  40cdf4:	4c 8b 8a e8 00 00 00 	mov    0xe8(%rdx),%r9
  40cdfb:	44 8b 46 44          	mov    0x44(%rsi),%r8d
  40cdff:	31 c0                	xor    %eax,%eax
  40ce01:	8b 7e 40             	mov    0x40(%rsi),%edi
  40ce04:	48 8b 8a e0 00 00 00 	mov    0xe0(%rdx),%rcx
  40ce0b:	44 89 c6             	mov    %r8d,%esi
  40ce0e:	4c 89 ca             	mov    %r9,%rdx
  40ce11:	ff e1                	jmp    *%rcx
  40ce13:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40ce1a:	00 00 00 00 
  40ce1e:	66 90                	xchg   %ax,%ax

000000000040ce20 <mlx_int_param_generic>:
  40ce20:	f3 0f 1e fa          	endbr64 
  40ce24:	48 63 06             	movslq (%rsi),%rax
  40ce27:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  40ce2b:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
  40ce2f:	48 8b 50 50          	mov    0x50(%rax),%rdx
  40ce33:	48 8b 78 58          	mov    0x58(%rax),%rdi
  40ce37:	31 c0                	xor    %eax,%eax
  40ce39:	ff e2                	jmp    *%rdx
  40ce3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ce40 <mlx_int_param_KeyPress>:
  40ce40:	f3 0f 1e fa          	endbr64 
  40ce44:	55                   	push   %rbp
  40ce45:	31 c9                	xor    %ecx,%ecx
  40ce47:	53                   	push   %rbx
  40ce48:	48 83 ec 08          	sub    $0x8,%rsp
  40ce4c:	0f b6 76 54          	movzbl 0x54(%rsi),%esi
  40ce50:	48 8b 3f             	mov    (%rdi),%rdi
  40ce53:	48 8b 9a 80 00 00 00 	mov    0x80(%rdx),%rbx
  40ce5a:	48 8b aa 88 00 00 00 	mov    0x88(%rdx),%rbp
  40ce61:	31 d2                	xor    %edx,%edx
  40ce63:	e8 d8 52 ff ff       	call   402140 <XkbKeycodeToKeysym@plt>
  40ce68:	48 83 c4 08          	add    $0x8,%rsp
  40ce6c:	48 89 c7             	mov    %rax,%rdi
  40ce6f:	48 89 ee             	mov    %rbp,%rsi
  40ce72:	48 89 d9             	mov    %rbx,%rcx
  40ce75:	31 c0                	xor    %eax,%eax
  40ce77:	5b                   	pop    %rbx
  40ce78:	5d                   	pop    %rbp
  40ce79:	ff e1                	jmp    *%rcx
  40ce7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ce80 <mlx_int_param_KeyRelease>:
  40ce80:	f3 0f 1e fa          	endbr64 
  40ce84:	55                   	push   %rbp
  40ce85:	31 c9                	xor    %ecx,%ecx
  40ce87:	53                   	push   %rbx
  40ce88:	48 83 ec 08          	sub    $0x8,%rsp
  40ce8c:	0f b6 76 54          	movzbl 0x54(%rsi),%esi
  40ce90:	48 8b 3f             	mov    (%rdi),%rdi
  40ce93:	48 8b 9a 98 00 00 00 	mov    0x98(%rdx),%rbx
  40ce9a:	48 8b aa a0 00 00 00 	mov    0xa0(%rdx),%rbp
  40cea1:	31 d2                	xor    %edx,%edx
  40cea3:	e8 98 52 ff ff       	call   402140 <XkbKeycodeToKeysym@plt>
  40cea8:	48 83 c4 08          	add    $0x8,%rsp
  40ceac:	48 89 c7             	mov    %rax,%rdi
  40ceaf:	48 89 ee             	mov    %rbp,%rsi
  40ceb2:	48 89 d9             	mov    %rbx,%rcx
  40ceb5:	31 c0                	xor    %eax,%eax
  40ceb7:	5b                   	pop    %rbx
  40ceb8:	5d                   	pop    %rbp
  40ceb9:	ff e1                	jmp    *%rcx
  40cebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040cec0 <mlx_int_param_Expose>:
  40cec0:	f3 0f 1e fa          	endbr64 
  40cec4:	8b 46 38             	mov    0x38(%rsi),%eax
  40cec7:	85 c0                	test   %eax,%eax
  40cec9:	75 15                	jne    40cee0 <mlx_int_param_Expose+0x20>
  40cecb:	48 8b ba 78 01 00 00 	mov    0x178(%rdx),%rdi
  40ced2:	31 c0                	xor    %eax,%eax
  40ced4:	48 8b 92 70 01 00 00 	mov    0x170(%rdx),%rdx
  40cedb:	ff e2                	jmp    *%rdx
  40cedd:	0f 1f 00             	nopl   (%rax)
  40cee0:	c3                   	ret    
  40cee1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40cee8:	00 00 00 
  40ceeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040cef0 <mlx_int_set_win_event_mask>:
  40cef0:	f3 0f 1e fa          	endbr64 
  40cef4:	41 54                	push   %r12
  40cef6:	55                   	push   %rbp
  40cef7:	53                   	push   %rbx
  40cef8:	48 89 fb             	mov    %rdi,%rbx
  40cefb:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  40ceff:	4c 8b 67 30          	mov    0x30(%rdi),%r12
  40cf03:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40cf0a:	00 00 
  40cf0c:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40cf11:	31 c0                	xor    %eax,%eax
  40cf13:	48 89 e5             	mov    %rsp,%rbp
  40cf16:	4d 85 e4             	test   %r12,%r12
  40cf19:	74 47                	je     40cf62 <mlx_int_set_win_event_mask+0x72>
  40cf1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cf20:	49 8d 84 24 90 03 00 	lea    0x390(%r12),%rax
  40cf27:	00 
  40cf28:	49 8d 74 24 30       	lea    0x30(%r12),%rsi
  40cf2d:	31 d2                	xor    %edx,%edx
  40cf2f:	90                   	nop
  40cf30:	48 63 08             	movslq (%rax),%rcx
  40cf33:	48 83 e8 18          	sub    $0x18,%rax
  40cf37:	48 09 ca             	or     %rcx,%rdx
  40cf3a:	48 39 f0             	cmp    %rsi,%rax
  40cf3d:	75 f1                	jne    40cf30 <mlx_int_set_win_event_mask+0x40>
  40cf3f:	49 8b 34 24          	mov    (%r12),%rsi
  40cf43:	48 8b 3b             	mov    (%rbx),%rdi
  40cf46:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
  40cf4b:	48 89 e9             	mov    %rbp,%rcx
  40cf4e:	ba 00 08 00 00       	mov    $0x800,%edx
  40cf53:	e8 38 55 ff ff       	call   402490 <XChangeWindowAttributes@plt>
  40cf58:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  40cf5d:	4d 85 e4             	test   %r12,%r12
  40cf60:	75 be                	jne    40cf20 <mlx_int_set_win_event_mask+0x30>
  40cf62:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
  40cf67:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40cf6e:	00 00 
  40cf70:	75 0b                	jne    40cf7d <mlx_int_set_win_event_mask+0x8d>
  40cf72:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  40cf76:	31 c0                	xor    %eax,%eax
  40cf78:	5b                   	pop    %rbx
  40cf79:	5d                   	pop    %rbp
  40cf7a:	41 5c                	pop    %r12
  40cf7c:	c3                   	ret    
  40cf7d:	e8 4e 53 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40cf82:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40cf89:	00 00 00 
  40cf8c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040cf90 <mlx_hook>:
  40cf90:	f3 0f 1e fa          	endbr64 
  40cf94:	48 63 f6             	movslq %esi,%rsi
  40cf97:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
  40cf9b:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
  40cf9f:	48 89 48 50          	mov    %rcx,0x50(%rax)
  40cfa3:	4c 89 40 58          	mov    %r8,0x58(%rax)
  40cfa7:	89 50 48             	mov    %edx,0x48(%rax)
  40cfaa:	c3                   	ret    
  40cfab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040cfb0 <mlx_do_key_autorepeatoff>:
  40cfb0:	f3 0f 1e fa          	endbr64 
  40cfb4:	48 8b 3f             	mov    (%rdi),%rdi
  40cfb7:	e9 e4 50 ff ff       	jmp    4020a0 <XAutoRepeatOff@plt>
  40cfbc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040cfc0 <mlx_do_key_autorepeaton>:
  40cfc0:	f3 0f 1e fa          	endbr64 
  40cfc4:	48 8b 3f             	mov    (%rdi),%rdi
  40cfc7:	e9 94 51 ff ff       	jmp    402160 <XAutoRepeatOn@plt>
  40cfcc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040cfd0 <mlx_do_sync>:
  40cfd0:	f3 0f 1e fa          	endbr64 
  40cfd4:	48 8b 3f             	mov    (%rdi),%rdi
  40cfd7:	31 f6                	xor    %esi,%esi
  40cfd9:	e9 e2 52 ff ff       	jmp    4022c0 <XSync@plt>
  40cfde:	66 90                	xchg   %ax,%ax

000000000040cfe0 <mlx_destroy_image>:
  40cfe0:	f3 0f 1e fa          	endbr64 
  40cfe4:	55                   	push   %rbp
  40cfe5:	48 89 f5             	mov    %rsi,%rbp
  40cfe8:	53                   	push   %rbx
  40cfe9:	48 89 fb             	mov    %rdi,%rbx
  40cfec:	48 83 ec 08          	sub    $0x8,%rsp
  40cff0:	8b 46 28             	mov    0x28(%rsi),%eax
  40cff3:	83 e8 02             	sub    $0x2,%eax
  40cff6:	83 f8 01             	cmp    $0x1,%eax
  40cff9:	76 55                	jbe    40d050 <mlx_destroy_image+0x70>
  40cffb:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40cfff:	48 89 c7             	mov    %rax,%rdi
  40d002:	ff 50 60             	call   *0x60(%rax)
  40d005:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40d009:	48 8b 3b             	mov    (%rbx),%rdi
  40d00c:	e8 9f 53 ff ff       	call   4023b0 <XFreePixmap@plt>
  40d011:	48 8b 75 10          	mov    0x10(%rbp),%rsi
  40d015:	48 85 f6             	test   %rsi,%rsi
  40d018:	74 08                	je     40d022 <mlx_destroy_image+0x42>
  40d01a:	48 8b 3b             	mov    (%rbx),%rdi
  40d01d:	e8 ce 51 ff ff       	call   4021f0 <XFreeGC@plt>
  40d022:	48 89 ef             	mov    %rbp,%rdi
  40d025:	e8 56 51 ff ff       	call   402180 <free@plt>
  40d02a:	8b 43 50             	mov    0x50(%rbx),%eax
  40d02d:	85 c0                	test   %eax,%eax
  40d02f:	75 0f                	jne    40d040 <mlx_destroy_image+0x60>
  40d031:	48 83 c4 08          	add    $0x8,%rsp
  40d035:	5b                   	pop    %rbx
  40d036:	5d                   	pop    %rbp
  40d037:	c3                   	ret    
  40d038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d03f:	00 
  40d040:	48 8b 3b             	mov    (%rbx),%rdi
  40d043:	48 83 c4 08          	add    $0x8,%rsp
  40d047:	5b                   	pop    %rbx
  40d048:	5d                   	pop    %rbp
  40d049:	e9 62 52 ff ff       	jmp    4022b0 <XFlush@plt>
  40d04e:	66 90                	xchg   %ax,%ax
  40d050:	48 8b 3f             	mov    (%rdi),%rdi
  40d053:	48 8d 76 38          	lea    0x38(%rsi),%rsi
  40d057:	e8 e4 53 ff ff       	call   402440 <XShmDetach@plt>
  40d05c:	48 8b 7d 48          	mov    0x48(%rbp),%rdi
  40d060:	e8 fb 4f ff ff       	call   402060 <shmdt@plt>
  40d065:	eb 94                	jmp    40cffb <mlx_destroy_image+0x1b>
  40d067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40d06e:	00 00 

000000000040d070 <mlx_mouse_move>:
  40d070:	f3 0f 1e fa          	endbr64 
  40d074:	48 83 ec 10          	sub    $0x10,%rsp
  40d078:	48 8b 3f             	mov    (%rdi),%rdi
  40d07b:	45 31 c9             	xor    %r9d,%r9d
  40d07e:	45 31 c0             	xor    %r8d,%r8d
  40d081:	51                   	push   %rcx
  40d082:	31 c9                	xor    %ecx,%ecx
  40d084:	52                   	push   %rdx
  40d085:	48 8b 16             	mov    (%rsi),%rdx
  40d088:	31 f6                	xor    %esi,%esi
  40d08a:	6a 00                	push   $0x0
  40d08c:	e8 4f 52 ff ff       	call   4022e0 <XWarpPointer@plt>
  40d091:	31 c0                	xor    %eax,%eax
  40d093:	48 83 c4 28          	add    $0x28,%rsp
  40d097:	c3                   	ret    
  40d098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d09f:	00 

000000000040d0a0 <mlx_mouse_hide>:
  40d0a0:	f3 0f 1e fa          	endbr64 
  40d0a4:	41 55                	push   %r13
  40d0a6:	49 89 f5             	mov    %rsi,%r13
  40d0a9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  40d0af:	b9 01 00 00 00       	mov    $0x1,%ecx
  40d0b4:	41 54                	push   %r12
  40d0b6:	48 8d 15 17 c2 00 00 	lea    0xc217(%rip),%rdx        # 4192d4 <data.0>
  40d0bd:	55                   	push   %rbp
  40d0be:	53                   	push   %rbx
  40d0bf:	48 89 fb             	mov    %rdi,%rbx
  40d0c2:	48 83 ec 28          	sub    $0x28,%rsp
  40d0c6:	48 8b 36             	mov    (%rsi),%rsi
  40d0c9:	48 8b 3f             	mov    (%rdi),%rdi
  40d0cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40d0d3:	00 00 
  40d0d5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40d0da:	31 c0                	xor    %eax,%eax
  40d0dc:	e8 9f 51 ff ff       	call   402280 <XCreateBitmapFromData@plt>
  40d0e1:	48 89 e1             	mov    %rsp,%rcx
  40d0e4:	48 83 ec 08          	sub    $0x8,%rsp
  40d0e8:	48 8b 3b             	mov    (%rbx),%rdi
  40d0eb:	6a 00                	push   $0x0
  40d0ed:	45 31 c9             	xor    %r9d,%r9d
  40d0f0:	49 89 c8             	mov    %rcx,%r8
  40d0f3:	48 89 c2             	mov    %rax,%rdx
  40d0f6:	48 89 c6             	mov    %rax,%rsi
  40d0f9:	48 89 c5             	mov    %rax,%rbp
  40d0fc:	e8 df 50 ff ff       	call   4021e0 <XCreatePixmapCursor@plt>
  40d101:	49 8b 75 00          	mov    0x0(%r13),%rsi
  40d105:	48 8b 3b             	mov    (%rbx),%rdi
  40d108:	48 89 c2             	mov    %rax,%rdx
  40d10b:	49 89 c4             	mov    %rax,%r12
  40d10e:	e8 fd 51 ff ff       	call   402310 <XDefineCursor@plt>
  40d113:	48 8b 3b             	mov    (%rbx),%rdi
  40d116:	48 89 ee             	mov    %rbp,%rsi
  40d119:	e8 92 52 ff ff       	call   4023b0 <XFreePixmap@plt>
  40d11e:	48 8b 3b             	mov    (%rbx),%rdi
  40d121:	4c 89 e6             	mov    %r12,%rsi
  40d124:	e8 07 4f ff ff       	call   402030 <XFreeCursor@plt>
  40d129:	58                   	pop    %rax
  40d12a:	5a                   	pop    %rdx
  40d12b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40d130:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40d137:	00 00 
  40d139:	75 0d                	jne    40d148 <mlx_mouse_hide+0xa8>
  40d13b:	48 83 c4 28          	add    $0x28,%rsp
  40d13f:	31 c0                	xor    %eax,%eax
  40d141:	5b                   	pop    %rbx
  40d142:	5d                   	pop    %rbp
  40d143:	41 5c                	pop    %r12
  40d145:	41 5d                	pop    %r13
  40d147:	c3                   	ret    
  40d148:	e8 83 51 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40d14d:	0f 1f 00             	nopl   (%rax)

000000000040d150 <mlx_mouse_show>:
  40d150:	f3 0f 1e fa          	endbr64 
  40d154:	48 8b 36             	mov    (%rsi),%rsi
  40d157:	48 8b 3f             	mov    (%rdi),%rdi
  40d15a:	e9 11 52 ff ff       	jmp    402370 <XUndefineCursor@plt>
  40d15f:	90                   	nop

000000000040d160 <mlx_mouse_get_pos>:
  40d160:	f3 0f 1e fa          	endbr64 
  40d164:	48 83 ec 38          	sub    $0x38,%rsp
  40d168:	49 89 d0             	mov    %rdx,%r8
  40d16b:	49 89 c9             	mov    %rcx,%r9
  40d16e:	48 8b 36             	mov    (%rsi),%rsi
  40d171:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40d178:	00 00 
  40d17a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40d17f:	31 c0                	xor    %eax,%eax
  40d181:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  40d186:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
  40d18b:	48 83 ec 08          	sub    $0x8,%rsp
  40d18f:	48 8d 44 24 1c       	lea    0x1c(%rsp),%rax
  40d194:	48 8b 3f             	mov    (%rdi),%rdi
  40d197:	50                   	push   %rax
  40d198:	41 51                	push   %r9
  40d19a:	41 50                	push   %r8
  40d19c:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  40d1a1:	4c 8d 44 24 2c       	lea    0x2c(%rsp),%r8
  40d1a6:	e8 b5 51 ff ff       	call   402360 <XQueryPointer@plt>
  40d1ab:	48 83 c4 20          	add    $0x20,%rsp
  40d1af:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  40d1b4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40d1bb:	00 00 
  40d1bd:	75 05                	jne    40d1c4 <mlx_mouse_get_pos+0x64>
  40d1bf:	48 83 c4 38          	add    $0x38,%rsp
  40d1c3:	c3                   	ret    
  40d1c4:	e8 07 51 ff ff       	call   4022d0 <__stack_chk_fail@plt>
  40d1c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040d1d0 <mlx_destroy_display>:
  40d1d0:	f3 0f 1e fa          	endbr64 
  40d1d4:	48 8b 3f             	mov    (%rdi),%rdi
  40d1d7:	e9 e4 4f ff ff       	jmp    4021c0 <XCloseDisplay@plt>
  40d1dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040d1e0 <ft_bzero>:

#include "libft.h"
#include <stdint.h>

void	ft_bzero(void *p, size_t n)
{
  40d1e0:	55                   	push   %rbp
  40d1e1:	48 89 e5             	mov    %rsp,%rbp
  40d1e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d1e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	size_t	i;

	i = 0;
  40d1ec:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40d1f3:	00 
	while (n - i >= 8)
  40d1f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d1f8:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  40d1fc:	48 83 f8 08          	cmp    $0x8,%rax
  40d200:	0f 82 21 00 00 00    	jb     40d227 <ft_bzero+0x47>
	{
		*((uint64_t *)(p + i)) = 0;
  40d206:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d20a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40d20e:	48 c7 04 08 00 00 00 	movq   $0x0,(%rax,%rcx,1)
  40d215:	00 
		i += 8;
  40d216:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d21a:	48 83 c0 08          	add    $0x8,%rax
  40d21e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	while (n - i >= 8)
  40d222:	e9 cd ff ff ff       	jmp    40d1f4 <ft_bzero+0x14>
	}
	while (i < n)
  40d227:	e9 00 00 00 00       	jmp    40d22c <ft_bzero+0x4c>
  40d22c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d230:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40d234:	0f 83 1d 00 00 00    	jae    40d257 <ft_bzero+0x77>
	{
		*((char *)p + i) = 0;
  40d23a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d23e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40d242:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
		i++;
  40d246:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d24a:	48 83 c0 01          	add    $0x1,%rax
  40d24e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	while (i < n)
  40d252:	e9 d5 ff ff ff       	jmp    40d22c <ft_bzero+0x4c>
	}
}
  40d257:	5d                   	pop    %rbp
  40d258:	c3                   	ret    
  40d259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040d260 <ft_memcpy>:
#include "libft.h"
#include <stdint.h>
#include <xmmintrin.h>

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
  40d260:	55                   	push   %rbp
  40d261:	48 89 e5             	mov    %rsp,%rbp
  40d264:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d268:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d26c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	size_t	i;

	i = 0;
  40d270:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  40d277:	00 
	while (n - i >= 8)
  40d278:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d27c:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  40d280:	48 83 f8 08          	cmp    $0x8,%rax
  40d284:	0f 82 29 00 00 00    	jb     40d2b3 <ft_memcpy+0x53>
	{
		*((uint64_t *)(dest + i)) = *((uint64_t *)(src + i));
  40d28a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d28e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40d292:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
  40d296:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d29a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40d29e:	48 89 14 08          	mov    %rdx,(%rax,%rcx,1)
		i += 8;
  40d2a2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40d2a6:	48 83 c0 08          	add    $0x8,%rax
  40d2aa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	while (n - i >= 8)
  40d2ae:	e9 c5 ff ff ff       	jmp    40d278 <ft_memcpy+0x18>
	}
	while (i < n)
  40d2b3:	e9 00 00 00 00       	jmp    40d2b8 <ft_memcpy+0x58>
  40d2b8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40d2bc:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40d2c0:	0f 83 27 00 00 00    	jae    40d2ed <ft_memcpy+0x8d>
	{
		*((uint8_t *)(dest + i)) = *((uint8_t *)(src + i));
  40d2c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d2ca:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40d2ce:	8a 14 08             	mov    (%rax,%rcx,1),%dl
  40d2d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d2d5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40d2d9:	88 14 08             	mov    %dl,(%rax,%rcx,1)
		i++;
  40d2dc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40d2e0:	48 83 c0 01          	add    $0x1,%rax
  40d2e4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	while (i < n)
  40d2e8:	e9 cb ff ff ff       	jmp    40d2b8 <ft_memcpy+0x58>
	}
	return (dest);
  40d2ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d2f1:	5d                   	pop    %rbp
  40d2f2:	c3                   	ret    
  40d2f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40d2fa:	00 00 00 
  40d2fd:	0f 1f 00             	nopl   (%rax)

000000000040d300 <ft_memset>:
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *p, int c, size_t n)
{
  40d300:	55                   	push   %rbp
  40d301:	48 89 e5             	mov    %rsp,%rbp
  40d304:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d308:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40d30b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	char	*s;
	size_t	i;

	s = p;
  40d30f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d313:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	i = 0;
  40d317:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  40d31e:	00 
	while (i < n)
  40d31f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d323:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40d327:	0f 83 21 00 00 00    	jae    40d34e <ft_memset+0x4e>
	{
		s[i] = (char) c;
  40d32d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40d330:	88 c2                	mov    %al,%dl
  40d332:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40d336:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40d33a:	88 14 08             	mov    %dl,(%rax,%rcx,1)
		i++;
  40d33d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d341:	48 83 c0 01          	add    $0x1,%rax
  40d345:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	while (i < n)
  40d349:	e9 d1 ff ff ff       	jmp    40d31f <ft_memset+0x1f>
	}
	return (p);
  40d34e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d352:	5d                   	pop    %rbp
  40d353:	c3                   	ret    
  40d354:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40d35b:	00 00 00 
  40d35e:	66 90                	xchg   %ax,%ax

000000000040d360 <ft_strlen>:
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlen(const char *s)
{
  40d360:	55                   	push   %rbp
  40d361:	48 89 e5             	mov    %rsp,%rbp
  40d364:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	size_t	len;

	len = 0;
  40d368:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  40d36f:	00 
	while (s[len])
  40d370:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d374:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40d378:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  40d37c:	0f 84 11 00 00 00    	je     40d393 <ft_strlen+0x33>
		len++;
  40d382:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d386:	48 83 c0 01          	add    $0x1,%rax
  40d38a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	while (s[len])
  40d38e:	e9 dd ff ff ff       	jmp    40d370 <ft_strlen+0x10>
	return (len);
  40d393:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d397:	5d                   	pop    %rbp
  40d398:	c3                   	ret    
  40d399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040d3a0 <ft_strncmp>:
/* ************************************************************************** */

#include <stddef.h>

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
  40d3a0:	55                   	push   %rbp
  40d3a1:	48 89 e5             	mov    %rsp,%rbp
  40d3a4:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40d3a8:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40d3ac:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	const unsigned char	*us1 = (const unsigned char *) s1;
  40d3b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d3b4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	const unsigned char	*us2 = (const unsigned char *) s2;
  40d3b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d3bc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	size_t				i;

	i = 0;
  40d3c0:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40d3c7:	00 
	while (i < n && (us1[i] || us2[i]))
  40d3c8:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40d3cc:	31 c0                	xor    %eax,%eax
  40d3ce:	48 3b 4d e0          	cmp    -0x20(%rbp),%rcx
  40d3d2:	88 45 c7             	mov    %al,-0x39(%rbp)
  40d3d5:	0f 83 35 00 00 00    	jae    40d410 <ft_strncmp+0x70>
  40d3db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d3df:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40d3e3:	0f b6 0c 08          	movzbl (%rax,%rcx,1),%ecx
  40d3e7:	b0 01                	mov    $0x1,%al
  40d3e9:	83 f9 00             	cmp    $0x0,%ecx
  40d3ec:	88 45 c6             	mov    %al,-0x3a(%rbp)
  40d3ef:	0f 85 15 00 00 00    	jne    40d40a <ft_strncmp+0x6a>
  40d3f5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40d3f9:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40d3fd:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
  40d401:	83 f8 00             	cmp    $0x0,%eax
  40d404:	0f 95 c0             	setne  %al
  40d407:	88 45 c6             	mov    %al,-0x3a(%rbp)
  40d40a:	8a 45 c6             	mov    -0x3a(%rbp),%al
  40d40d:	88 45 c7             	mov    %al,-0x39(%rbp)
  40d410:	8a 45 c7             	mov    -0x39(%rbp),%al
  40d413:	a8 01                	test   $0x1,%al
  40d415:	0f 85 05 00 00 00    	jne    40d420 <ft_strncmp+0x80>
  40d41b:	e9 6e 00 00 00       	jmp    40d48e <ft_strncmp+0xee>
	{
		if (us1[i] < us2[i])
  40d420:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d424:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40d428:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
  40d42c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40d430:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40d434:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
  40d438:	39 c8                	cmp    %ecx,%eax
  40d43a:	0f 8d 0c 00 00 00    	jge    40d44c <ft_strncmp+0xac>
			return (-1);
  40d440:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  40d447:	e9 49 00 00 00       	jmp    40d495 <ft_strncmp+0xf5>
		else if (us1[i] > us2[i])
  40d44c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d450:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40d454:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
  40d458:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40d45c:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40d460:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
  40d464:	39 c8                	cmp    %ecx,%eax
  40d466:	0f 8e 0c 00 00 00    	jle    40d478 <ft_strncmp+0xd8>
			return (1);
  40d46c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40d473:	e9 1d 00 00 00       	jmp    40d495 <ft_strncmp+0xf5>
  40d478:	e9 00 00 00 00       	jmp    40d47d <ft_strncmp+0xdd>
		i += 1;
  40d47d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40d481:	48 83 c0 01          	add    $0x1,%rax
  40d485:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	while (i < n && (us1[i] || us2[i]))
  40d489:	e9 3a ff ff ff       	jmp    40d3c8 <ft_strncmp+0x28>
	}
	return (0);
  40d48e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
}
  40d495:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40d498:	5d                   	pop    %rbp
  40d499:	c3                   	ret    
  40d49a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040d4a0 <ft_calloc>:
#include "libft.h"
#include <stdint.h>
#include <stdlib.h>

void	*ft_calloc(size_t n, size_t size)
{
  40d4a0:	55                   	push   %rbp
  40d4a1:	48 89 e5             	mov    %rsp,%rbp
  40d4a4:	48 83 ec 20          	sub    $0x20,%rsp
  40d4a8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40d4ac:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
	void	*ptr;

	if (n * size == 0)
  40d4b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d4b4:	48 0f af 45 e8       	imul   -0x18(%rbp),%rax
  40d4b9:	48 83 f8 00          	cmp    $0x0,%rax
  40d4bd:	0f 85 12 00 00 00    	jne    40d4d5 <ft_calloc+0x35>
		return (malloc(0));
  40d4c3:	31 c0                	xor    %eax,%eax
  40d4c5:	89 c7                	mov    %eax,%edi
  40d4c7:	e8 44 4c ff ff       	call   402110 <malloc@plt>
  40d4cc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40d4d0:	e9 6c 00 00 00       	jmp    40d541 <ft_calloc+0xa1>
	if (SIZE_MAX / n < size)
  40d4d5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40d4dc:	31 c9                	xor    %ecx,%ecx
  40d4de:	89 ca                	mov    %ecx,%edx
  40d4e0:	48 f7 75 f0          	divq   -0x10(%rbp)
  40d4e4:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40d4e8:	0f 83 0d 00 00 00    	jae    40d4fb <ft_calloc+0x5b>
		return (NULL);
  40d4ee:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40d4f5:	00 
  40d4f6:	e9 46 00 00 00       	jmp    40d541 <ft_calloc+0xa1>
	ptr = malloc(n * size);
  40d4fb:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40d4ff:	48 0f af 7d e8       	imul   -0x18(%rbp),%rdi
  40d504:	e8 07 4c ff ff       	call   402110 <malloc@plt>
  40d509:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	if (!ptr)
  40d50d:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40d512:	0f 85 0d 00 00 00    	jne    40d525 <ft_calloc+0x85>
		return (NULL);
  40d518:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40d51f:	00 
  40d520:	e9 1c 00 00 00       	jmp    40d541 <ft_calloc+0xa1>
	ft_memset(ptr, 0, n * size);
  40d525:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40d529:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40d52d:	48 0f af 55 e8       	imul   -0x18(%rbp),%rdx
  40d532:	31 f6                	xor    %esi,%esi
  40d534:	e8 c7 fd ff ff       	call   40d300 <ft_memset>
	return (ptr);
  40d539:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40d53d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
}
  40d541:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d545:	48 83 c4 20          	add    $0x20,%rsp
  40d549:	5d                   	pop    %rbp
  40d54a:	c3                   	ret    
  40d54b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040d550 <ft_realloc>:
#include "libft.h"
#include <stddef.h>
#include <stdlib.h>

void	*ft_realloc(void *p, size_t on, size_t n)
{
  40d550:	55                   	push   %rbp
  40d551:	48 89 e5             	mov    %rsp,%rbp
  40d554:	48 83 ec 30          	sub    $0x30,%rsp
  40d558:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40d55c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40d560:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	void	*np;

	np = ft_calloc(1, n);
  40d564:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40d568:	bf 01 00 00 00       	mov    $0x1,%edi
  40d56d:	e8 2e ff ff ff       	call   40d4a0 <ft_calloc>
  40d572:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	if (!np)
  40d576:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40d57b:	0f 85 0d 00 00 00    	jne    40d58e <ft_realloc+0x3e>
		return (NULL);
  40d581:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40d588:	00 
  40d589:	e9 2d 00 00 00       	jmp    40d5bb <ft_realloc+0x6b>
	if (p)
  40d58e:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40d593:	0f 84 1a 00 00 00    	je     40d5b3 <ft_realloc+0x63>
	{
		ft_memcpy(np, p, on);
  40d599:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40d59d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40d5a1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40d5a5:	e8 b6 fc ff ff       	call   40d260 <ft_memcpy>
		free(p);
  40d5aa:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40d5ae:	e8 cd 4b ff ff       	call   402180 <free@plt>
	}
	return (np);
  40d5b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d5b7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
}
  40d5bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d5bf:	48 83 c4 30          	add    $0x30,%rsp
  40d5c3:	5d                   	pop    %rbp
  40d5c4:	c3                   	ret    
  40d5c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40d5cc:	00 00 00 
  40d5cf:	90                   	nop

000000000040d5d0 <ft_strdup>:

#include "libft.h"
#include <stdlib.h>

char	*ft_strdup(const char *s)
{
  40d5d0:	55                   	push   %rbp
  40d5d1:	48 89 e5             	mov    %rsp,%rbp
  40d5d4:	48 83 ec 30          	sub    $0x30,%rsp
  40d5d8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
	char	*dup;

	dup = malloc(ft_strlen(s) + 1);
  40d5dc:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40d5e0:	e8 7b fd ff ff       	call   40d360 <ft_strlen>
  40d5e5:	48 89 c7             	mov    %rax,%rdi
  40d5e8:	48 83 c7 01          	add    $0x1,%rdi
  40d5ec:	e8 1f 4b ff ff       	call   402110 <malloc@plt>
  40d5f1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (!dup)
  40d5f5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40d5fa:	0f 85 0d 00 00 00    	jne    40d60d <ft_strdup+0x3d>
		return (NULL);
  40d600:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40d607:	00 
  40d608:	e9 35 00 00 00       	jmp    40d642 <ft_strdup+0x72>
	ft_memcpy(dup, s, ft_strlen(s) + 1);
  40d60d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d611:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40d615:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d619:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40d61d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40d621:	e8 3a fd ff ff       	call   40d360 <ft_strlen>
  40d626:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40d62a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40d62e:	48 89 c2             	mov    %rax,%rdx
  40d631:	48 83 c2 01          	add    $0x1,%rdx
  40d635:	e8 26 fc ff ff       	call   40d260 <ft_memcpy>
	return (dup);
  40d63a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d63e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
}
  40d642:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d646:	48 83 c4 30          	add    $0x30,%rsp
  40d64a:	5d                   	pop    %rbp
  40d64b:	c3                   	ret    
  40d64c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040d650 <ft_printf>:
	(void) w;
	return (write(1, s, len));
}

int	ft_printf(const char *fmt, ...)
{
  40d650:	55                   	push   %rbp
  40d651:	48 89 e5             	mov    %rsp,%rbp
  40d654:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
  40d65b:	0f 29 bd 50 fe ff ff 	movaps %xmm7,-0x1b0(%rbp)
  40d662:	0f 29 b5 60 fe ff ff 	movaps %xmm6,-0x1a0(%rbp)
  40d669:	0f 29 ad 70 fe ff ff 	movaps %xmm5,-0x190(%rbp)
  40d670:	0f 29 a5 80 fe ff ff 	movaps %xmm4,-0x180(%rbp)
  40d677:	0f 29 9d 90 fe ff ff 	movaps %xmm3,-0x170(%rbp)
  40d67e:	0f 29 95 a0 fe ff ff 	movaps %xmm2,-0x160(%rbp)
  40d685:	0f 29 8d b0 fe ff ff 	movaps %xmm1,-0x150(%rbp)
  40d68c:	0f 29 85 c0 fe ff ff 	movaps %xmm0,-0x140(%rbp)
  40d693:	4c 89 8d d0 fe ff ff 	mov    %r9,-0x130(%rbp)
  40d69a:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
  40d6a1:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
  40d6a8:	48 89 95 e8 fe ff ff 	mov    %rdx,-0x118(%rbp)
  40d6af:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
  40d6b6:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
  40d6bd:	84 c0                	test   %al,%al
  40d6bf:	0f 84 67 00 00 00    	je     40d72c <ft_printf+0xdc>
  40d6c5:	0f 28 85 50 fe ff ff 	movaps -0x1b0(%rbp),%xmm0
  40d6cc:	0f 28 8d 60 fe ff ff 	movaps -0x1a0(%rbp),%xmm1
  40d6d3:	0f 28 95 70 fe ff ff 	movaps -0x190(%rbp),%xmm2
  40d6da:	0f 28 9d 80 fe ff ff 	movaps -0x180(%rbp),%xmm3
  40d6e1:	0f 28 a5 90 fe ff ff 	movaps -0x170(%rbp),%xmm4
  40d6e8:	0f 28 ad a0 fe ff ff 	movaps -0x160(%rbp),%xmm5
  40d6ef:	0f 28 b5 b0 fe ff ff 	movaps -0x150(%rbp),%xmm6
  40d6f6:	0f 28 bd c0 fe ff ff 	movaps -0x140(%rbp),%xmm7
  40d6fd:	0f 29 bd 30 ff ff ff 	movaps %xmm7,-0xd0(%rbp)
  40d704:	0f 29 b5 40 ff ff ff 	movaps %xmm6,-0xc0(%rbp)
  40d70b:	0f 29 ad 50 ff ff ff 	movaps %xmm5,-0xb0(%rbp)
  40d712:	0f 29 a5 60 ff ff ff 	movaps %xmm4,-0xa0(%rbp)
  40d719:	0f 29 9d 70 ff ff ff 	movaps %xmm3,-0x90(%rbp)
  40d720:	0f 29 55 80          	movaps %xmm2,-0x80(%rbp)
  40d724:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40d728:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
  40d72c:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  40d733:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
  40d73a:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
  40d741:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
  40d748:	48 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%rdi
  40d74f:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
  40d756:	4c 89 85 28 ff ff ff 	mov    %r8,-0xd8(%rbp)
  40d75d:	48 89 bd 20 ff ff ff 	mov    %rdi,-0xe0(%rbp)
  40d764:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
  40d76b:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  40d772:	48 89 8d 08 ff ff ff 	mov    %rcx,-0xf8(%rbp)
  40d779:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40d77d:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
	int			n;
	va_list		list;
	t_writer	writer;

	va_start(list, fmt);
  40d784:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40d788:	48 8d 45 10          	lea    0x10(%rbp),%rax
  40d78c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40d790:	c7 45 d4 30 00 00 00 	movl   $0x30,-0x2c(%rbp)
  40d797:	c7 45 d0 08 00 00 00 	movl   $0x8,-0x30(%rbp)
	writer = (t_writer){_printf_write, NULL};
  40d79e:	48 8d 05 3b 00 00 00 	lea    0x3b(%rip),%rax        # 40d7e0 <_printf_write>
  40d7a5:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40d7a9:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  40d7b0:	00 
  40d7b1:	0f 10 45 b0          	movups -0x50(%rbp),%xmm0
  40d7b5:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
	n = format(fmt, list, &writer);
  40d7b9:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40d7bd:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  40d7c1:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  40d7c5:	e8 e6 06 00 00       	call   40deb0 <format>
  40d7ca:	89 45 f4             	mov    %eax,-0xc(%rbp)
	va_end(list);
	return (n);
  40d7cd:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40d7d0:	48 81 c4 b0 01 00 00 	add    $0x1b0,%rsp
  40d7d7:	5d                   	pop    %rbp
  40d7d8:	c3                   	ret    
  40d7d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040d7e0 <_printf_write>:
{
  40d7e0:	55                   	push   %rbp
  40d7e1:	48 89 e5             	mov    %rsp,%rbp
  40d7e4:	48 83 ec 20          	sub    $0x20,%rsp
  40d7e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d7ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d7f0:	89 55 ec             	mov    %edx,-0x14(%rbp)
	return (write(1, s, len));
  40d7f3:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40d7f7:	48 63 55 ec          	movslq -0x14(%rbp),%rdx
  40d7fb:	bf 01 00 00 00       	mov    $0x1,%edi
  40d800:	e8 1b 4c ff ff       	call   402420 <write@plt>
  40d805:	48 83 c4 20          	add    $0x20,%rsp
  40d809:	5d                   	pop    %rbp
  40d80a:	c3                   	ret    
  40d80b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040d810 <ft_sprintf>:
	w->p += len;
	return (len);
}

int	ft_sprintf(char *buf, const char *fmt, ...)
{
  40d810:	55                   	push   %rbp
  40d811:	48 89 e5             	mov    %rsp,%rbp
  40d814:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
  40d81b:	0f 29 bd 50 fe ff ff 	movaps %xmm7,-0x1b0(%rbp)
  40d822:	0f 29 b5 60 fe ff ff 	movaps %xmm6,-0x1a0(%rbp)
  40d829:	0f 29 ad 70 fe ff ff 	movaps %xmm5,-0x190(%rbp)
  40d830:	0f 29 a5 80 fe ff ff 	movaps %xmm4,-0x180(%rbp)
  40d837:	0f 29 9d 90 fe ff ff 	movaps %xmm3,-0x170(%rbp)
  40d83e:	0f 29 95 a0 fe ff ff 	movaps %xmm2,-0x160(%rbp)
  40d845:	0f 29 8d b0 fe ff ff 	movaps %xmm1,-0x150(%rbp)
  40d84c:	0f 29 85 c0 fe ff ff 	movaps %xmm0,-0x140(%rbp)
  40d853:	4c 89 8d d0 fe ff ff 	mov    %r9,-0x130(%rbp)
  40d85a:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
  40d861:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
  40d868:	48 89 95 e8 fe ff ff 	mov    %rdx,-0x118(%rbp)
  40d86f:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
  40d876:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
  40d87d:	84 c0                	test   %al,%al
  40d87f:	0f 84 67 00 00 00    	je     40d8ec <ft_sprintf+0xdc>
  40d885:	0f 28 85 50 fe ff ff 	movaps -0x1b0(%rbp),%xmm0
  40d88c:	0f 28 8d 60 fe ff ff 	movaps -0x1a0(%rbp),%xmm1
  40d893:	0f 28 95 70 fe ff ff 	movaps -0x190(%rbp),%xmm2
  40d89a:	0f 28 9d 80 fe ff ff 	movaps -0x180(%rbp),%xmm3
  40d8a1:	0f 28 a5 90 fe ff ff 	movaps -0x170(%rbp),%xmm4
  40d8a8:	0f 28 ad a0 fe ff ff 	movaps -0x160(%rbp),%xmm5
  40d8af:	0f 28 b5 b0 fe ff ff 	movaps -0x150(%rbp),%xmm6
  40d8b6:	0f 28 bd c0 fe ff ff 	movaps -0x140(%rbp),%xmm7
  40d8bd:	0f 29 bd 30 ff ff ff 	movaps %xmm7,-0xd0(%rbp)
  40d8c4:	0f 29 b5 40 ff ff ff 	movaps %xmm6,-0xc0(%rbp)
  40d8cb:	0f 29 ad 50 ff ff ff 	movaps %xmm5,-0xb0(%rbp)
  40d8d2:	0f 29 a5 60 ff ff ff 	movaps %xmm4,-0xa0(%rbp)
  40d8d9:	0f 29 9d 70 ff ff ff 	movaps %xmm3,-0x90(%rbp)
  40d8e0:	0f 29 55 80          	movaps %xmm2,-0x80(%rbp)
  40d8e4:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40d8e8:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
  40d8ec:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  40d8f3:	48 8b 8d f8 fe ff ff 	mov    -0x108(%rbp),%rcx
  40d8fa:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
  40d901:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
  40d908:	48 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%rdi
  40d90f:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
  40d916:	4c 89 85 28 ff ff ff 	mov    %r8,-0xd8(%rbp)
  40d91d:	48 89 bd 20 ff ff ff 	mov    %rdi,-0xe0(%rbp)
  40d924:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
  40d92b:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  40d932:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  40d936:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40d93a:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
	int			n;
	va_list		list;
	t_writer	writer;

	va_start(list, fmt);
  40d941:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40d945:	48 8d 45 10          	lea    0x10(%rbp),%rax
  40d949:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40d94d:	c7 45 d4 30 00 00 00 	movl   $0x30,-0x2c(%rbp)
  40d954:	c7 45 d0 10 00 00 00 	movl   $0x10,-0x30(%rbp)
	writer = (t_writer){_sprintf_write, buf};
  40d95b:	48 8d 05 3e 00 00 00 	lea    0x3e(%rip),%rax        # 40d9a0 <_sprintf_write>
  40d962:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40d966:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d96a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40d96e:	0f 10 45 b0          	movups -0x50(%rbp),%xmm0
  40d972:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
	n = format(fmt, list, &writer);
  40d976:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40d97a:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  40d97e:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  40d982:	e8 29 05 00 00       	call   40deb0 <format>
  40d987:	89 45 ec             	mov    %eax,-0x14(%rbp)
	((char *) writer.p)[0] = '\0';
  40d98a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40d98e:	c6 00 00             	movb   $0x0,(%rax)
	va_end(list);
	return (n);
  40d991:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40d994:	48 81 c4 b0 01 00 00 	add    $0x1b0,%rsp
  40d99b:	5d                   	pop    %rbp
  40d99c:	c3                   	ret    
  40d99d:	0f 1f 00             	nopl   (%rax)

000000000040d9a0 <_sprintf_write>:
{
  40d9a0:	55                   	push   %rbp
  40d9a1:	48 89 e5             	mov    %rsp,%rbp
  40d9a4:	48 83 ec 20          	sub    $0x20,%rsp
  40d9a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d9ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d9b0:	89 55 ec             	mov    %edx,-0x14(%rbp)
	ft_memcpy(w->p, s, len);
  40d9b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d9b7:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40d9bb:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40d9bf:	48 63 55 ec          	movslq -0x14(%rbp),%rdx
  40d9c3:	e8 98 f8 ff ff       	call   40d260 <ft_memcpy>
	w->p += len;
  40d9c8:	8b 55 ec             	mov    -0x14(%rbp),%edx
  40d9cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d9cf:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40d9d3:	48 63 d2             	movslq %edx,%rdx
  40d9d6:	48 01 d1             	add    %rdx,%rcx
  40d9d9:	48 89 48 08          	mov    %rcx,0x8(%rax)
	return (len);
  40d9dd:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40d9e0:	48 83 c4 20          	add    $0x20,%rsp
  40d9e4:	5d                   	pop    %rbp
  40d9e5:	c3                   	ret    
  40d9e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40d9ed:	00 00 00 

000000000040d9f0 <handle_str>:
#include "../libft.h"
#include "printf_int.h"
#include <stdio.h>

int	handle_str(va_list list, const char **fmt, t_writer *w)
{
  40d9f0:	55                   	push   %rbp
  40d9f1:	48 89 e5             	mov    %rsp,%rbp
  40d9f4:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40d9fb:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40d9ff:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40da03:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	char	c;
	char	*str;

	if ((*fmt)[0] == 'c')
  40da07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40da0b:	48 8b 00             	mov    (%rax),%rax
  40da0e:	0f be 00             	movsbl (%rax),%eax
  40da11:	83 f8 63             	cmp    $0x63,%eax
  40da14:	0f 85 7e 00 00 00    	jne    40da98 <handle_str+0xa8>
	{
		c = va_arg(list, int);
  40da1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40da1e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40da22:	8b 00                	mov    (%rax),%eax
  40da24:	89 45 cc             	mov    %eax,-0x34(%rbp)
  40da27:	83 f8 28             	cmp    $0x28,%eax
  40da2a:	0f 87 1c 00 00 00    	ja     40da4c <handle_str+0x5c>
  40da30:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40da34:	8b 55 cc             	mov    -0x34(%rbp),%edx
  40da37:	48 63 c2             	movslq %edx,%rax
  40da3a:	48 03 41 10          	add    0x10(%rcx),%rax
  40da3e:	83 c2 08             	add    $0x8,%edx
  40da41:	89 11                	mov    %edx,(%rcx)
  40da43:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40da47:	e9 17 00 00 00       	jmp    40da63 <handle_str+0x73>
  40da4c:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40da50:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40da54:	48 89 d0             	mov    %rdx,%rax
  40da57:	48 83 c2 08          	add    $0x8,%rdx
  40da5b:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40da5f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40da63:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40da67:	8b 00                	mov    (%rax),%eax
  40da69:	88 45 df             	mov    %al,-0x21(%rbp)
		*fmt += 1;
  40da6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40da70:	48 8b 08             	mov    (%rax),%rcx
  40da73:	48 83 c1 01          	add    $0x1,%rcx
  40da77:	48 89 08             	mov    %rcx,(%rax)
		return (w->write(w, &c, 1));
  40da7a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40da7e:	48 8b 00             	mov    (%rax),%rax
  40da81:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40da85:	48 8d 75 df          	lea    -0x21(%rbp),%rsi
  40da89:	ba 01 00 00 00       	mov    $0x1,%edx
  40da8e:	ff d0                	call   *%rax
  40da90:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40da93:	e9 c0 00 00 00       	jmp    40db58 <handle_str+0x168>
	}
	else if ((*fmt)[0] == 's')
  40da98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40da9c:	48 8b 00             	mov    (%rax),%rax
  40da9f:	0f be 00             	movsbl (%rax),%eax
  40daa2:	83 f8 73             	cmp    $0x73,%eax
  40daa5:	0f 85 a1 00 00 00    	jne    40db4c <handle_str+0x15c>
	{
		*fmt += 1;
  40daab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40daaf:	48 8b 08             	mov    (%rax),%rcx
  40dab2:	48 83 c1 01          	add    $0x1,%rcx
  40dab6:	48 89 08             	mov    %rcx,(%rax)
		str = va_arg(list, char *);
  40dab9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40dabd:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40dac1:	8b 00                	mov    (%rax),%eax
  40dac3:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  40dac6:	83 f8 28             	cmp    $0x28,%eax
  40dac9:	0f 87 1c 00 00 00    	ja     40daeb <handle_str+0xfb>
  40dacf:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  40dad3:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  40dad6:	48 63 c2             	movslq %edx,%rax
  40dad9:	48 03 41 10          	add    0x10(%rcx),%rax
  40dadd:	83 c2 08             	add    $0x8,%edx
  40dae0:	89 11                	mov    %edx,(%rcx)
  40dae2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40dae6:	e9 17 00 00 00       	jmp    40db02 <handle_str+0x112>
  40daeb:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  40daef:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40daf3:	48 89 d0             	mov    %rdx,%rax
  40daf6:	48 83 c2 08          	add    $0x8,%rdx
  40dafa:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40dafe:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40db02:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  40db06:	48 8b 00             	mov    (%rax),%rax
  40db09:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
		return (w->write(w, str, ft_strlen(str)));
  40db0d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40db11:	48 8b 00             	mov    (%rax),%rax
  40db14:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  40db18:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40db1c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  40db20:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40db24:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  40db28:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40db2c:	e8 2f f8 ff ff       	call   40d360 <ft_strlen>
  40db31:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40db35:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40db39:	48 89 c1             	mov    %rax,%rcx
  40db3c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40db40:	89 ca                	mov    %ecx,%edx
  40db42:	ff d0                	call   *%rax
  40db44:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40db47:	e9 0c 00 00 00       	jmp    40db58 <handle_str+0x168>
  40db4c:	e9 00 00 00 00       	jmp    40db51 <handle_str+0x161>
	}
	return (0);
  40db51:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
}
  40db58:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40db5b:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  40db62:	5d                   	pop    %rbp
  40db63:	c3                   	ret    
  40db64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40db6b:	00 00 00 
  40db6e:	66 90                	xchg   %ax,%ax

000000000040db70 <handle_int>:
	*fmt += 1;
	return (i);
}

int	handle_int(va_list list, const char **fmt, t_writer *w)
{
  40db70:	55                   	push   %rbp
  40db71:	48 89 e5             	mov    %rsp,%rbp
  40db74:	48 83 ec 40          	sub    $0x40,%rsp
  40db78:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40db7c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40db80:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	t_fmt	f;
	char	*s2;

	ft_bzero(&f, sizeof(t_fmt));
  40db84:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40db88:	be 0c 00 00 00       	mov    $0xc,%esi
  40db8d:	e8 4e f6 ff ff       	call   40d1e0 <ft_bzero>
	s2 = (char *) *fmt;
  40db92:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40db96:	48 8b 00             	mov    (%rax),%rax
  40db99:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	while (!isflag(**fmt))
  40db9d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dba1:	48 8b 00             	mov    (%rax),%rax
  40dba4:	0f be 38             	movsbl (%rax),%edi
  40dba7:	e8 44 0f 00 00       	call   40eaf0 <isflag>
  40dbac:	34 ff                	xor    $0xff,%al
  40dbae:	a8 01                	test   $0x1,%al
  40dbb0:	0f 85 05 00 00 00    	jne    40dbbb <handle_int+0x4b>
  40dbb6:	e9 f4 00 00 00       	jmp    40dcaf <handle_int+0x13f>
	{
		if (**fmt == '#')
  40dbbb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dbbf:	48 8b 00             	mov    (%rax),%rax
  40dbc2:	0f be 00             	movsbl (%rax),%eax
  40dbc5:	83 f8 23             	cmp    $0x23,%eax
  40dbc8:	0f 85 09 00 00 00    	jne    40dbd7 <handle_int+0x67>
			f.prefix = true;
  40dbce:	c6 45 d0 01          	movb   $0x1,-0x30(%rbp)
  40dbd2:	e9 c5 00 00 00       	jmp    40dc9c <handle_int+0x12c>
		else if (**fmt == '+')
  40dbd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dbdb:	48 8b 00             	mov    (%rax),%rax
  40dbde:	0f be 00             	movsbl (%rax),%eax
  40dbe1:	83 f8 2b             	cmp    $0x2b,%eax
  40dbe4:	0f 85 09 00 00 00    	jne    40dbf3 <handle_int+0x83>
			f.sign = true;
  40dbea:	c6 45 d1 01          	movb   $0x1,-0x2f(%rbp)
  40dbee:	e9 a4 00 00 00       	jmp    40dc97 <handle_int+0x127>
		else if (**fmt == ' ')
  40dbf3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dbf7:	48 8b 00             	mov    (%rax),%rax
  40dbfa:	0f be 00             	movsbl (%rax),%eax
  40dbfd:	83 f8 20             	cmp    $0x20,%eax
  40dc00:	0f 85 09 00 00 00    	jne    40dc0f <handle_int+0x9f>
			f.space = true;
  40dc06:	c6 45 d2 01          	movb   $0x1,-0x2e(%rbp)
  40dc0a:	e9 83 00 00 00       	jmp    40dc92 <handle_int+0x122>
		else if (**fmt == '-')
  40dc0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dc13:	48 8b 00             	mov    (%rax),%rax
  40dc16:	0f be 00             	movsbl (%rax),%eax
  40dc19:	83 f8 2d             	cmp    $0x2d,%eax
  40dc1c:	0f 85 09 00 00 00    	jne    40dc2b <handle_int+0xbb>
			f.left_align = 1;
  40dc22:	c6 45 d8 01          	movb   $0x1,-0x28(%rbp)
  40dc26:	e9 62 00 00 00       	jmp    40dc8d <handle_int+0x11d>
		else if (**fmt == '0' && !f.pad_zero)
  40dc2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dc2f:	48 8b 00             	mov    (%rax),%rax
  40dc32:	0f be 00             	movsbl (%rax),%eax
  40dc35:	83 f8 30             	cmp    $0x30,%eax
  40dc38:	0f 85 13 00 00 00    	jne    40dc51 <handle_int+0xe1>
  40dc3e:	f6 45 d9 01          	testb  $0x1,-0x27(%rbp)
  40dc42:	0f 85 09 00 00 00    	jne    40dc51 <handle_int+0xe1>
			f.pad_zero = true;
  40dc48:	c6 45 d9 01          	movb   $0x1,-0x27(%rbp)
  40dc4c:	e9 37 00 00 00       	jmp    40dc88 <handle_int+0x118>
		else if (**fmt >= '0' && **fmt <= '9')
  40dc51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dc55:	48 8b 00             	mov    (%rax),%rax
  40dc58:	0f be 00             	movsbl (%rax),%eax
  40dc5b:	83 f8 30             	cmp    $0x30,%eax
  40dc5e:	0f 8c 1f 00 00 00    	jl     40dc83 <handle_int+0x113>
  40dc64:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dc68:	48 8b 00             	mov    (%rax),%rax
  40dc6b:	0f be 00             	movsbl (%rax),%eax
  40dc6e:	83 f8 39             	cmp    $0x39,%eax
  40dc71:	0f 8f 0c 00 00 00    	jg     40dc83 <handle_int+0x113>
			f.min_width = _parse_num(fmt);
  40dc77:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40dc7b:	e8 d0 00 00 00       	call   40dd50 <_parse_num>
  40dc80:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40dc83:	e9 00 00 00 00       	jmp    40dc88 <handle_int+0x118>
  40dc88:	e9 00 00 00 00       	jmp    40dc8d <handle_int+0x11d>
  40dc8d:	e9 00 00 00 00       	jmp    40dc92 <handle_int+0x122>
  40dc92:	e9 00 00 00 00       	jmp    40dc97 <handle_int+0x127>
  40dc97:	e9 00 00 00 00       	jmp    40dc9c <handle_int+0x12c>
		*fmt += 1;
  40dc9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dca0:	48 8b 08             	mov    (%rax),%rcx
  40dca3:	48 83 c1 01          	add    $0x1,%rcx
  40dca7:	48 89 08             	mov    %rcx,(%rax)
	while (!isflag(**fmt))
  40dcaa:	e9 ee fe ff ff       	jmp    40db9d <handle_int+0x2d>
	}
	if (!isflag(**fmt))
  40dcaf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dcb3:	48 8b 00             	mov    (%rax),%rax
  40dcb6:	0f be 38             	movsbl (%rax),%edi
  40dcb9:	e8 32 0e 00 00       	call   40eaf0 <isflag>
  40dcbe:	a8 01                	test   $0x1,%al
  40dcc0:	0f 85 4c 00 00 00    	jne    40dd12 <handle_int+0x1a2>
		return (w->write(w, "%", 1) + w->write(w, s2, (*fmt - s2)));
  40dcc6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dcca:	48 8b 00             	mov    (%rax),%rax
  40dccd:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40dcd1:	48 8d 35 33 3f 00 00 	lea    0x3f33(%rip),%rsi        # 411c0b <_IO_stdin_used+0x2c0b>
  40dcd8:	ba 01 00 00 00       	mov    $0x1,%edx
  40dcdd:	ff d0                	call   *%rax
  40dcdf:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40dce2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dce6:	48 8b 00             	mov    (%rax),%rax
  40dce9:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40dced:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40dcf1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40dcf5:	48 8b 09             	mov    (%rcx),%rcx
  40dcf8:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40dcfc:	48 29 d1             	sub    %rdx,%rcx
  40dcff:	89 ca                	mov    %ecx,%edx
  40dd01:	ff d0                	call   *%rax
  40dd03:	89 c1                	mov    %eax,%ecx
  40dd05:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  40dd08:	01 c8                	add    %ecx,%eax
  40dd0a:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40dd0d:	e9 2d 00 00 00       	jmp    40dd3f <handle_int+0x1cf>
	*fmt += 1;
  40dd12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dd16:	48 8b 08             	mov    (%rax),%rcx
  40dd19:	48 83 c1 01          	add    $0x1,%rcx
  40dd1d:	48 89 08             	mov    %rcx,(%rax)
	return (handle_number(list, (char *)*fmt - 1, &f, w));
  40dd20:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40dd24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dd28:	48 8b 30             	mov    (%rax),%rsi
  40dd2b:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
  40dd2f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40dd33:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  40dd37:	e8 f4 05 00 00       	call   40e330 <handle_number>
  40dd3c:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40dd3f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40dd42:	48 83 c4 40          	add    $0x40,%rsp
  40dd46:	5d                   	pop    %rbp
  40dd47:	c3                   	ret    
  40dd48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dd4f:	00 

000000000040dd50 <_parse_num>:
{
  40dd50:	55                   	push   %rbp
  40dd51:	48 89 e5             	mov    %rsp,%rbp
  40dd54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	i = 0;
  40dd58:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
	while (**fmt >= '0' && **fmt <= '9')
  40dd5f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40dd63:	48 8b 00             	mov    (%rax),%rax
  40dd66:	0f be 08             	movsbl (%rax),%ecx
  40dd69:	31 c0                	xor    %eax,%eax
  40dd6b:	83 f9 30             	cmp    $0x30,%ecx
  40dd6e:	88 45 f3             	mov    %al,-0xd(%rbp)
  40dd71:	0f 8c 13 00 00 00    	jl     40dd8a <_parse_num+0x3a>
  40dd77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40dd7b:	48 8b 00             	mov    (%rax),%rax
  40dd7e:	0f be 00             	movsbl (%rax),%eax
  40dd81:	83 f8 39             	cmp    $0x39,%eax
  40dd84:	0f 9e c0             	setle  %al
  40dd87:	88 45 f3             	mov    %al,-0xd(%rbp)
  40dd8a:	8a 45 f3             	mov    -0xd(%rbp),%al
  40dd8d:	a8 01                	test   $0x1,%al
  40dd8f:	0f 85 05 00 00 00    	jne    40dd9a <_parse_num+0x4a>
  40dd95:	e9 29 00 00 00       	jmp    40ddc3 <_parse_num+0x73>
		i = i * 10 + (**fmt - '0');
  40dd9a:	6b 45 f4 0a          	imul   $0xa,-0xc(%rbp),%eax
  40dd9e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40dda2:	48 8b 09             	mov    (%rcx),%rcx
  40dda5:	0f be 09             	movsbl (%rcx),%ecx
  40dda8:	83 e9 30             	sub    $0x30,%ecx
  40ddab:	01 c8                	add    %ecx,%eax
  40ddad:	89 45 f4             	mov    %eax,-0xc(%rbp)
		*fmt += 1;
  40ddb0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40ddb4:	48 8b 08             	mov    (%rax),%rcx
  40ddb7:	48 83 c1 01          	add    $0x1,%rcx
  40ddbb:	48 89 08             	mov    %rcx,(%rax)
	while (**fmt >= '0' && **fmt <= '9')
  40ddbe:	e9 9c ff ff ff       	jmp    40dd5f <_parse_num+0xf>
	*fmt += 1;
  40ddc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40ddc7:	48 8b 08             	mov    (%rax),%rcx
  40ddca:	48 83 c1 01          	add    $0x1,%rcx
  40ddce:	48 89 08             	mov    %rcx,(%rax)
	return (i);
  40ddd1:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40ddd4:	5d                   	pop    %rbp
  40ddd5:	c3                   	ret    
  40ddd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40dddd:	00 00 00 

000000000040dde0 <handle_flags>:

int	handle_flags(va_list list, const char **fmt, t_writer *w)
{
  40dde0:	55                   	push   %rbp
  40dde1:	48 89 e5             	mov    %rsp,%rbp
  40dde4:	48 83 ec 20          	sub    $0x20,%rsp
  40dde8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40ddec:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40ddf0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	if ((*fmt)[0] == '%' || (*fmt)[0] == '\0')
  40ddf4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40ddf8:	48 8b 00             	mov    (%rax),%rax
  40ddfb:	0f be 00             	movsbl (%rax),%eax
  40ddfe:	83 f8 25             	cmp    $0x25,%eax
  40de01:	0f 84 13 00 00 00    	je     40de1a <handle_flags+0x3a>
  40de07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40de0b:	48 8b 00             	mov    (%rax),%rax
  40de0e:	0f be 00             	movsbl (%rax),%eax
  40de11:	83 f8 00             	cmp    $0x0,%eax
  40de14:	0f 85 2f 00 00 00    	jne    40de49 <handle_flags+0x69>
	{
		*fmt += 1;
  40de1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40de1e:	48 8b 08             	mov    (%rax),%rcx
  40de21:	48 83 c1 01          	add    $0x1,%rcx
  40de25:	48 89 08             	mov    %rcx,(%rax)
		return (w->write(w, "%", 1));
  40de28:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40de2c:	48 8b 00             	mov    (%rax),%rax
  40de2f:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40de33:	48 8d 35 d1 3d 00 00 	lea    0x3dd1(%rip),%rsi        # 411c0b <_IO_stdin_used+0x2c0b>
  40de3a:	ba 01 00 00 00       	mov    $0x1,%edx
  40de3f:	ff d0                	call   *%rax
  40de41:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40de44:	e9 53 00 00 00       	jmp    40de9c <handle_flags+0xbc>
	}
	else if ((*fmt)[0] == 'c' || (*fmt)[0] == 's')
  40de49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40de4d:	48 8b 00             	mov    (%rax),%rax
  40de50:	0f be 00             	movsbl (%rax),%eax
  40de53:	83 f8 63             	cmp    $0x63,%eax
  40de56:	0f 84 13 00 00 00    	je     40de6f <handle_flags+0x8f>
  40de5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40de60:	48 8b 00             	mov    (%rax),%rax
  40de63:	0f be 00             	movsbl (%rax),%eax
  40de66:	83 f8 73             	cmp    $0x73,%eax
  40de69:	0f 85 19 00 00 00    	jne    40de88 <handle_flags+0xa8>
		return (handle_str(list, fmt, w));
  40de6f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40de73:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40de77:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40de7b:	e8 70 fb ff ff       	call   40d9f0 <handle_str>
  40de80:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40de83:	e9 14 00 00 00       	jmp    40de9c <handle_flags+0xbc>
	else
		return (handle_int(list, fmt, w));
  40de88:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40de8c:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40de90:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40de94:	e8 d7 fc ff ff       	call   40db70 <handle_int>
  40de99:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40de9c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40de9f:	48 83 c4 20          	add    $0x20,%rsp
  40dea3:	5d                   	pop    %rbp
  40dea4:	c3                   	ret    
  40dea5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40deac:	00 00 00 
  40deaf:	90                   	nop

000000000040deb0 <format>:

int	format(const char *fmt, va_list list, t_writer *w)
{
  40deb0:	55                   	push   %rbp
  40deb1:	48 89 e5             	mov    %rsp,%rbp
  40deb4:	48 83 ec 30          	sub    $0x30,%rsp
  40deb8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40debc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40dec0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	int	n;

	if (!fmt)
  40dec4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40dec9:	0f 85 0c 00 00 00    	jne    40dedb <format+0x2b>
		return (-1);
  40decf:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  40ded6:	e9 7f 00 00 00       	jmp    40df5a <format+0xaa>
	n = 0;
  40dedb:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
	while (*fmt)
  40dee2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40dee6:	80 38 00             	cmpb   $0x0,(%rax)
  40dee9:	0f 84 65 00 00 00    	je     40df54 <format+0xa4>
	{
		if (*fmt == '%')
  40deef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40def3:	0f be 00             	movsbl (%rax),%eax
  40def6:	83 f8 25             	cmp    $0x25,%eax
  40def9:	0f 85 28 00 00 00    	jne    40df27 <format+0x77>
		{
			fmt++;
  40deff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40df03:	48 83 c0 01          	add    $0x1,%rax
  40df07:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
			n += handle_flags(list, &fmt, w);
  40df0b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40df0f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40df13:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  40df17:	e8 c4 fe ff ff       	call   40dde0 <handle_flags>
  40df1c:	03 45 dc             	add    -0x24(%rbp),%eax
  40df1f:	89 45 dc             	mov    %eax,-0x24(%rbp)
		}
  40df22:	e9 28 00 00 00       	jmp    40df4f <format+0x9f>
		else
		{
			n += w->write(w, fmt, 1);
  40df27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40df2b:	48 8b 00             	mov    (%rax),%rax
  40df2e:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40df32:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40df36:	ba 01 00 00 00       	mov    $0x1,%edx
  40df3b:	ff d0                	call   *%rax
  40df3d:	03 45 dc             	add    -0x24(%rbp),%eax
  40df40:	89 45 dc             	mov    %eax,-0x24(%rbp)
			fmt++;
  40df43:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40df47:	48 83 c0 01          	add    $0x1,%rax
  40df4b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	while (*fmt)
  40df4f:	e9 8e ff ff ff       	jmp    40dee2 <format+0x32>
		}
	}
	return (n);
  40df54:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40df57:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40df5a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40df5d:	48 83 c4 30          	add    $0x30,%rsp
  40df61:	5d                   	pop    %rbp
  40df62:	c3                   	ret    
  40df63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40df6a:	00 00 00 
  40df6d:	0f 1f 00             	nopl   (%rax)

000000000040df70 <write_int>:
#include "../libft.h"
#include "printf_int.h"
#include <stdio.h>

int	write_int(t_fmt *fmt, int64_t i, t_writer *w)
{
  40df70:	55                   	push   %rbp
  40df71:	48 89 e5             	mov    %rsp,%rbp
  40df74:	48 83 ec 60          	sub    $0x60,%rsp
  40df78:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40df7c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40df80:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	int		n;
	int64_t	num;
	int		len;
	int		len2;

	n = 0;
  40df84:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
	if (i == 0)
  40df8b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40df90:	0f 85 61 00 00 00    	jne    40dff7 <write_int+0x87>
		return (write_rpad_sign(fmt, 1, i, w)
  40df96:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40df9a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40df9e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40dfa2:	be 01 00 00 00       	mov    $0x1,%esi
  40dfa7:	e8 64 07 00 00       	call   40e710 <write_rpad_sign>
  40dfac:	89 45 a0             	mov    %eax,-0x60(%rbp)
			+ w->write(w, "0", 1) + write_lpad_sign(fmt, 1, i, w));
  40dfaf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dfb3:	48 8b 00             	mov    (%rax),%rax
  40dfb6:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40dfba:	48 8d 35 ae 3b 00 00 	lea    0x3bae(%rip),%rsi        # 411b6f <_IO_stdin_used+0x2b6f>
  40dfc1:	ba 01 00 00 00       	mov    $0x1,%edx
  40dfc6:	ff d0                	call   *%rax
  40dfc8:	89 c1                	mov    %eax,%ecx
  40dfca:	8b 45 a0             	mov    -0x60(%rbp),%eax
  40dfcd:	01 c8                	add    %ecx,%eax
  40dfcf:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  40dfd2:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40dfd6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40dfda:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40dfde:	be 01 00 00 00       	mov    $0x1,%esi
  40dfe3:	e8 78 06 00 00       	call   40e660 <write_lpad_sign>
  40dfe8:	89 c1                	mov    %eax,%ecx
  40dfea:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  40dfed:	01 c8                	add    %ecx,%eax
		return (write_rpad_sign(fmt, 1, i, w)
  40dfef:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40dff2:	e9 e9 00 00 00       	jmp    40e0e0 <write_int+0x170>
	num = i;
  40dff7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40dffb:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	if (i < 0)
  40dfff:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e004:	0f 8d 0a 00 00 00    	jge    40e014 <write_int+0xa4>
		num = -i;
  40e00a:	31 c0                	xor    %eax,%eax
  40e00c:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  40e010:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	len = 0;
  40e014:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
	while (num > 0)
  40e01b:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  40e020:	0f 8e 40 00 00 00    	jle    40e066 <write_int+0xf6>
	{
		buf[len++] = "0123456789"[num % 10];
  40e026:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40e02a:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40e02f:	48 99                	cqto   
  40e031:	48 f7 f9             	idiv   %rcx
  40e034:	48 8d 05 d2 3b 00 00 	lea    0x3bd2(%rip),%rax        # 411c0d <_IO_stdin_used+0x2c0d>
  40e03b:	8a 0c 10             	mov    (%rax,%rdx,1),%cl
  40e03e:	8b 45 ac             	mov    -0x54(%rbp),%eax
  40e041:	89 c2                	mov    %eax,%edx
  40e043:	83 c2 01             	add    $0x1,%edx
  40e046:	89 55 ac             	mov    %edx,-0x54(%rbp)
  40e049:	48 98                	cltq   
  40e04b:	88 4c 05 c0          	mov    %cl,-0x40(%rbp,%rax,1)
		num /= 10;
  40e04f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40e053:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40e058:	48 99                	cqto   
  40e05a:	48 f7 f9             	idiv   %rcx
  40e05d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	while (num > 0)
  40e061:	e9 b5 ff ff ff       	jmp    40e01b <write_int+0xab>
	}
	len2 = len;
  40e066:	8b 45 ac             	mov    -0x54(%rbp),%eax
  40e069:	89 45 a8             	mov    %eax,-0x58(%rbp)
	n += write_rpad_sign(fmt, len, i, w);
  40e06c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e070:	8b 75 ac             	mov    -0x54(%rbp),%esi
  40e073:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40e077:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40e07b:	e8 90 06 00 00       	call   40e710 <write_rpad_sign>
  40e080:	03 45 bc             	add    -0x44(%rbp),%eax
  40e083:	89 45 bc             	mov    %eax,-0x44(%rbp)
	while (--len >= 0)
  40e086:	8b 45 ac             	mov    -0x54(%rbp),%eax
  40e089:	83 c0 ff             	add    $0xffffffff,%eax
  40e08c:	89 45 ac             	mov    %eax,-0x54(%rbp)
  40e08f:	83 f8 00             	cmp    $0x0,%eax
  40e092:	0f 8c 28 00 00 00    	jl     40e0c0 <write_int+0x150>
		n += w->write(w, &buf[len], 1);
  40e098:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e09c:	48 8b 00             	mov    (%rax),%rax
  40e09f:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e0a3:	48 63 4d ac          	movslq -0x54(%rbp),%rcx
  40e0a7:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  40e0ab:	48 01 ce             	add    %rcx,%rsi
  40e0ae:	ba 01 00 00 00       	mov    $0x1,%edx
  40e0b3:	ff d0                	call   *%rax
  40e0b5:	03 45 bc             	add    -0x44(%rbp),%eax
  40e0b8:	89 45 bc             	mov    %eax,-0x44(%rbp)
	while (--len >= 0)
  40e0bb:	e9 c6 ff ff ff       	jmp    40e086 <write_int+0x116>
	n += write_lpad_sign(fmt, len2, i, w);
  40e0c0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e0c4:	8b 75 a8             	mov    -0x58(%rbp),%esi
  40e0c7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40e0cb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40e0cf:	e8 8c 05 00 00       	call   40e660 <write_lpad_sign>
  40e0d4:	03 45 bc             	add    -0x44(%rbp),%eax
  40e0d7:	89 45 bc             	mov    %eax,-0x44(%rbp)
	return (n);
  40e0da:	8b 45 bc             	mov    -0x44(%rbp),%eax
  40e0dd:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e0e0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e0e3:	48 83 c4 60          	add    $0x60,%rsp
  40e0e7:	5d                   	pop    %rbp
  40e0e8:	c3                   	ret    
  40e0e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040e0f0 <write_uint>:

int	write_uint(t_fmt *fmt, uint64_t i, char *base, t_writer *w)
{
  40e0f0:	55                   	push   %rbp
  40e0f1:	48 89 e5             	mov    %rsp,%rbp
  40e0f4:	48 83 ec 70          	sub    $0x70,%rsp
  40e0f8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e0fc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40e100:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  40e104:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
	const int	base_len = ft_strlen(base);
  40e108:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e10c:	e8 4f f2 ff ff       	call   40d360 <ft_strlen>
  40e111:	89 45 d4             	mov    %eax,-0x2c(%rbp)
	char		buf[32];
	int			n;
	int			len;
	int			len2;

	n = 0;
  40e114:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
	if (i == 0)
  40e11b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e120:	0f 85 21 00 00 00    	jne    40e147 <write_uint+0x57>
		return (w->write(w, "0", 1));
  40e126:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e12a:	48 8b 00             	mov    (%rax),%rax
  40e12d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e131:	48 8d 35 37 3a 00 00 	lea    0x3a37(%rip),%rsi        # 411b6f <_IO_stdin_used+0x2b6f>
  40e138:	ba 01 00 00 00       	mov    $0x1,%edx
  40e13d:	ff d0                	call   *%rax
  40e13f:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e142:	e9 48 01 00 00       	jmp    40e28f <write_uint+0x19f>
	if (fmt->prefix && base[10] == 'a')
  40e147:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e14b:	f6 00 01             	testb  $0x1,(%rax)
  40e14e:	0f 84 35 00 00 00    	je     40e189 <write_uint+0x99>
  40e154:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e158:	0f be 40 0a          	movsbl 0xa(%rax),%eax
  40e15c:	83 f8 61             	cmp    $0x61,%eax
  40e15f:	0f 85 24 00 00 00    	jne    40e189 <write_uint+0x99>
		n += w->write(w, "0x", 2);
  40e165:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e169:	48 8b 00             	mov    (%rax),%rax
  40e16c:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e170:	48 8d 35 a1 3a 00 00 	lea    0x3aa1(%rip),%rsi        # 411c18 <_IO_stdin_used+0x2c18>
  40e177:	ba 02 00 00 00       	mov    $0x2,%edx
  40e17c:	ff d0                	call   *%rax
  40e17e:	03 45 ac             	add    -0x54(%rbp),%eax
  40e181:	89 45 ac             	mov    %eax,-0x54(%rbp)
  40e184:	e9 42 00 00 00       	jmp    40e1cb <write_uint+0xdb>
	else if (fmt->prefix && base[10] == 'A')
  40e189:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e18d:	f6 00 01             	testb  $0x1,(%rax)
  40e190:	0f 84 30 00 00 00    	je     40e1c6 <write_uint+0xd6>
  40e196:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e19a:	0f be 40 0a          	movsbl 0xa(%rax),%eax
  40e19e:	83 f8 41             	cmp    $0x41,%eax
  40e1a1:	0f 85 1f 00 00 00    	jne    40e1c6 <write_uint+0xd6>
		n += w->write(w, "0X", 2);
  40e1a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e1ab:	48 8b 00             	mov    (%rax),%rax
  40e1ae:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e1b2:	48 8d 35 62 3a 00 00 	lea    0x3a62(%rip),%rsi        # 411c1b <_IO_stdin_used+0x2c1b>
  40e1b9:	ba 02 00 00 00       	mov    $0x2,%edx
  40e1be:	ff d0                	call   *%rax
  40e1c0:	03 45 ac             	add    -0x54(%rbp),%eax
  40e1c3:	89 45 ac             	mov    %eax,-0x54(%rbp)
  40e1c6:	e9 00 00 00 00       	jmp    40e1cb <write_uint+0xdb>
	len = 0;
  40e1cb:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
	while (i > 0)
  40e1d2:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e1d7:	0f 86 43 00 00 00    	jbe    40e220 <write_uint+0x130>
	{
		buf[len++] = base[i % base_len];
  40e1dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e1e1:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  40e1e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e1e9:	48 63 4d d4          	movslq -0x2c(%rbp),%rcx
  40e1ed:	31 d2                	xor    %edx,%edx
  40e1ef:	48 f7 f1             	div    %rcx
  40e1f2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40e1f6:	8a 0c 10             	mov    (%rax,%rdx,1),%cl
  40e1f9:	8b 45 a8             	mov    -0x58(%rbp),%eax
  40e1fc:	89 c2                	mov    %eax,%edx
  40e1fe:	83 c2 01             	add    $0x1,%edx
  40e201:	89 55 a8             	mov    %edx,-0x58(%rbp)
  40e204:	48 98                	cltq   
  40e206:	88 4c 05 b0          	mov    %cl,-0x50(%rbp,%rax,1)
		i /= base_len;
  40e20a:	48 63 4d d4          	movslq -0x2c(%rbp),%rcx
  40e20e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e212:	31 d2                	xor    %edx,%edx
  40e214:	48 f7 f1             	div    %rcx
  40e217:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	while (i > 0)
  40e21b:	e9 b2 ff ff ff       	jmp    40e1d2 <write_uint+0xe2>
	}
	len2 = len;
  40e220:	8b 45 a8             	mov    -0x58(%rbp),%eax
  40e223:	89 45 a4             	mov    %eax,-0x5c(%rbp)
	n += write_rpad(fmt, len, w);
  40e226:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e22a:	8b 75 a8             	mov    -0x58(%rbp),%esi
  40e22d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e231:	e8 aa 07 00 00       	call   40e9e0 <write_rpad>
  40e236:	03 45 ac             	add    -0x54(%rbp),%eax
  40e239:	89 45 ac             	mov    %eax,-0x54(%rbp)
	while (--len >= 0)
  40e23c:	8b 45 a8             	mov    -0x58(%rbp),%eax
  40e23f:	83 c0 ff             	add    $0xffffffff,%eax
  40e242:	89 45 a8             	mov    %eax,-0x58(%rbp)
  40e245:	83 f8 00             	cmp    $0x0,%eax
  40e248:	0f 8c 28 00 00 00    	jl     40e276 <write_uint+0x186>
		n += w->write(w, &buf[len], 1);
  40e24e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e252:	48 8b 00             	mov    (%rax),%rax
  40e255:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e259:	48 63 4d a8          	movslq -0x58(%rbp),%rcx
  40e25d:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
  40e261:	48 01 ce             	add    %rcx,%rsi
  40e264:	ba 01 00 00 00       	mov    $0x1,%edx
  40e269:	ff d0                	call   *%rax
  40e26b:	03 45 ac             	add    -0x54(%rbp),%eax
  40e26e:	89 45 ac             	mov    %eax,-0x54(%rbp)
	while (--len >= 0)
  40e271:	e9 c6 ff ff ff       	jmp    40e23c <write_uint+0x14c>
	return (n += write_lpad(fmt, len2, w));
  40e276:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e27a:	8b 75 a4             	mov    -0x5c(%rbp),%esi
  40e27d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e281:	e8 aa 06 00 00       	call   40e930 <write_lpad>
  40e286:	03 45 ac             	add    -0x54(%rbp),%eax
  40e289:	89 45 ac             	mov    %eax,-0x54(%rbp)
  40e28c:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e28f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e292:	48 83 c4 70          	add    $0x70,%rsp
  40e296:	5d                   	pop    %rbp
  40e297:	c3                   	ret    
  40e298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e29f:	00 

000000000040e2a0 <write_ptr>:

int	write_ptr(t_fmt *fmt, uintptr_t ptr, t_writer *w)
{
  40e2a0:	55                   	push   %rbp
  40e2a1:	48 89 e5             	mov    %rsp,%rbp
  40e2a4:	48 83 ec 30          	sub    $0x30,%rsp
  40e2a8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e2ac:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40e2b0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	if (ptr == 0)
  40e2b4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e2b9:	0f 85 21 00 00 00    	jne    40e2e0 <write_ptr+0x40>
		return (w->write(w, "(nil)", 5));
  40e2bf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e2c3:	48 8b 00             	mov    (%rax),%rax
  40e2c6:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e2ca:	48 8d 35 4d 39 00 00 	lea    0x394d(%rip),%rsi        # 411c1e <_IO_stdin_used+0x2c1e>
  40e2d1:	ba 05 00 00 00       	mov    $0x5,%edx
  40e2d6:	ff d0                	call   *%rax
  40e2d8:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e2db:	e9 3e 00 00 00       	jmp    40e31e <write_ptr+0x7e>
	return (w->write(w, "0x", 2) + write_uint(fmt, ptr, "0123456789abcdef", w));
  40e2e0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e2e4:	48 8b 00             	mov    (%rax),%rax
  40e2e7:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e2eb:	48 8d 35 26 39 00 00 	lea    0x3926(%rip),%rsi        # 411c18 <_IO_stdin_used+0x2c18>
  40e2f2:	ba 02 00 00 00       	mov    $0x2,%edx
  40e2f7:	ff d0                	call   *%rax
  40e2f9:	89 45 dc             	mov    %eax,-0x24(%rbp)
  40e2fc:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e300:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40e304:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40e308:	48 8d 15 15 39 00 00 	lea    0x3915(%rip),%rdx        # 411c24 <_IO_stdin_used+0x2c24>
  40e30f:	e8 dc fd ff ff       	call   40e0f0 <write_uint>
  40e314:	89 c1                	mov    %eax,%ecx
  40e316:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40e319:	01 c8                	add    %ecx,%eax
  40e31b:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e31e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e321:	48 83 c4 30          	add    $0x30,%rsp
  40e325:	5d                   	pop    %rbp
  40e326:	c3                   	ret    
  40e327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e32e:	00 00 

000000000040e330 <handle_number>:

int	handle_number(va_list list, char *s, t_fmt *fmt, t_writer *w)
{
  40e330:	55                   	push   %rbp
  40e331:	48 89 e5             	mov    %rsp,%rbp
  40e334:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40e33b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e33f:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40e343:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  40e347:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
	int	n;

	n = 0;
  40e34b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
	if (s[0] == 'x')
  40e352:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e356:	0f be 00             	movsbl (%rax),%eax
  40e359:	83 f8 78             	cmp    $0x78,%eax
  40e35c:	0f 85 75 00 00 00    	jne    40e3d7 <handle_number+0xa7>
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789abcdef", w));
  40e362:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e366:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40e36a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e36e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40e372:	8b 00                	mov    (%rax),%eax
  40e374:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40e377:	83 f8 28             	cmp    $0x28,%eax
  40e37a:	0f 87 1c 00 00 00    	ja     40e39c <handle_number+0x6c>
  40e380:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40e384:	8b 55 d0             	mov    -0x30(%rbp),%edx
  40e387:	48 63 c2             	movslq %edx,%rax
  40e38a:	48 03 41 10          	add    0x10(%rcx),%rax
  40e38e:	83 c2 08             	add    $0x8,%edx
  40e391:	89 11                	mov    %edx,(%rcx)
  40e393:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40e397:	e9 17 00 00 00       	jmp    40e3b3 <handle_number+0x83>
  40e39c:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40e3a0:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40e3a4:	48 89 d0             	mov    %rdx,%rax
  40e3a7:	48 83 c2 08          	add    $0x8,%rdx
  40e3ab:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40e3af:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40e3b3:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40e3b7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40e3bb:	8b 00                	mov    (%rax),%eax
  40e3bd:	89 c6                	mov    %eax,%esi
  40e3bf:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40e3c3:	48 8d 15 5a 38 00 00 	lea    0x385a(%rip),%rdx        # 411c24 <_IO_stdin_used+0x2c24>
  40e3ca:	e8 21 fd ff ff       	call   40e0f0 <write_uint>
  40e3cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e3d2:	e9 73 02 00 00       	jmp    40e64a <handle_number+0x31a>
	else if (s[0] == 'X')
  40e3d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e3db:	0f be 00             	movsbl (%rax),%eax
  40e3de:	83 f8 58             	cmp    $0x58,%eax
  40e3e1:	0f 85 75 00 00 00    	jne    40e45c <handle_number+0x12c>
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789ABCDEF", w));
  40e3e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e3eb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40e3ef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e3f3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40e3f7:	8b 00                	mov    (%rax),%eax
  40e3f9:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  40e3fc:	83 f8 28             	cmp    $0x28,%eax
  40e3ff:	0f 87 1c 00 00 00    	ja     40e421 <handle_number+0xf1>
  40e405:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  40e409:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  40e40c:	48 63 c2             	movslq %edx,%rax
  40e40f:	48 03 41 10          	add    0x10(%rcx),%rax
  40e413:	83 c2 08             	add    $0x8,%edx
  40e416:	89 11                	mov    %edx,(%rcx)
  40e418:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  40e41c:	e9 17 00 00 00       	jmp    40e438 <handle_number+0x108>
  40e421:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  40e425:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40e429:	48 89 d0             	mov    %rdx,%rax
  40e42c:	48 83 c2 08          	add    $0x8,%rdx
  40e430:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40e434:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  40e438:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  40e43c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40e440:	8b 00                	mov    (%rax),%eax
  40e442:	89 c6                	mov    %eax,%esi
  40e444:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40e448:	48 8d 15 e6 37 00 00 	lea    0x37e6(%rip),%rdx        # 411c35 <_IO_stdin_used+0x2c35>
  40e44f:	e8 9c fc ff ff       	call   40e0f0 <write_uint>
  40e454:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e457:	e9 ee 01 00 00       	jmp    40e64a <handle_number+0x31a>
	else if (s[0] == 'u')
  40e45c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e460:	0f be 00             	movsbl (%rax),%eax
  40e463:	83 f8 75             	cmp    $0x75,%eax
  40e466:	0f 85 7e 00 00 00    	jne    40e4ea <handle_number+0x1ba>
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789", w));
  40e46c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e470:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  40e474:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e478:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  40e47c:	8b 00                	mov    (%rax),%eax
  40e47e:	89 45 94             	mov    %eax,-0x6c(%rbp)
  40e481:	83 f8 28             	cmp    $0x28,%eax
  40e484:	0f 87 1f 00 00 00    	ja     40e4a9 <handle_number+0x179>
  40e48a:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  40e48e:	8b 55 94             	mov    -0x6c(%rbp),%edx
  40e491:	48 63 c2             	movslq %edx,%rax
  40e494:	48 03 41 10          	add    0x10(%rcx),%rax
  40e498:	83 c2 08             	add    $0x8,%edx
  40e49b:	89 11                	mov    %edx,(%rcx)
  40e49d:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  40e4a4:	e9 1a 00 00 00       	jmp    40e4c3 <handle_number+0x193>
  40e4a9:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  40e4ad:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40e4b1:	48 89 d0             	mov    %rdx,%rax
  40e4b4:	48 83 c2 08          	add    $0x8,%rdx
  40e4b8:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40e4bc:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  40e4c3:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40e4c7:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  40e4ce:	8b 00                	mov    (%rax),%eax
  40e4d0:	89 c6                	mov    %eax,%esi
  40e4d2:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40e4d6:	48 8d 15 30 37 00 00 	lea    0x3730(%rip),%rdx        # 411c0d <_IO_stdin_used+0x2c0d>
  40e4dd:	e8 0e fc ff ff       	call   40e0f0 <write_uint>
  40e4e2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e4e5:	e9 60 01 00 00       	jmp    40e64a <handle_number+0x31a>
	else if (s[0] == 'd' || s[0] == 'i')
  40e4ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e4ee:	0f be 00             	movsbl (%rax),%eax
  40e4f1:	83 f8 64             	cmp    $0x64,%eax
  40e4f4:	0f 84 10 00 00 00    	je     40e50a <handle_number+0x1da>
  40e4fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e4fe:	0f be 00             	movsbl (%rax),%eax
  40e501:	83 f8 69             	cmp    $0x69,%eax
  40e504:	0f 85 8b 00 00 00    	jne    40e595 <handle_number+0x265>
		return (write_int(fmt, va_arg(list, int32_t), w));
  40e50a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e50e:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
  40e515:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e519:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40e520:	8b 00                	mov    (%rax),%eax
  40e522:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  40e528:	83 f8 28             	cmp    $0x28,%eax
  40e52b:	0f 87 25 00 00 00    	ja     40e556 <handle_number+0x226>
  40e531:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  40e538:	8b 95 74 ff ff ff    	mov    -0x8c(%rbp),%edx
  40e53e:	48 63 c2             	movslq %edx,%rax
  40e541:	48 03 41 10          	add    0x10(%rcx),%rax
  40e545:	83 c2 08             	add    $0x8,%edx
  40e548:	89 11                	mov    %edx,(%rcx)
  40e54a:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40e551:	e9 1d 00 00 00       	jmp    40e573 <handle_number+0x243>
  40e556:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  40e55d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40e561:	48 89 d0             	mov    %rdx,%rax
  40e564:	48 83 c2 08          	add    $0x8,%rdx
  40e568:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40e56c:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40e573:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  40e57a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40e581:	48 63 30             	movslq (%rax),%rsi
  40e584:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e588:	e8 e3 f9 ff ff       	call   40df70 <write_int>
  40e58d:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e590:	e9 b5 00 00 00       	jmp    40e64a <handle_number+0x31a>
	else if (s[0] == 'p')
  40e595:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e599:	0f be 00             	movsbl (%rax),%eax
  40e59c:	83 f8 70             	cmp    $0x70,%eax
  40e59f:	0f 85 8b 00 00 00    	jne    40e630 <handle_number+0x300>
		return (write_ptr(fmt, va_arg(list, uintptr_t), w));
  40e5a5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e5a9:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  40e5b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e5b4:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40e5bb:	8b 00                	mov    (%rax),%eax
  40e5bd:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  40e5c3:	83 f8 28             	cmp    $0x28,%eax
  40e5c6:	0f 87 25 00 00 00    	ja     40e5f1 <handle_number+0x2c1>
  40e5cc:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  40e5d3:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  40e5d9:	48 63 c2             	movslq %edx,%rax
  40e5dc:	48 03 41 10          	add    0x10(%rcx),%rax
  40e5e0:	83 c2 08             	add    $0x8,%edx
  40e5e3:	89 11                	mov    %edx,(%rcx)
  40e5e5:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40e5ec:	e9 1d 00 00 00       	jmp    40e60e <handle_number+0x2de>
  40e5f1:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  40e5f8:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40e5fc:	48 89 d0             	mov    %rdx,%rax
  40e5ff:	48 83 c2 08          	add    $0x8,%rdx
  40e603:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40e607:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40e60e:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
  40e615:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  40e61c:	48 8b 30             	mov    (%rax),%rsi
  40e61f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e623:	e8 78 fc ff ff       	call   40e2a0 <write_ptr>
  40e628:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e62b:	e9 1a 00 00 00       	jmp    40e64a <handle_number+0x31a>
  40e630:	e9 00 00 00 00       	jmp    40e635 <handle_number+0x305>
  40e635:	e9 00 00 00 00       	jmp    40e63a <handle_number+0x30a>
  40e63a:	e9 00 00 00 00       	jmp    40e63f <handle_number+0x30f>
  40e63f:	e9 00 00 00 00       	jmp    40e644 <handle_number+0x314>
	return (n);
  40e644:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40e647:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e64a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e64d:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  40e654:	5d                   	pop    %rbp
  40e655:	c3                   	ret    
  40e656:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40e65d:	00 00 00 

000000000040e660 <write_lpad_sign>:
		return (writer->write(writer, " ", 1));
	return (0);
}

int	write_lpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer)
{
  40e660:	55                   	push   %rbp
  40e661:	48 89 e5             	mov    %rsp,%rbp
  40e664:	48 83 ec 30          	sub    $0x30,%rsp
  40e668:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e66c:	89 75 ec             	mov    %esi,-0x14(%rbp)
  40e66f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  40e673:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
	int	j;
	int	n;

	j = 0;
  40e677:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
	n = 0;
  40e67e:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
	if (!fmt->left_align)
  40e685:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e689:	f6 40 08 01          	testb  $0x1,0x8(%rax)
  40e68d:	0f 85 0c 00 00 00    	jne    40e69f <write_lpad_sign+0x3f>
		return (0);
  40e693:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40e69a:	e9 60 00 00 00       	jmp    40e6ff <write_lpad_sign+0x9f>
	if (i < 0)
  40e69f:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40e6a4:	0f 8d 09 00 00 00    	jge    40e6b3 <write_lpad_sign+0x53>
		len += 1;
  40e6aa:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40e6ad:	83 c0 01             	add    $0x1,%eax
  40e6b0:	89 45 ec             	mov    %eax,-0x14(%rbp)
	while (j++ < fmt->min_width - len)
  40e6b3:	e9 00 00 00 00       	jmp    40e6b8 <write_lpad_sign+0x58>
  40e6b8:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40e6bb:	89 c1                	mov    %eax,%ecx
  40e6bd:	83 c1 01             	add    $0x1,%ecx
  40e6c0:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  40e6c3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40e6c7:	8b 49 04             	mov    0x4(%rcx),%ecx
  40e6ca:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40e6cd:	39 c8                	cmp    %ecx,%eax
  40e6cf:	0f 8d 24 00 00 00    	jge    40e6f9 <write_lpad_sign+0x99>
		n += writer->write(writer, " ", 1);
  40e6d5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e6d9:	48 8b 00             	mov    (%rax),%rax
  40e6dc:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e6e0:	48 8d 35 bc 17 00 00 	lea    0x17bc(%rip),%rsi        # 40fea3 <_IO_stdin_used+0xea3>
  40e6e7:	ba 01 00 00 00       	mov    $0x1,%edx
  40e6ec:	ff d0                	call   *%rax
  40e6ee:	03 45 d0             	add    -0x30(%rbp),%eax
  40e6f1:	89 45 d0             	mov    %eax,-0x30(%rbp)
	while (j++ < fmt->min_width - len)
  40e6f4:	e9 bf ff ff ff       	jmp    40e6b8 <write_lpad_sign+0x58>
	return (n);
  40e6f9:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40e6fc:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e6ff:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e702:	48 83 c4 30          	add    $0x30,%rsp
  40e706:	5d                   	pop    %rbp
  40e707:	c3                   	ret    
  40e708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e70f:	00 

000000000040e710 <write_rpad_sign>:

int	write_rpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer)
{
  40e710:	55                   	push   %rbp
  40e711:	48 89 e5             	mov    %rsp,%rbp
  40e714:	48 83 ec 30          	sub    $0x30,%rsp
  40e718:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e71c:	89 75 ec             	mov    %esi,-0x14(%rbp)
  40e71f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  40e723:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
	int	j;
	int	n;

	j = 0;
  40e727:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
	n = 0;
  40e72e:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
	if (fmt->left_align)
  40e735:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e739:	f6 40 08 01          	testb  $0x1,0x8(%rax)
  40e73d:	0f 84 19 00 00 00    	je     40e75c <write_rpad_sign+0x4c>
		return (_write_sign(fmt, i, writer));
  40e743:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e747:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40e74b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e74f:	e8 0c 01 00 00       	call   40e860 <_write_sign>
  40e754:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e757:	e9 fb 00 00 00       	jmp    40e857 <write_rpad_sign+0x147>
	if (fmt->pad_zero)
  40e75c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e760:	f6 40 09 01          	testb  $0x1,0x9(%rax)
  40e764:	0f 84 76 00 00 00    	je     40e7e0 <write_rpad_sign+0xd0>
	{
		n += _write_sign(fmt, i, writer);
  40e76a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e76e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40e772:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e776:	e8 e5 00 00 00       	call   40e860 <_write_sign>
  40e77b:	03 45 d0             	add    -0x30(%rbp),%eax
  40e77e:	89 45 d0             	mov    %eax,-0x30(%rbp)
		if (i < 0)
  40e781:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40e786:	0f 8d 09 00 00 00    	jge    40e795 <write_rpad_sign+0x85>
			len++;
  40e78c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40e78f:	83 c0 01             	add    $0x1,%eax
  40e792:	89 45 ec             	mov    %eax,-0x14(%rbp)
		while (j++ < fmt->min_width - len)
  40e795:	e9 00 00 00 00       	jmp    40e79a <write_rpad_sign+0x8a>
  40e79a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40e79d:	89 c1                	mov    %eax,%ecx
  40e79f:	83 c1 01             	add    $0x1,%ecx
  40e7a2:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  40e7a5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40e7a9:	8b 49 04             	mov    0x4(%rcx),%ecx
  40e7ac:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40e7af:	39 c8                	cmp    %ecx,%eax
  40e7b1:	0f 8d 24 00 00 00    	jge    40e7db <write_rpad_sign+0xcb>
			n += writer->write(writer, "0", 1);
  40e7b7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e7bb:	48 8b 00             	mov    (%rax),%rax
  40e7be:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e7c2:	48 8d 35 a6 33 00 00 	lea    0x33a6(%rip),%rsi        # 411b6f <_IO_stdin_used+0x2b6f>
  40e7c9:	ba 01 00 00 00       	mov    $0x1,%edx
  40e7ce:	ff d0                	call   *%rax
  40e7d0:	03 45 d0             	add    -0x30(%rbp),%eax
  40e7d3:	89 45 d0             	mov    %eax,-0x30(%rbp)
		while (j++ < fmt->min_width - len)
  40e7d6:	e9 bf ff ff ff       	jmp    40e79a <write_rpad_sign+0x8a>
	}
  40e7db:	e9 71 00 00 00       	jmp    40e851 <write_rpad_sign+0x141>
	else
	{
		if (i < 0)
  40e7e0:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40e7e5:	0f 8d 09 00 00 00    	jge    40e7f4 <write_rpad_sign+0xe4>
			len += 1;
  40e7eb:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40e7ee:	83 c0 01             	add    $0x1,%eax
  40e7f1:	89 45 ec             	mov    %eax,-0x14(%rbp)
		while (j++ < fmt->min_width - len)
  40e7f4:	e9 00 00 00 00       	jmp    40e7f9 <write_rpad_sign+0xe9>
  40e7f9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40e7fc:	89 c1                	mov    %eax,%ecx
  40e7fe:	83 c1 01             	add    $0x1,%ecx
  40e801:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  40e804:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40e808:	8b 49 04             	mov    0x4(%rcx),%ecx
  40e80b:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40e80e:	39 c8                	cmp    %ecx,%eax
  40e810:	0f 8d 24 00 00 00    	jge    40e83a <write_rpad_sign+0x12a>
			n += writer->write(writer, " ", 1);
  40e816:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40e81a:	48 8b 00             	mov    (%rax),%rax
  40e81d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40e821:	48 8d 35 7b 16 00 00 	lea    0x167b(%rip),%rsi        # 40fea3 <_IO_stdin_used+0xea3>
  40e828:	ba 01 00 00 00       	mov    $0x1,%edx
  40e82d:	ff d0                	call   *%rax
  40e82f:	03 45 d0             	add    -0x30(%rbp),%eax
  40e832:	89 45 d0             	mov    %eax,-0x30(%rbp)
		while (j++ < fmt->min_width - len)
  40e835:	e9 bf ff ff ff       	jmp    40e7f9 <write_rpad_sign+0xe9>
		n += _write_sign(fmt, i, writer);
  40e83a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e83e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40e842:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40e846:	e8 15 00 00 00       	call   40e860 <_write_sign>
  40e84b:	03 45 d0             	add    -0x30(%rbp),%eax
  40e84e:	89 45 d0             	mov    %eax,-0x30(%rbp)
	}
	return (n);
  40e851:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40e854:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e857:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e85a:	48 83 c4 30          	add    $0x30,%rsp
  40e85e:	5d                   	pop    %rbp
  40e85f:	c3                   	ret    

000000000040e860 <_write_sign>:
{
  40e860:	55                   	push   %rbp
  40e861:	48 89 e5             	mov    %rsp,%rbp
  40e864:	48 83 ec 20          	sub    $0x20,%rsp
  40e868:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e86c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40e870:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	if (i < 0)
  40e874:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e879:	0f 8d 21 00 00 00    	jge    40e8a0 <_write_sign+0x40>
		return (writer->write(writer, "-", 1));
  40e87f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e883:	48 8b 00             	mov    (%rax),%rax
  40e886:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e88a:	48 8d 35 b5 33 00 00 	lea    0x33b5(%rip),%rsi        # 411c46 <_IO_stdin_used+0x2c46>
  40e891:	ba 01 00 00 00       	mov    $0x1,%edx
  40e896:	ff d0                	call   *%rax
  40e898:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e89b:	e9 7a 00 00 00       	jmp    40e91a <_write_sign+0xba>
	else if (i >= 0 && fmt->sign)
  40e8a0:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40e8a5:	0f 8c 2f 00 00 00    	jl     40e8da <_write_sign+0x7a>
  40e8ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e8af:	f6 40 01 01          	testb  $0x1,0x1(%rax)
  40e8b3:	0f 84 21 00 00 00    	je     40e8da <_write_sign+0x7a>
		return (writer->write(writer, "+", 1));
  40e8b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e8bd:	48 8b 00             	mov    (%rax),%rax
  40e8c0:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e8c4:	48 8d 35 7d 33 00 00 	lea    0x337d(%rip),%rsi        # 411c48 <_IO_stdin_used+0x2c48>
  40e8cb:	ba 01 00 00 00       	mov    $0x1,%edx
  40e8d0:	ff d0                	call   *%rax
  40e8d2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e8d5:	e9 40 00 00 00       	jmp    40e91a <_write_sign+0xba>
	else if (fmt->space)
  40e8da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e8de:	f6 40 02 01          	testb  $0x1,0x2(%rax)
  40e8e2:	0f 84 21 00 00 00    	je     40e909 <_write_sign+0xa9>
		return (writer->write(writer, " ", 1));
  40e8e8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e8ec:	48 8b 00             	mov    (%rax),%rax
  40e8ef:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e8f3:	48 8d 35 a9 15 00 00 	lea    0x15a9(%rip),%rsi        # 40fea3 <_IO_stdin_used+0xea3>
  40e8fa:	ba 01 00 00 00       	mov    $0x1,%edx
  40e8ff:	ff d0                	call   *%rax
  40e901:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40e904:	e9 11 00 00 00       	jmp    40e91a <_write_sign+0xba>
  40e909:	e9 00 00 00 00       	jmp    40e90e <_write_sign+0xae>
  40e90e:	e9 00 00 00 00       	jmp    40e913 <_write_sign+0xb3>
	return (0);
  40e913:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
}
  40e91a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e91d:	48 83 c4 20          	add    $0x20,%rsp
  40e921:	5d                   	pop    %rbp
  40e922:	c3                   	ret    
  40e923:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40e92a:	00 00 00 
  40e92d:	0f 1f 00             	nopl   (%rax)

000000000040e930 <write_lpad>:

int	write_lpad(t_fmt *fmt, int len, t_writer *writer)
{
  40e930:	55                   	push   %rbp
  40e931:	48 89 e5             	mov    %rsp,%rbp
  40e934:	48 83 ec 30          	sub    $0x30,%rsp
  40e938:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e93c:	89 75 ec             	mov    %esi,-0x14(%rbp)
  40e93f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	int	j;
	int	n;

	n = 0;
  40e943:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
	j = 0;
  40e94a:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
	if (!fmt->left_align)
  40e951:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e955:	f6 40 08 01          	testb  $0x1,0x8(%rax)
  40e959:	0f 85 0c 00 00 00    	jne    40e96b <write_lpad+0x3b>
		return (0);
  40e95f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40e966:	e9 62 00 00 00       	jmp    40e9cd <write_lpad+0x9d>
	if (fmt->prefix)
  40e96b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40e96f:	f6 00 01             	testb  $0x1,(%rax)
  40e972:	0f 84 09 00 00 00    	je     40e981 <write_lpad+0x51>
		len += 2;
  40e978:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40e97b:	83 c0 02             	add    $0x2,%eax
  40e97e:	89 45 ec             	mov    %eax,-0x14(%rbp)
	while (j++ < fmt->min_width - len)
  40e981:	e9 00 00 00 00       	jmp    40e986 <write_lpad+0x56>
  40e986:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40e989:	89 c1                	mov    %eax,%ecx
  40e98b:	83 c1 01             	add    $0x1,%ecx
  40e98e:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  40e991:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40e995:	8b 49 04             	mov    0x4(%rcx),%ecx
  40e998:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40e99b:	39 c8                	cmp    %ecx,%eax
  40e99d:	0f 8d 24 00 00 00    	jge    40e9c7 <write_lpad+0x97>
		n += writer->write(writer, " ", 1);
  40e9a3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40e9a7:	48 8b 00             	mov    (%rax),%rax
  40e9aa:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40e9ae:	48 8d 35 ee 14 00 00 	lea    0x14ee(%rip),%rsi        # 40fea3 <_IO_stdin_used+0xea3>
  40e9b5:	ba 01 00 00 00       	mov    $0x1,%edx
  40e9ba:	ff d0                	call   *%rax
  40e9bc:	03 45 d8             	add    -0x28(%rbp),%eax
  40e9bf:	89 45 d8             	mov    %eax,-0x28(%rbp)
	while (j++ < fmt->min_width - len)
  40e9c2:	e9 bf ff ff ff       	jmp    40e986 <write_lpad+0x56>
	return (n);
  40e9c7:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40e9ca:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40e9cd:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40e9d0:	48 83 c4 30          	add    $0x30,%rsp
  40e9d4:	5d                   	pop    %rbp
  40e9d5:	c3                   	ret    
  40e9d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40e9dd:	00 00 00 

000000000040e9e0 <write_rpad>:

int	write_rpad(t_fmt *fmt, int len, t_writer *writer)
{
  40e9e0:	55                   	push   %rbp
  40e9e1:	48 89 e5             	mov    %rsp,%rbp
  40e9e4:	48 83 ec 30          	sub    $0x30,%rsp
  40e9e8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40e9ec:	89 75 ec             	mov    %esi,-0x14(%rbp)
  40e9ef:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	int	j;
	int	n;

	n = 0;
  40e9f3:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
	j = 0;
  40e9fa:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
	if (fmt->left_align)
  40ea01:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40ea05:	f6 40 08 01          	testb  $0x1,0x8(%rax)
  40ea09:	0f 84 0c 00 00 00    	je     40ea1b <write_rpad+0x3b>
		return (0);
  40ea0f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40ea16:	e9 c0 00 00 00       	jmp    40eadb <write_rpad+0xfb>
	if (fmt->prefix)
  40ea1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40ea1f:	f6 00 01             	testb  $0x1,(%rax)
  40ea22:	0f 84 09 00 00 00    	je     40ea31 <write_rpad+0x51>
		len += 2;
  40ea28:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40ea2b:	83 c0 02             	add    $0x2,%eax
  40ea2e:	89 45 ec             	mov    %eax,-0x14(%rbp)
	if (!fmt->pad_zero)
  40ea31:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40ea35:	f6 40 09 01          	testb  $0x1,0x9(%rax)
  40ea39:	0f 85 4b 00 00 00    	jne    40ea8a <write_rpad+0xaa>
		while (j++ < fmt->min_width - len)
  40ea3f:	e9 00 00 00 00       	jmp    40ea44 <write_rpad+0x64>
  40ea44:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40ea47:	89 c1                	mov    %eax,%ecx
  40ea49:	83 c1 01             	add    $0x1,%ecx
  40ea4c:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  40ea4f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40ea53:	8b 49 04             	mov    0x4(%rcx),%ecx
  40ea56:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40ea59:	39 c8                	cmp    %ecx,%eax
  40ea5b:	0f 8d 24 00 00 00    	jge    40ea85 <write_rpad+0xa5>
			n += writer->write(writer, " ", 1);
  40ea61:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40ea65:	48 8b 00             	mov    (%rax),%rax
  40ea68:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40ea6c:	48 8d 35 30 14 00 00 	lea    0x1430(%rip),%rsi        # 40fea3 <_IO_stdin_used+0xea3>
  40ea73:	ba 01 00 00 00       	mov    $0x1,%edx
  40ea78:	ff d0                	call   *%rax
  40ea7a:	03 45 d8             	add    -0x28(%rbp),%eax
  40ea7d:	89 45 d8             	mov    %eax,-0x28(%rbp)
		while (j++ < fmt->min_width - len)
  40ea80:	e9 bf ff ff ff       	jmp    40ea44 <write_rpad+0x64>
  40ea85:	e9 4b 00 00 00       	jmp    40ead5 <write_rpad+0xf5>
	else
		while (j++ < fmt->min_width - len)
  40ea8a:	e9 00 00 00 00       	jmp    40ea8f <write_rpad+0xaf>
  40ea8f:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40ea92:	89 c1                	mov    %eax,%ecx
  40ea94:	83 c1 01             	add    $0x1,%ecx
  40ea97:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  40ea9a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40ea9e:	8b 49 04             	mov    0x4(%rcx),%ecx
  40eaa1:	2b 4d ec             	sub    -0x14(%rbp),%ecx
  40eaa4:	39 c8                	cmp    %ecx,%eax
  40eaa6:	0f 8d 24 00 00 00    	jge    40ead0 <write_rpad+0xf0>
			n += writer->write(writer, "0", 1);
  40eaac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40eab0:	48 8b 00             	mov    (%rax),%rax
  40eab3:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40eab7:	48 8d 35 b1 30 00 00 	lea    0x30b1(%rip),%rsi        # 411b6f <_IO_stdin_used+0x2b6f>
  40eabe:	ba 01 00 00 00       	mov    $0x1,%edx
  40eac3:	ff d0                	call   *%rax
  40eac5:	03 45 d8             	add    -0x28(%rbp),%eax
  40eac8:	89 45 d8             	mov    %eax,-0x28(%rbp)
		while (j++ < fmt->min_width - len)
  40eacb:	e9 bf ff ff ff       	jmp    40ea8f <write_rpad+0xaf>
  40ead0:	e9 00 00 00 00       	jmp    40ead5 <write_rpad+0xf5>
	return (n);
  40ead5:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40ead8:	89 45 fc             	mov    %eax,-0x4(%rbp)
}
  40eadb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40eade:	48 83 c4 30          	add    $0x30,%rsp
  40eae2:	5d                   	pop    %rbp
  40eae3:	c3                   	ret    
  40eae4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40eaeb:	00 00 00 
  40eaee:	66 90                	xchg   %ax,%ax

000000000040eaf0 <isflag>:
/* ************************************************************************** */

#include "printf_int.h"

bool	isflag(char c)
{
  40eaf0:	55                   	push   %rbp
  40eaf1:	48 89 e5             	mov    %rsp,%rbp
  40eaf4:	40 88 f8             	mov    %dil,%al
  40eaf7:	88 45 ff             	mov    %al,-0x1(%rbp)
	return (c == 'd' || c == 'i' || c == 'x' || c == 'x' || c == 'c'
  40eafa:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eafe:	b0 01                	mov    $0x1,%al
  40eb00:	83 f9 64             	cmp    $0x64,%ecx
  40eb03:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb06:	0f 84 8b 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb0c:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb10:	b0 01                	mov    $0x1,%al
  40eb12:	83 f9 69             	cmp    $0x69,%ecx
  40eb15:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb18:	0f 84 79 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb1e:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb22:	b0 01                	mov    $0x1,%al
  40eb24:	83 f9 78             	cmp    $0x78,%ecx
  40eb27:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb2a:	0f 84 67 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb30:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb34:	b0 01                	mov    $0x1,%al
  40eb36:	83 f9 78             	cmp    $0x78,%ecx
  40eb39:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb3c:	0f 84 55 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb42:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb46:	b0 01                	mov    $0x1,%al
  40eb48:	83 f9 63             	cmp    $0x63,%ecx
  40eb4b:	88 45 fe             	mov    %al,-0x2(%rbp)
		|| c == 's' || c == '%' || c == 'p' || c == 'u');
  40eb4e:	0f 84 43 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb54:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb58:	b0 01                	mov    $0x1,%al
  40eb5a:	83 f9 73             	cmp    $0x73,%ecx
  40eb5d:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb60:	0f 84 31 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb66:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb6a:	b0 01                	mov    $0x1,%al
  40eb6c:	83 f9 25             	cmp    $0x25,%ecx
  40eb6f:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb72:	0f 84 1f 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb78:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  40eb7c:	b0 01                	mov    $0x1,%al
  40eb7e:	83 f9 70             	cmp    $0x70,%ecx
  40eb81:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb84:	0f 84 0d 00 00 00    	je     40eb97 <isflag+0xa7>
  40eb8a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  40eb8e:	83 f8 75             	cmp    $0x75,%eax
  40eb91:	0f 94 c0             	sete   %al
  40eb94:	88 45 fe             	mov    %al,-0x2(%rbp)
  40eb97:	8a 45 fe             	mov    -0x2(%rbp),%al
	return (c == 'd' || c == 'i' || c == 'x' || c == 'x' || c == 'c'
  40eb9a:	24 01                	and    $0x1,%al
  40eb9c:	0f b6 c0             	movzbl %al,%eax
  40eb9f:	5d                   	pop    %rbp
  40eba0:	c3                   	ret    

Disassembly of section .fini:

000000000040eba4 <_fini>:
  40eba4:	f3 0f 1e fa          	endbr64 
  40eba8:	48 83 ec 08          	sub    $0x8,%rsp
  40ebac:	48 83 c4 08          	add    $0x8,%rsp
  40ebb0:	c3                   	ret    
