X-GM-THRID: 6618908371010453504
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr2322772wrv.14.1541452480033;
        Mon, 05 Nov 2018 13:14:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:93e1:: with SMTP id 88-v6ls4602309wrp.19.gmail; Mon, 05
 Nov 2018 13:14:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5dihECypFdOXgxnO5V3wildbIBK5/izsNfiqX2X0GcU1P9wvG13NjMApGN0Uav31V5iXJlu
X-Received: by 2002:a5d:500d:: with SMTP id e13-v6mr2411814wrt.9.1541452479245;
        Mon, 05 Nov 2018 13:14:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541452479; cv=none;
        d=google.com; s=arc-20160816;
        b=kGPsUhoAcCrtrEKckAGRd69YWjDnHkOMRmRTnHEmJwMKBZja1/uLO0tyDhurw+6nJi
         uzwmOo4SwnCDs9jc4ztpdnKoSR6b65mroKw1PyoNHLe5viFAZ4eQk0LV5nd3LhNU7Y1P
         3nwVa4czDMKbfiOvjzoQ5+ZaZIpEr4XVetc8BrDG7+El8r4cfsTxyBCGxh7mws6USUWA
         49WHGmU1jn+St8EPrBE+sIhV9KDQy5YQ70GiDzzt6etwGY/cf8Xydlx8pn1OE2I9Pssz
         xOu8WEbqKNBqYKx/4yU2F2/cdxM0xDW6DKNCT9qX1I1If53IcB9rilryksmztTb9mL7H
         L+kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=CKIZGBZUi7kv30bSQ5eDefUvXv5OHHtdxPTyCrTEx1dcQ+2TjKx04CUR3ZezRymF5p
         lsUmclk0Gd3qlgR08ec6DAzYA0eAV9eGjvp+AnZXGxi3JoNl6rHZ7wcJovH8EpnCL7dP
         JzYrWW5HRklz1rTlulMcXDN45xiMNybSUOk8+huCnyCJ0VA/FjedieVgxKVdQ3siaQhH
         z2qf3K2vu07HW6pfrf6Y8wxSvN04+P+aN3iA/pko3eGQtqH5c37PwaW7jZ8hrpNo5G1z
         ecvFXUW5+APTMC1Z6kEYFz16bXU7J+/8ZfNrMGUiEdEHwxnf9RGOqAOTSMlObkF+eW0P
         dBPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fg8ZjqiS;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n6-v6si856687wrj.4.2018.11.05.13.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:39 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fg8ZjqiS;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id 124-v6so4871673wmw.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 13:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=Fg8ZjqiSiWjYT5LvsAlBFVkQHhZputLndDqTDkYTyVo4Vo0ichzxNaz3e1PR6NQh4G
         Tw9mGI+RFHklBH+A74bKx475HmPqyr6QzAwkYgWGS+enHpQHKsKfIJNLt7FMidF/HxZS
         jXrdIgQFVnV32FXWgwaawoxkRDvIXzzyjZOg/Gxx4sBe2pFZ8T+5+BUBTZHPcYw+Ta7G
         5Z+6cPz03TVZVMErt4Q7fhgdNdODOABj0LlieI8gPowf8kVFSZdtXAuL4QHRPirL3tC2
         2ivTK8q6YqEKwjQ74+YT7/WbmbiBVOGWVeK+LWbh/U74ytP26NYjW5OofR3OOO1OiXgq
         KK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=IOTtexwJTJP2LnnkgtTSit70/4oafCLHOV16yEK3w4E=;
        b=CdbCvBFarK/nTT0/5w+tN2QCCoSG0wPQ5HeEPbPKl6fr7ws2tqfhWRRUnvl+/jutHh
         cvjLiDzduBxzc0X4xxrxU/F+Nf3wXTe/q+vK6szxJpk8HpaBA/vzqADAfUNeGMonyvRY
         lFw+zesAaX2tKqVPBDDbKgfeMUcPwlH1vn95IvkqVhqcUcllny5tBx880IqlkaPOEBrT
         2yCkDgg5niNnqbGqojstfEO1sdROKEGPoBNFTj9gc/33BZXMd1shp9q89piFQ1EGPt3J
         pz0uhX5UY+/fbJqZouCN0nEhy1MJsCJu5sJlTFoO9Te8e3PGEpErv5v2AKvQyQ+gZ3SQ
         PiEw==
X-Gm-Message-State: AGRZ1gI0fKMEfSmIGtbedPFlgTp5vNHqaI0ywsz1r0iOHy+pHWLXCM9G
	b2hHXTjerM4hOJZ0OIbpRs8=
X-Received: by 2002:a1c:1f4c:: with SMTP id f73-v6mr8115352wmf.56.1541452478838;
        Mon, 05 Nov 2018 13:14:38 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain ([37.142.204.130])
        by smtp.gmail.com with ESMTPSA id y195-v6sm34976461wme.22.2018.11.05.13.14.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:38 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v4 1/3] media: vicodec: prepare support for various number of planes
Date: Mon,  5 Nov 2018 23:14:15 +0200
Message-Id: <a1a9d0d1150c20e72f71a640ed658376c025388a.1541451484.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
References: <cover.1541451484.git.dafna3@gmail.com>
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
References: <cover.1541451484.git.dafna3@gmail.com>

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


