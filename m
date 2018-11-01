X-GM-THRID: 6618908371010453504
X-Received: by 2002:aa7:dcc5:: with SMTP id w5-v6mr1388422edu.5.1541084701271;
        Thu, 01 Nov 2018 08:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c55:: with SMTP id t21-v6ls2651213ejf.14.gmail; Thu,
 01 Nov 2018 08:05:00 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cFp+QaKrBOcDY2UN4i5kcsK7njKdjr85oOKF6r3fK2NsbBWaZWUNsZ+FY9U9CgXld3j5wV
X-Received: by 2002:a17:906:12d2:: with SMTP id l18-v6mr1025475ejb.3.1541084700412;
        Thu, 01 Nov 2018 08:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541084700; cv=none;
        d=google.com; s=arc-20160816;
        b=uDIguz7KfpaF3h1I1zPWvYYS8GLoVPjnIeUNOzsps7UJsFCkoZdshL7wEyqriUmL5g
         arDLpCNj5MLAheecb0jQwtifYnxEUYOiS7wfXuGtDXe1nSPq/Ljnf1aMRJCgIOFTKRJD
         fi+OEeFtneaTGPwk5F+UsoyarvOVOPR93JRFQFHNaQAZ4gdGwNL3Z529mwhohehPamLw
         RFW4GQtpUDpQlDo/ya9J/Spk1EWL+7MouKbGCCaDAqkzN/zPKvNAjLUPKCUTieRo/yUU
         9bVxQCw7/VhFV++dgBzlAMGNcS/og+PkmNLsj+RNhtq1zuLGvplAKev4Q6GBA3fOUGma
         1XsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nv1eXIOIl24PqTvJu71PTD7FrMBvq0vholosa+K/LDU=;
        b=Td8HUNx8A6xHUcnf0vyATrcheNorLAbRdNvCL/SPaPvr4ycm67ZczTRum6wRMpVX3D
         TLFOQVZZ5wVW3C8mlfQdTaOgmYaZDeZ8nVqsS+AQv72FRUqVRzKm28EmYT6gqzJ7P3w6
         RsXIKWBfuwM1pCW2lvihO0vIQcRPVYhQR14w1+i6HUdWvM2nR9VPmVElWWPjCsQZBf8T
         v6iLhl/xeMxqrumJ1yUpsilU3HyQ46IzC68AW1JaAfo94Tbp9I0XOrabvY0ipesRR4KD
         OtbF9mG6wfdL6q7PbNSleAZgfYUayV5HiojAq5f1UdLEbRv/PoBaYV8508kCzCtSpcVJ
         Cj9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYAxmuKx;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id o10-v6si958793ejc.0.2018.11.01.08.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 08:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYAxmuKx;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id t10-v6so20378390wrn.10
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 08:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nv1eXIOIl24PqTvJu71PTD7FrMBvq0vholosa+K/LDU=;
        b=pYAxmuKx1TdWZhNHNCSE3ym3Zqs9v2LYQneQHIYZa4/eG/bZygv9rwAV2ID5Md2ijO
         IWfjiQ4BTL5R+PsoNC7Sn5Z0Y4GMau53z62dTU8i2wXmJym/ML7qOZJCCaaDr7YOVYkX
         RKn0LiWcx8WKLWez8nzGRox6cKXcxytEWWSvReZ2kSwrbRGIny5c7BaQ3USNG7Vj+H1G
         cx/H+Rv2Gl70/QM7E53vYMAfSZdNI1K/2flnvLYq2KyHQTZGNNsFOVKSRUjK+ga3+w63
         R0j0fQtcXKNcoe+/objravKy/XMs6Y4JmfbEhiGGU9xFN3caEcLXHIgRjMQFjckV+ubn
         MGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nv1eXIOIl24PqTvJu71PTD7FrMBvq0vholosa+K/LDU=;
        b=Y0JCXQm/x2rAnVEgTvzPxDslBsyOA8XJEI3EU5KoptOUtxou0vECmB/8cKo9lTM6rR
         Rq6yFdsqXKLc2+ujmX27vbvn50s52GSKFn1HxXueLorKQ49Nd522bu69+bpRJJrMXIVw
         isMCvuOFzj/Ut6dHs/7z3iP1Y5cly1C0euB074XCawWv0pQEww6nbK5ZqvceFh2xokp4
         SY/pwxe/0IxHl9uEvgwVgQcZmYTVwdCcJO9+fVGu7sB2oDC1CfJMWZIh6KSxiJfcSwuk
         Rd/lrCJ+1RTU4pkantARc3PgA8EUdm+HSJwP/eulibKQZkHJQTctP9UMZvdfhXE5qcO2
         8/AA==
X-Gm-Message-State: AGRZ1gJoXrZwKdu0+nw/EyKMD1RmP7E+/1pc9vqOCRBlJSDJ/rYlyXES
	bKzreQNf9f0+1dpx6GjN2Vk=
X-Received: by 2002:a5d:52cd:: with SMTP id r13-v6mr6567264wrv.213.1541084700113;
        Thu, 01 Nov 2018 08:05:00 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain (62-90-76-18.barak.net.il. [62.90.76.18])
        by smtp.gmail.com with ESMTPSA id m141-v6sm4534611wmd.14.2018.11.01.08.04.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Nov 2018 08:04:59 -0700 (PDT)
