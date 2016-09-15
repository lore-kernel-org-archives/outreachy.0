X-GM-THRID: 6330639307056873472
X-Received: by 10.157.47.73 with SMTP id h67mr7728277otb.5.1473966916581;
        Thu, 15 Sep 2016 12:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.135 with SMTP id x129ls710268itb.9.gmail; Thu, 15 Sep
 2016 12:15:15 -0700 (PDT)
X-Received: by 10.66.85.104 with SMTP id g8mr7592035paz.33.1473966915124;
        Thu, 15 Sep 2016 12:15:15 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si1504055pam.0.2016.09.15.12.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so2459671pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q7IkcFK0/7C4YFhtxUDk6mpga6JtV6IS0hr0WDBDUHI=;
        b=DfIkJVnt7EA721BVjljQwTwvj5zm7Mp/UmNnN865uvg+aEfLFsiUtoDvE7IlANtzlp
         coH/SJi/RrHxjMbu01teVYQOGyc88O3dweXxUIge3OYEd+u7pjgFLExPBe0BBJyTC/ll
         tU+oJM458RR4ON8SIoCRL3/uhTQFeHFSi0EBI5PkOsSj+XDuVGFD8OK6Durc+yRUWHyU
         ZQ0TQH7OVRxv9vuCzP0Q1Q4E3oS+CtwMjuEvT5aJoGBaxtIRfyRXiJT3ZqVP4LGUhdaa
         tc3s1RjiMGGgnoTLP7AEkQq8j55St9l6gGs5uQvoYTtQx9/rPqpvW5AegOBtDMwDhyHh
         JmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q7IkcFK0/7C4YFhtxUDk6mpga6JtV6IS0hr0WDBDUHI=;
        b=YQvbSvIuNwoZlSo6Pdq64J+1XPTxPJx69A3B60QlkJdpLYxXhw1yfCewfQ4cI+TEVV
         ZHETATm1Au+wt5wNQnQqfxS7oMmvyY48tlkpyhfhazAnjCdKSLZJVtR9sC6sNfVaspCy
         LAIt43tmCBUlRr+uoJRy+FpiJM8tYeoQUGYTkOwxoUgPS8mUqYqg2+e/5C1WgEShyeK5
         cWtNNzUm4bChLRV0dSIFkpnC4Go3810c+fhtLfCJcrlP1nvhc52ocfKa5vG40L3rXw+H
         h2mIxHbzfP/WTyJwyxZ/HrdeX45SzP9dReRQ2UT+meLBxzHEO9r8RQXvzXwQcEBdWi9J
         3QMQ==
X-Gm-Message-State: AE9vXwMK5rKAQLQsUO0tSYm14Oll/2AXJ1kiifZtgOdrsdABJFRmAD71fw0b8lG1tfxwFQ==
X-Received: by 10.66.241.65 with SMTP id wg1mr16919662pac.155.1473966914877;
        Thu, 15 Sep 2016 12:15:14 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j69sm41320582pfj.19.2016.09.15.12.15.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:15:14 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:45:05 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: slicoss: Add {} to an arm of if-else
Message-ID: <5259aeed6321af3f2c7c1f3d1c2f7458deb1e944.1473966683.git.aquannie@gmail.com>
References: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds braces {} to the if arm of an if-else statement which has braces {} on
its else arm. This improves uniformity and readability. Issue detected by
checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index f2c751c..8182e58 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -784,8 +784,9 @@ static void slic_timer_load_check(ulong cardaddr)
 	if ((adapter) && (adapter->state == ADAPT_UP) &&
 	    (card->state == CARD_UP) && (slic_global.dynamic_intagg)) {
 		if (adapter->devid == SLIC_1GB_DEVICE_ID) {
-			if (adapter->linkspeed == LINK_1000MB)
+			if (adapter->linkspeed == LINK_1000MB) {
 				level = 100;
+			}
 			else {
 				if (load > SLIC_LOAD_5)
 					level = SLIC_INTAGG_5;
-- 
2.7.4


