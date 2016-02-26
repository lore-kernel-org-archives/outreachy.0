X-GM-THRID: 6254956437313683456
X-Received: by 10.50.13.101 with SMTP id g5mr1403397igc.6.1456478112703;
        Fri, 26 Feb 2016 01:15:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.82 with SMTP id w76ls916872qgw.44.gmail; Fri, 26 Feb
 2016 01:15:12 -0800 (PST)
X-Received: by 10.13.225.8 with SMTP id k8mr293602ywe.37.1456478112081;
        Fri, 26 Feb 2016 01:15:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si1934251pfa.2.2016.02.26.01.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:15:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so128515pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eGzqi9NIqfNB889bu05TdRXsE/g5EI8l0RDLnp9JKD4=;
        b=QVuudZsvBqy3grpLe8D6pYBMorElYbY8ZFH/7LFtmnBFLTr2h2z2jVpcWAaCXBL52M
         u2Yy2AH5+00rtuzUo0qKZDblxVAcF7adNq4bdjKjsqRdxRUFwWAuWiK/m6ohkItZ0YuW
         oqCwqIb27FZbNaH0O9iTk7q7GjjLnUUSQlOYftWZ8ckUsI5STvnbA8c7ELpQq086bwMS
         YcSYWVxlkz9NvwI8C9LlQe2e5z4w0vEeZHB6VHbRcLjQ4Fv7UOYMO7qIJsUb7pVkH5mj
         EWO+Pl8MkauTvwmN77jJ9smYaJRJ9CoaL2hHIACb9zdnJHdSxFfZEeZvcTtKvbsqi693
         nPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eGzqi9NIqfNB889bu05TdRXsE/g5EI8l0RDLnp9JKD4=;
        b=kwT4eOw50IGT81JIYe3Fq1GwGc6sMYYf8DgnzybFcIi0obvLD2Rc695asprzsl1Wuw
         sqDRM2l8YAVxeD/Bwuh7SZSnymnLUHEAILWPlwcllKex7lehAqv1qiQZoDrb7rjQwwUy
         XI+iP+ITzNoCA023xGgv00BCRzrRQTVjNT79Gn8aPR7TpKnb1XU+3bctOKEhMF0WPQ5Y
         6E2s5wxFbVzDdhxuaIHEkLeZj+wcSIdSdYSS1008wgvhbV9ySOGattmTdx1jLMzOkhXK
         JBPk8BpmHaQu83OfHaOAWijyqN7THTipehyU5NM6u2d12Ho3babWhFuL3uI/gaqG1VkO
         9l/Q==
X-Gm-Message-State: AD7BkJKc6NOcdHdb7++O67TMpEZ8GODNKG5mLDNll8v0N0DfZ5I9JP7aawISFxX7LpNqZw==
X-Received: by 10.98.34.25 with SMTP id i25mr646276pfi.26.1456478111895;
        Fri, 26 Feb 2016 01:15:11 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ud10sm17770908pab.27.2016.02.26.01.15.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:15:11 -0800 (PST)
Date: Fri, 26 Feb 2016 14:45:48 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/8] staging: unisys: visorbus: Remove useless return
 variables
Message-ID: <20160226091548.GA9049@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-No change

 drivers/staging/unisys/visorbus/visorbus_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index a301385..1542206 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -701,12 +701,10 @@ DRIVER_ATTR_version(struct device_driver *xdrv, char *buf)
 static int
 register_driver_attributes(struct visor_driver *drv)
 {
-	int rc;
 	struct driver_attribute version =
 	    __ATTR(version, S_IRUGO, DRIVER_ATTR_version, NULL);
 	drv->version_attr = version;
-	rc = driver_create_file(&drv->driver, &drv->version_attr);
-	return rc;
+	return driver_create_file(&drv->driver, &drv->version_attr);
 }

 static void
--
2.1.4


