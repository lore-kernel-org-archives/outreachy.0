X-GM-THRID: 6206976986922876928
X-Received: by 10.50.30.37 with SMTP id p5mr12912375igh.11.1445174447418;
        Sun, 18 Oct 2015 06:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.201 with SMTP id h67ls2290495qgh.60.gmail; Sun, 18 Oct
 2015 06:20:46 -0700 (PDT)
X-Received: by 10.31.149.200 with SMTP id x191mr21477439vkd.14.1445174446631;
        Sun, 18 Oct 2015 06:20:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si2876296pbb.0.2015.10.18.06.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:20:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so3083250pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7+DBhNqArxRArGMJziSGEOcXuUH6j6Z2fyT7ETUVoiw=;
        b=N81kpRHkOeHjklpJ8kZND6gj4OcCkjJLNnbEfM2yquoStO2Jkdzw8ppayapbcPkJee
         iMwzVTTwWT0TRNM6/fVuI/esDC5XwUfghQI15Jw//QsyWgUvNs5W38vOJkx1DEwR2AmF
         Q7++w4LJw3ikH3baM+SOE/JyV8HUTARZ+7FtbnBpdPYS0Ro3XrNLyaQKGgTYQQsw+Clq
         nT2+MmkZ+q1gehtjKPcUuSUu/cdnkh3HaruRwFvgueFcS3vj/tNHFjhwNbra8atFFvqa
         g7YF+0TfK/s6nkFQeEyt08N6l68I1TINkzXqQzBc/cbtIAaLvT5cyw9l1//ynUx2n2j2
         ieyA==
X-Received: by 10.66.229.8 with SMTP id sm8mr28362606pac.135.1445174446477;
        Sun, 18 Oct 2015 06:20:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yi8sm31384467pab.22.2015.10.18.06.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:20:45 -0700 (PDT)
Date: Sun, 18 Oct 2015 18:50:30 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lproc_osc: Add check on a variable
Message-ID: <20151018132030.GA30680@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Variable rc is not tested for negative values and hence a check should
be included. Also, a check for variable val should be introduced.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index cdc7f88..c4d44e7 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -61,7 +61,9 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
 	unsigned long val;
 
 	rc = kstrtoul(buffer, 10, &val);
-	if (rc < 0)
+	if (rc)
+		return rc;
+	if (val > 1)
 		return -ERANGE;
 
 	/* opposite senses */
-- 
2.1.0


