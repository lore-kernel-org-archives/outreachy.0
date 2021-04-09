X-GM-THRID: 6949121475424026624
X-Received: by 2002:a63:2165:: with SMTP id s37mr12951576pgm.145.1617968425819;
        Fri, 09 Apr 2021 04:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls4007441plx.1.gmail; Fri, 09
 Apr 2021 04:40:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUTDvDCBUYgcUv3RoGi/fycJKtv8nm1XR6JmDDXwgjjhgT7WriXqIY1oYdCfVxF3A56P2n
X-Received: by 2002:a17:90b:368b:: with SMTP id mj11mr7056022pjb.217.1617968424699;
        Fri, 09 Apr 2021 04:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617968424; cv=none;
        d=google.com; s=arc-20160816;
        b=WsxZNnoVKLK8S6HdCJGmzIbgVAe1onx9QOembj0IdONqCUoC59bvjT+e2QWTaOH0UV
         2tpH0hO95FUTG+bKWvNn+1U/7+TD5oqCW3LbBP8h4N9EXOLNkI9RiDMBi6pSZE3zZVRe
         uT5t8ggEZ/pmw+9gaSDHqg+jayownkblf+Th/4sIyB4Hah3FkNg7FfiqNAgyG4iQRb2w
         rGspmFXCsQTPVJttYpjZT0ygHLEYSpCWckm1np/FTYhFsq+kVpv+3H65rFhSHPOlHEhu
         kWN87dXd5BqsujxFzvuNxcqaEpYVk+Mso/4eWxh665JDz4ZNe5Xj3C7z6jklZGMgseZy
         V21g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=M4xX2WWfEqm7PGNI70AcSFeFug982FHKb8Dt0b/QqpQ=;
        b=XPj4ofHtuDmMOanH1h5BRP1bODNkd9d87TE+yBBz1EdmiP6hDyRovSf1H1JFoEkHu7
         cFlNBC46e0ktG0XisKm8wFcZUcmagALHQHDN7YlawUYzGKcX18RvTp+FvxXY6J6AUeny
         Tb+hHgNFWdyl6k7u33RNXXbY5ihopOWrjBaRKEbzDbNGkA72pETyj16sl9K65NQ2BoWt
         IFsclMZPjaw/ErvoCm+BQZE1uWfGkXKgQxLNdkH0Cai9Dcl8J1YT/6EvRYW3qMYIzXrB
         ZM4tyzCVwfuXEisUNy4ZrI6zGK9X/xhM7fC8W94c2BrCzcpPjpDbvogW2PGpOio21oyx
         843w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vSPUmZpm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id mp9si80534pjb.1.2021.04.09.04.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 04:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vSPUmZpm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id 7so2613590plb.7
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 04:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=M4xX2WWfEqm7PGNI70AcSFeFug982FHKb8Dt0b/QqpQ=;
        b=vSPUmZpmgYYgSkQNzGePiVkKAonQ6CSFAsAIqewjEWD2/5cYOPYSu/TYwYBaiys5N4
         1O9MgUNs11EfINvx5nlt2nODwsba9ow5TPW0At8E+pmJvg/VqagcB5X6DXFdQe7Fi0/N
         T3EGOWO3SnShUixUDlgLU65CEwka8aDhSmooz812PueEg9EMd9nUhkzYnAMLhDcwkBV+
         m4gzV+zTSZzWB1zk8VRvrMnIXFy440Ccbg0XLxSwj3CEq6HFP1Kp0WGVCKVdrQ0BBZj+
         hcNz4OucUSws3F/aGP3hrPcwShgGhsGgAnxeEaqAFB9Cil1ZIQRLY1uKyQPzoK79A2ph
         pWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=M4xX2WWfEqm7PGNI70AcSFeFug982FHKb8Dt0b/QqpQ=;
        b=RF+7ppBXSpXyrpsAuLeynVKkh4RgR6EdJGL0BEhJibJDeyaI9ucZt+Xj7tdxU8fGgx
         I1w4FdDmXOpXyKBll6fkHuGXh3ghkHVznA5fl6F2Gqr+Iu4g/e5FapWPX0nnAeVA4pFM
         Ns8LpY6qaJPCZwMfwahOgZSOppXb98gaUdYlYVW7iAqVNeukc8npidMEQKtlODZxDbhJ
         9/BN4m9Xwvhr/Q4eGazJsxkCWQBbR+nOmPSGGDs0GCBExIS7dxs7HoEU4rQrLYWtMKP1
         8FP4/LKbAQnBYA7qttTuLBSvippJXIX0KfPQjyh1ZUZGt7hgZB2sJIcI6392ZQDKNG3S
         PkGA==
