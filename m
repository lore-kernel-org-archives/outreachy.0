X-GM-THRID: 6466090633212723200
X-Received: by 10.13.202.212 with SMTP id m203mr16411433ywd.77.1505504690837;
        Fri, 15 Sep 2017 12:44:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls7620487iog.38.gmail; Fri, 15
 Sep 2017 12:44:50 -0700 (PDT)
X-Received: by 10.99.7.132 with SMTP id 126mr15938095pgh.163.1505504690161;
        Fri, 15 Sep 2017 12:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504690; cv=none;
        d=google.com; s=arc-20160816;
        b=Xy+LPUOQJKWzcKjoUduCpRUXC0lrQhGWSxCimHYXx9ViG3A8d7NJAgvs2rSmOybcRK
         ctBJQDSEjj6EERyFD/vpM5gxy7R0kRKtaxtQyoRKOqFxgvqlGwQ9RLq3lfztYFtKKEl1
         4Rnjweg9hFkm5lAsYMMbovKd+KGZ1ShzvagJG99XzXbcqm0Fgs6ezcS/SexJs7g9tekj
         FIEWmFe/JM7mluDDiNXn2b1OCpVnBjfXkK9qycXqXmCbWKd6BvvU9zxRM4Yd4kVpQkgZ
         22ULZt5qoe/87b78xc1FBUvP7jvXoSgFizyPKh1normdnm53G13XZMr9R4U7Wqws9CFo
         AwHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=aPZH2d+s4GEs8lcljLYq8J2cxbU4zDyrQk/1X/0wFBs=;
        b=lblL77xtuYgoGS/JVGoJZPrOj42HIRIzoZWZnCpzaSfv9pVUb+lTH+WRoW9lmznPxS
         4DBoRQSzPGNUf+6XpLKl2CxD6ApE4gU3IS8E/rzRY4IvjNf6CrWqj1GunfYuKah0/ZIT
         /cYcmPUhDLbFLXlKsDqWkiisZUexNC4xyt9VJzOs3D2rvXU2025LFUQVSdtUDGZOU7yw
         p6gDeFj0PXmdHqnW9aLxJQLl8py3CxRhnQXd5iYRHiO0uYNG5uxWZz6ydGH9ze1omTgI
         fjIPLk/QJUyLOzDJLolaZ6ftr6NNvgkQf+ZuGIcUV0TBO+zWTIgobbk5H5e3HF44Wwj3
         gmlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u687Z++5;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f189si160484pfa.1.2017.09.15.12.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u687Z++5;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so1662700pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 12:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aPZH2d+s4GEs8lcljLYq8J2cxbU4zDyrQk/1X/0wFBs=;
        b=u687Z++5aWnxCxiGRA0AIhBQZ5iG1HRgeNowWFDPqEYdEMSvXCfVpbN71t3eQ2VyLw
         TzYzLQY3a7t0n+gH8CPjPBA4dzmbsXdcFGWQJnMpb4tFoPhpSvLgjRlq1QXV1ki9jUGh
         Xcz+0bn+uAe8GThYAdwdyhLmI1Xg3xgV3rMgZlVxdgJnO9THVYlOmafr5adBalWwRnGr
         HZU4oldbOIC4ptiGEMiKsGjhMktXLidpW2mx5LYscFFZ8W7k/5n55M7aJr/8ruZOlFeD
         lLtci3oudI/96v4YR0K0ORjMLXILc4ngJmiiCBBMBi2AS3ZSrQup0RXr/X6R+LGvipLE
         FjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aPZH2d+s4GEs8lcljLYq8J2cxbU4zDyrQk/1X/0wFBs=;
        b=k2ZOjjxG7EWg76kEyvo1fRaryLzXrQKFbD1g0sMarHvXhbLFxXWsEd7FYi9+ONKvrK
         EMKr03BunEo3meEshdjWp+Lc//ZJcpLSEMfLxxe4TjHNKTdjqeu145cJg0HpJWt/T8W3
         2gCZryzHQmzsPjE6hJ1SDUT2Lt+97HSs9pJhtrLfemTL6w0uKFEIgnUxKYQDic69/GZr
         2QEPo2ZB45d/JrT42H2KCp0fWTeJNsTB4WVuxGdCFs64njSZ2lZpTq9nB8iASlSpkLzn
         j+xjZrEgA1N5GOfDsCitn2OjzfTwbe6JtHGkdnaeufH4jIKPbPSm33YGJBS7pck5V+LK
         HWMw==
X-Gm-Message-State: AHPjjUjmwiM+511KeniXRvPEdwnTT7klfmSrTwazniIZADYKyGb1oKk1
	dW8wYWSxvNWyWnFp
X-Google-Smtp-Source: ADKCNb6oZ5B4X01MKNwMyICx3OoW4HP97TOrY86IQWYpwo9d0K1AUU3OCoye25OXv6hLghaNOQWZyg==
X-Received: by 10.98.157.139 with SMTP id a11mr22748297pfk.70.1505504689539;
        Fri, 15 Sep 2017 12:44:49 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id b8sm3668661pfl.62.2017.09.15.12.44.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 12:44:48 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: irda: Don't use assignment inside if statement
Date: Sat, 16 Sep 2017 01:14:40 +0530
Message-Id: <1505504680-22167-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Write assignment statement outside the if statement. Done using
the following semantic patch by coccinelle.

@@
identifier E;
expression F;
statement S;
@@

-if((E = F))
+E = F;
+if(E)
  S

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 -Semicolon was missing in one of the statements of the 
  semantic patch
 
 drivers/staging/irda/drivers/irda-usb.c | 4 ++--
 drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
 drivers/staging/irda/net/irqueue.c      | 3 ++-
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
index 723e49b..82bfc05 100644
--- a/drivers/staging/irda/drivers/irda-usb.c
+++ b/drivers/staging/irda/drivers/irda-usb.c
@@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
 	urb->transfer_flags = 0;
 
 	/* Irq disabled -> GFP_ATOMIC */
-	if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
+	ret = usb_submit_urb(urb, GFP_ATOMIC);
+	if (ret)
 		net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
-	}
 }
 
 /*------------------------------------------------------------------*/
diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
index c3f0b25..2b674d5 100644
--- a/drivers/staging/irda/drivers/mcs7780.c
+++ b/drivers/staging/irda/drivers/mcs7780.c
@@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
 	if (mcs->new_speed <= 115200) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = (mcs->speed > 115200)))
+		rst = (mcs->speed > 115200);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
 
 	} else if (mcs->new_speed <= 1152000) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
+		rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	} else {
 		rval |= MCS_FIR;
 
-		if ((rst = (mcs->speed != 4000000)))
+		rst = (mcs->speed != 4000000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	}
diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
index 160dc89..5aab072 100644
--- a/drivers/staging/irda/net/irqueue.c
+++ b/drivers/staging/irda/net/irqueue.c
@@ -217,7 +217,8 @@ static __u32 hash( const char* name)
 
 	while(*name) {
 		h = (h<<4) + *name++;
-		if ((g = (h & 0xf0000000)))
+		g = (h & 0xf0000000);
+		if (g)
 			h ^=g>>24;
 		h &=~g;
 	}
-- 
2.7.4


