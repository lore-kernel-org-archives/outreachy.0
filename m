X-GM-THRID: 6252687247634595840
X-Received: by 10.66.193.225 with SMTP id hr1mr7996328pac.34.1455817196688;
        Thu, 18 Feb 2016 09:39:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.100 with SMTP id q91ls5610926qgq.7.gmail; Thu, 18 Feb
 2016 09:39:56 -0800 (PST)
X-Received: by 10.31.157.213 with SMTP id g204mr8115717vke.14.1455817196061;
        Thu, 18 Feb 2016 09:39:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id c15si262857igm.1.2016.02.18.09.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:39:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id z135so81969394iof.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XfopZzKNTt5x7NiDtblMrQer7P6nHqqrdouGUFMWpHM=;
        b=W6eeSZPqz1GdK6zOFT2LYfHJm7Qu5HMpOQUHf1zKf/RYYqnICDQTkVjvGfW0KTLuhS
         S7bDGd65K0m+nyePoXHjbtXe0q9KnAteFcQolAibOU2mUY4+B7llM+ulf4sjlVl5kput
         wlHOLQQ35lBGICuwXPJELtKOi7DaRG6Ddt2P2g8f3LaMJr0LF+ewxg50IcMMH9ljamDX
         B1xZgDPRN4fEJ3B70m8DamHKvaaM5PztrT6zCYZttyQIvtK1tV7qJwMUrjQCF3U5uikv
         Of5nbGz4OHujA+hhFv2kB2Zd2ZZvUNVBhDdm6PYWxlz0ry37D2ZQa8nEiLzcLMmW4B+t
         hIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XfopZzKNTt5x7NiDtblMrQer7P6nHqqrdouGUFMWpHM=;
        b=hqu7P3YUL3Byl+R4OINe/FVdJLJZ5M3tCytuGSNtg8xh/nI19LB+8gh5n6G/WNsW/u
         QaWV7isBePV2M06jaz4En9F1zzTzhtZTJowLafeeLFvzs5GoTPRmcHe3jz7jbcebfXAR
         5V4K6r4B97gmTcaA6nCpFUHHOKpXWAf62O4uP8uAF0azK8CanbjDlIaTPC9y9iJT2XzH
         lwiO/BKnlDCNFrgwS7FixIxlW9oSSe/AuwtYpn9jsxY0LaBZhaLVJCPYLVNLMDpgi4QR
         1PyFzxIm8tOppwqAYU9lcc2Cak6q2c7oCQThHNRxV6ic4maS4AaH49sgktpHUBdzaufD
         SKIA==
X-Gm-Message-State: AG10YOSADHbzVhzSDvCmEEktZpVJ9iui92m+AdRV2/1t/LIP5Z7cXjg2tvpiFaHga7uUcg==
X-Received: by 10.107.18.199 with SMTP id 68mr9937457ios.130.1455817195901;
        Thu, 18 Feb 2016 09:39:55 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id d9sm1805026igx.5.2016.02.18.09.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:39:55 -0800 (PST)
Date: Thu, 18 Feb 2016 17:39:11 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: Remove unneeded else following a return
Message-ID: <20160218223911.GA7908@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary else when there is a return statement in the
corresponding if block.
Coccinelle patch used:

@rule1@ 
expression e1; 
@@ 

	if (e1) { ... return ...; } 
-       else{ 
	        ... 
-            } 


@rule2@ 
expression e2; 
statement s1; 
@@ 

	if(e2) { ... return ...; } 
-       else 
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/android/sync.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/sync.c b/drivers/staging/android/sync.c
index 2ab0c20..3a8f210 100644
--- a/drivers/staging/android/sync.c
+++ b/drivers/staging/android/sync.c
@@ -424,7 +424,7 @@ static unsigned int sync_file_poll(struct file *file, poll_table *wait)
 
 	if (!status)
 		return POLLIN;
-	else if (status < 0)
+	if (status < 0)
 		return POLLERR;
 	return 0;
 }
-- 
2.5.0