X-Gm-Message-State: AOAM53384g7tdQZrGCYe7z42y7snqhbbfhQ5kYpWWkOEURKmcRC5MCJJ
	HnN1la4rg5/+JylvptxYorQ=
X-Received: by 2002:a17:902:db05:b029:e9:ab78:51fd with SMTP id m5-20020a170902db05b02900e9ab7851fdmr3319055plx.22.1617968424384;
        Fri, 09 Apr 2021 04:40:24 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id x22sm2108568pfa.24.2021.04.09.04.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 04:40:24 -0700 (PDT)
Date: Fri, 9 Apr 2021 17:10:17 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3] staging: media: zoran: remove and move statement in next
 line with '*'
Message-ID: <YHA9IdZVRr4kbVJ0@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed and moved statement in line in long(multi-line) comments and
added '*' before it to meet linux kernel coding style for long (multi-line) comments

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v2:- made style changes in code according to linux kernel
coding style for long comments.

drivers/staging/media/zoran/zr36050.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 703064009c6b..b89afa239b0c 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -24,7 +24,8 @@
 /* codec io API */
 #include "videocodec.h"
 
-/* it doesn't make sense to have more than 20 or so,
+/*
+ * it doesn't make sense to have more than 20 or so,
  * just to prevent some unwanted loops
  */
 #define MAX_CODECS 20
@@ -311,7 +312,8 @@ static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
 /* ------------------------------------------------------------------------- */
 
-/* SOF (start of frame) segment depends on width, height and sampling ratio
+/*
+ * SOF (start of frame) segment depends on width, height and sampling ratio
  *			 of each color component
  */
 
@@ -343,7 +345,8 @@ static int zr36050_set_sof(struct zr36050 *ptr)
 
 /* ------------------------------------------------------------------------- */
 
-/* SOS (start of scan) segment depends on the used scan components
+/*
+ * SOS (start of scan) segment depends on the used scan components
  *			of each color component
  */
 
@@ -432,7 +435,8 @@ static void zr36050_init(struct zr36050 *ptr)
 		sum += zr36050_set_sos(ptr);
 		sum += zr36050_set_dri(ptr);
 
-		/* setup the fixed jpeg tables - maybe variable, though -
+		/*
+		 * setup the fixed jpeg tables - maybe variable, though -
 		 * (see table init section above)
 		 */
 		dprintk(3, "%s: write DQT, DHT, APP\n", ptr->name);
@@ -551,8 +555,9 @@ static void zr36050_init(struct zr36050 *ptr)
  * =========================================================================
  */
 
-/* set compression/expansion mode and launches codec -
- *  this should be the last call from the master before starting processing
+/*
+ * set compression/expansion mode and launches codec -
+ * this should be the last call from the master before starting processing
  */
 
 static int zr36050_set_mode(struct videocodec *codec, int mode)
@@ -581,7 +586,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 		ptr->name, norm->h_start, norm->v_start,
 		cap->x, cap->y, cap->width, cap->height,
 		cap->decimation, cap->quality);
-	/* if () return -EINVAL;
+	/*
+	 * if () return -EINVAL;
 	 * trust the master driver that it knows what it does - so
 	 * we allow invalid startx/y and norm for now ...
 	 */
@@ -603,7 +609,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
 
 	ptr->real_code_vol = size >> 3; /* in bytes */
 
-	/* Set max_block_vol here (previously in zr36050_init, moved
+	/*
+	 * Set max_block_vol here (previously in zr36050_init, moved
 	 * here for consistency with zr36060 code
 	 */
 	zr36050_write(ptr, ZR050_MBCV, ptr->max_block_vol);
@@ -661,7 +668,8 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 		if (size != sizeof(int))
 			return -EFAULT;
 		ptr->total_code_vol = *ival;
-		/* (Kieran Morrissey)
+		/*
+		 * (Kieran Morrissey)
 		 * code copied from zr36060.c to ensure proper bitrate
 		 */
 		ptr->real_code_vol = (ptr->total_code_vol * 6) >> 3;
-- 
2.30.2


