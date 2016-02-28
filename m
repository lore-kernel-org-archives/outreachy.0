X-GM-THRID: 6256220277260156928
X-Received: by 10.129.131.206 with SMTP id t197mr7531748ywf.50.1456639793066;
        Sat, 27 Feb 2016 22:09:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.215 with SMTP id 84ls942298ior.97.gmail; Sat, 27 Feb
 2016 22:09:52 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr7924568pfd.0.1456639792617;
        Sat, 27 Feb 2016 22:09:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id y20si796800pfa.2.2016.02.27.22.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 22:09:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fy10so73440154pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 22:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aCP6AQnQYENacVx35Umq/x7w6ODc504pvEIyy8CgLQY=;
        b=WodqoD1DWzaVoK+SiaMVzKAXXZt3aUS/BLaz0SNiiLqiquPIo8OL9DzmOkBzh9OLGL
         s4qUVDmf80N3O02JMfGB+H23OYu8NmpRHcMuj5plt2UiMtEiL5vrwyyvUhQd5dxmCISw
         G2MfYRsLRi//7qfo74KUiO7Nt5YsN9gNZtW5mU59wh1647ywsCgAWc8d9LSubVcJxo64
         SyKPzHplTGJWDOGNpMwYPjUDPDYTdBAMAxlHeJXw6II3I2Ce35DH145qodTMYFwSMZw6
         8hNTW5OQ2JCuZ8a4motnRvwIt5Eg2alvsAo7wvLNslq1yX3YfJEVNf/ITJ1tkJmtrf76
         DxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aCP6AQnQYENacVx35Umq/x7w6ODc504pvEIyy8CgLQY=;
        b=aTICZFJDPC40Z81MYiua60Uanp0oJOz9zKczYNIgDsFKJakSVcRFZUDZYAay6sUKMa
         j+k0r4UZeLWXPaMDUjVL9tg/Lt1MTQko2xTnb+jKdpmtdR9ib7e0ZHhjj8/DY1N0Kx0G
         IX8RamlUd2C1nKuht/fBqjoXQWjPsCmiGmeJXcCZ8lHH6aHai9Axc1oDYT2Vc+lY+FQo
         q2LIiROP+AiGxENpzZpubWb1rjhayBWEuDTiIBUj5oNIGh8+90Ys0Vh3lshnwecoXsi9
         yiSh8tlfybLuBaXdCym+qHe3VN4Pu0WwSsaMidHkjaAk6Df+wrcfFnIMaQHH2xM+JB9+
         BTZg==
X-Gm-Message-State: AD7BkJJkMR8815Xe1BU2+jrkXte2K6qIfJ1h8xezz40ZukqO7X0snQhZ+OEWF8aXRfjCHQ==
X-Received: by 10.66.187.36 with SMTP id fp4mr13675641pac.47.1456639792430;
        Sat, 27 Feb 2016 22:09:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.200])
        by smtp.gmail.com with ESMTPSA id fc8sm29452268pab.21.2016.02.27.22.09.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 22:09:51 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 11:39:41 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: media: Cleanup dmesg output
Date: Sun, 28 Feb 2016 11:39:40 +0530
Message-Id: <1456639780-8087-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch does cleanup of dmesg output by removing printing of function
name because printing device name is sufficient. This makes the function
dev_err more compact and readable. Thus the  __func__ argument can be
dropped.
Done using coccinelle:

@r1@
expression e,x;
expression g;
@@
dev_err(e,g,__func__,x)

@script:python b@
g2 <<r1.g;
y;
@@
if(g2.find("%s:")==True):
	coccinelle.y=g2[5:]
elif(g2.find("%s")==True):
	coccinelle.y=g2[4:]
coccinelle.y='"'+coccinelle.y

@c@
expression  r1.g;
identifier b.y;
expression r1.e,r1.x;
@@
- dev_err(e,g,__func__,x)
+ dev_err(e,y,x)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 2218d00..0818212 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -181,8 +181,7 @@ static void deregister_from_lirc(struct sasem_context *context)
 	retval = lirc_unregister_driver(minor);
 	if (retval)
 		dev_err(&context->dev->dev,
-			"%s: unable to deregister from lirc (%d)\n",
-			__func__, retval);
+			"unable to deregister from lirc (%d)\n", retval);
 	else
 		dev_info(&context->dev->dev,
 			 "Deregistered Sasem driver (minor:%d)\n", minor);
-- 
1.9.1


