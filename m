X-GM-THRID: 6950695030692511744
X-Received: by 2002:a05:6808:140c:: with SMTP id w12mr766699oiv.8.1618334797867;
        Tue, 13 Apr 2021 10:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:65cf:: with SMTP id z15ls5012983oth.10.gmail; Tue, 13
 Apr 2021 10:26:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEXYjUEM0xCqg01MTS8phW/h7KM+S+q9BPBPttM3mr1ODaXjl2th8ULXG3frXsWCs5K5s8
X-Received: by 2002:a9d:6e9:: with SMTP id 96mr9147682otx.118.1618334797171;
        Tue, 13 Apr 2021 10:26:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618334797; cv=none;
        d=google.com; s=arc-20160816;
        b=Fgs1yH3HPvvkkFTxSRwyxn0xpYlawEE37OLCoZQLbCOVKMxbWl6vnD3N7JMfmRmO4Z
         gkffSgOoLeu35YZR3c+kDUB4POVhLtsz+2CfEgWJKAZHK2UPKdfHUEy1F9fXrCazt5l8
         pkr9siqI77AH+wN97rgK0cLbzLAZt1IXbMaljVx3o/J9JyqiIvXqWAUeultRg5MoGjrb
         L4yLpqYroqhVUf200NjJhdXQ0XH0Xg/Ql//3PrKx7JHEpSKekL/CY8cG2fG2fktG9A0b
         gcwiKCDKmSWYW2KhlCU7fBFw/3mA0w2TPpWuaPYCQtiRp0DTF8Zb/4ao/iCIPUhwQMcH
         nutw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=P/nF+Bi9t9pQ6aC5jnW/oRn1P0rw0LcucwwKdVoOO7Q=;
        b=A7Ejo3/dlR2uloe14yznpgsSV4lJHXhhbi6gOI1J6WJtp/kmHJwu7AU5+KhCxFRL8u
         CSbGivxsXNMySOfLWG4EwrjwFH6E/lPKliTfP0xOyeXMtJlU9HTBYsWADLuAEGBA/2ak
         1yk0ag2LS16Q5eB5df2UjYhMe+6wYJHwGK0gALoVNwUO1YRTsQuZKJeWa/7t/opiBIDu
         eKGUf7+aDDMUQzfcZRtXPG+Hgx07zKaHgKoa7mbTv4dqWz5vSoNom7/055qUn7meSB0M
         +vRh41yiRhJnZoxF9UbHOB+vgUH6+OSqMgGUjEN3hUZBu3NCv4Ftj4aqkAfrSSxVQ37T
         5NFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJ2+lRh+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id t25si835198otc.4.2021.04.13.10.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 10:26:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJ2+lRh+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id p67so6924206pfp.10
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 10:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=P/nF+Bi9t9pQ6aC5jnW/oRn1P0rw0LcucwwKdVoOO7Q=;
        b=AJ2+lRh++FAHgdAnQ+Nnkb5tqd304aC8IFqvS/AZJwhMOFKNZGBIZ1xp5qLno3pvvb
         yWNI4+p/oB57IFT0Phcpoqf68LZyhNGuAODWXXThLqO0AcIUN6T989AlxuycqRGvAFMA
         8vp9sJakGV4e1Z/e7oC9YjzMfKmn67FTnYjj6eSAkEytitLV6mmGgxel2LYmKh+5eSIb
         MtZdIXpG2A/D8XrSvSKWhW8wjEj9Ezhm3pmaYv0updCZH/qVYueLPEZ7kLqZzoVDP+Ds
         aD88/uzFpVzFRcc200B5wJ3043Pp9btDQzmIfMVq+1WDJ9HSlXfQ2v9M32RxgkGET6yW
         bdFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=P/nF+Bi9t9pQ6aC5jnW/oRn1P0rw0LcucwwKdVoOO7Q=;
        b=RlL01xno9gFitGn9q8eQsFXYHTdDGrO8fIuZFG9k+XPOovqqThnF/DbXht1T4Gr36u
         Fa2peTb7go/mslY0newZW8czXVaw4InyHjqRJX616jnFstFF0kJ1amuAVNmRXP2P1zdb
         bp6nNcT/qMBGaUFUZei3S/T/PjCVxhk+cg/plaEzOh2z3r/tgUh2nY99o06w/22Fbs/i
         dld9xlKT+CeQOf1Tts7dScZ6DLa+Z6tzPKd3DhbrlsxxypLtp3zrXGzC2dlYTFdxeV8O
         edWpd52vwGx3IdAxykqnlGBUfxFlMZ7Q1lzUKUVoVZy3WDCwHHcca5WPtKY8vydwk46o
         SuuQ==
