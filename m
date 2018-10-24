X-GM-THRID: 6615995606614671360
X-Received: by 2002:a19:a912:: with SMTP id s18-v6mr184992lfe.23.1540406520516;
        Wed, 24 Oct 2018 11:42:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f602:: with SMTP id x2-v6ls261918lfe.15.gmail; Wed, 24
 Oct 2018 11:41:59 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63M0lHTNYRkUEyFxQ0g9lab8OgYCf5/UDb2TBv78hBoZRyzrtKO8I4f8Rc+QD17k9TH/xkJ
X-Received: by 2002:a19:f618:: with SMTP id x24-v6mr606591lfe.21.1540406519447;
        Wed, 24 Oct 2018 11:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540406519; cv=none;
        d=google.com; s=arc-20160816;
        b=a6q+DDDfBtwLDwZmcOY8riJkCbQ9sZKKxACMjUf8Kji1atv3azXbe1WWX8qjWlbTEx
         mkF+RnIbfseR84Bt3OyTP0Ug9mH5EcXuAmxX4zLzQnk1T47UFiAsbq04lbPU/zBM9ql/
         rGnqpOqFCzmr/1AD2RXATF+Ptfd1wGr+t+0n0pK3UZZQQq0Ohx3InbWKTm2jZNfFV8qF
         7/zSluyVR2QA8Eg5LC8tAhYMJ2XeMRpRg4jcZwqLcVl+R57O7O8/Qs/EkrzlN8zUc2jh
         Mg0u1eX3vbsRY0WmoCVvMKYY/D/vUeM7bVevbbFxqUNlay8N/TDGY0wokL+ZRTDBaa2r
         nmQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=e2+B8e4BLXNYk7foYf2fgUMtSkXNvJ74auaRGato7mE=;
        b=RcW0Wu/N8i6TN2In2OxcqWVdzpcngy+lIHv4rSwCiwyjAaI/Ob7gi+QDGr9FWcsQO7
         Eki/kjpeWCSbv0mhXn3PxqRVpnWA9k97mhWpMfT0Yot4XABexUUCW2psKu1FugvYunud
         i/ybWih/NNgn2YLYAjHSxagQ3rzsgmXDqLP0JmWLyq0vpJ3lN3O5+CmcyIggyNPnAyeS
         jv+Rw67kOwkGZ5QI0r468SLlXRPAJjLf54wR2aQwT6knaODjDdm5ss5zIdRgp08MQ/ul
         8GlRt0YPsKQkAIAS0G3DH3r2935UNPSvKY6/lMO41IJygqNg2L/m9+QCKMv0u3vxUnWL
         Kpog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WkS7PipL;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id 73-v6si60155ljc.5.2018.10.24.11.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WkS7PipL;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id u1-v6so6702390wrn.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 11:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e2+B8e4BLXNYk7foYf2fgUMtSkXNvJ74auaRGato7mE=;
        b=WkS7PipLzmwPFlUcINa/pXpzylHFCkw2OwABBLgVeWcU87A4KoHIPZEO0VIpuSfiI8
         7nu4tH3jeGLIKJAWWnjr7VOmnhYhQxfhZvbLDA5eLiftxhfwVoLaBd5GHPEOc3HNIZuA
         UBaS6ALOlmoYMxEOCiLgc65zWziwE7PFOppKdroStAACBPRZBtTow9bIa39SzpVHTEEh
         McFyj3AROhK/wnPNSW371on+mosCg/iqwd72r9PpnRE4WMxBvn77dXNsGwIhfC9S8d+9
         E0VVUx6Pn8249lR6tg49TnDGcdigJjsg2t3SXdYc9Be1VTWLxFIknUksdEzRgmogBGN6
         9dUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e2+B8e4BLXNYk7foYf2fgUMtSkXNvJ74auaRGato7mE=;
        b=UwEsRDBzPh6N0RxaxJz9tl20WJpS/6cZTRgGYtQRR1unjChkPsonThUNNTP8x5zvSp
         FiCUO3K+4L/7x+sbKq14znp61LjwqylbUcaMBKwP8V9PLt4zUmmrQ6hY0zJkiCmHxPmU
         T5oLsOAK21ya9dXWQipQbx/tARS121UpmeNFx653GFGgJKb2oysDOotETv402iE+VVdm
         Xky9s9Y41LZ7QzrUS6PDHJVD1FJ18jnF6oeSeFADTj6Nmk8VY1XLatfJnFkWdhDgct4V
         gF8vgTpcvC08ZXZD196FQJ6px0jWJLhl1OfO1Wx7asTBfHXO+UpwBoeCLXk6FK5A8rPw
         3wig==
