X-GM-THRID: 356598677504
X-Received: by 10.152.6.232 with SMTP id e8mr90208laa.2.1424281870863;
        Wed, 18 Feb 2015 09:51:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.101 with SMTP id d5ls1239659wie.53.canary; Wed, 18 Feb
 2015 09:51:10 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr206997wib.6.1424281870561;
        Wed, 18 Feb 2015 09:51:10 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-f195.google.com (mail-we0-f195.google.com. [74.125.82.195])
        by gmr-mx.google.com with ESMTPS id ev8si6228912wib.3.2015.02.18.09.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.195 as permitted sender) client-ip=74.125.82.195;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.195 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f195.google.com with SMTP id k11so742286wes.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 09:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=b4Y9AAUrajzrHIV1pAB3Hy/ZEkA73Zq1JdD0MdzHARs=;
        b=qYZC4Osdh6kMT0ZZMaTxDSKB3cjRfns3Owx4hhbkslT8SVtssDVNxphSS7bun9V2Uz
         19VA+UbfKqUesu9xAedil8WCajoDIJarP3BUXU931bT5b/aVlynUj0e6FkUHb3q43x4N
         9sbRnForpOe7X3gn4mG/G+t1PsmQ+JuzsORX4qgBYD05lBdG/3e+7Z6IIz9VnnmsJOc0
         1/USnZoP9Z2D/A7QRzVXOfEcQ6e7POQYWIOwBKLKQayVXA6lOtz0SE163XUmgf6J44m3
         YPtoL8Pooht13vQjZpvWzP7eXxRtsb2g1wFpY/yA31qsfw1JzAgy2xbD3W9fHa1YdyyG
         SxSg==
X-Received: by 10.194.187.236 with SMTP id fv12mr503073wjc.131.1424281870476;
        Wed, 18 Feb 2015 09:51:10 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.252])
        by mx.google.com with ESMTPSA id gi3sm30466450wic.15.2015.02.18.09.51.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:51:09 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 8113A6330D; Tue, 17 Feb 2015 19:46:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: rts5208: Fix code indent warning style
Date: Tue, 17 Feb 2015 19:46:06 +0300
Message-Id: <1424191566-22467-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

Patch to the rtsx_scsi.c file for the following checkpatch.pl warning:
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


