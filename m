X-GM-THRID: 4652422660096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,784bcf7b4867b726,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.228.106 with SMTP id e100mr13043813yhq.21.1425052640477;
        Fri, 27 Feb 2015 07:57:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.96 with SMTP id x93ls543780ioi.96.gmail; Fri, 27 Feb
 2015 07:57:20 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr13798158pac.37.1425052640228;
        Fri, 27 Feb 2015 07:57:20 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id m1si550737pdc.0.2015.02.27.07.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 07:57:20 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so21818862pdj.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 07:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=A5yBGIYdvCT7PJJaf5iPFSHKwydT5mFgmVJKb91bsrE=;
        b=wrx0R4mvEt2IUj705xid4z5+baTBGSffUUz/Kwa3xMlq/hwiJ/qcDO4eEm8JmSA9QQ
         d/b9UUbiCO/hu4fx5nAV5r33oUjG6HdXKZ77OejfO0vMEJnSdCuWdG7pxm44iOz9IY7j
         AbtTylcnUK3GwoiXY2gmNJ6+19N54LtVZQG3znes6eu4ZWHbK7gdg9WQ5k263CbbCuW2
         rhEtO5uUcFQc35BSMNUpf5vw9pgA0QOGl6yLuOKkV4EeP32RCL/ocg4UTTVc7zvSabVm
         m/QnUGmncK7JgZE2+ayhs4QeQ2FXgEClr4FgomkA+vqZ1B3lcWA56jNVtWYVQzlgeJjR
         mXfQ==
X-Received: by 10.68.134.134 with SMTP id pk6mr25485976pbb.146.1425052640097;
        Fri, 27 Feb 2015 07:57:20 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id ob4sm4388198pdb.32.2015.02.27.07.57.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:57:19 -0800 (PST)
Date: Fri, 27 Feb 2015 21:28:29 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm72xx: Condense two statements into one to
 improve code readability.
Message-ID: <20150227155829.GA26017@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes a variable assignmnet to a value, used only 
for returning that value. The following coccinelle script was
used to discover it: 

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
     -return ret;

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index af24c57..96bf2bf 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -54,8 +54,7 @@ static void *alloc_qos_entry(void)
 	}
 	spin_unlock_irqrestore(&qos_free_list.lock, flags);
 
-	entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
-	return entry;
+	return kmalloc(sizeof(*entry), GFP_ATOMIC);
 }
 
 static void free_qos_entry(void *entry)
-- 
1.9.1


