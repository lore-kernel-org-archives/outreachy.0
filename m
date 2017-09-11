X-GM-THRID: 6464558532911955968
X-Received: by 10.176.1.142 with SMTP id 14mr6456622ual.63.1505147324378;
        Mon, 11 Sep 2017 09:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.73 with SMTP id h70ls4585036iod.49.gmail; Mon, 11 Sep
 2017 09:28:43 -0700 (PDT)
X-Received: by 10.176.71.238 with SMTP id w46mr8221606uac.30.1505147323555;
        Mon, 11 Sep 2017 09:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147323; cv=none;
        d=google.com; s=arc-20160816;
        b=D0NluGQMydxhAF2QnxtrGOWv41Xyny41kxNMFTzouVKbXmOISS81fdweP5wMb5k4B7
         M+/UzONfWkIvtDk+j8bQZe+NJu6OqMNC5PT6zyApo//GxNnEIY3KoQXbSsc0Qqz8GnaO
         BNhTcadirfJlp8aeqzy/8BeVBhzNYXtw4bhV3dAkDSzwES2gJ0n+Wir8UGrkMvHOc3nE
         cE2DHs/pM+XYNPFEo3puISjOyOTXuGWgZGeU5vRcQ6ZIJmt3cD7coN9UGqIhTOipxxMt
         zflhexOu1LvxKtkJaIrjPiZKVkx6Jl1JJXpVy/Sedirr93ZFGSW6bl0AfFg3mfxQXPWn
         m4Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=DRHu00pc60rnjyqOU06jhHtlAVUZKZV4CHiYU6pARwI=;
        b=N4SwMtjGYyd972pj+I6I7HRa9xfTbq/7y/NJUB7BE0cAgYB69kSg3dxEM1+pa0YZEX
         vbn5vDqR+hrX0cmZ8MVnYWnep7sn1GwcXOX0yq3eYT79WRiGZE7Te3eEqt4w/naC4JXB
         bsGl9oPgdb9Hn6kq8tTivNLA+5W/GwUck0o0mcLwOOVRXLQJJFPqmntlXSIvBkFn7c9f
         9RrsJ9A+Dtf/cPJfpU7n5zZsh3l/AnBjLKFMiCO/+rhv88azsk9BGmrjOvTJAavQyQVH
         Cc33/AOYZ1kOBMLjVlL7l0hCcJLNbL+BjNgl7SHeZlgSlRUXuLzSqY0E/vZqq+6tGcTq
         fyRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWYrjNcN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c200si61513pfb.14.2017.09.11.09.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWYrjNcN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so309920pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DRHu00pc60rnjyqOU06jhHtlAVUZKZV4CHiYU6pARwI=;
        b=MWYrjNcNtVW5FNtyKIVrYnoe07Bk1m/7JWne1Cj4BzuNDWObyQysJPXJKyKn2f5UoX
         4jcfaK9mLYZ+YPaQnFb139GKRQh4NLCbkZY1aQmkw9ujjR/iov9zCZVKsN04hjsS3bMV
         JtPHcDhDZR0eo3FWDp3i1Qp5NPR90wyzhBQXGrV0auIqtMHlxPL/kB1KMR89ffEMqS/R
         PrOAs9a1ATpMuWPk2amSf2//tKe+Gs72Fr0XC4mi47dDj/rI+HQ/GHN2Hh6G7FkZ6atR
         x77DHZEf1FPwwu4hCyHA1iYJ0jYkCXvn6BKV3d+bnVP4S4S575ZJvZcYMvr6JkT6Ydkm
         0dNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DRHu00pc60rnjyqOU06jhHtlAVUZKZV4CHiYU6pARwI=;
        b=HS4IPI0SW21Jswoyyobzh6lQZ6WpubeW4nwKhE75qv/Mua4vF3rXW9owSEgv8uKI1q
         xHXIGGhADyNfLAtjeacoKtqOfXLJs4gV2khOC0j25swFtcQD/+XeQRRmlM50Pjl9zVfW
         JyOBCxClDVf2lqfOsi5n3HSm/sGPhXZpfgJUYdNJWX4mDroXhNuyhaG7F8qwt07qxEVG
         4mJc90buqlDjgADH7M9WZPwA2b4PgSdDGTaWas/vXY5kc2YOKe0KRA83frIKWJJd1ZFR
         3cTfxG483D8InibvdmJ37+Yb3nlBOonL0v0OOriJFfoDH9jBK4HvcY6hPOriexsO4O7r
         VyTw==
X-Gm-Message-State: AHPjjUj1OAKRYZcTcLfOo2DTh1cikl4YQTUYEPg/u3Vkeme6TzhRjqHq
	xhRqrGbS75eQIg==
X-Google-Smtp-Source: ADKCNb6QeG4dlKVGBzvj+JGKkh6/YDOcZQpx1CD4OCpGLVeL23x12ISBnPTl59/Ky3CIqj386nXUHQ==
X-Received: by 10.84.175.195 with SMTP id t61mr14005471plb.206.1505147323239;
        Mon, 11 Sep 2017 09:28:43 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.5.9])
        by smtp.gmail.com with ESMTPSA id e78sm15159260pfh.76.2017.09.11.09.28.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 09:28:42 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: Remove unused variable monitor_lock
Date: Mon, 11 Sep 2017 21:58:37 +0530
Message-Id: <1505147317-13411-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove the variable monitor_lock as it is not used anywhere.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 -The variable that was not to be declared as volatile can be
  eliminated as it is not being used anywhere.

 drivers/staging/ccree/ssi_request_mgr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
index e5c2f92..b94a91f 100644
--- a/drivers/staging/ccree/ssi_request_mgr.c
+++ b/drivers/staging/ccree/ssi_request_mgr.c
@@ -49,7 +49,6 @@ struct ssi_request_mgr_handle {
 	dma_addr_t dummy_comp_buff_dma;
 	struct cc_hw_desc monitor_desc;

-	volatile unsigned long monitor_lock;
 #ifdef COMP_IN_WQ
 	struct workqueue_struct *workq;
 	struct delayed_work compwork;
--
2.7.4


