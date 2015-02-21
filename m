X-GM-THRID: 1763983753216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3f38c650c93258fa,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr281442wjc.2.1424521816722;
        Sat, 21 Feb 2015 04:30:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls261221wic.8.canary; Sat, 21 Feb
 2015 04:30:16 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr242158wib.4.1424521816414;
        Sat, 21 Feb 2015 04:30:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id ev8si285589wib.3.2015.02.21.04.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:30:16 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x244.google.com with SMTP id em10so3339748wid.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZE07CyXk3D2CsrbXFdZIMWzHi4mUoeweN913aUWquSo=;
        b=KxcmLPrjhkjrupPWRD16KsYf9lS/G51FxJ9ZiElj9PlzvG1w8YYoNSYQQmHMlXMFwd
         W7gsVHcrpdBojojr4BBcf5GOnXjFU3doh4H5Ywjz2hcipo4ITudDAnaY+kKehW0AwXLg
         UxNzc+CpwzR2Qr8d130N+OOyJte5x7QdMEI7lfQWeNUg/JSaF1x037sPK/yIMFDyD02w
         iQd1oyQi53ReXDAfqT63TC1/q38stcStEnjiGgFEOp/ORa3mu24j3rdD7/u39OxHB4ql
         DpoVP3oYm+Dc31pHpnpfiW0EjWilO8VExhg1rajimlxnJjQN3B4tTnEK5WgvBrhRmihE
         78uQ==
X-Received: by 10.180.106.103 with SMTP id gt7mr3586022wib.59.1424521816337;
        Sat, 21 Feb 2015 04:30:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id ev7sm46452935wjb.47.2015.02.21.04.30.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 04:30:15 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rts5208: Deleted space
Date: Sat, 21 Feb 2015 14:30:08 +0200
Message-Id: <1424521808-11278-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding
style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rts5208/ms.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index b4612fb..7454634 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -781,7 +781,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
 	buf[4] = 0;
 	buf[5] = 0;
 
-	retval = ms_write_bytes(chip, PRO_WRITE_REG , 6, NO_WAIT_INT, buf, 6);
+	retval = ms_write_bytes(chip, PRO_WRITE_REG, 6, NO_WAIT_INT, buf, 6);
 	if (retval != STATUS_SUCCESS)
 		TRACE_RET(chip, STATUS_FAIL);
 
@@ -1291,7 +1291,7 @@ static int ms_write_extra_data(struct rtsx_chip *chip,
 	for (i = 6; i < MS_EXTRA_SIZE + 6; i++)
 		data[i] = buf[i - 6];
 
-	retval = ms_write_bytes(chip, WRITE_REG , (6+MS_EXTRA_SIZE),
+	retval = ms_write_bytes(chip, WRITE_REG, (6+MS_EXTRA_SIZE),
 				NO_WAIT_INT, data, 16);
 	if (retval != STATUS_SUCCESS)
 		TRACE_RET(chip, STATUS_FAIL);
@@ -1342,7 +1342,7 @@ static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 	data[4] = 0x20;
 	data[5] = page_num;
 
-	retval = ms_write_bytes(chip, WRITE_REG , 6, NO_WAIT_INT, data, 6);
+	retval = ms_write_bytes(chip, WRITE_REG, 6, NO_WAIT_INT, data, 6);
 	if (retval != STATUS_SUCCESS)
 		TRACE_RET(chip, STATUS_FAIL);
 
@@ -1619,7 +1619,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		data[4] = 0x20;
 		data[5] = i;
 
-		retval = ms_write_bytes(chip, WRITE_REG , 6, NO_WAIT_INT,
+		retval = ms_write_bytes(chip, WRITE_REG, 6, NO_WAIT_INT,
 					data, 6);
 		if (retval != STATUS_SUCCESS)
 			TRACE_RET(chip, STATUS_FAIL);
@@ -1988,7 +1988,7 @@ RE_SEARCH:
 		RTSX_WRITE_REG(chip, PPBUF_BASE2, 0xFF, 0x88);
 		RTSX_WRITE_REG(chip, PPBUF_BASE2 + 1, 0xFF, 0);
 
-		retval = ms_transfer_tpc(chip, MS_TM_WRITE_BYTES, WRITE_REG , 1,
+		retval = ms_transfer_tpc(chip, MS_TM_WRITE_BYTES, WRITE_REG, 1,
 					NO_WAIT_INT);
 		if (retval != STATUS_SUCCESS)
 			TRACE_RET(chip, STATUS_FAIL);
-- 
1.9.1


