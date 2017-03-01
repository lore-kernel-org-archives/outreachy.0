X-GM-THRID: 6391853165907542016
X-Received: by 10.200.49.99 with SMTP id h32mr2147382qtb.71.1488364618606;
        Wed, 01 Mar 2017 02:36:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls3547717ote.48.gmail; Wed, 01 Mar
 2017 02:36:58 -0800 (PST)
X-Received: by 10.129.40.134 with SMTP id o128mr2454100ywo.82.1488364618288;
        Wed, 01 Mar 2017 02:36:58 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h130si581871pfe.1.2017.03.01.02.36.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 02:36:58 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so3275697pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 02:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Si1jVh2suspK86oGCFAAdW++mn89x/EF2+MQnHEFEoI=;
        b=MvlF0H92Vosi+1l8IbOkPqYHJR5yJNbRz/zGuvAxKhki49nwBrMXDExqXdVgUJcTe0
         sayW9uzZ+fA/89WOyVofpl+hfCuOk5sHedBqoqjSnUofTsY7C8Ozy1YqV7GX/L+1YLP2
         mbQKq65M3eD0l/TU/4bf/7J8T/Kf9/5ghPEq5c/G+XIzXD8B7MkriqQjq7gjGYE2xCjl
         BmRMChaJldQbjbLKMonow8s6STD+7P+pHPSoRGuHAJuo4H6YRM9XK3EDKIyQGBpfLBxr
         /YeKP7pBzQpBW/5CWxVOXPmx9D9oVo5GKNouLnq/8gn2RTN3o0kVRzlDVmz18WEJ7KsP
         OxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Si1jVh2suspK86oGCFAAdW++mn89x/EF2+MQnHEFEoI=;
        b=FrNbPuH15Nz+cgYfa2GYyVXNy2eXlvLbEv64ioL3PzYMgTh5t8GxACNx3Hs3lAezJ4
         FByd+IuXTdf5C7A2mW5+xldhJvuyHEmBMlThOv9XELmgLhBQkKsm7dsk99rOnDo2Ew87
         04yYjzIQFCqjAOxsUdeDyvjdwXZ4HjnbwWDt4a0vDr52KtEcJza5n6zz0pXyi6qD93rE
         YoWhRLZlZtx/69RtRh0EQiWUBNhK/B+H0Lo+vWnm9ctLKU3t0Di/4vh22so4HZ5zNyDE
         uBE8SxDdW/J1EEZGB3WYW4i1cJhc3aVMXj6FlcKmV0cf8+lLzYLTbBornyKdRPEzo2IP
         PXkA==
X-Gm-Message-State: AMke39nb51BPNIbrHvNzERutjI/yPpXwkU0H0TMqiHwm+MLEzARLcC71VgEmMeo7Jqq3NA==
X-Received: by 10.99.65.1 with SMTP id o1mr7898569pga.93.1488364618045;
        Wed, 01 Mar 2017 02:36:58 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id e68sm9636866pfa.85.2017.03.01.02.36.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 02:36:57 -0800 (PST)
Date: Wed, 1 Mar 2017 16:03:15 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170301103315.GA4448@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

udelay is impelmented using a busy-wait loop and consumes CPU cycles
while usleep_range is implemented using interrupts.cls_flush_uart_write()
is called after a channel lock is acquired i.e. an atomic context.
Hence delay in this method should use udelay instead of usleep_range.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v3:
	- Add a comment in code udelay to ignore checkpatch warning
Changes in v2:
	- Edit commit message to explain why udelay should be used

 drivers/staging/dgnc/dgnc_cls.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 28a3e16..ec190e5 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -609,7 +609,11 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+
+	/* Ignore checkpatch warning to replace udelay by usleep_range
+	 * as this function is called under an atomic context
+	 */
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
-- 
2.7.4


