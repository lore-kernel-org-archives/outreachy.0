X-GM-THRID: 6618908371010453504
X-Received: by 2002:adf:e351:: with SMTP id n17-v6mr786030wrj.16.1541084698168;
        Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3583:: with SMTP id c125-v6ls175847wma.25.canary-gmail;
 Thu, 01 Nov 2018 08:04:57 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eli8ZcPgU17zO32WhzV/7uLYyj43G5Sf4gc3vNHXI7bmUM3pTBo+BLJzszFwJW0OFEOoIq
X-Received: by 2002:a1c:f602:: with SMTP id w2-v6mr821404wmc.12.1541084697444;
        Thu, 01 Nov 2018 08:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541084697; cv=none;
        d=google.com; s=arc-20160816;
        b=OWGhiTWsTp7td0DiFzOFJCn6aNqbJeIRgezFkrVAJR9AUGXvhTwljz4Bjl8zHrHwSw
         dWGkVdyYilbWFpWsZD4oAUTbdkNPaBaRR4gpB76rxXGOZupDfd9ZuPg1osQnpTrlEJ7F
         3XVmKBFY0HL4OU9NfkDqSWz/LQaLKC7fDZ1hazCGR5YswYsSc8Ef5vc6Zl9yninCp84n
         BvnAPAFwzunG7UNSsHqQdxNdxOBMF++0XrIPROn+mSNRRv/JyBakz9JxqIPi+exJQP+u
         umkiRi7MoWJbos4TzK8oDpcgiyqIeyBEMYDdtbC1fEzIrtU3j7IqvEc67r/wfRzbuLMf
         LNoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=btLCMcnnLRKxVSmSPMuhhHTzCy/mPCUhfm5YK8wPa9g=;
        b=QmbzS+r53pZD3wvpug5PvTEn6zXaD1SfSzvbITHb36oThIAsptB/g0vihXHBPjlzzi
         Zgd2MRa9EeDuPUWtApuscV4nAoIGDyi1vYvrWCs1mVlCoizC1cznPsmZvRxmcr3yE8dO
         FGUqF7ds2ZLdzk6+7oTiclaN/fc6AsiwN3wqnhv4JtvCootc4OCTj6FnHb9nqUtPvg9u
         nBRzO8dzt8GEf1AvgSoJs33rd4pv4aO02puf+3xTsEUxQeMlIkGJMbBp79yK8WZv136T
         MUN7lARZ8RlO6quJJHnLy5w7y5eC3MsFqz+SO2KJ6Y2I6mL9p9rlUafdBZjwWH5hjew1
         ue6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KqMdMqG/";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id e5-v6si826114wru.1.2018.11.01.08.04.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 08:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KqMdMqG/";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id y15-v6so20387310wru.9
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 08:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=btLCMcnnLRKxVSmSPMuhhHTzCy/mPCUhfm5YK8wPa9g=;
        b=KqMdMqG/ZcriLaxhwfjGpDkYGsDAAtxSXaSoblIIgGdEFVcuS0RrJeWm3Lz0YtyZbu
         zxckapkZwmsO8oGpa3to3YLfJXiBGuDd7vAqYqVddEqCrtp6kjkAaot4fs8Uy9PyhWQC
         rMG5Di20IVZzPyPJNOnqp9PUNlFBbFOkWm0SZTdpB1DwH2mZ+9zCpe4lykcUgFlPkR4D
         g+LPc9ZUicWAXzTtP/Qjbw+KWv3KMh34IzY1Ep/d/rmH6DylbwYyqPOgFuXeYbjglBKu
         TCzDlKcYGqLI+Hh/uIVsb/KXk3ttM1OHZ/eKJvDbWxXOV3Yoe9y5HnDzAAnmdjs5S/4W
         0yAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=btLCMcnnLRKxVSmSPMuhhHTzCy/mPCUhfm5YK8wPa9g=;
        b=Nz9zVLBgRH11/PA+nzQtUakQMxAswjiOkzSqk/xmzY82rrgiitQch7xBpwqf+PA4Ij
         ILG6aWocqHZ/mWHgB50ZrWkSNEZ9fP5ymxxriI2LOIm82zbWtdR5aFx40rU/4vinTYIi
         GMmVkQ5ifZ0JXE/zc/Ww9EHgcHFwEksB9JdIoBg4a5Wr2dRSc6idMtQJJUogxFf8wqDR
         CxDwRPNpA0A+961AIabeSu5I4VFJyuikoDY2j77raTpu3JcIePBbPLk/hgpBn7sD19ol
         ghty158ut66oo7jzrZycFuKzoZcnMoc1YBFjn9UxbA8kHzGQ8dc0cQPMvMZisNfS1piG
         OK3g==
