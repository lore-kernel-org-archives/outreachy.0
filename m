X-GM-THRID: 6208876911170420736
X-Received: by 10.129.84.198 with SMTP id i189mr17841776ywb.32.1445616807081;
        Fri, 23 Oct 2015 09:13:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.97 with SMTP id lr1ls245393igb.17.canary; Fri, 23 Oct
 2015 09:13:26 -0700 (PDT)
X-Received: by 10.67.7.35 with SMTP id cz3mr17607277pad.40.1445616806623;
        Fri, 23 Oct 2015 09:13:26 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id sm2si990877pab.0.2015.10.23.09.13.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 09:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hk11so122173776pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 09:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Gk/VhvG2bGDYcxyLL6lRc5Y1JtcbK0nskAq6awZJo7c=;
        b=ZGZASdjKYeCpUjh3GsvRFXq3M6H1661F39SiNlvpJTx5/w84405vH1ifM6OQLT4/x/
         P+mJ2ln05ATW4kckuJNN0vJYIVLCiIMGNRZxqMzS6kq1PAyBMc72t85gh4022Tlb8gGO
         MG7UU/w2XxEmbo+F308oKywXyesSnst5W7YMgFIEbD6UI8o/e3yADTkV0Dtdr9nXS9ZV
         RW5Iwh1GdS4u74owycTJVNQu3vhk2zSooDYSU/k48u1Wk5seJCglLRNyBgTjzZn3+IqL
         TtJit1yThcXHuZInlUmVWcbVleA3TdZqojcLD6tLgIkfoWYFNhggrEbfW48cmNpwtmTM
         g6KQ==
X-Received: by 10.69.10.163 with SMTP id eb3mr5999881pbd.162.1445616806512;
        Fri, 23 Oct 2015 09:13:26 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.5])
        by smtp.gmail.com with ESMTPSA id yq2sm19749657pbb.39.2015.10.23.09.13.25
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 09:13:26 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] Staging: mt29f_spinand: Use preferred kernel types
Date: Sat, 24 Oct 2015 00:13:19 +0800
Message-Id: <1445616799-27018-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace remaining instances of 'uint8_t' with 'u8' for consistency since
'u8' and 'u16' are already being used in other parts of the code.

Replace also 'uint32_t' with 'u32' on the header file.
Checkpatch pointed out this issue.

CHECK: Prefer kernel type 'u8' over 'uint8_t'
CHECK: Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
Changes in v2:
 * Reflect type change on mt29f_spinand.h
 * Update commit message

 drivers/staging/mt29f_spinand/mt29f_spinand.c | 18 +++++++++---------
 drivers/staging/mt29f_spinand/mt29f_spinand.h |  4 ++--
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 4165fb4..a8292a1 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -145,7 +145,7 @@ static int spinand_read_id(struct spi_device *spi_nand, u8 *id)
  *    Once the status turns to be ready, the other status bits also are
  *    valid status bits.
  */
-static int spinand_read_status(struct spi_device *spi_nand, uint8_t *status)
+static int spinand_read_status(struct spi_device *spi_nand, u8 *status)
 {
 	struct spinand_cmd cmd = {0};
 	int ret;
@@ -478,7 +478,7 @@ static int spinand_program_page(struct spi_device *spi_nand,
 {
 	int retval;
 	u8 status = 0;
-	uint8_t *wbuf;
+	u8 *wbuf;
 #ifdef CONFIG_MTD_SPINAND_ONDIEECC
 	unsigned int i, j;
 
@@ -613,9 +613,9 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
 
 #ifdef CONFIG_MTD_SPINAND_ONDIEECC
 static int spinand_write_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf, int oob_required)
+		struct nand_chip *chip, const u8 *buf, int oob_required)
 {
-	const uint8_t *p = buf;
+	const u8 *p = buf;
 	int eccsize = chip->ecc.size;
 	int eccsteps = chip->ecc.steps;
 
@@ -625,11 +625,11 @@ static int spinand_write_page_hwecc(struct mtd_info *mtd,
 }
 
 static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-		uint8_t *buf, int oob_required, int page)
+		u8 *buf, int oob_required, int page)
 {
 	int retval;
 	u8 status;
-	uint8_t *p = buf;
+	u8 *p = buf;
 	int eccsize = chip->ecc.size;
 	int eccsteps = chip->ecc.steps;
 	struct spinand_info *info = (struct spinand_info *)chip->priv;
@@ -667,7 +667,7 @@ static void spinand_select_chip(struct mtd_info *mtd, int dev)
 {
 }
 
-static uint8_t spinand_read_byte(struct mtd_info *mtd)
+static u8 spinand_read_byte(struct mtd_info *mtd)
 {
 	struct spinand_state *state = mtd_to_state(mtd);
 	u8 data;
@@ -707,7 +707,7 @@ static int spinand_wait(struct mtd_info *mtd, struct nand_chip *chip)
 	return 0;
 }
 
-static void spinand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
+static void spinand_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
 {
 	struct spinand_state *state = mtd_to_state(mtd);
 
@@ -715,7 +715,7 @@ static void spinand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
 	state->buf_ptr += len;
 }
 
-static void spinand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void spinand_read_buf(struct mtd_info *mtd, u8 *buf, int len)
 {
 	struct spinand_state *state = mtd_to_state(mtd);
 
diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.h b/drivers/staging/mt29f_spinand/mt29f_spinand.h
index 6c8e413..fe6c15a 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.h
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.h
@@ -84,8 +84,8 @@ struct spinand_info {
 };
 
 struct spinand_state {
-	uint32_t	col;
-	uint32_t	row;
+	u32	col;
+	u32	row;
 	int		buf_ptr;
 	u8		*buf;
 };
-- 
1.9.1


