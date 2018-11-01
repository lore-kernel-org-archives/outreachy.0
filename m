X-GM-THRID: 6618908371010453504
X-Received: by 2002:adf:fa82:: with SMTP id h2-v6mr148311wrr.18.1541084699699;
        Thu, 01 Nov 2018 08:04:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:93e1:: with SMTP id 88-v6ls2622590wrp.19.gmail; Thu, 01
 Nov 2018 08:04:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fmNhBMyXzJBdd3JbJhLUuvgSpG9SK9blAwXFJcz42nQwoKu/fjka6+mfi1QDsFHrlouEc6
X-Received: by 2002:adf:db0d:: with SMTP id s13-v6mr783789wri.25.1541084698970;
        Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541084698; cv=none;
        d=google.com; s=arc-20160816;
        b=N5vJoWLUGAdu7tyBjC8jcWsZZgAZ8MR5XafrUZN5h2r/aoSYhBtuAnWTcDeR1rxIKH
         1MN5Jw2AbA4Dlif6NffGPX13vBd8F0Sj+4Ehq+1YflVexD9DcfP6KhFteCnOZEK3CaN5
         ReKAVoEaDBi+24mSi/HW3Y3jH7wdjRYGDN5giY37DMqDAu2Z3LmZr/cYtMz/C9llfLdO
         gaIjMZQOWmbMSevGeSIYismaYdObAPI290WJYcFt0dueEkQDTf3SDFFMrmyrat1Apg3h
         m4su4TR8PyjnMDuA+jpdmgeKhtnfON1quXKJ6iNTmW6wJusI+28dncWB992IHJFO4+8O
         td7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=4I5eZBXE88HI7ViLkGAuqLBn1yzTXW6iLs6Q/4+qzcs=;
        b=YA2W/fQjnnfxiEhitOuQHzKm84D5E2vksTLaPS4ZpJwd8jyTM5zrmj3xafMRB2aH6u
         7QolJp1a/aaADqRmddT/HXX4/5PBjttQPQnbSeSdzM1mOSmuuvvO8nPlhPfqcioo41Dq
         FwfMxBO0E1Ll29m2cE4NLIcuyx5Z3hNoLIefs/pzWXRDkTFqAW4Ksx/rpcz2wIsMYSeB
         a3lkW43gF615J0+ep3wvdggVTGyEO1y/rI0zYdxlD+qH9QKxK8ghspZx6MhYan2JPM23
         c0HvktfZZ6Jx5bpkVPPOYca9zAk4Z7Y0KrfEnsvOFBXARHxeFP37exwJHqmqI6Oxn8Ph
         hacg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5FvsIoG;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z129-v6si558807wmc.0.2018.11.01.08.04.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5FvsIoG;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id z16-v6so2506647wrv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4I5eZBXE88HI7ViLkGAuqLBn1yzTXW6iLs6Q/4+qzcs=;
        b=N5FvsIoGfI9LXfKjOrTrBBJ0FTk/DK9HR1rX0Vjv19DXWw83b3wYvHZG8Szu6+cAPM
         YzBGwPtpbb4hA2g2xg4vKkTaatJT7J/u4vjtZU7jbIDseFMlRWI+UPkC4Bat7Tshqslb
         KQFlb/+CwuapU+T1MWI9w6w2u/VJUCM2j2Vaye8KrAqXppXDkyNSi/WwdszhcEvurSq5
         m1vbiz+N5M0UnBltxv/sFxcRT2k8nWoBFaJdIfZTKSq+Pfq2U9ZE4gMBk5noZm3s4orl
         kfb7IcgUD6ouwHIDD+Nd63rQyTMTapwmYUHVEwmpO6v/utDLSRKSCJZIGFiodn0BBpHe
         QaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4I5eZBXE88HI7ViLkGAuqLBn1yzTXW6iLs6Q/4+qzcs=;
        b=C9wK+vr9pJvkutsnRTbRAyZIFrp2bcRpvMEtf/dTdQ//8kMX1imBdkMn7keWSgDKHK
         Cja5KOzEZRMIrnCpEKVvreQFuNEEKpnOgkEZs3bTyQYLDpy4qCgX9lsOXn8f4oQSLKUR
         ZwtkCYZrcywbQOkjTn8cJSYkDEF9OQrjff0r9Dqbd959yvKjdHbLqWkv3yCXK9l1fhgH
         jQOfYB94wT0rwb3cmgQp5rp7TX10+R6+nL16QiR4nGt0SoW0pzeGS+Kdmp389Xv/Crov
         vZi29hYYAWSqL1tMaqx5FA35Q/5TaixNVv1ovKIMp3ze8ycycE6cCRWvMJJAuBNmhRHG
         VeRA==
