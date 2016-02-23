X-GM-THRID: 6254556229521113088
X-Received: by 10.25.17.25 with SMTP id g25mr2029314lfi.8.1456252352969;
        Tue, 23 Feb 2016 10:32:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.166 with SMTP id 38ls465809lfs.104.gmail; Tue, 23 Feb
 2016 10:32:32 -0800 (PST)
X-Received: by 10.112.151.240 with SMTP id ut16mr4383629lbb.16.1456252352436;
        Tue, 23 Feb 2016 10:32:32 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id 141si1378443wmy.2.2016.02.23.10.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:32:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id b205so4356942wmb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 10:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2XR2BuwHlNIk8v+yVqlcNmgwCL5twEit8/O9+CNdUiI=;
        b=BohnQIvHOf4yUa1i3QcapabJ3P6OP6nIvtotmaQ/wI074BKh486wwWrpzzVQE2kiQT
         wcCJefd/ThsySXXfBUUvq92aJKLxkE8Iqk1+wLYxpwd48JT59jaDHCwx6FyEjWuDLMMB
         QwwTfvJr7rZHXforIV0FQnDBeC7tWsnTCYnlN1p5qA085UExzr/RtpxqoIbKIsvGoYoa
         xCSQkMpKHQmfEpZQe377BibMC3xgQhI1lY+8YaEdoWRkrSXtVmsvMpqKtqBcElQDkHv/
         5opYCONDGubxxyRQVyAwM6uwvwX9z29O0jd7hC3xDZrYJD84Y+D+aaRi1p3k52vTaAiD
         omQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2XR2BuwHlNIk8v+yVqlcNmgwCL5twEit8/O9+CNdUiI=;
        b=lcdtilToaEUkyHYDsOX/zYO/pL+Zy0/xR+Vdf+QdeIXR5WWCp7qdKK/JMM+EL7q7wD
         tbZXX2A/nlzgJWQWbU8QNzyhh0rgMnJPmt8oivNv2jHzdlIu8r1JNorORw3sD83MMOgB
         0vQCsCUR4YxZvPt2ncXN48iBC/havv+RiHmDqaoyj5mHfPPhXJz2frcUTC1iAAIE+DMK
         cifKRVROryxR/WmPGZqajkcLZ9uCKTY7cFvB+j47DDH67nVvReIpPrkihSRDiA7GbFWP
         3Ubs1eu2zwxTypEpOmtmDZlmMqWho/3X3tpIRZxZ9dHo9jJvPqmX2jTS7YUEAjklU0+Q
         410g==
X-Gm-Message-State: AG10YOTn/kFMImhHVS8i2xzwSsygNRQBxgrQzIs8WXps3jICf3UobizzuQXIj0858m/3AA==
X-Received: by 10.195.12.113 with SMTP id ep17mr34102400wjd.102.1456252352193;
        Tue, 23 Feb 2016 10:32:32 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id w17sm27352733wmw.5.2016.02.23.10.32.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 10:32:31 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rts5208: Remove unnecessary parentheses
Date: Tue, 23 Feb 2016 20:32:24 +0200
Message-Id: <1456252344-19650-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Problem found using checkpatch.pl
CHECK: Unnecessary parentheses around chip->ms_card

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rts5208/ms.c | 92 ++++++++++++++++++++++----------------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index cdaa1ab..44d79ef 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -30,14 +30,14 @@
 
 static inline void ms_set_err_code(struct rtsx_chip *chip, u8 err_code)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 
 	ms_card->err_code = err_code;
 }
 
 static inline int ms_check_err_code(struct rtsx_chip *chip, u8 err_code)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 
 	return (ms_card->err_code == err_code);
 }
@@ -51,7 +51,7 @@ static int ms_parse_err_code(struct rtsx_chip *chip)
 static int ms_transfer_tpc(struct rtsx_chip *chip, u8 trans_mode,
 			u8 tpc, u8 cnt, u8 cfg)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	u8 *ptr;
 
