X-GM-THRID: 6254563668495695872
X-Received: by 10.129.159.131 with SMTP id w125mr32669008ywg.26.1456255003466;
        Tue, 23 Feb 2016 11:16:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.200.232 with SMTP id jv8ls1157312obc.53.gmail; Tue, 23 Feb
 2016 11:16:42 -0800 (PST)
X-Received: by 10.182.53.233 with SMTP id e9mr21262610obp.28.1456255002161;
        Tue, 23 Feb 2016 11:16:42 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id 12si4016968pfb.1.2016.02.23.11.16.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:16:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so118164743pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KMtEfuEzCWVzKr/bEakrlZpYfdHnWwmdnXOYqrJ2veA=;
        b=n4UtzL0FYkITCb0ggewAwVc9L6Lc7b0eTjLShDaxHHg/hEWONnv4I/sa0KbxgBSIsY
         aoNTv0eKPRrno8yPt1nuY3L6CyhFCnPHEIG9OhWbDbZs42y5qja8JZFcqkwtCNbEtunh
         BEqjmXsyJ2UbwsT90xb6jv5r6femRQe5UwqpwnwesEh6oW3IKaL5PfTDVnAQpXnS4BAs
         98DRVV4ijczqiy5fYFNpmf4hiRUnPZa7JXhhro+7Xxgr+JMn0PkHcakVKXBw055Fr+QY
         4CX/YiR5WM1d+hO9TtKUjjROfDgBb33KPjTOvDogD2YHqv723MTyScTguimKYZ+/NNZE
         7GNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=KMtEfuEzCWVzKr/bEakrlZpYfdHnWwmdnXOYqrJ2veA=;
        b=JbApDpJFZUwE2GMUg/E9pKluMePQ2BquznxPLaUMaJb7rQpOo3r0JsCCbYCULp62n7
         XcdE+50ijS0eP6acQzpuck72XdLNYp5eTLbCk/esJfM7XzL4n2soT0qG3AmpxHq87rn0
         i8pctfC06hR5+VXKLv92TiyTxUQdOzNF2o7BpKryh4NVP9zHkhlQ1ATbMS5Hk4rFF6Gq
         dnLlWYFJDDf5DLKnZla6Wa3E4E4F4viyQgdpB8Tp8IjpNnFWPJ2rspjGipRiOJSV6Vtg
         tI5cMuJp6sve8zioHxvSoc00n1W62UkEYQQjTe+LL5qjrQyh6+WWl1GXES8NRFsrZOYe
         M7iQ==
X-Gm-Message-State: AG10YOTPKybjf8B4FJse8GBgPYwKPeyMNHeVQf6RnH4QaB8pNNCe6+Ktm4nG9nIr93CDhw==
X-Received: by 10.66.250.199 with SMTP id ze7mr48888661pac.103.1456255001856;
        Tue, 23 Feb 2016 11:16:41 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.207])
        by smtp.gmail.com with ESMTPSA id u84sm45894896pfa.57.2016.02.23.11.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 11:16:41 -0800 (PST)
Date: Tue, 23 Feb 2016 16:46:50 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: gs_fpgaboot: Use kernel type 's32' over
 'int32_t'.
Message-ID: <20160223111650.GA3595@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use kernel type 's32' over 'int32_t'. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v2 is :
*Fix stray Reply-to line.
 drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
index f41f4cc..93a61ad 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
@@ -51,6 +51,6 @@ struct fpgaimage {
 	char	part[MAX_STR];
 	char	date[MAX_STR];
 	char	time[MAX_STR];
-	int32_t	lendata;
+	s32	lendata;
 	char	*fpgadata;
 };
-- 
1.8.3.4


