X-GM-THRID: 6257784755387891712
X-Received: by 10.112.168.201 with SMTP id zy9mr268715lbb.23.1457004355141;
        Thu, 03 Mar 2016 03:25:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.215 with SMTP id w206ls582286wmd.4.canary; Thu, 03 Mar
 2016 03:25:54 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr278550wje.1.1457004354656;
        Thu, 03 Mar 2016 03:25:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si389510wmh.1.2016.03.03.03.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 03:25:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,532,1449529200"; 
   d="scan'208";a="166772721"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2016 12:25:54 +0100
Date: Thu, 3 Mar 2016 12:25:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:xgifb:vb_table.h: Fix block
 comments use * on subsequent lines
In-Reply-To: <20160303112049.GA15290@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1603031223240.2512@hadrien>
References: <20160303112049.GA15290@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 3 Mar 2016, Muraru Mihaela wrote:

> This patch fixed the  checkpatch.pl coding style warning:
>
> WARNING: Block comments use * on subsequent lines
>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/xgifb/vb_table.h | 120 ++++++++++++++++++++++++++-------------
>  1 file changed, 79 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_table.h b/drivers/staging/xgifb/vb_table.h
> index f17e5b9..20c74bd 100644
> --- a/drivers/staging/xgifb/vb_table.h
> +++ b/drivers/staging/xgifb/vb_table.h
> @@ -58,8 +58,9 @@ static const unsigned char XGI27_cr41[24][3] = {
>  	{0xC4, 0x40, 0x84}, /* 1 CR8A */
>  	{0xC4, 0x40, 0x84}, /* 2 CR8B */
>  	{0xB3, 0x13, 0xa4}, /* 3 CR40[7],
> -				 CR99[2:0],
> -				 CR45[3:0]*/
> +						* CR99[2:0],
> +						  CR45[3:0]
> +						*/

This doesn't look right.  You should have * on every line to follow the
coding style.  In the subsequent updates there may be the right number of
*s, but they don't look like they are properly placed.  All the *s should
be on top of each other, while in your code the new ones are more
indented.  For example:

        {1, 1, 1688, 1066, 1688, 1066}, /* 00 (320x200,320x400,
                                                * 640x200,640x400)
                                                */

I guess there is one tab extra in front of each star.

If you don't see it this way, maybe there is a problem with the
configuration of your editor?

julia


>  	{0xf0, 0xf5, 0xf0}, /* 4 CR59 */
>  	{0x90, 0x90, 0x24}, /* 5 CR68 */
>  	{0x77, 0x67, 0x44}, /* 6 CR69 */
> @@ -101,9 +102,11 @@ const struct XGI_ExtStruct XGI330_EModeIDTable[] = {
>  	{0x38, 0x0a1b, 0x0508, 0x08, 0x00, 0x16},
>  	{0x3a, 0x0e3b, 0x0609, 0x09, 0x00, 0x1e},
>  	{0x3c, 0x0e3b, 0x070a, 0x0a, 0x00, 0x22}, /* mode 1600x1200
> -						   add CRT2MODE [2003/10/07] */
> +						    * add CRT2MODE [2003/10/07]
> +							*/
>  	{0x3d, 0x0e7d, 0x070a, 0x0a, 0x00, 0x22}, /* mode 1600x1200
> -						   add CRT2MODE */
> +							* add CRT2MODE
> +							*/
>  	{0x40, 0x9a1c, 0x0000, 0x00, 0x04, 0x00},
>  	{0x41, 0x9a1d, 0x0000, 0x00, 0x04, 0x00},
>  	{0x43, 0x0a1c, 0x0306, 0x06, 0x05, 0x06},
> @@ -129,7 +132,8 @@ const struct XGI_ExtStruct XGI330_EModeIDTable[] = {
>  	{0x64, 0x0a7f, 0x0508, 0x08, 0x00, 0x16},
>  	{0x65, 0x0eff, 0x0609, 0x09, 0x00, 0x1e},
>  	{0x66, 0x0eff, 0x070a, 0x0a, 0x00, 0x22}, /* mode 1600x1200
> -						   add CRT2MODE */
> +							* add CRT2MODE
> +							*/
>  	{0x68, 0x067b, 0x080b, 0x0b, 0x00, 0x29},
>  	{0x69, 0x06fd, 0x080b, 0x0b, 0x00, 0x29},
>  	{0x6b, 0x07ff, 0x080b, 0x0b, 0x00, 0x29},
> @@ -224,37 +228,53 @@ const struct XGI_CRT1TableStruct XGI_CRT1Table[] = {
>  	{ {0x65, 0x4F, 0x89, 0x57, 0x9F, 0x00, 0x01, 0x00,
>  	  0xFB, 0x1F, 0xE6, 0x8A, 0xDF, 0xFC, 0x10} }, /* 0xc */
>  	{ {0x7B, 0x63, 0x9F, 0x6A, 0x93, 0x00, 0x05, 0x00, /* ;
> -						0D (800x600,56Hz) */
> +							* 0D (800x600,56Hz)
> +							*/
>  	  0x6F, 0xF0, 0x58, 0x8A, 0x57, 0x70, 0xA0} },     /* ;
> -						(VCLK 36.0MHz) */
> +							* (VCLK 36.0MHz)
> +							*/
>  	{ {0x7F, 0x63, 0x83, 0x6C, 0x1C, 0x00, 0x06, 0x00, /* ;
> -						0E (800x600,60Hz) */
> +							* 0E (800x600,60Hz)
> +							*/
>  	  0x72, 0xF0, 0x58, 0x8C, 0x57, 0x73, 0xA0} },     /* ;
> -						(VCLK 40.0MHz) */
> +							* (VCLK 40.0MHz)
> +							*/
>  	{ {0x7D, 0x63, 0x81, 0x6E, 0x1D, 0x00, 0x06, 0x00, /* ;
> -						0F (800x600,72Hz) */
> +							* 0F (800x600,72Hz)
> +							*/
>  	  0x98, 0xF0, 0x7C, 0x82, 0x57, 0x99, 0x80} },     /* ;
> -						(VCLK 50.0MHz) */
> +							* (VCLK 50.0MHz)
> +							*/
>  	{ {0x7F, 0x63, 0x83, 0x69, 0x13, 0x00, 0x06, 0x00, /* ;
> -						10 (800x600,75Hz) */
> +							* 10 (800x600,75Hz)
> +							*/
>  	  0x6F, 0xF0, 0x58, 0x8B, 0x57, 0x70, 0xA0} },     /* ;
> -						(VCLK 49.5MHz) */
> +							* (VCLK 49.5MHz)
> +							*/
>  	{ {0x7E, 0x63, 0x82, 0x6B, 0x13, 0x00, 0x06, 0x00, /* ;
> -						11 (800x600,85Hz) */
> +							* 11 (800x600,85Hz)
> +							*/
>  	  0x75, 0xF0, 0x58, 0x8B, 0x57, 0x76, 0xA0} },     /* ;
> -						(VCLK 56.25MHz) */
> +							* (VCLK 56.25MHz)
> +							*/
>  	{ {0x81, 0x63, 0x85, 0x6D, 0x18, 0x00, 0x06, 0x60, /* ;
> -						12 (800x600,100Hz) */
> +							* 12 (800x600,100Hz)
> +							*/
>  	  0x7A, 0xF0, 0x58, 0x8B, 0x57, 0x7B, 0xA0} },     /* ;
> -						(VCLK 75.8MHz) */
> +							* (VCLK 75.8MHz)
> +							*/
>  	{ {0x83, 0x63, 0x87, 0x6E, 0x19, 0x00, 0x06, 0x60, /* ;
> -						13 (800x600,120Hz) */
> +							* 13 (800x600,120Hz)
> +							*/
>  	  0x81, 0xF0, 0x58, 0x8B, 0x57, 0x82, 0xA0} },     /* ;
> -						(VCLK 79.411MHz) */
> +							* (VCLK 79.411MHz)
> +							*/
>  	{ {0x85, 0x63, 0x89, 0x6F, 0x1A, 0x00, 0x06, 0x60, /* ;
> -						14 (800x600,160Hz) */
> +							* 14 (800x600,160Hz)
> +							*/
>  	  0x91, 0xF0, 0x58, 0x8B, 0x57, 0x92, 0xA0} },     /* ;
> -						(VCLK 105.822MHz) */
> +							* (VCLK 105.822MHz)
> +							*/
>  	{ {0x99, 0x7F, 0x9D, 0x84, 0x1A, 0x00, 0x02, 0x00,
>  	  0x96, 0x1F, 0x7F, 0x83, 0x7F, 0x97, 0x10} }, /* 0x15 */
>  	{ {0xA3, 0x7F, 0x87, 0x86, 0x97, 0x00, 0x02, 0x00,
> @@ -388,7 +408,8 @@ static const struct SiS_LCDData XGI_ExtLCD1024x768Data[] = {
>
>  static const struct SiS_LCDData XGI_CetLCD1024x768Data[] = {
>  	{1, 1, 1344, 806, 1344, 806}, /* ; 00 (320x200,320x400,
> -					       640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{1, 1, 1344, 806, 1344, 806}, /* 01 (320x350,640x350) */
>  	{1, 1, 1344, 806, 1344, 806}, /* 02 (360x400,720x400) */
>  	{1, 1, 1344, 806, 1344, 806}, /* 03 (720x350) */
> @@ -421,7 +442,8 @@ static const struct SiS_LCDData XGI_ExtLCD1280x1024Data[] = {
>
>  static const struct SiS_LCDData XGI_CetLCD1280x1024Data[] = {
>  	{1, 1, 1688, 1066, 1688, 1066}, /* 00 (320x200,320x400,
> -					       640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{1, 1, 1688, 1066, 1688, 1066}, /* 01 (320x350,640x350) */
>  	{1, 1, 1688, 1066, 1688, 1066}, /* 02 (360x400,720x400) */
>  	{1, 1, 1688, 1066, 1688, 1066}, /* 03 (720x350) */
> @@ -434,7 +456,8 @@ static const struct SiS_LCDData XGI_CetLCD1280x1024Data[] = {
>
>  static const struct SiS_LCDData xgifb_lcd_1400x1050[] = {
>  	{211, 100, 2100, 408,  1688, 1066}, /* 00 (320x200,320x400,
> -						   640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{211, 64,  1536, 358,  1688, 1066}, /* 01 (320x350,640x350) */
>  	{211, 100, 2100, 408,  1688, 1066}, /* 02 (360x400,720x400) */
>  	{211, 64,  1536, 358,  1688, 1066}, /* 03 (720x350) */
> @@ -442,13 +465,15 @@ static const struct SiS_LCDData xgifb_lcd_1400x1050[] = {
>  	{211, 72,  1008, 609,  1688, 1066}, /* 05 (800x600x60Hz) */
>  	{211, 128, 1400, 776,  1688, 1066}, /* 06 (1024x768x60Hz) */
>  	{1,   1,   1688, 1066, 1688, 1066}, /* 07 (1280x1024x60Hz
> -						  w/o Scaling) */
> +						* w/o Scaling)
> +						*/
>  	{1,   1,   1688, 1066, 1688, 1066}  /* 08 (1400x1050x60Hz) */
>  };
>
>  static const struct SiS_LCDData XGI_ExtLCD1600x1200Data[] = {
>  	{4,  1,  1620, 420,  2160, 1250}, /* 00 (320x200,320x400,
> -						 640x200,640x400)*/
> +						* 640x200,640x400)
> +						*/
>  	{27, 7,  1920, 375,  2160, 1250}, /* 01 (320x350,640x350) */
>  	{4,  1,  1620, 420,  2160, 1250}, /* 02 (360x400,720x400)*/
>  	{27, 7,  1920, 375,  2160, 1250}, /* 03 (720x350) */
> @@ -462,7 +487,8 @@ static const struct SiS_LCDData XGI_ExtLCD1600x1200Data[] = {
>
>  static const struct SiS_LCDData XGI_StLCD1600x1200Data[] = {
>  	{27,  4,  800,  500,  2160, 1250}, /* 00 (320x200,320x400,
> -						  640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{27,  4,  800,  500,  2160, 1250}, /* 01 (320x350,640x350) */
>  	{27,  4,  800,  500,  2160, 1250}, /* 02 (360x400,720x400) */
>  	{27,  4,  800,  500,  2160, 1250}, /* 03 (720x350) */
> @@ -489,7 +515,8 @@ static const struct SiS_LCDData XGI_NoScalingData[] = {
>
>  static const struct SiS_LCDData XGI_ExtLCD1024x768x75Data[] = {
>  	{42, 25, 1536, 419, 1344, 806}, /* ; 00 (320x200,320x400,
> -						 640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{48, 25, 1536, 369, 1344, 806}, /* ; 01 (320x350,640x350) */
>  	{42, 25, 1536, 419, 1344, 806}, /* ; 02 (360x400,720x400) */
>  	{48, 25, 1536, 369, 1344, 806}, /* ; 03 (720x350) */
> @@ -500,7 +527,8 @@ static const struct SiS_LCDData XGI_ExtLCD1024x768x75Data[] = {
>
>  static const struct SiS_LCDData XGI_CetLCD1024x768x75Data[] = {
>  	{1, 1, 1312, 800, 1312, 800}, /* ; 00 (320x200,320x400,
> -					       640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{1, 1, 1312, 800, 1312, 800}, /* ; 01 (320x350,640x350) */
>  	{1, 1, 1312, 800, 1312, 800}, /* ; 02 (360x400,720x400) */
>  	{1, 1, 1312, 800, 1312, 800}, /* ; 03 (720x350) */
> @@ -511,7 +539,8 @@ static const struct SiS_LCDData XGI_CetLCD1024x768x75Data[] = {
>
>  static const struct SiS_LCDData xgifb_lcd_1280x1024x75[] = {
>  	{211, 60,  1024, 501,  1688, 1066}, /* ; 00 (320x200,320x400,
> -						     640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{211, 60,  1024, 508,  1688, 1066}, /* ; 01 (320x350,640x350) */
>  	{211, 60,  1024, 501,  1688, 1066}, /* ; 02 (360x400,720x400) */
>  	{211, 60,  1024, 508,  1688, 1066}, /* ; 03 (720x350) */
> @@ -525,7 +554,8 @@ static const struct SiS_LCDData xgifb_lcd_1280x1024x75[] = {
>
>  static const struct SiS_LCDData XGI_NoScalingDatax75[] = {
>  	{1, 1, 800,  449,  800,  449},  /* ; 00 (320x200, 320x400,
> -						 640x200, 640x400) */
> +					* 640x200, 640x400)
> +					*/
>  	{1, 1, 800,  449,  800,  449},  /* ; 01 (320x350, 640x350) */
>  	{1, 1, 900,  449,  900,  449},  /* ; 02 (360x400, 720x400) */
>  	{1, 1, 900,  449,  900,  449},  /* ; 03 (720x350) */
> @@ -732,7 +762,8 @@ static const struct XGI_LCDDesStruct XGI_StLCDDes1600x1200Data[] = {
>
>  static const struct XGI330_LCDDataDesStruct2  XGI_NoScalingDesData[] = {
>  	{9, 657,  448, 405,  96,   2}, /* 00 (320x200,320x400,
> -					      640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{9, 657,  448, 355,  96,   2}, /* 01 (320x350,640x350) */
>  	{9, 657,  448, 405,  96,   2}, /* 02 (360x400,720x400) */
>  	{9, 657,  448, 355,  96,   2}, /* 03 (720x350) */
> @@ -818,7 +849,8 @@ static const struct XGI_LCDDesStruct XGI_CetLCDDes1280x1024x75Data[] = {
>  /* Scaling LCD 75Hz */
>  static const struct XGI330_LCDDataDesStruct2 XGI_NoScalingDesDatax75[] =  {
>  	{9, 657,  448, 405,  96,  2}, /* ; 00 (320x200,320x400,
> -					       640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{9, 657,  448, 355,  96,  2}, /* ; 01 (320x350,640x350) */
>  	{9, 738,  448, 405,  108, 2}, /* ; 02 (360x400,720x400) */
>  	{9, 738,  448, 355,  108, 2}, /* ; 03 (720x350) */
> @@ -873,7 +905,8 @@ static const struct SiS_TVData XGI_ExtNTSCData[] = {
>
>  static const struct SiS_TVData XGI_St1HiTVData[] = {
>  	{1, 1, 892,  563, 690,  800, 0,     0, 0}, /* 00 (320x200,320x400,
> -							  640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{1, 1, 892,  563, 690,  700, 0,     0, 0}, /* 01 (320x350,640x350) */
>  	{1, 1, 1000, 563, 785,  800, 0,     0, 0}, /* 02 (360x400,720x400) */
>  	{1, 1, 1000, 563, 785,  700, 0,     0, 0}, /* 03 (720x350) */
> @@ -883,7 +916,8 @@ static const struct SiS_TVData XGI_St1HiTVData[] = {
>
>  static const struct SiS_TVData XGI_St2HiTVData[] = {
>  	{3, 1, 840,  483, 1648, 960, 0x032, 0, 0}, /* 00 (320x200,320x400,
> -							  640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{1, 1, 892,  563, 690,  700, 0,     0, 0}, /* 01 (320x350,640x350) */
>  	{3, 1, 840,  483, 1648, 960, 0x032, 0, 0}, /* 02 (360x400,720x400) */
>  	{1, 1, 1000, 563, 785,  700, 0,     0, 0}, /* 03 (720x350) */
> @@ -893,7 +927,8 @@ static const struct SiS_TVData XGI_St2HiTVData[] = {
>
>  static const struct SiS_TVData XGI_ExtHiTVData[] = {
>  	{6,  1,  840,  563,  1632, 960, 0,     0, 0}, /* 00 (320x200,320x400,
> -							     640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{3,  1,  960,  563,  1632, 960, 0,     0, 0}, /* 01 (320x350,640x350) */
>  	{3,  1,  840,  483,  1632, 960, 0,     0, 0}, /* 02 (360x400,720x400) */
>  	{3,  1,  960,  563,  1632, 960, 0,     0, 0}, /* 03 (720x350) */
> @@ -948,7 +983,8 @@ static const struct SiS_TVData XGI_StYPbPr525pData[] = {
>
>  static const struct SiS_TVData XGI_ExtYPbPr750pData[] = {
>  	{ 3, 1,  935, 470, 1130, 680,  50, 0, 0}, /* 00 (320x200,320x400,
> -							 640x200,640x400) */
> +						* 640x200,640x400)
> +						*/
>  	{24, 7,  935, 420, 1130, 680,  50, 0, 0}, /* 01 (320x350,640x350) */
>  	{ 3, 1,  935, 470, 1130, 680,  50, 0, 0}, /* 02 (360x400,720x400) */
>  	{24, 7,  935, 420, 1130, 680,  50, 0, 0}, /* 03 (720x350) */
> @@ -1270,8 +1306,8 @@ static const struct SiS_LVDSData XGI_LVDSNoScalingDatax75[] = {
>  	{1056,  625, 1056, 625},  /* ; 05 (800x600x75Hz) */
>  	{1312,  800, 1312, 800},  /* ; 06 (1024x768x75Hz) */
>  	{1688, 1066, 1688, 1066}, /* ; 07 (1280x1024x75Hz) */
> -	{1688, 1066, 1688, 1066}, /* ; 08 (1400x1050x75Hz)
> -				     ;;[ycchen] 12/19/02 */
> +	{1688, 1066, 1688, 1066}, /* ; 08 (1400x1050x75Hz) */
> +				/* ;;[ycchen] 12/19/02 */
>  	{2160, 1250, 2160, 1250}, /* ; 09 (1600x1200x75Hz) */
>  	{1688,  806, 1688, 806},  /* ; 0A (1280x768x75Hz) */
>  };
> @@ -1366,7 +1402,8 @@ static const struct SiS_LVDSData XGI_LVDS1600x1200Des_1[] = {
>
>  static const struct XGI330_LCDDataDesStruct2  XGI_LVDSNoScalingDesData[] = {
>  	{0,  648,  448,  405,  96, 2}, /* 00 (320x200,320x400,
> -					      640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{0,  648,  448,  355,  96, 2}, /* 01 (320x350,640x350) */
>  	{0,  648,  448,  405,  96, 2}, /* 02 (360x400,720x400) */
>  	{0,  648,  448,  355,  96, 2}, /* 03 (720x350) */
> @@ -1437,7 +1474,8 @@ static const struct SiS_LVDSData XGI_LVDS1280x1024Des_2x75[] = {
>  /* Scaling LCD 75Hz */
>  static const struct XGI330_LCDDataDesStruct2 XGI_LVDSNoScalingDesDatax75[] = {
>  	{0,  648, 448,  405,  96, 2}, /* ; 00 (320x200,320x400,
> -					       640x200,640x400) */
> +					* 640x200,640x400)
> +					*/
>  	{0,  648, 448,  355,  96, 2}, /* ; 01 (320x350,640x350) */
>  	{0,  729, 448,  405, 108, 2}, /* ; 02 (360x400,720x400) */
>  	{0,  729, 448,  355, 108, 2}, /* ; 03 (720x350) */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160303112049.GA15290%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

