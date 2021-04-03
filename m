X-GM-THRID: 6946995103705595904
X-Received: by 2002:aa7:da06:: with SMTP id r6mr22506552eds.86.1617473348592;
        Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:c24:: with SMTP id ga36ls5967981ejc.9.gmail; Sat, 03
 Apr 2021 11:09:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyIpqcCpoXc+RiP8idW7CYj/3BGz28GH3hrrQMglSN/QmK+ReiasD4Gq3mvUPB9ZPfp0YgN
X-Received: by 2002:a17:906:71d3:: with SMTP id i19mr20401147ejk.347.1617473347169;
        Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473347; cv=none;
        d=google.com; s=arc-20160816;
        b=qwC5dYgsAxKuJITWtG2i26vhtSp0gU2v2Gy7rS4CrsPqb1vxOK7QOUhYhXviSuYiY2
         UuzZ9wT8x31NXeQYM0SFVvTijvoTcxWgk+LZLpEqo9O9xmulr4mFLiprOBX0RV30w8CM
         sqkZG+0t14IZlIozS89+mxi1BXOl1VFP88FqTKtISwF31fhpzPcm83UHhT7cnjNN4Srk
         mQNtDDpD8jkEpxpFp4hxxjYYjczLIOMzLS6Lf6aKwK5mkFHYvqTxDcp2i1OCvPXd0exV
         vxYLvJ1rQo/LwNR15DKUuDdESiCkfa4fTXSONv9B0E3fcRW5WidNBVJ46OGOKFe7CDMj
         pFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bvM51z8cjqX/PN4QCJT3+RrZd+ouVe3FEK6NjdrSmdI=;
        b=nFWr7x3h4dnxRgNEAonEZ1c+VL3HaZ68Im4LCiKuWbZsYQ5T9tq0QK1a83SysZFjBI
         7GgJVI5KAOV9H5dgRa60hI9WCAnGZZScV5eiW0+iaFJR1q9HAuj62++KBIgkE9kcLojK
         Qk0fH8adyuOEgX1ZMtld0XZ677vRiS5pSx2h0t+kN0dUGX8d3F31/lApIW4Dzg8lrZo3
         9odr+TTpVJtm1BA32uOCdzt/Hfw21MsNR9P0zcgsOB/GElTHOuFb3aWd3sISWrRu6nVI
         qRmiDp78DDmJk2KuOK+pBCeZBqoxhpDPr9upp/fSKuVgMOF6nwNFxviQsnXLD2dTzrGo
         QvLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AF6mfDWc;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id df17si1849537edb.3.2021.04.03.11.09.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AF6mfDWc;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x133.google.com with SMTP id q29so11720182lfb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bvM51z8cjqX/PN4QCJT3+RrZd+ouVe3FEK6NjdrSmdI=;
        b=AF6mfDWcVrLIMbqyiZR8LuSuQqxOasPruw4me7RZORQceTtBgOEWeKVqNRSYU/pIyZ
         HlPAqvGMNH1zCymtaEFDl/Lj+2S7DbrMpQIfbsMyHXNdm+UQlxZc2o5FP0w9ybMG9VHW
         lov3Tk+BcVGlm1Lk3brc5REz6s9NlkHNvCBJdvdFsVDvFla1M3LXl8WWGhsYa9I8fItI
         XS9DUlGT+/7J16HGvLSp7PfSi6xm8ZVonAHBDi5PUYk0PNdpB1d3SA4eFzKdSWnBTeKD
         JFfaS8p+E0FGrXxhj5srbWsXoA1WOzDGHplq5AVKokkIPP5gq9wp5TqbruUrvXDMUBiu
         q0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bvM51z8cjqX/PN4QCJT3+RrZd+ouVe3FEK6NjdrSmdI=;
        b=mGimximrEe4IRf5T71EopWRvXIpMAl0/EshWaVM3JK8t88QiuIA/j2o91fkVjvm1+G
         5y2kgvuoGr1+fB7G3hsPDnukL4I67eDPcwUF/79hviBlSQ2Y+V1VSQW+yym+K5Enbjz2
         1/PrANUX/239rJJxmI+G1crOJJHHPAMaRAGWyMnLWHUC5XBlHh8znyy2pkN49aQBliQh
         tnqTF9fRrUK1A0bRTPeYC5hcPBeSPvbmtaR+tc/H1f6NfDe2yaD7Chn93cLKUT1MJhQA
         HGAMTnhwlJD//ytpVIV6QEoH7uG3RevsGY9MRl4bpzDGf//Kiku7Ul4okSDISqA9FdJL
         K2PA==
X-Gm-Message-State: AOAM531FvSKJOFLWKi8ASEnUp3mCzEtfUjBWzdYiB8pfxQVtJduqpPg5
	ovNH9mvrvoevzBXz1LddO/LiZphZDtX1SaOX
X-Received: by 2002:ac2:5091:: with SMTP id f17mr12690500lfm.660.1617473346707;
        Sat, 03 Apr 2021 11:09:06 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id e11sm1204585lfc.141.2021.04.03.11.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:06 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:04 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: media: zoran: Rename 'VidWinHt' to 'vid_win_ht'
Message-ID: <652f88a0cd62b91ebbb1ccee153a73d8d8fd3fda.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename 'VidWinHt' to 'vid_win_ht' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index f0344f4a4727..49e0efcc0062 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -293,7 +293,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	const struct tvnorm *tvn;
 	unsigned int h_start, h_end, v_start, v_end;
 	unsigned int disp_mode;
-	unsigned int vid_win_wid, VidWinHt;
+	unsigned int vid_win_wid, vid_win_ht;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
 	unsigned int wa, We, ha, He;
 	unsigned int X, Y, hor_dcm, ver_dcm;
@@ -342,9 +342,9 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 
 	/* Vertical */
 	disp_mode = !(video_height > BUZ_MAX_HEIGHT / 2);
-	VidWinHt = disp_mode ? video_height : video_height / 2;
-	Y = DIV_ROUND_UP(VidWinHt * 64 * 2, tvn->ha);
-	He = (VidWinHt * 64) / Y;
+	vid_win_ht = disp_mode ? video_height : video_height / 2;
+	Y = DIV_ROUND_UP(vid_win_ht * 64 * 2, tvn->ha);
+	He = (vid_win_ht * 64) / Y;
 	ver_dcm = 64 - Y;
 	vcrop1 = (tvn->ha / 2 - He) / 2;
 	vcrop2 = tvn->ha / 2 - He - vcrop1;
@@ -383,7 +383,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 
 	/* display configuration */
 	reg = (16 << ZR36057_VDCR_MIN_PIX)
-	    | (VidWinHt << ZR36057_VDCR_VID_WIN_HT)
+	    | (vid_win_ht << ZR36057_VDCR_VID_WIN_HT)
 	    | (vid_win_wid << ZR36057_VDCR_VID_WIN_WID);
 	if (pci_pci_problems & PCIPCI_TRITON)
 		// || zr->revision < 1) // Revision 1 has also Triton support
-- 
2.25.1


