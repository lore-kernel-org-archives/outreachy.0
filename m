X-GM-THRID: 6205949945587957760
X-Received: by 10.129.123.85 with SMTP id w82mr8867357ywc.39.1444935320902;
        Thu, 15 Oct 2015 11:55:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.2 with SMTP id rs2ls2188784igb.24.canary; Thu, 15 Oct
 2015 11:55:20 -0700 (PDT)
X-Received: by 10.66.132.69 with SMTP id os5mr8811575pab.12.1444935320417;
        Thu, 15 Oct 2015 11:55:20 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si1606017pbb.0.2015.10.15.11.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 11:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ur7so12848730pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 11:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=d9iZ6NcjvH3yyFVlHLDBn1zJa1HWi2oQnjuvIB4N1ww=;
        b=W1PBi1Srx2jlu+nEeDwSovtyPg7vZ4ndRdGubwMgNvBnxYfy5aBMWUxSCjsBQImXum
         wNmJSk5nijjnAgZWmO92fbZ4YIUgX2Uf/mQQ5U2DPlOyPQd/6Swa6MQ033O3/VLI/el+
         72xaFHcoii64QxqsvLisMikSTlwoAo84Xdtix8YqXP/NoA+l/bRHBZbk6FgQpN3J3yP6
         QYo3MlEMIi52Y19kYxfvGduvnu1HgGNYCXlUR4mVAAqjfSSn8hiYoxuaGraDA57HWuIQ
         9T6ozDqGUSFLAwqIh+tM1l8KgebSMLhLu62qMAiGla937YdtfE46IbvyhVR8vZK/Qk1T
         aSOw==
X-Received: by 10.66.161.234 with SMTP id xv10mr11466399pab.131.1444935320295;
        Thu, 15 Oct 2015 11:55:20 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ai4sm16732699pbc.67.2015.10.15.11.55.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 11:55:19 -0700 (PDT)
Date: Fri, 16 Oct 2015 00:25:07 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lproc_osc: Change the variable to be tested
Message-ID: <20151015185507.GA40274@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable rc is supposed to hold the value returned by function
kstrtoul which can either be 0, -EINVAL (-22) or -ERANGE (-34).
Therefore, the check must be performed on rc instead of val for error
values. Also, val can never be positive.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 053d508..cdc7f88 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
 	unsigned long val;
 
 	rc = kstrtoul(buffer, 10, &val);
-	if (rc)
-		return rc;
-	if (val < 0 || val > 1)
+	if (rc < 0)
 		return -ERANGE;
 
 	/* opposite senses */
-- 
2.1.0


