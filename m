X-GM-THRID: 6618908371010453504
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr220029wmh.22.1541278242299;
        Sat, 03 Nov 2018 13:50:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:32c4:: with SMTP id y187-v6ls855619wmy.11.gmail; Sat, 03
 Nov 2018 13:50:41 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dJM9ogwwVg3pJSPIq99Vyc0MlaoENumSHzRqitOcROzT1fS2YsszL47pJtGVXnhk1uqjrY
X-Received: by 2002:a1c:e3c1:: with SMTP id a184-v6mr236158wmh.9.1541278241591;
        Sat, 03 Nov 2018 13:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541278241; cv=none;
        d=google.com; s=arc-20160816;
        b=V8OFrPQ8oR5Stx/Njk5HmuQ4Eg4BBSyormelumScATZC+e9TdTcNM3c821mrqZdVNc
         7qcVsjv24WUQhPnRAar+C4EyGvOEHOT8c8VP1VeS80LKQnD4PUTagZEAz85ENwiCgunS
         B+pAI36YsYyHNmx3x7rmO1BhrdzOo5UG1DSsun662c6u/ZWBHXP0x7+/vtsS5Q162bjt
         hd//rhKycd5fvoz7F9QnIp0EKXwJlCLBox+2eMULVkJL0n/e8zBdw4GMEgvY1+wUSRsg
         un6c7Ohahfxi0d7GwS31odRaZyrFba/8EqNy2iytcwJRPGj43SSznbmcQNB95PsFhi4d
         a3ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=RHAj2mYHVcEi8U21FZjPrMXGLvJE5fy5IjU6/oRpKqo=;
        b=SrXlE8b/VMymZ6t01YN5dQJzoi8QD+bVC6iYr2SmBEhc/uix1BaEvhSoQLWHwWCBUE
         MICqJqmZX6rnyJ9ai//ijwpQAUP9aqDPrnDW2qVneXsjxmXqNXsIv+9LT0T4PXY578AH
         1fgIpcJAbFon7wXthT+933kxoXOZbvmbDaCjj+mxF/idRW/J5vLRkVUxLym4ooaomiHQ
         D7FyaYbEOFoL+fZiWzw2cLSKWf4AD02UY43/VINpHOQmpWvYh0VDrgjyQA2wkgtWmoA9
         keLDDNxgretyxc2fua5KC1qiOxzGCGiyb3hLN5puTOVb/MndCNO87KP15dXDhReI0+n4
         K2tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZT8eDHS8;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id e5-v6si1027791wru.1.2018.11.03.13.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZT8eDHS8;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id d10-v6so5352427wrs.5
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RHAj2mYHVcEi8U21FZjPrMXGLvJE5fy5IjU6/oRpKqo=;
        b=ZT8eDHS8V0EUJtHC89CiyuoZqhyKFJUT/RvTrhc8Q9v3rz10kOs5kbK9lqTMdsIA28
         befswalgeFFD3NzFbn/PLEtBuJeIaTm+hOEfNv8TQCSmkGL0qQQCMn4sohAdYZnkuyXh
         6UFTmyGXSwUZ8AyX1w6h5lByHfFGbaEH8Tr2eoFLWzM4ZwXa69j8eljejRIKHGrMo/U/
         jw/oUH2BjJ3wvXQov3fcynGWnrv3DimjMs9nqJGqV2Jsn2mlAthhmuRgyJkMctFDc25h
         abBMtdbwT+xjDHE0dC/XyrX7vl/hU3hrNrutLhJ4x+JJLa8TOYy9pbmOdrsdXQLdtZOc
         rGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RHAj2mYHVcEi8U21FZjPrMXGLvJE5fy5IjU6/oRpKqo=;
        b=WZktjw3aDyz+E5rdPrPl/YwNkpLIChrRLwJNBN4iocRu3IHa/mtMKiPk/1PLEQlqYe
         takG6l5YvAZovZgHZcNluqV0EiJwtRp1Fad5EmABh5v/PT9vD1ogiZul8SjCXTtARill
         NzBHAtorK+mIcic5RuwrTwgig0xvGX7S65TKgWHOJ4LzL/rK15KguMPqBACi5tbVOZjx
         fUBojmnbMMn0gKDYj2Zje0O8Pi3jN3z4Hz+DupEeqYwiewxFXxq4HbF6oy+oevX0vU1V
         o88QEv933kiyjtdvIofjnfOPDWXsGV218psFDSvAzABgwwFmLqtV21SSpXl3xW/WrsDp
         RQkQ==
X-Gm-Message-State: AGRZ1gJOLcm6cdef4fHdPFf8oSl9IyQkpZ4IJGO5nTU1QiTYg/UAquLy
	EGQNACZdmp9uDtxzV+vfJ0Q=
X-Received: by 2002:adf:f9d2:: with SMTP id w18-v6mr14577000wrr.134.1541278241298;
        Sat, 03 Nov 2018 13:50:41 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from gurit.home ([77.126.109.255])
        by smtp.gmail.com with ESMTPSA id l67-v6sm66604873wma.20.2018.11.03.13.50.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:40 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v3 3/3] media: vicodec: Add support for 4 planes formats
Date: Sat,  3 Nov 2018 22:50:29 +0200
Message-Id: <af714970092ace16fb413434db067912f92b9a6b.1541277502.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>
In-Reply-To: <cover.1541277502.git.dafna3@gmail.com>
References: <cover.1541277502.git.dafna3@gmail.com>

Add support for formats with 4 planes: V4L2_PIX_FMT_ABGR32,
V4L2_PIX_FMT_ARGB32.
Also add alpha plane related flags to the header of the encoded file.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.c   | 15 +++++++++
 drivers/media/platform/vicodec/codec-fwht.h   |  2 ++
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 32 +++++++++++++++++++
 drivers/media/platform/vicodec/vicodec-core.c | 14 +++++++-
 4 files changed, 62 insertions(+), 1 deletion(-)

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
index b1a9cc670311..6b24bfb2436b 100644
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
index 65ac55e3a10f..e00b5fd82132 100644
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
index ed6a46958546..5ae876238e13 100644
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
2.17.1


