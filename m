X-GM-THRID: 6331768808573763584
X-Received: by 10.129.106.139 with SMTP id f133mr18620033ywc.56.1474481891995;
        Wed, 21 Sep 2016 11:18:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2779976otj.21.gmail; Wed, 21 Sep
 2016 11:18:11 -0700 (PDT)
X-Received: by 10.129.123.197 with SMTP id w188mr8599428ywc.111.1474481891628;
        Wed, 21 Sep 2016 11:18:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si7683748pab.2.2016.09.21.11.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hi10so2581160pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 11:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hkSuq5LcGcZD6dDb/6/UPmlU/zufmFqJ1h1o1XwvFQ8=;
        b=a9ALzSmPwXHaoCdPc8PG+5kozQia3E1A6f9nRH1WJWvA8M9OEkcX7AjsJTbHt9e6Du
         +0KBu/ANOcp9uzDoJtSg9TAVmamiwF2FgHj3Axp5qIvz6OJsIVJsTQS7JD6p8R2wsvjV
         JU5EzwWh01auqwGf5j0SVb8GBiZs/y4vsqIvC9y5VXJYWhbaMQ+V02PNfDgjIPwMJfOa
         Yhk/JRRYfxINDOQiTjYUjHE7WoEVFmC3qaDwbfJQEppj8TzQp4cTaTDJaJiDkvwWpp0x
         QvDimvUKa9ygsvACvcGRaNwt5wthLfjcuR46fDH64GjciKqQYgLfeO7b8tjKcYKbyWDA
         PCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hkSuq5LcGcZD6dDb/6/UPmlU/zufmFqJ1h1o1XwvFQ8=;
        b=irChUIBirjbChJgWmJRoM7u4EbpWxZNiUrfbKLjCLJ/cMSf4AwFx04zy2xGbp5M6NC
         Rlks0X0OuDjcmL0OpqVmBGUTq4yaSo+ZuUuXmMq/F7HgRSnv+R6cJXG6XyRBaIOsVU2T
         UAYDZGzGgg8NTzaFEMOTRVH1qwUnORHSqdv7rRCCZCnXmXcFaLu9zyjjUe+SkoQ6beZT
         9sjYtNZx1f71ffm9Jvqu+OxUEjZqc3+NukH/00285g20u9LLl83fCeTwTIfyFTBO0IBg
         8QkMo/ajaE6/BE+CTx6rlIBIv0rrghI26A5wgPTUCh5ynZiFS/5UqFI9X5t/PEUyZUZa
         3Y9w==
X-Gm-Message-State: AE9vXwN9BaS3tKnK6mKHbYddvI6P/C2KjaYGKhQTmh52gKs2+xRP/443WSN8bLdm9j4xKg==
X-Received: by 10.66.23.69 with SMTP id k5mr67419192paf.144.1474481891127;
        Wed, 21 Sep 2016 11:18:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.252])
        by smtp.gmail.com with ESMTPSA id o123sm30176189pfg.78.2016.09.21.11.18.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:18:10 -0700 (PDT)
Date: Wed, 21 Sep 2016 23:47:55 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: Remove unnecessary variable used to store
 return value
Message-ID: <20160921181755.GA21272@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes an unnecessary variable used to store return values
in order to reduce memory usage.
Done using coccinelle:
@@
type T;
constant C;
identifier ret;
@@
- T ret = C;
... when != ret
return
- ret
+ C
;

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 37a4ba3..b27e9b0 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -171,12 +171,11 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
 
 int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 {
-	int rc = 0;
 	unsigned char rw_data;
 	int retval;
 
 	if (priv->reg.powermgt == POWMGT_ACTIVE_MODE)
-		return rc;
+		return 0;
 
 	if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
 	    (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
@@ -244,7 +243,7 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 		}
 	}
 
-	return rc;
+	return 0;
 }
 
 int ks_wlan_hw_power_save(struct ks_wlan_private *priv)
-- 
2.7.4


