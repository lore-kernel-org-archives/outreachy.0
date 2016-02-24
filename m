X-GM-THRID: 6254829692131475456
X-Received: by 10.66.160.9 with SMTP id xg9mr36176795pab.38.1456316023130;
        Wed, 24 Feb 2016 04:13:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls77241igb.7.gmail; Wed, 24 Feb
 2016 04:13:42 -0800 (PST)
X-Received: by 10.50.13.101 with SMTP id g5mr20723740igc.6.1456316022550;
        Wed, 24 Feb 2016 04:13:42 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 12si345240pfb.1.2016.02.24.04.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 04:13:42 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so11914083pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 04:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GVtWRo2u8h73G9MyB9rk+kE2ecM69qABqs+bbdUiatY=;
        b=Yk9yeZygA0wmQzYw7/9BfLy+jXSTEJqqy+tBBsLcCzL6nZwvytpkbqtU3xOMSBc3uJ
         PuWsWzIg6XlOGJIOyOv9A94IOQCk8WIM347XIOTXuTAWVjrBm0gq4gWwbmjUQagCh27T
         X5qcA/hJdryjqGpE8Y3Rfag/tjgYyus8ULQIzMpxyWe+2Hi3LCSQxoiGEY6UTh8Ht2GM
         fCCJ2GuYs3GSGMU5CS9MIBpYWQm35KAF8b1zLu9QpFU61xXcw3ak9gMnIi2mS9D/m+r3
         w019xI9AsGXrdnvzJ2pVlZwdlc6W8L+sub4YL+kbvRIeU0EAsmPL2Bp0Hvf7cTwjGx6p
         dhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=GVtWRo2u8h73G9MyB9rk+kE2ecM69qABqs+bbdUiatY=;
        b=O5uKyBe7ZC48/F0LyB5Xzpd6IEnPxFFRIZgLJWOTgK8ybhPr+wAyrDoYEBJoW2XiKq
         +wGwP6M8s4L2Emte+QbPTscCuZmJOzOI536gKGiuCklBR4SM45+zXqQTiJvjeO0QAMGe
         yvLYRySywzwy696VUhxOgWBxF4QwyPAeSCadIKxno+yC93zZXS3qijPJCZXRijXthZ1V
         R/TygPWfK0VIV5YGnxr8tLNfOcZZFuk/yiFwebStby4RWAtD8EhiEAEggsFDh3dWBuOo
         K2buAdO7R6wbnbt4B7UhMM3UnvcX4jnHBd02b/PThV6eTmaasRHsyNQZD3GDPUDP4TwQ
         T4kQ==
X-Gm-Message-State: AG10YORps/ZaNwdCe1bX7VKhz/W68wSXWWdo9Ll9zPXOdmZYA5kH4mSYD5LSLBPgyJgdBA==
X-Received: by 10.66.102.104 with SMTP id fn8mr54403735pab.129.1456316022378;
        Wed, 24 Feb 2016 04:13:42 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id kw10sm4768189pab.0.2016.02.24.04.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 04:13:41 -0800 (PST)
Date: Wed, 24 Feb 2016 17:44:07 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: Remove unnecessary pair of braces {}
Message-ID: <20160224121357.GA3368@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

For single statment of if not required
a braces {}.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index dcaa5a1..4119d3a 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -1547,9 +1547,9 @@ static int lov_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 			osc_obd->obd_force = obddev->obd_force;
 			err = obd_iocontrol(cmd, lov->lov_tgts[i]->ltd_exp,
 					    len, karg, uarg);
-			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK) {
+			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK)
 				return err;
-			}
+
 			if (err) {
 				if (lov->lov_tgts[i]->ltd_active) {
 					CDEBUG(err == -ENOTTY ?
-- 
1.9.1


