X-GM-THRID: 6209998026237280256
X-Received: by 10.50.62.49 with SMTP id v17mr16695375igr.1.1445877837868;
        Mon, 26 Oct 2015 09:43:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.5 with SMTP id xs5ls1884010obc.9.gmail; Mon, 26 Oct
 2015 09:43:57 -0700 (PDT)
X-Received: by 10.182.233.229 with SMTP id tz5mr3422263obc.26.1445877837371;
        Mon, 26 Oct 2015 09:43:57 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id vy6si3576388pbc.1.2015.10.26.09.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 09:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id la5so39484pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 09:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5LfQ4U0U5X4XxLAKy1kRXRMgLRFKjjcFMEK6ffBF0tE=;
        b=vxjXQ0BMzas7vT8qk97puPVKY1kpNZI9RYiwFqdwNzWbuhrJ5ysxPmSkG9jeVIgfjD
         CIx/+To3G+o2O9EPAimz2zA8HzmpiiISFL5yf659tmniiuqPdQgfPVe1yIsGjFMI3vbm
         1a1NyiZ/wcZTS4/SGr4CwHOiYAIB/rnHpvGgcgafWtS8vQfOTGOR4ShJdCd3HsPgnUIN
         DBlaqVG/9oMFh4CSWXF+HxQz7/25YWC46DrY9DZf4VchmjgO3lacJi3unRuBAgjk7n/W
         yLfN2KYmCHe+ijA9vTu7PlIALQXHpmADyuXtW+q+7W0LogtQZqNv+KsJvlkPkSzQ+88b
         JMmQ==
X-Received: by 10.68.69.108 with SMTP id d12mr41526546pbu.137.1445877837240;
        Mon, 26 Oct 2015 09:43:57 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.139])
        by smtp.gmail.com with ESMTPSA id yz3sm34869696pbb.37.2015.10.26.09.43.56
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 09:43:56 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] Staging: mt29f_spinand: Indent to match open parenthesis
Date: Tue, 27 Oct 2015 00:43:45 +0800
Message-Id: <1445877825-3424-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix alignment issues by properly indenting function parameters in
accordance to the kernel coding style. Checkpatch pointed out this
issue.

CHECK: Alignment should match open parenthesis

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 42 +++++++++++++--------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index b6a1ffc..20a3f8e 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -322,7 +322,7 @@ static int spinand_read_page_to_cache(struct spi_device *spi_nand, u16 page_id)
  *   No tRd delay.
  */
 static int spinand_read_from_cache(struct spi_device *spi_nand, u16 page_id,
-		u16 byte_id, u16 len, u8 *rbuf)
+				   u16 byte_id, u16 len, u8 *rbuf)
 {
 	struct spinand_cmd cmd = {0};
 	u16 column;
@@ -353,7 +353,7 @@ static int spinand_read_from_cache(struct spi_device *spi_nand, u16 page_id,
  *   Poll to read status to wait for tRD time.
  */
 static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
-		u16 offset, u16 len, u8 *rbuf)
+			     u16 offset, u16 len, u8 *rbuf)
 {
 	int ret;
 	u8 status = 0;
@@ -375,14 +375,14 @@ static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
 		ret = spinand_read_status(spi_nand, &status);
 		if (ret < 0) {
 			dev_err(&spi_nand->dev,
-					"err %d read status register\n", ret);
+				"err %d read status register\n", ret);
 			return ret;
 		}
 
 		if ((status & STATUS_OIP_MASK) == STATUS_READY) {
 			if ((status & STATUS_ECC_MASK) == STATUS_ECC_ERROR) {
 				dev_err(&spi_nand->dev, "ecc error, page=%d\n",
-						page_id);
+					page_id);
 				return 0;
 			}
 			break;
