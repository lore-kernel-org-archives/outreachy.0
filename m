X-GM-THRID: 6208866043951054848
X-Received: by 10.107.17.8 with SMTP id z8mr310609ioi.12.1445614277875;
        Fri, 23 Oct 2015 08:31:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.60.65 with SMTP id f1ls258571igr.26.gmail; Fri, 23 Oct 2015
 08:31:17 -0700 (PDT)
X-Received: by 10.68.195.197 with SMTP id ig5mr3927732pbc.4.1445614277509;
        Fri, 23 Oct 2015 08:31:17 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si2321120pbb.2.2015.10.23.08.31.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 08:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so126676395pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 08:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lyRy4+yho/tlnUNgg94JhebFu4Je9/+lghnb9sKwu24=;
        b=IDt2uYOZ4n7bHS/AueugTIftN+kU8hVwRsgHpiw19asnQuspqY8c5unuDFaNZ3U2QI
         qYrdsT3fUelhYWxpj2s6bMWo4qc9mQwFcn5iTcg0/MCvwKQ7q9v5pgZuzPtKtiNC11Bn
         4zXSObZJcl02iV4PG5/P5ecUV1CaWiUboH6KMHojsHobGM0boxf4oJT0WU3S8VyKbQAu
         sQ4cGB57VL16hnbn9c0hYrysLQJZsOI5CrFb3hj7dhTedRz1xZ3LsC4FBPVnlKkq6uZA
         wZ5ngfEQzi99MphZvEWpd5rUCZ7wVnpK6PFogHzHN9pycfFFovE+ZTgtGSgWdjwb5UE5
         tvLQ==
X-Received: by 10.66.218.129 with SMTP id pg1mr5569208pac.156.1445614277158;
        Fri, 23 Oct 2015 08:31:17 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.5])
        by smtp.gmail.com with ESMTPSA id er1sm9198402pbb.6.2015.10.23.08.31.16
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 08:31:16 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] Staging: mt29f_spinand: Use preferred kernel type
Date: Fri, 23 Oct 2015 23:31:08 +0800
Message-Id: <1445614268-32236-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace remaining instances of 'uint8_t' with 'u8' for consistency since
'u8' and 'u16' are already being used in other parts of the code.
Checkpatch pointed out this issue.

CHECK: Prefer kernel type 'u8' over 'uint8_t'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

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
 
-- 
1.9.1


