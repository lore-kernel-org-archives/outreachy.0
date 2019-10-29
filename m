X-GM-THRID: 6753034664415330304
X-Received: by 2002:aca:5691:: with SMTP id k139mr1916180oib.54.1572313410026;
        Mon, 28 Oct 2019 18:43:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:72cd:: with SMTP id d13ls2857097otk.6.gmail; Mon, 28 Oct
 2019 18:43:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy0S9wKgiesOKXt8G40TmsDzJdLqSr9ZKQZvc+VrC6Ytw8uZwZ2xlqIECVCbtnw5FwpM4BH
X-Received: by 2002:a9d:7385:: with SMTP id j5mr5972430otk.135.1572313408802;
        Mon, 28 Oct 2019 18:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313408; cv=none;
        d=google.com; s=arc-20160816;
        b=0bUnqqlDhvr+hKAvM1+7jfrZXcAPuBCpN+zpM8a7ypauYtXsrGwl7jmYdgBp+BGYbX
         fmicwbjXTlcSAl4L05Q+kdduU3hZnKOLesx6Atsgfw+rzEJioLvwlhTSFmG52CFANwmb
         QjkUCaSCjw+iwmnG8O2nsmmUcKBeAOzUewtl3ZGCAIUn07murGGDyfMhexLDmTdD/K7u
         uOx1GARKB8VVeUzIo/6swkxeMwO3cMlQRfw2fAielMPAR/ANOy2Dkh+OKuiqQppjRCqO
         bpDkLm8FhlT2e2ikuRqcVArmWZeVHrv/3hODKOg0wgyfrf2DOR3S2U6bNwQr9L1IzIBd
         6m9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=78tFr7cgzVjX/van0x9yBO5Wr/o0WnCCYGwnJqISdN8=;
        b=xf4Pq/Zf9NaHMYzfpSna2ck+LiZ8lSuqJMxgl/35hN2tgxzzQeNrlfOarFUWJhvSaL
         uALFQnXjSNk4yaklllizwbTP+g1ExvHk/bVLU4lsbSqh2qiyAgYiMn1U5enzUYR2bPWS
         AmrJ/WK9POSkEHiEwd2P/wYtxvGtBh2QK9KA6yqdWFqJ8mMa1jGbiBXbsa/EoitWyx66
         IMLLaLo31OYfI2suRdGuCdE0gmgE+Dr8SOJH7A+Efsq+PBka1HZ0huMHOl+M1MlSsLM6
         IacGR1XS+FOASZRPR2rMTzRYuVBF6cunsyhjKpLSS3HQ3Zyf4GTdLAfi4d7fLa9BqJvm
         +zZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9UJ2Gr4;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id p5si648403ota.1.2019.10.28.18.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9UJ2Gr4;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id u184so10610925qkd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=78tFr7cgzVjX/van0x9yBO5Wr/o0WnCCYGwnJqISdN8=;
        b=E9UJ2Gr4dAMsVE4Uj9oGkgJlNsIlG4Fd1Ka9+umyYTt8i969SnI/XCtXXYjIcaRBk+
         R0ogtOrBejll1uuflDIsQSiLK67IJTXcFZj/97otQG9C6rtSfOVqjeSTxqO9tfy8cByy
         1ciucLwzSYewakC90sLx+zdPCE4Kg1sYAlwgLHhWYYBt/e2i7HwtW/K5iba/n1StSJOO
         iPajZfkl1TeyMdFo3yqZxR8O7Hl3rPExpsZq0Nki8cAHBslPVrWIBpWJSED/amgIQneF
         4Sdpwv0LCx0NZ6vfVwXhlSVSCT3dYMncRYKRHn7Vyr2n561pfhmjEB83VTRHjFbPVaMI
         GIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=78tFr7cgzVjX/van0x9yBO5Wr/o0WnCCYGwnJqISdN8=;
        b=Oi02D5ILVrA4XHOXsUCLFpy0iP2qy2QkicPT4fQIKBp0TYpMeuHAiW5AY+OkUEZi7M
         qc6kSIUJv939NMYvcwdnW3GyiAuVDBgf3kofZS5Ke1KsCpdKUZ5ot83cCmBR0GsKWHpo
         Jhthvuw0noU1TLGKYX7QFycKe2joRDSQZ2sjcGiW4NvZO1VDibTg9p+RzdqZPOGz/050
         sbg91qmP0UkBLFXRG5cKjOP1U/dTpy4z2Ua6UpQnlXoCLf3CPftmdUAmAcRgswvKrGNY
         4rXG3hKq1zlyyuYyvzMH7gQX6cw9PMku2jVASwR8j/4dntkNC/krmGBaU5q1tC4le/mK
         CANw==
X-Gm-Message-State: APjAAAXi3H/mfL4DKzG6jfK6RWBB7fpCSBWBkiZaCfzEkKLjwIpMeiJQ
	ZoG20ZwbaEvW8Tf8wMHIvD5NPyI9f6J3tw==
X-Received: by 2002:a05:620a:208a:: with SMTP id e10mr19362814qka.189.1572313407870;
        Mon, 28 Oct 2019 18:43:27 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:27 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 1/5] staging: rts5208: Eliminate the use of Camel Case in file ms.c
Date: Mon, 28 Oct 2019 22:43:12 -0300
Message-Id: <20191029014316.6452-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file ms.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index e853fa9cc950..5c7c13dfefa0 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -590,7 +590,7 @@ static int ms_identify_media_type(struct rtsx_chip *chip, int switch_8bit_bus)
 	int retval, i;
 	u8 val;
 