X-Gm-Message-State: AOAM533TRMQ6r8LTfeQbtCgy7iwen1mzRV1u6Is8ldklu5mxpAVqpW2T
	zqOodiVFi9WHyI5cG7iqdro=
X-Received: by 2002:a65:5c4d:: with SMTP id v13mr16355555pgr.161.1618334796257;
        Tue, 13 Apr 2021 10:26:36 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id k15sm13243834pfi.0.2021.04.13.10.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 10:26:35 -0700 (PDT)
Date: Tue, 13 Apr 2021 22:56:25 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Subject: [PATCH v4]  staging: media: zoran: add '*' in
 long(multi-line) comments
Message-ID: <YHXUQc+IgZ1y9TQu@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Added '*' before every line inside long(multi-line) comments. Removed
'*/' from end of the comment line and added to next line as per linux
kernel coding style. Aligned '*' accordingly to make code neater.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v3:- Rebased this patch and made changes against mainline
code. 
Changes from v2:- made style changes in code according to linux kernel
coding style for long comments.
Changes from v1:- Changes made in code according to linux kernel coding
style for long(multi-line) comments.

 drivers/staging/media/zoran/zr36050.c | 192 +++++++++++++++-----------
 1 file changed, 112 insertions(+), 80 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 2826f4e5d37b..a1084aa142e7 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -24,8 +24,11 @@
 /* codec io API */
 #include "videocodec.h"
 
-/* it doesn't make sense to have more than 20 or so,
-  just to prevent some unwanted loops */
+/*
+ * it doesn't make sense to have more than 20 or so,
+ * just to prevent some unwanted loops
+ */
+
 #define MAX_CODECS 20
 
 /* amount of chips attached via this driver */
@@ -43,10 +46,11 @@ MODULE_PARM_DESC(debug, "Debug level (0-4)");
 	} while (0)
 
 /* =========================================================================
-   Local hardware I/O functions:
-
-   read/write via codec layer (registers are located in the master device)
-   ========================================================================= */
+ * Local hardware I/O functions:
+ *
+ * read/write via codec layer (registers are located in the master device)
+ * =========================================================================
+ */
 
 /* read and write functions */
 static u8 zr36050_read(struct zr36050 *ptr, u16 reg)
@@ -80,10 +84,11 @@ static void zr36050_write(struct zr36050 *ptr, u16 reg, u8 value)
 }
 
 /* =========================================================================
-   Local helper function:
-
-   status read
-   ========================================================================= */
+ * Local helper function:
+ *
+ * status read
+ * =========================================================================
+ */
 
 /* status is kept in datastructure */
 static u8 zr36050_read_status1(struct zr36050 *ptr)
