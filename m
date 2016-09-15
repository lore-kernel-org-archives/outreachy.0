X-GM-THRID: 6330196266384883712
X-Received: by 10.13.213.22 with SMTP id x22mr5975421ywd.52.1473942271376;
        Thu, 15 Sep 2016 05:24:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls3388473otd.30.gmail; Thu, 15 Sep
 2016 05:24:31 -0700 (PDT)
X-Received: by 10.157.34.41 with SMTP id o38mr6083617ota.34.1473942271029;
        Thu, 15 Sep 2016 05:24:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id c75si212583ywh.0.2016.09.15.05.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 38so1551079qte.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Iay4gDTbXtvwIX0OGlW+uACzAVYzO3crUALJJcUR+j4=;
        b=u0ukYWQ0s9Gv6Gh75biAAQU9w6/+Z9hXzviJbkRpAArhHaPMdO0mRxTHaor1sV+dOO
         HDuDfRXGZhfjsSTFXnMxCApwL9lq74PVE5VprEboZd2dIE8iZ+g/AUR5UT92304WMgQH
         9VwDs77GBxMGM1FRivZOyhL1seNEdlJnHPs7WpCvgh28PLhp/bJxzJ+s/9WTHxO32aOx
         VHjz2TfHaHT4bsu1C+HLTY5M5TH1VkszxuD/9bVSfToO7iYKF9HuvpUfArRG5R5qfopo
         8rgOPGpA7DknmbhIoKJJyOi/OAG4fV3StfxJ68Dt5lb7fJhaXe+1z2Vrb0jRSI8iEKIK
         6o5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Iay4gDTbXtvwIX0OGlW+uACzAVYzO3crUALJJcUR+j4=;
        b=WCUhfAK01yPwQW7KeDGX8qCWJWtb2SXb1tYPhlGb4I9boRiLTqhgDCg9eq7ix5AEkA
         HcDvEUeJp3ALia90vD0gFHZ6OfbIlr2U22MYVbE3TXgkaaczAozNkbS7bmHI9cNad+V/
         7xQLL2d/9O15SpEEKjwfnKg69PGgVQOxWq+QTNMePKW6fVcyi6n6pA9NibJD9fuH6nh4
         0CY2uAbS2yhJuaiO/OYit0RPH3IrViyqwRr4CKSn3l9dwF4LRztx+J7oa8iWW94QVMfL
         TRPhJ49xPV3LvraWYxer3s2ssOMpezflR4CGuXk7wuZNioTgpgFbPh1elRoRavgdRloq
         yYHw==
X-Gm-Message-State: AE9vXwOGLsYfVbZb/YYx5uMB8j8Hl9qFrAKoT+edcsL0OqL4ZtuxtGr8ywVSGXntqmReRg==
X-Received: by 10.237.60.82 with SMTP id u18mr9188320qte.80.1473942270796;
        Thu, 15 Sep 2016 05:24:30 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora ([206.71.239.141])
        by smtp.gmail.com with ESMTPSA id w35sm1694213qtc.24.2016.09.15.05.24.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:24:29 -0700 (PDT)
Date: Thu, 15 Sep 2016 08:24:26 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ethernet: Fixes checkpatch blank lines warnings
Message-ID: <20160915122426.GA2382@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixes several of the checkpatch.pl warning
CHECK: Please don't use multiple blank lines

Signed-off-by: Ronald Rojas <ronladred@gmail.com>
---
v5: changes to commit log

 drivers/staging/octeon/ethernet.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index e9cd5f2..79571d6 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,7 +86,6 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-
 /*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
@@ -665,7 +664,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -878,7 +876,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.7.4


