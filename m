X-GM-THRID: 6330141489404837888
X-Received: by 10.36.68.15 with SMTP id o15mr4724969ita.1.1473850917673;
        Wed, 14 Sep 2016 04:01:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.28 with SMTP id 28ls274599iod.52.gmail; Wed, 14 Sep 2016
 04:01:55 -0700 (PDT)
X-Received: by 10.107.12.71 with SMTP id w68mr1033617ioi.0.1473850915607;
        Wed, 14 Sep 2016 04:01:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si1032309pab.1.2016.09.14.04.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 04:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so606792pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 04:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PEp8QZ0FuA6gY8lfdPnFAyYW9+1/vLkQbsgaFDDni2E=;
        b=hPvJcoJ1BEILnODe3dHIbENamnhWaKUqPZqVxug461yj6To6qTUXle0yfzUWDW81nl
         XKPOGG7YLJZ5qrx7pIYGznOlsC41fxR+6gteeMGmXabEVrYEm1/Ponbx2AI6RHzhjCoZ
         C2etGRXGBXjlZFQUPaAho3NuOEUMzhTXTOiPsNj5/EmK8S6AGVUwL2SG8aNgwW9307Kb
         OXsxXVN2vj8g0Fi7UR0MwAjoRI58PJZsY5E1vQZio2/RIhJHxKRpL5Y6SM4DNPyP41rT
         nAV2KMHaURTy5Z3ujbOVL2k/pf23Litlz+gWHMYrDRinaGQYhV3k1iZVml4MqOEKj2lW
         QWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PEp8QZ0FuA6gY8lfdPnFAyYW9+1/vLkQbsgaFDDni2E=;
        b=gCpDJt6O8Cv0/uV0Wv8VcIG6tS8+ReikTMVum0cimVIKAlSMskYvImVVsOZZ/1P9af
         XAMDf+Ovyl+DWkcyZVDnrLmQfNqu1neeOyiOqPxbZPG494bdTgLiInzGNgBSF6BHWfuK
         uYqoLe66vanv/TeKaXlo9MmG+/CF/VNod7aqAeG93xrABacYNsOhRT4gT1LnadHg8Avn
         Tvq1nc3ng2pf8RJ05i13qYDISQovOpKnjJT9/rc/zuf46Vmaqk0d4KFwj7kBXyPUsx8A
         KrmTLWY56zQlskncViulLjGAw1cKrotEE+EY6Cit7ogHEz0EwCTcsaPbdpTufFSzrCIX
         SRxw==
X-Gm-Message-State: AE9vXwMVKwJjMFUGBA542iwzK5qsrC7H9DjFVIGThO6JZ8V/cyIT7hjThifMBQ8sYmnUzA==
X-Received: by 10.67.23.201 with SMTP id ic9mr3384133pad.143.1473850915253;
        Wed, 14 Sep 2016 04:01:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id h65sm14548526pfd.38.2016.09.14.04.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 04:01:54 -0700 (PDT)
Date: Wed, 14 Sep 2016 16:32:28 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: adc: Add space around '-'
Message-ID: <20160914110228.GA3269@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around operator '-' . 
This patch is found by checkpatch.pl script .
CHECK: spaces preferred around that '-' (ctx:VxV) . 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1cf6b79..5688b29 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -391,7 +391,7 @@ ad7192_show_scale_available(struct device *dev,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
-			     in_voltage-voltage_scale_available,
+			     in_voltage - voltage_scale_available,
 			     S_IRUGO, ad7192_show_scale_available, NULL, 0);
 
 static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
-- 
1.8.2.3


