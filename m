X-GM-THRID: 6395635092352401408
X-Received: by 10.99.226.3 with SMTP id q3mr7290389pgh.129.1489099857452;
        Thu, 09 Mar 2017 14:50:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.11 with SMTP id d11ls81500itc.1.canary-gmail; Thu, 09
 Mar 2017 14:50:56 -0800 (PST)
X-Received: by 10.99.158.9 with SMTP id s9mr6694860pgd.128.1489099856796;
        Thu, 09 Mar 2017 14:50:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si1471693pfa.6.2017.03.09.14.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so8654507pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4yFLE+lvAxwak77dt9wjPLFa9U//YsByRu1Q/KDjaho=;
        b=fqecmGOm8ej/pIALaFyPldiBWZ3f9KrUckNIhcyX+ynxttww7Bfr7LK57M44hmY4vx
         +V8NIv+KsJ75GcNvl+VaVWV5goV5lLGp+q36XrZC9gmhsxVgQ46cK3eMdLqsq+HZxqHu
         hptxt71tySlNDlHbo2+Aor14VDIiVvu7JEf+FAFUWG7IpYbvYFqBxsXH1fPSLqXAz7PU
         BLaMvoe1qJe/MBWOqxMlrJ2X95Eeb0HRdJIuyZLZgEnk/ItMdIr0KW+1sv61gWchByEM
         oc9duTHN8sA30ud0YPLfpKANxJsujMDUFIDVL/5WKLeX2m0lNTLCks/2UFXuuvaY/78b
         RPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4yFLE+lvAxwak77dt9wjPLFa9U//YsByRu1Q/KDjaho=;
        b=Pp02EImWu1IdVxUkvi1BJbm4bz37R/3PbonVgrTeJP9qfE0AWXA6vqw2oZL62i+wOX
         4kSND9swWrYsG+grqjhuKfHGQZljpKKrXmxOPWhFSds+mFWh1mwi42J/dFGnQrWTp4VW
         XObGXDw/uu78zWBZwZvJSO7UiCab8f1Fk6jt6XrRZQkcR/4xWox4ets6+IGgWlT+FEWr
         HbLLPjYT7R2aBeoL5+9ZbusYZCPnW4V91D+1G91ntALcIvkaCzEmvO7eA+UYP44m9FWg
         0Sw34YoW4T4yAbGO8xjqfalQviaJpcZr4ryt/nslTz5nDvAqWDELZ8SxMtsMCzt8SuLK
         7k6Q==
X-Gm-Message-State: AMke39ks7ya/7PRcu7pYnlzuONbCgKF2VXMglLhcEC+6TzeP1sDqqVE7iV8yAx4JGTKyPg==
X-Received: by 10.98.38.5 with SMTP id m5mr16826554pfm.65.1489099856345;
        Thu, 09 Mar 2017 14:50:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s4sm14377053pfi.74.2017.03.09.14.50.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:55 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 6/7] staging: gc2235: Use x instead of x != NULL
Date: Fri, 10 Mar 2017 04:20:28 +0530
Message-Id: <1489099829-1264-7-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

Use x instead of x != NULL .
This patch removes the explicit NULL comparisons.This issue is found by
checkpatch.pl script.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 165dcb3..40a5a2f 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -255,7 +255,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	u16 reg_val, reg_val_h, dummy;
 	int ret;
 
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	/* pixel clock calculattion */
@@ -797,7 +797,7 @@ static int gc2235_set_fmt(struct v4l2_subdev *sd,
 	int idx;
 
 	gc2235_info = v4l2_get_subdev_hostdata(sd);
-	if (gc2235_info == NULL)
+	if (!gc2235_info)
 		return -EINVAL;
 	if (format->pad)
 		return -EINVAL;
@@ -917,7 +917,7 @@ static int gc2235_s_config(struct v4l2_subdev *sd,
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
-- 
2.7.4


