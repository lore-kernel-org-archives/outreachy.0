X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.75.232 with SMTP id f8mr2067809wiw.0.1426792859648;
        Thu, 19 Mar 2015 12:20:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.193 with SMTP id e1ls348100lag.80.gmail; Thu, 19 Mar
 2015 12:20:59 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr9447400lab.4.1426792859122;
        Thu, 19 Mar 2015 12:20:59 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id el6si481695wib.0.2015.03.19.12.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:20:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id w10so78280174wix.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Hhc61NIT5am+5OJdYIhfXrxsrTdf0b663SiGpb7iKdE=;
        b=QoByBBZwDwXACdju56cdimdwO45XTZJX2o6CHN/XijJHwW1zz1961664pGhxnhG6zj
         eHgJLK9VEYF9wdhNopViTLOlBRccOC/q+flrQJADDvFx6MbgdMndSTOIH0R9pbv3sWij
         B8NeRv+1nvs3PNjNeVj94XAAdQh/UYB5nnTXWpXv3oaAZELKp4LB1bAkdgKe/duSZI0d
         LnzkFsr7R9YFuAH44nf107Wg5jrgmbcgohueVzA/fXSsQhD2x+SP28yI6mQsggxw1Zjq
         Popz+fY+2+5Sljd86C1ry7tTv/OaoiUD0lHkCcshjFMvDlYDMSOqQC5Qa2zYLYn/iZtk
         Velg==
X-Received: by 10.194.19.166 with SMTP id g6mr157010752wje.150.1426792858979;
        Thu, 19 Mar 2015 12:20:58 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id e18sm3182682wjz.27.2015.03.19.12.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:20:58 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:20:14 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: iio: Replace hardcoded value with number of
 channels
Message-ID: <606577893d04c40a848b8bc16ef37f0bc4ab1752.1426790651.git.cristina.opriceana@gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790651.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces the hardcoded value 4 for the number of available
channels and computes it with the ARRAY_SIZE macro.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 59afede..3898690 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -596,7 +596,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	indio_dev->info = &hmc5843_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = data->variant->channels;
-	indio_dev->num_channels = 4;
+	indio_dev->num_channels = ARRAY_SIZE(data->variant->channels);
 	indio_dev->available_scan_masks = hmc5843_scan_masks;

 	ret = hmc5843_init(data);
-- 
1.9.1