From: kamomil <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v2 3/3] media: vicodec: Add support for 4 planes formats
Date: Thu,  1 Nov 2018 17:04:38 +0200
Message-Id: <3c134f13845a4ddc99ad0910262b3030b05d3295.1541081267.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>
In-Reply-To: <cover.1541081267.git.dafna3@gmail.com>
References: <cover.1541081267.git.dafna3@gmail.com>

From: Dafna Hirschfeld <dafna3@gmail.com>

Add support for formats with 4 planes: V4L2_PIX_FMT_ABGR32,
V4L2_PIX_FMT_ARGB32.
Also add alpha plane related flags to the header of the encoded file.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c      | 15 +++++++++++
 drivers/media/platform/vicodec/codec-fwht.h      |  2 ++
 drivers/media/platform/vicodec/codec-v4l2-fwht.c | 32 ++++++++++++++++++++++++
 drivers/media/platform/vicodec/vicodec-core.c    | 14 ++++++++++-
 4 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 1af9af8..9513374 100644
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
+				frm->luma_alpha_step, is_intra, next_is_intra);
+		if (encoding & FWHT_FRAME_UNENCODED)
+			encoding |= FWHT_ALPHA_UNENCODED;
+		encoding &= ~FWHT_FRAME_UNENCODED;
+	}
+
 	cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
 	return encoding;
 }
@@ -860,4 +871,8 @@ void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
 		decode_plane(cf, &rlco, ref->cr, h, w,
 			hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
 	}
+
+	if (components_num == 4)
+		decode_plane(cf, &rlco, ref->alpha, cf->height, cf->width,
+		     hdr_flags & FWHT_FL_ALPHA_IS_UNCOMPRESSED);
 }
diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
index b1a9cc6..6b24bfb 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -75,6 +75,7 @@
 #define FWHT_FL_CR_IS_UNCOMPRESSED	BIT(6)
 #define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
 #define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
+#define FWHT_FL_ALPHA_IS_UNCOMPRESSED	BIT(9)
 
 /* A 4-values flag - the number of components - 1 */
 #define FWHT_FL_COMPONENTS_NUM_BIT0	BIT(16)
@@ -119,6 +120,7 @@ struct fwht_raw_frame {
 #define FWHT_LUMA_UNENCODED	BIT(2)
 #define FWHT_CB_UNENCODED	BIT(3)
 #define FWHT_CR_UNENCODED	BIT(4)
+#define FWHT_ALPHA_UNENCODED	BIT(5)
 
 u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 		      struct fwht_raw_frame *ref_frm,
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index 1ab01fe..73e6b5a 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
@@ -33,6 +33,8 @@ static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
 	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1, 3},
 	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1, 3},
 	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1, 3},
+	{ V4L2_PIX_FMT_ARGB32,  4, 4, 1, 4, 4, 1, 1, 4},
+	{ V4L2_PIX_FMT_ABGR32,  4, 4, 1, 4, 4, 1, 1, 4},
 
 };
 
@@ -146,6 +148,18 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 		rf.cr = rf.cb + 2;
 		rf.luma++;
 		break;
+	case V4L2_PIX_FMT_ARGB32:
+		rf.alpha = rf.luma;
+		rf.cr = rf.luma + 1;
+		rf.cb = rf.cr + 2;
+		rf.luma += 2;
+		break;
+	case V4L2_PIX_FMT_ABGR32:
+		rf.cb = rf.luma;
+		rf.cr = rf.cb + 2;
+		rf.luma++;
+		rf.alpha = rf.cr + 1;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -180,6 +194,8 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 		flags |= FWHT_FL_CB_IS_UNCOMPRESSED;
 	if (encoding & FWHT_CR_UNENCODED)
 		flags |= FWHT_FL_CR_IS_UNCOMPRESSED;
+	if (encoding & FWHT_ALPHA_UNENCODED)
+		flags |= FWHT_FL_ALPHA_IS_UNCOMPRESSED;
 	if (rf.height_div == 1)
 		flags |= FWHT_FL_CHROMA_FULL_HEIGHT;
 	if (rf.width_div == 1)
@@ -356,6 +372,22 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 			*p++ = 0;
 		}
 		break;
+	case V4L2_PIX_FMT_ARGB32:
+		for (i = 0, p = p_out; i < size; i++) {
+			*p++ = state->ref_frame.alpha[i];
+			*p++ = state->ref_frame.cr[i];
+			*p++ = state->ref_frame.luma[i];
+			*p++ = state->ref_frame.cb[i];
+		}
+		break;
+	case V4L2_PIX_FMT_ABGR32:
+		for (i = 0, p = p_out; i < size; i++) {
+			*p++ = state->ref_frame.cb[i];
+			*p++ = state->ref_frame.luma[i];
+			*p++ = state->ref_frame.cr[i];
+			*p++ = state->ref_frame.alpha[i];
+		}
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index ed6a469..5ae8762 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -995,7 +995,13 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	unsigned int chroma_div = info->width_div * info->height_div;
 	unsigned int total_planes_size;
 
-	if (info->components_num >= 3)
+	/*
+	 * we don't know ahead how many components are in the encoding type
+	 * V4L2_PIX_FMT_FWHT, so we will allocate space for 4 planes.
+	 */
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)
+		total_planes_size = 2 * size + 2 * (size / chroma_div);
+	else if (info->components_num == 3)
 		total_planes_size = size + 2 * (size / chroma_div);
 	else
 		total_planes_size = size;
@@ -1024,6 +1030,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
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
2.7.4


