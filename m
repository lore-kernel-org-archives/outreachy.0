X-GM-THRID: 6467951789613252608
X-Received: by 10.28.7.196 with SMTP id 187mr82143wmh.7.1506066777685;
        Fri, 22 Sep 2017 00:52:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.11 with SMTP id e11ls1181275ljb.4.gmail; Fri, 22 Sep
 2017 00:52:57 -0700 (PDT)
X-Received: by 10.25.201.136 with SMTP id z130mr807824lff.3.1506066777152;
        Fri, 22 Sep 2017 00:52:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506066777; cv=none;
        d=google.com; s=arc-20160816;
        b=Ba/zYfdiSsBgjA5if2zmx0LzeCB68afbm+nrrGHeezFiuafx+SsxfBCez02DX/e5aj
         v9fe/VMdExQkMAMoO5FJXyfKo/n0U/iwd2HpM09XNC0LjghkAl0sFTJ6OLLdu4h1lygX
         5GASyFjcQxom/kESHxPZOJJbreIDt1a2C8MuLl5PgnDrgs33+3QDI7OzAfIgfrJ9uEFn
         vPQCXT78KIALWOs2kGRpWVqlJAL+tl8atjbNc4cQ4GcTLPEhD46eRYLKQ2vKRtjeEuZ9
         xbSNSfpup/SYsy7k4S1JN4JNN7K+nxARH5+mP/smQ9DSCotV62p7QQ4cDueRrBMJksMW
         T52g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=EfRyxCEzzVC4lJyqxzHDe5RCYWuut+n0E1KnlOhzdTM=;
        b=a1Gjvh7It5HjCJsAMbmNzsxxTMcAESOkwgZPLUyzluC8BgUJTfhPGCECe54L0wj+yE
         +lu+TXG7OFojZIxuDYYuxyEYFeeWBsSSKx1lGAwXDDeUYNY2DZbbVZd5lndo4/GksPr7
         lQBRZdtYYKF/yxG4R3Pe95ab2mrzAfjMwA7dnXlxL63CKH4czUgWWeAuWxIqvEymkkbV
         5G5zbb2obvsqF/ivctwF9m1Hhm1Q20MD3fh8j+VOwDmQPqpFEiugxBaSjibr7IKCCrhu
         8TIPSfjdQ4UJLg+FN6oYqCmNQ/BfJOGAaDwrD66bOOujnQnPrnnAKhcsrP3X21FNRqy0
         4smg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJ48uXwJ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id b130si240518wme.0.2017.09.22.00.52.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:52:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJ48uXwJ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id k20so199961wre.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 00:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EfRyxCEzzVC4lJyqxzHDe5RCYWuut+n0E1KnlOhzdTM=;
        b=oJ48uXwJ2LqVrjlMnu6MwZWHfm/sN3U/rgzfdcQqb2/QmR9GUWp9lDjJPGfxgjbbrI
         ludpM+s7qj70QcLJDIHi+mUDEHB1P+YN/MWotpNMPiZv8vvsK2U6jsjnNr6yMi+bpKLS
         kFiUtMTEX6sz3aY3iBIfGBzGF8WAwaNpbdbi2yRqFVrsrCqtz46To3aA95h1RvkjoxoE
         Nub0QT4ABsbC+KESJcxxF7BvVJBzPG7D+1YO0sSewMvrZBmw+K/i5BH/NRClYaEBrsR/
         FJEecZYCEu4sue7cjpfkNeFrM/QuCSPmUChgm52qZb5NxWp24Imb/MweCvwkPJXvPOx5
         2mig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EfRyxCEzzVC4lJyqxzHDe5RCYWuut+n0E1KnlOhzdTM=;
        b=Syq49a+0SDtnR8ncygvJuILoBRfboOOUSINUfo8Rpc7OSeZIWiwaM6P9xkVfI1N1FG
         BqMWPx9bCmDGl9fh4PiMrdfoGbe6qeLBqHGYkKb19R+gTC4DaX9Ju/PRedo20EbrNNrA
         WUC1PvWAJBQUJqMCst3yn8+IiWd4WXCOWaSy14BxrxsQtfxbrZmnL1IFks79WiQ79EaF
         6bMd15ZOLaKLR68/TfWqcIxlQDanaIrupRGkGstexA7SZKSPKFrpR9Y4L8SQOsAJgo0q
         MuXsuEAWvwvtEqajOKCj3scz+QDpn0mXLIpqnFjAqsYD/au+PeEH23AnLC/cl+Aw3nER
         CF1A==
