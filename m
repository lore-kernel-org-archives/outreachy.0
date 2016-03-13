X-GM-THRID: 6261514369469775872
X-Received: by 10.13.232.201 with SMTP id r192mr14208167ywe.52.1457872420498;
        Sun, 13 Mar 2016 05:33:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls3569755qgc.99.gmail; Sun, 13 Mar
 2016 05:33:40 -0700 (PDT)
X-Received: by 10.140.31.102 with SMTP id e93mr14294868qge.27.1457872420108;
        Sun, 13 Mar 2016 05:33:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id s129si1183728ywb.5.2016.03.13.05.33.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 05:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id s5so5239668qkd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 05:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=38PINOJPBKUZe6TYfOj78dIC8YPS6Q1+dpbvP5IwC3k=;
        b=sxCTx7l9QDOVMH+8rMkQCnbjaU2caabWlhx55lOpGFXpIPq9YgbfxO0o0ZOIKyS44+
         QVIPYMgz91E2hmoqPeWuBQzNkXWZnDjvpiEkrb1Na0dzfHfiD29otSS8G7ZF/mjtp4FP
         BgQJfOlU1uVpfvHQjcZSVwINnQpjF/wh83n/hn3EsZhyD1OlQrtbWBk38V39pAMi5K/Y
         Oq2oWLyzQ9gV0h84PNNtMXWTWMKlnDtfCSU2cm+F2/hY1XFncKsOgv8aMZXyAa6pP+TD
         4ADMWjxdd81B4YjOAlj/n5QExyp6jwX3qY6vyKkEdnFhhTPRENrw3ATwN1D0ZH0nGgBX
         6HGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=38PINOJPBKUZe6TYfOj78dIC8YPS6Q1+dpbvP5IwC3k=;
        b=AikeP5ZIBuWSuSdy7MVKRBgC/s15xHiCTuhR1gDJ4//J132ZjLEDLfnWY0XRS5u/0o
         M7C+tGirIwT6lw1L6Ya+NTJX9MWSo56hqdvKbc0D77/kXqhSiSnwzxejOLOzgiD6q2e2
         DNngqT16PvFZ6SeWoPGDaVHGyo15nds+B/AnhHaPrwtyxx31R6/haPu28ZIRTfNgI5sv
         pZiauuatZ8F3wVtc8rid+EdBJwSh2w6GVcEY1pv7FpVabHfBUUzzhexmfzDa8yHdORR8
         5dKEO3g6XIBjkTJ2Ab8WC71NzknxpvPUaoAe3bw+41G6wvd4EtSYrb3KdPhNM3zk/+Hb
         +Xqg==
X-Gm-Message-State: AD7BkJL8JbeuV7kgYY3kWEghesHQgbr2M5LFh50nHQEFIMPOxA/CGW3zRrp6G3oiv/ymmw==
X-Received: by 10.55.24.87 with SMTP id j84mr23391789qkh.92.1457872419779;
        Sun, 13 Mar 2016 05:33:39 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id y127sm8145787qky.4.2016.03.13.05.33.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 05:33:39 -0700 (PDT)
Date: Sun, 13 Mar 2016 09:33:37 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: replaced udelay with usleep_range
Message-ID: <20160313123337.GA10274@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces udelay with usleep_range fixing
a checkpatch.pl issue:

CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
+       udelay(10);

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v2:
   - Fixed range timing
 
 drivers/staging/dgnc/dgnc_cls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 51db98b..7e3cc48 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	usleep_range(10000, 11000);
+	usleep_range(10, 20);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
-- 
2.7.2


