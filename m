X-GM-THRID: 213884338176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db22422998b7f0e5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.79.168 with SMTP id k8mr29254569obx.49.1424209055790;
        Tue, 17 Feb 2015 13:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls3023916qge.61.gmail; Tue, 17 Feb
 2015 13:37:35 -0800 (PST)
X-Received: by 10.236.24.228 with SMTP id x64mr27331156yhx.26.1424209055634;
        Tue, 17 Feb 2015 13:37:35 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com. [209.85.192.181])
        by gmr-mx.google.com with ESMTPS id bo1si2292512pbc.0.2015.02.17.13.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 13:37:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.181 as permitted sender) client-ip=209.85.192.181;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.181 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f181.google.com with SMTP id z10so46445045pdj.12
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 13:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=t8RT78uBKH5F7Blg0YZ+4IFycfCspnflU0ow9EiR+cM=;
        b=jL/gFgDmQ4N/7FLV2vTeA3YyzQ4BDCgCJ3V8pOjX4bKCAkNJ6K9ZK4OE3cHMNr2X5p
         vy1O4NNMstMZZxxtqTAgJ6F8zXotWSZ+tH2vPGtDXgSNJxNM6wy6febfadY/xN0lLxJg
         M0RqNe6fh4iNJXMkWgBwtJYfGBb399um67zf2r9sgmmhehTu59E/K7hVNX8EYyLyNPh+
         BJLa0mqjfsEurFgF8OjoG3rzG/6YNRjoHcs8B+SQorc6sdhJXSoWr6ZbKOhC4sEXtECZ
         qOstPf4KjbmLXjl1m5j+KM8LBb3AyDEMzJwwe28OwtxychH2bbLHqqLnkM7r3puuFKGd
         paOw==
X-Received: by 10.68.252.198 with SMTP id zu6mr51947748pbc.102.1424209055439;
        Tue, 17 Feb 2015 13:37:35 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ex1sm18446376pbc.80.2015.02.17.13.37.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 13:37:34 -0800 (PST)
Date: Wed, 18 Feb 2015 03:07:20 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: Use preferred library linux/uaccess.h over
 asm/uaccess.h
Message-ID: <20150217213720.GA9267@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes checkpatch.pl warning "Use #include
<linux/uaccess.h> instead of <asm/uaccess.h>" in i2o/config-osm.c .

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/config-osm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/config-osm.c b/drivers/staging/i2o/config-osm.c
index 519f52f..45091ac 100644
--- a/drivers/staging/i2o/config-osm.c
+++ b/drivers/staging/i2o/config-osm.c
@@ -19,7 +19,7 @@
 #include <linux/namei.h>
 #include <linux/fs.h>
 
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 
 #define OSM_NAME	"config-osm"
 #define OSM_VERSION	"1.323"
-- 
1.9.1