X-Gm-Message-State: AGRZ1gJ8eOEuyqNbGA+TKb9km7QyUnNZro2PHp+vBYJMwVNmYtL3eIyT
	pdqvWkklpAQKTPKcHlBSJoI=
X-Received: by 2002:adf:8065:: with SMTP id 92-v6mr932847wrk.23.1540406519025;
        Wed, 24 Oct 2018 11:41:59 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id t66-v6sm3282377wmt.5.2018.10.24.11.41.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] media: vicodec: Add support for 4 planes formats
Date: Wed, 24 Oct 2018 21:41:49 +0300
Message-Id: <4a3a350e683aff5a6a917308745f15ee432c84fb.1540404892.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>

Add support for formats with 4 planes: V4L2_PIX_FMT_ABGR32,
V4L2_PIX_FMT_ARGB32.
Also add alpha plane related flags to the header of the encoded file.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   | 17 +++++++++
 drivers/media/platform/vicodec/codec-fwht.h   |  6 ++--
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 35 +++++++++++++++++++
 drivers/media/platform/vicodec/vicodec-core.c | 12 ++++++-
 4 files changed, 67 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 91bfd1d9182b..36a08d81807b 100644
--- a/drivers/media/platform/vicodec/codec-fwht.c
+++ b/drivers/media/platform/vicodec/codec-fwht.c
@@ -782,6 +782,17 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 			encoding |= FWHT_CR_UNENCODED;
 		encoding &= ~FWHT_FRAME_UNENCODED;
 	}
+
+	if (frm->components_num == 4) {
+		rlco_max = rlco + size / 2 - 256;
+		encoding = encode_plane(frm->alpha, ref_frm->alpha, &rlco, rlco_max, cf,
+				frm->height, frm->width,
+				frm->alpha_step, is_intra, next_is_intra);
+		if (encoding & FWHT_FRAME_UNENCODED)
+			encoding |= FWHT_ALPHA_UNENCODED;
+		encoding &= ~FWHT_FRAME_UNENCODED;
+	}
+
 	cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
 	return encoding;
 }
@@ -860,4 +871,10 @@ void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
 		decode_plane(cf, &rlco, ref->cr, h, w,
 			hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
 	}
+
+
+	if (components_num == 4) {
+		decode_plane(cf, &rlco, ref->alpha, cf->height, cf->width,
+		     hdr_flags & FWHT_FL_ALPHA_IS_UNCOMPRESSED);
+	}
 }
diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
index 5e6813aeaa96..40ec137cfd4b 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -73,8 +73,9 @@
 #define FWHT_FL_LUMA_IS_UNCOMPRESSED	BIT(4)
 #define FWHT_FL_CB_IS_UNCOMPRESSED	BIT(5)
 #define FWHT_FL_CR_IS_UNCOMPRESSED	BIT(6)
