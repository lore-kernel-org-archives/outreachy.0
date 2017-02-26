X-GM-THRID: 6391488130164195328
X-Received: by 10.36.67.83 with SMTP id s80mr3164490itb.28.1488134295343;
        Sun, 26 Feb 2017 10:38:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.8 with SMTP id e8ls1712695itc.3.canary-gmail; Sun, 26
 Feb 2017 10:38:14 -0800 (PST)
X-Received: by 10.107.132.225 with SMTP id o94mr4176419ioi.85.1488134294611;
        Sun, 26 Feb 2017 10:38:14 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si2450426pfa.4.2017.02.26.10.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:38:14 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o64so3060238pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 10:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yB6SfiwB2pUbdnONsm97hqq028mJrd7ER6Oxs1kIaS8=;
        b=c1dh6DJxhHZVHW4chj9SDhQOxGrNaLHtTTd2M2k/s6bfH5OxmjqYqkuQJzk03gl3Jc
         tt1pVRDXfAzxEP3WF/Ao1SrO0AVI+xfoQhEMA2A74u3mxushPUJ6SHlmKQJGfXAKno5u
         WLcLTuBr6+5pEMngqu9RsG38OC4qhfi+gee+r38UAkz8vvK7yyrXY9kzZhgkXuVeU8MA
         Glk/6iQc9IN1o1foYo26ACXsSNQgLyROpAnIbMPF8Ma6Cnk8QvxAjxyApSuf54XgKmov
         jeAFbDT4/UNtXriaE6gCLNUmsViWauyO3icYQuNUYoV4yu6tH46l8wV18sYGNtVoM70K
         cG7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yB6SfiwB2pUbdnONsm97hqq028mJrd7ER6Oxs1kIaS8=;
        b=KqRSNNSavTTCoKbixGJ5n/wkKZrKCYTTUT9Xel+P9IGLYczYTNElXdbjhcz+hFfNcZ
         jiBpW0Uc09pYqgoSCx736Q6wh1KzSDl046buwDBoMfmB0WtMOTfD/bxL7OhChxCtzyjY
         my2lsAliXCHAZPFzm6mQ9IxGfF2BWrnbZ6/TpDSzyAXRRRAzSRz24XZ9EjPad5fscE68
         V7WPAWYebkgGz1VEE4T6fbrP7/LsD5GYv9lwIIx0/mpWk+hRyOnoy39dhv7VF0vfZiL0
         kGU1JBLlDFyl9aC/zmko2MxcsLdztxwWBzSknpMjMwgdxbRUO4qQOumyNKVHjpHVAOXC
         2jSg==
X-Gm-Message-State: AMke39n47rA1R1mzR8aRzTqSCykfOHDXEH7k1ENQu4qhln8uRrCamjzlNoFVJOhYeAlZ2Q==
X-Received: by 10.98.31.17 with SMTP id f17mr16429819pff.78.1488134294212;
        Sun, 26 Feb 2017 10:38:14 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id v9sm25808211pfl.102.2017.02.26.10.38.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 10:38:13 -0800 (PST)
Date: Mon, 27 Feb 2017 00:08:06 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170226183806.GA3498@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Adding first patch for checkpatch warning on dgnc_cls.c -
CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index c20ffdd..2cf146e 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -16,7 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/sched.h>	/* For jiffies, task states */
 #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
-#include <linux/delay.h>	/* For udelay */
+#include <linux/delay.h>	/* For usleep_range */
 #include <linux/io.h>		/* For read[bwl]/write[bwl] */
 #include <linux/serial.h>	/* For struct async_serial */
 #include <linux/serial_reg.h>	/* For the various UART offsets */
@@ -409,7 +409,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
 	writeb(out, &ch->ch_cls_uart->mcr);
 
 	/* Give time for the UART to actually drop the signals */
-	udelay(10);
+	usleep_range(10, 20);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
@@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_range(10, 20);
 }
 
 /*
@@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_range(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.7.4


