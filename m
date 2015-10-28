X-GM-THRID: 6210663897171492864
X-Received: by 10.50.30.37 with SMTP id p5mr1821254igh.11.1446032934588;
        Wed, 28 Oct 2015 04:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.138 with SMTP id v10ls3940326qgd.5.gmail; Wed, 28 Oct
 2015 04:48:54 -0700 (PDT)
X-Received: by 10.129.72.83 with SMTP id v80mr37619198ywa.11.1446032934034;
        Wed, 28 Oct 2015 04:48:54 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si4880592pbb.2.2015.10.28.04.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so5345982pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 04:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6yC6dY1tGeAyOOcAsytrT+PVM8JEp+vkwFdO22ZAmnE=;
        b=UrKRKPNzEneTaZGgv8epHJmNp0IZhUelTYNIOgkalINQQT5GgQ+KkWeikZqBfluxve
         fm2D4DCANxipL9gZYXOzi/cjU1a7hRU6Ju+IdcnqkRiWV5bKVnbk65GprG4VCcgsUTyQ
         NTc0EJlRfFajsOLVwoO0o+lGchT/GV2OOAfF1r2sS+HZjUohMB5rJBiqJev9bdVLRdCI
         03T4dKzPjplgm/fwoEU/BupPKT1rE0aYuLp43jSQEZUyq2xQHkBpjFwzOJseWB6Brwpv
         WaHK3xzlvlzhUg2bh3pBoJ98h5r7FXbgLLdDacmmF2nyP3wEbPQD7HxXDvnn7qoUw8YK
         CiBw==
X-Received: by 10.66.251.164 with SMTP id zl4mr33695572pac.148.1446032933908;
        Wed, 28 Oct 2015 04:48:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id n1sm29531517pap.7.2015.10.28.04.48.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:48:52 -0700 (PDT)
Date: Wed, 28 Oct 2015 17:18:45 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] Staging: wilc1000: linux_wlan_sdio: Remove
 unnecessary blank lines
Message-ID: <9540a06dabef61b768a6bce4aea353cd2d196923.1446032441.git.shivanib134@gmail.com>
References: <cover.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446032441.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove all the blank lines which were not required to improve the
readability of code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        -Break the patch 1/2 of v1 into two for clarity

 drivers/staging/wilc1000/linux_wlan_sdio.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
index 802ede2..f89744d 100644
--- a/drivers/staging/wilc1000/linux_wlan_sdio.c
+++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
@@ -1,16 +1,12 @@
 #include "wilc_wfi_netdevice.h"
-
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/card.h>
 #include <linux/mmc/sdio_ids.h>
 #include <linux/mmc/sdio.h>
 #include <linux/mmc/host.h>
 
-
-
 #define SDIO_MODALIAS "wilc1000_sdio"
 
-
 struct wilc_sdio {
 	struct sdio_func *func;
 	struct wilc *wilc;
@@ -29,7 +25,6 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
 	{ },
 };
 
-
 static void wilc_sdio_interrupt(struct sdio_func *func)
 {
 #ifndef WILC_SDIO_IRQ_GPIO
@@ -39,7 +34,6 @@ static void wilc_sdio_interrupt(struct sdio_func *func)
 #endif
 }
 
-
 int linux_sdio_cmd52(sdio_cmd52_t *cmd)
 {
 	struct sdio_func *func = g_linux_wlan->wilc_sdio_func;
@@ -71,7 +65,6 @@ int linux_sdio_cmd52(sdio_cmd52_t *cmd)
 	return 1;
 }
 
-
 int linux_sdio_cmd53(sdio_cmd53_t *cmd)
 {
 	struct sdio_func *func = g_linux_wlan->wilc_sdio_func;
@@ -199,12 +192,9 @@ static int linux_sdio_set_speed(int speed)
 
 int linux_sdio_init(void *pv)
 {
-
 	/**
 	 *      TODO :
 	 **/
-
-
 	sdio_default_speed = local_sdio_func->card->host->ios.clock;
 	return 1;
 }
@@ -215,12 +205,5 @@ void linux_sdio_deinit(void *pv)
 	/**
 	 *      TODO :
 	 **/
-
-
 	sdio_unregister_driver(&wilc_bus);
 }
-
-
-
-
-
-- 
2.1.0


