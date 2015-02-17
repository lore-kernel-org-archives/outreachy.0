X-GM-THRID: 432606806016
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4a6d4a554d90bddd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr178374wjc.5.1424295804113;
        Wed, 18 Feb 2015 13:43:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls73609lag.102.gmail; Wed, 18 Feb
 2015 13:43:22 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr179392lal.3.1424295802117;
        Wed, 18 Feb 2015 13:43:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id l8si6261365wia.0.2015.02.18.13.43.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 13:43:22 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so1007496wgg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 13:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cb6LaYZUT49+YP9eN1IZSZy2mywfG92ti2EzpvBDHlM=;
        b=vzBntSlSh7FVxJjvR8aCR4IrnCJjTV+BT3QPwPX5J3zCrapFkaoL5jwjdspckkI8ey
         SGZOiM1/v0D8H1ACeSuCPVpfA6uKY1nO2AXXcN52ORonfbSptDogtZBCXKpYN1c3y7ft
         haWBnavch1CsECRU4xO7OA/y3+eG8vB3UqG8xq7ucDWR8YojGi2/fwDYGoeVAzIGXw7F
         6DspRI3qAN/bgN2apWsLDtANHB+dgAmFL1nh7XldFv58onS4dbe2lwMNQgslC5keMGaH
         dl2PcQdm0DChVYSyh91bp4Y8Q5XSELTvrqPJ72twFgk49SoIXdFFjstted6u0q2p4BgE
         y7iQ==
X-Received: by 10.180.21.210 with SMTP id x18mr8797839wie.78.1424295802006;
        Wed, 18 Feb 2015 13:43:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.252])
        by mx.google.com with ESMTPSA id lx10sm2707684wjb.17.2015.02.18.13.43.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 13:43:21 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 0F66A63327; Tue, 17 Feb 2015 23:38:21 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: rts5208: Remove braces around single if-statement
Date: Tue, 17 Feb 2015 23:38:19 +0300
Message-Id: <1424205499-23826-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.02.1502182135090.2248@localhost6.localdomain6>
References: <alpine.DEB.2.02.1502182135090.2248@localhost6.localdomain6>

This patch fixes the following checkpatch.pl warning:
"WARNING: suspect code indent for conditional statements (8, 8)"
By removing unneeded braces around a single if-statement.

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