@@ -185,7 +185,7 @@ static int ms_transfer_data(struct rtsx_chip *chip, u8 trans_mode,
 static int ms_write_bytes(struct rtsx_chip *chip,
 			  u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 
 	if (!data || (data_len < cnt)) {
@@ -255,7 +255,7 @@ static int ms_write_bytes(struct rtsx_chip *chip,
 static int ms_read_bytes(struct rtsx_chip *chip,
 			u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 *ptr;
 
@@ -369,7 +369,7 @@ static int ms_send_cmd(struct rtsx_chip *chip, u8 cmd, u8 cfg)
 
 static int ms_set_init_para(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	if (CHK_HG8BIT(ms_card)) {
@@ -408,7 +408,7 @@ static int ms_set_init_para(struct rtsx_chip *chip)
 
 static int ms_switch_clock(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	retval = select_card(chip, MS_CARD);
@@ -542,7 +542,7 @@ static int ms_pull_ctl_enable(struct rtsx_chip *chip)
 
 static int ms_prepare_reset(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	u8 oc_mask = 0;
 
@@ -653,7 +653,7 @@ static int ms_prepare_reset(struct rtsx_chip *chip)
 
 static int ms_identify_media_type(struct rtsx_chip *chip, int switch_8bit_bus)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 val;
 
@@ -829,7 +829,7 @@ static int ms_switch_parallel_bus(struct rtsx_chip *chip)
 
 static int ms_switch_8bit_bus(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 data[2];
 
@@ -873,7 +873,7 @@ static int ms_switch_8bit_bus(struct rtsx_chip *chip)
 
 static int ms_pro_reset_flow(struct rtsx_chip *chip, int switch_8bit_bus)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 
 	for (i = 0; i < 3; i++) {
@@ -994,7 +994,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
 
 static int ms_read_attribute_info(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 val, *buf, class_code, device_type, sub_class, data[16];
 	u16 total_blk = 0, blk_size = 0;
@@ -1303,7 +1303,7 @@ static int mg_set_tpc_para_sub(struct rtsx_chip *chip,
 
 static int reset_ms_pro(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 #ifdef XC_POWERCLASS
 	u8 change_power_class;
@@ -1421,7 +1421,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)
 static int ms_read_extra_data(struct rtsx_chip *chip,
 		u16 block_addr, u8 page_num, u8 *buf, int buf_len)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 val, data[10];
 
@@ -1516,7 +1516,7 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 static int ms_write_extra_data(struct rtsx_chip *chip,
 		u16 block_addr, u8 page_num, u8 *buf, int buf_len)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 val, data[16];
 
@@ -1585,7 +1585,7 @@ static int ms_write_extra_data(struct rtsx_chip *chip,
 
 static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	u8 val, data[6];
 
@@ -1670,7 +1670,7 @@ static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 
 static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	u8 val, data[8], extra[MS_EXTRA_SIZE];
 
@@ -1741,7 +1741,7 @@ static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
 
 static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i = 0;
 	u8 val, data[6];
 
@@ -1862,7 +1862,7 @@ static int ms_init_page(struct rtsx_chip *chip, u16 phy_blk, u16 log_blk,
 static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		u16 log_blk, u8 start_page, u8 end_page)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	bool uncorrect_flag = false;
 	int retval, rty_cnt;
 	u8 extra[MS_EXTRA_SIZE], val, i, j, data[16];
@@ -2155,7 +2155,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 
 static int reset_ms(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	u16 i, reg_addr, block_size;
 	u8 val, extra[MS_EXTRA_SIZE], j, *ptr;
@@ -2394,7 +2394,7 @@ RE_SEARCH:
 
 static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int size, i, seg_no, retval;
 	u16 defect_block, reg_addr;
 	u8 val1, val2;
@@ -2467,7 +2467,7 @@ INIT_FAIL:
 
 static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log_off)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 
 	if (ms_card->segment == NULL)
@@ -2484,7 +2484,7 @@ static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log_off)
 static void ms_set_l2p_tbl(struct rtsx_chip *chip,
 			int seg_no, u16 log_off, u16 phy_blk)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 
 	if (ms_card->segment == NULL)
@@ -2497,7 +2497,7 @@ static void ms_set_l2p_tbl(struct rtsx_chip *chip,
 
 static void ms_set_unused_block(struct rtsx_chip *chip, u16 phy_blk)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 	int seg_no;
 
@@ -2513,7 +2513,7 @@ static void ms_set_unused_block(struct rtsx_chip *chip, u16 phy_blk)
 
 static u16 ms_get_unused_block(struct rtsx_chip *chip, int seg_no)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 	u16 phy_blk;
 
@@ -2540,7 +2540,7 @@ static const unsigned short ms_start_idx[] = {0, 494, 990, 1486, 1982, 2478,
 static int ms_arbitrate_l2p(struct rtsx_chip *chip, u16 phy_blk,
 			u16 log_off, u8 us1, u8 us2)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 	int seg_no;
 	u16 tmp_blk;
@@ -2582,7 +2582,7 @@ static int ms_arbitrate_l2p(struct rtsx_chip *chip, u16 phy_blk,
 
 static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct zone_entry *segment;
 	bool defect_flag;
 	int retval, table_size, disable_cnt, i;
@@ -2818,7 +2818,7 @@ BUILD_FAIL:
 
 int reset_ms_card(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	memset(ms_card, 0, sizeof(struct ms_info));
@@ -2905,7 +2905,7 @@ static int mspro_set_rw_cmd(struct rtsx_chip *chip,
 
 void mspro_stop_seq_mode(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	if (ms_card->seq_mode) {
@@ -2923,7 +2923,7 @@ void mspro_stop_seq_mode(struct rtsx_chip *chip)
 
 static inline int ms_auto_tune_clock(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	if (chip->asic_code) {
@@ -2949,7 +2949,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd *srb,
 				struct rtsx_chip *chip, u32 start_sector,
 				u16 sector_cnt)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	bool mode_2k = false;
 	int retval;
 	u16 count;
@@ -3092,7 +3092,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd *srb,
 static int mspro_read_format_progress(struct rtsx_chip *chip,
 				const int short_data_len)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u32 total_progress, cur_progress;
 	u8 cnt, tmp;
@@ -3214,7 +3214,7 @@ static int mspro_read_format_progress(struct rtsx_chip *chip,
 
 void mspro_polling_format_status(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int i;
 
 	if (ms_card->pro_under_formatting &&
@@ -3232,7 +3232,7 @@ void mspro_polling_format_status(struct rtsx_chip *chip)
 int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 		int short_data_len, bool quick_format)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 buf[8], tmp;
 	u16 para;
@@ -3324,7 +3324,7 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 				u8 *buf, unsigned int *index,
 				unsigned int *offset)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 extra[MS_EXTRA_SIZE], page_addr, val, trans_cfg, data[6];
 	u8 *ptr;
@@ -3508,7 +3508,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 				u8 end_page, u8 *buf, unsigned int *index,
 				unsigned int *offset)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, i;
 	u8 page_addr, val, data[16];
 	u8 *ptr;
@@ -3729,7 +3729,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 static int ms_finish_write(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		u16 log_blk, u8 page_off)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval, seg_no;
 
 	retval = ms_copy_page(chip, old_blk, new_blk, log_blk,
@@ -3775,7 +3775,7 @@ static int ms_prepare_write(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 #ifdef MS_DELAY_WRITE
 int ms_delay_write(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	struct ms_delay_write_tag *delay_write = &(ms_card->delay_write);
 	int retval;
 
@@ -3814,7 +3814,7 @@ static inline void ms_rw_fail(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 			u32 start_sector, u16 sector_cnt)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	unsigned int lun = SCSI_LUN(srb);
 	int retval, seg_no;
 	unsigned int index = 0, offset = 0;
@@ -4075,7 +4075,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	u32 start_sector, u16 sector_cnt)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 	if (CHK_MSPRO(ms_card))
@@ -4091,7 +4091,7 @@ int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 
 void ms_free_l2p_tbl(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int i = 0;
 
 	if (ms_card->segment != NULL) {
@@ -4351,7 +4351,7 @@ GetEKBFinish:
 
 int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	int bufflen;
 	int i;
@@ -4435,7 +4435,7 @@ int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 int mg_get_rsp_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	int bufflen;
 	unsigned int lun = SCSI_LUN(srb);
@@ -4495,7 +4495,7 @@ int mg_get_rsp_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	int i;
 	int bufflen;
@@ -4547,7 +4547,7 @@ int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 int mg_get_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	int bufflen;
 	unsigned int lun = SCSI_LUN(srb);
@@ -4604,7 +4604,7 @@ GetICVFinish:
 
 int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 	int bufflen;
 #ifdef MG_SET_ICV_SLOW
-- 
1.9.1


