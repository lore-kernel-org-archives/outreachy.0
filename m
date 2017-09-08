X-GM-THRID: 6463264709450661888
X-Received: by 10.36.105.82 with SMTP id e79mr778741itc.44.1504846082340;
        Thu, 07 Sep 2017 21:48:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.210 with SMTP id f201ls20113ioe.5.gmail; Thu, 07 Sep
 2017 21:48:01 -0700 (PDT)
X-Received: by 10.36.10.199 with SMTP id 190mr737874itw.21.1504846081570;
        Thu, 07 Sep 2017 21:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504846081; cv=none;
        d=google.com; s=arc-20160816;
        b=0f4/ChzGCGmwjd27PX1eEbKbX0RuSHmwniERXgEKlvzhllCzXM9CzKJTkcIoa1JHma
         wGkx6dEaULKYf55P9MuEnNR2ylf6jFvqjEwNz7rpEB4aYN3RqaZwXPGoJ0JnLSSvOawi
         x/ZkZvTffUjBpZw4eGIAMAJyVCvwOcfJ0q0cMpAFA3ffjCgbJKHJyuZw56pW/GXVQj8B
         Pc6QMUNLdXetLVdVqAHCYRn/OGJqXVdTh1jIAaDc+SuuhYVseqXOq8vYUx4vqcBKIEI+
         JyMsnphlt5c3ifqpR/dbvYp1yKSLGaJp/Q1eJQBRXO3xU5sipIKLGndA5Jzm1mGah+dd
         gZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=/ZHGcpSYtpAL/HPTXjIvA+oBjsbjzA021U0WTNO7F7g=;
        b=bxIbflLPJO7i/Nkz9dS9Iaqls69whHH9S5ul/J6PqoBcUAeukbBKn50a1aOQxTHFcX
         gDx0UvwHE4bQhKjBwvclFMQtvPZyH/WfVFxI0iXCwpLNoPmnOQXaHDQYjWKLPzsM2xam
         sEf2RqF/CxAKPnlwGK3d1IjRT7XgOzGjfQYrBFAjbGswXfAm/i8IaXen6pEXBdtwy+z1
         mWhXhLL4QkYXmlAJ1rSoShKejm/8qKGWVB+sb6jq4eWw2cm7CeGgFP6oIgVnTnJvrc/+
         wpAEKbOKSgqN6dspGbu8uKFN563hxG+dZ0i8BMMO1nX1/t+pi9zaPbbGxDBHWKA1sCaV
         MHbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GTxgr/Su;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si155127pfj.8.2017.09.07.21.48.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 21:48:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GTxgr/Su;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so847296pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 21:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/ZHGcpSYtpAL/HPTXjIvA+oBjsbjzA021U0WTNO7F7g=;
        b=GTxgr/SunjSYy37hVwGW2wrssc4+nTqYTQrVQG4FImgkvhZleuMT1I5jIjPZQbDkvb
         yx1NsyiQa95pz0vOJuD5i3MoGTZdRjNvkmPyNkRY8Q71RBTAKd/vghVLpV01oyaH1qel
         QzCI5z9OO3qZIzUNMIF4Osgb+978aeg88NsqUNhYEEoM2zXMGZGVSNiINpxNBzjeCKOX
         NkFrs6mflehTu57NeMEVI/+N0AFZYTfzhKeIWxBOUGBole+AlOdQPOljj635g55K58V7
         /4jSsL52ZWd4+U6cSnGAbUadPOEOjad6ntfN4BDlx5PbQTH4ZUETz/Xe0VMmJf0mpUnY
         SAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/ZHGcpSYtpAL/HPTXjIvA+oBjsbjzA021U0WTNO7F7g=;
        b=P7aulHH3hngBT36oMb0HkjamHZJx0ETeVt9eSa6pN1O0vp3zzieyEroIrlz0u+6O1t
         QFftZHvVgBUP5pVBLUyCu9E97XXQ2FEm6YNjAb+8DH9veGysaYEa7KWkIiqpK4of4RV4
         MD97l6GLNifXRdu51tBrTpax8NY3WaePduAm7sDEGlFJvTVjIdGbMwGUIhtHmoSIy7CD
         Z25WKIOFxh2BS398tp2M3B56h9I4Zkj8pDVZDULM0xu86RWDWA81VRJS0FjbR13kVj3Z
         PRKigsvptpv/74KtaitWHIGX8YmavvcJlK3HhU3fysvq5hU18PqM4++mykCNuur7fxW9
         sMXg==
X-Gm-Message-State: AHPjjUh5UP6HnqC56uYj5+eOVECbh+ofXw2HNyOTi9XX+HOx1ykmPdMX
	m4SaCRTkE/YX/jDO0AM=
X-Google-Smtp-Source: ADKCNb4c/r6EnBN9DxRSH5cgM5PA4JpxGkW/95Myc9xnlBipOR0xIxFmQMU5BwbC89AzFUVmFc7hig==
X-Received: by 10.98.27.8 with SMTP id b8mr1758091pfb.21.1504846080977;
        Thu, 07 Sep 2017 21:48:00 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([106.201.20.20])
        by smtp.gmail.com with ESMTPSA id q77sm1473673pfa.173.2017.09.07.21.47.59
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 07 Sep 2017 21:48:00 -0700 (PDT)
Date: Fri, 8 Sep 2017 10:17:52 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: iio: adc: Added Space around binary op.
Message-ID: <20170908044752.GA6199@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Added space around(one on each side of) binary
operator(-) as preferred according to kernel
coding style.

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index d11c6de..1aee662 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
-			     in_voltage-voltage_scale_available,
+			     in_voltage - voltage_scale_available,
 			     0444, ad7192_show_scale_available, NULL, 0);
 
 static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
-- 
1.9.1