X-Gm-Message-State: AGRZ1gJITYtQRmhInaqZp6TnYrMewH8YkNCKkzQjO31jRbsgS+c0kk+2
	ZxYzzodqFUlR8xzeZmPzs4E=
X-Received: by 2002:a5d:4b8b:: with SMTP id b11-v6mr5271706wrt.72.1541084698617;
        Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain (62-90-76-18.barak.net.il. [62.90.76.18])
        by smtp.gmail.com with ESMTPSA id m141-v6sm4534611wmd.14.2018.11.01.08.04.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Nov 2018 08:04:58 -0700 (PDT)
From: kamomil <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v2 2/3] media: vicodec: Add support of greyscale format
Date: Thu,  1 Nov 2018 17:04:37 +0200
Message-Id: <04068c0d5795f451d065d3f4f57ec676f04c13ec.1541081267.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>

From: Dafna Hirschfeld <dafna3@gmail.com>

Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
Also change the header of the encoded file to include the number
of components.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c      | 56 ++++++++++++++----------
 drivers/media/platform/vicodec/codec-fwht.h      |  8 +++-
 drivers/media/platform/vicodec/codec-v4l2-fwht.c | 44 +++++++++++++++----
 drivers/media/platform/vicodec/vicodec-core.c    | 21 ++++++---
 4 files changed, 89 insertions(+), 40 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 4ee6d7e..1af9af8 100644
--- a/drivers/media/platform/vicodec/codec-fwht.c
+++ b/drivers/media/platform/vicodec/codec-fwht.c
@@ -753,9 +753,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 	__be16 *rlco = cf->rlc_data;
 	__be16 *rlco_max;
 	u32 encoding;
-	u32 chroma_h = frm->height / frm->height_div;
-	u32 chroma_w = frm->width / frm->width_div;
-	unsigned int chroma_size = chroma_h * chroma_w;
 
 	rlco_max = rlco + size / 2 - 256;
 	encoding = encode_plane(frm->luma, ref_frm->luma, &rlco, rlco_max, cf,
@@ -764,20 +761,27 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 	if (encoding & FWHT_FRAME_UNENCODED)
 		encoding |= FWHT_LUMA_UNENCODED;
 	encoding &= ~FWHT_FRAME_UNENCODED;
-	rlco_max = rlco + chroma_size / 2 - 256;
-	encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco, rlco_max, cf,
+
+	if (frm->components_num >= 3) {
+		u32 chroma_h = frm->height / frm->height_div;
+		u32 chroma_w = frm->width / frm->width_div;
+		unsigned int chroma_size = chroma_h * chroma_w;
+
+		rlco_max = rlco + chroma_size / 2 - 256;
+		encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco, rlco_max, cf,
 				 chroma_h, chroma_w,
 				 frm->chroma_step, is_intra, next_is_intra);
-	if (encoding & FWHT_FRAME_UNENCODED)
-		encoding |= FWHT_CB_UNENCODED;
-	encoding &= ~FWHT_FRAME_UNENCODED;
-	rlco_max = rlco + chroma_size / 2 - 256;
-	encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco, rlco_max, cf,
+		if (encoding & FWHT_FRAME_UNENCODED)
+			encoding |= FWHT_CB_UNENCODED;
+		encoding &= ~FWHT_FRAME_UNENCODED;
+		rlco_max = rlco + chroma_size / 2 - 256;
+		encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco, rlco_max, cf,
 				 chroma_h, chroma_w,
 				 frm->chroma_step, is_intra, next_is_intra);
-	if (encoding & FWHT_FRAME_UNENCODED)
-		encoding |= FWHT_CR_UNENCODED;
-	encoding &= ~FWHT_FRAME_UNENCODED;
+		if (encoding & FWHT_FRAME_UNENCODED)
+			encoding |= FWHT_CR_UNENCODED;
+		encoding &= ~FWHT_FRAME_UNENCODED;
+	}
 	cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
 	return encoding;
 }
