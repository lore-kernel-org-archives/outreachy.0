X-GM-THRID: 6946995103705595904
X-Received: by 2002:a05:600c:21d2:: with SMTP id x18mr18102747wmj.175.1617473347889;
        Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls3199521wrb.1.gmail; Sat,
 03 Apr 2021 11:09:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSqgtZYJ3/Gsc1+S2deMeM+YoSza7XAvGTQbcftDjjRWC269WNjEwX3eVjLSsf1ZUhq6pw
X-Received: by 2002:adf:8b4e:: with SMTP id v14mr20875960wra.103.1617473346576;
        Sat, 03 Apr 2021 11:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473346; cv=none;
        d=google.com; s=arc-20160816;
        b=ZMKmDM8AUW+kn4ovQCEmCfZNVNl4O6ibcS/DPynRrnB5nSAw/LzYn8od9bk2JlWyPQ
         0yb5cUAAGM/ZIWQYji+P3GaQgoElTXUaUagbAujzRQJMj/uYNjMev/vb9IHrm2GfOLss
         e3Cl16en8Pv1Puega00SoWbleLgGJl/i7YJJn95uR4UWr1uc/Q0+x82xcvS4U5Zj6wi7
         UzVumSFd58xyiROeuJkCCnfSIAzvKa1D+VRowxerhRdXy8vGjLL6irs8F5NFHPatSmUP
         ZuPA4REFZl4clQFBVLXyLxrb2qKaW6FA3Z+dCv3yhvj6MJw3OuCDfdM7G79qkKc7IUQl
         idcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O3p5QBNJq6bpJriPcr9hUrPsu9ysLNiodRXiRx02CbM=;
        b=CCpG5gS28ATuKbguzs29Jlshq7ZWRv6/vc4+TY8pydZUEeuDdrTj8DumomVSZpMsbo
         I/UW8x9eL0tuTeqHzIaGqiAPmMil3oFI/v+8+RxbW1KlfXR6Yk8q9jBcd/BCwNcx7AgG
         xUPpRL9GbTNKQXreEh3+qv/w4Tz2fwumz0QVLarElfRUw58CLLy8ROEZppuvS5SdMeOr
         YfxWuIuDhl5Ae4mZtoehNJ2FXS/50C+tyyFLQUzUdC4qNnAHivCaec3EGb2A2azZSVZL
         HmeFznKJXuvaFr5abCoJIIUj4pvr5B2LhdfUHFNup6dL9738y+tZd6By9uU1pFDZh7hc
         mndA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVCczNC1;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id b6si1331596wmc.2.2021.04.03.11.09.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVCczNC1;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x134.google.com with SMTP id d13so11752467lfg.7
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=O3p5QBNJq6bpJriPcr9hUrPsu9ysLNiodRXiRx02CbM=;
        b=ZVCczNC1Ysv5H3DSWYKx5vFPj4JxgQ2wgTw5t35q2XPko5TERIcOEj58CJK2WOb17C
         JkeipxkRHbcPOS1nPcR6YaiGJa4fHsFpyi1QxarMFT6MkUDurwT8vhFQ1Iw5OuJiD8tq
         2DIiqaBlyJJUKiTXSV0FQ/0hTGV1m0IeHA6QFs4KrTeC9hvww2lMRE1nZBayIPFl2icQ
         uCpTcRkk2u0mgqXWOMdEr96zvRstfATAQaG0rT5lNwseSvAyrrua/ekXZibSJNG5zmGI
         qXhoIinaxyKcRJfLoe7WityyHbT95yqEmSH61nKNxpmFAZvlHV0KFmiSr29xnapM4CV/
         qrcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=O3p5QBNJq6bpJriPcr9hUrPsu9ysLNiodRXiRx02CbM=;
        b=so6CWT2XgNjPHaorW95dnmXRdrgOLFd+214sgOIzZvzP5rqRRQOA9hFxPtMxdsNBN1
         YOFIn3upMmsWUdIlO0J2vSsITbiCcqlX6RNFTQEcsaf6MEDU7cuh3qrYWTEkK5mzytSr
         z4o5lfWVWXr2nZIFUzdWBNVtVbo6bdmef6BLTkDOWacwH6ma74vVMToK0qyxxaZFHKV2
         xUxrfx+nhSWzKwhb4/nqrcDQxEuRjvmn08BkMiw42+kVNpsWc4veR+sXS9nW+Prs3sDj
         wORnSrRDBPOAckR5t+FQcuphfYpHKfcZd3BW7dbOE1X4ZkHyCakYuZAXrwByhe+NwTwH
         MkEQ==
X-Gm-Message-State: AOAM530NmNCQVPOikRZfHS17HX8rPCPbjOej274IsAW6VOrCMjQdidlQ
	yfyfzSip71gU9sCMJTgCQQPAiisXR+6umWyw
X-Received: by 2002:ac2:5306:: with SMTP id c6mr12081779lfh.88.1617473345910;
        Sat, 03 Apr 2021 11:09:05 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id d8sm1207325lfa.49.2021.04.03.11.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:05 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:02 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: media: zoran: Rename 'VidWinWid' to
 'vid_win_wid'
Message-ID: <426cd7e38b03926aa8de9e4d3e630433e9c11f3d.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'VidWinWid' to 'vid_win_wid' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 8891f11f6276..f0344f4a4727 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -293,7 +293,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	const struct tvnorm *tvn;
 	unsigned int h_start, h_end, v_start, v_end;
 	unsigned int disp_mode;
-	unsigned int VidWinWid, VidWinHt;
+	unsigned int vid_win_wid, VidWinHt;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
 	unsigned int wa, We, ha, He;
 	unsigned int X, Y, hor_dcm, ver_dcm;
@@ -316,9 +316,9 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	/**** zr36057 ****/
 
 	/* horizontal */
-	VidWinWid = video_width;
-	X = DIV_ROUND_UP(VidWinWid * 64, tvn->wa);
-	We = (VidWinWid * 64) / X;
+	vid_win_wid = video_width;
+	X = DIV_ROUND_UP(vid_win_wid * 64, tvn->wa);
+	We = (vid_win_wid * 64) / X;
 	hor_dcm = 64 - X;
 	hcrop1 = 2 * ((tvn->wa - We) / 4);
 	hcrop2 = tvn->wa - We - hcrop1;
@@ -384,7 +384,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	/* display configuration */
 	reg = (16 << ZR36057_VDCR_MIN_PIX)
 	    | (VidWinHt << ZR36057_VDCR_VID_WIN_HT)
-	    | (VidWinWid << ZR36057_VDCR_VID_WIN_WID);
+	    | (vid_win_wid << ZR36057_VDCR_VID_WIN_WID);
 	if (pci_pci_problems & PCIPCI_TRITON)
 		// || zr->revision < 1) // Revision 1 has also Triton support
 		reg &= ~ZR36057_VDCR_TRITON;
-- 
2.25.1


