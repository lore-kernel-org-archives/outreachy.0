X-GM-THRID: 393156231168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ee2a0a90b6d6dc54,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.47.228 with SMTP id g4mr753812obn.5.1424285559682;
        Wed, 18 Feb 2015 10:52:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.193 with SMTP id o62ls153768ioi.94.gmail; Wed, 18 Feb
 2015 10:52:39 -0800 (PST)
X-Received: by 10.66.252.138 with SMTP id zs10mr743072pac.3.1424285559521;
        Wed, 18 Feb 2015 10:52:39 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com. [209.85.220.44])
        by gmr-mx.google.com with ESMTPS id ki8si2616888pdb.1.2015.02.18.10.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 10:52:39 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.44 as permitted sender) client-ip=209.85.220.44;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.44 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-f44.google.com with SMTP id fa1so3263348pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 10:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HMZ7B62Mos864Gd2jdhbRglqrD7X13rh1AIq75BzSq0=;
        b=bYZtlHCP/NdP8WspwVseavWPlajTZt/NStcjQ3h3Izj3dIsYgapnStB5BOBBc0g4Kr
         CfpHt54LC9tin0sDk/JSIe6tLYIi2JicNx5smsnNM33h5c44SA8uDvxDlG8hqZLbLisP
         Mr+x2RfzgbPp023BHeuQgbAnATFDZTsGyfovGo28ozzKYlzKUw7RZAb6snQce9ERfWxF
         lsq0m1/x98uqRJsdKUDyx6uwubejRTKcu3+13NVwD/+LcEeNPWL4e+VCLzUsq2vOGqXa
         k6XgQKmIcRFodxz52p4ACdYooEJ3foKn87Kn51cPxnnW/YeONP1Xp8AYPASzmJTeoX33
         TeoA==
X-Received: by 10.68.237.2 with SMTP id uy2mr1249518pbc.72.1424285559399;
        Wed, 18 Feb 2015 10:52:39 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id gi6sm21260585pbd.93.2015.02.18.10.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 10:52:38 -0800 (PST)
Date: Thu, 19 Feb 2015 00:22:24 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: i2o: Remove space after the * in a pointer type
 variable
Message-ID: <20150218185224.GA17355@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove space after the * in pointer type function parameters
in function prototype and definition to follow kernel coding conventions.


Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v4: Corrected function definition and clubbed changes.
 Changes in v3: Moved changelog below to "---" line.
 Changes in v2: Changed subject line to make it more descriptive.

 drivers/staging/i2o/debug.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
	
diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 7a16114..3e959a4 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -5,7 +5,7 @@
 
 static void i2o_report_util_cmd(u8 cmd);
 static void i2o_report_exec_cmd(u8 cmd);
-static void i2o_report_fail_status(u8 req_status, u32 * msg);
+static void i2o_report_fail_status(u8 req_status, u32 *msg);
 static void i2o_report_common_status(u8 req_status);
 static void i2o_report_common_dsc(u16 detailed_status);
 
@@ -66,7 +66,7 @@ void i2o_dump_message(struct i2o_message *m)
  * Following fail status are common to all classes.
  * The preserved message must be handled in the reply handler.
  */
-static void i2o_report_fail_status(u8 req_status, u32 * msg)
+static void i2o_report_fail_status(u8 req_status, u32 *msg)
 {
 	static char *FAIL_STATUS[] = {
 		"0x80",		/* not used */
-- 
1.9.1


