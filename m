X-GM-THRID: 6253755627257987072
X-Received: by 10.182.27.101 with SMTP id s5mr22136772obg.35.1456065947615;
        Sun, 21 Feb 2016 06:45:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls1079029qge.76.gmail; Sun, 21 Feb
 2016 06:45:46 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr22419333qhi.10.1456065946900;
        Sun, 21 Feb 2016 06:45:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id p10si1704986igg.1.2016.02.21.06.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:45:46 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x230.google.com with SMTP id 9so154537669iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UKkJzE0imBfrW6hsOhDKQB8HGQ0f0095K8SS+9aKBrQ=;
        b=kWKUHVpqfn8CoiDFgbI2YjayPmCyZZF9bBUBmNITEAQhvel/gg/qnBirAgB0OWvOOR
         9HI2B1/bwFrcTVt65843aj+vKsCKRlWeBqusN+SYCXdK0rMBKfRDceWK/mGutAMSZvJw
         6rkX6gJpv1UCAGaPSZkzqSxcKeijOX2SXzNLcqRbi3vUQUYCiZMULQuyIWb6NLrDzSD4
         /2KqtkKZSLScCfw6/qZIZyuVE+299D59QMyfNXS4KpBz5q7HGhYSv2gGwKqWaSu3P9F/
         Nh0L4rFP/b1lSrNEQqDxbiKvV5V520PuWIsDBlyXDnTe8V1XWugsFWLrNLyLlIcqUJPK
         FU8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=UKkJzE0imBfrW6hsOhDKQB8HGQ0f0095K8SS+9aKBrQ=;
        b=m1KhGqi25DK1POmStRrreTyacHpVIwxnIFT5lxdAFxWM/hZ8Rvr/oukTL1fyDMHHT0
         SHnSy6+upG72IEz000z+w/h8l0+sXAfgjcQhTv+tBqWYSuOQ4EEzl22hu+k4h9lKkrQj
         IWjatVrfThhqceWxiuPegS2CEAkRA2suEa/SlMdsmiAtD2UVI21fyAQgFZbRM6rWnVWr
         6p4dQTBWfQFlxFg4+1TtMtrpheqQLAYijTGFka+0wLVpRJuFzIlZR35cHPhNNg2d8UA5
         qClsghzT7BMRMdNiy4wkC+h6m2gibp0ZY3J9IzZoLSCKCmDVr3nGh9a6BOutLAhu59pz
         iODg==
X-Gm-Message-State: AG10YOSRVaLDLAYPFSWF0LI6UCIijqFuXurTKKAovHWcypz40ySLT32aSzD8JmSjmW3NcA==
X-Received: by 10.107.38.82 with SMTP id m79mr23058744iom.2.1456065946775;
        Sun, 21 Feb 2016 06:45:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j7sm7504996ige.5.2016.02.21.06.45.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:45:46 -0800 (PST)
Date: Sun, 21 Feb 2016 14:44:59 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: libcfs: Remove unneeded NULL check
Message-ID: <20160221194459.GA28798@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL check before debugfs_remove_recursive as it is not needed.
Generated-by: scripts/coccinelle/free/ifnullfree.cocci

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
index 611607a..a2723a6 100644
--- a/drivers/staging/lustre/lustre/libcfs/module.c
+++ b/drivers/staging/lustre/lustre/libcfs/module.c
@@ -559,8 +559,7 @@ EXPORT_SYMBOL_GPL(lustre_insert_debugfs);
 
 static void lustre_remove_debugfs(void)
 {
-	if (lnet_debugfs_root != NULL)
-		debugfs_remove_recursive(lnet_debugfs_root);
+	debugfs_remove_recursive(lnet_debugfs_root);
 
 	lnet_debugfs_root = NULL;
 }
-- 
2.5.0


