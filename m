X-GM-THRID: 6253752748350636032
X-Received: by 10.107.186.134 with SMTP id k128mr1650680iof.26.1456065277112;
        Sun, 21 Feb 2016 06:34:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.205 with SMTP id e196ls550022ioe.47.gmail; Sun, 21 Feb
 2016 06:34:36 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr6909703igq.11.1456065276846;
        Sun, 21 Feb 2016 06:34:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id k15si1544587igt.3.2016.02.21.06.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id hb3so62260419igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2c6g735w0Dc05WY9bPCiJwPFmUUpkjdJ91e1f7ZDrmc=;
        b=ImZ00Ba9WYaoGZgRLrDzX22Q6tHDU+moi5tdPCgQk06roEOz2Ie9s76j27tdsaxCtb
         qm42Qr0g4LSa8IZgE9VucBO3+OJPz+ozYiIcHaWHF/kqYenBqLd+dHHU7sAAaGRIl0XR
         4/imH8mZTo+CTf++fk4rVdtt7hCQXshnU6TEF+RKCoviDFMhQb69rqCFCLm19Ga+iV+i
         xWL9lHmc1Fw+oOhbUvNhfLSUYfKBjGBPBJuCk175ZsAkb33G2v5WM1ksrAouI1PjrOSv
         hCMnhb0JBB7xlz20nqRfAVluuIvZB2s0dQIX3i/LDlGXFBT9x8LveplZbZ9BvoVdLkG5
         MOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2c6g735w0Dc05WY9bPCiJwPFmUUpkjdJ91e1f7ZDrmc=;
        b=iZJae2/kT4RYqZzLAnZKfAAAmeB+SqgqK0pk1QGe60lnc497x47iyJYtSmN5ykzLV4
         ahZLKHDOiCs8a1ZnmnUR4NZNHOr0RdgWlbDGzHqKZQyxp1VVK3cdurRaYnFiO0EysGB0
         UUjwQkKRfkeA6PwsraTrepkCjMTwzkTNO/PK/wKpqY1AIwmlLzfxZ1qR9/+qe4LaQyzS
         dmD9tx3JUUQmtiGrH31D3zj/Ku7y6AeUo4haqoDIU8kz4ip9pbJVgF1bCpq26mi7jV9g
         OPd5gntpGiLnIcsuEq6PdpsjZrI2xldq52lmNeyF0bBON2EY181GNewtNe6fFyEY4k5V
         /CXA==
X-Gm-Message-State: AG10YOSGj5BurbuVdn/vFptjw6dpVbUJrQ2OTg8omKC/GAedEWN3uktQ7agxzUEYyM6zSg==
X-Received: by 10.50.142.73 with SMTP id ru9mr6590976igb.15.1456065276725;
        Sun, 21 Feb 2016 06:34:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id s20sm2125120igr.0.2016.02.21.06.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:34:36 -0800 (PST)
Date: Sun, 21 Feb 2016 14:33:48 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: obdclass: Remove unneeded NULL check
Message-ID: <20160221193348.GA28437@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded NULL check before debugfs_remove_recursive.
Coccinelle script used can be found at
scripts/coccinelle/free/ifnullfree.cocci

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
index 1913f3e..2045621 100644
--- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
+++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
@@ -454,8 +454,7 @@ out:
 
 int class_procfs_clean(void)
 {
-	if (debugfs_lustre_root != NULL)
-		debugfs_remove_recursive(debugfs_lustre_root);
+	debugfs_remove_recursive(debugfs_lustre_root);
 
 	debugfs_lustre_root = NULL;
 
-- 
2.5.0


