X-GM-THRID: 6264514475504697344
X-Received: by 10.140.140.19 with SMTP id 19mr23152093qhm.29.1458571357366;
        Mon, 21 Mar 2016 07:42:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.160.39 with SMTP id xh7ls517239igb.44.gmail; Mon, 21 Mar
 2016 07:42:36 -0700 (PDT)
X-Received: by 10.66.139.138 with SMTP id qy10mr23308217pab.46.1458571356033;
        Mon, 21 Mar 2016 07:42:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si3940637pac.1.2016.03.21.07.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 07:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so30794878pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 07:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3V4wqQfo0OBPuPtcyU6AxB/l+gRAbFqGr8ciJZ5gy9k=;
        b=v4g2pRSI+USu/trPuIYmr8+jJRR8f32A7/LPTaPEPHtnbq6R1XX5vjtNnvM1+b8HaK
         79QAiGSWHf+JIhKgAnJg4qDN2Cl0gu+yH9WpIy8jYCyBkbEotuDkTRcO05xr5Fk7ZbRv
         xEsK2RpZY+FE80HG9C2D7k8J1XCwmH3B3E45ivwGkF1j9DyZXqUog9ovG6ygqHryDT6X
         g8RtttmNHyBzKIXAmSNuo7K5PH6KwjdmLIHi2tYqq+WKxT+OIr+xnzt8xU8i+Qpuc/9W
         lW54d7gvqmhegw6nkEt9gIazEeUQqhRjtl8bUxdWtFledNL2J08Lkfi3z9IOk7Sdmx5m
         qRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3V4wqQfo0OBPuPtcyU6AxB/l+gRAbFqGr8ciJZ5gy9k=;
        b=gpfcMrAz3v991DpgMZg0w/k1YIdcVnPs1aB1CjE8YmwDj1yaSMZHY4veMPGAfLtp/c
         0jttRvHSlWBMLLK0NcMqTjqqVHcaWjHTCzJZ6KHBFzhhnx5gOJzTRn6x9ey9eIL3nJgV
         t0oWQScfC2R51cfALXJkdRvboF6uKj6nfDXKvKapb4daJ/Ml2tSwwtmvyGtluXgZHVYE
         lv6o8Q07AIiMjp9lkHwrTgag5znVZgF3eUbkM1FSbjPmd5a2VMWGuI630t1akY3d6ycS
         OmX9zzxoYd0UULo2RYppz0T64pnCTkRQOde53IQR1OFrI8Nfn9LpRKhsiquviPZ8FOeI
         W44w==
X-Gm-Message-State: AD7BkJJzq33fYwgeT30BNaDWecflzazPCGXQ5niqDVJosQ/jEnamSTWlBtpcvHU0jypxZw==
X-Received: by 10.98.16.210 with SMTP id 79mr45534327pfq.69.1458571355896;
        Mon, 21 Mar 2016 07:42:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.219])
        by smtp.gmail.com with ESMTPSA id ko9sm41332573pab.37.2016.03.21.07.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 07:42:35 -0700 (PDT)
Date: Mon, 21 Mar 2016 13:13:46 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: iio: ade7758_core: Remove unnecessary blank
 line.
Message-ID: <9d7d6ad78f2ee31befdc396310e578472716df81.1458545206.git.bankarsandhya512@gmail.com>
References: <cover.1458545206.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458545206.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank line.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index d6e35c7..3102965 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -149,7 +149,6 @@ static int ade7758_spi_read_reg_16(struct device *dev, u8 reg_address,
 		},
 	};
 
-
 	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7758_READ_REG(reg_address);
 	st->tx[1] = 0;
-- 
1.8.3.4


