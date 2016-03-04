X-GM-THRID: 6258126434142781440
X-Received: by 10.28.189.130 with SMTP id n124mr148179wmf.4.1457127241801;
        Fri, 04 Mar 2016 13:34:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.173.205 with SMTP id w196ls269396wme.47.canary; Fri, 04 Mar
 2016 13:34:01 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr144953wmg.7.1457127241157;
        Fri, 04 Mar 2016 13:34:01 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id c140si38064wmh.1.2016.03.04.13.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 13:34:01 -0800 (PST)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n186so941212wmn.0
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 13:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uyvbgLv17/groPg72lqv3QdSzq78FTUUdzXsGto9Stc=;
        b=fD8mXEk0qGObBwSPOzw3ocMYPNpZ2OioRNBW5NezkBACIrqq5AyVCJtddBCH+fmYIR
         F7AUKSD8Gh3AN//Z5pwgM9n7vsvggVLVep9sbymrqrDcsyh5wI+kGLUAbgQGQfImlj9B
         CGXd81smIQLI4iz3R+1soL7Q0DfmhjTIP4wdLff2+sjzXZevtWLhnyIMAtjbV3g0+wJL
         MSO4QPfCdmQsXt69LHLChEe5bcOcyTCt/62fOhMk0xL3IuSeogntg2Cglbq+D4bmXUcF
         1T7+8lGUHEHZqTwrpbxVFyUz7NaXqO0Ayd9tte53QwqtH3oLx1AWOTPFZjx8Dq91La6Y
         rzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uyvbgLv17/groPg72lqv3QdSzq78FTUUdzXsGto9Stc=;
        b=cl9WpPE4qfBL9gMMv7WNTlxgrNc7OjglAs3v+MkPgzwgiqfPa0VIRneAYFGOp6TD9z
         XfGZx/uueVftid2w5sz+Q7IBuEdh4vpPhelhPArASVOT/pwQcXzn+5Ebj96ZyHnaMFnN
         kd4ScjY0hkEqaJDVwznkzBizsZch7F4+MnsJjEuz/eM9RPGKqFgWnJmPrjkdBu4CY5j3
         J7hxRSz3aAir+3eUWStuTeaAI9ykngn3WPutDR2rZGrfzo3z4YLJP+Tp045wKPlWf5s/
         GmuKe85TInooClrxvwZ9CNY9rAtdSk0XR3NrdbcjqaDI2+nmQgKYfW8wwKImV3im5xsR
         IXhg==
X-Gm-Message-State: AD7BkJK8kDbNLo/ma468G7AAJGoul+hlCavUiC3E4WOMkVxlAt3hVfZibXfyX5VpWJMzDw==
X-Received: by 10.28.225.8 with SMTP id y8mr981008wmg.94.1457127240933;
        Fri, 04 Mar 2016 13:34:00 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id i1sm5137416wjs.45.2016.03.04.13.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 13:34:00 -0800 (PST)
Date: Fri, 4 Mar 2016 23:33:58 +0200
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging:xgifg:vb_table.h: Fix block comments use * on
 subsequent lines
Message-ID: <20160304213358.GA7537@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch solve a multi-line comment style issue, by adding * for every  subsequent lines ,
the preferred style for multi-line comment as it is mentioned in Documentation/CodingStyle.

It also stop the 'Block comments use * on subsequent lines' , checkpatch.pl warnings.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

Changes in v4:
I transformed  comments block in to a single comment  line, by doing this it  reduce the number of 
code lines and increase the visibility of code.


 drivers/staging/xgifb/vb_table.h | 197 ++++++++++++++++-----------------------
 1 file changed, 78 insertions(+), 119 deletions(-)

