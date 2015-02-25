X-GM-THRID: 3468768051200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26dddd85f4bffbd9,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr828529lbk.5.1424902233728;
        Wed, 25 Feb 2015 14:10:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.191.168 with SMTP id gz8ls789455lac.16.gmail; Wed, 25 Feb
 2015 14:10:33 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr814564lbo.8.1424902233241;
        Wed, 25 Feb 2015 14:10:33 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id el6si1224041wib.2.2015.02.25.14.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:10:33 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f175.google.com with SMTP id r20so36858154wiv.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hFRoH52k6aESjj3QrHG0ejpWnp4yny3xXzf1wTa4ZEY=;
        b=fgcgKaml8V8dHvu2jBPVe1qk2fAzfyTdXi7IVW6pSxxtqLaDbxaTx+VPGB04Wv9sSH
         hMl7iM/LhX9Xf1RQ8nuaxAstwP12MXhhQ4Q9JwKKNMZFRmKnkD3aMXgr2F3ZXT5ACfKG
         HXOPxlyypsKWWZgVraGyED7ddVs1DLhDVzKrJgf9RDuou7wWkZqnzHOCWJHhZ2kVHTYa
         CnyhVcFEmqb1fR8Nv+//JZKe3Kxo+sbxb9dbTr3/dvNW05zoSiEvmJuMU6RmUgTstwZ1
         MjPPvB4ohpDSkSNO9xK28isiOVOqqON+Eg5QwLwP3zFgaQhjeCEgFzFzDI6xuzhSSwmD
         FChw==
X-Received: by 10.180.104.34 with SMTP id gb2mr13828835wib.7.1424902233150;
        Wed, 25 Feb 2015 14:10:33 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id u18sm66702211wjq.42.2015.02.25.14.10.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 14:10:32 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/3] Staging: i2o: Remove unnecessary 'out of memory' message
Date: Thu, 26 Feb 2015 00:10:20 +0200
Message-Id: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes unnecessay out of memory message fixing the following
checkpach.pl warning in device.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/i2o/device.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
index 2af2255..162a887 100644
--- a/drivers/staging/i2o/device.c
+++ b/drivers/staging/i2o/device.c
@@ -566,7 +566,6 @@ int i2o_parm_table_get(struct i2o_device *dev, int oper, int group,
 
 	opblk = kmalloc(size, GFP_KERNEL);
 	if (opblk == NULL) {
-		printk(KERN_ERR "i2o: no memory for query buffer.\n");
 		return -ENOMEM;
 	}
 
-- 
1.9.1