-#define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
-#define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
+#define FWHT_FL_ALPHA_IS_UNCOMPRESSED	BIT(7)
+#define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(8)
+#define FWHT_FL_CHROMA_FULL_WIDTH	BIT(9)
 
 struct fwht_cframe_hdr {
 	u32 magic1;
@@ -117,6 +118,7 @@ struct fwht_raw_frame {
 #define FWHT_LUMA_UNENCODED	BIT(2)
 #define FWHT_CB_UNENCODED	BIT(3)
 #define FWHT_CR_UNENCODED	BIT(4)
+#define FWHT_ALPHA_UNENCODED	BIT(5)
 
 u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 		      struct fwht_raw_frame *ref_frm,
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index cc9275f3c6cb..42e29a4343c2 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
@@ -33,6 +33,8 @@ static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
 	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1, 3},
 	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1, 3},
 	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_ARGB32,  4, 4, 1, 4, 4, 1, 1, 4},
+	{ V4L2_PIX_FMT_ABGR32,  4, 4, 1, 4, 4, 1, 1, 4},
 
 };
 
@@ -146,6 +148,20 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 		rf.cr = rf.cb + 2;
 		rf.luma++;
 		break;
+	case V4L2_PIX_FMT_ABGR32:
+		rf.cb = rf.luma;
+		rf.cr = rf.cb + 2;
+		rf.luma++;
+		rf.alpha = rf.cr + 1;
+		rf.alpha_step = rf.luma_step;
+		break;
+	case V4L2_PIX_FMT_ARGB32:
+		rf.alpha = rf.luma;
+		rf.cr = rf.luma + 1;
+		rf.cb = rf.cr + 2;
+		rf.luma += 2;
+		rf.alpha_step = rf.luma_step;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -177,6 +193,8 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 		flags |= FWHT_FL_CB_IS_UNCOMPRESSED;
 	if (encoding & FWHT_CR_UNENCODED)
 		flags |= FWHT_FL_CR_IS_UNCOMPRESSED;
+	if (encoding & FWHT_ALPHA_UNENCODED)
+		flags |= FWHT_FL_ALPHA_IS_UNCOMPRESSED;
 	if (rf.height_div == 1)
 		flags |= FWHT_FL_CHROMA_FULL_HEIGHT;
 	if (rf.width_div == 1)
@@ -339,6 +357,23 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 			*p++ = 0;
 		}
 		break;
+	case V4L2_PIX_FMT_ABGR32:
+		for (i = 0, p = p_out; i < size; i++) {
+			*p++ = state->ref_frame.cb[i];
+			*p++ = state->ref_frame.luma[i];
+			*p++ = state->ref_frame.cr[i];
+			*p++ = state->ref_frame.alpha[i];
+		}
+		break;
+
+	case V4L2_PIX_FMT_ARGB32:
+		for (i = 0, p = p_out; i < size; i++) {
+			*p++ = state->ref_frame.alpha[i];
+			*p++ = state->ref_frame.cr[i];
+			*p++ = state->ref_frame.luma[i];
+			*p++ = state->ref_frame.cb[i];
+		}
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index 945b54efd4bd..2cfd3b85fa26 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -995,7 +995,11 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	unsigned int chroma_div = info->width_div * info->height_div;
 	unsigned int total_planes_size;
 
-	if (info->components_num == 1)
+	//we don't know ahead how many components are in the encoding type
+	//V4L2_PIX_FMT_FWHT, so we will allocate space for 4 planes.
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)
+		total_planes_size = 2 * size + 2 * (size / chroma_div);
+	else if (info->components_num == 1)
 		total_planes_size = size;
 	else
 		total_planes_size = size + 2 * (size / chroma_div);
@@ -1024,6 +1028,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 		state->ref_frame.cb = NULL;
 		state->ref_frame.cr = NULL;
 	}
+
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)
+		state->ref_frame.alpha = state->ref_frame.cr + size / chroma_div;
+	else
+		state->ref_frame.alpha = NULL;
+
 	ctx->last_src_buf = NULL;
 	ctx->last_dst_buf = NULL;
 	state->gop_cnt = 0;
-- 
2.17.1


