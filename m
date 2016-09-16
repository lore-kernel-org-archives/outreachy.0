X-GM-THRID: 6330861539691593728
X-Received: by 10.200.35.252 with SMTP id r57mr9840052qtr.30.1474018567500;
        Fri, 16 Sep 2016 02:36:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls1835510iod.9.gmail; Fri, 16 Sep
 2016 02:36:06 -0700 (PDT)
X-Received: by 10.107.200.79 with SMTP id y76mr10248226iof.1.1474018566655;
        Fri, 16 Sep 2016 02:36:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 142si3971490pfx.2.2016.09.16.02.36.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:36:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so3282329pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 02:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3oPkiV9bz39A2mrx4MsmyPYnthuRuXL0qMd9ykbo5J0=;
        b=FSY+CvYLZ8p8sn26tiuJcWqgXS+HvBOJ16Qfx2ijRGUetV982VjaH6ZdoC1TlDr2Rv
         FevAYiSlL38X5WE3hs9igxi9jPJqpW80G7QxMzZyxHJVQLNNiASvnhXurpAXCqpd9x3R
         3cew0il2/1hUrrrXMaqgcWzXw2oG7/VZq+DoPu8N5QgtBkgTGpI3jGr5XZ5dTEHlC6vC
         mhmvW7NEX3Y3Q8WSYzYjyShX6xs/YWHSiQCdXvTzTntSUxDRSfRVzMMlXCyC793DpKmw
         gRnm/ukX4t6ZDMSb9iUwXF0eum86JauqaqayBf5jRKPDBv79Jar9k4JgalA/beZHLi2I
         CVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3oPkiV9bz39A2mrx4MsmyPYnthuRuXL0qMd9ykbo5J0=;
        b=GUL63zRl/5QoYXupD5H27vSNNlFbIQglY95mxteFjqOw4V3xBTsM79D72jeSqj/0px
         9HrZR1QUFVFq+q4FvexK5yh6fVyFDrkOINeUOQDwU+7O93BIrr5BeHY1DQxNIiGfmRpv
         rb9nWnC31RXNbwXp5Y8NjAJE/DqQbu33WEHvxpFYJAi8OxiuISC4dUKl8OaFkyDITZSL
         xhBs8zlDKFvkrpYrYAtEwP2MBlr10ffoa4YAisnBYSWCEzBrKL3xFXbsrEmBGw/vnm9e
         OX5ncVVdyO+0SYTRf9rCJP7lhTycob1fnKUt5x9yIrOzhlYTOWpAfA3cHxG4HNX9u+Ao
         N0bQ==
X-Gm-Message-State: AE9vXwPgPsBMT8GmRbO4kKvV93Tnddzk+hPbHGY8xq2OuROLHiSbmLmGInZQ+mySYrG/9A==
X-Received: by 10.66.26.77 with SMTP id j13mr21799245pag.129.1474018566298;
        Fri, 16 Sep 2016 02:36:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.17.88])
        by smtp.gmail.com with ESMTPSA id h67sm22049898pfg.32.2016.09.16.02.36.03
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 02:36:05 -0700 (PDT)
Date: Fri, 16 Sep 2016 15:06:41 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, stuart.yoder@nxp.com, mbrugger@suse.com,
	german.rivera@nxp.com
Subject: [PATCH] Staging: fsl-mc: Use !x instead of x == NULL.
Message-ID: <20160916093641.GA4100@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.
This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fsl-mc/bus/fsl-mc-msi.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
index cc19092..bc1ad1a 100755
--- a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
+++ b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
@@ -50,7 +50,7 @@ static void fsl_mc_msi_update_dom_ops(struct msi_domain_info *info)
 	/*
 	 * set_desc should not be set by the caller
 	 */
-	if (ops->set_desc == NULL)
+	if (!ops->set_desc)
 		ops->set_desc = fsl_mc_msi_set_desc;
 }
 
@@ -140,7 +140,7 @@ static void fsl_mc_msi_update_chip_ops(struct msi_domain_info *info)
 	/*
 	 * irq_write_msi_msg should not be set by the caller
 	 */
-	if (chip->irq_write_msi_msg == NULL)
+	if (!chip->irq_write_msi_msg)
 		chip->irq_write_msi_msg = fsl_mc_msi_write_msg;
 }
 
-- 
1.7.1