-	retval = ms_set_rw_reg_addr(chip, Pro_StatusReg, 6, SystemParm, 1);
+	retval = ms_set_rw_reg_addr(chip, pro_status_reg, 6, system_parm, 1);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -840,7 +840,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
 
 	ms_cleanup_work(chip);
 
-	retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+	retval = ms_set_rw_reg_addr(chip, 0, 0, pro_data_count1, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -885,7 +885,7 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 	int found_sys_info = 0, found_model_name = 0;
 #endif
 
-	retval = ms_set_rw_reg_addr(chip, Pro_IntReg, 2, Pro_SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, pro_int_REG, 2, pro_system_parm, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1232,7 +1232,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)
 	int retval;
 	u8 val[2];
 
-	retval = ms_set_rw_reg_addr(chip, StatusReg0, 2, 0, 0);
+	retval = ms_set_rw_reg_addr(chip, status_reg0, 2, 0, 0);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1255,8 +1255,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 	int retval, i;
 	u8 val, data[10];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1307,8 +1307,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
 
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+						    MS_EXTRA_SIZE, system_parm,
 						    6);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1339,8 +1339,8 @@ static int ms_write_extra_data(struct rtsx_chip *chip, u16 block_addr,
 	if (!buf || (buf_len < MS_EXTRA_SIZE))
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6 + MS_EXTRA_SIZE);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6 + MS_EXTRA_SIZE);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1392,8 +1392,8 @@ static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 	int retval;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1465,8 +1465,8 @@ static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1519,8 +1519,8 @@ static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)
 	int retval, i = 0;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1579,7 +1579,7 @@ static void ms_set_page_status(u16 log_blk, u8 type, u8 *extra, int extra_len)
 
 	memset(extra, 0xFF, MS_EXTRA_SIZE);
 
-	if (type == setPS_NG) {
+	if (type == set_PS_NG) {
 		/* set page status as 1:NG,and block status keep 1:OK */
 		extra[0] = 0xB8;
 	} else {
@@ -1670,8 +1670,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-					    MS_EXTRA_SIZE, SystemParm, 6);
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+					    MS_EXTRA_SIZE, system_parm, 6);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -1725,7 +1725,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 					return STATUS_FAIL;
 
 				if (uncorrect_flag) {
-					ms_set_page_status(log_blk, setPS_NG,
+					ms_set_page_status(log_blk, set_PS_NG,
 							   extra,
 							   MS_EXTRA_SIZE);
 					if (i == 0)
@@ -1738,8 +1738,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 						i, extra[0]);
 					MS_SET_BAD_BLOCK_FLG(ms_card);
 
-					ms_set_page_status(log_blk, setPS_Error,
-							   extra,
+					ms_set_page_status(log_blk,
+							   set_PS_error, extra,
 							   MS_EXTRA_SIZE);
 					ms_write_extra_data(chip, new_blk, i,
 							    extra,
@@ -1767,8 +1767,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 			}
 		}
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, (6 + MS_EXTRA_SIZE));
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+					    system_parm, (6 + MS_EXTRA_SIZE));
 
 		ms_set_err_code(chip, MS_NO_ERROR);
 
@@ -1822,8 +1822,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		}
 
 		if (i == 0) {
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+						    MS_EXTRA_SIZE, system_parm,
 						    7);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1980,8 +1980,8 @@ static int reset_ms(struct rtsx_chip *chip)
 	for (reg_addr = BLOCK_SIZE_0; reg_addr <= PAGE_SIZE_1; reg_addr++)
 		rtsx_add_cmd(chip, READ_REG_CMD, reg_addr, 0, 0);
 
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_Device_Type, 0, 0);
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_4bit_Support, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_device_type, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_4bit_support, 0, 0);
 
 	retval = rtsx_send_cmd(chip, MS_CARD, 100);
 	if (retval < 0)
@@ -2057,7 +2057,7 @@ static int reset_ms(struct rtsx_chip *chip)
 
 	/* Switch I/F Mode */
 	if (ptr[15]) {
-		retval = ms_set_rw_reg_addr(chip, 0, 0, SystemParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, system_parm, 1);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -2887,7 +2887,7 @@ int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, Pro_TPCParm, 0x01);
+	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, pro_TPC_parm, 0x01);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -2970,8 +2970,8 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 		}
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3026,7 +3026,7 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 					if (!(chip->card_wp & MS_CARD)) {
 						reset_ms(chip);
 						ms_set_page_status
-							(log_blk, setPS_NG,
+							(log_blk, set_PS_NG,
 							 extra,
 							 MS_EXTRA_SIZE);
 						ms_write_extra_data
@@ -3131,8 +3131,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 	u8 *ptr;
 
 	if (!start_page) {
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, 7);
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+					    system_parm, 7);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -3165,8 +3165,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 			return STATUS_FAIL;
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, (6 + MS_EXTRA_SIZE));
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, (6 + MS_EXTRA_SIZE));
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3773,9 +3773,9 @@ static int mg_set_tpc_para_sub(struct rtsx_chip *chip, int type,
 	u8 buf[6];
 
 	if (type == 0)
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_TPCParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, pro_TPC_parm, 1);
 	else
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, pro_data_count1, 6);
 
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
@@ -4154,7 +4154,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 
 #ifdef MG_SET_ICV_SLOW
@@ -4195,7 +4195,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 					       SENSE_TYPE_MG_WRITE_ERR);
 			}
 			retval = STATUS_FAIL;
-			goto SetICVFinish;
+			goto set_ICV_finish;
 		}
 	}
 #else
@@ -4214,11 +4214,11 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 #endif
 
-SetICVFinish:
+set_ICV_finish:
 	kfree(buf);
 	return retval;
 }
-- 
2.20.1


