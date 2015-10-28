X-GM-THRID: 6210663897171492864
X-Received: by 10.68.216.39 with SMTP id on7mr25007130pbc.12.1446032953169;
        Wed, 28 Oct 2015 04:49:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.139 with SMTP id j133ls1056099ioe.50.gmail; Wed, 28
 Oct 2015 04:49:12 -0700 (PDT)
X-Received: by 10.50.129.103 with SMTP id nv7mr1839992igb.3.1446032952895;
        Wed, 28 Oct 2015 04:49:12 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id sm2si3416536pab.0.2015.10.28.04.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id la5so5399529pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 04:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GeYkm8G+FvvkuwijjOm8xO6Y4kVSYY8n5nK+Byu9QII=;
        b=L/r9SvPnANV/bPQam7VvESldqPPiHu7i9LyFzBKRCJXrckYeYHuLvhTuFF9qQ3p3xB
         tEuGfpqgi1JLXWpUw8+PgJ7P/XPCbhYHSwLdbPwVUG3z9Qam7VoBKIlYXy2ohEXjP40J
         E4IfGFFapBfNhkZnGzKvGjQpKQbfpC6b6vReAkdOosMiPa+ShJ6INHbMIes3exaNAeq+
         v5CnVTEDA0QlEUTQO2NU7fGDgqkmaDDLp7qcZuOpLmMTg6PLWYeiHi5wDdGiP1/fHCMQ
         58W8ObH222u395ZKmHu54eGwVrHkIV5ifDcIPdaIJohfU1yASIAsUmpLntynnZzskg9i
         Ejnw==
X-Received: by 10.67.5.193 with SMTP id co1mr36734239pad.134.1446032952785;
        Wed, 28 Oct 2015 04:49:12 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ea5sm31754758pbc.92.2015.10.28.04.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:49:11 -0700 (PDT)
Date: Wed, 28 Oct 2015 17:19:04 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: wilc1000: linux_wlan: Replace function calls
Message-ID: <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
References: <cover.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446032441.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace calls to wrapper functions with the actual functions called by
wrapper functions. Definitions needed to make those calls should also be added.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        -Break the patch 1/2 of v1 into two for clarity

 drivers/staging/wilc1000/linux_wlan.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 9f899da..fbc3584 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -45,6 +45,17 @@
  #define _linux_wlan_device_removal()		{}
 #endif
 
+#if defined(CUSTOMER_PLATFORM)
+/* TODO : User have to stable bus clock as user's environment. */
+#ifdef MAX_BUS_SPEED
+#define MAX_SPEED MAX_BUS_SPEED
+#else
+#define MAX_SPEED 50000000
+#endif
+#else
+#define MAX_SPEED (6 * 1000000) /* Max 50M */
+#endif
+
 extern bool g_obtainingIP;
 extern u16 Set_machw_change_vir_if(bool bValue);
 extern void resolve_disconnect_aberration(void *drvHandler);
@@ -976,8 +987,8 @@ void linux_to_wlan(wilc_wlan_inp_t *nwi, struct wilc *nic)
 	nwi->io_func.io_deinit = linux_sdio_deinit;
 	nwi->io_func.u.sdio.sdio_cmd52 = linux_sdio_cmd52;
 	nwi->io_func.u.sdio.sdio_cmd53 = linux_sdio_cmd53;
-	nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_max_speed;
-	nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_default_speed;
+	nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);
+	nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_speed(sdio_default_speed);
 #else
 	nwi->io_func.io_type = HIF_SPI;
 	nwi->io_func.io_init = linux_spi_init;
-- 
2.1.0


