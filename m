X-GM-THRID: 6251954010773782528
X-Received: by 10.98.74.81 with SMTP id x78mr22792507pfa.8.1455646476580;
        Tue, 16 Feb 2016 10:14:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.97 with SMTP id sx1ls6411obc.96.gmail; Tue, 16 Feb
 2016 10:14:36 -0800 (PST)
X-Received: by 10.182.248.233 with SMTP id yp9mr4603892obc.26.1455646476089;
        Tue, 16 Feb 2016 10:14:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id yd9si851438pab.1.2016.02.16.10.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 10:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ho8so108697276pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 10:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8pL89vS2VAa8nJhcrs09UoCKM2BYLSWJlA0ZXsOdUPA=;
        b=lAlV/K12Kbct7LJvgfOqm8j5vsDvktjgWM5qq36aAqdeUYGMY//aAJU87VkugjVT3Y
         gme5D7xpBJsD7dcvTb3WnB3gqxTzuwj5Kvkiayh9wBnb8HfHZDKAE6yn/hb9KlrZ4clW
         MtXVanzK0Ph564rTM9yDXiaWPkGnt7BSDI/pMh9tmaxmF9bhhGHZs2C1O8G6sBkykOJA
         EdYUHkLxxFdclSpygx0CwoBsNwENqaEkK1nQDoxexmWdB/lPlwepBRR5BuPUXrzm/MvW
         Hw4E1BVs637gSuSDpiq2iwYtIm9v932gaqe5hIc56zLb9iICF1YqyJPb+YjdNsHsiMN2
         bkOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8pL89vS2VAa8nJhcrs09UoCKM2BYLSWJlA0ZXsOdUPA=;
        b=QmYPihaDiVlc7FEqtS1CGyKmCQF7Sg2P3bl4t+6rxqm2Uhrmjayq7RRIKwx8S+ze7f
         zFEl9rj5nMOQ1JPiZLVYf5oY+sSCHmTsHT+Y7Q9IOnPx7Ew/UI4SIbbh8CboEZkjYpuQ
         UryV02cuae1EftEnop0jJ6Tpmm+GGlroJ859+0DgEd4wATAODXNBihOyTElED1U4+1Cg
         ZlAHVmPunIf911vlCoK8E/k8HqpTTCOIKXd0sKlzFHnxZu199nf/lq+Ez243i0QoWKZv
         XRwBdkp7NpDY/I+rLrOrWJmCysLvc2p6Fw3jdybuP/zeJq+R11o05imWG4WcyU0PGv+t
         voYQ==
X-Gm-Message-State: AG10YORJf1cnbBlUkyJ2N1yxyLBJnzVKwmiBoq8T9fb+kpz4lZwSVuJzVf9o1UoS/IU82A==
X-Received: by 10.66.253.193 with SMTP id ac1mr32803583pad.121.1455646475729;
        Tue, 16 Feb 2016 10:14:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id 1sm47347222pfm.10.2016.02.16.10.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 10:14:35 -0800 (PST)
Date: Tue, 16 Feb 2016 23:44:31 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adc: Remove unnecessary test from if conditions
Message-ID: <20160216181431.GA1934@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary test condition on ret variable which has been
previously tested and returns its value if the value is non zero.

This fixes the following smatch warnings:
drivers/staging/iio/adc/ad7816.c:299 ad7816_set_oti() warn: we tested
'ret' before and it was 'false'
drivers/staging/iio/adc/ad7816.c:306 ad7816_set_oti() warn: we tested
'ret' before and it was 'false'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 2226051..ac3735c 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -296,14 +296,14 @@ static inline ssize_t ad7816_set_oti(struct device *dev,
 		dev_err(dev, "Invalid oti channel id %d.\n", chip->channel_id);
 		return -EINVAL;
 	} else if (chip->channel_id == 0) {
-		if (ret || value < AD7816_BOUND_VALUE_MIN ||
+		if (value < AD7816_BOUND_VALUE_MIN ||
 		    value > AD7816_BOUND_VALUE_MAX)
 			return -EINVAL;
 
 		data = (u8)(value - AD7816_BOUND_VALUE_MIN +
 			AD7816_BOUND_VALUE_BASE);
 	} else {
-		if (ret || value < AD7816_BOUND_VALUE_BASE || value > 255)
+		if (value < AD7816_BOUND_VALUE_BASE || value > 255)
 			return -EINVAL;
 
 		data = (u8)value;
-- 
1.9.1


