X-GM-THRID: 6467951789613252608
X-Received: by 10.46.2.135 with SMTP id y7mr622817lje.7.1505937381809;
        Wed, 20 Sep 2017 12:56:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.113.23 with SMTP id m23ls208129wmc.5.gmail; Wed, 20 Sep
 2017 12:56:21 -0700 (PDT)
X-Received: by 10.28.133.68 with SMTP id h65mr508014wmd.28.1505937381219;
        Wed, 20 Sep 2017 12:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505937381; cv=none;
        d=google.com; s=arc-20160816;
        b=KWz40e0gFh+qNNrw33jTESAqDGg7fCYZg+7ZxDxHK0geBgUQro/ZlQfhN0mgHneFVS
         zUxjOM+x7kq1TSoDWB6Azo5//PDVbyTL+FQVSUgtaL2vlD/uvuzKuZpBG5bQghPG4GKu
         ti+PsyDiRwJP62IcgwC587tl/BCDGlxfqwxwVTfT55KfZvrVmqtNrPvEMimvAgxVr230
         uyVIJEIF5nEHuvkRPH3szZ2crVZ/z2hzS43LhtehTWwo1cWYjZzkjDMcKaShjl7QzTS8
         YlZFoZVau0I4zCvZxpqsTeIJbdw73JpuPrp2DbPRchvlTulGpmuMLyhy8EQY6w1YbPao
         qNbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xTviOk0Pg9tBifN7jaz6XnmfpBqWam3inSMX6bRpLbo=;
        b=bfBeCvyIoLjSbeyeep9xDR9PESU8wBx3KlsgNswPRIHLI+ydmWlio9VYuJ1W7GpsVW
         Y8RYaWPeGCeRXGfDKyZLAI6wlFOITlfesywz1CylOlUi+L8MyRGEG2hylYPhETT2WJHq
         Ig3FpfceTT+SLLE8CxYNx0Pi64XuaEv27iUVUk6AsEtRqfIBtXH9DhQH8+eRK/Ki9G2v
         ZX+6vKU+rluT7CJeaU9d9NgGAEw+/hbpFwxdB6A7IVw8zU1Sw/QmH3X1IVoQ1w9GnWTn
         D5aO+VfChUznuFOSVhzl1cefxXSqnp9XZYR2dLb0APJb0bm8Ns98dxLLZrWIk1+qg+Lp
         T5tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u9r7vhq8;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c142si260463wmh.3.2017.09.20.12.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u9r7vhq8;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id x17so3343650wmd.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xTviOk0Pg9tBifN7jaz6XnmfpBqWam3inSMX6bRpLbo=;
        b=u9r7vhq8mP6D/1OU3+5eKCSEKKxI1d7Io8ckpX4LqS4Ju3xzFmDizxZfxZs+wMmDdM
         FNtg/4kuneG2xW+syTP1tP1Y8jpoMg3dGLJ+LHUGXI9fRogAgDY1uYsbd5oRR9cnbe1E
         8PHROD2hDTfNZk/jkH4L2LPKryE+34qXGXJSoQZbTyBLGhxTF+cSJJwz8QOa1CAgQwF0
         9Vlhs8t3IHVAsdKuq9fhnsicS/tJbn76wCDC8N+z+YPMqNxpvRj8M9W1+8ZgqDdP0lp4
         JHw4jGHo4fnAjc4FgxqxHvcxLChV9o3Vu/NHaegxSrvzNpkG0O/d5N62hpbcD+ESFQe6
         5ETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xTviOk0Pg9tBifN7jaz6XnmfpBqWam3inSMX6bRpLbo=;
        b=hv6AcNKcOHPTXLtUhltazUlFyVqrPXlcvc8rM/yFeG1o6wYjdEYcOIXl5EWiXwRyki
         lKrDFI0CGn5NUl5xO0IsmTpavtEAR35XspGgF7bvb2cGM78SMzsIHs6+eVtLnd6y+tBl
         7HPbB9lQcIyevid/ovsQUDINAnqso/db8IzsKJhaQHs2MzhRGLoSEjiqZX1pjHZi6aJH
         gkPO557WupcgwbsnzbgiTGtF8mJLMxdEoCXqsN8AYVbC9cj836J5vGsZon42cPACOyaA
         emszlu03mZ6WJ2W1uvt9in5+Nl2pLobiVmTnAf0PRN24TBAAARy7RhmfN+fI8xlIm40A
         40zQ==
X-Gm-Message-State: AHPjjUjGaSvCJXROkgz8sKF4eh18iluzPrLjzyVj50hKA/kR58t+AN9N
	GVow6IcGQs+VLUghGZ64bRk=
X-Google-Smtp-Source: AOwi7QDZOPJI1GLAgiP9bxPJJawZ7PZS+bo7OiWqT4OZBqOjT/Hc6YEGQcOLA8Eia5yIPNCEhQdMNA==
X-Received: by 10.28.74.89 with SMTP id x86mr4937689wma.57.1505937380953;
        Wed, 20 Sep 2017 12:56:20 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id p46sm2682746wrb.46.2017.09.20.12.56.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 12:56:20 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgiana Chelu <georgiana.chelu93@example.com>
Subject: [PATCH 3/3] Staging: irda: net: Fix style issues
Date: Wed, 20 Sep 2017 22:55:56 +0300
Message-Id: <eab86b51dfd248799642d173d068581a60dac709.1505936736.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>

From: Georgiana Chelu <georgiana.chelu93@example.com>

Fix minor coding style issues found by checkpatch.pl.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/irda/net/irda_device.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 944eeaa12c93..d33de8a8762a 100644
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
2.11.0


