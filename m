X-GM-THRID: 289717354496
X-Received: by 10.52.244.198 with SMTP id xi6mr29618622vdc.0.1424258140668;
        Wed, 18 Feb 2015 03:15:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.197 with SMTP id i5ls2972obk.62.gmail; Wed, 18 Feb 2015
 03:15:40 -0800 (PST)
X-Received: by 10.182.39.169 with SMTP id q9mr31376931obk.33.1424258140459;
        Wed, 18 Feb 2015 03:15:40 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com. [209.85.220.51])
        by gmr-mx.google.com with ESMTPS id bo1si2482757pbc.0.2015.02.18.03.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 03:15:40 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.51 as permitted sender) client-ip=209.85.220.51;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.51 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so542605pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 03:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nShoWjCYqoFtGR6MGrkzfL8m2WCIyl5MBt2Du1CFvVw=;
        b=X9O+Ee/pPuK1KWH7x86PVmtQrMLWqZiz5MntBNzVGdX/0UCMybE6WO8O89pYsuJ4kb
         I88lWazJtGkiVYWbuwCUNM9TQhYvqi1OR0yqt0+NKVy67Vqi3vggEO3Kiw2ux2/3Po0c
         puh9virecV9w3iWGtPEA8Px6H5C3HBUUPDYBuPKN0deuvMdxeGEOojXsTY1B7ueUgZya
         ZobnBU+8nuTUyqjU/BRJyLlYM9EszX+XR6e5wnHTxuNMZXnI1jCKiPqPnLPWjve3fgiD
         5a/3uF5MRZ+FVIrrqMuy+zcGx8zlU6S0RHsjW8aCMzOeBMObcBx9LPtlZaOGNETzMTOt
         Xilg==
X-Received: by 10.68.211.228 with SMTP id nf4mr58025258pbc.66.1424258140327;
        Wed, 18 Feb 2015 03:15:40 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id gt10sm16043364pac.32.2015.02.18.03.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 03:15:39 -0800 (PST)
Date: Wed, 18 Feb 2015 16:45:24 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: i2o: Remove space after the * in a pointer type
 variable.
Message-ID: <20150218111524.GA11738@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove space after the * in a pointer type variable declaration to follow kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---

 Changes in v3: Moved changelog below to "---" line.
 Changes in v2: Changed subject line to make it more descriptive.

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


