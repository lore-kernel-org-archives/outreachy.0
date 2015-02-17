X-GM-THRID: 432606806016
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4a6d4a554d90bddd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr202518lbb.14.1424298389700;
        Wed, 18 Feb 2015 14:26:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.9 with SMTP id o9ls87707lao.83.gmail; Wed, 18 Feb 2015
 14:26:29 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr203561lbc.22.1424298389051;
        Wed, 18 Feb 2015 14:26:29 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-f196.google.com (mail-we0-f196.google.com. [74.125.82.196])
        by gmr-mx.google.com with ESMTPS id ew5si8909095wid.1.2015.02.18.14.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:26:29 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.196 as permitted sender) client-ip=74.125.82.196;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 74.125.82.196 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f196.google.com with SMTP id u56so1116970wes.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 14:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wJ/iPF1SYJZXOXa2tUGhXo8X2QduyPlLGXxYClF/DfY=;
        b=aVlcZIsGPtlkh62AzvFStzarwjGcsJmqFok+WoQHwPghplWvS6dWEWKU7tGUmTYtGP
         lDMvBPZNtFXkni3QSHApYo31/zdxmLiQk9KNfMfRd/A1VUzMK5d1fL7nw1fw+Ipa5TRJ
         OMQXWOGl3LXxsoDZkHuCJXyA/gkJmGf20N6r9hkFI/wKVl60Kuta19fZmB3Zw7oLIzS+
         OrXZrb2OagUa/I8m3Se0NWAgwm5CX3sylFhWqK+NGtdK4J6XxQF65VvGntSADDr6HIGE
         6qM8S0CGauBTG0Unf7JToj7g63so/SE4KTINpPdAxCuslH1o6K0j7g5AUrp8c1rCKei2
         JV3Q==
X-Received: by 10.180.85.103 with SMTP id g7mr9085045wiz.19.1424298388958;
        Wed, 18 Feb 2015 14:26:28 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.252])
        by mx.google.com with ESMTPSA id 18sm34572629wjr.46.2015.02.18.14.26.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:26:28 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1777163327; Wed, 18 Feb 2015 00:21:27 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2] Staging: rts5208: Remove braces around single if-statement
Date: Wed, 18 Feb 2015 00:21:25 +0300
Message-Id: <1424208085-24288-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.02.1502182316160.2248@localhost6.localdomain6>
References: <alpine.DEB.2.02.1502182316160.2248@localhost6.localdomain6>

This patch removes unneeded braces around a single if-statement.
This problem was found using checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v2: changed commit message

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


