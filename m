X-GM-THRID: 6210650684709142528
X-Received: by 10.66.136.40 with SMTP id px8mr40211952pab.11.1446029872246;
        Wed, 28 Oct 2015 03:57:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.180 with SMTP id h49ls4577528qgd.88.gmail; Wed, 28 Oct
 2015 03:57:50 -0700 (PDT)
X-Received: by 10.129.56.7 with SMTP id f7mr37867869ywa.52.1446029870552;
        Wed, 28 Oct 2015 03:57:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si4710046pbc.1.2015.10.28.03.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so4108820pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 03:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+vEvnbnFoMKeOUOe2O+i8s162Qsb9qKAI/5Mjt7JvoM=;
        b=tcWPBusPJzIooAxhv6pmqmeHodr3KUNpla85PHLhAqUe47wezlOYFZXUMkyIPgyHVk
         S572m4WsxO2Vjk+ooaJgRzcjMbG/3bXOcaJe7kkHgK9Jxd7oiG1gHt6vsDKu5GK8z5Vi
         u3AzE8/Fr12f92lm1R3wDAsG1MKPZYCjUS5g7miKSJ8T4eS1Fj4q4vItYi5vgGVrHhiI
         O7DBgoyziVpA3aSdwpZHJxVsfAvztMSol375DMF6UIRdmuO109txtJBFiH52PCbcaytJ
         dp82CswZADGEdtLqFhUh9zPh1N3BHOEYKV6DPax/gch+oHLxGatSOpx2IwFJJRNrs2M1
         8+/g==
X-Received: by 10.66.218.230 with SMTP id pj6mr34130822pac.104.1446029870426;
        Wed, 28 Oct 2015 03:57:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id po4sm44770350pbb.64.2015.10.28.03.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:57:49 -0700 (PDT)
Date: Wed, 28 Oct 2015 16:27:41 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: wilc1000: linux_wlan: Replace function calls
Message-ID: <6a23f9ff228a89d4cd1a7a5211b4e2d90b8731a2.1446029550.git.shivanib134@gmail.com>
References: <cover.1446029550.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446029550.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace calls to wrapper functions with the actual functions called by wrapper
functions. Definitions needed to make those calls should also be added.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
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


