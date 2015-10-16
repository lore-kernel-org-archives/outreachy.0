X-GM-THRID: 6206234099598753792
X-Received: by 10.107.165.5 with SMTP id o5mr13228206ioe.5.1445001480157;
        Fri, 16 Oct 2015 06:18:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls1410602qgf.50.gmail; Fri, 16
 Oct 2015 06:17:59 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr12610372vkf.7.1445001479417;
        Fri, 16 Oct 2015 06:17:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si1993082pbb.0.2015.10.16.06.17.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 06:17:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id cn9so6064409pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 06:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=56bGlKk4ZM/l8Q8oQ7R8WjFEcNdrKoaKmfcMwUP6dbA=;
        b=FzqlFgOyGT9a8a7vWxkAfzH+Xn3yXxhwwCLv5jJcsS6Jiz6FfaJplo1NjJm/hX8ajM
         V1K5JWnp/HrGxB4xgzxut/RRTto30FAG6W7Q57P3a7x9f/npUvEdZCw7LE2+83XR9A89
         N8V/sCCurRyU0LbZbVaL/mEAOPZVthOEKO+5Q+ADLJzdGH1xu/g5KczlQnbo2PRyvjq1
         LIUvxNRrLVNeRfDq7xhxTHw7AEmBBugNrv3vjMG5GT6xSDJMsoGjRrIJxjKW7lYq2tlf
         R1FZjWFLnNeHTA0jtK441iJQg+hSZZoO8SAvhVB19kIo21Qei27omsvn5QsN3XZyV7iE
         OcxQ==
X-Received: by 10.66.66.166 with SMTP id g6mr16183138pat.152.1445001479245;
        Fri, 16 Oct 2015 06:17:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id tz1sm21303150pbc.50.2015.10.16.06.17.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 06:17:58 -0700 (PDT)
Date: Fri, 16 Oct 2015 18:47:45 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lproc_osc: Remove irrelevant check
Message-ID: <20151016131745.GA3734@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable val has been declared as unsigned long and thus the check
for negative values should be removed from it.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 053d508..c4d44e7 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -63,7 +63,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
 	rc = kstrtoul(buffer, 10, &val);
 	if (rc)
 		return rc;
-	if (val < 0 || val > 1)
+	if (val > 1)
 		return -ERANGE;
 
 	/* opposite senses */
-- 
2.1.0


