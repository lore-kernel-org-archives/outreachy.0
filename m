X-GM-THRID: 6949552680450654208
X-Received: by 2002:a25:a42a:: with SMTP id f39mr26413543ybi.414.1618068838173;
        Sat, 10 Apr 2021 08:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls1849247ybk.11.gmail; Sat, 10 Apr
 2021 08:33:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzgjLQQ5e3pDb6I8tXszFiIRYkVaFs6QIw3ovq5n/MeaUYv0MoModTp4F3flP8uPMaR/DN0
X-Received: by 2002:a25:b746:: with SMTP id e6mr11291226ybm.187.1618068837249;
        Sat, 10 Apr 2021 08:33:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618068837; cv=none;
        d=google.com; s=arc-20160816;
        b=cgcSLAHe1en7l9PRSzOhQ7OEF916F2/ywsDi4/yeyNByYtOjN0glj3ORV3t/WC8pnX
         z0O1tQsV2iabugBeJ9TrZzUeFj3haU+c4YimYewUxDr9/GiKV8jMwro6a796qHjFyxXr
         wu5PTyHN6dglcALqFnsr75pNS48x88bO1rdegkgDkig/Nbgav6KskXmPkxjInsjElZAW
         dgTapebZYLD0Cg4bZZ1E7PEtrno10ZRogci9hECnbD0TIEE/FU25PFFuSxpp4FqpWNRX
         QdeCK/xqrIOqPq9lE3NMQv8xd8jdvAH3dZw6XbiKcwagmyDjOTRzjGharvImcCqvJD0G
         XynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b5BqcJY31tpHgoOIg8xmOV3jrrzgv1cy4FkuM4zTOiQ=;
        b=oPFl3oDOJYt60RDU7kHABD8Mgh1UEt7fUTtqARhiRj8jSvkHAvx4Q9lkT5pMh4XMWE
         V7LACSyFh4E4+KmPRw1DzsTUvIgoyAwoFyGvS77DqXUtCyynxtFhi0KR64gy7rdz9bQk
         KTLBM1zHlNlwLgIcjLrNIVYulkp5gk1gTkxEZrfVL621YbGUBzlzT5HZVrfU4f5quZ3E
         /FnkjStvKPfQ3RidysUPFDFvPX5cP32UmbaTUDX3szRc2DhWVdsiWzj80Yy1XuAX1R+A
         d8zLO8BzpVA8zNwegDEZGWqVWtFJXs6RXe17r4aJRL0WLd8/pK7kByAxRc+XLxpm9vc/
         QQdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUxl1BF1;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id q185si245760ybc.1.2021.04.10.08.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUxl1BF1;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102e.google.com with SMTP id mj7-20020a17090b3687b029014d162a65b6so6462329pjb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=b5BqcJY31tpHgoOIg8xmOV3jrrzgv1cy4FkuM4zTOiQ=;
        b=CUxl1BF1GCsbKQS2vXYRlSRgpS/eHacg7Tqw/G4m7NgoJ1iTA612mVny8XU+gKX6R8
         M9cGzIl2svhO3e3mNJlOoFoPHrhRGGtTiDkbbooD48SToLnNm3GXePocG2Mz+8lfXZTT
         sO8WKMGa6tNuw5daAAyfU+q21luJc5zr3bSZLHr3mIAgLMF6vs063Ktby2jM3v2INwdR
         ck+7A82+KDcOyui26cURoKcWXEb2M6FD0zlcOGO2JbG2prgKTZAfZ2ILRjvmnXhQPxRt
         BW8UGGz/UcmEp7vgDIcu9KS5c1Of7DApPFB8csg7PS0QKFkNxqb3ALRpLsggVZSSPJ/B
         zCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=b5BqcJY31tpHgoOIg8xmOV3jrrzgv1cy4FkuM4zTOiQ=;
        b=Tit3ewNn5DUig4DjxIT9nKoZFdQXzjgKyulIYjORZOeBY08bkzecwagmtYhR02Y4jg
         L0sro2LpZesza8uACDATAePM5psR7XnNUCsMPO5OQC4T24YiKs1Aaq9WuX/MkaqFhnN3
         WFzBIB+fNBqOY+BgKqGdcgVBzLQSEPmjyH6cVcrUR+ts19IzW07ZC/Db6yt+fkHm7MMP
         T2pdpgnfbI+hCQOMhvEJU5TlXPttGW2hdxrnzCorSqpAJ6VlpbrH+RLyX6V41JzSxJa8
         zTkF8/MvYPsN/XJcuSZSbVjR15HOw2FIOJCOGCUaoqjtTogI1/sry7/mm2JeHx0u+8ET
         2ZsQ==
X-Gm-Message-State: AOAM531O0OYWQHU6EqrFty8grHwZ9Po/Q/WowcnGcLAd2r6ml9VFJkn5
	vtGg63bdK808AQXAlx9/rDM=
X-Received: by 2002:a17:90a:5884:: with SMTP id j4mr19999635pji.33.1618068836506;
        Sat, 10 Apr 2021 08:33:56 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id w13sm1005111pfn.219.2021.04.10.08.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:33:56 -0700 (PDT)
Date: Sat, 10 Apr 2021 21:03:48 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 1/2] media: zoran: add spaces around '<<'
Message-ID: <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1618066787.git.mitaliborkar810@gmail.com>
References: <cover.1618066787.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618066787.git.mitaliborkar810@gmail.com>

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v2:- No changes. 
Changes from v1:- NO changes.

 drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
index 71b651add35a..a2a75fd9f535 100644
--- a/drivers/staging/media/zoran/zr36057.h
+++ b/drivers/staging/media/zoran/zr36057.h
@@ -30,13 +30,13 @@
 #define ZR36057_VFESPFR_HOR_DCM          14
 #define ZR36057_VFESPFR_VER_DCM          8
 #define ZR36057_VFESPFR_DISP_MODE        6
-#define ZR36057_VFESPFR_YUV422          (0<<3)
-#define ZR36057_VFESPFR_RGB888          (1<<3)
-#define ZR36057_VFESPFR_RGB565          (2<<3)
-#define ZR36057_VFESPFR_RGB555          (3<<3)
-#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
-#define ZR36057_VFESPFR_PACK24          (1<<1)
-#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
+#define ZR36057_VFESPFR_YUV422          (0 << 3)
+#define ZR36057_VFESPFR_RGB888          (1 << 3)
+#define ZR36057_VFESPFR_RGB565          (2 << 3)
+#define ZR36057_VFESPFR_RGB555          (3 << 3)
+#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
+#define ZR36057_VFESPFR_PACK24          (1 << 1)
+#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
 
 #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
 
-- 
2.30.2


