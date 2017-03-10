X-GM-THRID: 6395785103347286016
X-Received: by 10.36.118.132 with SMTP id z126mr16404itb.22.1489143741917;
        Fri, 10 Mar 2017 03:02:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls5581283otb.38.gmail; Fri, 10 Mar
 2017 03:02:21 -0800 (PST)
X-Received: by 10.157.12.214 with SMTP id o22mr7756637otd.150.1489143741592;
        Fri, 10 Mar 2017 03:02:21 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si1683177pfa.6.2017.03.10.03.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 03:02:21 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so9919871pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 03:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=blXWWBBKE1JR9Xp+o1Hji2FW267lSp1NpWPC2e3WoC4=;
        b=PMgAlrik8FmsvzsORByC5YY6zIJlxyBX1CYxsd6igl3K7JEbzBEl/TauPlGn17zLxp
         Af1Isf2b1u4di0JbN0EHxqXATGG2z+ThjGoZok3eM1ruVbHsLJBo+2/CUctCpY4ydf2o
         t4WpRooaYpKAH96NuJ/Z7CUGNzSepVpNOjU7EpDkob2c4kRNpQ7VbD/wwnNpJWV7LORF
         XkOTzpExZDkBeGzpIj5GOM4sA2Wq2F7JyBwxTuJbNkCvHmaA8iqetFAsdaKx6VsDJI45
         BERkf55nSbBxLlPv4Gf6gxyYsfIrdCwKHVnNjJxTriEIpLvD3IBlHrjgK+GaNFh98Foy
         hEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=blXWWBBKE1JR9Xp+o1Hji2FW267lSp1NpWPC2e3WoC4=;
        b=fSLnHtM2lV9NTIgxljQiMGOyUdNhUcm8S+PdyBlpRcY3zt8XVdFg1c564dcGo+WqvA
         S5D7G+VwntH4YVgc0LKI/xYdKX4bW0XDqwxjl76jIeHDz4t1Dq7XxrFLFM4oEsk9pSie
         rzy1FciqWY+16qae5WgWBpfo2l0Nu+b7oKLMVes/GjyAYnX+vE+wAFYqkZdnONHTlZsD
         VICGWohVrDL5kOuESwKgUJHvK+/asJK1bc6BB+6DR3S7czPcPu2y5oqc1QZSZmUI4dSC
         H2Nc9uTgv1urNidlHBQj6YbdGeTUB4mIWP18kaGdgYj4jB3EfgJhSgMKdjgu/oesMCOV
         FE/Q==
X-Gm-Message-State: AMke39krfd840kR/6zefgsSi/EQX/xhVXiElvRIGDY+LgDccpUGKXI7kDpLULq9ZmBRYQw==
X-Received: by 10.84.224.11 with SMTP id r11mr25081345plj.130.1489143741178;
        Fri, 10 Mar 2017 03:02:21 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([59.181.22.194])
        by smtp.gmail.com with ESMTPSA id i15sm18057749pfj.0.2017.03.10.03.02.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 03:02:20 -0800 (PST)
Date: Fri, 10 Mar 2017 16:31:57 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: mt9m114: Use true/false instead of 1/0 for
 bool initialisations
Message-ID: <20170310105437.GA28431@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Bool initializations should use true and false instead of 1 and 0.
Detected by coccinelle/misc/boolinit.cocci.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.h b/drivers/staging/media/atomisp/i2c/mt9m114.h
index a66cbfd..5e7d79d 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.h
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.h
@@ -349,7 +349,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height = 736,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
@@ -365,7 +365,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height = 864,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
@@ -381,7 +381,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height	= 976,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
-- 
2.7.4


