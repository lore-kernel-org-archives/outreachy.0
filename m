X-GM-THRID: 6249455675787706368
X-Received: by 10.112.54.202 with SMTP id l10mr4404434lbp.14.1455064787263;
        Tue, 09 Feb 2016 16:39:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.147 with SMTP id j141ls725956wmg.40.canary; Tue, 09 Feb
 2016 16:39:46 -0800 (PST)
X-Received: by 10.28.47.211 with SMTP id v202mr937505wmv.3.1455064786796;
        Tue, 09 Feb 2016 16:39:46 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id w10si581254wmw.3.2016.02.09.16.39.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 16:39:46 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id c200so972072wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 16:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eVTALszz4t8jT/BfgewsPDham3rxE1z6jlmAGDggmqs=;
        b=OWTsDcTZ7F3I+lO5RCKQOxPTFbNktAME2cgxB0px4GMiLQWAqJNw9fhL2Tra09jSpF
         WuT7svDnA/mv0TkAKZVxPBwFYmjQZGaJqWwDDwXVi1hlXzZY4WPixPbOg1KgCJ7JJ4Mh
         RHo7ULvM3QU3p3HKbmH9iuQoLwqiGAmzBTc/nTMQ1YWF4xm9JkP87Jdtjg8MZCqjHuc3
         gNhXn8gwAhAiuTs3S+q/nse/FMdkvMSYkTU1BapZYjtLurWL7HeuedPMsHU6mFkp+vJK
         fAUGqXe19SkWLiXpz/aa176m3u1NliTSPzmwY7tEnSjnMGFLiBJsCwPJ8v5bX+N5Ah6E
         VGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eVTALszz4t8jT/BfgewsPDham3rxE1z6jlmAGDggmqs=;
        b=IOSYPx04Wv2cDqj4tc4ZXIGDTFJYINVzexG/ZPxBG2nCx8UzfBDiv11lcMj13Az4nU
         abEj1BU1AuwQSdQ5yN03pgKiR/wbybwhlK1XtKhp5Y5MilaJRo3kLnjsQJgUMQQplIBk
         sSaN/HoweMizwCHcDQbAt85BkHIvvAT7s1HJ3uEG2ZKnnHtwr16SLnmjlK6nDvYHHNwL
         4qkgeS/gokG1mS9faO6B2R73suU8R0xW5e+PIhppN4Gy9BGGswFq3qpPeKg8n3C9yZe5
         0OLhTYbAcHwaa9vnXcPsKZ80rt2FFzxWbY58ODPAMS1+UvfZWz2m9NFF0Cynhzy33Ze1
         x+Qg==
X-Gm-Message-State: AG10YOSrCQwGdyglaOC5Wkj6PRgHlJK4nPwY1jS1BISQ1pMb6UvJO4IYa1D17We8ZsdoDA==
X-Received: by 10.194.250.39 with SMTP id yz7mr40883728wjc.92.1455064786689;
        Tue, 09 Feb 2016 16:39:46 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id x186sm19784916wmg.19.2016.02.09.16.39.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 16:39:46 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia.Lawall@lip6.fr,
	daniel.baluta@gmail.com,
	gregkh@linuxfoundation.org,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH 2/2] Drivers: staging: lustre: lustre: lov: lov_pool: Fixed a coding style warning
Date: Wed, 10 Feb 2016 06:09:34 +0530
Message-Id: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed a warning.
WARNING: void function return statements are not generally useful.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
index bba37bf..34e0919 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pool.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
@@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, void *v)
 		lov_pool_putref(iter->pool);
 		kfree(iter);
 	}
-	return;
 }
 
 static int pool_proc_show(struct seq_file *s, void *v)
-- 
1.9.1


