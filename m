X-GM-THRID: 6618908371010453504
X-Received: by 2002:a19:9652:: with SMTP id y79mr1178686lfd.8.1541278239519;
        Sat, 03 Nov 2018 13:50:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:350e:: with SMTP id z14-v6ls932867ljz.25.gmail; Sat, 03
 Nov 2018 13:50:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dcUxPaPciy+KnqhJUeaYkqoYPa0uKcN1K7vePYtQMgVV3mvmSMUlzt0QKgUBUCk0tkJXPj
X-Received: by 2002:a2e:3910:: with SMTP id g16-v6mr1458519lja.13.1541278238635;
        Sat, 03 Nov 2018 13:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541278238; cv=none;
        d=google.com; s=arc-20160816;
        b=eR1h0DDRXzPYtPAdcgAdjdA0MoTR+4uzCNbqkXwhMY6QbembF52r/Zg793OzXrEWQ2
         FRT4H8/MKXau0Hg2ju8AXOkcTMPwMhRcxze81ZeSjXql6AfrnQmspjTvuOCoy0y9ZqXP
         moBAOSJ48vk/RlR4IfRlNTf2K5tWiJuR12jXkb4oYyIH28AmrpCJCjFL3gg9gueVlq8v
         iOtAKfNjA0nGjWaew4pHhe3xvUUJE1OXhrhLCcY2dhwQA8+f93MgA7OrGCqph4HkyHP/
         VtrE2mwXWQQI9wDXmEOeIqmK9XnvKMFE6DHt7G5CtuRPW2rCSNf0bPU/d8gnRFJ2NsOl
         qwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=QhvGUvpoEXQF+3kejGtZTJ5HZb70EODSGNYCz2eZmaLMbMwzcaDAZ/IiI9U4Gh/KJR
         vOIDO1bfA+F9jzrselFNoTr1rSJVb7n1gytctzV/AJtIcnNhuUygrLuoemqffubPqhb1
         d4/Sy3CS6f7QQyjuOKdSNnEVFs7cW8gYvIybzlqHg5j3cI5N2Mi1ysqwJyW+d9cVuaWB
         ehnjUF8yuqXB/99/UdZNW167nC0tb6le/DwVdgyH+iaekEj+Js6NNJCGCpNXRXFsGoVo
         7LK1Yx+I1X7HOgckx8KJv8o/2ruExYU8d2DXsmCaL9XuG9P5ChEoHHAkNvtqzT4po39H
         BqGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=upfWqfFz;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w13-v6si1371361lfe.3.2018.11.03.13.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=upfWqfFz;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id i17-v6so5342309wre.7
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 13:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=upfWqfFzWE4NzgTUw6f9OPO0FnQtnb1UUJLM6pMKFO5gUYa+V8lKK4aJXE+jD4FyKO
         53DvVWu9D/40c5XApZwO96mpxmPUzS9g2kfTXlmx7byVPX25BMey8i3ALdrofmOrrFa4
         +E2rQV0uu7Fi2eVg8QjCgkrxjLUCygn3KaDFlizoyGeAEWvGGD484GaDjOZa8zL0ypfl
         wJ/rwCtGCnlUPDcSdhT5SivVLeMdJUUUYPjZiy+ABMEgQYNPXHdpMGYBzlCIheDTYt3R
         1PQ8k04HatUbFgGiP14s0KeJ3E8HCX4fblDRF0M6gCv2xN4VmHn7FbXUyuLl9cUPS7cs
         Tmag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=NrMuZCkqksrJtGDeKzy1u7te3sHPYabVSjpCaUxPdkUWTizkva8Wdh93WGK8wnHBzq
         07v6MaNXlBns/O9VuQoT7MsRSU2aToTQC7nG5w7woNB58NnEhkaeVEEQF9iLsLlceZVQ
         4BqN0x1zTaNmbw1vxAPAzGuCwCDN534AqIbcKlnMeaoLWYWpy1XsgHhXlS/ncliaWspr
         m+yAk/WcpuXECGPZHdnKoxhYUy3sIVgLIXShM/swyLn8s69DxAC6CFdn397zrTKkmaSl
         ZGdqkYH3+dUUBEeP3wGWuusDrd39rkaXYKBCSB6jIDeh73BMkqenjvZ+CWZ55jFpW1y6
         xfGA==
X-Gm-Message-State: AGRZ1gKi7As47+EQ6sG7mpWMlzlF8eywqPIrhv39O5QSU+OIB5YIOssC
	NfDcBdhrITWnPcGtEyV6TUY=
X-Received: by 2002:a5d:4747:: with SMTP id o7-v6mr13747461wrs.256.1541278237897;
        Sat, 03 Nov 2018 13:50:37 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from gurit.home ([77.126.109.255])
        by smtp.gmail.com with ESMTPSA id l67-v6sm66604873wma.20.2018.11.03.13.50.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:37 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v3 1/3] media: vicodec: prepare support for various number of planes
Date: Sat,  3 Nov 2018 22:50:27 +0200
Message-Id: <d42ead15736b67be272cb731fa0933ee560baada.1541277502.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>

Add fields to the structs `fwht_raw_frame`, `v4l2_fwht_pixfmts`
to support various number of planes - formats
with alpha channel that have 4 planes and greyscale formats
that have 1 plane.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   |  2 +-
 drivers/media/platform/vicodec/codec-fwht.h   |  5 +-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 47 ++++++++++---------
 .../media/platform/vicodec/codec-v4l2-fwht.h  |  3 +-
 drivers/media/platform/vicodec/vicodec-core.c |  2 +-
 5 files changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 36656031b295..4ee6d7e0fbe2 100644
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
index 3e9391fec5fe..743d78e112f8 100644
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
index e5b68fb38aac..b842636e71a9 100644
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
index 162465b78067..ed53e28d4f9c 100644
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
index 1eb9132bfc85..fb6d5e9a06ab 100644
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
2.17.1


