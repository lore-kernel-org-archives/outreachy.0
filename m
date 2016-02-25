X-GM-THRID: 6255098629488377856
X-Received: by 10.50.30.226 with SMTP id v2mr1109589igh.2.1456378674662;
        Wed, 24 Feb 2016 21:37:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.69 with SMTP id l5ls108729igt.30.canary; Wed, 24 Feb
 2016 21:37:54 -0800 (PST)
X-Received: by 10.66.193.225 with SMTP id hr1mr39556608pac.34.1456378674235;
        Wed, 24 Feb 2016 21:37:54 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si939769pab.1.2016.02.24.21.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:37:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so27387536pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hLxYMlS/0S3WTj0yK4bHM4ogjst+oGijiixd8+y51bM=;
        b=jbJttmoQb2ZJ3zCwM/tzhHC4D7HRsB2nApJb8Q2+90y57/ypwIdIP73ilxHDpBZ2eV
         5MAKG/4RBFxo6AWOj98U5/jWFdQD7Jlr6uKtukwuQq8z9BXT66thnncwKoyGN5oCOjee
         bNMCPsPZW+t5ONiV1XRaX7/rFb5GO/EFAm6xMDQc5KcnrQLkg+olhHJVV9gWHHTK5uUw
         SG487AHBwTW2tfWqOI/0HL7Jz0Ou4/Hx827LeOgs/rCGhavLouqGRb9FwqMR1AxeOoAq
         2X4MUeLPOOq4TEZw6MCC7uqzNpMLVBUrpo7UB1CWmR0j9z4vVm44aNbLSVSnL8Jubjxi
         FRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=hLxYMlS/0S3WTj0yK4bHM4ogjst+oGijiixd8+y51bM=;
        b=HnWoThNlKsqPz5K3kOENK5sJcbzDHyqqDo2qJwEVpFZP9ia8epwHO+xMCAwyEs1jIU
         Gw4lk5XISasTkQdLC0qNy4DIKsWBqTH1en/SrUDR1KZk6M9tFeceWnZ6d2pYVo01ioXS
         D65vw1T54J0QnPgs7C7byDeLAV4iyUJFJXP0qvgoQ12OKPf3ro6CxPS1LQVq71zTbFYs
         WEZ5zAkh3mhKE9KgY9jm8hbs2x2+qznWiU8tJlo2diQMNHsd73vxrNqMCqOm2eKWiO/i
         mXf8u4+BBpxOFDVog83i6PZ/X+0HNiBa4Q1R8Ud+ejWdzqjIwbzizIWgqnXRZAKEcTcC
         zkbQ==
X-Gm-Message-State: AG10YOQ01o70AiXrEE7O3nuoPRt6nrFSye+ripcKIB8CXUHiW2uPuv9iXYUFxruhalLQRw==
X-Received: by 10.98.93.155 with SMTP id n27mr60255202pfj.88.1456378674078;
        Wed, 24 Feb 2016 21:37:54 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id x1sm8811500pfi.42.2016.02.24.21.37.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:37:53 -0800 (PST)
Date: Thu, 25 Feb 2016 11:07:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: media: omap4iss: Remove unnecessary
 platform_set_drvdata()
Message-ID: <54abe0f6f03578e3d82793f0e5c0349562772eee.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary platform_set_drvdata() has been removed since the driver
core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
struct platform_device *pdev;
@@
- platform_set_drvdata(pdev, NULL);
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 30b473c..dea67d9 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -1527,8 +1527,6 @@ error_modules:
 error_iss:
 	omap4iss_put(iss);
 error:
-	platform_set_drvdata(pdev, NULL);
-
 	mutex_destroy(&iss->iss_mutex);
 
 	return ret;
-- 
1.9.1


