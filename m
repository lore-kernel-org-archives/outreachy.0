X-GM-THRID: 6391488130164195328
X-Received: by 10.99.105.5 with SMTP id e5mr6104775pgc.0.1488199909193;
        Mon, 27 Feb 2017 04:51:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.9 with SMTP id l9ls2130717ita.1.gmail; Mon, 27 Feb 2017
 04:51:48 -0800 (PST)
X-Received: by 10.107.171.196 with SMTP id u187mr5889764ioe.30.1488199908343;
        Mon, 27 Feb 2017 04:51:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si3299123pfd.3.2017.02.27.04.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 04:51:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id x17so949557pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 04:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QKvNRJeINedwux0GFxSJ+EITwAftdFdcwJfFwkxjYdQ=;
        b=BBC65lGTzlukPLSXdxUjkcwx4H9TDNqEE+sotHfcSFODtzfuzzt8uxDnRfrQ5Jut3l
         hAssLoELULDwsVMOnMDT5XItjaoF6Nad2Lghd+T4CbMA8ipMsQa5RljjmJbHSYLDR/22
         4ByxEoXEOWTNX7iz4pBbdOu95kIVmdNXORs4FKUncP6ZhT/uGeE8CwENin/XQ08PAl6m
         L8CSnQ27DBxqczxaDHMksmA/mLGi+aN2NtBBwoztUNq0VghOxwk+G0Rdp5Ku0c6ghnzi
         cSD5d44aN5sN0QTvFDQpeJU2mzdvr8es2pYu6cGnTxb7CATJQj85F5RCux1SLAZlBaPD
         TaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QKvNRJeINedwux0GFxSJ+EITwAftdFdcwJfFwkxjYdQ=;
        b=d7Gj5aUZTCHMTw8WoSkWsu05rg3f2SVOBqKMmMkZF2kOCoDpbgwsGLNydPH25GIp9r
         pKdBDDpOLZvdCVBq6SsNf8UShpJk9wPJP7yve5vrxxTf44MJBhEZYL4PmNYpoH0GCqXD
         hwiXqObs9Q1jv2v8yJjUfXQQirF1taJ+RjBpofELimy7tM+3tv2lBCryF52dJZm42OCj
         dJQ0z0iFFw+fE97780EgfK6I9xYazuJSXdp2i29LB66suqcubl35rXJB/1fgLEd/TQuu
         r8Hx+j0C4AC+VZtdeRIqlgTRlGKugoFgtl6nCpUhLu6txqkXTzAc3oDMV0wt8U0PnqGn
         ugyQ==
X-Gm-Message-State: AMke39mc65ck5YMSLPyX/rl+O4fr3GSu5E73uFnAbavE5jjJGXxYq304fME0JHUBduACRw==
X-Received: by 10.98.9.14 with SMTP id e14mr20455344pfd.117.1488199908112;
        Mon, 27 Feb 2017 04:51:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.9])
        by smtp.gmail.com with ESMTPSA id b77sm19088790pfl.2.2017.02.27.04.51.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 04:51:47 -0800 (PST)
Date: Mon, 27 Feb 2017 18:16:33 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227124633.GA3008@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
is preferred over udelay. There are two ocurrences of udelay
in non-atomic context that can be safely replaced by
usleep_range(t, t + delta). Pick delta as t (as t is between
10 and 20 microseconds).

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v2:
	- Revert usage of usleep_range in atomic context
	- Clean-up the commit message
---
 drivers/staging/dgnc/dgnc_cls.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 2cf146e..368c6ba 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -16,7 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/sched.h>	/* For jiffies, task states */
 #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
-#include <linux/delay.h>	/* For usleep_range */
+#include <linux/delay.h>	/* For udelay and usleep_range */
 #include <linux/io.h>		/* For read[bwl]/write[bwl] */
 #include <linux/serial.h>	/* For struct async_serial */
 #include <linux/serial_reg.h>	/* For the various UART offsets */
@@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
@@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	usleep_range(10, 20);
+	udelay(10);
 }
 
 /*
-- 
2.7.4


