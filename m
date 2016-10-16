X-GM-THRID: 6342042153586262016
X-Received: by 10.13.252.5 with SMTP id m5mr6103613ywf.156.1476621756438;
        Sun, 16 Oct 2016 05:42:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.57.181 with SMTP id y50ls11751088otb.10.gmail; Sun, 16 Oct
 2016 05:42:36 -0700 (PDT)
X-Received: by 10.200.44.7 with SMTP id d7mr5735568qta.68.1476621756120;
        Sun, 16 Oct 2016 05:42:36 -0700 (PDT)
Return-Path: <d.sandy5990@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si4277668pab.2.2016.10.16.05.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 05:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.sandy5990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of d.sandy5990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=d.sandy5990@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so7440072pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 05:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RNVlZVuedGEAFBv+2+j+NgKTXtgiVgyG9vN2w4thbq0=;
        b=th2HYXWuG9SiiafaovOSs3gLLquZJroCMOoGcbB6fO8xwLrpYx2PD2sIUGTuiwTwKh
         xOYqlaEVppSkXrphjclznrdSjfBx7wnGpgJML7vk0Aj9L7Mc95dYPSOh2tj5GLsIpdWI
         3HaskRdjuj9fSUDlRQd/dZaIUh1AIAA416AZJaG+vmh5teirLMAjrYNSTl4zO3grXt5j
         zm9VzZKjNxFDOzH7oL434R5E/Ilr5KYIGcQbfpil/zm7LPTVWlFs9uyHgdcBAvzLg2bM
         4UbgXJGYCLDJo1F4WPBSmdclgaS4q2jSKeoIpg4rg3IS98qr4PhI4GiBqVOhwiBNeVaG
         DaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RNVlZVuedGEAFBv+2+j+NgKTXtgiVgyG9vN2w4thbq0=;
        b=boA7Eyj6o6kSK7xfXhlQorim8YoMHjPs9EsbKYuTiuM60o/Ht8ciF4Aazvr2zRTat/
         aWHWqywxYBxMk7xLzPfw9nIdOSv2LmDKQEl2HzEnlJIy8mZeCmPKV2CDGzmvejBiwT/w
         equRC6m57MWlYN0/Za3u7CSnwzJo39xP8K7dKuEd/CioVyu+tE1zPqKxK9/0P4eCNIYA
         ojW+7721UZM8CH4Np3QLphb25EY7cVzSb/1lgk/I6lEQ8iHUMQknt7/toolv9f8aP1Sm
         wpU1Ja3OEV260Ybtpp4Ypor/GMGFpyT5jG0bItVwcsGH/kPtuONLFvnzMlS9ksvu0XWY
         aTog==
X-Gm-Message-State: AA6/9RnmScU+cgrTDiB3rfqtv8VvkeIGuhnJ8dxa+d6oHBBxXxRcLiPKy6snGlRtDAVP8A==
X-Received: by 10.98.150.79 with SMTP id c76mr30742896pfe.154.1476621755754;
        Sun, 16 Oct 2016 05:42:35 -0700 (PDT)
Return-Path: <d.sandy5990@gmail.com>
Received: from siddhi-home-laptop ([45.124.141.33])
        by smtp.gmail.com with ESMTPSA id a7sm12810652pan.34.2016.10.16.05.42.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 16 Oct 2016 05:42:34 -0700 (PDT)
Date: Sun, 16 Oct 2016 18:12:32 +0530
From: Siddhi Dave <d.sandy5990@gmail.com>
To: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Clean up Macros
Message-ID: <20161016124231.GA18162@siddhi-home-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning: Macros with flow control statements should be avoided

Because Macros with flow control statements (goto and return) are
not very nice to read as any flow movement is unexpected.

Signed-off-by: Siddhi Dave <d.sandy5990@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 290bf6e..0767740 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -90,16 +90,16 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
 	driver_remove_file(driverfs, &driver_attr_pollrate);
 }
 
-#define DGNC_VERIFY_BOARD(p, bd)				\
-	do {							\
-		if (!p)						\
-			return 0;				\
-								\
-		bd = dev_get_drvdata(p);			\
-		if (!bd || bd->magic != DGNC_BOARD_MAGIC)	\
-			return 0;				\
-		if (bd->state != BOARD_READY)			\
-			return 0;				\
+#define DGNC_VERIFY_BOARD(p, bd)
+do {
+	if (!p)
+		return 0;
+
+		bd = dev_get_drvdata(p);
+		if (!bd || bd->magic != DGNC_BOARD_MAGIC)
+			return 0;
+		if (bd->state != BOARD_READY)
+			return 0;
 	} while (0)
 
 static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
-- 
2.7.4


