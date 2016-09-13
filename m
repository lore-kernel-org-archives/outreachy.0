X-GM-THRID: 6329721618764398592
X-Received: by 10.176.69.214 with SMTP id u80mr724914uau.8.1473753531262;
        Tue, 13 Sep 2016 00:58:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.8 with SMTP id l8ls3749985itb.14.canary; Tue, 13 Sep
 2016 00:58:49 -0700 (PDT)
X-Received: by 10.66.226.10 with SMTP id ro10mr19049403pac.29.1473753529936;
        Tue, 13 Sep 2016 00:58:49 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 142si3322511pfx.2.2016.09.13.00.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id ph5so2791156pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 00:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=S6tkV5pnaW2ng1vxl8O+8us4KvuRi8DTe/t2x1JyWig=;
        b=M3hP+Hs66FTKUtLIOawAxEJnLVfjQj8Dv/F20NOjF6PNeYCe4tscuewyDBYs8azb6M
         iJ9Mx7LrNQhy/AwtUecWR+Qcm+oaY/ANzjQW7laMXm9VHcvOzjkAU329EEtm1CTJQgqV
         IN3VbNaav9nJeH8HOdcpm6807cuPBpduo5JvCVoXf/WBeNQBYc2iIOjv9YK1VCGAbVcR
         Ywm/23emiL6lnLMNtNblCcjyaZU+P7T6b70YyVoBnmXonrpmJgKHkY2l7UBE9eGp8888
         vMQWAxMM8xU9CLQohP6s8xaMgoMKFYyy7qQvUTMqBWjfO4qi7PxqO/OJrzncrkuDi6iC
         RJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=S6tkV5pnaW2ng1vxl8O+8us4KvuRi8DTe/t2x1JyWig=;
        b=B0M2Z50/uWtwLRVAmZaNiTVczBPT3KcG30Qadwe9Q+mVxmOnRWa/MU0OqyAVJJ5/KY
         OFo7/FAUYIUpjDYC3+fH08wExmWacMWtr+wkorINTmYR+YQMNyNBFJwQapaif3LB4FsL
         RVzpTTCOzFCoFTzEs34kBfr7rJy6PcPCXCKhRewdASxSqOG8+I4f2JtXuq/OumWjuGVu
         Ky1w6YbhtLfXmyOuWMSizVjDad7kT2a3fT5fuadmGmImU8He1691IInP+eHZ6LQuS99n
         wN3WSbTMB6Si6s/GN8+4HdK2jCeNiuC3f7sha+u46acyGg2YbxNxMmDJ41Vgagq3qPlJ
         aRJQ==
X-Gm-Message-State: AE9vXwNVMWckS7CT5dK7HrS5D+h7nNFL27IVaK1nOii9VvdYmfHO7NFZHCtCWuu6BXau+Q==
X-Received: by 10.66.232.106 with SMTP id tn10mr42006500pac.130.1473753529769;
        Tue, 13 Sep 2016 00:58:49 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id 10sm28003095paq.20.2016.09.13.00.58.47
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 00:58:49 -0700 (PDT)
Date: Tue, 13 Sep 2016 13:28:39 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, lidza.louina@gmail.com
Subject: [PATCH v2] staging: dgnc: dgnc_cls.c: usleep_range is preferred over
 udelay
Message-ID: <20160913075754.GA7012@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

According to Documentation/timers/timers-howto.txt"
udelay() is only called once from a place where sleeping is allowed.
We can replace it with a call to usleep_range()
with a reasonable upper limit


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---

Change in v2:
	-By mistake another patch was mixed so, Remove that patch file
 drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
 drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 4e1e0dc6..1b07255 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
 	writeb(out, &ch->ch_cls_uart->mcr);
 
 	/* Give time for the UART to actually drop the signals */
-	udelay(10);
+	usleep_range(10, 20);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
@@ -632,7 +632,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_delay(10, 20);
 }
 
 /*
@@ -1104,7 +1104,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_delay(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

