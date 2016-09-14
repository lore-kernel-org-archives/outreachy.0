X-GM-THRID: 6330275775734874112
X-Received: by 10.36.95.14 with SMTP id r14mr5289422itb.1.1473882622691;
        Wed, 14 Sep 2016 12:50:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.211.200 with SMTP id n191ls583902itg.12.canary; Wed, 14 Sep
 2016 12:50:21 -0700 (PDT)
X-Received: by 10.36.5.84 with SMTP id 81mr3807127itl.9.1473882621862;
        Wed, 14 Sep 2016 12:50:21 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si1497884pam.0.2016.09.14.12.50.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:50:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so1187670pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nznWGLiDQ/5yur1/DF9vH+pt9nEGNEreU95V23zEw6k=;
        b=ZQcwcP4+b3QAt4SJgAeUFPXFiQbJNy2fz0T8ii7fAWaq+i353Ns6JvjjXndDaqrW+7
         TeDUlAkCu6UPk//cypcOrm8Jfr8cml+SrhBkwf67L3wJMsOIiZDXOAZrwpwzJu/jBbzh
         8WbiGFZdVTD/G2+n2G12Lb1GVQbKynRPGE+uT7Z/WzT5TwoLZHSt+vmFKiNpKP9RoLEa
         sx331JbmeUFV65a4wceXRWYSX1A7ap4X+cwRdB6A6sFkX6ZNfvNDWMErQrUFfFSbtuk4
         AjQr03TprLtpldZaqNoS/2Y6IuKgfNgZkDtyX1DQ/q8oigT5UBjWJFxwefdK/bIYo2do
         sicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nznWGLiDQ/5yur1/DF9vH+pt9nEGNEreU95V23zEw6k=;
        b=H3lHDvj6N9ro/iLemWk8l8/bR40yyBHCSut+fRK4UybaCFelLBOcUOUH2I614zs3T9
         lHRFKznnd+aOwEKd42k22Cb95P/A8sDS5tPLyZuKsekZskQ7GbM+Hgg/n3YXYKXrnlk6
         TvaaJ5j03MdzfXDoj9MQcM0RQ3RNFOoN/NmP7cMOu7LEHcjjeeNXhS9/28MulSzG7AtE
         GjGet/7jRajEEUvR+vSiactcAeH8zx8lUies0H3zByKbzUJSzcL/1xJBxxoEnQ+OFRnu
         F6RsvMRfUiB3tqib6ze20oRD6nlPl3GSM9NGvYIcbd6FDh079OnrMwkNXk70PJm6HnCn
         WCQA==
X-Gm-Message-State: AE9vXwP6/WD4AALwfvqwiRnMyprIzw230DSpanaiDC30xM93xELd+qfAu4CQzH5KsOYtRQ==
X-Received: by 10.98.157.199 with SMTP id a68mr7724606pfk.75.1473882621697;
        Wed, 14 Sep 2016 12:50:21 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id x126sm39968490pfx.61.2016.09.14.12.50.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:50:21 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:20:08 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: ks7010: ks7010_sdio.c: Remove the space after a
 type cast
Message-ID: <6811cb8e9856bf3e5a06637d70e13608894f84b9.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes an unnecessary space after a cast, as detected by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4a918b5..4ad4670 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -544,7 +544,7 @@ static void ks7010_rw_function(struct work_struct *work)
 
 	if (rw_data & RSIZE_MASK) {	/* Read schedule */
 		ks_wlan_hw_rx((void *)priv,
-			      (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
+			      (uint16_t)(((rw_data & RSIZE_MASK) << 4)));
 	}
 	if ((rw_data & WSTATUS_MASK))
 		tx_device_task((void *)priv);
@@ -618,7 +618,7 @@ static void ks_sdio_interrupt(struct sdio_func *func)
 			rsize = rw_data & RSIZE_MASK;
 			if (rsize) {	/* Read schedule */
 				ks_wlan_hw_rx((void *)priv,
-					      (uint16_t) (((rsize) << 4)));
+					      (uint16_t)(((rsize) << 4)));
 			}
 			if (rw_data & WSTATUS_MASK) {
 #if 0
@@ -1169,7 +1169,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 			    cpu_to_le16((uint16_t)
 					(sizeof(*pp) -
 					 sizeof(pp->header.size)));
-			pp->header.event = cpu_to_le16((uint16_t) HIF_STOP_REQ);
+			pp->header.event = cpu_to_le16((uint16_t)HIF_STOP_REQ);
 
 			sdio_claim_host(func);
 			write_to_device(priv, (unsigned char *)pp,
-- 
2.7.4


