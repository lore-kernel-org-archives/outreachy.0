X-GM-THRID: 224345980928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e6913d810777da90,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.85.18 with SMTP id d18mr26707613igz.3.1424211287550;
        Tue, 17 Feb 2015 14:14:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.48.35 with SMTP id n32ls3105835qga.30.gmail; Tue, 17 Feb
 2015 14:14:47 -0800 (PST)
X-Received: by 10.236.2.35 with SMTP id 23mr26679786yhe.22.1424211287415;
        Tue, 17 Feb 2015 14:14:47 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com. [209.85.220.51])
        by gmr-mx.google.com with ESMTPS id bo1si2302041pbc.0.2015.02.17.14.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 14:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.51 as permitted sender) client-ip=209.85.220.51;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.51 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so9486982pab.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 14:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=c5bvKkQTqnTj9EmZFrvx4lqxcDSQmEFNN73vNPUk9FA=;
        b=Uj1xLDKbFseeQD34xsw862mH8XRKERqyyTuD/rsx+x8HjixKBp+GTFg9VVK1HopW1d
         p/5K59ikiRA3HFsOaXC5GC3BlSHBQfc7/1EJYvj1rvqLKR4CrCeJrjj0y3uZ+kn6DXMZ
         Ok8ow/mdBP3FYFm8imq8fo80TKH2IZiSecPkFYTbd3U3UgOZf2O5UFe4gfQ6bF4p7Cuv
         EoBQ7QqJPvMa9ExEhe9EGZhmm6w4OVjG52beBKKePQiQonH705f78ECA2xrKu6a9TYgi
         u1ecJ1XiAPwSSaQcANZI2GaR2B8PqWVQ1YuJcSLihABl8pruyLup3hUq1HakWR62PduA
         WKhw==
X-Received: by 10.68.137.71 with SMTP id qg7mr9647378pbb.115.1424211287269;
        Tue, 17 Feb 2015 14:14:47 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id pj7sm18467434pbb.96.2015.02.17.14.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 14:14:45 -0800 (PST)
Date: Wed, 18 Feb 2015 03:44:32 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: fixed "foo* bar" should be "foo *bar" warning
 in debug.c
Message-ID: <20150217221432.GA4319@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes "foo* bar" should be "foo *bar" warning in debug.c.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 7a16114..4f23e3f 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -5,7 +5,7 @@
 
 static void i2o_report_util_cmd(u8 cmd);
 static void i2o_report_exec_cmd(u8 cmd);
-static void i2o_report_fail_status(u8 req_status, u32 * msg);
+static void i2o_report_fail_status(u8 req_status, u32 *msg);
 static void i2o_report_common_status(u8 req_status);
 static void i2o_report_common_dsc(u16 detailed_status);
 
-- 
1.9.1


