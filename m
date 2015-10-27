X-GM-THRID: 6210467183328231424
X-Received: by 10.13.248.68 with SMTP id i65mr23206627ywf.39.1445987282324;
        Tue, 27 Oct 2015 16:08:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.26 with SMTP id x26ls2232426ioi.31.gmail; Tue, 27 Oct
 2015 16:08:01 -0700 (PDT)
X-Received: by 10.68.195.197 with SMTP id ig5mr23012128pbc.4.1445987281963;
        Tue, 27 Oct 2015 16:08:01 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si4454659pbc.1.2015.10.27.16.08.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 16:08:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so235545698pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 16:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Ht1Ypy5jrycqzSW+iFHYVZi8XI28kHXtHIGfY/B4RMA=;
        b=Rk4h+GF9RfpgSkRfIgAXNhTB7nRB469/LMAC7KXmQlZ+7yutDo1Rb7zyP/2C1wn0pF
         Ph2rJJvwvZBS8NXIrw6MPYL15BLZrwwvFY07loPp9EmZnlwBSEDZByWRFletQS2syj1o
         ILDk6v4OqRkTkWksHWgLaI83Yv42DSc8GlG0n05NQ28lcb/B6i7daZIQs7CbVAwSBnxx
         Q+Z6PNPEBroDdqWIiyZPHnJDDDIAA2+4VoVPoNoK1Z6YYgGbqoFzGmcp1iWb7gvYJWf8
         EkknpvGNT72JvWyH2IpfLbmHjLCgt8I9LHVUZn1dnweU2mXGXZ0s12KJRsdf92y+xmMa
         2Esw==
X-Received: by 10.68.185.67 with SMTP id fa3mr30230464pbc.113.1445987281846;
        Tue, 27 Oct 2015 16:08:01 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id lo9sm41697643pab.19.2015.10.27.16.08.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 16:08:01 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/2] Staging: iio: impedance-analyzer: Fix sparse warning
Date: Tue, 27 Oct 2015 16:07:54 -0700
Message-Id: <3ed842ff456afb99af4f184e2a70cd6b12b51c0f.1445986777.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445986777.git.ksenija.stanojevic@gmail.com>
References: <cover.1445986777.git.ksenija.stanojevic@gmail.com>

Fix following sparse endian warning:

drivers/staging/iio/impedance-analyzer/ad5933.c:671:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:671:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:671:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:671:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:672:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:672:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:672:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:672:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:674:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:674:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:674:34: warning: cast to restricted __be16
drivers/staging/iio/impedance-analyzer/ad5933.c:674:34: warning: cast to restricted __be16

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index c18109c..10c43dda 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -644,7 +644,8 @@ static void ad5933_work(struct work_struct *work)
 	struct ad5933_state *st = container_of(work,
 		struct ad5933_state, work.work);
 	struct iio_dev *indio_dev = i2c_get_clientdata(st->client);
-	signed short buf[2];
+	__be16 buf[2];
+	int val[2];
 	unsigned char status;
 
 	mutex_lock(&indio_dev->mlock);
@@ -668,12 +669,12 @@ static void ad5933_work(struct work_struct *work)
 				scan_count * 2, (u8 *)buf);
 
 		if (scan_count == 2) {
-			buf[0] = be16_to_cpu(buf[0]);
-			buf[1] = be16_to_cpu(buf[1]);
+			val[0] = be16_to_cpu(buf[0]);
+			val[1] = be16_to_cpu(buf[1]);
 		} else {
-			buf[0] = be16_to_cpu(buf[0]);
+			val[0] = be16_to_cpu(buf[0]);
 		}
-		iio_push_to_buffers(indio_dev, buf);
+		iio_push_to_buffers(indio_dev, val);
 	} else {
 		/* no data available - try again later */
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
-- 
1.9.1


