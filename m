X-GM-THRID: 6616181023343378432
X-Received: by 2002:a1c:6702:: with SMTP id b2-v6mr35599wmc.2.1540449686243;
        Wed, 24 Oct 2018 23:41:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:96c9:: with SMTP id y192-v6ls26655wmd.5.canary-gmail;
 Wed, 24 Oct 2018 23:41:25 -0700 (PDT)
X-Google-Smtp-Source: AJdET5csNNoLV4axHBk+7yZcug1SG7tGgR3tFFnsQwiQAcw2kmU0GHsjhb+g5wkfoW6V1MV8aA2q
X-Received: by 2002:a1c:84cd:: with SMTP id g196-v6mr32174wmd.3.1540449685353;
        Wed, 24 Oct 2018 23:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540449685; cv=none;
        d=google.com; s=arc-20160816;
        b=m1hpEoA5Cey0v/GDfX/N+56lHgbwtdttLSHgti8MTlpdtnnuscS3Dopz2Q7W4RRXTh
         9GfilC9fCxVeeRaBgxkjQ1I3Spwg9DCeh/yOoqLkE/D8rxR7sMiD1XWRUsxCXcCHrurg
         GgRcMdrpugC1vxRRv0vUSSeZStTqelN5TY8dr4DpJzy/SiXVGxek29lVlo8K8f85Lrs6
         +T+J78uJG5u7QxThhQNpmEzRHFSKT5jSp091FhrJSQG6OUvvB9vYDF5EIsuNY29pd7rK
         fNiHHYVfaGjiSE4IkT6XBHtfloiDAj4YQ/ecEl3DHmQBXsTFMt5E5FDOMF08xEA62bW6
         Gb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KSaEH/plFnhoZ2Ds0iTbSvJga3PnoiMKluu2wkWgboo=;
        b=CHGe+QcOS3QqGYi0p/UjMWNekLj4E0W02w6j6Wknpnhoc8NPczKvi2Fyhq761EIznm
         VlIcqFf7nc3ursKme2RChgkz9yAmDjznPJKRS9q3EyKusd4rtxVEdEq1pECIiKvyJz51
         Z4Tnt72yyoYU9muYnnaB8u/LWJLMarLI34ni8glEmBwEUGZFxtfAl0HHxqA4avzCiN5K
         c+HStqgn1WOXNHUaINqS9wtdQZNtsIyWyV5IQH32vG5I0V8lYwQ5b8TtMcq95nSV8BGP
         n8euDSvQCgi+9fc/iblboPCXmlLap14XNpqqVbICDHfvl4EGxkKGRuySzpkRxbed7Gty
         muJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/6Y/5Oe";
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o9-v6si6780wmh.2.2018.10.24.23.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 23:41:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/6Y/5Oe";
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id l6-v6so8019527wrt.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 23:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KSaEH/plFnhoZ2Ds0iTbSvJga3PnoiMKluu2wkWgboo=;
        b=S/6Y/5Oe8KxnMtpkBSkwRs0gC+1RPIycL+O+NajHDthYJjzhID3kWQl5jx28CiMbWj
         u7TPkx9ZiCxKFKSdr9i8G94AliVwvv7kXfMYj5QSuH0Ri3dMrQw7a/3P8a9VHc39dn3O
         ADthpTI+IdLoElJqDCBXMnGokGsWIkY+ruJE6VKl2TI8WxDPGr5Hktt/v5KC20V0aoQC
         zAJYW6mwtFkEoFduLU7QRU/U2eAeWkvcxoATydj2C4xfVHch7tVso6mAGIKCu/IJDwql
         idJ6ahCwfFR/SUzX85/Hxp0BW/reXeonHbqM77+4rj2LoXSS070IjcR5ar1S29XOOOZs
         HmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KSaEH/plFnhoZ2Ds0iTbSvJga3PnoiMKluu2wkWgboo=;
        b=cLofViw2mqD6ByzGv8+iT+BgI/q4lwtka9xzqm5k9rDPdxZZMkIysGR8nTpN0mWa0k
         /x9yAMoDzAwSGOLSlw5B6HQ2VULtNX4WBFRo6av3p41+NEtjsTLNVgjdJ1enRVNemQv8
         Yu6SeOiOamkpwP6mH919K3SKVDqAqR2TZ8Co/GGlIipnkLnnjBg7bI5/gWcM+QpSZvmq
         lj/CXzkeXUsYX2DNysmzvCYNWp9ZlSEBhr2BRT7w08CHcHnnBsmkgBIw6UoAg3y+ub94
         2W3xbW56LRVNSdKhverR/N/2HVkCFFtuEGJYABiD84pSvpCJooSSMXtw6BFI9M+A80nk
         cRgw==
X-Gm-Message-State: AGRZ1gKz9oteHgl0jBDJNEQ4Rsdjz2fS5kGcI0oSAdw/MSt5rnosGBD7
	AME0iCSPgGhqqYkvqTGG0adJEUiFCZQ=