X-Gm-Message-State: AGRZ1gISR8pS5qHeOehzfXLluS8u3wOa6MydF3j2K/ftXq8DdRUZRtP7
	EoDpGIvONoNh8mufIo8DUyQ=
X-Received: by 2002:adf:b743:: with SMTP id n3-v6mr6983796wre.274.1541084697137;
        Thu, 01 Nov 2018 08:04:57 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain (62-90-76-18.barak.net.il. [62.90.76.18])
        by smtp.gmail.com with ESMTPSA id m141-v6sm4534611wmd.14.2018.11.01.08.04.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Nov 2018 08:04:56 -0700 (PDT)
From: kamomil <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v2 1/3] media: vicodec: prepare support for various number of planes
Date: Thu,  1 Nov 2018 17:04:36 +0200
Message-Id: <78474189825131c31c009076ec716567a5b259c1.1541081267.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>

From: Dafna Hirschfeld <dafna3@gmail.com>

Add fields to the structs `fwht_raw_frame`, `v4l2_fwht_pixfmts`
to support various number of planes - formats
with alpha channel that have 4 planes and greyscale formats
that have 1 plane.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c      |  2 +-
 drivers/media/platform/vicodec/codec-fwht.h      |  5 ++-
 drivers/media/platform/vicodec/codec-v4l2-fwht.c | 47 +++++++++++++-----------
 drivers/media/platform/vicodec/codec-v4l2-fwht.h |  3 +-
 drivers/media/platform/vicodec/vicodec-core.c    |  2 +-
 5 files changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 3665603..4ee6d7e 100644
--- a/drivers/media/platform/vicodec/codec-fwht.c
+++ b/drivers/media/platform/vicodec/codec-fwht.c
@@ -760,7 +760,7 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 	rlco_max = rlco + size / 2 - 256;
 	encoding = encode_plane(frm->luma, ref_frm->luma, &rlco, rlco_max, cf,
 				frm->height, frm->width,
-				frm->luma_step, is_intra, next_is_intra);
+				frm->luma_alpha_step, is_intra, next_is_intra);
 	if (encoding & FWHT_FRAME_UNENCODED)
 		encoding |= FWHT_LUMA_UNENCODED;
 	encoding &= ~FWHT_FRAME_UNENCODED;
diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
index 3e9391f..743d78e 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -104,9 +104,10 @@ struct fwht_raw_frame {
 	unsigned int width, height;
 	unsigned int width_div;
 	unsigned int height_div;
-	unsigned int luma_step;
+	unsigned int luma_alpha_step;
 	unsigned int chroma_step;
-	u8 *luma, *cb, *cr;
+	unsigned int components_num;
+	u8 *luma, *cb, *cr, *alpha;
 };
 
 #define FWHT_FRAME_PCODED	BIT(0)
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index e5b68fb..b842636 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
@@ -11,27 +11,28 @@
 #include "codec-v4l2-fwht.h"
 
 static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
