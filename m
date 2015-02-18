X-GM-THRID: 398755627008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,20f43f113c0d991f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.161.6 with SMTP id me6mr1388922icc.21.1424286134050;
        Wed, 18 Feb 2015 11:02:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.77 with SMTP id o74ls96613ioe.89.gmail; Wed, 18 Feb
 2015 11:02:13 -0800 (PST)
X-Received: by 10.66.190.229 with SMTP id gt5mr726581pac.27.1424286133859;
        Wed, 18 Feb 2015 11:02:13 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com. [209.85.220.42])
        by gmr-mx.google.com with ESMTPS id re6si2623254pab.1.2015.02.18.11.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 11:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.42 as permitted sender) client-ip=209.85.220.42;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.42 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkx10 with SMTP id kx10so3345515pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 11:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=83gpynQ2sAQU5IBii3I7rhKfedReeHLsCIQjtW2tlGA=;
        b=VFjgdsDKeIHP8nxs9c3zBeKbYs9K/J8wXstPF7VITKFjgRc9ce+dGvoPB2VnmZfrrP
         Ndqr2bN6URMQwmyymLFhZsS9+3Ob/BMP3EmB/G9aT6ZuWM1IPFBEyR+S1p9I3Gl8nErt
         3a0v/2ml4f1Y0WV0upm1eMHpZjJsIcoHOpcd4X+5A3+07FyLU5kmXUzPZNNvL/KW7WNF
         ca2VWj7BzsLQZlkIDdiBpb7uP6NJVX/xLgqcArQ3zXCl0qkoen3AJUCw6k+QkVPXIrjx
         pTKZ10lWvPJSghL9YImEKJva4gtm5jlXK0LGvpnlPsjVV74iC17U4xavYGEqkuOmrd7R
         wSxg==
X-Received: by 10.69.16.99 with SMTP id fv3mr1266374pbd.98.1424286133643;
        Wed, 18 Feb 2015 11:02:13 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ux7sm18423452pab.19.2015.02.18.11.02.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 11:02:12 -0800 (PST)
Date: Thu, 19 Feb 2015 00:31:58 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: Remove assignment in if condition
Message-ID: <20150218190158.GA17577@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the assignment in an if condition to do away with
the checkpatch warning :'do not use assignment in if condition'.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/bus-osm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-osm.c
index 7aa0339..70b15b2 100644
--- a/drivers/staging/i2o/bus-osm.c
+++ b/drivers/staging/i2o/bus-osm.c
@@ -67,9 +67,9 @@ static ssize_t i2o_bus_store_scan(struct device *d,
 				  const char *buf, size_t count)
 {
 	struct i2o_device *i2o_dev = to_i2o_device(d);
-	int rc;
+	int rc = i2o_bus_scan(i2o_dev);
 
-	if ((rc = i2o_bus_scan(i2o_dev)))
+	if (rc)
 		osm_warn("bus scan failed %d\n", rc);
 
 	return count;
-- 
1.9.1