X-Received: by 2002:adf:d082:: with SMTP id y2-v6mr406715wrh.314.1540449684348;
        Wed, 24 Oct 2018 23:41:24 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id f18-v6sm3669612wre.86.2018.10.24.23.41.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 23:41:23 -0700 (PDT)
Date: Thu, 25 Oct 2018 07:41:20 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Fix checkpatch camel-case warnings
Message-ID: <20181025064117.GA1945@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Replace camel-case preprocessor value names in header and corresponding
source to fix checkpatch style warnings.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/ms.c | 76 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++++-----------------
 2 files changed, 73 insertions(+), 73 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index e43f92080c20..a0fcbb83ee8a 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -590,7 +590,7 @@ static int ms_identify_media_type(struct rtsx_chip *chip, int switch_8bit_bus)
 	int retval, i;
 	u8 val;
 
-	retval = ms_set_rw_reg_addr(chip, Pro_StatusReg, 6, SystemParm, 1);
+	retval = ms_set_rw_reg_addr(chip, PRO_STATUS_REG, 6, SYSTEM_PARM, 1);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -840,7 +840,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
 
 	ms_cleanup_work(chip);
 
-	retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+	retval = ms_set_rw_reg_addr(chip, 0, 0, PRO_DATA_COUNT1, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -885,7 +885,7 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 	int found_sys_info = 0, found_model_name = 0;
 #endif
 
-	retval = ms_set_rw_reg_addr(chip, Pro_IntReg, 2, Pro_SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, PRO_INT_REG, 2, PRO_SYSTEM_PARM, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1232,7 +1232,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)
 	int retval;
 	u8 val[2];
 
-	retval = ms_set_rw_reg_addr(chip, StatusReg0, 2, 0, 0);
+	retval = ms_set_rw_reg_addr(chip, STATUS_REG0, 2, 0, 0);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1255,8 +1255,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 	int retval, i;
 	u8 val, data[10];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1307,8 +1307,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
 
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG,
+						    MS_EXTRA_SIZE, SYSTEM_PARM,
 						    6);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1339,8 +1339,8 @@ static int ms_write_extra_data(struct rtsx_chip *chip, u16 block_addr,
 	if (!buf || (buf_len < MS_EXTRA_SIZE))
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6 + MS_EXTRA_SIZE);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 6 + MS_EXTRA_SIZE);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1392,8 +1392,8 @@ static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 	int retval;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1465,8 +1465,8 @@ static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1519,8 +1519,8 @@ static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)
 	int retval, i = 0;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1579,7 +1579,7 @@ static void ms_set_page_status(u16 log_blk, u8 type, u8 *extra, int extra_len)
 
 	memset(extra, 0xFF, MS_EXTRA_SIZE);
 
-	if (type == setPS_NG) {
+	if (type == SET_PS_NG) {
 		/* set page status as 1:NG,and block status keep 1:OK */
 		extra[0] = 0xB8;
 	} else {
@@ -1667,8 +1667,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 
 		ms_read_extra_data(chip, old_blk, i, extra, MS_EXTRA_SIZE);
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-					    MS_EXTRA_SIZE, SystemParm, 6);
+		retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG,
+					    MS_EXTRA_SIZE, SYSTEM_PARM, 6);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -1722,7 +1722,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 					return STATUS_FAIL;
 
 				if (uncorrect_flag) {
-					ms_set_page_status(log_blk, setPS_NG,
+					ms_set_page_status(log_blk, SET_PS_NG,
 							   extra,
 							   MS_EXTRA_SIZE);
 					if (i == 0)
@@ -1735,7 +1735,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 						i, extra[0]);
 					MS_SET_BAD_BLOCK_FLG(ms_card);
 
-					ms_set_page_status(log_blk, setPS_Error,
+					ms_set_page_status(log_blk, SET_PS_ERROR,
 							   extra,
 							   MS_EXTRA_SIZE);
 					ms_write_extra_data(chip, new_blk, i,
@@ -1764,8 +1764,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 			}
 		}
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, (6 + MS_EXTRA_SIZE));
+		retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+					    SYSTEM_PARM, (6 + MS_EXTRA_SIZE));
 
 		ms_set_err_code(chip, MS_NO_ERROR);
 
@@ -1819,8 +1819,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		}
 
 		if (i == 0) {
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG,
+						    MS_EXTRA_SIZE, SYSTEM_PARM,
 						    7);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1977,8 +1977,8 @@ static int reset_ms(struct rtsx_chip *chip)
 	for (reg_addr = BLOCK_SIZE_0; reg_addr <= PAGE_SIZE_1; reg_addr++)
 		rtsx_add_cmd(chip, READ_REG_CMD, reg_addr, 0, 0);
 
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_Device_Type, 0, 0);
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_4bit_Support, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_DEVICE_TYPE, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_4BIT_SUPPORT, 0, 0);
 
 	retval = rtsx_send_cmd(chip, MS_CARD, 100);
 	if (retval < 0)