@@ -836,20 +840,24 @@ static void decode_plane(struct fwht_cframe *cf, const __be16 **rlco, u8 *ref,
 }
 
 void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
-		       u32 hdr_flags)
+		       u32 hdr_flags, unsigned int components_num)
 {
 	const __be16 *rlco = cf->rlc_data;
-	u32 h = cf->height / 2;
-	u32 w = cf->width / 2;
 
-	if (hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT)
-		h *= 2;
-	if (hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH)
-		w *= 2;
 	decode_plane(cf, &rlco, ref->luma, cf->height, cf->width,
 		     hdr_flags & FWHT_FL_LUMA_IS_UNCOMPRESSED);
-	decode_plane(cf, &rlco, ref->cb, h, w,
-		     hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
-	decode_plane(cf, &rlco, ref->cr, h, w,
-		     hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
+
+	if (components_num >= 3) {
+		u32 h = cf->height;
+		u32 w = cf->width;
+
+		if (!(hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT))
+			h /= 2;
+		if (!(hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH))
+			w /= 2;
+		decode_plane(cf, &rlco, ref->cb, h, w,
+			hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
+		decode_plane(cf, &rlco, ref->cr, h, w,
+			hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
+	}
 }
diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
index 743d78e..b1a9cc6 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -56,7 +56,7 @@
 #define FWHT_MAGIC1 0x4f4f4f4f
 #define FWHT_MAGIC2 0xffffffff
 
-#define FWHT_VERSION 1
+#define FWHT_VERSION 2
 
 /* Set if this is an interlaced format */
 #define FWHT_FL_IS_INTERLACED		BIT(0)
@@ -76,6 +76,10 @@
 #define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
 #define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
 
+/* A 4-values flag - the number of components - 1 */
+#define FWHT_FL_COMPONENTS_NUM_BIT0	BIT(16)
+#define FWHT_FL_COMPONENTS_NUM_BIT1	BIT(17)
+
 struct fwht_cframe_hdr {
 	u32 magic1;
 	u32 magic2;
@@ -121,6 +125,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 		      struct fwht_cframe *cf,
 		      bool is_intra, bool next_is_intra);
 void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
-		       u32 hdr_flags);
+		       u32 hdr_flags, unsigned int components_num);
 
 #endif
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index b842636..1ab01fe 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
@@ -11,6 +11,7 @@
 #include "codec-v4l2-fwht.h"
 
 static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
+	{ V4L2_PIX_FMT_GREY,    1, 1, 1, 1, 0, 1, 1, 1},
 	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
 	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
 	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
@@ -75,6 +76,10 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	rf.components_num = info->components_num;
 
 	switch (info->id) {
+	case V4L2_PIX_FMT_GREY:
+		rf.cb = NULL;
+		rf.cr = NULL;
+		break;
 	case V4L2_PIX_FMT_YUV420:
 		rf.cb = rf.luma + size;
 		rf.cr = rf.cb + size / 4;
@@ -165,6 +170,10 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	p_hdr->version = htonl(FWHT_VERSION);
 	p_hdr->width = htonl(cf.width);
 	p_hdr->height = htonl(cf.height);
+	if (info->components_num % 2 == 0)
+		flags |= FWHT_FL_COMPONENTS_NUM_BIT0;
+	if (info->components_num >= 3)
+		flags |= FWHT_FL_COMPONENTS_NUM_BIT1;
 	if (encoding & FWHT_LUMA_UNENCODED)
 		flags |= FWHT_FL_LUMA_IS_UNCOMPRESSED;
 	if (encoding & FWHT_CB_UNENCODED)
@@ -195,6 +204,8 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	struct fwht_cframe_hdr *p_hdr;
 	struct fwht_cframe cf;
 	u8 *p;
+	unsigned int components_num = 3;
+	unsigned int version;
 
 	if (!state->info)
 		return -EINVAL;
@@ -202,16 +213,16 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	p_hdr = (struct fwht_cframe_hdr *)p_in;
 	cf.width = ntohl(p_hdr->width);
 	cf.height = ntohl(p_hdr->height);
-	flags = ntohl(p_hdr->flags);
-	state->colorspace = ntohl(p_hdr->colorspace);
-	state->xfer_func = ntohl(p_hdr->xfer_func);
-	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
-	state->quantization = ntohl(p_hdr->quantization);
-	cf.rlc_data = (__be16 *)(p_in + sizeof(*p_hdr));
+
+	version = ntohl(p_hdr->version);
+	if (!version || version > FWHT_VERSION) {
+		pr_err("version %d is not supported, current version is %d\n",
+				version, FWHT_VERSION);
+		return -EINVAL;
+	}
 
 	if (p_hdr->magic1 != FWHT_MAGIC1 ||
 	    p_hdr->magic2 != FWHT_MAGIC2 ||
-	    ntohl(p_hdr->version) != FWHT_VERSION ||
 	    (cf.width & 7) || (cf.height & 7))
 		return -EINVAL;
 
@@ -219,14 +230,31 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	if (cf.width != state->width || cf.height != state->height)
 		return -EINVAL;
 
+	flags = ntohl(p_hdr->flags);
+
+	if (version == FWHT_VERSION) {
+		components_num = 1;
+		components_num += flags | FWHT_FL_COMPONENTS_NUM_BIT0 ? 1 : 0;
+		components_num += flags | FWHT_FL_COMPONENTS_NUM_BIT1 ? 2 : 0;
+	}
+
+	state->colorspace = ntohl(p_hdr->colorspace);
+	state->xfer_func = ntohl(p_hdr->xfer_func);
+	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
+	state->quantization = ntohl(p_hdr->quantization);
+	cf.rlc_data = (__be16 *)(p_in + sizeof(*p_hdr));
+
 	if (!(flags & FWHT_FL_CHROMA_FULL_WIDTH))
 		chroma_size /= 2;
 	if (!(flags & FWHT_FL_CHROMA_FULL_HEIGHT))
 		chroma_size /= 2;
 
-	fwht_decode_frame(&cf, &state->ref_frame, flags);
+	fwht_decode_frame(&cf, &state->ref_frame, flags, components_num);
 
 	switch (state->info->id) {
+	case V4L2_PIX_FMT_GREY:
+		memcpy(p_out, state->ref_frame.luma, size);
+		break;
 	case V4L2_PIX_FMT_YUV420:
 	case V4L2_PIX_FMT_YUV422P:
 		memcpy(p_out, state->ref_frame.luma, size);
diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index fb6d5e9..ed6a469 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	unsigned int size = q_data->width * q_data->height;
 	const struct v4l2_fwht_pixfmt_info *info = q_data->info;
 	unsigned int chroma_div = info->width_div * info->height_div;
+	unsigned int total_planes_size;
+
+	if (info->components_num >= 3)
+		total_planes_size = size + 2 * (size / chroma_div);
+	else
+		total_planes_size = size;
 
 	q_data->sequence = 0;
 
@@ -1002,10 +1008,8 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	state->width = q_data->width;
 	state->height = q_data->height;
 	state->ref_frame.width = state->ref_frame.height = 0;
-	state->ref_frame.luma = kvmalloc(size + 2 * size / chroma_div,
-					 GFP_KERNEL);
-	ctx->comp_max_size = size + 2 * size / chroma_div +
-			     sizeof(struct fwht_cframe_hdr);
+	state->ref_frame.luma = kvmalloc(total_planes_size, GFP_KERNEL);
+	ctx->comp_max_size = total_planes_size + sizeof(struct fwht_cframe_hdr);
 	state->compressed_frame = kvmalloc(ctx->comp_max_size, GFP_KERNEL);
 	if (!state->ref_frame.luma || !state->compressed_frame) {
 		kvfree(state->ref_frame.luma);
@@ -1013,8 +1017,13 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 		vicodec_return_bufs(q, VB2_BUF_STATE_QUEUED);
 		return -ENOMEM;
 	}
-	state->ref_frame.cb = state->ref_frame.luma + size;
-	state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num >= 3) {
+		state->ref_frame.cb = state->ref_frame.luma + size;
+		state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;
+	} else {
+		state->ref_frame.cb = NULL;
+		state->ref_frame.cr = NULL;
+	}
 	ctx->last_src_buf = NULL;
 	ctx->last_dst_buf = NULL;
 	state->gop_cnt = 0;
-- 
2.7.4


