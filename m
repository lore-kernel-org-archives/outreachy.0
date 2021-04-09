X-GM-THRID: 6949108452540022784
X-Received: by 2002:a05:620a:1133:: with SMTP id p19mr13483440qkk.340.1617965393006;
        Fri, 09 Apr 2021 03:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls4934001qkl.4.gmail; Fri, 09
 Apr 2021 03:49:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxd4cA+BzQkPOgqO8VfBQDbkuh04RZE2U9cr5YhmWWZoFi0W550Ugk9Vj1pbMs02954k4wW
X-Received: by 2002:a05:620a:244f:: with SMTP id h15mr6902596qkn.235.1617965392021;
        Fri, 09 Apr 2021 03:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617965392; cv=none;
        d=google.com; s=arc-20160816;
        b=LeLYf2oHznQPwGspAB5CdxPgIglTuKergnjsyR96ljfVLNBsFC2eVcDJ/FvhiWlEip
         laqZYPQtOW0sbCoXBVvMzwdY2EIGTHHb7hrt+DfxoE3jJRmjwD610145Mbb0ajEuPpLO
         uTiQ96+7QXauMdzzpD+872AlrDV7vxdSqlpdYH/qU1QnaG9p9YrF9QzU19dzf86k1WEg
         s+5gmiNtcYbnW9OXaGgLfc/e2eBniIBVo1DVJatiTCQ+ZXlJAb6HU7Z94U14g8IXoTlW
         7YvO4rZV0Xklqq3I8PP5COVSz1WlbsIr+qk0rCENcYF13sTAGCj2aaQhVjxhXhmdAaWS
         4Tug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=MTKKnra19y+iueymzZLz4OT23+l1W56CyqNINWG69S4=;
        b=SpIA5F4KQVyM1wMS19orKhchCSOzknFsYsj49yYACavhkdnlkkpV1x+EimQ+XWKQfX
         MwPAlTcX0kjdlIFMYpgTscGDvBK7rhCGe9hnFXqxfT74u2oAwZI4+HTV40HcOMF7+JNc
         He4vY0ZrO6JmbpvxEKrznl67BFUwZC0otckX02kD9gnRWqy+0gN4qO2Y96DmWYBiD/82
         OboKU+moFynEsQ4/pa7xH/yR8x8fwmEhA65Ib06Qjfy6m/kzycpBseNCPoq2jno1IaFJ
         Z2mPY+YS2jtu+YVA1JJqRBzebIi4ylhA+54W949ysL8T+nkmjSit0518VqLGDEwm+62s
         QB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N4/chviV";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id b201si176052qkg.6.2021.04.09.03.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 03:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N4/chviV";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id q5so3961992pfh.10
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 03:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=MTKKnra19y+iueymzZLz4OT23+l1W56CyqNINWG69S4=;
        b=N4/chviV9lSBWi9WCDEyQZYwBQSBvMOrzRxUHtYIcGCy10zQ/S3uTaau5IEtFNXJ6Y
         E1f+MIPXBMirNCENeqZzsAi0JX+XIp3HdrCwHuHKlyZEIXc6Od+U0Nr5SV2evzv+qN9k
         TAVanxqFrNrYml6o803xcGeD/pz5vWtyVQ2OWfFpUjuqTkrMh/Sfj3WuhgX/1vl2TXBV
         admwGvuCNK+pEonrwB7/Yftl0RIaq6ni7333ad6wjCLH3c1vKP2V39jeeadKC7XY9xl+
         eg6/GzX298jsd5pEbpy4WQ5bMTSk6pdS0VArzbUd00FZYwYQUOxEkAOel6BivRToVPtk
         yWUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=MTKKnra19y+iueymzZLz4OT23+l1W56CyqNINWG69S4=;
        b=GRL9pokvhLLtBG4HgN/muj6UVnuu6dTkM4TVD1xEdkkdTmxLV7a10piol2A8qc81hE
         b9W1wDhxwGmZ00/P1uohlFLXdVrMPiV2EiFSBvPNged5F/UW50/sAUdM7ShITpV+o8qv
         wLapn1vrazXwHGZgj8kG4KMFp/EAZQjVJL0xKW5nJAe5YfRH6D1Ay8oACBdfv07ag9S2
         Qlyds+L8uUt51fL8Ubf4aCQmX748Yx9rN1zRZRMy75bwgOM542H3Qer9Xpc3cCiME7LS
         0GOVNRkyi4JYFiRaNoEq8leSxZ/kh14CDx+FwIJD4rlctEeeyR9/1v/EaiJD3goponPl
         sRiA==
X-Gm-Message-State: AOAM5313HQzMerHzk+SigUiFGGNJoLn8aIqyfHGBq2PQa9+4JugCIStP
	Il1BbX0pGDyAuHg0qW4uih8=
X-Received: by 2002:a65:63d6:: with SMTP id n22mr12885773pgv.393.1617965390995;
        Fri, 09 Apr 2021 03:49:50 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id m3sm2056796pfh.110.2021.04.09.03.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 03:49:50 -0700 (PDT)
