X-GM-THRID: 6252682956300615680
X-Received: by 10.129.155.201 with SMTP id s192mr8276332ywg.4.1455816197818;
        Thu, 18 Feb 2016 09:23:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.203 with SMTP id 72ls2131848ios.106.gmail; Thu, 18 Feb
 2016 09:23:17 -0800 (PST)
X-Received: by 10.67.5.233 with SMTP id cp9mr7620418pad.43.1455816197242;
        Thu, 18 Feb 2016 09:23:17 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id u66si1108244pfa.2.2016.02.18.09.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:23:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id c10so35834684pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tbVqFb/H2hjHkA/csBziz5i70r1/kpRbE10Cr0v8qJA=;
        b=QSlumknt9A0qGC6ib1w1NfTOBczzsTEyVGB5jZu7DfKTJ1i7/T2mf/VapND40TlH8A
         xUocB2LAhAWC2f1lNk6FA4Dkt6qnZ/g4rLsd8DN+pK6kFdgTj4ammUvOljEg27pIf0/k
         dwsW9qlew66QEAgsckEnbABdXTBCgpbHQ0I73ru+rrp0Wv6mED7vyi83RfRz6LJxfMPu
         iwm7YOSmg4sSywUBpkYxDafLjv5Wg46YQbgSk1hZneR0PrVf7kvnlTk35ukttu4KUeed
         gSkQO0a6QVA0H60QOMkbpaVaHK1z64bkR862Ryvi8UFQCGMDNtcq/FvR3GSiFmqg9rfA
         CEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tbVqFb/H2hjHkA/csBziz5i70r1/kpRbE10Cr0v8qJA=;
        b=R2p8o3F6+BIK5uPG6vvD/9PBHh4CFlqchULTU7Tw1U7Sr5mRiQM4SJLRPaU7x5vNp3
         ecNA9vZV8EXibYLajlOK4n2hT9zmirylA6cvUlg4lOCW0+iuEr1SENPXbwSmILyWSWu3
         PKoLPR2RPOr9eylcYzDaGI5Wo5mWNZHgLIbqTMN48jrTxGT0b6mWHGHLwh5A9XMcb20c
         lUCau2gzVLeN5C0abm7Bbzb10f6G3cYvcW+uhy5OtHA2Y8VjNZ/SrgS8GtUmRUTPTLui
         jAagEVmSuQwuKNN0SCDCiscJxjwdtGVD3GHGX8+JgSXr7t9eViSAj+wmE8pBgCu2FnJ9
         eb4Q==
X-Gm-Message-State: AG10YOT4HIuy3TOVZG6f1LKofsEFkc+dsxGAyvIzMVn1QvcI8ar/3L03b+bxYecWWESgdw==
X-Received: by 10.98.17.92 with SMTP id z89mr11827006pfi.16.1455816197122;
        Thu, 18 Feb 2016 09:23:17 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.159.173])
        by smtp.gmail.com with ESMTPSA id bx1sm11601977pab.33.2016.02.18.09.23.11
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 09:23:15 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 18 Feb 2016 22:53:05 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove all struct typedefs from .c files
Date: Thu, 18 Feb 2016 22:53:04 +0530
Message-Id: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedefs from structures wilc_sdio_t,wilc_spi_t
and wilc_mac_cfg_t.

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
 drivers/staging/wilc1000/wilc_sdio.c     |  8 ++++----
 drivers/staging/wilc1000/wilc_spi.c      |  8 ++++----
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 10 +++++-----
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
index 963875af..5684c47 100644
--- a/drivers/staging/wilc1000/wilc_sdio.c
+++ b/drivers/staging/wilc1000/wilc_sdio.c
@@ -30,15 +30,15 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
 
 #define WILC_SDIO_BLOCK_SIZE 512
 
-typedef struct {
+struct wilc_sdio_t {
 	bool irq_gpio;
 	u32 block_size;
 	int nint;
 #define MAX_NUN_INT_THRPT_ENH2 (5) /* Max num interrupts allowed in registers 0xf7, 0xf8 */
 	int has_thrpt_enh3;
-} wilc_sdio_t;
+};
 
-static wilc_sdio_t g_sdio;
+static struct wilc_sdio_t g_sdio;
 
 static int sdio_write_reg(struct wilc *wilc, u32 addr, u32 data);
 static int sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data);
@@ -675,7 +675,7 @@ static int sdio_init(struct wilc *wilc, bool resume)
 	u32 chipid;
 
 	if (!resume) {
-		memset(&g_sdio, 0, sizeof(wilc_sdio_t));
+		memset(&g_sdio, 0, sizeof(struct wilc_sdio_t));
 		g_sdio.irq_gpio = wilc->dev_irq_num;
 	}
 
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 2928712..f355b54 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -24,13 +24,13 @@
 #include "wilc_wlan.h"
 #include "wilc_wfi_netdevice.h"
 
-typedef struct {
+struct wilc_spi_t {
 	int crc_off;
 	int nint;
 	int has_thrpt_enh;
-} wilc_spi_t;
+};
 
-static wilc_spi_t g_spi;
+static struct wilc_spi_t g_spi;
 
 static int wilc_spi_read(struct wilc *wilc, u32, u8 *, u32);
 static int wilc_spi_write(struct wilc *wilc, u32, u8 *, u32);
@@ -867,7 +867,7 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		return 1;
 	}
 
-	memset(&g_spi, 0, sizeof(wilc_spi_t));
+	memset(&g_spi, 0, sizeof(struct wilc_spi_t));
 
 	/**
 	 *      configure protocol
diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 2bb684a..496e3d2 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -19,7 +19,7 @@
  *
  ********************************************/
 
-typedef struct {
+struct wilc_mac_cfg_t {
 	wilc_debug_func dPrint;
 
 	int mac_status;
@@ -40,9 +40,9 @@ typedef struct {
 	u8 firmware_info[8];
 	u8 scan_result[256];
 	u8 scan_result1[256];
-} wilc_mac_cfg_t;
+};
 
-static wilc_mac_cfg_t g_mac;
+static struct wilc_mac_cfg_t g_mac;
 
 static wilc_cfg_byte_t g_cfg_byte[] = {
 	{WID_BSS_TYPE, 0},
@@ -349,7 +349,7 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 
 static int wilc_wlan_parse_info_frame(u8 *info, int size)
 {
-	wilc_mac_cfg_t *pd = &g_mac;
+	struct wilc_mac_cfg_t *pd = &g_mac;
 	u32 wid, len;
 	int type = WILC_CFG_RSP_STATUS;
 
@@ -539,7 +539,7 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
 
 int wilc_wlan_cfg_init(wilc_debug_func func)
 {
-	memset((void *)&g_mac, 0, sizeof(wilc_mac_cfg_t));
+	memset((void *)&g_mac, 0, sizeof(struct wilc_mac_cfg_t));
 	g_mac.dPrint = func;
 	return 1;
 }
-- 
1.9.1


