X-GM-THRID: 6258564558819950592
X-Received: by 10.98.74.203 with SMTP id c72mr9633248pfj.8.1457185614485;
        Sat, 05 Mar 2016 05:46:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.210 with SMTP id 79ls23655iop.77.gmail; Sat, 05 Mar
 2016 05:46:54 -0800 (PST)
X-Received: by 10.66.218.8 with SMTP id pc8mr9433746pac.45.1457185613996;
        Sat, 05 Mar 2016 05:46:53 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ff2si2116522pad.2.2016.03.05.05.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 05:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id 124so52486717pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 05:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PkHxb/E0Jvezpd2JEkgfrGDUxk6zWoZM5J8MdTvCVS8=;
        b=gR8laxJCL9RaHeqfC0RgPCNbdfz4iBZUrHrTfdR6aeV4W0ISQpN3/8PDbDYUnvxlFt
         vmmbjLh+X9v0TnEAuWZiLASkg+2BOLW4NBvi/lx/M+lVUTstztarAv8SErVFVrD7TH6q
         sPjkIYlVqUUSiW71uTXeEDPYZgU23Kb4m/kp8vXfcbh69MOoPRYgTDVPChKoFq5Jb1CM
         dsMT79k4hzU34SMl4mKLWFl/7dc9KH9WYRGxUXae11rNLQUcxA8MgtdjuRv7kO48KIa1
         HYqKeBiglVXdSNJTxo+wUd1D2bwGdV2RtGA4EmQeWCwcg+rRgqES/ZCXN75rQRPnE1Sq
         jung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PkHxb/E0Jvezpd2JEkgfrGDUxk6zWoZM5J8MdTvCVS8=;
        b=ls9E+168PVsrXGS11j7XnSgDqkpqwWVv4+EJ2SvNuHixzKHPegnJVZs4/8AMFs/SYv
         FTya7Tpd4ATZUSJks7I7gOLBOeMjF0eIQ7i6B/xji7qig53ly9ZMpxwwsbZ9s2uzLo2+
         YkGJXMQKv+QC7sEEiEk32ITglWQfBfe6b+Dj7a33WY9UHdcMQyTCWZ2BoMHcY7tJYAe4
         s7BpvSonL/KL3aM60pLMJMJGv/qVUjVzJgzp6wqYKkojctzhhFWYdHZeKKWv7oHSQt1/
         xdkEQaxrc+l9o1Y2ZhsARioOKLJ3QTDAf2lBf0euZ7gkDMGRe43FXUh8T90WxqLAsmyq
         e/vg==
X-Gm-Message-State: AD7BkJKAVHQS9Kp9Eyo8+GgSsCd2uoRXZ5CD5FfGD6uD8v4acRCCCxoAViAQ+9Vrkm1tIw==
X-Received: by 10.98.65.203 with SMTP id g72mr20286654pfd.138.1457185613859;
        Sat, 05 Mar 2016 05:46:53 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.169.35])
        by smtp.gmail.com with ESMTPSA id u5sm12694428pfi.15.2016.03.05.05.46.49
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 05:46:53 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 05 Mar 2016 19:16:42 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: most: Replace pr_err with  dev_err
Date: Sat,  5 Mar 2016 19:16:40 +0530
Message-Id: <1457185600-9618-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

All devm functions has a device structure as the first argument which is
required by dev_{err,info,dbg} printing functions.
This patch converts pr_err to dev_err as dev_* is preferred after calls
to devm functions.

Done using coccinelle:

@r1 exists@
expression e,e1;
identifier f =~ "^devm_";
identifier g =~ "^pcim_";
identifier h =~ "^dmam_";
@@
e=\(f\|g\|h\)(e1,...);
<+...
(
- pr_info(
+ dev_info(e1,
   ...);
|
- pr_err(
+ dev_err(e1,
  ...);
|
- pr_debug(
+ dev_dbg(e1,
  ...);
)
...+>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index c736310..caff5b2 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -817,7 +817,7 @@ static int dim2_probe(struct platform_device *pdev)
 	kobj = most_register_interface(&dev->most_iface);
 	if (IS_ERR(kobj)) {
 		ret = PTR_ERR(kobj);
-		pr_err("failed to register MOST interface\n");
+		dev_err(&pdev->dev, "failed to register MOST interface\n");
 		goto err_stop_thread;
 	}
 
@@ -827,7 +827,7 @@ static int dim2_probe(struct platform_device *pdev)
 
 	ret = startup_dim(pdev);
 	if (ret) {
-		pr_err("failed to initialize DIM2\n");
+		dev_err(&pdev->dev, "failed to initialize DIM2\n");
 		goto err_destroy_bus;
 	}
 
-- 
1.9.1


