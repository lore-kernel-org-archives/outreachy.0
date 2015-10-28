X-GM-THRID: 6210650684709142528
X-Received: by 10.182.143.65 with SMTP id sc1mr19809469obb.15.1446029837150;
        Wed, 28 Oct 2015 03:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.134 with SMTP id w6ls1534116igl.33.canary; Wed, 28 Oct
 2015 03:57:16 -0700 (PDT)
X-Received: by 10.50.20.227 with SMTP id q3mr1636662ige.11.1446029836576;
        Wed, 28 Oct 2015 03:57:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si4828337pac.2.2015.10.28.03.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id la5so4118147pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 03:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NIo7L9Hnz34hGxhawVCUER/1DfAzjNPqlmO0XfC1VZ8=;
        b=YAwQ9H5nbwkHCykMbdnfMvpoo8oMTYJ1MEO2goW2/ARccrH5vlc5Prpu1WBJUmyms/
         D0XgWEChcnhC1mw4KlW8LmUyPzSS0AwoPTND6bY9TSWJwcFMz99LLYdsdKy7yWX2kppX
         8qPafgoh2Uqj3cQobtSeD+TV0WiFxTgD7/aDyEqr6n6+qW1tuNg+Djz0h/BkMfmszEzr
         rBvtgecO2ggmdQUQ44SBjK+JaYHfMc8arBGycEpL8xZD5heaFQvfUXwLet0anM9Gmgyk
         z1BR28OERfDfBHwkCuO3x3w1CGsbNnD0yyN1gkZMCiEGJ/PEOegbIoghFJYiymQrdeJ+
         inNg==
X-Received: by 10.68.143.98 with SMTP id sd2mr1036255pbb.70.1446029836449;
        Wed, 28 Oct 2015 03:57:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ix1sm44777001pbd.40.2015.10.28.03.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:57:15 -0700 (PDT)
Date: Wed, 28 Oct 2015 16:27:09 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: wilc1000: linux_wlan_sdio: Drop unnecessary
 wrapper functions
Message-ID: <16ce4db27490fbed8cbe035c6bf7bc6993b19c80.1446029550.git.shivanib134@gmail.com>
References: <cover.1446029550.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446029550.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the functions linux_sdio_get_speed(), linux_sdio_set_max_speed()
and linux_sdio_set_default_speed(). Replace their calls with appropriate
functions. Also, definitions associated with these functions should be removed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan_sdio.c | 42 +++---------------------------
 1 file changed, 4 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
index 1f8d874..d58baf2 100644
--- a/drivers/staging/wilc1000/linux_wlan_sdio.c
+++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
@@ -1,26 +1,12 @@
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
 
-#if defined(CUSTOMER_PLATFORM)
-/* TODO : User have to stable bus clock as user's environment. */
- #ifdef MAX_BUS_SPEED
- #define MAX_SPEED MAX_BUS_SPEED
- #else
- #define MAX_SPEED 50000000
- #endif
-#else
- #define MAX_SPEED (6 * 1000000) /* Max 50M */
-#endif
-
 struct wilc_sdio {
 	struct sdio_func *func;
 	struct wilc *wilc;
@@ -104,7 +90,6 @@ int linux_sdio_cmd53(sdio_cmd53_t *cmd)
 
 	sdio_release_host(func);
 
-
 	if (ret < 0) {
 		PRINT_ER("wilc_sdio_cmd53..failed, err(%d)\n", ret);
 		return 0;
@@ -206,11 +191,6 @@ static int linux_sdio_set_speed(int speed)
 	return 1;
 }
 
-static int linux_sdio_get_speed(void)
-{
-	return local_sdio_func->card->host->ios.clock;
-}
-
 int linux_sdio_init(void *pv)
 {
 
@@ -219,30 +199,16 @@ int linux_sdio_init(void *pv)
 	 **/
 
 
-	sdio_default_speed = linux_sdio_get_speed();
+	sdio_default_speed = local_sdio_func->card->host->ios.clock;
 	return 1;
 }
 
 void linux_sdio_deinit(void *pv)
 {
-
-	/**
-	 *      TODO :
-	 **/
-
+       /**
+        *      TODO :
+        **/
 
 	sdio_unregister_driver(&wilc_bus);
 }
 
-int linux_sdio_set_max_speed(void)
-{
-	return linux_sdio_set_speed(MAX_SPEED);
-}
-
-int linux_sdio_set_default_speed(void)
-{
-	return linux_sdio_set_speed(sdio_default_speed);
-}
-
-
-
-- 
2.1.0


