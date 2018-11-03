X-GM-THRID: 6618908371010453504
X-Received: by 2002:a1c:b5cc:: with SMTP id e195-v6mr217781wmf.17.1541278240767;
        Sat, 03 Nov 2018 13:50:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b109:: with SMTP id a9-v6ls809018wmf.1.gmail; Sat, 03
 Nov 2018 13:50:39 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cNNdI2ljIh6QQdh8JFkwYte/9f1X9CH/mLjdpA8M+0buY05nqit0HRF5qooSDnIsRlCTbC
X-Received: by 2002:a1c:814d:: with SMTP id c74-v6mr232772wmd.19.1541278239942;
        Sat, 03 Nov 2018 13:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541278239; cv=none;
        d=google.com; s=arc-20160816;
        b=trS8Xm3Sft48cydu/ZXjc/DdEAVi5r4at2tRYuPSSU0+B6V/cTcHxyd10mKRy2bJeQ
         0z+Fz+I6aSoR2JjMNZBm8KUnIOvQEC5/XBnaq714FYl1k4D8eXuytpKs9eVqoxzl7Ipl
         ShSjPv05Esshr+i4LL0rI5vFiSqxJVB6NEF2zCCHfspAaMnZeLIuxWPXwga7XBv/3bo/
         StPwp6oUiHX/eHCq8+GGPGLysQkAL+5bL3Fa7GPuqoGZdLBB1LDqMNsv5Y+yfzDpMn/Y
         nP+cIM+k+gcQPw4XOW7x0ZbGvSs9vu8JGRJ3NZILvYoHePEdlIkShHtVB2xEeKRmO1Ek
         I7yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Gb65wwKLqB1yAmr2VfCCbV3ukpenx7HUtyRpg0/s+aE=;
        b=mtFRFX04pk3qtWDRQQCTAR3xj5TmfXcARtg0+i36wUUsHbAtr0LP3siQ3TYMVByKrA
         mHIdgU7v41phu9jQdsDWKRqDt/2ueAgWy3pkYRUHnFAYyfSJPdotTp9YTcgiMMM8fSsC
         m53A+agC9b1JgXHCS/O+Pt0oGJHaRy/Z2pwcooJVewbf5XwpqwkIAIvNONiDtmwaf/bf
         L4SIAbYpVyRXwHSqsHys9IzKNDklEmkg8x/lnICiwJK1PGv6d6F2rW0n7eJoSJ4V/13e
         5I0dsoIDeOXbOdpfcmuVQnIRVy1DMBLLtEvasIMxDpnmVWyoXKsV5A4RQ5de+GGvihSv
         BxJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7E68+jp;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o9-v6si975669wmh.2.2018.11.03.13.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7E68+jp;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id x12-v6so5328599wrw.8
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 13:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Gb65wwKLqB1yAmr2VfCCbV3ukpenx7HUtyRpg0/s+aE=;
        b=p7E68+jpS86CuhLMq3UKHi6Ln1jbQl1ep77xvgSAAYkvDE936JhYcxex3jtzUvBHsF
         iir3ySoxOhA2VmorBaPslMn6nmrNjJKJKBx2KRkM8BVFdyoT7TqKmR1bSQ65fTSRMVuG
         yynSdnzjj+byQDJn6TLtPGj5hDKJkycXijWyP0+kaHaJ2ol5bGA+rYUoLCvunNdarddf
         zT1VHbcQNVOSfYI6qOBdR/B72PEdtS9cy+zJ59/4SRGtDzM1Fw7/LN5n7OITxynKbK4f
         eQznqMYtf1ljygsXdRjTvYDvSkGVpo/Shd71gMj/4ROOrenndTHaYMxAsTsHxCO19/q2
         zASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Gb65wwKLqB1yAmr2VfCCbV3ukpenx7HUtyRpg0/s+aE=;
        b=FGOmlHjiwRQq1iUJw8Dgngx1ckSAT5dxockgzCawwG8SWTlJShRCVLP0t58yADd/yF
         5nhhuNO90hp95+76mBBv8tb7FCoH98dS5NYCjcLA3aEARob69QY6PHnOpf9uMTGPPmgp
         LisowCnVsxHybY8oZZkI+OjBcV939A4kkZqen9VDdZnmWsor8J0GxF/qu5q2JNhZZtLX
         cpc62xvpSxF1szTV+Yl6vASeFdkdWQq7JI5wwyDC1xT/3eEM5VHJRIPimzGuy8vfVFGB
         znfsHa/HgCs8/lFXaJoBsRYP3x/F5ksHm6pxhJyMafo1sfPCPLz5L96MxkHuO4n33+O+
         RieQ==
X-Gm-Message-State: AGRZ1gL5DMmelq0QR9V6rXdYfGsBxz9gmC4cOpV1UiNrSJDdr9tKfaSO
	xzSVRYIzPOrBT3Lhlc7So0g=
X-Received: by 2002:a5d:4807:: with SMTP id l7-v6mr14199397wrq.46.1541278239458;
        Sat, 03 Nov 2018 13:50:39 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from gurit.home ([77.126.109.255])
        by smtp.gmail.com with ESMTPSA id l67-v6sm66604873wma.20.2018.11.03.13.50.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:38 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v3 2/3] media: vicodec: Add support of greyscale format
Date: Sat,  3 Nov 2018 22:50:28 +0200
Message-Id: <bcd2abe3aecda96a840e4010d86d080382859288.1541277502.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>

Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
Also change the header of the encoded file to include the number
of components.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   | 56 +++++++++++--------
 drivers/media/platform/vicodec/codec-fwht.h   |  8 ++-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 44 ++++++++++++---
 drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--
 4 files changed, 89 insertions(+), 40 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 4ee6d7e0fbe2..1af9af84163e 100644
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
index 743d78e112f8..b1a9cc670311 100644
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
index b842636e71a9..65ac55e3a10f 100644
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
+		components_num += flags & FWHT_FL_COMPONENTS_NUM_BIT0 ? 1 : 0;
+		components_num += flags & FWHT_FL_COMPONENTS_NUM_BIT1 ? 2 : 0;
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
index fb6d5e9a06ab..ed6a46958546 100644
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
2.17.1


