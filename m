X-GM-THRID: 432606806016
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4a6d4a554d90bddd,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr145677lam.9.1424290854624;
        Wed, 18 Feb 2015 12:20:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.24.165 with SMTP id v5ls153765wif.25.gmail; Wed, 18 Feb
 2015 12:20:53 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr602846wic.3.1424290853676;
        Wed, 18 Feb 2015 12:20:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-f196.google.com (mail-we0-f196.google.com. [74.125.82.196])
        by gmr-mx.google.com with ESMTPS id l8si6247864wia.0.2015.02.18.12.20.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 12:20:53 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.196 as permitted sender) client-ip=74.125.82.196;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.196 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f196.google.com with SMTP id q59so943030wes.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 12:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TVx23nRzhxsmTT2iTu9UfqqzCH5x0Vz8qBh+2cxReVk=;
        b=lYVskzuf8r7lzpEF74sz4Hb5gaLc4CRf0XC2CoaOSD+fBfBjEM39UkIZ9GZHSBaVCg
         vSqTAGjJBUUzTzKgOrqSsavcSqHvDCdT4YBFiyX10z2ymkoc9c8RKIl4xYNTN9BHEn0/
         WUsJW1uJ1v2lAtTD+YT3Gxe6Hyhv6XdufMagibQvedvsT1JDvauLSoepLUmtncJlw4dB
         MBjb8NLWfuDDrJGZJ74Y7G2EdxrLOD5lnc0lrpK1P03/KD/dUxh3tZqkQnj10ykL4EbA
         dXedhKNLohj+zblQpU6E2D8XFUXoUhZiBIX7WrljnvfbAX7d/5mEVhNgexc92HtY0FN6
         qIKg==
X-Received: by 10.194.62.167 with SMTP id z7mr2218804wjr.106.1424290852842;
        Wed, 18 Feb 2015 12:20:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.252])
        by mx.google.com with ESMTPSA id lg18sm6494957wic.23.2015.02.18.12.20.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 12:20:52 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 86A8C63327; Tue, 17 Feb 2015 22:15:51 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: rts5208: Remove braces around single if-statement
Date: Tue, 17 Feb 2015 22:15:49 +0300
Message-Id: <1424200549-23115-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: suspect code indent for conditional statements (8, 8)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 1161082..42645834 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -519,10 +519,8 @@ static int inquiry(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 #else
 	if (chip->mspro_formatter_enable)
 #endif
-	{
 		if (!card || (card == MS_CARD))
 			pro_formatter_flag = 1;
-	}
 
 	if (pro_formatter_flag) {
 		if (scsi_bufflen(srb) < 56)
-- 
1.9.1


