X-GM-THRID: 6261406772094828544
X-Received: by 10.140.179.210 with SMTP id z201mr13404320qhz.26.1457847368239;
        Sat, 12 Mar 2016 21:36:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls3497952qgj.83.gmail; Sat, 12 Mar
 2016 21:36:07 -0800 (PST)
X-Received: by 10.140.181.198 with SMTP id c189mr13411033qha.24.1457847367664;
        Sat, 12 Mar 2016 21:36:07 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id w126si1019598ywe.6.2016.03.12.21.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id x1so63649899qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 21:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OwI3AdNRusWDZ1gPTlDBPIULKdkidpMrx0rJr/QmuD8=;
        b=J/7dQuCbpXlCrNyqUP85IErU7Mup2JqzhTPQAplI6M09upB1c5UOi7P7cRi8w0s9Oa
         9LvHkas+yVcF7YebqRupVFY2vqnMMketplVmN5DtqvN98ESAwiBbpO7OWUTEawiv2RwF
         tIX7F9EZ4Fxf82e7vSHy3b0aF9mcazu7HdStlsVZrz4KTptUMoX03LZJMUIbXV+NmpBe
         w9GJ43P2J7lX+hnrjs5cr5sW6ziVtakt1yOSWxUwiGUdRdUS4gxbHK/eeoKOturfMTeP
         QcLAyG5+h/SKFiGnNYOFntP/Vj8YbG8jujB+FlMibzfTUUbYM7kONhpIZYpw8tNmWl4B
         u3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OwI3AdNRusWDZ1gPTlDBPIULKdkidpMrx0rJr/QmuD8=;
        b=gKRR21822OK3Pf94K+nfSRBtejcZoe+ayYMZtc3kug45jkEsUI9tDKnJbdHt8UU1ar
         Im3j8R2TZG8OOGMZPOpkF1XHd2zj7Hj/qzLgi27wFrgLcAlVkmJHDSgy81rBMcklktrk
         l1B2oxoMZARB0hsVf7BkPOzXvxBgaiWxeQ+TvYLTkNTR7htuVkahbY4B5yIxTPqnBVWV
         nsSuRs47xcyicQ23/9CmiAUzNEnE4aySVuTjp5bD3IzgHDzus93NEXh6sJHSBMTRn/Nl
         Pxr0KXQmux/OiDnFO28ShEAo80ytG0k7I1DYkON57UdL1cJ2O001Gal0HSWqcITjCQtd
         ZjlA==
X-Gm-Message-State: AD7BkJJgy8PUkl9wt8CpBewaOtCAqKvlYMWEZV3ChOO7BVs6C7itBm7T1D/I6WejVvU8PA==
X-Received: by 10.55.72.12 with SMTP id v12mr11696928qka.100.1457847367324;
        Sat, 12 Mar 2016 21:36:07 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id 188sm7514030qhi.1.2016.03.12.21.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 21:36:06 -0800 (PST)
Date: Sun, 13 Mar 2016 02:36:02 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: added spaces before and after "|"
Message-ID: <20160313053602.GA19464@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes formatting issues while mantains
80 character per line limit by removing
unnecessary parenthesis.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v2:
   - Removed file name from subject line
---
 drivers/staging/dgnc/dgnc_cls.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 6e1e475..34fbdd8 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -1168,10 +1168,8 @@ static void cls_uart_init(struct channel_t *ch)
 	/* Clear out UART and FIFO */
 	readb(&ch->ch_cls_uart->txrx);
 
-	writeb((UART_FCR_ENABLE_FIFO |
-		UART_FCR_CLEAR_RCVR  |
-		UART_FCR_CLEAR_XMIT),
-		&ch->ch_cls_uart->isr_fcr);
+	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
+	       &ch->ch_cls_uart->isr_fcr);
 	udelay(10);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
-- 
2.7.2


