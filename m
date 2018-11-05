X-GM-THRID: 6618908371010453504
X-Received: by 2002:a1c:496:: with SMTP id 144-v6mr412493wme.18.1541452483816;
        Mon, 05 Nov 2018 13:14:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f014:: with SMTP id a20-v6ls1413722wmb.21.gmail; Mon, 05
 Nov 2018 13:14:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5fOxgw+nAOndEI4mx0EuX9aKw7Nd/PZpw49xRO776qiKDmhJX6itnB8jNy5Ganh8oXI+PAE
X-Received: by 2002:a1c:8091:: with SMTP id b139-v6mr830811wmd.2.1541452482708;
        Mon, 05 Nov 2018 13:14:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541452482; cv=none;
        d=google.com; s=arc-20160816;
        b=AZf81StSMsCkFwhgOY/Y0kodPcKffwj/pRo91DDGdBAfNgIVDDnvim/RH1+nXRK0wS
         r2U3a8OqX/ICuUmnCAttKNqdjqJt/0OVFC6vp3XYBC7mHA6virGfnFlmoXzXXCQGaozJ
         Zib7tcC7JtK9fKBwGTrFywnILVn1MQCVkJ2LfM+hOAkiwEXosFJEAAYFxjrkUZE+0d9A
         mAphEWR6o/IaoWVOqgE8p1UNgagPeeJ93z1SROm5YpLsf1M+mYI7J5gl7tVMOF2lpmKZ
         U/aOnPNSzV0iOwHePpReqbQB6OgESX8UrSxipPWZdddaSeFWFT3oq44bY6HZpmwXKMPv
         Ovmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=0cNv84/NEjQ+I8IQZvd9JNwezmqAwDdrJVj7e41DMYw=;
        b=WcqvQI+bjvP80sqTNXQ73FLJGd/cvDdmW2ZA2B3hdnAn52tpyWHBQ9XPXGXuqKtICq
         /IeLGvUgEmvE6QHH+nf0NzvOpbz0yNElP2usJQJJlEp7S7fQCQ+YvbHzRKdn+sk2Rn5b
         +17b93nfinkeDIPkH7CPsyz6QVG0PK++lbZug8MAASVZvgy6hCIyvYVJC4Ne5a0yYfS2
         EndIvzF6R7nBOcOsegWwZjypqNsZvinTDYq1axBy5X/NcvTWMwR3vmetqvpOoHr87S/N
         8s7it3/Y45n6kmYXJlcC/f4Zu2pKitT9KLCSJOetl89GCyScR+HRwtkMxBKzUUHZPmwm
         /65Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVaMHoER;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id z129-v6si898815wmc.0.2018.11.05.13.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVaMHoER;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id x12-v6so11116174wrw.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 13:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0cNv84/NEjQ+I8IQZvd9JNwezmqAwDdrJVj7e41DMYw=;
        b=IVaMHoERY6Z8NnOmvGYppX9zY/+fW1Ra04c/wsqDm8uUfh3Kg06mGPMK7M8cps9ZHd
         Lpj161f3dJ4Gb8v8blZ6QdV7N1wynQPXCfkdFp98m9TMLdTc3mQfRyzo/I8d4vrbwiUL
         FyduNcvEckY8XNqulQsi4VyDGcI7Fsvh6Z4OdjU5xW392bNRupE9+PNhCGs4KNcyyU8W
         udmhqganfzNoD8ON/CfZEUMhrNfz1F9P2y/rHltsZr3PYmWpBTTa0Hkt8r9AaazG6ZXL
         DGz5O0bTQOtoFBTB2yRJxfpNdfdzkEuDDKo5dYNApUWdulXdJmzYy+gE2L6Q0QqwLqLt
         Vxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0cNv84/NEjQ+I8IQZvd9JNwezmqAwDdrJVj7e41DMYw=;
        b=l8QyXuOh6ZtjgnAkCh58v88iquJY+1hIY3TB950lxLTFlbE75moWvlKe6XUfcEOLNP
         Y+1JFpzABz30/W+O7R2F5XQYVsqapbWTTYDmBhFkU92YgPIlhqJXhZcRdY7rcm8xD54l
         NEfVClAMEOD/5EadcuXBNmHTAP2ukIB+85oe0/l2q2ko4gYCqS+CVY+/i68beHqGxhZ8
         kfx4a5GbkT/1p2GVWg0Ka8OkZYUug3G1onbjixLBWTN7JsQiCRMXZkDFa/r1ltcZMTBb
         yIAl3+l3nEurtitAvdoJYmEVBVnina063KWJw+bZgyAcYuIAz3zNf1MkKUnKaF9fT5cc
         0cTA==
