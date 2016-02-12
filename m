X-GM-THRID: 6250422711327129600
X-Received: by 10.140.252.131 with SMTP id x125mr1824709qhc.12.1455289987708;
        Fri, 12 Feb 2016 07:13:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.68 with SMTP id q62ls1787452qgd.95.gmail; Fri, 12 Feb
 2016 07:13:07 -0800 (PST)
X-Received: by 10.129.79.21 with SMTP id d21mr1878593ywb.46.1455289987147;
        Fri, 12 Feb 2016 07:13:07 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si1479979pad.2.2016.02.12.07.13.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:13:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so729225paa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=uqiR2WhfsOsojJMv3Gt+03qQ2NphiMHF1bosq118kRE=;
        b=bR4AqeqMbERZbMmKCg/3/oqUBpyDm+4NbhwYMGXWLpeUxh20vd9SFiOQMnF3phm7D4
         V2YQkNPysbOUHjSKfMwNle1FvWa1EAdsnUr2/jDEEnju1FGBmHPruwRoKWXZV4JxWnS5
         dx4sbwKUpw97Sc+yqm1z08Quj47MyMZtnwBS+th94HDOvKMFnStRdkOk5PiJO66i+bXJ
         Bv5v+TDKPvRAeX41P1vzuCZWt3vrRMBeqJdjLfpnCiBVvpr+dli8WekqToVNsuwp1IdL
         myJ/hHm0P2cuPR5b12Bw/U8avVib2WcPVaZij05OD+BiFpWKVSAGYAOEs6sOmY2n63Z/
         JWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=uqiR2WhfsOsojJMv3Gt+03qQ2NphiMHF1bosq118kRE=;
        b=P9YxkahDcXWZtinK4MqfWj0Vv5qZF8P1PcLOniidYEYCfw/t9s/7PmoiDRP/B7H3cy
         CfXx7H4H18BNEw7DJ0QsCxt8BhVYd6XM6A5YEcBXtyMdSvfWHJDojTR2nDaUXC48v6RR
         V2HloSgQ6XaR/cJUQzGnI/JpTA7vqQFlrgQKs6CsCjC4NMKWvyYS8nJMWQsFAsNlIxVy
         AO7v8h/pzXyQjp8R0TDPCDHfHL0pAz71HVPRY8KKx/0TeyiBVFc6+DmWpQspPD+FB2Af
         u7G3IFSPA+EA5Qrg6oanQB8TQL+fZ78sCVHVTAqT90B0a8QmeIGTPJz31nu0a0CXBKmI
         1i1Q==
X-Gm-Message-State: AG10YORr6Eixq7S8K3n5ad/yI3r+fhO5qptrzPUWSWVf/pNfx9AQh0FIJ5QcrTT5LxqrpA==
X-Received: by 10.66.192.99 with SMTP id hf3mr2858211pac.132.1455289986980;
        Fri, 12 Feb 2016 07:13:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.165.202])
        by smtp.gmail.com with ESMTPSA id u5sm20200041pfi.15.2016.02.12.07.13.02
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 07:13:06 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 20:42:56 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/3] Staging: iio: magnetometer: remove exceptional & on function name
Date: Fri, 12 Feb 2016 20:40:29 +0530
Message-Id: <38e9da6356e54ed5686324a87bb0fb1a15241cc4.1455289270.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455289270.git.bhumirks@gmail.com>
References: <cover.1455289270.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455289270.git.bhumirks@gmail.com>
References: <cover.1455289270.git.bhumirks@gmail.com>

In this file,function names are otherwise used as pointers without &.
Found using coccinelle.
// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 394bc14..aaa5023 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -554,9 +554,9 @@ static int hmc5843_init(struct hmc5843_data *data)
 
 static const struct iio_info hmc5843_info = {
 	.attrs = &hmc5843_group,
-	.read_raw = &hmc5843_read_raw,
-	.write_raw = &hmc5843_write_raw,
-	.write_raw_get_fmt = &hmc5843_write_raw_get_fmt,
+	.read_raw = hmc5843_read_raw,
+	.write_raw = hmc5843_write_raw,
+	.write_raw_get_fmt = hmc5843_write_raw_get_fmt,
 	.driver_module = THIS_MODULE,
 };
 
-- 
1.9.1


