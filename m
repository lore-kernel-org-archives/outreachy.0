X-GM-THRID: 6261652924995207168
X-Received: by 10.112.138.98 with SMTP id qp2mr2521372lbb.4.1457904680905;
        Sun, 13 Mar 2016 14:31:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.76 with SMTP id d73ls444867wma.21.canary; Sun, 13 Mar
 2016 14:31:20 -0700 (PDT)
X-Received: by 10.194.239.163 with SMTP id vt3mr2464514wjc.3.1457904680410;
        Sun, 13 Mar 2016 14:31:20 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id 71si423079wmp.0.2016.03.13.14.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 14:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id l68so83488175wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 14:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yN/7Z4dewSFlk6q8CclaaNZIWeNYNxvRghqYIC0sRkk=;
        b=CvCGFROt4aGXgU6E4VrGq5bQBEY51NqaFf2FJ5VigXLRyA8r8NifZANG95TLHqCn92
         azOUOpDe4mBrzVwXitSFQWBxKnv80K5g1NbE6tn/fhbfoH9gjh7p8EG2Y29zPNaFT0ft
         dLLWspo0LepTtyMnYWKDgUHk2klQ4AuQYv1IVLwm488THgXd3RiVIaQHxBBxtTRABKL+
         NuGkjz4Ik5JD/BcaRIyebOF1KPm6ukb2aJJ4jPsg3ME3/bcTz7eGaTywCUoBipBThyDo
         I/hMfwWPeoh3CyimGy/dwygzncb3FOOoG3fmXJUFU8fyDUIOuBylkQmDykPjiF0QIb8z
         l5Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yN/7Z4dewSFlk6q8CclaaNZIWeNYNxvRghqYIC0sRkk=;
        b=D88Iqj/3mh4jHemKzX5Au3ZEkL3NwwinGBtxFuJqAmyF167vk0n/j/mYcYdHLRvAps
         94hko8YBKWto2mj33Az1t14D1hTXaTnGE22Lr0jF9fmq7IDrNr84guKZp43KbJXx3raj
         T7x3UIQa4MGnJBYPhPZjvdcgvlDQ+NcaurxeatgzOGvCJFAM57XsDKizl0NXVn0LCx2i
         CulM/WHsApjBLFiLenrxiavKUneLqbpXdUJU0HZya/4FsNrGuNqvHUhsjPYeOv54A1dN
         xwffTX2cx5eN9jkaxpjE6bbAO7WsDBYYVi8kYAvWJLKRZpXgZ6rKwhgVy20N7kVAtO86
         5+JQ==
X-Gm-Message-State: AD7BkJIaziJFq8qu54pRi6FylVnh0WwihR7QHkUpQOCEeytOMhSrMfn+kJ1fQ2Eadri59Q==
X-Received: by 10.28.91.83 with SMTP id p80mr15106506wmb.48.1457904680204;
        Sun, 13 Mar 2016 14:31:20 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.12.73.44])
        by smtp.gmail.com with ESMTPSA id k124sm13077858wmb.11.2016.03.13.14.31.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 14:31:19 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rts5208: Add space around '+'
Date: Sun, 13 Mar 2016 23:31:08 +0200
Message-Id: <1457904668-6120-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rts5208/ms.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 44d79ef..1481ef0 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2693,7 +2691,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 		}
 
 		if ((log_blk < ms_start_idx[seg_no]) ||
-				(log_blk >= ms_start_idx[seg_no+1])) {
+				(log_blk >= ms_start_idx[seg_no + 1])) {
 			if (!(chip->card_wp & MS_CARD)) {
 				retval = ms_erase_block(chip, phy_blk);
 				if (retval != STATUS_SUCCESS)
@@ -3842,7 +3840,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	start_page = (u8)(start_sector & ms_card->page_off);
 
 	for (seg_no = 0; seg_no < ARRAY_SIZE(ms_start_idx) - 1; seg_no++) {
-		if (log_blk < ms_start_idx[seg_no+1])
+		if (log_blk < ms_start_idx[seg_no + 1])
 			break;
 	}
 
@@ -4274,7 +4272,7 @@ int mg_set_leaf_id(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	memset(buf1, 0, 32);
 	rtsx_stor_get_xfer_buf(buf2, min_t(int, 12, scsi_bufflen(srb)), srb);
 	for (i = 0; i < 8; i++)
-		buf1[8+i] = buf2[4+i];
+		buf1[8 + i] = buf2[4 + i];
 
 	retval = ms_write_bytes(chip, PRO_WRITE_SHORT_DATA, 32, WAIT_INT,
 				buf1, 32);
@@ -4409,10 +4407,10 @@ int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	rtsx_stor_get_xfer_buf(buf, bufflen, srb);
 
 	for (i = 0; i < 8; i++)
-		buf[i] = buf[4+i];
+		buf[i] = buf[4 + i];
 
 	for (i = 0; i < 24; i++)
-		buf[8+i] = 0;
+		buf[8 + i] = 0;
 
 	retval = ms_write_bytes(chip, PRO_WRITE_SHORT_DATA,
 				32, WAIT_INT, buf, 32);
@@ -4521,10 +4519,10 @@ int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	rtsx_stor_get_xfer_buf(buf, bufflen, srb);
 
 	for (i = 0; i < 8; i++)
-		buf[i] = buf[4+i];
+		buf[i] = buf[4 + i];
 
 	for (i = 0; i < 24; i++)
-		buf[8+i] = 0;
+		buf[8 + i] = 0;
 
 	retval = ms_write_bytes(chip, PRO_WRITE_SHORT_DATA, 32, WAIT_INT,
 				buf, 32);
-- 
1.9.1


