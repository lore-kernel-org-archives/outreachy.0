X-GM-THRID: 6255226926229618688
X-Received: by 10.13.234.77 with SMTP id t74mr41683159ywe.12.1456408511332;
        Thu, 25 Feb 2016 05:55:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.232 with SMTP id rz8ls216925obb.62.gmail; Thu, 25 Feb
 2016 05:55:11 -0800 (PST)
X-Received: by 10.182.254.35 with SMTP id af3mr39924252obd.37.1456408511031;
        Thu, 25 Feb 2016 05:55:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id 12si1186091pfb.1.2016.02.25.05.55.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:55:10 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id e127so33254652pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fHb6JVUKQcs+4BikXA+XqU+3c+uJf+jXJ6xVmdJiSM0=;
        b=JcAddRmlwy6x7cl8apVL5tNty2BFlwfruwL69RSd2A4VihYQVHMYbq6xZhgRDvB0vb
         8WG8GhK9lYtowf2H1EWwKfY8nry8Sa6jBG9W47MVuctlAsJgazbWAj6roBAmurtwadtU
         2jzB+bfr7r+jxszLLzS+2ZHIQaivoo+cIe9ZxDZPGt/Nu9YPj628t9EnmJ0UXFA6U08H
         QeFS0ir7f6uKKbaOjLDlDb3IkS8nNvj4QnkDRfXhu/EMnDMXvwuzEthno+jm5uZ+JVKU
         DNntbuqfJ3TtU4HXOvIO1ksaoHsvsuJv+5achRFsTWdvNwVEo2uQxucFl3I/OKsJzCid
         ofPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=fHb6JVUKQcs+4BikXA+XqU+3c+uJf+jXJ6xVmdJiSM0=;
        b=I4yrHgMthtg3tB5qt6wKYp4dprDkFe8LR+qj+8g/oWf3hkvkK2aivhBe9SFdLAa5iX
         471I1fYV01iRBP/desqNU8B8FqHyk2A4NgEqeG4aXv1eukl9Pk7kd3XOT5QJUwvOjNow
         HNIY3XSIXQkSUR6WAZYwQsrGK6jVZYywhpr6rwyNiRgyAmaIALIHJPKdXG1ACgcKyTau
         ew3QViHtljUf5nYfwDLPlR+WdvaARL0ql8iUZduvCLDLqipLv+pBI3rRAUPyf7s3jEC/
         cqTchfP2auMP4kgjgqRlioRCf4Uw9WWEli9ZMUzsrTHp0v7blPmsymVURaC3IsZOS5uL
         l4Nw==
X-Gm-Message-State: AG10YOS3Hj+RbL+Zo2jacKqDAyAgDnHDL53QzrtCyMUgcAZ/VY1G4eJfSf4A67JuN8EiIA==
X-Received: by 10.98.65.14 with SMTP id o14mr62465571pfa.151.1456408510814;
        Thu, 25 Feb 2016 05:55:10 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id ta2sm12598602pab.42.2016.02.25.05.55.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 05:55:10 -0800 (PST)
Date: Thu, 25 Feb 2016 19:25:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: ion: tegra: Use devm_kcalloc instead of
 devm_kzalloc
Message-ID: <20160225135504.GA25593@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace devm_kzalloc with devm_kcalloc to ensure there are no integer
overflows from the multiplication of a number * sizeof.

The following Coccinelle semantic patch was used to make this change:
//<smpl>
@@
expression dev,E1,E3;
type T;
@@
- devm_kzalloc(dev,E1*sizeof(T),E3)
+ devm_kcalloc(dev,E1,sizeof(T),E3)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/android/ion/tegra/tegra_ion.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/android/ion/tegra/tegra_ion.c b/drivers/staging/android/ion/tegra/tegra_ion.c
index 4d3c516..8828524 100644
--- a/drivers/staging/android/ion/tegra/tegra_ion.c
+++ b/drivers/staging/android/ion/tegra/tegra_ion.c
@@ -33,9 +33,8 @@ static int tegra_ion_probe(struct platform_device *pdev)
 
 	num_heaps = pdata->nr;
 
-	heaps = devm_kzalloc(&pdev->dev,
-			     sizeof(struct ion_heap *) * pdata->nr,
-			     GFP_KERNEL);
+	heaps = devm_kcalloc(&pdev->dev, pdata->nr,
+			     sizeof(struct ion_heap *), GFP_KERNEL);
 
 	idev = ion_device_create(NULL);
 	if (IS_ERR_OR_NULL(idev))
-- 
1.9.1


