X-GM-THRID: 6615995606614671360
X-Received: by 2002:a2e:7e08:: with SMTP id z8-v6mr238873ljc.8.1540406518899;
        Wed, 24 Oct 2018 11:41:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:cb48:: with SMTP id b69-v6ls146641lfg.22.gmail; Wed, 24
 Oct 2018 11:41:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62k/XY7Gbry+rtB0qAg/NoMTKVFYvvdVfAmHSe5iht9DBDr3lDUEdYxWey0uD+NA9HgFT8M
X-Received: by 2002:a19:5008:: with SMTP id e8-v6mr1214290lfb.34.1540406517656;
        Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540406517; cv=none;
        d=google.com; s=arc-20160816;
        b=Atut2PUWAe/1jA11N4MN1N7QZi7sT7ad0nylh7OWtjBgabpdtxFY1phvEDOOGlp/hM
         slWWPthoQSEFHkXHnfUORTj+E99H/lxDzXsZZ61xfJAv1LdAYw+VehY/zDSuegACJElo
         roEiwvDPruIO5rzF96rJJu+XPd0YtByKiRMHR5dVE/MLmXlkOZpZaOWjZneXAdqITXyA
         ++aDPDQkdQYhTlqusMnk8jUG7rlOUO1kqYMbd4y/2CrWSSu0WUbpM825X+Ba43tCUPok
         PDXNHRuLTp3VNECMhbw4WkFbh0uj5tgXuTCujAeozKlxqbqm588vKpQrf1ZURDySSCAe
         382w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Rr/+CvCy2Li5di16h18ENWdbQ5KWodIJr31YDswmy6o=;
        b=IZCGw/PnGjhDJ+MlpBQJxe3ZJ0DJrVVT5xHFesZb0Jitjwhl4BwCQItPdJNoIDVUKy
         xzOfyRnFxOdvFaoQjx4ejchrxcFmU97UJ57iqCUkFB200fII0KIMSDBB81anQ5n38Tcr
         mZfkBkGRUJ0KZxFxphqw4paGGSILJcw2BymQ9irzFI1xRgufi1xlgpAkNcZyQ6vLK8ty
         TgvlbdiJcqfWYptVmZ+s2a1vdrrWFndSWoe6UOp69exV9QwrFiflitJ8zPmlHM+Q3yF0
         jjwlJyL7SIqJWSbN6jnyTE0USux5YimHhYp7uxGygy/iAcBjk9LJkxnUCExLIRTNWN73
         fgog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y9+VOHx+;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id 205si92003lfb.2.2018.10.24.11.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y9+VOHx+;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id d10-v6so6702077wrs.5
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Rr/+CvCy2Li5di16h18ENWdbQ5KWodIJr31YDswmy6o=;
        b=Y9+VOHx+DphaBFDH4lQsoteTS/t4CUm9V1avhygLPjGj7I9HK94jW/AKNVOI3IHLXV
         mGhow1dB5ZMhCsluxkbKisS6gnWBrh+nHlV581LvOH6K2fxW1H/EjlT/USlGDSuSfeXP
         wP3Pu1M/d+CVmlyMiZYeSRTYrfdkxSZHwDAMygypKRZuIU76CAQZ3VITxePth2GLlN4k
         cYLA+FR0N4N37UKXM4nsaCQ6dH4QcIOotz4NxUl7aNaVXteaYp/AH8XVjMHt+daKu1En
         EK2vjCtCoW7Ojkutm0ZXRMrXxKVeofHHC2U8NlzTR27KHBM7AF8l8OHuzZBzXsrgdOMn
         EFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Rr/+CvCy2Li5di16h18ENWdbQ5KWodIJr31YDswmy6o=;
        b=Cph8E+ZqkmJ7P83BNZZ0j4mCfjc4liZWZFAjtzgvKFnFagTITpjznLWgulh3rn1OZ1
         PyrvpoAQBKWtOAU9fUXgA98ub9z9h91EA3RluvR0tEDnkKtC27pYY7HALry9IksOlXjD
         L7Il8yuSeNdn55qcDqXeAjYGT+4o3Mi/N+mYRFK6hCseJhflT1tXDb/rcznSM3cBIiWz
         EjYpRfJcuzhOQYyHYScJte2bei03dVsfcQ79B8PfKM1haf09qskwmMKRFSLfym9jbO/U
         vYOCfSd1SO2FL0n1h1oi1FBOwO23cSo7GNX9tpVuq9eVanSrrB/Lq1LHwxdyddSYzhFo
         NNqA==
