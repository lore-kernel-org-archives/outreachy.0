X-GM-THRID: 6332110016814776320
X-Received: by 10.157.36.2 with SMTP id p2mr1534896ota.86.1474394455397;
        Tue, 20 Sep 2016 11:00:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.197 with SMTP id c63ls135422otb.11.gmail; Tue, 20 Sep
 2016 11:00:55 -0700 (PDT)
X-Received: by 10.13.227.195 with SMTP id m186mr6640382ywe.139.1474394455084;
        Tue, 20 Sep 2016 11:00:55 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si7079182pab.1.2016.09.20.11.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 11:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so1200281pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 11:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KT8wBwg3QdWEZTjPGKVSsVOlxCBv67vvxWii7Gr8Cok=;
        b=n5aIYRXc3tdX72e2Ey3z+hUe13r9EmaE/JFfnHfakRh5yED0lu04nixiW7eYeHqfMf
         FAzz4LHghctcqfN5wqdMSv/B96bLKGAHWoRb8w/4eiTXTEvNLkwMLMg+b8FlLq3g3HDB
         Rb10FWLFjtD2nDnPk6F2AcHJah4ivMA2q56hFeQ4SCyYY6kUk3sdAnVO6PhOshV2ACL9
         ikO9KwpBrgvcH+HvyWr5X7UIbX3HFt4UnV13e0EJHA5OfAL7/rjAFlsgUbRs2eCWjc8J
         74ZZ0OBF909YRjQOG3t1ZAjpwG3ML9tpx3ImRiVjUGMY4VdvWInkcWmK0PKjZzcuFSX2
         Z5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KT8wBwg3QdWEZTjPGKVSsVOlxCBv67vvxWii7Gr8Cok=;
        b=ckI+QmXWdpqTS1AK0O5eu85HTUaRTx0nGVtKgmDBcJ+oGirNysfHLhKOCX0nXurwAe
         QNZimaiq0865miyRKCpdik3Si3tPjB+J+p09fdNnBRge7vJfcEwnbqN/1c/ilq74Y9AR
         p59PcjsA60s9KXMh1KDhl72YfEEUyX3c4fvBMtt2mXyw+DLQt/Hfbf4pUhxVceGVNb6d
         7L5beu2xuwt2LaIymYun+qSvzMKNF1J+G5JBmdTVaptSNKmsgJg7IjIt0q8Lfa/tBaj6
         u9oAg2aIBmltTtVu+aZwQ4157/E33dPX77ZAQW1UkD9xvHCMF5tnoKJWw0394t/Z17q3
         Jfzg==
X-Gm-Message-State: AE9vXwNB3O3jzMQZwjeNm6UsEqT0duz3BbQNorkq8BiRjJfEsvccNs1+M7PC0ap50lnTHw==
X-Received: by 10.66.155.166 with SMTP id vx6mr19228481pab.35.1474394454619;
        Tue, 20 Sep 2016 11:00:54 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.254])
        by smtp.gmail.com with ESMTPSA id bl10sm40819932pab.46.2016.09.20.11.00.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 11:00:54 -0700 (PDT)
Date: Tue, 20 Sep 2016 23:30:41 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] staging: i4l: act2000: Replace printk(KERN_DEBUG..)
 with netdev_dbg(dev, ..)
Message-ID: <3c743e234beec9335cab777f496f7368cb17d54b.1474393521.git.karniksayli1995@gmail.com>
References: <cover.1474393521.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474393521.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch warning:
WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then
dev_dbg(dev, ... then pr_dbg(...  to printk(KERN_DEBUG ...

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2: This patch was newly added in the patchset.

 drivers/staging/i4l/act2000/act2000_isa.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 5385587..f3739fd 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -81,7 +81,7 @@ act2000_isa_interrupt(int dummy, void *dev_id)
 		netdev_warn(dev, "act2000: errIRQ\n");
 	}
 	if (istatus)
-		printk(KERN_DEBUG "act2000: ?IRQ %d %02x\n", card->irq, istatus);
+		netdev_warn(dev, "act2000: ?IRQ %d %02x\n", card->irq, istatus);
 	return IRQ_HANDLED;
 }
 
@@ -382,7 +382,7 @@ act2000_isa_getid(act2000_card *card)
 		*p = '\0';
 	printk(KERN_INFO "act2000: Firmware-ID: %s\n", fid.revision);
 	if (card->flags & ACT2000_FLAGS_IVALID) {
-		printk(KERN_DEBUG "Enabling Interrupts ...\n");
+		netdev_dbg(dev, "Enabling Interrupts ...\n");
 		act2000_isa_enable_irq(card);
 	}
 	return 0;
-- 
2.7.4


