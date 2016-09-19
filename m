X-GM-THRID: 6332110016814776320
X-Received: by 10.107.19.156 with SMTP id 28mr4874287iot.75.1474309301917;
        Mon, 19 Sep 2016 11:21:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls138796otc.12.gmail; Mon, 19 Sep
 2016 11:21:41 -0700 (PDT)
X-Received: by 10.129.169.6 with SMTP id g6mr4896046ywh.126.1474309301428;
        Mon, 19 Sep 2016 11:21:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si5089540pab.2.2016.09.19.11.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so4933417pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KKJjqTrpS34CrJXJmxYoh2tzorigbnfeLBPiIyBrkZ4=;
        b=MQC+yfmbAHeb54+VECEBpmmJq7KyFF8k+0fOvL7o5MLrGoVddSgaeCafgnvdX6cFvn
         EgPkMdPMn6qD5JqkpYF2klFcD6T9hnB9PCVci0G7qnV5kbtPAPDuBMag+UjiAsCfj+wd
         HPmCzpG5EWg9fJm1xJsieM/juHZ0mN5ROETq6gJi/H+OmGTmhbZYMAxTk3ZDw2c2E6St
         NY0vIyGFN4CWLJXOPqVNZoRU9Khq5AfXurzjlZ5dZv7m6mM73IDX0aP+PnZB0/2HxxNg
         rJz/D95qH28HHaQLTRx43uq9i99MlnA73yt1W2JpE1K/cAbnXZ9C5QKRBxQnNcDrrSH6
         qpzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KKJjqTrpS34CrJXJmxYoh2tzorigbnfeLBPiIyBrkZ4=;
        b=ESnxY3flPS5JSrKouAtq8pEFrRSuOES3UnF0MEBTCAktFiCmFekNOLS4UlyQ5r8hFl
         6DK0AAMCYKJM5WadKIYKIomHtH8dSn8+AUMPNKdbSnZ3syerUFbrAutZEUvF0aF4tm+X
         T0wBggiggbWtBMqX7m1ElGy5YkrKoAmwjEItzGiAwwEFqax1KcBhT2PIhK0xgloaoDQy
         ihg2csEtfs34OdbMjkFyUN0yOnUNNbL5ZK3sANl/NSpqXMWjOdAPRG6VMhJMevlbEpQx
         xPwGO8a/hJHf5cikDDMtmzsLsUW8BPoABkjf6X8Fz6B/sYc/ey7XBjYOyF/a2PI5pJyD
         brwg==
X-Gm-Message-State: AE9vXwMJ8AkGbFvaEJ5rXRc2Tj02L8h5G6F0KtqHogXZ9y8gKXgyFXpzNCWLKtO8hmobfg==
X-Received: by 10.98.93.204 with SMTP id n73mr48454612pfj.87.1474309301187;
        Mon, 19 Sep 2016 11:21:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id s12sm73175138pfj.73.2016.09.19.11.21.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:21:40 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:51:25 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: i4l: act2000: Replace printk(KERN_WARNING..)
 with netdev_warn(dev, ..)
Message-ID: <93a41d1940c7d904b672acf7825392e37c9a213b.1474308584.git.karniksayli1995@gmail.com>
References: <cover.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474308584.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch warning:
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 1d93151..c325fae9 100644
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
@@ -246,7 +245,7 @@ act2000_isa_receive(act2000_card *card)
 					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
 					if (card->idat.isa.rcvskb == NULL) {
 						card->idat.isa.rcvignore = 1;
-						printk(KERN_WARNING
+						netdev_warn(dev,
 						       "act2000_isa_receive: no memory\n");
 						test_and_clear_bit(ACT2000_LOCK_RX, (void *)&card->ilock);
 						return;
@@ -255,13 +254,13 @@ act2000_isa_receive(act2000_card *card)
 					card->idat.isa.rcvptr = skb_put(card->idat.isa.rcvskb, card->idat.isa.rcvlen - 8);
 				} else {
 					card->idat.isa.rcvidx = 0;
-					printk(KERN_WARNING
+					netdev_warn(dev,
 					       "act2000_isa_receive: Invalid CAPI msg\n");
 					{
 						int i; __u8 *p; __u8 *t; __u8 tmp[30];
 						for (i = 0, p = (__u8 *)&card->idat.isa.rcvhdr, t = tmp; i < 8; i++)
 							t += sprintf(t, "%02x ", *(p++));
-						printk(KERN_WARNING "act2000_isa_receive: %s\n", tmp);
+						netdev_warn(dev, "act2000_isa_receive: %s\n", tmp);
 					}
 				}
 			}
@@ -370,13 +369,13 @@ act2000_isa_getid(act2000_card *card)
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
@@ -428,9 +427,8 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
 		}
 		while (c < l) {
 			if (act2000_isa_writeb(card, *b++)) {
-				printk(KERN_WARNING
-				       "act2000: loader timed out"
-				       " len=%d c=%d\n", length, c);
+				netdev_warn(dev, "act2000: loader timed out len=%d c=%d\n",
+					     length, c);
 				kfree(buf);
 				return -ETIME;
 			}
-- 
2.7.4


