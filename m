X-GM-THRID: 6255098629488377856
X-Received: by 10.182.46.201 with SMTP id x9mr39794733obm.43.1456378693571;
        Wed, 24 Feb 2016 21:38:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.11 with SMTP id i11ls301478ioo.72.gmail; Wed, 24 Feb
 2016 21:38:13 -0800 (PST)
X-Received: by 10.66.146.193 with SMTP id te1mr39251654pab.17.1456378693345;
        Wed, 24 Feb 2016 21:38:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id ui7si978407pab.0.2016.02.24.21.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:38:13 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id q63so26491882pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=R+nONSC7YWAcVD8mBPIJPkZT5zwQyx/e5sDbo7aGYYg=;
        b=Yod44wzFsx50GhYQYGqZOXhesP/Og1DalTWRpvIaQ4stxc0//Dd80hTMm9B0P/C3Mr
         5zVWO8MksDPVJ5Tz37+v3Yoj7dZG8hjVIIochX1KWK7MQy/rQh/QkgFzvGxm4A+ZUTwp
         wrrJ0JJCvlKzHRLCFOP7/E6TC7Rccl6gsn8o1F+HZGE2BSmbBkuKV/JD/m57jSsikxyL
         cElBT3n/l/oVjpfa5C8TbuFQ2qqaLVjtR71XZ8BfS4+u+8NEPN4IV13K2y3PPQ97P7SU
         3Dwn0b+t726oUNV6dotMkU6gYHH5wMbnciu5CLjjGhjUCL8fkPMebrbLmVpzvFR1tuaV
         /fWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=R+nONSC7YWAcVD8mBPIJPkZT5zwQyx/e5sDbo7aGYYg=;
        b=Bz0J4w3RcWP1NzhAH5LGP16jNBp5Vpcz01aK2Lrspug5TzcNfuIwBFM4D5S/MFBknT
         tw0nJF94iU+mrilHVLfWGR1OtRGijEo6jONWEuJYst1wmAMs17RhBWJXgyIq9fOj8bLE
         W1gONbVSOMJ0X+gTU0T63X/o0Rd0iJqor+h/OL/QBKg8jDpxad+js4lB3e1vsvyQ/nej
         gRvUBss6xeavQR6OmRNJTpIuRM7UwKBsQOMrvN3ES8ntdL2cTR8kXZQ5OR5r1j30B9m5
         1DI3wWrQmcM8sQ4fA3RnjLlyLZptmpnlI2M2iXCg5kmQsn4AIgi7io+It5GKmnrKlLEW
         k2uQ==
X-Gm-Message-State: AG10YORuA6akhPygXWmT8Hx2SPQgNIH7Tqvs1O6GC3ra0YDSiKRg0UZnhZ9EGT74vlP+Qg==
X-Received: by 10.98.72.77 with SMTP id v74mr60387905pfa.33.1456378693163;
        Wed, 24 Feb 2016 21:38:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id ta2sm8792489pab.42.2016.02.24.21.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:38:12 -0800 (PST)
Date: Thu, 25 Feb 2016 11:08:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rdma: hfi1: Remove unnecessary pci_set_drvdata()
Message-ID: <af3688e7a073df98f29f989938be332865ab0dd7.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary pci_set_drvdata() has been removed since the driver
core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
struct pci_dev *pci;
@@
- pci_set_drvdata(pci, NULL);
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/pcie.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/pcie.c b/drivers/staging/rdma/hfi1/pcie.c
index b2f553d8..47ca631 100644
--- a/drivers/staging/rdma/hfi1/pcie.c
+++ b/drivers/staging/rdma/hfi1/pcie.c
@@ -247,8 +247,6 @@ void hfi1_pcie_ddcleanup(struct hfi1_devdata *dd)
 		iounmap(dd->rcvarray_wc);
 	if (dd->piobase)
 		iounmap(dd->piobase);
-
-	pci_set_drvdata(dd->pcidev, NULL);
 }
 
 /*
-- 
1.9.1