X-Gm-Message-State: AGRZ1gItxL5EAobqtIGGUf8zxxzLDFvVUbqgKYHS6IDYH+U8K5lk6V/N
	2AOg0hPefs/2YWeB7DtzruM=
X-Received: by 2002:adf:d181:: with SMTP id h1-v6mr21071006wri.138.1541452482311;
        Mon, 05 Nov 2018 13:14:42 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain ([37.142.204.130])
        by smtp.gmail.com with ESMTPSA id y195-v6sm34976461wme.22.2018.11.05.13.14.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:41 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v4 3/3] media: vicodec: Add support for 4 planes formats
Date: Mon,  5 Nov 2018 23:14:17 +0200
Message-Id: <a2652e2d86ec5bcf212d4141e7b603c454537e80.1541451484.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
References: <cover.1541451484.git.dafna3@gmail.com>
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
References: <cover.1541451484.git.dafna3@gmail.com>

Add support for formats with 4 planes: V4L2_PIX_FMT_ABGR32,
V4L2_PIX_FMT_ARGB32.
Also add alpha plane related flags to the header of the encoded file.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   | 15 +++++++++
 drivers/media/platform/vicodec/codec-fwht.h   |  2 ++
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 32 +++++++++++++++++++
 drivers/media/platform/vicodec/vicodec-core.c | 12 +++++--
 4 files changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
index 1af9af84163e..9513374e8f44 100644
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
index bde11fb93f26..90ff8962fca7 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -75,6 +75,7 @@
 #define FWHT_FL_CR_IS_UNCOMPRESSED	BIT(6)
 #define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
 #define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
+#define FWHT_FL_ALPHA_IS_UNCOMPRESSED	BIT(9)
 
 /* A 4-values flag - the number of components - 1 */
 #define FWHT_FL_COMPONENTS_NUM_MSK	GENMASK(17, 16)
@@ -119,6 +120,7 @@ struct fwht_raw_frame {
 #define FWHT_LUMA_UNENCODED	BIT(2)
 #define FWHT_CB_UNENCODED	BIT(3)
 #define FWHT_CR_UNENCODED	BIT(4)
+#define FWHT_ALPHA_UNENCODED	BIT(5)
 
 u32 fwht_encode_frame(struct fwht_raw_frame *frm,
 		      struct fwht_raw_frame *ref_frm,
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index 7dc3918a017e..b53655a8cef6 100644
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
@@ -177,6 +191,8 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
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
index 92bc68694a21..5ae876238e13 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -997,9 +997,11 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 
 	/*
 	 * we don't know ahead how many components are in the encoding type
-	 * V4L2_PIX_FMT_FWHT, so we will allocate space for 3 planes.
+	 * V4L2_PIX_FMT_FWHT, so we will allocate space for 4 planes.
 	 */
-	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num >= 3)
+	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)
+		total_planes_size = 2 * size + 2 * (size / chroma_div);
+	else if (info->components_num == 3)
 		total_planes_size = size + 2 * (size / chroma_div);
 	else
 		total_planes_size = size;
@@ -1028,6 +1030,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
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