@@ -95,10 +100,11 @@ static u8 zr36050_read_status1(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
-
-   scale factor read
-   ========================================================================= */
+ * Local helper function:
+ *
+ * scale factor read
+ * =========================================================================
+ */
 
 /* scale factor is kept in datastructure */
 static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
@@ -112,10 +118,11 @@ static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
-
-   wait if codec is ready to proceed (end of processing) or time is over
-   ========================================================================= */
+ * Local helper function:
+ *
+ * wait if codec is ready to proceed (end of processing) or time is over
+ * =========================================================================
+ */
 
 static void zr36050_wait_end(struct zr36050 *ptr)
 {
@@ -133,10 +140,11 @@ static void zr36050_wait_end(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
-
-   basic test of "connectivity", writes/reads to/from memory the SOF marker
-   ========================================================================= */
+ * Local helper function:
+ *
+ * basic test of "connectivity", writes/reads to/from memory the SOF marker
+ * =========================================================================
+ */
 
 static int zr36050_basic_test(struct zr36050 *ptr)
 {
@@ -174,10 +182,11 @@ static int zr36050_basic_test(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
-
-   simple loop for pushing the init datasets
-   ========================================================================= */
+ * Local helper function:
+ *
+ * simple loop for pushing the init datasets
+ * =========================================================================
+ */
 
 static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char *data)
 {
@@ -192,15 +201,16 @@ static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char
 }
 
 /* =========================================================================
-   Basic datasets:
-
-   jpeg baseline setup data (you find it on lots places in internet, or just
-   extract it from any regular .jpg image...)
-
-   Could be variable, but until it's not needed it they are just fixed to save
-   memory. Otherwise expand zr36050 structure with arrays, push the values to
-   it and initialize from there, as e.g. the linux zr36057/60 driver does it.
-   ========================================================================= */
+ * Basic datasets:
+ *
+ * jpeg baseline setup data (you find it on lots places in internet, or just
+ * extract it from any regular .jpg image...)
+ *
+ * Could be variable, but until it's not needed it they are just fixed to save
+ * memory. Otherwise expand zr36050 structure with arrays, push the values to
+ * it and initialize from there, as e.g. the linux zr36057/60 driver does it.
+ * =========================================================================
+ */
 
 static const char zr36050_dqt[0x86] = {
 	0xff, 0xdb,		//Marker: DQT
@@ -294,16 +304,19 @@ static const char zr36050_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
 static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
 /* =========================================================================
-   Local helper functions:
-
-   calculation and setup of parameter-dependent JPEG baseline segments
-   (needed for compression only)
-   ========================================================================= */
+ * Local helper functions:
+ *
+ * calculation and setup of parameter-dependent JPEG baseline segments
+ * (needed for compression only)
+ * =========================================================================
+ */
 
 /* ------------------------------------------------------------------------- */
 
-/* SOF (start of frame) segment depends on width, height and sampling ratio
-			 of each color component */
+/*
+ * SOF (start of frame) segment depends on width, height and sampling ratio
+ * of each color component
+ */
 
 static int zr36050_set_sof(struct zr36050 *ptr)
 {
@@ -333,8 +346,10 @@ static int zr36050_set_sof(struct zr36050 *ptr)
 
 /* ------------------------------------------------------------------------- */
 
-/* SOS (start of scan) segment depends on the used scan components
-			of each color component */
+/*
+ * SOS (start of scan) segment depends on the used scan components
+ * of each color component
+ */
 
 static int zr36050_set_sos(struct zr36050 *ptr)
 {
@@ -378,13 +393,14 @@ static int zr36050_set_dri(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Setup function:
-
-   Setup compression/decompression of Zoran's JPEG processor
-   ( see also zoran 36050 manual )
-
-   ... sorry for the spaghetti code ...
-   ========================================================================= */
+ * Setup function:
+ *
+ * Setup compression/decompression of Zoran's JPEG processor
+ * ( see also zoran 36050 manual )
+ *
+ * ... sorry for the spaghetti code ...
+ * =========================================================================
+ */
 static void zr36050_init(struct zr36050 *ptr)
 {
 	int sum = 0;
@@ -419,8 +435,10 @@ static void zr36050_init(struct zr36050 *ptr)
 		sum += zr36050_set_sos(ptr);
 		sum += zr36050_set_dri(ptr);
 
-		/* setup the fixed jpeg tables - maybe variable, though -
-		 * (see table init section above) */
+		/*
+		 * setup the fixed jpeg tables - maybe variable, though -
+		 * (see table init section above)
+		 */
 		dprintk(3, "%s: write DQT, DHT, APP\n", ptr->name);
 		sum += zr36050_pushit(ptr, ZR050_DQT_IDX,
 				      sizeof(zr36050_dqt), zr36050_dqt);
@@ -531,13 +549,16 @@ static void zr36050_init(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   CODEC API FUNCTIONS
-
-   this functions are accessed by the master via the API structure
-   ========================================================================= */
+ * CODEC API FUNCTIONS
+ *
+ * this functions are accessed by the master via the API structure
+ * =========================================================================
+ */
 
-/* set compression/expansion mode and launches codec -
-   this should be the last call from the master before starting processing */
+/*
+ * set compression/expansion mode and launches codec -
+ * this should be the last call from the master before starting processing
+ */
 static int zr36050_set_mode(struct videocodec *codec, int mode)
 {
 	struct zr36050 *ptr = (struct zr36050 *)codec->data;
@@ -564,9 +585,11 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 		ptr->name, norm->h_start, norm->v_start,
 		cap->x, cap->y, cap->width, cap->height,
 		cap->decimation, cap->quality);
-	/* if () return -EINVAL;
+	/*
+	 * if () return -EINVAL;
 	 * trust the master driver that it knows what it does - so
-	 * we allow invalid startx/y and norm for now ... */
+	 * we allow invalid startx/y and norm for now ...
+	 */
 	ptr->width = cap->width / (cap->decimation & 0xff);
 	ptr->height = cap->height / ((cap->decimation >> 8) & 0xff);
 
@@ -585,8 +608,10 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 
 	ptr->real_code_vol = size >> 3; /* in bytes */
 
-	/* Set max_block_vol here (previously in zr36050_init, moved
- * here for consistency with zr36060 code */
+	/*
+	 * Set max_block_vol here (previously in zr36050_init, moved
+	 * here for consistency with zr36060 code
+	 */
 	zr36050_write(ptr, ZR050_MBCV, ptr->max_block_vol);
 
 	return 0;
@@ -642,8 +667,10 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 		if (size != sizeof(int))
 			return -EFAULT;
 		ptr->total_code_vol = *ival;
-		/* (Kieran Morrissey)
-		 * code copied from zr36060.c to ensure proper bitrate */
+		/*
+		 * (Kieran Morrissey)
+		 * code copied from zr36060.c to ensure proper bitrate
+		 */
 		ptr->real_code_vol = (ptr->total_code_vol * 6) >> 3;
 		break;
 
@@ -707,10 +734,11 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 }
 
 /* =========================================================================
-   Exit and unregister function:
-
-   Deinitializes Zoran's JPEG processor
-   ========================================================================= */
+ * Exit and unregister function:
+ *
+ * Deinitializes Zoran's JPEG processor
+ * =========================================================================
+ */
 
 static int zr36050_unset(struct videocodec *codec)
 {
@@ -732,13 +760,14 @@ static int zr36050_unset(struct videocodec *codec)
 }
 
 /* =========================================================================
-   Setup and registry function:
-
-   Initializes Zoran's JPEG processor
-
-   Also sets pixel size, average code size, mode (compr./decompr.)
-   (the given size is determined by the processor with the video interface)
-   ========================================================================= */
+ * Setup and registry function:
+ *
+ * Initializes Zoran's JPEG processor
+ *
+ * Also sets pixel size, average code size, mode (compr./decompr.)
+ * (the given size is determined by the processor with the video interface)
+ * =========================================================================
+ */
 
 static int zr36050_setup(struct videocodec *codec)
 {
@@ -773,8 +802,10 @@ static int zr36050_setup(struct videocodec *codec)
 	memcpy(ptr->h_samp_ratio, zr36050_decimation_h, 8);
 	memcpy(ptr->v_samp_ratio, zr36050_decimation_v, 8);
 
-	ptr->bitrate_ctrl = 0;	/* 0 or 1 - fixed file size flag
-				 * (what is the difference?) */
+	ptr->bitrate_ctrl = 0;	/*
+				 * 0 or 1 - fixed file size flag
+				 * (what is the difference?)
+				 */
 	ptr->mode = CODEC_DO_COMPRESSION;
 	ptr->width = 384;
 	ptr->height = 288;
@@ -813,8 +844,9 @@ static const struct videocodec zr36050_codec = {
 };
 
 /* =========================================================================
-   HOOK IN DRIVER AS KERNEL MODULE
-   ========================================================================= */
+ * HOOK IN DRIVER AS KERNEL MODULE
+ * =========================================================================
+ */
 
 static int __init zr36050_init_module(void)
 {
-- 
2.30.2