diff --git a/drivers/staging/xgifb/vb_table.h b/drivers/staging/xgifb/vb_table.h
index 0c3631f..787bba0 100644
--- a/drivers/staging/xgifb/vb_table.h
+++ b/drivers/staging/xgifb/vb_table.h
@@ -57,11 +57,8 @@ static const unsigned char XGI27_cr41[24][3] = {
 	{0x20, 0x40, 0x60}, /* 0 CR41 */
 	{0xC4, 0x40, 0x84}, /* 1 CR8A */
 	{0xC4, 0x40, 0x84}, /* 2 CR8B */
-	{0xB3, 0x13, 0xa4}, 
-			/* 3 CR40[7]
-			 * CR99[2:0]
-			 * CR45[3:0]
-			 */
+	/* 3 CR40[7] CR99[2:0] CR45[3:0] */
+	{0xB3, 0x13, 0xa4},
 	{0xf0, 0xf5, 0xf0}, /* 4 CR59 */
 	{0x90, 0x90, 0x24}, /* 5 CR68 */
 	{0x77, 0x67, 0x44}, /* 6 CR69 */
@@ -102,12 +99,10 @@ const struct XGI_ExtStruct XGI330_EModeIDTable[] = {
 	{0x36, 0x2a1f, 0x0a0e, 0x0e, 0x06, 0x3e},
 	{0x38, 0x0a1b, 0x0508, 0x08, 0x00, 0x16},
 	{0x3a, 0x0e3b, 0x0609, 0x09, 0x00, 0x1e},
-	{0x3c, 0x0e3b, 0x070a, 0x0a, 0x00, 0x22},/* mode 1600x1200
-						  * add CRT2MODE [2003/10/07]
-						  */
-	{0x3d, 0x0e7d, 0x070a, 0x0a, 0x00, 0x22},/* mode 1600x1200
-						  * add CRT2MODE
-						  */
+	/* mode 1600x1200 add CRT2MODE [2003/10/07] */
+	{0x3c, 0x0e3b, 0x070a, 0x0a, 0x00, 0x22},
+	/* mode 1600x1200 add CRT2MODE */
+	{0x3d, 0x0e7d, 0x070a, 0x0a, 0x00, 0x22},
 	{0x40, 0x9a1c, 0x0000, 0x00, 0x04, 0x00},
 	{0x41, 0x9a1d, 0x0000, 0x00, 0x04, 0x00},
 	{0x43, 0x0a1c, 0x0306, 0x06, 0x05, 0x06},
@@ -132,9 +127,8 @@ const struct XGI_ExtStruct XGI330_EModeIDTable[] = {
 	{0x63, 0x2a3f, 0x0407, 0x07, 0x07, 0x0e},
 	{0x64, 0x0a7f, 0x0508, 0x08, 0x00, 0x16},
 	{0x65, 0x0eff, 0x0609, 0x09, 0x00, 0x1e},
-	{0x66, 0x0eff, 0x070a, 0x0a, 0x00, 0x22}, /* mode 1600x1200
-						   * add CRT2MODE
-						   */
+	/* mode 1600x1200 add CRT2MODE */
+	{0x66, 0x0eff, 0x070a, 0x0a, 0x00, 0x22},
 	{0x68, 0x067b, 0x080b, 0x0b, 0x00, 0x29},
 	{0x69, 0x06fd, 0x080b, 0x0b, 0x00, 0x29},
 	{0x6b, 0x07ff, 0x080b, 0x0b, 0x00, 0x29},
@@ -228,54 +222,38 @@ const struct XGI_CRT1TableStruct XGI_CRT1Table[] = {
 	  0x0D, 0x3E, 0xE0, 0x83, 0xDF, 0x0E, 0x90} }, /* 0xb */
 	{ {0x65, 0x4F, 0x89, 0x57, 0x9F, 0x00, 0x01, 0x00,
 	  0xFB, 0x1F, 0xE6, 0x8A, 0xDF, 0xFC, 0x10} }, /* 0xc */
-	{ {0x7B, 0x63, 0x9F, 0x6A, 0x93, 0x00, 0x05, 0x00, /* ;
-							    * 0D (800x600,56Hz)
-							    */
-	  0x6F, 0xF0, 0x58, 0x8A, 0x57, 0x70, 0xA0} },	   /* ;
-							    * (VCLK 36.0MHz)
-							    */
-	{ {0x7F, 0x63, 0x83, 0x6C, 0x1C, 0x00, 0x06, 0x00, /* ;
-							    * 0E (800x600,60Hz)
-							    */
-	  0x72, 0xF0, 0x58, 0x8C, 0x57, 0x73, 0xA0} },     /* ;
-							    * (VCLK 40.0MHz)
-							    */
-	{ {0x7D, 0x63, 0x81, 0x6E, 0x1D, 0x00, 0x06, 0x00, /* ;
-							    * 0F (800x600,72Hz)
-							    */
-	  0x98, 0xF0, 0x7C, 0x82, 0x57, 0x99, 0x80} },     /* ;
-							    * (VCLK 50.0MHz)
-							    */
-	{ {0x7F, 0x63, 0x83, 0x69, 0x13, 0x00, 0x06, 0x00, /* ;
-							    * 10 (800x600,75Hz)
-							    */
-	  0x6F, 0xF0, 0x58, 0x8B, 0x57, 0x70, 0xA0} },     /* ;
-							    * (VCLK 49.5MHz)
-							    */
-	{ {0x7E, 0x63, 0x82, 0x6B, 0x13, 0x00, 0x06, 0x00, /* ;
-							    * 11 (800x600,85Hz)
-							    */
-	  0x75, 0xF0, 0x58, 0x8B, 0x57, 0x76, 0xA0} },     /* ;
-							    * (VCLK 56.25MHz)
-							    */
-	{ {0x81, 0x63, 0x85, 0x6D, 0x18, 0x00, 0x06, 0x60, /* ;
-							    * 12 (800x600,100Hz)
-							    */
-	  0x7A, 0xF0, 0x58, 0x8B, 0x57, 0x7B, 0xA0} },     /* ;
-							    * (VCLK 75.8MHz)
-							    */
-	{ {0x83, 0x63, 0x87, 0x6E, 0x19, 0x00, 0x06, 0x60, /* ;
-							    * 13 (800x600,120Hz)
-							    */
-	  0x81, 0xF0, 0x58, 0x8B, 0x57, 0x82, 0xA0} },     /* ;
-							    * (VCLK 79.411MHz)
-							    */
-	{ {0x85, 0x63, 0x89, 0x6F, 0x1A, 0x00, 0x06, 0x60, /* ;
-							    * 14 (800x600,160Hz)
-							    */
-	  0x91, 0xF0, 0x58, 0x8B, 0x57, 0x92, 0xA0} },     /* ;
-							    * (VCLK 105.822MHz)
-							    */
+	/* ; 0D (800x600,56Hz) */
+	{ {0x7B, 0x63, 0x9F, 0x6A, 0x93, 0x00, 0x05, 0x00,
+	/* ; (VCLK 36.0MHz) */
+	  0x6F, 0xF0, 0x58, 0x8A, 0x57, 0x70, 0xA0} },
+	/* ; 0E (800x600,60Hz) */
+	{ {0x7F, 0x63, 0x83, 0x6C, 0x1C, 0x00, 0x06, 0x00,
+	/* ; (VCLK 40.0MHz) */
+	  0x72, 0xF0, 0x58, 0x8C, 0x57, 0x73, 0xA0} },
+	/* ; 0F (800x600,72Hz) */
+	{ {0x7D, 0x63, 0x81, 0x6E, 0x1D, 0x00, 0x06, 0x00,
+	/* ; (VCLK 50.0MHz) */
+	  0x98, 0xF0, 0x7C, 0x82, 0x57, 0x99, 0x80} },
+	/* ; 10 (800x600,75Hz) */
+	{ {0x7F, 0x63, 0x83, 0x69, 0x13, 0x00, 0x06, 0x00,
+	/* ; (VCLK 49.5MHz) */
+	  0x6F, 0xF0, 0x58, 0x8B, 0x57, 0x70, 0xA0} },
+	/* ; 11 (800x600,85Hz) */
+	{ {0x7E, 0x63, 0x82, 0x6B, 0x13, 0x00, 0x06, 0x00,
+	/* ; (VCLK 56.25MHz) */
+	  0x75, 0xF0, 0x58, 0x8B, 0x57, 0x76, 0xA0} },
+	/* ; 12 (800x600,100Hz) */
+	{ {0x81, 0x63, 0x85, 0x6D, 0x18, 0x00, 0x06, 0x60,
+	/* ; (VCLK 75.8MHz) */
+	  0x7A, 0xF0, 0x58, 0x8B, 0x57, 0x7B, 0xA0} },
+	/* ; 13 (800x600,120Hz) */
+	{ {0x83, 0x63, 0x87, 0x6E, 0x19, 0x00, 0x06, 0x60,
+	/* ; (VCLK 79.411MHz) */
+	  0x81, 0xF0, 0x58, 0x8B, 0x57, 0x82, 0xA0} },
+	/* ; 14 (800x600,160Hz) */
+	{ {0x85, 0x63, 0x89, 0x6F, 0x1A, 0x00, 0x06, 0x60,
+	/* ; (VCLK 105.822MHz) */
+	  0x91, 0xF0, 0x58, 0x8B, 0x57, 0x92, 0xA0} },
 	{ {0x99, 0x7F, 0x9D, 0x84, 0x1A, 0x00, 0x02, 0x00,
 	  0x96, 0x1F, 0x7F, 0x83, 0x7F, 0x97, 0x10} }, /* 0x15 */
 	{ {0xA3, 0x7F, 0x87, 0x86, 0x97, 0x00, 0x02, 0x00,
@@ -408,9 +386,8 @@ static const struct SiS_LCDData XGI_ExtLCD1024x768Data[] = {
 };
 
 static const struct SiS_LCDData XGI_CetLCD1024x768Data[] = {
-	{1, 1, 1344, 806, 1344, 806}, /* ; 00 (320x200,320x400,
-				       * 640x200,640x400)
-				       */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{1, 1, 1344, 806, 1344, 806},
 	{1, 1, 1344, 806, 1344, 806}, /* 01 (320x350,640x350) */
 	{1, 1, 1344, 806, 1344, 806}, /* 02 (360x400,720x400) */
 	{1, 1, 1344, 806, 1344, 806}, /* 03 (720x350) */
@@ -442,9 +419,8 @@ static const struct SiS_LCDData XGI_ExtLCD1280x1024Data[] = {
 };
 
 static const struct SiS_LCDData XGI_CetLCD1280x1024Data[] = {
-	{1, 1, 1688, 1066, 1688, 1066}, /* 00 (320x200,320x400,
-					 * 640x200,640x400)
-					 */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{1, 1, 1688, 1066, 1688, 1066},
 	{1, 1, 1688, 1066, 1688, 1066}, /* 01 (320x350,640x350) */
 	{1, 1, 1688, 1066, 1688, 1066}, /* 02 (360x400,720x400) */
 	{1, 1, 1688, 1066, 1688, 1066}, /* 03 (720x350) */
@@ -456,25 +432,22 @@ static const struct SiS_LCDData XGI_CetLCD1280x1024Data[] = {
 };
 
 static const struct SiS_LCDData xgifb_lcd_1400x1050[] = {
-	{211, 100, 2100, 408,  1688, 1066}, /* 00 (320x200,320x400,
-					     * 640x200,640x400)
-					     */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{211, 100, 2100, 408,  1688, 1066},
 	{211, 64,  1536, 358,  1688, 1066}, /* 01 (320x350,640x350) */
 	{211, 100, 2100, 408,  1688, 1066}, /* 02 (360x400,720x400) */
 	{211, 64,  1536, 358,  1688, 1066}, /* 03 (720x350) */
 	{211, 48,  840,  488,  1688, 1066}, /* 04 (640x480x60Hz) */
 	{211, 72,  1008, 609,  1688, 1066}, /* 05 (800x600x60Hz) */
 	{211, 128, 1400, 776,  1688, 1066}, /* 06 (1024x768x60Hz) */
-	{1,   1,   1688, 1066, 1688, 1066}, /* 07 (1280x1024x60Hz
-						* w/o Scaling)
-						*/
+	/* 07 (1280x1024x60Hz w/o Scaling) */
+	{1,   1,   1688, 1066, 1688, 1066},
 	{1,   1,   1688, 1066, 1688, 1066}  /* 08 (1400x1050x60Hz) */
 };
 
 static const struct SiS_LCDData XGI_ExtLCD1600x1200Data[] = {
-	{4,  1,  1620, 420,  2160, 1250}, /* 00 (320x200,320x400,
-					   * 640x200,640x400)
-					   */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{4,  1,  1620, 420,  2160, 1250},
 	{27, 7,  1920, 375,  2160, 1250}, /* 01 (320x350,640x350) */
 	{4,  1,  1620, 420,  2160, 1250}, /* 02 (360x400,720x400)*/
 	{27, 7,  1920, 375,  2160, 1250}, /* 03 (720x350) */
@@ -487,9 +460,8 @@ static const struct SiS_LCDData XGI_ExtLCD1600x1200Data[] = {
 };
 
 static const struct SiS_LCDData XGI_StLCD1600x1200Data[] = {
-	{27,  4,  800,  500,  2160, 1250}, /* 00 (320x200,320x400,
-					    * 640x200,640x400)
-					    */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{27,  4,  800,  500,  2160, 1250},
 	{27,  4,  800,  500,  2160, 1250}, /* 01 (320x350,640x350) */
 	{27,  4,  800,  500,  2160, 1250}, /* 02 (360x400,720x400) */
 	{27,  4,  800,  500,  2160, 1250}, /* 03 (720x350) */
@@ -515,9 +487,8 @@ static const struct SiS_LCDData XGI_NoScalingData[] = {
 };
 
 static const struct SiS_LCDData XGI_ExtLCD1024x768x75Data[] = {
-	{42, 25, 1536, 419, 1344, 806}, /* ; 00 (320x200,320x400,
-					 * 640x200,640x400)
-					 */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{42, 25, 1536, 419, 1344, 806},
 	{48, 25, 1536, 369, 1344, 806}, /* ; 01 (320x350,640x350) */
 	{42, 25, 1536, 419, 1344, 806}, /* ; 02 (360x400,720x400) */
 	{48, 25, 1536, 369, 1344, 806}, /* ; 03 (720x350) */
@@ -527,9 +498,8 @@ static const struct SiS_LCDData XGI_ExtLCD1024x768x75Data[] = {
 };
 
 static const struct SiS_LCDData XGI_CetLCD1024x768x75Data[] = {
-	{1, 1, 1312, 800, 1312, 800}, /* ; 00 (320x200,320x400,
-				       * 640x200,640x400)
-				       */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{1, 1, 1312, 800, 1312, 800},
 	{1, 1, 1312, 800, 1312, 800}, /* ; 01 (320x350,640x350) */
 	{1, 1, 1312, 800, 1312, 800}, /* ; 02 (360x400,720x400) */
 	{1, 1, 1312, 800, 1312, 800}, /* ; 03 (720x350) */
@@ -539,9 +509,8 @@ static const struct SiS_LCDData XGI_CetLCD1024x768x75Data[] = {
 };
 
 static const struct SiS_LCDData xgifb_lcd_1280x1024x75[] = {
-	{211, 60,  1024, 501,  1688, 1066}, /* ; 00 (320x200,320x400,
-					     * 640x200,640x400)
-					     */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{211, 60,  1024, 501,  1688, 1066},
 	{211, 60,  1024, 508,  1688, 1066}, /* ; 01 (320x350,640x350) */
 	{211, 60,  1024, 501,  1688, 1066}, /* ; 02 (360x400,720x400) */
 	{211, 60,  1024, 508,  1688, 1066}, /* ; 03 (720x350) */
@@ -554,9 +523,8 @@ static const struct SiS_LCDData xgifb_lcd_1280x1024x75[] = {
 #define XGI_CetLCD1280x1024x75Data XGI_CetLCD1280x1024Data
 
 static const struct SiS_LCDData XGI_NoScalingDatax75[] = {
-	{1, 1, 800,  449,  800,  449},  /* ; 00 (320x200, 320x400,
-					 * 640x200, 640x400)
-					 */
+	/* ; 00 (320x200, 320x400, 640x200, 640x400) */
+	{1, 1, 800,  449,  800,  449},
 	{1, 1, 800,  449,  800,  449},  /* ; 01 (320x350, 640x350) */
 	{1, 1, 900,  449,  900,  449},  /* ; 02 (360x400, 720x400) */
 	{1, 1, 900,  449,  900,  449},  /* ; 03 (720x350) */
@@ -762,9 +730,8 @@ static const struct XGI_LCDDesStruct XGI_StLCDDes1600x1200Data[] = {
 };
 
 static const struct XGI330_LCDDataDesStruct2  XGI_NoScalingDesData[] = {
-	{9, 657,  448, 405,  96,   2}, /* 00 (320x200,320x400,
-					* 640x200,640x400)
-					*/
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{9, 657,  448, 405,  96,   2},
 	{9, 657,  448, 355,  96,   2}, /* 01 (320x350,640x350) */
 	{9, 657,  448, 405,  96,   2}, /* 02 (360x400,720x400) */
 	{9, 657,  448, 355,  96,   2}, /* 03 (720x350) */
@@ -849,9 +816,8 @@ static const struct XGI_LCDDesStruct XGI_CetLCDDes1280x1024x75Data[] = {
 
 /* Scaling LCD 75Hz */
 static const struct XGI330_LCDDataDesStruct2 XGI_NoScalingDesDatax75[] =  {
-	{9, 657,  448, 405,  96,  2}, /* ; 00 (320x200,320x400,
-				       * 640x200,640x400)
-				       */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{9, 657,  448, 405,  96,  2},
 	{9, 657,  448, 355,  96,  2}, /* ; 01 (320x350,640x350) */
 	{9, 738,  448, 405,  108, 2}, /* ; 02 (360x400,720x400) */
 	{9, 738,  448, 355,  108, 2}, /* ; 03 (720x350) */
@@ -905,9 +871,8 @@ static const struct SiS_TVData XGI_ExtNTSCData[] = {
 };
 
 static const struct SiS_TVData XGI_St1HiTVData[] = {
-	{1, 1, 892,  563, 690,  800, 0,     0, 0}, /* 00 (320x200,320x400,
-						    * 640x200,640x400)
-						    */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{1, 1, 892,  563, 690,  800, 0,     0, 0},
 	{1, 1, 892,  563, 690,  700, 0,     0, 0}, /* 01 (320x350,640x350) */
 	{1, 1, 1000, 563, 785,  800, 0,     0, 0}, /* 02 (360x400,720x400) */
 	{1, 1, 1000, 563, 785,  700, 0,     0, 0}, /* 03 (720x350) */
@@ -916,9 +881,8 @@ static const struct SiS_TVData XGI_St1HiTVData[] = {
 };
 
 static const struct SiS_TVData XGI_St2HiTVData[] = {
-	{3, 1, 840,  483, 1648, 960, 0x032, 0, 0}, /* 00 (320x200,320x400,
-						    * 640x200,640x400)
-						    */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{3, 1, 840,  483, 1648, 960, 0x032, 0, 0},
 	{1, 1, 892,  563, 690,  700, 0,     0, 0}, /* 01 (320x350,640x350) */
 	{3, 1, 840,  483, 1648, 960, 0x032, 0, 0}, /* 02 (360x400,720x400) */
 	{1, 1, 1000, 563, 785,  700, 0,     0, 0}, /* 03 (720x350) */
@@ -927,9 +891,8 @@ static const struct SiS_TVData XGI_St2HiTVData[] = {
 };
 
 static const struct SiS_TVData XGI_ExtHiTVData[] = {
-	{6,  1,  840,  563,  1632, 960, 0,     0, 0}, /* 00 (320x200,320x400,
-						       * 640x200,640x400)
-						       */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{6,  1,  840,  563,  1632, 960, 0,     0, 0},
 	{3,  1,  960,  563,  1632, 960, 0,     0, 0}, /* 01 (320x350,640x350) */
 	{3,  1,  840,  483,  1632, 960, 0,     0, 0}, /* 02 (360x400,720x400) */
 	{3,  1,  960,  563,  1632, 960, 0,     0, 0}, /* 03 (720x350) */
@@ -983,9 +946,8 @@ static const struct SiS_TVData XGI_StYPbPr525pData[] = {
 };
 
 static const struct SiS_TVData XGI_ExtYPbPr750pData[] = {
-	{ 3, 1,  935, 470, 1130, 680,  50, 0, 0}, /* 00 (320x200,320x400,
-						   * 640x200,640x400)
-						   */
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{ 3, 1,  935, 470, 1130, 680,  50, 0, 0},
 	{24, 7,  935, 420, 1130, 680,  50, 0, 0}, /* 01 (320x350,640x350) */
 	{ 3, 1,  935, 470, 1130, 680,  50, 0, 0}, /* 02 (360x400,720x400) */
 	{24, 7,  935, 420, 1130, 680,  50, 0, 0}, /* 03 (720x350) */
@@ -1307,9 +1269,8 @@ static const struct SiS_LVDSData XGI_LVDSNoScalingDatax75[] = {
 	{1056,  625, 1056, 625},  /* ; 05 (800x600x75Hz) */
 	{1312,  800, 1312, 800},  /* ; 06 (1024x768x75Hz) */
 	{1688, 1066, 1688, 1066}, /* ; 07 (1280x1024x75Hz) */
-	{1688, 1066, 1688, 1066}, /* ; 08 (1400x1050x75Hz) 
-				   * ;;[ycchen] 12/19/02 
-				   */
+	/* ; 08 (1400x1050x75Hz) ;;[ycchen] 12/19/02 */
+	{1688, 1066, 1688, 1066},
 	{2160, 1250, 2160, 1250}, /* ; 09 (1600x1200x75Hz) */
 	{1688,  806, 1688, 806},  /* ; 0A (1280x768x75Hz) */
 };
@@ -1403,9 +1364,8 @@ static const struct SiS_LVDSData XGI_LVDS1600x1200Des_1[] = {
 };
 
 static const struct XGI330_LCDDataDesStruct2  XGI_LVDSNoScalingDesData[] = {
-	{0,  648,  448,  405,  96, 2}, /* 00 (320x200,320x400,
-					* 640x200,640x400)
-					*/
+	/* 00 (320x200,320x400, 640x200,640x400) */
+	{0,  648,  448,  405,  96, 2},
 	{0,  648,  448,  355,  96, 2}, /* 01 (320x350,640x350) */
 	{0,  648,  448,  405,  96, 2}, /* 02 (360x400,720x400) */
 	{0,  648,  448,  355,  96, 2}, /* 03 (720x350) */
@@ -1475,9 +1435,8 @@ static const struct SiS_LVDSData XGI_LVDS1280x1024Des_2x75[] = {
 
 /* Scaling LCD 75Hz */
 static const struct XGI330_LCDDataDesStruct2 XGI_LVDSNoScalingDesDatax75[] = {
-	{0,  648, 448,  405,  96, 2}, /* ; 00 (320x200,320x400,
-				       * 640x200,640x400)
-				       */
+	/* ; 00 (320x200,320x400, 640x200,640x400) */
+	{0,  648, 448,  405,  96, 2},
 	{0,  648, 448,  355,  96, 2}, /* ; 01 (320x350,640x350) */
 	{0,  729, 448,  405, 108, 2}, /* ; 02 (360x400,720x400) */
 	{0,  729, 448,  355, 108, 2}, /* ; 03 (720x350) */
-- 
1.9.1


