X-GM-THRID: 6332371296265961472
X-Received: by 10.200.55.144 with SMTP id d16mr5558872qtc.70.1474370130109;
        Tue, 20 Sep 2016 04:15:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.148 with SMTP id e142ls3485009itc.17.canary; Tue, 20
 Sep 2016 04:15:27 -0700 (PDT)
X-Received: by 10.66.187.234 with SMTP id fv10mr5964491pac.50.1474370127213;
        Tue, 20 Sep 2016 04:15:27 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si7700323pfe.0.2016.09.20.04.15.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so807547pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2xFF4an2lu5q47QfFLYgoJaVTe0pmoWU/pN95I2tK3Y=;
        b=mURqvOT/txXOpIX9t8lvFuDLQDTc/NKy/MpAs/sMp78ukqsQyDzk6BfbOkf7ctVv0O
         MVZRvsxxskNRhDF6YiFvILwmCIDgxn3W+L6b19K8cwT3PRkA1ykpu0ItkeZ2NX+7m1f4
         +E+r1Hss2oPiCk+NJVnb+p/OpNEK2qapm6pNDl9TYrWklPRJb1X0CwpoYyMkYh5Caovs
         yFtVB4TbeLX6D2u1JAnjsjvM2LU76Ma+2d9U+kQRJ2fixWWjeRteoy6O88IW+aiACwHR
         IQ/JzxScs/9+raXgM69fzxHzqRKw/zt+QmZrP92xYosNuHCEMKSFYrXIeObEUG/NcZSM
         rNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2xFF4an2lu5q47QfFLYgoJaVTe0pmoWU/pN95I2tK3Y=;
        b=OZ78xgCw68VcxSXC6Jx0uDhSa4vKbW3FERkPFa+nnAyk/P/kK7cIexN84whvm6FVhh
         FHWY4EyHSHdOur8RC1/jxmWzJ0vPQT7DgIh35SBd6p2+3o95IHzejEnuIpfavlATF6Gy
         Y6xUX1f7XOD0iybEhumwSEn/RF6MSTNEgc61mB8NVyz7SZfJOCYiGJmrchWAdeAi8lks
         imuJR2LUA+qt+f11tE036hQNWUOAvR+m7X9X0yYqhkrK8lq6dg9/ANkyiZ4PNGvtiEXc
         nnMDcaGLu9Sww3zVBvnBOO1wGyto4nUSQLJRx/EwismwckFFmJ1+83uPbrzB1qtQCY0n
         e5vA==
X-Gm-Message-State: AE9vXwOIPy79RK5Q8nmEnFwzkRg7Qtu23PFpNLo4ajPTSzFNzBOMol+k420gdS/XU4cuUg==
X-Received: by 10.66.124.198 with SMTP id mk6mr3140351pab.74.1474370127007;
        Tue, 20 Sep 2016 04:15:27 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d4sm25982356paz.20.2016.09.20.04.15.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:26 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:45:18 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/7] staging: rts5208: Remove explicit NULL comparison
Message-ID: <8fa481adacb019a4b56855343bf11c30c8d00823.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces explicit NULL comparison of the form '(x != NULL)' to '(x)' and
'(x == NULL)' to '(!x)'. Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/ms.c        |  2 +-
 drivers/staging/rts5208/rtsx.c      |  2 +-
 drivers/staging/rts5208/rtsx_card.c |  2 +-
 drivers/staging/rts5208/rtsx_scsi.c |  2 +-
 drivers/staging/rts5208/xd.c        | 10 +++++-----
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 91cd37b..9fc64da 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -4077,7 +4077,7 @@ void ms_free_l2p_tbl(struct rtsx_chip *chip)
 	struct ms_info *ms_card = &chip->ms_card;
 	int i = 0;
 
-	if (ms_card->segment != NULL) {
+	if (ms_card->segment) {
 		for (i = 0; i < ms_card->segment_cnt; i++) {
 			vfree(ms_card->segment[i].l2p_table);
 			ms_card->segment[i].l2p_table = NULL;
diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index d75fa8d..d7554f4 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -131,7 +131,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 	struct rtsx_chip *chip = dev->chip;
 
 	/* check for state-transition errors */
-	if (chip->srb != NULL) {
+	if (chip->srb) {
 		dev_err(&dev->pci->dev, "Error: chip->srb = %p\n",
 			chip->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
index 91e62c1..7f78ee7 100644
--- a/drivers/staging/rts5208/rtsx_card.c
+++ b/drivers/staging/rts5208/rtsx_card.c
@@ -984,7 +984,7 @@ int card_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	unsigned int lun = SCSI_LUN(srb);
 	int i;
 
-	if (chip->rw_card[lun] == NULL) {
+	if (!chip->rw_card[lun]) {
 		rtsx_trace(chip);
 		return STATUS_FAIL;
 	}
diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index def53d9..687a7ff 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1397,7 +1397,7 @@ static int trace_msg_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	buf_len = 4 + ((2 + MSG_FUNC_LEN + MSG_FILE_LEN + TIME_VAL_LEN) *
 		TRACE_ITEM_CNT);
 
-	if ((scsi_bufflen(srb) < buf_len) || (scsi_sglist(srb) == NULL)) {
+	if ((scsi_bufflen(srb) < buf_len) || !scsi_sglist(srb)) {
 		set_sense_type(chip, SCSI_LUN(srb),
 			SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
 		rtsx_trace(chip);
diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 126a2dc..2d6a606 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -922,7 +922,7 @@ static void xd_set_unused_block(struct rtsx_chip *chip, u32 phy_blk)
 	}
 	zone = &(xd_card->zone[zone_no]);
 
-	if (zone->free_table == NULL) {
+	if (!zone->free_table) {
 		if (xd_build_l2p_tbl(chip, zone_no) != STATUS_SUCCESS)
 			return;
 	}
@@ -1413,7 +1413,7 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 
 	dev_dbg(rtsx_dev(chip), "xd_build_l2p_tbl: %d\n", zone_no);
 
-	if (xd_card->zone == NULL) {
+	if (!xd_card->zone) {
 		retval = xd_init_l2p_tbl(chip);
 		if (retval != STATUS_SUCCESS)
 			return retval;
@@ -1427,7 +1427,7 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 
 	zone = &(xd_card->zone[zone_no]);
 
-	if (zone->l2p_table == NULL) {
+	if (!zone->l2p_table) {
 		zone->l2p_table = vmalloc(2000);
 		if (!zone->l2p_table) {
 			rtsx_trace(chip);
@@ -1436,7 +1436,7 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 	}
 	memset((u8 *)(zone->l2p_table), 0xff, 2000);
 
-	if (zone->free_table == NULL) {
+	if (!zone->free_table) {
 		zone->free_table = vmalloc(XD_FREE_TABLE_CNT * 2);
 		if (!zone->free_table) {
 			rtsx_trace(chip);
@@ -2237,7 +2237,7 @@ void xd_free_l2p_tbl(struct rtsx_chip *chip)
 	struct xd_info *xd_card = &(chip->xd_card);
 	int i = 0;
 
-	if (xd_card->zone != NULL) {
+	if (xd_card->zone) {
 		for (i = 0; i < xd_card->zone_cnt; i++) {
 			vfree(xd_card->zone[i].l2p_table);
 			xd_card->zone[i].l2p_table = NULL;
-- 
2.7.4