@@ -420,7 +420,8 @@ static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
  *   Since it is writing the data to cache, there is no tPROG time.
  */
 static int spinand_program_data_to_cache(struct spi_device *spi_nand,
-		u16 page_id, u16 byte_id, u16 len, u8 *wbuf)
+					 u16 page_id, u16 byte_id,
+					 u16 len, u8 *wbuf)
 {
 	struct spinand_cmd cmd = {0};
 	u16 column;
@@ -474,7 +475,7 @@ static int spinand_program_execute(struct spi_device *spi_nand, u16 page_id)
  *   Poll to wait for the tPROG time to finish the transaction.
  */
 static int spinand_program_page(struct spi_device *spi_nand,
-		u16 page_id, u16 offset, u16 len, u8 *buf)
+				u16 page_id, u16 offset, u16 len, u8 *buf)
 {
 	int retval;
 	u8 status = 0;
@@ -508,7 +509,7 @@ static int spinand_program_page(struct spi_device *spi_nand,
 		dev_err(&spi_nand->dev, "wait timedout!!!\n");
 
 	retval = spinand_program_data_to_cache(spi_nand, page_id,
-			offset, len, wbuf);
+					       offset, len, wbuf);
 	if (retval < 0)
 		return retval;
 	retval = spinand_program_execute(spi_nand, page_id);
@@ -518,8 +519,7 @@ static int spinand_program_page(struct spi_device *spi_nand,
 		retval = spinand_read_status(spi_nand, &status);
 		if (retval < 0) {
 			dev_err(&spi_nand->dev,
-					"error %d reading status register\n",
-					retval);
+				"error %d reading status register\n", retval);
 			return retval;
 		}
 
@@ -594,8 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
 		retval = spinand_read_status(spi_nand, &status);
 		if (retval < 0) {
 			dev_err(&spi_nand->dev,
-					"error %d reading status register\n",
-					retval);
+				"error %d reading status register\n", retval);
 			return retval;
 		}
 
@@ -613,7 +612,8 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
 
 #ifdef CONFIG_MTD_SPINAND_ONDIEECC
 static int spinand_write_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, const u8 *buf, int oob_required)
+				    struct nand_chip *chip,
+				    const u8 *buf, int oob_required)
 {
 	const u8 *p = buf;
 	int eccsize = chip->ecc.size;
@@ -625,7 +625,7 @@ static int spinand_write_page_hwecc(struct mtd_info *mtd,
 }
 
 static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-		u8 *buf, int oob_required, int page)
+				   u8 *buf, int oob_required, int page)
 {
 	int retval;
 	u8 status;
@@ -644,8 +644,7 @@ static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
 		retval = spinand_read_status(info->spi, &status);
 		if (retval < 0) {
 			dev_err(&mtd->dev,
-					"error %d reading status register\n",
-					retval);
+				"error %d reading status register\n", retval);
 			return retval;
 		}
 
@@ -694,8 +693,7 @@ static int spinand_wait(struct mtd_info *mtd, struct nand_chip *chip)
 		retval = spinand_read_status(info->spi, &status);
 		if (retval < 0) {
 			dev_err(&mtd->dev,
-					"error %d reading status register\n",
-					retval);
+				"error %d reading status register\n", retval);
 			return retval;
 		}
 
@@ -743,7 +741,7 @@ static void spinand_reset(struct spi_device *spi_nand)
 }
 
 static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
-		int column, int page)
+			    int column, int page)
 {
 	struct nand_chip *chip = (struct nand_chip *)mtd->priv;
 	struct spinand_info *info = (struct spinand_info *)chip->priv;
@@ -789,7 +787,7 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
 	/* PAGEPROG reuses all of the setup from SEQIN and adds the length */
 	case NAND_CMD_PAGEPROG:
 		spinand_program_page(info->spi, state->row, state->col,
-				state->buf_ptr, state->buf);
+				     state->buf_ptr, state->buf);
 		break;
 	case NAND_CMD_STATUS:
 		spinand_get_otp(info->spi, state->buf);
@@ -854,7 +852,7 @@ static int spinand_probe(struct spi_device *spi_nand)
 	struct mtd_part_parser_data ppdata;
 
 	info  = devm_kzalloc(&spi_nand->dev, sizeof(struct spinand_info),
-			GFP_KERNEL);
+			     GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
 
@@ -863,7 +861,7 @@ static int spinand_probe(struct spi_device *spi_nand)
 	spinand_lock_block(spi_nand, BL_ALL_UNLOCKED);
 
 	state = devm_kzalloc(&spi_nand->dev, sizeof(struct spinand_state),
-			GFP_KERNEL);
+			     GFP_KERNEL);
 	if (!state)
 		return -ENOMEM;
 
@@ -874,7 +872,7 @@ static int spinand_probe(struct spi_device *spi_nand)
 		return -ENOMEM;
 
 	chip = devm_kzalloc(&spi_nand->dev, sizeof(struct nand_chip),
-			GFP_KERNEL);
+			    GFP_KERNEL);
 	if (!chip)
 		return -ENOMEM;
 
-- 
1.9.1


