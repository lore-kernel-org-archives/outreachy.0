X-GM-THRID: 6206160535830921216
X-Received: by 10.13.247.132 with SMTP id h126mr11413945ywf.56.1444984352128;
        Fri, 16 Oct 2015 01:32:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.52 with SMTP id 20ls140870igj.1.gmail; Fri, 16 Oct 2015
 01:32:31 -0700 (PDT)
X-Received: by 10.107.15.168 with SMTP id 40mr7990099iop.16.1444984351692;
        Fri, 16 Oct 2015 01:32:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si1889368pab.1.2015.10.16.01.32.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 01:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so16121295pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 01:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ig6rjEQt/illaegeFlju5yxP7OISotiljOEzi6Tgpmw=;
        b=FV0thF1LbgrjhpxNzn6kWWhNuNMF4P7+k2aYt4WBMv//eCb+7eFN7wqvCf8PLOV3l/
         wC2+PmTPiH9UlIluY9LgMpBDGgqyfRuY+1giqiTW4CAz4DJ2cPCq2y1/tZi/YRvKk3jf
         NExf+w/0pFa2fuQI9ipNCzq1S79Y0f6HEVJRz01bIqVs0HUhTFtrF5wN/hhshmSGcNf5
         SK+yxCPbSg5Qxtrfeuxj9xrRH3d5d/WyHvnaDtCUaElz0GDNybHxGfk3AncrC06xPR7v
         39OlCnjq4hMkv7zVmuTbxcZiOjrCdPMc/ry4MTAiJYhXjPKsFkI4mxcK8C+2DoqqXTfs
         VyjQ==
X-Received: by 10.69.1.67 with SMTP id be3mr15326736pbd.78.1444984351529;
        Fri, 16 Oct 2015 01:32:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id v13sm3073838pbs.51.2015.10.16.01.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 01:32:30 -0700 (PDT)
Date: Fri, 16 Oct 2015 14:02:18 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: lpoc_osc:  Change the variable to be
 checked
Message-ID: <20151016083218.GA2815@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable rc is supposed to hold the value returned by function
kstrtoul which can either be 0, -EINVAL (-22) or -ERANGE (-34).
Therefore, the check must be performed on rc instead of val for error
values. Also, rc can never be greater than 0.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	Update the commit message.

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


