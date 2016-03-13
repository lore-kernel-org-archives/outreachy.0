X-GM-THRID: 6261346523423965184
X-Received: by 10.66.142.135 with SMTP id rw7mr13129483pab.20.1457833341420;
        Sat, 12 Mar 2016 17:42:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.162 with SMTP id j31ls3565474qgj.88.gmail; Sat, 12 Mar
 2016 17:42:20 -0800 (PST)
X-Received: by 10.13.232.201 with SMTP id r192mr12902021ywe.52.1457833340791;
        Sat, 12 Mar 2016 17:42:20 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id i133si875764ywe.7.2016.03.12.17.42.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 17:42:20 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id y89so128208160qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 17:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ikyCfsA2HfFw0gIBCjrHRY6jBniL7grVtLE28L5ZLM8=;
        b=LUUXt90X8lKVj4qgRwQ3+8RynIB65t4emmhrSJSicEqw3UxsPNWR4/AC0cwvFVevb9
         x3hRYY4iLTRyYDKSjhPleumXswEEG13njFKGRlp9+DioHakrfAyKoUCgDAAEBA38sFCg
         ZFC0QECmZpnwp2qKMMclD7Aoo2Oaxk3r+CgGDE/WL2eYb6W7Bv2zAWwAU0uQRNXxLu64
         /IXdGibR9qQmQjblaOgN5QJRGA0IXo9H/s+xiA45HdOPOjTfHNiru+SAF9we/3Z47r7o
         26v3qD6BWzoKcEdlmiKF23xd3FxC2llrcN1n5ChGBVC7et/pDZ9Z3VUSP4yuR7Q1eL+K
         hNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ikyCfsA2HfFw0gIBCjrHRY6jBniL7grVtLE28L5ZLM8=;
        b=VzysJZwKehH1KqW1xxfehTQ8n/EA7jFB+t1/e8dJtdPyxWl8T7tJnCQajLGYkkfFMj
         to46LO54ZmhtpWPmadF9oS01kXFoPM/j2gVr0BruM/6zk9pIPqR6vNN8677h3LLwQ/4+
         mafnZkRRy61Mt+fJos9etowqfOflQo/t62T8BtoMMPlR2n6abRJ8i5wFyAnjfxjuxLIB
         Erqf3DwXToRoM7JSPgWJfz5dacP0N1Vk/4H0PgAq+jegVzMZ4WkF/Da5gmyqbrTbgakl
         U+HwYNTQAc/zPjoxvSeBbSIHOsGl2I19GQ0PwvfPZ3c5RyGJedrl6kuki/O+y3TgxN7O
         7ixA==
X-Gm-Message-State: AD7BkJIj0G/qFOunbClBY8+NFGrLxVfio7kvC8UfyawpCcjTw+JD8mOIInHDoWZ4E0td7A==
X-Received: by 10.140.221.17 with SMTP id r17mr22521418qhb.61.1457833340448;
        Sat, 12 Mar 2016 17:42:20 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id f128sm7177543qhf.30.2016.03.12.17.42.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 17:42:19 -0800 (PST)
Date: Sat, 12 Mar 2016 22:42:16 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH] staging: dgnc: replaces udelay with usleep_range in
 dgnc_cls.c
Message-ID: <20160313014216.GA20292@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following issue on checkpatch.pl:

CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
+       udelay(10);

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 6e1e475..ac6f7cd 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -1172,7 +1172,8 @@ static void cls_uart_init(struct channel_t *ch)
 		UART_FCR_CLEAR_RCVR  |
 		UART_FCR_CLEAR_XMIT),
 		&ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+
+	usleep_range(10000, 11000);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.7.2


