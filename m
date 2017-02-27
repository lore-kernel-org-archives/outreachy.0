X-GM-THRID: 6391488130164195328
X-Received: by 10.157.43.121 with SMTP id f54mr2073017otd.134.1488214905481;
        Mon, 27 Feb 2017 09:01:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls11929732oth.45.gmail; Mon, 27 Feb
 2017 09:01:45 -0800 (PST)
X-Received: by 10.157.26.51 with SMTP id a48mr6903190ote.120.1488214905072;
        Mon, 27 Feb 2017 09:01:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si3216080pfe.1.2017.02.27.09.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 09:01:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id x17so1622276pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 09:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HwCPM+zNIzoHxEAyL/8HQf2O2anNAQtd+GlsJD5gPlU=;
        b=PzjvxwrhWzdNs4L7YT2t4nAjTAhumT91QR7t1Lh1ufjCkbJCBfwmqk9k5I2jNXHCbT
         KJ4WdQ4l3/d/Zg/GXRPzoSptSSUDFq9JKYL7BqCWlXMFt6hlkqLNMGGXiovYPgHcu7ik
         b/xnUarByi3E+XWMQV8hThz60WKX48/2YxGXgx6/74Dr2Wkivy/Gn41iPUa27A9mF6EC
         kmqyX0LNoD15Uw1y6WpKZu6ZEJE27wE0g5VYKdwhrcrjptaSYMsngLg38XPA3iXx30sy
         jCRuwEizyHcFY0w2rnZh7NTjaX9ZCDw2nVhsDeavv7nLfImXiw80oHw2ioJ7JmKuM/cR
         ywKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HwCPM+zNIzoHxEAyL/8HQf2O2anNAQtd+GlsJD5gPlU=;
        b=LOjE3vTo4iXbNY+kiLJM1kE2HrJ7PD9002KsxXDzT78CvL8Ywf5aRZTkK7XFRhvntp
         X2F/shZy/xbyFDrQpQ0yP6363OMNIuoUnNniB/SgB3pRq4931hLrklWCp/d1Yk+w8aha
         yUmCkle4NUksuOP2SiVvNtbYKBY6kl94vmWsx77if1RAXfYJ8DdQcFYgkkLAQyH5MzI2
         XbrnaPW0AC6N8CQZ2mikYXdRCPdazT0QrAXVIvAuyc0f/uA8BfrbZ2wje0pCJOXrK048
         tfJ6DKb9mY/TpYGJUsSaBsBGSRXgGKLCv4PQke3eaY0WtJcFcXtlbQgaoz7kRxfPSJMq
         EGKg==
X-Gm-Message-State: AMke39mSMnvVaFG9oFSt0lvZE7FEOMdTw9qFOFp8qcaLnmC0gCHEPI3pmSa9qvBo12TwYw==
X-Received: by 10.98.218.76 with SMTP id w12mr21988332pfl.162.1488214904850;
        Mon, 27 Feb 2017 09:01:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id h17sm31722887pfh.62.2017.02.27.09.01.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 09:01:44 -0800 (PST)
Date: Mon, 27 Feb 2017 22:31:39 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227170139.GA4712@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning on dgnc_cls.c: CHECK usleep_range is preferred
over udelay. udelay(t) in function cls_uart_init is within non-atomic
context and can be safely replaced by usleep_range(t, t + delta) where
delta is t (as t is between 10 and 20 microseconds).

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v5:
	- Breakup the patch to handle one cleanup
Changes in v4:
	- Fix commit message formatting
Changes in v3:
	- Replace usleep_range by udelay in cls_flush_uart_write
	- Fix diff in commit message
Changes in v2:
	- Revert usage of usleep_range in atomic context
	- Cleanup the commit message

 drivers/staging/dgnc/dgnc_cls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index c20ffdd..28a3e16 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_range(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.7.4


