X-GM-THRID: 6252504370851610624
X-Received: by 10.66.62.162 with SMTP id z2mr5511537par.11.1455774617059;
        Wed, 17 Feb 2016 21:50:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls4348214qga.11.gmail; Wed, 17 Feb
 2016 21:50:16 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr5314558vke.1.1455774616309;
        Wed, 17 Feb 2016 21:50:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si689968pfa.2.2016.02.17.21.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 21:50:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id x65so24980488pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 21:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=S3OLCiYyKdDcPXiwxLfRYsSvRF4LYo7lR1Lv5IIv+TI=;
        b=Wpf10EltASSlS28RdNc9fWKYtkeXHzxxjox6u41sMfIvuWwUs2TI6K5WDZU7UmReAy
         1+ij/teVNJHRHe2F/IPa1qT8zbId7eEHMRd6t5PpA2e54RjMJNSZLTM5vyOymR7YowQh
         5owmPmIXkywPHcbGW/+wE2O1Aq2TFdyCKi2PnUsy05R3+xIxwyrSA7JID9YWftvhgqzM
         T875CxiFqtlwY3Rv7+9ZTov1Xwwe6wUKun/ZQlBo6XHP7++ZPifybphIUABct5XWFVOQ
         qCQKwCisYo0rmQU3mOPkyjG5fwD71WuBBY40gl3ImAebYiTrC7KeIl6CcufXcSSTOZv5
         Cn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=S3OLCiYyKdDcPXiwxLfRYsSvRF4LYo7lR1Lv5IIv+TI=;
        b=HAqNyQPQwSYabtMt4eWVYZ6kI+RlcZi1aGv+xHJVybldt/RMYRZFzSbBVA6p/MFbqv
         Uw2w1UVQiZvcu66o56kZocH1hVxIv3NyIXERuWkHPl5fok89qwyT6SO8qhGLEPLo23hp
         98DaXEsIOeuo0O72jO3ZrUo02KYJFVXt/8UBv5xfn59bYDl2QO90rpSG2LUxitFjM55w
         Z0mZ5TURFaYrrvDdacoocgY4j70pQX9G8acNMrriXau1RPyTRCLei/A+pJvOgCPfDGSX
         +coVjTJEw46qzsFmf5Aau6b8PMFmWH8Te7hdTDAcfTM+OAal58hkA6ZIv1o0NW3tb1gs
         qBsA==
X-Gm-Message-State: AG10YORwy1uylRsL9yV7guKl2xhFcgpdP2yEy1v8xm0ULG0BDvFmEwmfLC05jN+7F3pdGg==
X-Received: by 10.98.68.220 with SMTP id m89mr7541969pfi.65.1455774616134;
        Wed, 17 Feb 2016 21:50:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.184.24])
        by smtp.gmail.com with ESMTPSA id d81sm6724637pfj.77.2016.02.17.21.50.12
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 21:50:15 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 18 Feb 2016 11:20:07 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: fsl-mc: bus: Drop owner assignment from platform_driver
Date: Thu, 18 Feb 2016 11:19:38 +0530
Message-Id: <1455774578-4426-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

For platform_driver, we don't need to set .owner field as is set by
platform driver core. The semantic patch used here first checks whether
platform_driver struct was actually used in a call to set the .owner
field.
The coccinelle script that generated the patch can be found here:
http://www.spinics.net/lists/kernel/msg2029903.html

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-bus.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-bus.c b/drivers/staging/fsl-mc/bus/mc-bus.c
index 9317561..c42bfac 100644
--- a/drivers/staging/fsl-mc/bus/mc-bus.c
+++ b/drivers/staging/fsl-mc/bus/mc-bus.c
@@ -795,7 +795,6 @@ MODULE_DEVICE_TABLE(of, fsl_mc_bus_match_table);
 static struct platform_driver fsl_mc_bus_driver = {
 	.driver = {
 		   .name = "fsl_mc_bus",
-		   .owner = THIS_MODULE,
 		   .pm = NULL,
 		   .of_match_table = fsl_mc_bus_match_table,
 		   },
-- 
1.9.1


