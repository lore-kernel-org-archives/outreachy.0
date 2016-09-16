X-GM-THRID: 6330925606572654592
X-Received: by 10.36.69.17 with SMTP id y17mr107622ita.21.1474033976654;
        Fri, 16 Sep 2016 06:52:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.5 with SMTP id b5ls1105062iti.3.gmail; Fri, 16 Sep 2016
 06:52:56 -0700 (PDT)
X-Received: by 10.66.147.34 with SMTP id th2mr10570667pab.24.1474033976220;
        Fri, 16 Sep 2016 06:52:56 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c3si735894ith.1.2016.09.16.06.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so1013888pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hf99a/xO9qivVVWP8h35ha8rLx6zynWhFhmMC20j6YM=;
        b=U4bN8viSIB0Ts3VZ4ZvTqnZwGKHkJQvLYA3iXhGcwEXIl6SidSG0YMvF9MyEOnodXJ
         B+6N+26Mq0ZSvtwOPa8oS65syk91eRrG5SeboWJs4TsH0/E2pxXIJ8UFvgugAuwYm6zd
         NjMqjrQ5mOsMGiCFWLQOhxvjepmirnZD9W8SXGzRTOqltbR7CcoKjEc1JkVK7gDO/n54
         pqagE/aaJhufMzed8/G47bAJ2/XV/f++fRUkDGKPWP8Zh3/0uHJFdTFBProOtRwjLKQw
         /ZVti72FWzNwll2FfJagOYcvw5XBlWkxsLOI0NFR7zOrExSsT4deXiPt1XIKYFg49zqY
         mTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hf99a/xO9qivVVWP8h35ha8rLx6zynWhFhmMC20j6YM=;
        b=Q45s3mMNDfeEoiCm7WBvb1MoAPch2Bs/0Q7qc5cMIy98onPWYcJhnBS8UwJxyFyiGW
         zvRD56FvaBk3QH0b4qPMd69TJDr+DNCf+ptkXnwoJoFojPB+uX3V8J7tAeqlDiHGcyjr
         xoO0Oa51PkKpFFeBlrYRUzU9On3dQWYglpS/orC55p1B9trsyti1ij/I5OT1tZ8nm4L9
         6xiv3G9eFzOHVDwYTq9Ri7u3ak5dqU4agvnVscFZ3z+NXLUgaW9Q6kMpI/G9iTRheGCu
         GthwRzqzU6QQ/Bz7xfXco6tNg3sVyDs2TjXtaku2OwT0E2cpOgMY8zEwiXyBvcmFwAH8
         S1Jw==
X-Gm-Message-State: AE9vXwNgknSFzoWYZ+cKnmzT54PLdgT61iyu/pzrzB5hqC8CQX4M7hrCnMYaiRF61c0qrw==
X-Received: by 10.98.17.83 with SMTP id z80mr23114973pfi.38.1474033975983;
        Fri, 16 Sep 2016 06:52:55 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id si8sm12639354pab.8.2016.09.16.06.52.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:52:55 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:22:43 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 6/6] staging: ks7010: Remove extra round braces around
 expressions/variables
Message-ID: <15f6aef2fb1ca258a8c132f808fbe2ce1c026cd1.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes excess round braces around expressions/variables.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 489291b..767b04b 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -537,7 +537,7 @@ static void ks7010_rw_function(struct work_struct *work)
 
 	if (rw_data & RSIZE_MASK) {	/* Read schedule */
 		ks_wlan_hw_rx((void *)priv,
-			      (uint16_t)(((rw_data & RSIZE_MASK) << 4)));
+			      (uint16_t)((rw_data & RSIZE_MASK) << 4));
 	}
 	if ((rw_data & WSTATUS_MASK))
 		tx_device_task((void *)priv);
@@ -609,7 +609,7 @@ static void ks_sdio_interrupt(struct sdio_func *func)
 			rsize = rw_data & RSIZE_MASK;
 			if (rsize) {	/* Read schedule */
 				ks_wlan_hw_rx((void *)priv,
-					      (uint16_t)(((rsize) << 4)));
+					      (uint16_t)(rsize << 4));
 			}
 			if (rw_data & WSTATUS_MASK) {
 #if 0
-- 
2.7.4