Date: Fri, 9 Apr 2021 16:19:38 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2] staging: media: zoran: remove and add '*' in
 long(multi-line) comments
Message-ID: <YHAxQh9bfFeN337E@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Added '*' before every line inside long(multi-line) comments. Removed
'*/' from end of the comment line and added to next line as per linux
kernel coding style. Aligned '*' accordingly to make code neater.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- Changes made in code according to linux kernel coding
style for long(multi-line) comments.

drivers/staging/media/zoran/zr36050.c | 138 +++++++++++++++-----------
 1 file changed, 81 insertions(+), 57 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 663ac2b3434e..703064009c6b 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -25,7 +25,8 @@
 #include "videocodec.h"
 
 /* it doesn't make sense to have more than 20 or so,
- * just to prevent some unwanted loops */
+ * just to prevent some unwanted loops
+ */
 #define MAX_CODECS 20
 
 /* amount of chips attached via this driver */
@@ -44,9 +45,10 @@ MODULE_PARM_DESC(debug, "Debug level (0-4)");
 
 /* =========================================================================
  *  Local hardware I/O functions:
-
-   read/write via codec layer (registers are located in the master device)
-   ========================================================================= */
+ *
+ *  read/write via codec layer (registers are located in the master device)
+ * =========================================================================
+ */
 
 /* read and write functions */
 static u8 zr36050_read(struct zr36050 *ptr, u16 reg)
@@ -81,9 +83,10 @@ static void zr36050_write(struct zr36050 *ptr, u16 reg, u8 value)
 
 /* =========================================================================
  *  Local helper function:
-
-   status read
-   ========================================================================= */
+ *
+ *  status read
+ * =========================================================================
+ */
 
 /* status is kept in datastructure */
 static u8 zr36050_read_status1(struct zr36050 *ptr)
@@ -96,9 +99,10 @@ static u8 zr36050_read_status1(struct zr36050 *ptr)
 
 /* =========================================================================
  *  Local helper function:
-
-   scale factor read
-   ========================================================================= */
+ *
+ *  scale factor read
+ * =========================================================================
+ */
 
 /* scale factor is kept in datastructure */
 static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
