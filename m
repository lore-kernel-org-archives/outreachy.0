X-GM-THRID: 1577680109568
X-Received: by 10.112.50.106 with SMTP id b10mr1545541lbo.8.1424466839959;
        Fri, 20 Feb 2015 13:13:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.9 with SMTP id gq9ls180545wib.23.canary; Fri, 20 Feb
 2015 13:13:59 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr620437wix.0.1424466839678;
        Fri, 20 Feb 2015 13:13:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id i7si189742wif.0.2015.02.20.13.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:13:59 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x243.google.com with SMTP id b13so4516439wgh.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/fAmU/J08qUtI6z+NHxIzcXeXnmBqCDeoORIJ2isWfs=;
        b=z7CDR/YnXgM7tCxHcysXU6Nu1s7fTem/nBdM3EGaKVy21ZLDWSPCDz8k84ARf4oc20
         Kj7fpiT+nhw0dDjdy4qTYAKhNXiqYXwcgYhEzCyV/soFg9LElmANXhVx3CpvyhdPghbf
         qybkNcDjgdq7MDO0K7mQpdkLqhkEFhSn0REOPakel+yAO2Dx6LoYHGYJiL04XQ9rO+wM
         WIRclu7QMqdg6l6Csv93Pr8+u9S6x+UDCbdvT6YZS9sQT8MCR2G1EZxrqKmReKCbSncz
         8MtfqBIj+lCinsAPu8htOx7aewDkgI1sEZsqmYvR1aejxteXP941JORA4OsdMJx3HIRO
         J+NA==
X-Received: by 10.194.78.144 with SMTP id b16mr22474032wjx.18.1424466839604;
        Fri, 20 Feb 2015 13:13:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id ev7sm43726871wjb.47.2015.02.20.13.13.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:13:59 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: unisys: virthba: Deleted space
Date: Fri, 20 Feb 2015 23:13:51 +0200
Message-Id: <1424466831-7979-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding
style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/unisys/virthba/virthba.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/virthba/virthba.c b/drivers/staging/unisys/virthba/virthba.c
index d7a629b..82fcb3b 100644
--- a/drivers/staging/unisys/virthba/virthba.c
+++ b/drivers/staging/unisys/virthba/virthba.c
@@ -1438,7 +1438,7 @@ static ssize_t enable_ints_write(struct file *file,
 		return -EFAULT;
 	}
 
-	i = kstrtoint(buf, 10 , &new_value);
+	i = kstrtoint(buf, 10, &new_value);
 
 	if (i != 0) {
 		LOGERR("Failed to scan value for enable_ints, buf<<%.*s>>",
-- 
1.9.1


