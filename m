X-GM-THRID: 6329747467504975872
X-Received: by 10.66.88.234 with SMTP id bj10mr19253688pab.36.1473759177226;
        Tue, 13 Sep 2016 02:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls839906ote.41.gmail; Tue, 13 Sep
 2016 02:32:56 -0700 (PDT)
X-Received: by 10.237.34.129 with SMTP id p1mr19830718qtc.9.1473759176850;
        Tue, 13 Sep 2016 02:32:56 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si3283626pam.0.2016.09.13.02.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x24so9371178pfa.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4RzEyNJHRf91Qy38C5UHPGPMp4LQrl4EozbDGeZqBF0=;
        b=sI12cNGuNMM/ptnEG+QA9515NRz68h2hG2huryVD4SHQhoFdXt5OpE8XAevZnYHroW
         bv+ThyVcW2dW5HMjL9SMkZrnGIGfOYfaGy6GlptDCGB5c9C10UvW9F6rorTk/opO0++u
         Tkj2MZuxF76Ax2qix71QyQ0Rt7K/sHTVQM+giIyHiGoF1ePd5bh3mIELtdKRwKQ4QkfY
         MjFf56/0sjOQjd7snsc7+7S3Ng2Omi6Uxp3Z+yHUuYzZyn52c3gg5ZkgmU8SDgxwZ2ym
         dOUMQyfxL18HHvxG30m3fozXBc4Olhj4xQP6cXzhhViLU1iKcLlsHYQgd1ENyBHrCDxl
         1JsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4RzEyNJHRf91Qy38C5UHPGPMp4LQrl4EozbDGeZqBF0=;
        b=FxR4RaT8m5sI3S3WJfS9nm1mE7fe5Srwyqu3vG+i5/q7bm8wdjgLg6acy/gIstFgbZ
         Y/qDUxILAOd/30X2tG+4I8yaGGgmSDvqTUV7Fj4LSkcSKzNHVv3RN3iYqiNbe/xTkqAl
         Eq5QKYucQU7cy1xZU0N8I8b78wv4x71eTWiDP2i5qfAnr/wuJnuRBt9Bw+0hHeZsaWR5
         bSd4SjtRXHjQka6UTQ+4OOzbjUNUSqDp01g0CAkzdJMuwFg8ro/JxsHjBrvoIqZYX8Qy
         o3JjPD7+/WSYkEUnzS7bwzRzw95cXPkbyUPoU95XniEP/yvL/3hcCgBwplTbas2D6t9s
         2Ceg==
X-Gm-Message-State: AE9vXwN5uPNfmYyU0RYprtV3kBjkBw8n5WB8kXhpRhoWAhtY6mjXe/n2v0vBuvEWCNhopA==
X-Received: by 10.98.58.19 with SMTP id h19mr41102972pfa.125.1473759176396;
        Tue, 13 Sep 2016 02:32:56 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id p4sm29816688pfp.60.2016.09.13.02.32.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:32:56 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:02:46 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: media: lirc: lirc_bt829.c: Remove the explicit
 NULL comparison
Message-ID: <6be9d24b82515d2758809431887a9b22b3fa61d8.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove the explicit NULL comparison

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/media/lirc/lirc_bt829.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
index 44f5655..f740115 100644
--- a/drivers/staging/media/lirc/lirc_bt829.c
+++ b/drivers/staging/media/lirc/lirc_bt829.c
@@ -120,7 +120,7 @@ int init_module(void)
 	int rc;
 
 	pdev = do_pci_probe();
-	if (pdev == NULL)
+	if (!pdev)
 		return -ENODEV;
 
 	rc = pci_enable_device(pdev);
-- 
1.9.1


