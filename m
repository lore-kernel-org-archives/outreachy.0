X-GM-THRID: 6615995606614671360
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr557953wmc.24.1540406517226;
        Wed, 24 Oct 2018 11:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d46:: with SMTP id t67-v6ls1203051wmt.12.gmail; Wed, 24
 Oct 2018 11:41:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fbOvQs0P+Pd0xgv5RJwqYdUJTyjMijo8Hh1Oql+MW8HsrtopCFQZU7Nu4LcZmTEBSL9JLb
X-Received: by 2002:a1c:49:: with SMTP id 70-v6mr526443wma.15.1540406516209;
        Wed, 24 Oct 2018 11:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540406516; cv=none;
        d=google.com; s=arc-20160816;
        b=PX+Ox7zby4Zv58hfZx6kLYsIq8amqvmX325g7Gq7f/xiRq2pPpsrlIFJx/FnVz7+Hr
         8TVjF5wOozzphI4BX7icVCGkNaoNJ38rxuh2SLuqwugS58E4P/frYlJVqE6lgRBHumrl
         ge4KEjjH2Fug8Kq2vS9zCkNpYHLvB+PTCNw/EGAbXoZY+N7Fh/2+iOqjMBHExd8mBwiy
         bU0AYNHNiw6Z0nG1giSqZ8xG4EPwIjcyr3XvIxxk/fhrh2kPRRYPRx20BRC64/12A2VZ
         +PpdFfqvAWjoldMsQCZgBEBfDGFDf3MIGjf5vfsLZTGwN27HctlgXFV2jhpAqLmw4q/W
         VsNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=x0M8XBdE5UNY8qQCOrcJoeS8IEiYToZ9mQtwG2hPF78=;
        b=OSY/a8lGjQwISTp4ICB8LgAR/huw6KYTZVoXC4wenuXNcHQPRun84OBEkAnKhKut1l
         oPxk8INepLlhORH0PCt6qG/2gK5TldlqNejOLDaxNQnCOtwedlpPtrQrJ7DZ8sWfpg5C
         O1d7MOa6IuapxmzAOd1+650p1ju0u+/oDkOn8jFh8yw9Trjcfpj3k4vQEeuOD7+QUAaU
         9pn8RWefFW3Tx5QPD6f7MQl0GOmgtlgzqWn/RK18nUS+1TGWbJERrhAaKD66hrcP8jVc
         X/q6fZZlxJVoAhFXvDSzEveYdHTUEZaVVUJPIKHc24R9cBUk+03upAoEyS5g40uGdSmb
         x/ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oWXaigLv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id p19-v6si13018wmc.1.2018.10.24.11.41.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oWXaigLv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id b203-v6so6486106wme.5
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 11:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=x0M8XBdE5UNY8qQCOrcJoeS8IEiYToZ9mQtwG2hPF78=;
        b=oWXaigLvf+341XO55dZljkPo7vrxitdNmgWtw1nIvkSFsb4pKFlEuW1laczyybQPah
         RKen653X6xJi91Vi9G4yfP/+/HDE3YQwQGLKzy0wRwHo9lWxS5hyvlwj3WwOb6v614xP
         P7iqXS28RHzjfrduSxmIUz67RoMa2gDhDsQX4Lw3/zzB+pyLEtgxP/knf5pab/LRDgUU
         q6xB+Nkiw2jGTZK/MS3gHzkdQMufIWtfsYuDap85gSPH5eGqj29ccKMyFhiLedzL/dll
         y1mA6SHNepNERKHosyUF18YCXAqlXSlqrIjMqFlE9J/LeME4lp4FYiu8+pGeZk3nUJz9
         V7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=x0M8XBdE5UNY8qQCOrcJoeS8IEiYToZ9mQtwG2hPF78=;
        b=aa9yFccONfluf5QtL2laKJmX4Bde2UKIMKQ10lf8fdF7/TwWyJgCLIiuDrQqk1PDeU
         X6yqfNAcj4CS/4cg5GWkcB8oHYlW2C0L9Ogh5lMTSAKZD2OIauhN2Ybv18tmnYyODJEp
         Ldqeta/NsUgvzodBmKQo0OmvYwFEomTbAfV+7RIJA8SYet+LD4c2oTLfpKCZ3fWKp5FR
         fu3MS7qmLe8HnRtddQNWpVTi9Jmyzo3nCFfsOJeKsBQHoW82nRYyNswtW11z+kOi54xe
         QZEA+2odY9OiP8FgtAMtpw0e7/R01RN0Is9sBzCq4RJrP1E3Amr3lnrBVLywFYorrzBs
         8J+A==
X-Gm-Message-State: AGRZ1gLJEC8lb/EANZhZA9bTc/jNPza8NqeXVKrdsm65UVpcL4/RNwos
	rMzBP/pb9G/lAg4rNyWzjUU=
X-Received: by 2002:a1c:9051:: with SMTP id s78-v6mr3992411wmd.10.1540406515785;
        Wed, 24 Oct 2018 11:41:55 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id t66-v6sm3282377wmt.5.2018.10.24.11.41.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:55 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] media: vicodec: prepare support for various number of planes
Date: Wed, 24 Oct 2018 21:41:47 +0300
Message-Id: <309c1efee547255a6e28347704415d46196ca5dd.1540404892.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>
In-Reply-To: <cover.1540404892.git.dafna3@gmail.com>
References: <cover.1540404892.git.dafna3@gmail.com>

Add fields to the structs `fwht_raw_frame`, `v4l2_fwht_pixfmts`
to support various number of planes - formats
with alpha channel that have 4 planes and greyscale formats
that have 1 plane.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/codec-fwht.h   |  4 +-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 46 ++++++++++---------
 .../media/platform/vicodec/codec-v4l2-fwht.h  |  1 +
 drivers/media/platform/vicodec/vicodec-core.c |  2 +-
 4 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
index 3e9391fec5fe..5750e21f16ac 100644
--- a/drivers/media/platform/vicodec/codec-fwht.h
+++ b/drivers/media/platform/vicodec/codec-fwht.h
@@ -106,7 +106,9 @@ struct fwht_raw_frame {
 	unsigned int height_div;
 	unsigned int luma_step;
 	unsigned int chroma_step;
-	u8 *luma, *cb, *cr;
+	unsigned int alpha_step;
+	unsigned int components_num;
+	u8 *luma, *cb, *cr, *alpha;
 };
 
 #define FWHT_FRAME_PCODED	BIT(0)
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
index e5b68fb38aac..64ad01e99bad 100644
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
@@ -70,6 +71,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
 	rf.height_div = info->height_div;
 	rf.luma_step = info->luma_step;
 	rf.chroma_step = info->chroma_step;
+	rf.alpha_step = 0;
+	rf.alpha = NULL;
+	rf.components_num = info->components_num;
 
 	switch (info->id) {
 	case V4L2_PIX_FMT_YUV420:
diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.h b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
index 162465b78067..aa73d18d69dd 100644
--- a/drivers/media/platform/vicodec/codec-v4l2-fwht.h
+++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
@@ -18,6 +18,7 @@ struct v4l2_fwht_pixfmt_info {
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