X-Gm-Message-State: AHPjjUh1DsUd/7PpPWjjC/I05BsytkUP5NCNjQ4Yz03jecVBOY9FvxUz
	8z4j2xpVeT3FJra5498QCvY=
X-Google-Smtp-Source: AOwi7QCMVpLZWOmEwXTUg0hrw2aDIdqWjZITW536y1D0Rne6BXsOYku3yGrrLPfpDOWUzcgpTvP16A==
X-Received: by 10.223.163.154 with SMTP id l26mr4101996wrb.42.1506066776879;
        Fri, 22 Sep 2017 00:52:56 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id u186sm3087375wmd.19.2017.09.22.00.52.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 00:52:56 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] Staging: irda: net: Fix style issues
Date: Fri, 22 Sep 2017 00:52:14 -0700
Message-Id: <7825439d8f66eb7d107da6ee3e5085f27c1e9fdc.1506065957.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>

Fix minor coding style issues found by checkpatch.pl.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/irda/net/irda_device.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 944eeaa..d33de8a 100644
--- a/drivers/staging/irda/net/irda_device.c
+++ b/drivers/staging/irda/net/irda_device.c
@@ -59,7 +59,7 @@ static hashbin_t *tasks;
 
 static void irda_task_timer_expired(void *data);
 
-int __init irda_device_init( void)
+int __init irda_device_init(void)
 {
 	dongles = hashbin_new(HB_NOLOCK);
 	if (!dongles) {
@@ -76,7 +76,8 @@ int __init irda_device_init( void)
 	}
 
 	/* We no longer initialise the driver ourselves here, we let
-	 * the system do it for us... - Jean II */
+	 * the system do it for us... - Jean II
+	 */
 
 	return 0;
 }
@@ -84,6 +85,7 @@ int __init irda_device_init( void)
 static void leftover_dongle(void *arg)
 {
 	struct dongle_reg *reg = arg;
+
 	net_warn_ratelimited("IrDA: Dongle type %x not unregistered\n",
 			     reg->type);
 }
@@ -107,7 +109,7 @@ void irda_device_set_media_busy(struct net_device *dev, int status)
 
 	pr_debug("%s(%s)\n", __func__, status ? "TRUE" : "FALSE");
 
-	self = (struct irlap_cb *) dev->atalk_ptr;
+	self = (struct irlap_cb *)dev->atalk_ptr;
 
 	/* Some drivers may enable the receive interrupt before calling
 	 * irlap_open(), or they may disable the receive interrupt
@@ -115,7 +117,8 @@ void irda_device_set_media_busy(struct net_device *dev, int status)
 	 * The IrDA stack is protected from this in irlap_driver_rcv().
 	 * However, the driver calls directly the wrapper, that calls
 	 * us directly. Make sure we protect ourselves.
-	 * Jean II */
+	 * Jean II
+	 */
 	if (!self || self->magic != LAP_MAGIC)
 		return;
 
@@ -133,7 +136,6 @@ void irda_device_set_media_busy(struct net_device *dev, int status)
 }
 EXPORT_SYMBOL(irda_device_set_media_busy);
 
-
 /*
  * Function irda_device_is_receiving (dev)
  *
@@ -169,7 +171,7 @@ static void __irda_task_delete(struct irda_task *task)
 static void irda_task_delete(struct irda_task *task)
 {
 	/* Unregister task */
-	hashbin_remove(tasks, (long) task, NULL);
+	hashbin_remove(tasks, (long)task, NULL);
 
 	__irda_task_delete(task);
 }
@@ -231,7 +233,7 @@ static int irda_task_kick(struct irda_task *task)
 		}
 		irda_task_delete(task);
 	} else if (timeout > 0) {
-		irda_start_timer(&task->timer, timeout, (void *) task,
+		irda_start_timer(&task->timer, timeout, (void *)task,
 				 irda_task_timer_expired);
 		finished = FALSE;
 	} else {
@@ -280,8 +282,8 @@ static void irda_device_setup(struct net_device *dev)
 
 /*
  * Funciton  alloc_irdadev
- * 	Allocates and sets up an IRDA device in a manner similar to
- * 	alloc_etherdev.
+ *      Allocates and sets up an IRDA device in a manner similar to
+ *      alloc_etherdev.
  */
 struct net_device *alloc_irdadev(int sizeof_priv)
 {
-- 
2.7.4


