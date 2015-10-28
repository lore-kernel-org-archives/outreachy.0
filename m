X-GM-THRID: 6210663897171492864
X-Received: by 10.66.100.166 with SMTP id ez6mr25483269pab.44.1446032911867;
        Wed, 28 Oct 2015 04:48:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.202 with SMTP id h68ls4782131qgf.63.gmail; Wed, 28 Oct
 2015 04:48:31 -0700 (PDT)
X-Received: by 10.13.225.137 with SMTP id k131mr13090732ywe.37.1446032911391;
        Wed, 28 Oct 2015 04:48:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si4849219pac.2.2015.10.28.04.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:48:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so5352089pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 04:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BSl5CJpDxWptnHFjQpdnDdipPVDm7SFGYnrCjtnUnvE=;
        b=iI8JbJKciBOopVbDn+BBDsLf0oBT4NYJfTWg2pkXLTZNgw+ldALmQjj/QiXZdddAfs
         QuhfvqnJ2n1mDQ4k0Ns4Ip/SHQctrM5mac3RxZCecBEFM0G65QVnAVEWsoUfp6BO60+z
         /ngQyRvfOmFGhazd8h1RQBjWZdv+uYXoQbVGphCFhjlYIPpRG8R1nAuNMwx9A/yg8ChH
         App7oCO4TQ/GqBNSrDbdLWSi4JC5aKL5iuqR2Vl747eMa29sWnDY+WMEdiuJXB1xc4Ra
         pYwJuzBqlTlBRa3NBe2MwRqWm0ywaZv1SB3w+HuvseDCgVQ6zhbPJB9rr8XfKSUMopDr
         Lw9w==
X-Received: by 10.66.248.137 with SMTP id ym9mr34311352pac.157.1446032911179;
        Wed, 28 Oct 2015 04:48:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yq2sm45051424pbb.39.2015.10.28.04.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:48:30 -0700 (PDT)
Date: Wed, 28 Oct 2015 17:18:21 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] Staging: wilc1000: linux_wlan_sdio: Drop unneeded
 wrapper functions
Message-ID: <5a66436fde0503739c5a6e99c6cc5c9c2c2a7cbf.1446032441.git.shivanib134@gmail.com>
References: <cover.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446032441.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the functions linux_sdio_get_speed(), linux_sdio_set_max_speed()
and linux_sdio_set_default_speed(). Replace their calls with appropriate
functions. Also, definitions associated with these functions should be
removed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Break the patch 1/2 of v1 into two for clarity

 drivers/staging/wilc1000/linux_wlan_sdio.c | 24 +-----------------------
 1 file changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
index 1f8d874..802ede2 100644
--- a/drivers/staging/wilc1000/linux_wlan_sdio.c
+++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
@@ -10,16 +10,6 @@
 
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
 
 struct wilc_sdio {
 	struct sdio_func *func;
@@ -206,10 +196,6 @@ static int linux_sdio_set_speed(int speed)
 	return 1;
 }
 
-static int linux_sdio_get_speed(void)
-{
-	return local_sdio_func->card->host->ios.clock;
-}
 
 int linux_sdio_init(void *pv)
 {
@@ -219,7 +205,7 @@ int linux_sdio_init(void *pv)
 	 **/
 
 
-	sdio_default_speed = linux_sdio_get_speed();
+	sdio_default_speed = local_sdio_func->card->host->ios.clock;
 	return 1;
 }
 
@@ -234,15 +220,7 @@ void linux_sdio_deinit(void *pv)
 	sdio_unregister_driver(&wilc_bus);
 }
 
-int linux_sdio_set_max_speed(void)
-{
-	return linux_sdio_set_speed(MAX_SPEED);
-}
 
-int linux_sdio_set_default_speed(void)
-{
-	return linux_sdio_set_speed(sdio_default_speed);
-}
 
 
 
-- 
2.1.0