@@ -2054,7 +2054,7 @@ static int reset_ms(struct rtsx_chip *chip)
 
 	/* Switch I/F Mode */
 	if (ptr[15]) {
-		retval = ms_set_rw_reg_addr(chip, 0, 0, SystemParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, SYSTEM_PARM, 1);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -2884,7 +2884,7 @@ int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, Pro_TPCParm, 0x01);
+	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, PRO_TPC_PARM, 0x01);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -2967,8 +2967,8 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 		}
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3023,7 +3023,7 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 					if (!(chip->card_wp & MS_CARD)) {
 						reset_ms(chip);
 						ms_set_page_status
-							(log_blk, setPS_NG,
+							(log_blk, SET_PS_NG,
 							 extra,
 							 MS_EXTRA_SIZE);
 						ms_write_extra_data
@@ -3128,8 +3128,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 	u8 *ptr;
 
 	if (!start_page) {
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, 7);
+		retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+					    SYSTEM_PARM, 7);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -3162,8 +3162,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 			return STATUS_FAIL;
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, (6 + MS_EXTRA_SIZE));
+	retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
+				    SYSTEM_PARM, (6 + MS_EXTRA_SIZE));
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3770,9 +3770,9 @@ static int mg_set_tpc_para_sub(struct rtsx_chip *chip, int type,
 	u8 buf[6];
 
 	if (type == 0)
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_TPCParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, PRO_TPC_PARM, 1);
 	else
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, PRO_DATA_COUNT1, 6);
 
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
index 952cc14dd079..919bd44a0a17 100644
--- a/drivers/staging/rts5208/ms.h
+++ b/drivers/staging/rts5208/ms.h
@@ -92,37 +92,37 @@
 #define PRO_FORMAT		0x10
 #define PRO_SLEEP		0x11
 
-#define	IntReg			0x01
-#define StatusReg0		0x02
-#define StatusReg1		0x03
-
-#define SystemParm		0x10
-#define BlockAdrs		0x11
-#define CMDParm			0x14
-#define PageAdrs		0x15
-
-#define OverwriteFlag		0x16
-#define ManagemenFlag		0x17
-#define LogicalAdrs		0x18
-#define ReserveArea		0x1A
-
-#define	Pro_IntReg		0x01
-#define Pro_StatusReg		0x02
-#define Pro_TypeReg		0x04
-#define	Pro_IFModeReg		0x05
-#define Pro_CatagoryReg		0x06
-#define Pro_ClassReg		0x07
-
-#define Pro_SystemParm		0x10
-#define Pro_DataCount1		0x11
-#define Pro_DataCount0		0x12
-#define Pro_DataAddr3		0x13
-#define Pro_DataAddr2		0x14
-#define Pro_DataAddr1		0x15
-#define Pro_DataAddr0		0x16
-
-#define Pro_TPCParm		0x17
-#define Pro_CMDParm		0x18
+#define	INT_REG			0x01
+#define STATUS_REG0		0x02
+#define STATUS_REG1		0x03
+
+#define SYSTEM_PARM		0x10
+#define BLOCK_ADRS		0x11
+#define CMD_PARM		0x14
+#define PAGE_ADRS		0x15
+
+#define OVERWRITE_FLAG		0x16
+#define MANAGEMENT_FLAG		0x17
+#define LOGICAL_ADRS		0x18
+#define RESERVE_AREA		0x1A
+
+#define	PRO_INT_REG		0x01
+#define PRO_STATUS_REG		0x02
+#define PRO_TYPE_REG		0x04
+#define	PRO_IFMODE_REG		0x05
+#define PRO_CATEGORY_REG	0x06
+#define PRO_CLASS_REG		0x07
+
+#define PRO_SYSTEM_PARM		0x10
+#define PRO_DATA_COUNT1		0x11
+#define PRO_DATA_COUNT0		0x12
+#define PRO_DATA_ADR3		0x13
+#define PRO_DATA_ADR2		0x14
+#define PRO_DATA_ADR1		0x15
+#define PRO_DATA_ADR0		0x16
+
+#define PRO_TPC_PARM		0x17
+#define PRO_CMD_PARM		0x18
 
 #define	INT_REG_CED		0x80
 #define	INT_REG_ERR		0x40
@@ -152,12 +152,12 @@
 #define	PAGE_SIZE_0		(PPBUF_BASE2 + 0x1a0 + 8)
 #define	PAGE_SIZE_1		(PPBUF_BASE2 + 0x1a0 + 9)
 
-#define MS_Device_Type		(PPBUF_BASE2 + 0x1D8)
+#define MS_DEVICE_TYPE		(PPBUF_BASE2 + 0x1D8)
 
-#define	MS_4bit_Support		(PPBUF_BASE2 + 0x1D3)
+#define	MS_4BIT_SUPPORT		(PPBUF_BASE2 + 0x1D3)
 
-#define setPS_NG	1
-#define setPS_Error	0
+#define SET_PS_NG	1
+#define SET_PS_ERROR	0
 
 #define	PARALLEL_8BIT_IF	0x40
 #define	PARALLEL_4BIT_IF	0x00
-- 
2.19.1


