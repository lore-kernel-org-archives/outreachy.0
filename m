X-GM-THRID: 6210349176655446016
X-Received: by 10.112.133.232 with SMTP id pf8mr462138lbb.20.1445959596861;
        Tue, 27 Oct 2015 08:26:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.76 with SMTP id q73ls411902lfq.72.gmail; Tue, 27 Oct
 2015 08:26:36 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr9663393lbp.21.1445959596097;
        Tue, 27 Oct 2015 08:26:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id h1si283862wiy.0.2015.10.27.08.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 08:26:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wiut4 with SMTP id t4so28293636wiu.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 08:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UDY8leoWH+l50vElhf5DsxkJL5wbDBWU9FxcjhBvVYw=;
        b=hQkApdRbbB+TWYs610Dk94yUIBZDIryi1z+v+hVWFrcMJK2GwFDtYmFR6m63NjU7DJ
         5W7NCdIN9tQmE8whIQpIGgfIv6R9sx+0GFF6b9z6lunrhONzuRSkDXUq43jztD862czX
         hStEXZ6Lu7poEZB8p2Fuzw59DTjzTY0gcNHk5GVaAz1zz1ZRDDTMHwktUbjPG2f67gIh
         T5Nz0jlsor/ASMTUxdLBvF+w1BEo0IoBP7cYytUQLuyjbs7S8ycIBPt2lRS6Wi/c/76I
         lNu7ASBljc7SCzCRMDJjLAMJN/VrVg+u1YIbngFXx8ihmVw0wi663KHhmsGNlebfPm0Q
         0ltw==
X-Received: by 10.180.211.50 with SMTP id mz18mr28076230wic.65.1445959595956;
        Tue, 27 Oct 2015 08:26:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id ub15sm13460800wib.6.2015.10.27.08.26.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 08:26:35 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: iio: change IRQ_HANDLED to IRQ_WAKE_THREAD
Date: Tue, 27 Oct 2015 17:26:27 +0200
Message-Id: <1445959587-25953-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch changes the return value of the primary interrupt handler to
IRQ_WAKE_THREAD in order to wake the kernel thread represented by the
iio_simple_dummy_event_handler function and continue handling the event.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy_events.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/iio_simple_dummy_events.c b/drivers/staging/iio/iio_simple_dummy_events.c
index bfbf1c5..6eb600f 100644
--- a/drivers/staging/iio/iio_simple_dummy_events.c
+++ b/drivers/staging/iio/iio_simple_dummy_events.c
@@ -159,7 +159,7 @@ static irqreturn_t iio_simple_dummy_get_timestamp(int irq, void *private)
 	struct iio_dummy_state *st = iio_priv(indio_dev);
 
 	st->event_timestamp = iio_get_time_ns();
-	return IRQ_HANDLED;
+	return IRQ_WAKE_THREAD;
 }
 
 /**
-- 
2.1.4


