X-GM-THRID: 6251877540046045184
X-Received: by 10.182.125.70 with SMTP id mo6mr18721508obb.47.1455629022128;
        Tue, 16 Feb 2016 05:23:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.168 with SMTP id ub8ls1651795obb.46.gmail; Tue, 16 Feb
 2016 05:23:41 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr21818233obb.24.1455629021844;
        Tue, 16 Feb 2016 05:23:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id v197si2365519ywa.1.2016.02.16.05.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:23:41 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id y9so133584598qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8L/wbERqxPzob5heRPuVBcuDYTqObTBkS7tyeIHIQgw=;
        b=FWZX3EDQ2eUqHkLU9nykfCUZdXHZTxER+FvV5kTt8EeBdGrFQ+QybxQZRyW/BJtj20
         u5wZyJtnCwavDFslAKCTcWVAUGsWgzOAHwZKnX41q7P9gWznEpw5rwGu6g2eOMm2SSFJ
         tAg6SYjAxEHrw2ZZF8UeKQSHCz9eyhZePpG/dIajWT3UrDmam625CDdgo5Rt236pryFZ
         E390x5nUyewPYlodzX4dWpzqWWx/DxoUs6av9mxUk/PyFseU20PSnL1uyxJPy5yd5oxz
         3fNyVwdGaVJ+vA3ZnMYKJ8zwDrlPOXRBpXa8nKR+wYc44XYfPuyL28Dl1rYBXSnrg7Gi
         LAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=8L/wbERqxPzob5heRPuVBcuDYTqObTBkS7tyeIHIQgw=;
        b=koYKZEEdGg9Vfsj/ypfA6CLg122UN+QujHzjr0JtkEDEhtW/6eoImqiDc6wTUS2gPQ
         xD8jnCgV67e1B8tJSVm+G+kk0eA5hDbci8RNVaLaD8rr8g470SSLgdFMFMaBHNh/fl2E
         R25r/SYRQBBBGZXURpaY3UZZAqapdzTgIuYZvHGFeCDHUK5Lnhta8VhUULrTI2iRYL2z
         QvkZ1Nf4I2gN0K5TwC921tsmUGaPNKj/m/Vrk3Ep+BHhWMKvL+8D64wmaAr+wlyXCVlU
         mGFXLxuWHHTqgAl9KAAo9QngxIH7s0Gm0I05db5dlMa3p/px27WotLu/4fezzi0tvz64
         szyQ==
X-Gm-Message-State: AG10YOSfMxpEiSO1Wpx9a1v06y+Tu0sC1a0qrG5c4fbWzjsvrmhW7WLXF0ocRpbQegsBkA==
X-Received: by 10.140.19.43 with SMTP id 40mr27435779qgg.72.1455629021693;
        Tue, 16 Feb 2016 05:23:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n35sm13123973qgn.10.2016.02.16.05.23.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:23:41 -0800 (PST)
Date: Tue, 16 Feb 2016 13:22:59 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-wireless@vger-kernel.org
Subject: [PATCH 2/3] staging: wilc1000: wilc_wlan.c: Remove local variable ret
Message-ID: <25b9ee101a00b159f0b432d5e94f9e776f354402.1455645880.git.janani.rvchndrn@gmail.com>
References: <cover.1455645880.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455645880.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove local variable ret and all its initializations as it is no longer
useful.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index c3ca662..75b9bbb 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -209,7 +209,6 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 
 static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 {
-	int ret;
 	u8 *eth_hdr_ptr;
 	u8 *buffer = tqe->buffer;
 	unsigned short h_proto;
@@ -268,10 +267,10 @@ static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 			}
 
 		} else {
-			ret = 0;
+	
 		}
 	} else {
-		ret = 0;
+
 	}
 	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
 }
-- 
2.5.0


