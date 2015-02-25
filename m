X-GM-THRID: 3468768051200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26dddd85f4bffbd9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.202 with SMTP id qs10mr798263lbb.24.1424902238177;
        Wed, 25 Feb 2015 14:10:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.137 with SMTP id s9ls797619las.15.gmail; Wed, 25 Feb
 2015 14:10:37 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr814590lbo.8.1424902237659;
        Wed, 25 Feb 2015 14:10:37 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id cl5si1219328wib.3.2015.02.25.14.10.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:10:37 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ex7so8435994wid.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/Zs/61sB9n8FOD4KSVrTctnTaTCpoKJmyySlAne1HvU=;
        b=qCgbcj/JheyO4GEtC1G/E8HEX4GykR+NBD0Ufs68gSMT7uYYg4GsH94eQ23SCHU/Hx
         pWSYD/4CPKSWrBvVaVRIuzGOq2H4y8UeXVVgg6XyTSGwRDpH2sEbhD3BYbIkG9YGLK9d
         bJr/G+LM3De1ezveHg1yfP6jJ7PmVosC/3LwBYksNdpnYHTtG+TdweZvkcxgJt1FFs4n
         he2U5EcmS6AJba8QUERGRjJMuevjrC7feO+to5mON7XZMqK/X7riWFv6zoLwZ2nh9AX9
         9+CqShi5RK4jBquagIR1id+5km5Fx3/M+cGgEGd8UeSEhFRdXp3TF0rZSlQNAXWs3TEl
         K1GA==
X-Received: by 10.180.104.66 with SMTP id gc2mr34779866wib.34.1424902237570;
        Wed, 25 Feb 2015 14:10:37 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id u18sm66702211wjq.42.2015.02.25.14.10.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 14:10:36 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/3] Staging: i2o: Remove unnecessary braces
Date: Thu, 26 Feb 2015 00:10:21 +0200
Message-Id: <1424902222-10105-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>

Brackets were removed from the expression that containing single
statement. Removed following checkpatch.pl warnings:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/i2o/device.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
index 162a887..e47496c 100644
--- a/drivers/staging/i2o/device.c
+++ b/drivers/staging/i2o/device.c
@@ -565,9 +565,8 @@ int i2o_parm_table_get(struct i2o_device *dev, int oper, int group,
 		size += 4 - size % 4;
 
 	opblk = kmalloc(size, GFP_KERNEL);
-	if (opblk == NULL) {
+	if (opblk == NULL)
 		return -ENOMEM;
-	}
 
 	opblk[0] = 1;		/* operation count */
 	opblk[1] = 0;		/* pad */
-- 
1.9.1


