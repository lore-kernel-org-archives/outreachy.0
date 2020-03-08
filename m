X-GM-THRID: 6801966173715955712
X-Received: by 2002:adf:ef45:: with SMTP id c5mr16758627wrp.302.1583706162829;
        Sun, 08 Mar 2020 15:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls6079480wmg.1.gmail; Sun, 08
 Mar 2020 15:22:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvXIvEK940IfNtlzK7vHXmsMHko1mlktyEvKg428Hn0fxjIy5GMri/ZyQl9wLHyjqOXKM1L
X-Received: by 2002:a7b:c194:: with SMTP id y20mr6116306wmi.129.1583706161590;
        Sun, 08 Mar 2020 15:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583706161; cv=none;
        d=google.com; s=arc-20160816;
        b=V7nV5GgkF0c9lDWgbvOtmQrlXkzYr8j4tN/NdKpZwHr86MLnQ+TWURd14NFDQ4qCAD
         lc6LR0NHXa82ZBLYvvP6Wjbh2TWPECVHNua2iGTCKY9yOZkBf5RK0TYQz6vYHdGujDqA
         VOdcajFaXR1aS5Lyb+iUQ53KdxKh4DHfYPW6lCU7LdFY8CXCUWTnuEY5zuPFCByXOB9X
         9fZqyXC5/Z5LvcYAlS7bFdsyopCdMFmzhoE2ws87Q91GXcIH6ra2ok++/UJbJNFwlJXG
         9SshYM+GpXO+pFSLibAlSyFvYmEF8heiLSRJwU7Ap3syOlk7XcmhKIxV0VXehpS/pf4q
         p3iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=xOiU+PwlnGYbSyqg4uE12zxh+0oAoiAXFa61nrSGkCk/4yhC8GmUG0+AKx/cZb7ifX
         lYHVshcP+n6NwpeEtVb3dmelYSJAiz5RfgVyvc4GP4w6xYYA7vcP9GTO1Y5KGInx3Rc/
         ZnewpW5/CYo4BzwXNB3PiRRb++cDUvp1Kfy2lHapGZCHnrkzR4hyxUzgVC64sgmGUvxo
         KpqwICzzHJ0YkEbZcouWy+hvNNJrscDP4lWO4qOGWxD28ntf0+I1mxmIpfid/6a39n7f
         ux6cHJoEqpVDUZgcUo97kdMZSvqc8To5GVcPVTCphfsrJYPQkuZHhDRNJZK1xXhpNMoB
         eFmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Xwc0A38T;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w20si967898wmk.0.2020.03.08.15.22.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:22:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Xwc0A38T;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id r7so8767524wro.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 15:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=Xwc0A38THPwj43nup2xvM2ygmTMrUY+B6KSL2ZgOTbuVneTakFWx9mwENp2D/td+Me
         4OpAnWpqjdseOSExq2HGzZzYbVkYwDozdqrUNK+/P+BCUxv8MyL7ZPvXToL6lxab6ptE
         J/7RhO0theIOZzYOOyy7lUl9jhT1vzfEdvnYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=BsGBh38g8IUo1tyghjsjZ+Ty0ZPknTBaufZBdHsZfTOmmVp2DAHHiA74pEusDOcu/3
         b1J4lrBSu8XwMEX+ix7jEE/GXh3zntmdd0ps9ergbV+jUVNTJo5+hK8xGUtw5jtobVJj
         eF+YU/9ZZsoPaxaaFxdxfKVIe73RmWkvtXk6GmBqnY0tlkx6rZkXuOrBanFAue+q+nbe
         1Nc0ARlrGJED4eK/lnlGDXniY8GoXXSrzoVBKZU0K8FdcNqbWevczlBOAcExDPSEkXVd
         Iha6Mcetv2KpfmDBBzc1g8aNG9kwSA1gh6ZMbCAIMFU7dvPaRM69RG+bxLQ2Z88OUTyd
         BnVQ==
X-Gm-Message-State: ANhLgQ18uMeab6/AP3AWUGwLZCIFlJfNeurvQLT6RnD2uIs5UKOWq0ke
	O9VcsC4VNwYgA3sJ4TeeNajG/N2LVLE=
X-Received: by 2002:adf:cd04:: with SMTP id w4mr7747675wrm.280.1583706161046;
        Sun, 08 Mar 2020 15:22:41 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y189sm7169594wmb.26.2020.03.08.15.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:22:40 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: remove commented out function
Date: Sun,  8 Mar 2020 23:22:18 +0100
Message-Id: <20200308222218.16031-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove function gb_i2c_smbus_xfer() which is unused.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/greybus/i2c.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index ab06fc3b9e7e..c48fa1de89b0 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -215,20 +215,6 @@ static int gb_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	return gb_i2c_transfer_operation(gb_i2c_dev, msgs, msg_count);
 }
 
-#if 0
-/* Later */
-static int gb_i2c_smbus_xfer(struct i2c_adapter *adap,
-			     u16 addr, unsigned short flags, char read_write,
-			     u8 command, int size, union i2c_smbus_data *data)
-{
-	struct gb_i2c_device *gb_i2c_dev;
-
-	gb_i2c_dev = i2c_get_adapdata(adap);
-
-	return 0;
-}
-#endif
-
 static u32 gb_i2c_functionality(struct i2c_adapter *adap)
 {
 	struct gb_i2c_device *gb_i2c_dev = i2c_get_adapdata(adap);
-- 
2.17.1


