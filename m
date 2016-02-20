X-GM-THRID: 6252682956300615680
X-Received: by 10.140.233.69 with SMTP id e66mr14365646qhc.6.1456004544596;
        Sat, 20 Feb 2016 13:42:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls462960iod.50.gmail; Sat, 20 Feb
 2016 13:42:24 -0800 (PST)
X-Received: by 10.66.124.200 with SMTP id mk8mr19044024pab.27.1456004543995;
        Sat, 20 Feb 2016 13:42:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id yd9si2332472pab.1.2016.02.20.13.42.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 13:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ho8so71128978pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 13:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SEVXDofawNB6DFJZGhCPhOw9eEK2hedJ/deHpQ7hh1s=;
        b=yHUUtSADwHQiwyxjf+iIozNa06irPRGYGng2uiG8OXiCbD2kKrIfilEP5ljK447YrK
         5StLbRiD6y+Fqsc89x/O6kEypSQzVBOXmaWs1nkTkJFvQfh5W/TjOpm6BpULJBeEUlVj
         QBgdyeMGVlv0L8pOGIZFYCHwYPeScylJLPEH5P/iFnVBSSQUzraUDqeEAgL+H3cy8xPp
         9hY0XeEo1DpfWSl5vVHvNVx5DFJZYN6nDx6D94LDHduNBjLTrM05A6WKz/HiA18XRZGK
         Y8PeZ+8LgteS4r6yXuQZ0r7bFlLmUX350r2UXT1juQCRXU+ICgm/nOjmacnOVjBdZdmj
         kDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SEVXDofawNB6DFJZGhCPhOw9eEK2hedJ/deHpQ7hh1s=;
        b=Qeish/RLtkXDSkMaSPwmLszDERqXng95BH7835B2UVXwLDtm1z8Sl+jktw835cHsTo
         mGy7cO98csoed3hw9ZY/dVcwcEdE/EhvI3krF8iIsOkb+GAqjrPXccAnSibpoQyMbAKG
         MlpNKlxvoCN0EDZEh6vqN4jp4oq0LJW+bXXypJlh+idUNHOcWyBlXYUPz6mI+Y9YN8h2
         GGOgRn4L36dQk3UpNDTUzXzgNotS0mypIGwGUSnKLANLm2M/JsErNOZAyJpKf8s0BLTk
         Q/Hur5ml9Kc3YYdCCD6pyzGAqjACsCYgK5YHrYRqqzu/W+H55vlfQ5n4f2OQ7Z0xFzOo
         8WYQ==
X-Gm-Message-State: AG10YOT97Lqzx9XeUd3HS7tuL6D2f7pwFj/b9h4Shdv8LC7GVUc/3kUg6b0V8Q5kCfq2uA==
X-Received: by 10.66.231.100 with SMTP id tf4mr27846965pac.44.1456004543871;
        Sat, 20 Feb 2016 13:42:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.132.100])
        by smtp.gmail.com with ESMTPSA id xu1sm26703415pab.31.2016.02.20.13.42.18
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 13:42:23 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 21 Feb 2016 03:12:12 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3] Staging: wilc1000: Remove and rename struct typedefs from .c files
Date: Sun, 21 Feb 2016 03:12:11 +0530
Message-Id: <1456004531-1916-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455982285-17907-1-git-send-email-bhumirks@gmail.com>
References: <1455982285-17907-1-git-send-email-bhumirks@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel coding 
style guidelines. So remove typedefs from structures wilc_sdio_t, 
wilc_spi_t and wilc_mac_cfg_t. 
Also remove '_t' suffix from the struct names by hand.

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
Changes in v3:
* Modify the commit message as '_t' was dropped by hand. 

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
index cfec982..b55a0c3f 100644
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
@@ -861,7 +861,7 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
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


