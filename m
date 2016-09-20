X-GM-THRID: 6332371296265961472
X-Received: by 10.36.253.193 with SMTP id m184mr802614ith.39.1474370100153;
        Tue, 20 Sep 2016 04:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls1696813ote.47.gmail; Tue, 20 Sep
 2016 04:14:59 -0700 (PDT)
X-Received: by 10.129.34.87 with SMTP id i84mr5830519ywi.166.1474370099854;
        Tue, 20 Sep 2016 04:14:59 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si5929293pab.2.2016.09.20.04.14.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so844704pfl.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b6AFwmyhLs5+gxLp0Ze2He4FAIVeu61z6tzO7LiA1Hw=;
        b=VtC9HE+RtaWIVxwgfOouvkFLkgywFdm/1JhYQhdVAC4oz6HZGT1ZhhUnm+NsxOXORL
         iBSa5GD2v5KOJDuPC+fw+qHOKPE1iZfEKF2rfyQ2mbBVg8hJMDOaQTiHZ8pIG5Iqqopc
         DzSoCpgOaWtTQc/tzTa7gH2w2b1ONyBih4GRbKJhg5e33foJVnRZQIBK6v5YMUV5NFoc
         tf/c1ol785wrhYeUhItpc0U8tEFhLB2j+vRQv95dgkPX3robwep9ERnhWH29s4AwCCGs
         SITIZ9nKdThITAddbhNR0Rn9kNbb1GwsC/jqSLmajPP3aUK3dBROwL1/SJRHiMLOIwyH
         Yb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b6AFwmyhLs5+gxLp0Ze2He4FAIVeu61z6tzO7LiA1Hw=;
        b=PQwipUN2aFZwXmLbLLtKrmJ/zODPIDiYXqNUx4afBOWMPGxVEb3gO/cNwG8PAF+97E
         W/dQ0t1zjgMEeFYnBFP76ztQmhuR87o6eOxyALPF/DFV6sHoXDZ1WvwWyqfkhjM9QQPW
         h4/HTHNoFar36Xf2+tCxXeeTA/MJZ5zwbAIuC9iFtYyIy3FYUVsIQWux2NKpiZ0Htnbo
         okUJ4rhlcqjeogyn1qJL6bOnHrcVk18oFq+ALqEWOokQi6Re5lS5lJebL3a5PM7wn4ir
         DJ1DVaOUHklM3ba0SzgHkJCxEG7g98DhwBpfl65Aevg8k1XN/c30OloeRFAOX7TQ9PxE
         MWTA==
X-Gm-Message-State: AE9vXwPJOXqAIc9aD/J7dHUF+8nMWJj5cvVYfS0fP61N6hyBXLvB8WTMkUKJsF3j9idlqw==
X-Received: by 10.98.157.83 with SMTP id i80mr32053333pfd.162.1474370099486;
        Tue, 20 Sep 2016 04:14:59 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k69sm69584363pfb.85.2016.09.20.04.14.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:14:58 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:44:51 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/7] staging: rts5208: Remove unnecessary parentheses
Message-ID: <e894263bc515ceb1cd5d88ec31698b0db25ab2d4.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary parentheses from an expression of the form &(x).
Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/ms.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index f927ba6..7923230 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2465,7 +2465,7 @@ static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log_off)
 	if (!ms_card->segment)
 		return 0xFFFF;
 
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 
 	if (segment->l2p_table)
 		return segment->l2p_table[log_off];
@@ -2482,7 +2482,7 @@ static void ms_set_l2p_tbl(struct rtsx_chip *chip,
 	if (!ms_card->segment)
 		return;
 
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 	if (segment->l2p_table)
 		segment->l2p_table[log_off] = phy_blk;
 }
@@ -2494,7 +2494,7 @@ static void ms_set_unused_block(struct rtsx_chip *chip, u16 phy_blk)
 	int seg_no;
 
 	seg_no = (int)phy_blk >> 9;
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 
 	segment->free_table[segment->set_index++] = phy_blk;
 	if (segment->set_index >= MS_FREE_TABLE_CNT)
@@ -2509,7 +2509,7 @@ static u16 ms_get_unused_block(struct rtsx_chip *chip, int seg_no)
 	struct zone_entry *segment;
 	u16 phy_blk;
 
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 
 	if (segment->unused_blk_cnt <= 0)
 		return 0xFFFF;
@@ -2538,7 +2538,7 @@ static int ms_arbitrate_l2p(struct rtsx_chip *chip, u16 phy_blk,
 	u16 tmp_blk;
 
 	seg_no = (int)phy_blk >> 9;
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 	tmp_blk = segment->l2p_table[log_off];
 
 	if (us1 != us2) {
@@ -2602,7 +2602,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 	else
 		table_size = 496;
 
-	segment = &(ms_card->segment[seg_no]);
+	segment = &ms_card->segment[seg_no];
 
 	if (!segment->l2p_table) {
 		segment->l2p_table = vmalloc(table_size * 2);
@@ -3760,7 +3760,7 @@ static int ms_prepare_write(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 int ms_delay_write(struct rtsx_chip *chip)
 {
 	struct ms_info *ms_card = &chip->ms_card;
-	struct ms_delay_write_tag *delay_write = &(ms_card->delay_write);
+	struct ms_delay_write_tag *delay_write = &ms_card->delay_write;
 	int retval;
 
 	if (delay_write->delay_write_flag) {
@@ -3806,7 +3806,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	u8 start_page, end_page = 0, page_cnt;
 	u8 *ptr;
 #ifdef MS_DELAY_WRITE
-	struct ms_delay_write_tag *delay_write = &(ms_card->delay_write);
+	struct ms_delay_write_tag *delay_write = &ms_card->delay_write;
 #endif
 
 	ms_set_err_code(chip, MS_NO_ERROR);
@@ -4696,7 +4696,7 @@ SetICVFinish:
 
 void ms_cleanup_work(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 
 	if (CHK_MSPRO(ms_card)) {
 		if (ms_card->seq_mode) {
@@ -4761,7 +4761,7 @@ int ms_power_off_card3v3(struct rtsx_chip *chip)
 
 int release_ms_card(struct rtsx_chip *chip)
 {
-	struct ms_info *ms_card = &(chip->ms_card);
+	struct ms_info *ms_card = &chip->ms_card;
 	int retval;
 
 #ifdef MS_DELAY_WRITE
-- 
2.7.4


