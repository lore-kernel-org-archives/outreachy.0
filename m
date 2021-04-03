X-GM-THRID: 6946995103705595904
X-Received: by 2002:a05:6512:33cd:: with SMTP id d13mr12314990lfg.612.1617473343372;
        Sat, 03 Apr 2021 11:09:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls2393630ljn.0.gmail; Sat, 03 Apr
 2021 11:09:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy32r0opHCF6u+271TfYJ8kVPMfovOWBwmtfrK7yksryDG9C9fkcCPAaV6P40qi3C4x8I4g
X-Received: by 2002:a2e:b6d4:: with SMTP id m20mr11648304ljo.448.1617473341822;
        Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473341; cv=none;
        d=google.com; s=arc-20160816;
        b=h9HQoEmvjc5T40m1fA/4VfkRCaeY4F/p/NfligWZC0H0bmQuCtxx07c8myr0m3nyZ7
         UIqseoMLUUoXRJDjTxCAELpPY2s1oJ6OTpYv2LVWk4DWSY+SLnVPlJkrAO2VGQ2hSYRC
         2dTG8r5EQP/iPwTNo/H9ddJr+hrkFoju+u9k1Mr63lPXE6wHpdWZW6ZnQZuhhZVH224t
         mWYKP0WAlyWOWYWBoS3GDCsKUKdmnuiF2d07iJg1rh+6Rrhckjqb6yBO5m0qmndkKBfy
         8Ekooku1r+3lVStFLNRQXPk2rPWNq8HOJmAFFAkfdn3ZG5h5cwIEXtQRNVCgO/BCMAjV
         DY2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v0krWIe7+jYDq9Qsx+sHNhNnuq8bykK1gj9DfeDqL2U=;
        b=NU4T84L/+A2xgT6Xxs7SsOxus/On9X68Y2pzXRDlI0BWPmWtbT9FKGbLmIvRTlJgSb
         S6rlMdGWcO9Ro+zOLUd+pKTAuKKYUWE0uBbvcWi2Ymb+k3ebGCKRo/bYSkFWyr+hB91Y
         NsAbYNFJd7mPNDbl6YwIlvzuwJqzTTUGQxjK/R0iD6uAaf97PUS4ZFLUnSEEG0UzCnha
         Dr/eE4by+E3+5uGE66L++xni9OcpXRkfgUy0L5pY0rr6E6Z999n9Wqb9YssRDIYELBjr
         tyNqeDsC3a8Z/vO4WXUtgMSAePXSkpNBxkE5rLpZQggM6VHPuEB5wLmIfcLgaYiHkYza
         gDCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqTneHiH;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id q3si1133034lji.2.2021.04.03.11.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqTneHiH;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12b.google.com with SMTP id b4so11740014lfi.6
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=v0krWIe7+jYDq9Qsx+sHNhNnuq8bykK1gj9DfeDqL2U=;
        b=lqTneHiHyE7nJi6VT50kSLAtJT6Srdtr42dCNISwj7s9/zm3Keihaa9ktxHQx+ve2A
         gl+IVB2sis7pHB/LPbH7J8YTxmDexoa6gJHq9awj9ZJfDeevtBfC9QoWHRernWfDd+2g
         zus2bgqvRIJZMwyauQP/xHEoyf+6vghSIwWSTLo3itWO2g42RAjhwyqEA3A74SziqdT8
         Wz8UFDTmU2rli294STEc9C3wOTP8WD1QAgjrWgYDdmCW7oT4bdzoauYPJbQ3Q84E9pRD
         xzQwTAxfs7IEAQfuX8kquWQCOkJJ0oNf3t6f/JgnMyNuB8BoRvGsRyvrG6+nAcvJVXn7
         U+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=v0krWIe7+jYDq9Qsx+sHNhNnuq8bykK1gj9DfeDqL2U=;
        b=P3lklDGpGQf5DxmoEkCTeaWsZ/TxbV73km8m7iCP77I9OahG1UeS+kE8DXUZt9r61a
         V+tqZG3UN5VL+CA4DHBw5akFWytREjzsyaAzXB7UZpsAkoR8473balgBwZLzSxBixB6h
         TUzZf4LiULv9rwsyIE58dCKnwW3xDXU8pINYXN+G1ZwlBn6oO5Sp9qDcaEpWov3D6XLT
         l0KUPl4KQpYaNxonv1b7qYYRIjI5Kxw/9CJub0OuGtJuNCstbfyB0DA9L6+sl0jjvnbX
         /QMCQJmDVaPlEEyC0WD0KXwEPsRxp2RTmBu3L4C0FGKK6zRJBg9O4c32+TnZ1MduNq/9
         wBJQ==
X-Gm-Message-State: AOAM531Y7CMit0paHz1mlm5w7Nq4+QUgqw1+N8Ro9o9zRJgDmYQf1qVJ
	xiJrInF7qMoPOKaDodES4bfgsVDwaz+jI1BI
X-Received: by 2002:ac2:46d5:: with SMTP id p21mr13422183lfo.295.1617473341443;
        Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id i185sm1201092lfd.279.2021.04.03.11.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:00 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: media: zoran: Rename 'VEnd' to 'v_end'
Message-ID: <bda5e77d271173e8ab6c2180b39e2aa7b1fd65de.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'VEnd' to 'v_end' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 415b3cf4826e..6764b51fc595 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -291,7 +291,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 			    const struct zoran_format *format)
 {
 	const struct tvnorm *tvn;
-	unsigned int h_start, h_end, v_start, VEnd;
+	unsigned int h_start, h_end, v_start, v_end;
 	unsigned int DispMode;
 	unsigned int VidWinWid, VidWinHt;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
@@ -349,11 +349,11 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	vcrop1 = (tvn->ha / 2 - He) / 2;
 	vcrop2 = tvn->ha / 2 - He - vcrop1;
 	v_start = tvn->v_start;
-	VEnd = v_start + tvn->ha / 2;	// - 1; FIXME SnapShot times out with -1 in 768*576 on the DC10 - LP
+	v_end = v_start + tvn->ha / 2;	// - 1; FIXME SnapShot times out with -1 in 768*576 on the DC10 - LP
 	v_start += vcrop1;
-	VEnd -= vcrop2;
+	v_end -= vcrop2;
 	reg = ((v_start & ZR36057_VFEVCR_VMASK) << ZR36057_VFEVCR_V_START)
-	    | ((VEnd & ZR36057_VFEVCR_VMASK) << ZR36057_VFEVCR_V_END);
+	    | ((v_end & ZR36057_VFEVCR_VMASK) << ZR36057_VFEVCR_V_END);
 	if (zr->card.vfe_pol.vsync_pol)
 		reg |= ZR36057_VFEVCR_VS_POL;
 	btwrite(reg, ZR36057_VFEVCR);
-- 
2.25.1


