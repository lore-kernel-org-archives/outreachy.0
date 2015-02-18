X-GM-THRID: 289717354496
X-Received: by 10.50.153.2 with SMTP id vc2mr1026957igb.1.1424245609830;
        Tue, 17 Feb 2015 23:46:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.138 with SMTP id w10ls3173830qge.45.gmail; Tue, 17 Feb
 2015 23:46:49 -0800 (PST)
X-Received: by 10.236.70.234 with SMTP id p70mr8420135yhd.56.1424245609698;
        Tue, 17 Feb 2015 23:46:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com. [209.85.220.45])
        by gmr-mx.google.com with ESMTPS id ki8si2427858pdb.1.2015.02.17.23.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 23:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.45 as permitted sender) client-ip=209.85.220.45;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.45 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so12715105pad.11
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 23:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3bK5rzn7wzAtsOKXDiK4YAd7EzRBcsSPBqFyYekr7AQ=;
        b=uWV3RKiPt1ZGoJxNj65h/3KAVEPAhzSCjxfZmc5TRyjGBK1XVBpoRj8I3IHg0VN38d
         DVibgVg88bAGH+53TgKDEZ/zPIFqsGstJflaSjkDPg012FLDAEa1rDcBDrK5YG8jbzJz
         qFID5P4/taCnmXCEkKaqJ/mvqdC0nQculEtGnUfbAF7Ub7y5XI4LEYdGVBvafcETk0F4
         bJzXiv3/Rsoz02D6xBu/oVhkhP1G7pd+MmLflwh6LdgPH7/b/wO05kwhBh5w4JlAoviM
         v5qP/l8Zk8sFDTZoZ/RONhNI9ctJybDW7boef/YqNbMgHmklPN9krrLF2pJ4hR8yzVTQ
         qguQ==
X-Received: by 10.66.186.166 with SMTP id fl6mr56006896pac.95.1424245609579;
        Tue, 17 Feb 2015 23:46:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id rd10sm19753645pdb.76.2015.02.17.23.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 23:46:48 -0800 (PST)
Date: Wed, 18 Feb 2015 13:16:34 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: i2o: Remove space after the * in a pointer type
 variable.
Message-ID: <20150218074634.GA9707@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove space after the * in a pointer type variable declaration to follow kernel coding conventions.

Changes from v1: Changed subject line to make it more descriptive.

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


