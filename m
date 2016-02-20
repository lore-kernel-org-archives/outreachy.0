X-GM-THRID: 6252682956300615680
X-Received: by 10.50.109.136 with SMTP id hs8mr2551679igb.12.1455982300289;
        Sat, 20 Feb 2016 07:31:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.66 with SMTP id lq2ls190849igb.26.canary; Sat, 20 Feb
 2016 07:31:39 -0800 (PST)
X-Received: by 10.67.5.233 with SMTP id cp9mr17130802pad.43.1455982299657;
        Sat, 20 Feb 2016 07:31:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id yd9si2223382pab.1.2016.02.20.07.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 07:31:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so67799102pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 07:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=x7bVlgjZC9+oSi58lElWNYQfqTq31mutxFbYfdSJSXg=;
        b=Mr2n24GvzGdcDB2b6lpM5Ehufn5Vbn/BUPdXSFdWS10KjTlsU2r6jbF1LNXMqK6ubV
         gK+5gvQLZiawExcbAisvs5syvyk+vhppA1y5Cj5Ae6qdhQvGpNcmzTPu34ubEbDKoJKI
         boFHZ6YJ5M2wu7aeN/OFQBa4Dy54WyGME2nlWzvwJRWqGsO8bKV3xtQCb6zWERWHryu8
         i95Iz4XGZW9JwOAGp2yu8xkEzNUfxKj1uB7SNWXqqGHD02P/fi8wqVtec1Nz/yQkunoI
         y+O5Hb0k5KUlZdf61NABn9gP6LLcOSo3Vkj65pzLxVkbrhfw0I6mDj0fc6CSTPswU5xL
         vJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=x7bVlgjZC9+oSi58lElWNYQfqTq31mutxFbYfdSJSXg=;
        b=Dht/3ONAzIg6WbuNLM2tXoH5wuWX72iVcmce4z/FDayco1Mg9s3/hmSFxBm+MDpiYI
         BgJGATKHRZo4XSoGDehMXN4vtQ5AT+f5JznzKvOgjngHyso4Cx5ppfsNO8OecRbU7wUk
         +IwlV1fyk0ACAHy9ul/oqBw9YgJ4gdX3BStRwYFUtq3LvVZ3yk1/acxphEl+HvCKZAeD
         DcYWg+mc4nZ/H3/ZQCT9jUjha7AdVrLQvR4YZL4SE5tZwxUrxjpuOjowMfNJXbiwOt8r
         pDjc7P7HiKmMdzPUrofJpzkRFx5lQVXz94xslGKrcEe/KcpvxEhKlCW2gMeEr55zLqzZ
         45eQ==
X-Gm-Message-State: AG10YORQD8icy+SXBZOnRcwuzOPz5hbmoN6aJqI6yPymY+sPcYQHVl2/xsrimq6okfQXrQ==
X-Received: by 10.98.66.81 with SMTP id p78mr26147392pfa.43.1455982299508;
        Sat, 20 Feb 2016 07:31:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.177.252])
        by smtp.gmail.com with ESMTPSA id 79sm25291149pfq.65.2016.02.20.07.31.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 07:31:38 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 20 Feb 2016 21:01:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: wilc1000: Remove and rename struct typedefs from .c files
Date: Sat, 20 Feb 2016 21:01:25 +0530
Message-Id: <1455982285-17907-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>
References: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedefs from structures wilc_sdio_t, 
wilc_spi_t and wilc_mac_cfg_t. Also remove '_t' suffix from the names.

The following semantic patch detects cases:

@tn1@
type td;
@@

typedef struct { ... } td;

@script:python tf@
td << tn1.td;
tdres;
@@
coccinelle.tdres = td;

@@ type tn1.td;
identifier tf.tdres;
@@
-typedef
 struct
+ tdres
  { ... }
-td
  ;
@@ type tn1.td;
identifier tf.tdres;
@@
-td
+ struct tdres

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Remove '_t' suffix from the struct names.

 drivers/staging/wilc1000/wilc_sdio.c     |  8 ++++----
 drivers/staging/wilc1000/wilc_spi.c      |  8 ++++----
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 10 +++++-----
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
index 963875af..029bd09 100644
--- a/drivers/staging/wilc1000/wilc_sdio.c
+++ b/drivers/staging/wilc1000/wilc_sdio.c
@@ -30,15 +30,15 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
 
 #define WILC_SDIO_BLOCK_SIZE 512
 
-typedef struct {
+struct wilc_sdio {
 	bool irq_gpio;
 	u32 block_size;
 	int nint;
 #define MAX_NUN_INT_THRPT_ENH2 (5) /* Max num interrupts allowed in registers 0xf7, 0xf8 */
 	int has_thrpt_enh3;
-} wilc_sdio_t;
+};
 
-static wilc_sdio_t g_sdio;
+static struct wilc_sdio g_sdio;
 
 static int sdio_write_reg(struct wilc *wilc, u32 addr, u32 data);
 static int sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data);
@@ -675,7 +675,7 @@ static int sdio_init(struct wilc *wilc, bool resume)
 	u32 chipid;
 
 	if (!resume) {
-		memset(&g_sdio, 0, sizeof(wilc_sdio_t));
+		memset(&g_sdio, 0, sizeof(struct wilc_sdio));
 		g_sdio.irq_gpio = wilc->dev_irq_num;
 	}
 
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 2928712..6a69b04 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -24,13 +24,13 @@
 #include "wilc_wlan.h"
 #include "wilc_wfi_netdevice.h"
 
-typedef struct {
+struct wilc_spi {
 	int crc_off;
 	int nint;
 	int has_thrpt_enh;
-} wilc_spi_t;
+};
 
-static wilc_spi_t g_spi;
+static struct wilc_spi g_spi;
 
 static int wilc_spi_read(struct wilc *wilc, u32, u8 *, u32);
 static int wilc_spi_write(struct wilc *wilc, u32, u8 *, u32);
@@ -867,7 +867,7 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		return 1;
 	}
 
-	memset(&g_spi, 0, sizeof(wilc_spi_t));
+	memset(&g_spi, 0, sizeof(struct wilc_spi));
 
 	/**
 	 *      configure protocol
diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 9dab247..56455f4 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -19,7 +19,7 @@
  *
  ********************************************/
 
-typedef struct {
+struct wilc_mac_cfg {
 	wilc_debug_func dPrint;
 
 	int mac_status;
@@ -40,9 +40,9 @@ typedef struct {
 	u8 firmware_info[8];
 	u8 scan_result[256];
 	u8 scan_result1[256];
-} wilc_mac_cfg_t;
+};
 
-static wilc_mac_cfg_t g_mac;
+static struct wilc_mac_cfg g_mac;
 
 static struct wilc_cfg_byte g_cfg_byte[] = {
 	{WID_BSS_TYPE, 0},
@@ -349,7 +349,7 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 
 static int wilc_wlan_parse_info_frame(u8 *info, int size)
 {
-	wilc_mac_cfg_t *pd = &g_mac;
+	struct wilc_mac_cfg *pd = &g_mac;
 	u32 wid, len;
 	int type = WILC_CFG_RSP_STATUS;
 
@@ -539,7 +539,7 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
 
 int wilc_wlan_cfg_init(wilc_debug_func func)
 {
-	memset((void *)&g_mac, 0, sizeof(wilc_mac_cfg_t));
+	memset((void *)&g_mac, 0, sizeof(struct wilc_mac_cfg));
 	g_mac.dPrint = func;
 	return 1;
 }
-- 
1.9.1


