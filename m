X-GM-THRID: 6332110016814776320
X-Received: by 10.129.123.197 with SMTP id w188mr6791860ywc.111.1474394342193;
        Tue, 20 Sep 2016 10:59:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.8 with SMTP id l8ls3470650itb.14.canary; Tue, 20 Sep
 2016 10:59:01 -0700 (PDT)
X-Received: by 10.66.234.38 with SMTP id ub6mr6547295pac.145.1474394341133;
        Tue, 20 Sep 2016 10:59:01 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si6319014pam.0.2016.09.20.10.59.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:59:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so1249868pfl.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 10:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=U1pMsPH7vmNKkNruoMeduMjSbxm4DJSGPzvW7nVInxM=;
        b=fL3Q67+LQpka4SPIDPr0HgisSJQlJGpLu7UfW0mbv40rsk22+OYZEi3Z/jyBlW6/HD
         Fy+JJSEFieAv2kY2Ewy4rMzv32VefuzZVB51/S7ig1xmrV4+V+GVnP40YZkNQpzhNvp8
         Gs+qG3AeXzltfccvptpPK2MUJW2mUygg6Kg4n02iikzznPlihyEfnbn1e+hDQmK+1V8Q
         zgu5m0qDQZUMUS5hHCljFqRo2nUb0/MCZwxfYqPXQ9pcA9amkg+KQceIiLYlgcEtN++r
         FclysQ3A/p9R+IJ/JKwRFEDtiATsSuS3pgVgtyZ9G+Oyj1GSHglk1tcKUfbm3iPh+RqL
         DJYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=U1pMsPH7vmNKkNruoMeduMjSbxm4DJSGPzvW7nVInxM=;
        b=M7323cVW3ZwAm8WU+/DdMx03LSAMv0NWHoUFPBxauL1QAUt4iCrV8J5SFVDZqekryk
         G/1d87HQ+d2XDRwi/r8YwLPnTmUkEJKDBAYjEGHLZk7jn3djd4R307+rm6HGih4O2gPj
         Q9C//5Gw10MTWHJER00h1E8n655IeBZVqEDsPVRFcXmXjuCpBTupxRzcvw0r3fcyxZye
         HVD902S9bSTBIBxqpwjTkkJLdJrOznIGo/UgnXeIt6RVjtBf5bsR/jeWyJYWfkkIFSgR
         WGuGWLcjbUrYRM5gwphSJrMWUsEoBEgvlFyx7K5MguyWgwLlwSZPxJDaPmqvH5xWsoSp
         YSrg==
X-Gm-Message-State: AE9vXwNIS3vemUAwJnGQwvq7gaqXcA/jNRH7/WW8NU2mLOCAeXDgnKbwB/lhAUx9CjP53w==
X-Received: by 10.98.109.66 with SMTP id i63mr57511502pfc.126.1474394340772;
        Tue, 20 Sep 2016 10:59:00 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.254])
        by smtp.gmail.com with ESMTPSA id 3sm40763210pai.48.2016.09.20.10.58.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:59:00 -0700 (PDT)
Date: Tue, 20 Sep 2016 23:28:48 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] staging: i4l: act2000: Replace printk(KERN_WARNING..)
 with netdev_warn(dev, ..)
Message-ID: <9e20e9c6116f3c18f51023ee0a476a68c955835b.1474393521.git.karniksayli1995@gmail.com>
References: <cover.1474393521.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474393521.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch warning:
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2: Rebased so that patch applies to the staging tree

 drivers/staging/i4l/act2000/act2000_isa.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index ad7a039..38ccf4e 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -78,7 +78,7 @@ act2000_isa_interrupt(int dummy, void *dev_id)
 	if (istatus & ISA_ISR_ERR) {
 		/* Error Interrupt */
 		istatus &= ISA_ISR_ERR_MASK;
-		printk(KERN_WARNING "act2000: errIRQ\n");
+		netdev_warn(dev, "act2000: errIRQ\n");
 	}
 	if (istatus)
 		printk(KERN_DEBUG "act2000: ?IRQ %d %02x\n", card->irq, istatus);
@@ -147,8 +147,7 @@ act2000_isa_config_irq(act2000_card *card, short irq)
 	if (request_irq(irq, &act2000_isa_interrupt, 0, card->regname, card)) {
 		card->irq = old_irq;
 		card->flags |= ACT2000_FLAGS_IVALID;
-		printk(KERN_WARNING
-		       "act2000: Could not request irq %d\n", irq);
+		netdev_warn(dev, "act2000: Could not request irq %d\n", irq);
 		return -EBUSY;
 	} else {
 		act2000_isa_select_irq(card);
@@ -246,8 +245,7 @@ act2000_isa_receive(act2000_card *card)
 					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
 					if (!card->idat.isa.rcvskb) {
 						card->idat.isa.rcvignore = 1;
-						printk(KERN_WARNING
-						       "act2000_isa_receive: no memory\n");
+						netdev_warn(dev, "act2000_isa_receive: no memory\n");
 						test_and_clear_bit(ACT2000_LOCK_RX, (void *)&card->ilock);
 						return;
 					}
@@ -255,13 +253,12 @@ act2000_isa_receive(act2000_card *card)
 					card->idat.isa.rcvptr = skb_put(card->idat.isa.rcvskb, card->idat.isa.rcvlen - 8);
 				} else {
 					card->idat.isa.rcvidx = 0;
-					printk(KERN_WARNING
-					       "act2000_isa_receive: Invalid CAPI msg\n");
+					netdev_warn(dev, "act2000_isa_receive: Invalid CAPI msg\n");
 					{
 						int i; __u8 *p; __u8 *t; __u8 tmp[30];
 						for (i = 0, p = (__u8 *)&card->idat.isa.rcvhdr, t = tmp; i < 8; i++)
 							t += sprintf(t, "%02x ", *(p++));
-						printk(KERN_WARNING "act2000_isa_receive: %s\n", tmp);
+						netdev_warn(dev, "act2000_isa_receive: %s\n", tmp);
 					}
 				}
 			}
@@ -370,13 +367,13 @@ act2000_isa_getid(act2000_card *card)
 		count++;
 	}
 	if (count <= 20) {
-		printk(KERN_WARNING "act2000: No Firmware-ID!\n");
+		netdev_warn(dev, "act2000: No Firmware-ID!\n");
 		return -ETIME;
 	}
 	*p = '\0';
 	fid.revlen[0] = '\0';
 	if (strcmp(fid.isdn, "ISDN")) {
-		printk(KERN_WARNING "act2000: Wrong Firmware-ID!\n");
+		netdev_warn(dev, "act2000: Wrong Firmware-ID!\n");
 		return -EPROTO;
 	}
 	p = strchr(fid.revision, '\n');
@@ -426,9 +423,9 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
 		}
 		while (c < l) {
 			if (act2000_isa_writeb(card, *b++)) {
-				printk(KERN_WARNING
-				       "act2000: loader timed out"
-				       " len=%d c=%d\n", length, c);
+				netdev_warn(dev,
+				"act2000: loader timed out"
+				" len=%d c=%d\n", length, c);
 				kfree(buf);
 				return -ETIME;
 			}
-- 
2.7.4