@@ -113,9 +117,10 @@ static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
 
 /* =========================================================================
  *  Local helper function:
-
-   wait if codec is ready to proceed (end of processing) or time is over
-   ========================================================================= */
+ *
+ *  wait if codec is ready to proceed (end of processing) or time is over
+ * =========================================================================
+ */
 
 static void zr36050_wait_end(struct zr36050 *ptr)
 {
@@ -134,9 +139,10 @@ static void zr36050_wait_end(struct zr36050 *ptr)
 
 /* =========================================================================
  *  Local helper function:
-
-   basic test of "connectivity", writes/reads to/from memory the SOF marker
-   ========================================================================= */
+ *
+ *  basic test of "connectivity", writes/reads to/from memory the SOF marker
+ * =========================================================================
+ */
 
 static int zr36050_basic_test(struct zr36050 *ptr)
 {
@@ -175,9 +181,10 @@ static int zr36050_basic_test(struct zr36050 *ptr)
 
 /* =========================================================================
  *  Local helper function:
-
-   simple loop for pushing the init datasets
-   ========================================================================= */
+ *
+ *  simple loop for pushing the init datasets
+ * =========================================================================
+ */
 
 static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char *data)
 {
@@ -193,14 +200,15 @@ static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char
 
 /* =========================================================================
  *  Basic datasets:
-
-   jpeg baseline setup data (you find it on lots places in internet, or just
-   extract it from any regular .jpg image...)
-
-   Could be variable, but until it's not needed it they are just fixed to save
-   memory. Otherwise expand zr36050 structure with arrays, push the values to
-   it and initialize from there, as e.g. the linux zr36057/60 driver does it.
-   ========================================================================= */
+ *
+ *  jpeg baseline setup data (you find it on lots places in internet, or just
+ *  extract it from any regular .jpg image...)
+ *
+ *  Could be variable, but until it's not needed it they are just fixed to save
+ *  memory. Otherwise expand zr36050 structure with arrays, push the values to
+ *  it and initialize from there, as e.g. the linux zr36057/60 driver does it.
+ *  =========================================================================
+ */
 
 static const char zr36050_dqt[0x86] = {
 	0xff, 0xdb,		//Marker: DQT
@@ -295,15 +303,17 @@ static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
 /* =========================================================================
  *  Local helper functions:
-
-   calculation and setup of parameter-dependent JPEG baseline segments
-   (needed for compression only)
-   ========================================================================= */
+ *
+ *  calculation and setup of parameter-dependent JPEG baseline segments
+ *  (needed for compression only)
+ * =========================================================================
+ */
 
 /* ------------------------------------------------------------------------- */
 
 /* SOF (start of frame) segment depends on width, height and sampling ratio
- *			 of each color component */
+ *			 of each color component
+ */
 
 static int zr36050_set_sof(struct zr36050 *ptr)
 {
@@ -334,7 +344,8 @@ static int zr36050_set_sof(struct zr36050 *ptr)
 /* ------------------------------------------------------------------------- */
 
 /* SOS (start of scan) segment depends on the used scan components
- *			of each color component */
+ *			of each color component
+ */
 
 static int zr36050_set_sos(struct zr36050 *ptr)
 {
@@ -379,12 +390,14 @@ static int zr36050_set_dri(struct zr36050 *ptr)
 
 /* =========================================================================
  *  Setup function:
+ *
+ *  Setup compression/decompression of Zoran's JPEG processor
+ *  ( see also zoran 36050 manual )
+ *
+ *  ... sorry for the spaghetti code ...
+ * =========================================================================
+ */
 
-   Setup compression/decompression of Zoran's JPEG processor
-   ( see also zoran 36050 manual )
-
-   ... sorry for the spaghetti code ...
-   ========================================================================= */
 static void zr36050_init(struct zr36050 *ptr)
 {
 	int sum = 0;
@@ -420,7 +433,8 @@ static void zr36050_init(struct zr36050 *ptr)
 		sum += zr36050_set_dri(ptr);
 
 		/* setup the fixed jpeg tables - maybe variable, though -
-		 * (see table init section above) */
+		 * (see table init section above)
+		 */
 		dprintk(3, "%s: write DQT, DHT, APP\n", ptr->name);
 		sum += zr36050_pushit(ptr, ZR050_DQT_IDX,
 				      sizeof(zr36050_dqt), zr36050_dqt);
@@ -532,12 +546,15 @@ static void zr36050_init(struct zr36050 *ptr)
 
 /* =========================================================================
  *  CODEC API FUNCTIONS
-
-   this functions are accessed by the master via the API structure
-   ========================================================================= */
+ *
+ *  this functions are accessed by the master via the API structure
+ * =========================================================================
+ */
 
 /* set compression/expansion mode and launches codec -
- *  this should be the last call from the master before starting processing */
+ *  this should be the last call from the master before starting processing
+ */
+
 static int zr36050_set_mode(struct videocodec *codec, int mode)
 {
 	struct zr36050 *ptr = (struct zr36050 *)codec->data;
@@ -566,7 +583,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 		cap->decimation, cap->quality);
 	/* if () return -EINVAL;
 	 * trust the master driver that it knows what it does - so
-	 * we allow invalid startx/y and norm for now ... */
+	 * we allow invalid startx/y and norm for now ...
+	 */
 	ptr->width = cap->width / (cap->decimation & 0xff);
 	ptr->height = cap->height / ((cap->decimation >> 8) & 0xff);
 
@@ -586,7 +604,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 	ptr->real_code_vol = size >> 3; /* in bytes */
 
 	/* Set max_block_vol here (previously in zr36050_init, moved
- * here for consistency with zr36060 code */
+	 * here for consistency with zr36060 code
+	 */
 	zr36050_write(ptr, ZR050_MBCV, ptr->max_block_vol);
 
 	return 0;
@@ -643,7 +662,8 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 			return -EFAULT;
 		ptr->total_code_vol = *ival;
 		/* (Kieran Morrissey)
-		 * code copied from zr36060.c to ensure proper bitrate */
+		 * code copied from zr36060.c to ensure proper bitrate
+		 */
 		ptr->real_code_vol = (ptr->total_code_vol * 6) >> 3;
 		break;
 
@@ -708,9 +728,10 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 
 /* =========================================================================
  *  Exit and unregister function:
-
-   Deinitializes Zoran's JPEG processor
-   ========================================================================= */
+ *
+ *  Deinitializes Zoran's JPEG processor
+ * =========================================================================
+ */
 
 static int zr36050_unset(struct videocodec *codec)
 {
@@ -733,12 +754,13 @@ static int zr36050_unset(struct videocodec *codec)
 
 /* =========================================================================
  *  Setup and registry function:
-
-   Initializes Zoran's JPEG processor
-
-   Also sets pixel size, average code size, mode (compr./decompr.)
-   (the given size is determined by the processor with the video interface)
-   ========================================================================= */
+ *
+ *  Initializes Zoran's JPEG processor
+ *
+ *  Also sets pixel size, average code size, mode (compr./decompr.)
+ *  (the given size is determined by the processor with the video interface)
+ * =========================================================================
+ */
 
 static int zr36050_setup(struct videocodec *codec)
 {
@@ -774,7 +796,8 @@ static int zr36050_setup(struct videocodec *codec)
 	memcpy(ptr->v_samp_ratio, zr36050_decimation_v, 8);
 
 	ptr->bitrate_ctrl = 0;	/* 0 or 1 - fixed file size flag
-				 * (what is the difference?) */
+				 * (what is the difference?)
+				 */
 	ptr->mode = CODEC_DO_COMPRESSION;
 	ptr->width = 384;
 	ptr->height = 288;
@@ -814,7 +837,8 @@ static const struct videocodec zr36050_codec = {
 
 /* =========================================================================
  *  HOOK IN DRIVER AS KERNEL MODULE
-   ========================================================================= */
+ * =========================================================================
+ */
 
 static int __init zr36050_init_module(void)
 {
-- 
2.30.2