-	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2 },
-	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2 },
-	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1 },
-	{ V4L2_PIX_FMT_NV12,    1, 3, 2, 1, 2, 2, 2 },
-	{ V4L2_PIX_FMT_NV21,    1, 3, 2, 1, 2, 2, 2 },
-	{ V4L2_PIX_FMT_NV16,    1, 2, 1, 1, 2, 2, 1 },
-	{ V4L2_PIX_FMT_NV61,    1, 2, 1, 1, 2, 2, 1 },
-	{ V4L2_PIX_FMT_NV24,    1, 3, 1, 1, 2, 1, 1 },
-	{ V4L2_PIX_FMT_NV42,    1, 3, 1, 1, 2, 1, 1 },
-	{ V4L2_PIX_FMT_YUYV,    2, 2, 1, 2, 4, 2, 1 },
-	{ V4L2_PIX_FMT_YVYU,    2, 2, 1, 2, 4, 2, 1 },
-	{ V4L2_PIX_FMT_UYVY,    2, 2, 1, 2, 4, 2, 1 },
-	{ V4L2_PIX_FMT_VYUY,    2, 2, 1, 2, 4, 2, 1 },
-	{ V4L2_PIX_FMT_BGR24,   3, 3, 1, 3, 3, 1, 1 },
-	{ V4L2_PIX_FMT_RGB24,   3, 3, 1, 3, 3, 1, 1 },
-	{ V4L2_PIX_FMT_HSV24,   3, 3, 1, 3, 3, 1, 1 },
-	{ V4L2_PIX_FMT_BGR32,   4, 4, 1, 4, 4, 1, 1 },
-	{ V4L2_PIX_FMT_XBGR32,  4, 4, 1, 4, 4, 1, 1 },
-	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1 },
-	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1 },
-	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1 },
+	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
+	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
+	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
+	{ V4L2_PIX_FMT_NV12,    1, 3, 2, 1, 2, 2, 2, 3},
+	{ V4L2_PIX_FMT_NV21,    1, 3, 2, 1, 2, 2, 2, 3},
+	{ V4L2_PIX_FMT_NV16,    1, 2, 1, 1, 2, 2, 1, 3},
+	{ V4L2_PIX_FMT_NV61,    1, 2, 1, 1, 2, 2, 1, 3},
+	{ V4L2_PIX_FMT_NV24,    1, 3, 1, 1, 2, 1, 1, 3},
+	{ V4L2_PIX_FMT_NV42,    1, 3, 1, 1, 2, 1, 1, 3},
+	{ V4L2_PIX_FMT_YUYV,    2, 2, 1, 2, 4, 2, 1, 3},
+	{ V4L2_PIX_FMT_YVYU,    2, 2, 1, 2, 4, 2, 1, 3},
+	{ V4L2_PIX_FMT_UYVY,    2, 2, 1, 2, 4, 2, 1, 3},
+	{ V4L2_PIX_FMT_VYUY,    2, 2, 1, 2, 4, 2, 1, 3},
+	{ V4L2_PIX_FMT_BGR24,   3, 3, 1, 3, 3, 1, 1, 3},
+	{ V4L2_PIX_FMT_RGB24,   3, 3, 1, 3, 3, 1, 1, 3},
+	{ V4L2_PIX_FMT_HSV24,   3, 3, 1, 3, 3, 1, 1, 3},
+	{ V4L2_PIX_FMT_BGR32,   4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_XBGR32,  4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1, 3},
+
 };
 
 const struct v4l2_fwht_pixfmt_info *v4l2_fwht_find_pixfmt(u32 pixelformat)
@@ -68,8 +69,10 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	rf.luma = p_in;
 	rf.width_div = info->width_div;
 	rf.height_div = info->height_div;
-	rf.luma_step = info->luma_step;
+	rf.luma_alpha_step = info->luma_alpha_step;
 	rf.chroma_step = info->chroma_step;
+	rf.alpha = NULL;
+	rf.components_num = info->components_num;
 
 	switch (info->id) {
 	case V4L2_PIX_FMT_YUV420:
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.h b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
index 162465b..ed53e28 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.h
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
@@ -13,11 +13,12 @@ struct v4l2_fwht_pixfmt_info {
 	unsigned int bytesperline_mult;
 	unsigned int sizeimage_mult;
 	unsigned int sizeimage_div;
-	unsigned int luma_step;
+	unsigned int luma_alpha_step;
 	unsigned int chroma_step;
 	/* Chroma plane subsampling */
 	unsigned int width_div;
 	unsigned int height_div;
+	unsigned int components_num;
 };
 
 struct v4l2_fwht_state {
diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index 1eb9132..fb6d5e9 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -61,7 +61,7 @@ struct pixfmt_info {
 };
 
 static const struct v4l2_fwht_pixfmt_info pixfmt_fwht = {
-	V4L2_PIX_FMT_FWHT, 0, 3, 1, 1, 1, 1, 1
+	V4L2_PIX_FMT_FWHT, 0, 3, 1, 1, 1, 1, 1, 0
 };
 
 static void vicodec_dev_release(struct device *dev)
-- 
2.7.4


