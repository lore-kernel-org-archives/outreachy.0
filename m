X-GM-THRID: 6333553605214208000
X-Received: by 10.157.39.118 with SMTP id r109mr1645025ota.90.1474645362075;
        Fri, 23 Sep 2016 08:42:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls6410311ioi.30.gmail; Fri, 23 Sep
 2016 08:42:39 -0700 (PDT)
X-Received: by 10.66.161.130 with SMTP id xs2mr1865073pab.40.1474645359007;
        Fri, 23 Sep 2016 08:42:39 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si2291513pab.2.2016.09.23.08.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 08:42:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id i5so2093686pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 08:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GiUzh4e+ZoxpnwC2gMYV6lB7q9fSueuza/GF9X443rk=;
        b=XSXDjcLehh0V6JGK+x41YtjUJvYBtWkfkel0bWaodmdlM+11RS2TlmXFd+HqjSZoHj
         ZdyBpsxOKoKaPW/AdDfeDezH538kYdJx/CsueTbsGwS0Z3WH94Olg4NmVLOtxeF1anLk
         dW3UF/qfdWOALgHQjhZ9HRD9FmY2GTPZW7bJwFvsa75XC18o+/9KAr8gKkVQXmgkxP3O
         bBktheMZiN0TuZjxlaBtISigibLcesBrkKxk2jzqhxJ/viSQrrnwzndVr4y5XqVPnKsg
         qXPT9f1MN/+wPPhieh+IEoON3clolYCidHnGd71ElzOH00AgmlCICalTmJnKztJrFg6c
         IJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GiUzh4e+ZoxpnwC2gMYV6lB7q9fSueuza/GF9X443rk=;
        b=P8LxO1M+TKCsyZ7EVgIqLR4h4SWURNjE2LavzhPDZgic69n8KIq6cqd9pzKfgXN6DH
         JfIDEba0KiktnZezkviUa7UE4VIAiMN14smQIDtXCoHp3oBfeL4kYlAqKIxCvv4rZiwA
         WRXCHr94falOoFa5F44I4lebujtguxCXE1fyK+DFRw0u4+fpP/zvXEVU5Yp8fZKrNV9e
         FC14Zmrr9qQHq+mZweuZC9bpauwO+WyEVmifIglnvKAnQSgl28MvT1linMu00VgcgsZY
         Uz2q0nNR6c50pNJD1GjDwF5hc8W4nlpkwU+thlIgNwsPjxc/gajoA5iIlwyEUJIOtXSV
         oWkg==
X-Gm-Message-State: AE9vXwMRgzVWBXT9UlTXwcbPIJ6bDMgZeF/jHgTC0OSgXDivjYtcqg0CGruLQMWPSaU9Qg==
X-Received: by 10.66.155.166 with SMTP id vx6mr13521367pab.35.1474645358845;
        Fri, 23 Sep 2016 08:42:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.236.92])
        by smtp.gmail.com with ESMTPSA id c124sm12497087pfc.52.2016.09.23.08.42.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 08:42:38 -0700 (PDT)
Date: Fri, 23 Sep 2016 21:12:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>
Subject: [PATCH v2] Fixes: b6e336dbeda8 ("staging: android: ion: Convert
 hi6220 to common platform")
Message-ID: <20160923154221.GA4993@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The sizeof function must take pointer to the ion_heap structure as an argument
when allocating memory for ipdev->heaps. This patch changes the sizeof
argument from (struct ion_heap) to (struct ion_heap *) which is a pointer to
the structure.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Fixed the error due to a previous commit
Updated the subject line

 drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index 659aa71..f9a64e7 100644
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
 		return PTR_ERR(ipdev->data);
 
 	ipdev->heaps = devm_kzalloc(&pdev->dev,
-				sizeof(struct ion_heap)*ipdev->data->nr,
+				sizeof(struct ion_heap *) * ipdev->data->nr,
 				GFP_KERNEL);
 	if (!ipdev->heaps) {
 		ion_destroy_platform_data(ipdev->data);
-- 
2.7.4


