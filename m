X-GM-THRID: 6330241382632914944
X-Received: by 10.98.24.146 with SMTP id 140mr1139120pfy.3.1473874175522;
        Wed, 14 Sep 2016 10:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.83 with SMTP id e80ls515521ite.0.gmail; Wed, 14 Sep 2016
 10:29:34 -0700 (PDT)
X-Received: by 10.98.23.88 with SMTP id 85mr1008066pfx.5.1473874174699;
        Wed, 14 Sep 2016 10:29:34 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 142si1438791pfx.2.2016.09.14.10.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so1012592pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Tsfr31hWbYiEDmWQjx23JbvoUGED1j6k1tLH/BMaQQc=;
        b=VEKxTJxiukxa9xraXDzP/pncVuoS/oUuPZ2VulLf/8aJpwjhO8XMDwWSL0/qW12cQG
         C0T2zcI+qnHxe7hfu7j7gmsD3HJxw8I1RMpSHL14ziAuK2RuQq6wOQCr6eoZQJopg21w
         Mr1wkYrTIA8CEA/42dvJ8jkvQEQOZqPU1v7E+KJozr00BO0WgCuOFIpbZ+SX1gHjPITq
         rtQiRUxpUEsj4cokoHbhlGQ0kwgQXhPz88PQMHksTBp+kf2zRPIACoj+V6U9vvt0Mp9x
         29j3noenYl8eocdx6ruNoAC5QxtSFAfVZVMUzHK7chH2i7cwDJrkGtWIw892gxdL8tTX
         fNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Tsfr31hWbYiEDmWQjx23JbvoUGED1j6k1tLH/BMaQQc=;
        b=YTeSaD4gFVXh5p1XJyGU7Oz5Y3TZtKlO7nFk6o/888kTacOWCHuoNecJUjTCw9Dah3
         S8OHJa6UWGqUb2r9gypnSAMu9KifflXEOa2/QAEQQB3EmyXgnymG5NLsZxpZ8lub0KBu
         G/DrZn+UJ+gjl5V5OxzRtbY7grqTdCP2ZYa2/oa1u9fK/+V2NSlbdNgp/gIVTljPbAN8
         CxW6iXjTnVynVfAMF4JMJFJubnRyYJBvk3nOpfGaYfPZYYbwji+v2TK4JsaDe/CCUEZQ
         JQXEknnMT5NyAEfTXqXxlOxMGMrmCT08fUI65cSmFueZDw569wSXpiE73m5o4HnpD3Q0
         nvfQ==
X-Gm-Message-State: AE9vXwNj4YBIDIGI25H92npj4bW/y5JwUNFBgI+yJtA0XWu1KCxfd63H/BrgTy+QwNs7bA==
X-Received: by 10.66.67.51 with SMTP id k19mr6529828pat.55.1473874174302;
        Wed, 14 Sep 2016 10:29:34 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ps2sm6932751pab.10.2016.09.14.10.29.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:29:33 -0700 (PDT)
Date: Wed, 14 Sep 2016 22:59:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: accel: Fix indentation
Message-ID: <20160914172924.GA27415@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
WARNING: Statements should start on a tabstop

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index b5625f5..61f3241 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -412,7 +412,7 @@ static const struct iio_event_spec sca3000_event = {
 		},						\
 		.event_spec = &sca3000_event,			\
 		.num_event_specs = 1,				\
-	 }
+	}
 
 static const struct iio_chan_spec sca3000_channels[] = {
 	SCA3000_CHAN(0, IIO_MOD_X),
-- 
2.7.4


