X-GM-THRID: 9130553114624
X-Received: by 10.180.13.195 with SMTP id j3mr2053011wic.2.1426791928298;
        Thu, 19 Mar 2015 12:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.12.108 with SMTP id x12ls194943wib.2.gmail; Thu, 19 Mar
 2015 12:05:27 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr12381569wjb.0.1426791927842;
        Thu, 19 Mar 2015 12:05:27 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i8si204368wif.1.2015.03.19.12.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id cq43so65142429web.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WnRuUc1BEIHi3g0gU1Xoz5rwsaBzAUMqrLFTkuwdf6Y=;
        b=IADhEZgSglQJjbalhzqPi+i4+N9LBvJ2UyRNPbRZvjkvza59XPGfuhGCMb27oKP7+7
         2DkAXVjKtkrAkwpXILPGmuV2re4D+sxAkvltPW+vnDOMysJJ4Ff/lTiGat3SkbkN/aN9
         tisGQsk7CdqSHpCF0rCgWMYhMxDY84GXH/geYPnCLOZH3e4/udhFEHNbF5qjeZ6NKbNF
         U3uObKmoDf8abrdq0SJ3Ql2Xq+r6Mwi9c4fihQqFg6GgsbiXce6y9uCQ1KeQzQaHuH91
         o9zT2uzuyVbYBzps9V4YiKGa8rsWRGXQpddVM3tLQX330MOh76pmzUFMnNW3mSQFGXRE
         ytbg==
X-Received: by 10.180.24.162 with SMTP id v2mr18337545wif.80.1426791927777;
        Thu, 19 Mar 2015 12:05:27 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ew5sm8665920wic.14.2015.03.19.12.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:05:27 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:04:42 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] Staging: iio: Simplify NULL pointer condition
Message-ID: <2d95dc2989a70c6a7982b2ed0042e4732d7bf25c.1426790662.git.cristina.opriceana@gmail.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace NULL comparrison with its shorter form.
Done with coccinelle:

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index d03833b..20c693e 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -579,7 +579,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	int ret;

 	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;

 	dev_set_drvdata(dev, indio_dev);
-- 
1.9.1


