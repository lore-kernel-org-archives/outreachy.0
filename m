X-GM-THRID: 6210399306923376640
X-Received: by 10.112.134.129 with SMTP id pk1mr2990919lbb.24.1445971267963;
        Tue, 27 Oct 2015 11:41:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.195 with SMTP id c186ls829034lfc.71.gmail; Tue, 27 Oct
 2015 11:41:07 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr9503173lbb.12.1445971266988;
        Tue, 27 Oct 2015 11:41:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id bn7si645342wib.0.2015.10.27.11.41.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 11:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id vt6so29481710wib.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 11:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0lcUQK2dHsLYZODoidW1DNG7JjEsiZl++t0NTvED5sI=;
        b=OadJEKGaSgCmNVMEqjnTYV6FqJLunYEm6PQufvGAscrzv4yyk2PaZlBmYPkM7U7EaT
         AoOZWXQiYMoPhBM2rK2ekHUjcatGaiQQAbetdM29eXLNiCUy21EvD56ETbrYY6yRux+b
         Ob689jU8byExqlg07QUNAhulAXZeSAfN4GIQFvJRfuVQk7dqrPbPTWzZSX1F6xRUVMfR
         /Sl+hqQIrharlnG8gJACKu0qZHesbhyFfeBIwxxAFai2cSZmwov0LRR/lSkJb2GD/sp1
         4TmAnmJeikTo1iuTC+ENpMTyDKvpnUS59OF3iJ13DGTCUb/2CVR8qgm6EbLTHdPD9fU8
         Mipw==
X-Received: by 10.180.24.102 with SMTP id t6mr30641026wif.3.1445971266802;
        Tue, 27 Oct 2015 11:41:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id x7sm4971418wia.7.2015.10.27.11.41.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 11:41:06 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com,
	cristina.opriceana@gmail.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: iio: dummy: complete IIO events delivery to userspace
Date: Tue, 27 Oct 2015 20:40:56 +0200
Message-Id: <1445971256-22474-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Starting with commit fd2bb310ca (Staging: iio: Move evgen interrupt
generation to irq_work) event processing is handled by calling
both the top half and the threaded part properly simulating real
hardware interrupts making use of threaded interrupts.
This way the processing is split in 2 parts:

* the IRQ handler that runs in IRQ context and only saves the event
timestamp
* the threaded handler that runs in process context, reads the events
and pushes the in the userspace.

If the IRQ handler returns IRQ_HANDLED the threaded handler is not
even being called since the interrupt is considered to be processed.
Because the iio dummy driver processes the events in the threaded
handler the IRQ handler must return IRQ_WAKE_THREAD so that the
threaded part would be awakened and called.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
rebased on linux-iio tree

 drivers/iio/dummy/iio_simple_dummy_events.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/dummy/iio_simple_dummy_events.c b/drivers/iio/dummy/iio_simple_dummy_events.c
index bfbf1c5..6eb600f 100644
--- a/drivers/iio/dummy/iio_simple_dummy_events.c
+++ b/drivers/iio/dummy/iio_simple_dummy_events.c
@@ -159,7 +159,7 @@ static irqreturn_t iio_simple_dummy_get_timestamp(int irq, void *private)
 	struct iio_dummy_state *st = iio_priv(indio_dev);
 
 	st->event_timestamp = iio_get_time_ns();
-	return IRQ_HANDLED;
+	return IRQ_WAKE_THREAD;
 }
 
 /**
-- 
2.1.4


