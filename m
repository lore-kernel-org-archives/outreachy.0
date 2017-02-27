X-GM-THRID: 6391488130164195328
X-Received: by 10.129.95.133 with SMTP id t127mr6863346ywb.94.1488213290524;
        Mon, 27 Feb 2017 08:34:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls12471542oth.10.gmail; Mon, 27 Feb
 2017 08:34:50 -0800 (PST)
X-Received: by 10.31.92.83 with SMTP id q80mr3794777vkb.14.1488213290142;
        Mon, 27 Feb 2017 08:34:50 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si536409pfh.2.2017.02.27.08.34.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:34:50 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so1564326pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 08:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9a2OjVNfg8U8Sj7idllGLWG03aYSPXQ/FtjE1kFprtI=;
        b=VSMn+Gg2GFIJHnLRrua5h0YiMwDzeOIQ3SWsvNKZE09KZSad+XBSBh/Mzjsw8obnr4
         Utuz0MlWTDyhuP6xWUvo+5JcXroPWdOmnAVZikSYbno/fVzCPxicY/cDjayFi+4ATa68
         HEVcg8BavTJnXSCcW0m+5HP3Z+ksvE9MZ4X6x0KMNSArEN8il6oFU8iUvMWCC1aeXL36
         kRbhBY89suQrSVPFpjVq+zUYlinQ6p09OtH8Bb+bIOuz+lQ0K4CLkhk2xtAxT0xTc+63
         xvETJT27zIjCC1fZvKzMFai7n3QoCQitqKuS9+mBanDrsCG86BDiHiQlRZ4voKw1abns
         Wy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9a2OjVNfg8U8Sj7idllGLWG03aYSPXQ/FtjE1kFprtI=;
        b=oW0aWinpt7u1PqgWZL5MryOP5idgmhOIOdPAK1BnxWJDtGHcoEUrLPx2ZCXk9C9kC+
         SfCMtazbgleFxL3lDwJ8aC454KTWyiH/kRPVjIOiiTdhSDWsiL+X/TfRc5d9KCEOGjPy
         uJzIw17gjrjXo8eIBPrQ+r09NX3o0dvPg1iu3zpoHYmUsP17hbRW3JDxdGekMne55RYh
         zNbdcyhaBjkyVyLujzOMzGEQea8MOG4zBVm4nISnZRklUgC066vRunWUX0lvfB9aZ6p5
         S8n8l44B4vOUF9AjvAFNAeSvpaT/JOWuLJhCGMnHL3ZvM+8zCxCJNtsP06A+aa42mIZN
         MOGw==
X-Gm-Message-State: AMke39njI4AQVKPqiqT2GqqOGcUC2Imj267arzVlmw9P8gI3/oSKNI89CnGvPGlaB+VMRw==
X-Received: by 10.99.36.7 with SMTP id k7mr21861616pgk.199.1488213289839;
        Mon, 27 Feb 2017 08:34:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id d2sm5598826pgf.35.2017.02.27.08.34.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:34:49 -0800 (PST)
Date: Mon, 27 Feb 2017 22:04:45 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227163445.GA4514@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
is preferred over udelay. There is one ocurrence of udelay in
function cls_uart_init with non-atomic context that can be safely
replaced by usleep_range(t, t + delta) where delta is t (as t is
between 10 and 20 microseconds). Also replace usleep_range by udelay in
function cls_flush_uart_write as it is called under a channel lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v4:
	- Fix commit message formatting

Changes in v3:
	- Replace usleep_range by udelay in cls_flush_uart_write
	- Fix diff in commit message

Changes in v2:
	- Revert usage of usleep_range in atomic context
	- Cleanup the commit message

 drivers/staging/dgnc/dgnc_cls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index c20ffdd..7068c3b 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
@@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_range(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.7.4


