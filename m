X-GM-THRID: 6331024450775941120
X-Received: by 10.107.48.210 with SMTP id w201mr11211519iow.25.1474056497545;
        Fri, 16 Sep 2016 13:08:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls6530006ota.17.gmail; Fri, 16 Sep
 2016 13:08:17 -0700 (PDT)
X-Received: by 10.237.32.33 with SMTP id 30mr11008359qta.24.1474056497123;
        Fri, 16 Sep 2016 13:08:17 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si2980716pam.0.2016.09.16.13.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so3989439pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 13:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HV0FgidHThWc1tLeY1B6IbzVGDO/XMEx0ZkY2NG8WKM=;
        b=na0TuZzacypLnT34G57qnoXYvMwSMu3bzLkh4ob96Yd6EGI8UWDnXKYgA7bLUS3plC
         pmZvvUcHbJ2q6TpV1F8a6oNT83tVGnJpUEzBRkf5sNLSZKhhzz7sV7xaOSK74qA4EwN9
         ufQA3788MzjxKMUqbn8V240tyBoSgH4Z9KCqHwHZ75B60ToaWv7/dTo5tK9Cw4Rr6PEl
         f5PVAMVBnCa9jVaqPAsn8ZS7jJwvl1yfISM/2QEGNyVgK00bsxvzesi9/8C6wyr7IQIL
         vakPNZc7/SvGsTiK4sNHnFeyC/Q6CBIrWj8v9t8BPHJLjMNbP/4c58+9PP/bRzJe090b
         IBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HV0FgidHThWc1tLeY1B6IbzVGDO/XMEx0ZkY2NG8WKM=;
        b=H1Ww9corAcqE2pqEoM762A/BP9lBjzGMv+kO8dcKMvIo/5GLcXN8BYEGBtY0GQffkN
         br6rAltEeRV1cnlh7o8a0sXkbx0jIn65DNge10+mYN6bgIoFEOmoGMC5jA/qsXXp6VbK
         BxLW59ErMjmU2+EG8EDG5JZ7MOSFyoiwiVOAw0nRSOMLzvOihFv5ZLK6g+MGcMPh/Z66
         2utN/bkZNl95HAvNPHsQZnLyP7ib3eKfZn8xQmP3w5OtwVIbS8Ipq38P1MMboqION7Oh
         rQI0XnTp1fD7BB2VkwIwefL4e+Nrj9v81JZB5/82zWJHKn+Pz7bVvGk8XNKOG+IQMZaA
         SIKg==
X-Gm-Message-State: AE9vXwPyVu48FmWmXOjMzqCWEKAytHxoko7iDnphKafvXVd61+a78kYKMikSomF1Inn5Qw==
X-Received: by 10.98.147.202 with SMTP id r71mr25821117pfk.34.1474056496757;
        Fri, 16 Sep 2016 13:08:16 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id wa9sm14052645pac.35.2016.09.16.13.08.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:08:16 -0700 (PDT)
Date: Sat, 17 Sep 2016 01:38:12 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: comedi_fops: Optimize code with logical
 short-circuiting
Message-ID: <20160916200808.GA7362@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Optimize code with logical short-circuiting. Two 'if' statements with
same body equivalent to a single 'if' statement with same body but
condition being union of the prior two conditions.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 0d69ed7..b4f6fec 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -1452,13 +1452,8 @@ static int do_insnlist_ioctl(struct comedi_device *dev,
 		return -EFAULT;
 
 	data = kmalloc_array(MAX_SAMPLES, sizeof(unsigned int), GFP_KERNEL);
-	if (!data) {
-		ret = -ENOMEM;
-		goto error;
-	}
-
 	insns = kcalloc(insnlist.n_insns, sizeof(*insns), GFP_KERNEL);
-	if (!insns) {
+	if (!data || !insns) {
 		ret = -ENOMEM;
 		goto error;
 	}
-- 
2.7.4


