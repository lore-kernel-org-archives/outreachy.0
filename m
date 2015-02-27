X-GM-THRID: 4433146544128
X-Received: by 10.112.130.70 with SMTP id oc6mr2010197lbb.13.1425036125043;
        Fri, 27 Feb 2015 03:22:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls94696wia.30.canary; Fri, 27 Feb
 2015 03:22:04 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr388182wib.7.1425036124689;
        Fri, 27 Feb 2015 03:22:04 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id i7si98258wif.0.2015.02.27.03.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:22:04 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id a1so19574470wgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vW1gn7GaChBv5O2NxUDpj5wJ/FirmM6PuYOnnO4gn0g=;
        b=nrRkWof0rXmkGABQrnwTHSixj3WMT27cd9B2M5kchRKQHJ+ltkGEfk8PBrxJDqe5f+
         SQWab3cn9ACKnlH8Wu/y0so3KaRe8uMa7ofqfF3kJt/jAQmWdPPnsgoB0j1qcLKHcNYh
         vvLbIzwDPAg/rpQN8Z2kfiRPe9WFdVgHpUMItlvp4tuPrh/oQunNXxezENxqeE0/HR8x
         0BDy6BKNPm0k20Q+9oHDZwTmA3Tp9YJ1ISyZQhW+FDyglbQKzqg/x0s3Gnq4sQgYckIw
         ai7S+4pD7MyyvVnq3T6hrx5pJ560rw3Ef1tUr1XoABjDUHFOSqMhbzzdNweuqvWQJ2Oe
         7YwA==
X-Received: by 10.180.76.178 with SMTP id l18mr5385726wiw.36.1425036124604;
        Fri, 27 Feb 2015 03:22:04 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id v6sm2385227wix.8.2015.02.27.03.22.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 03:22:04 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: i2o: Fix quoted string split across lines
Date: Fri, 27 Feb 2015 13:21:57 +0200
Message-Id: <1425036117-13390-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "quoted string split across lines warning" warning in
exec-osm.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/i2o/exec-osm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/exec-osm.c b/drivers/staging/i2o/exec-osm.c
index 16d857d..dce16e4 100644
--- a/drivers/staging/i2o/exec-osm.c
+++ b/drivers/staging/i2o/exec-osm.c
@@ -507,8 +507,8 @@ static int i2o_exec_reply(struct i2o_controller *c, u32 m,
 	 * to aid in debugging.
 	 *
 	 */
-	printk(KERN_WARNING "%s: Unsolicited message reply sent to core!"
-	       "Message dumped to syslog\n", c->name);
+	printk(KERN_WARNING "%s: Unsolicited message reply sent to core! Message dumped to syslog\n",
+			c->name);
 	i2o_dump_message(msg);
 
 	return -EFAULT;
-- 
1.9.1