X-Gm-Message-State: AGRZ1gL688OPtkbDc32K2HQM4ehuEaI++Fpxad7CwiFdoRI5b8GpESyq
	jshGePr2LemIs3gxABKRtl4=
X-Received: by 2002:a5d:6b4f:: with SMTP id x15-v6mr919916wrw.304.1540406517183;
        Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id t66-v6sm3282377wmt.5.2018.10.24.11.41.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:56 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] media: vicodec: Add support of greyscale format
Date: Wed, 24 Oct 2018 21:41:48 +0300
Message-Id: <e88b75a1e6259c3dc0d0b36bcb9b0d50598f419d.1540404892.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>

Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
Also change the header of the encoded file to include the number
of components.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   | 56 +++++++++++--------
 drivers/media/platform/vicodec/codec-fwht.h   |  5 +-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 12 +++-
 drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--
 4 files changed, 61 insertions(+), 33 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 36656031b295..91bfd1d9182b 100644
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
+	if (frm->components_num > 1) {
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
+	if (components_num > 1) {
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
index 5750e21f16ac..5e6813aeaa96 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -56,7 +56,7 @@
 #define FWHT_MAGIC1 0x4f4f4f4f
 #define FWHT_MAGIC2 0xffffffff
 
-#define FWHT_VERSION 1
+#define FWHT_VERSION 2
 
 /* Set if this is an interlaced format */
 #define FWHT_FL_IS_INTERLACED		BIT(0)
@@ -81,6 +81,7 @@ struct fwht_cframe_hdr {
 	u32 magic2;
 	__be32 version;
 	__be32 width, height;
+	u8 components_num;
 	__be32 flags;
 	__be32 colorspace;
 	__be32 xfer_func;
@@ -122,6 +123,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 		      struct fwht_cframe *cf,
 		      bool is_intra, bool next_is_intra);
 void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
-		       u32 hdr_flags);
+		       u32 hdr_flags, unsigned int components_num);
 
 #endif
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index 64ad01e99bad..cc9275f3c6cb 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
@@ -11,6 +11,7 @@
 #include "codec-v4l2-fwht.h"
 
 static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
+	{ V4L2_PIX_FMT_GREY,    1, 1, 1, 1, 0, 1, 1, 1},
 	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
 	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
 	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
@@ -76,6 +77,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	rf.components_num = info->components_num;
 
 	switch (info->id) {
+	case V4L2_PIX_FMT_GREY:
+		rf.cb = rf.cr = NULL;
+		break;
 	case V4L2_PIX_FMT_YUV420:
 		rf.cb = rf.luma + size;
 		rf.cr = rf.cb + size / 4;
@@ -166,6 +170,7 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	p_hdr->version = htonl(FWHT_VERSION);
 	p_hdr->width = htonl(cf.width);
 	p_hdr->height = htonl(cf.height);
+	p_hdr->components_num = info->components_num;
 	if (encoding & FWHT_LUMA_UNENCODED)
 		flags |= FWHT_FL_LUMA_IS_UNCOMPRESSED;
 	if (encoding & FWHT_CB_UNENCODED)
@@ -196,6 +201,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	struct fwht_cframe_hdr *p_hdr;
 	struct fwht_cframe cf;
 	u8 *p;
+	unsigned int components_num;
 
 	if (!state->info)
 		return -EINVAL;
@@ -204,6 +210,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	cf.width = ntohl(p_hdr->width);
 	cf.height = ntohl(p_hdr->height);
 	flags = ntohl(p_hdr->flags);
+	components_num = p_hdr->components_num;
 	state->colorspace = ntohl(p_hdr->colorspace);
 	state->xfer_func = ntohl(p_hdr->xfer_func);
 	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
@@ -225,9 +232,12 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
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
index fb6d5e9a06ab..945b54efd4bd 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	unsigned int size = q_data->width * q_data->height;
 	const struct v4l2_fwht_pixfmt_info *info = q_data->info;
 	unsigned int chroma_div = info->width_div * info->height_div;
+	unsigned int total_planes_size;
+
+	if (info->components_num == 1)
+		total_planes_size = size;
+	else
+		total_planes_size = size + 2 * (size / chroma_div);
 
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
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num > 1) {
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


