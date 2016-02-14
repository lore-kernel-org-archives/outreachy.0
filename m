X-GM-THRID: 6250917174301425664
X-Received: by 10.129.32.68 with SMTP id g65mr8589933ywg.3.1455405069416;
        Sat, 13 Feb 2016 15:11:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.71 with SMTP id 65ls1827289qgy.28.gmail; Sat, 13 Feb
 2016 15:11:08 -0800 (PST)
X-Received: by 10.140.233.20 with SMTP id e20mr8960480qhc.8.1455405068819;
        Sat, 13 Feb 2016 15:11:08 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id l85si1256851ywb.2.2016.02.13.15.11.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:11:08 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id x1so43849730qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=L4Jyw99TNOd9prh6tm9pGFIYb3ZdCvDWwjkyOODunZk=;
        b=uWDp/zw4KxcwSIad81axoq+0zSR1d4Ze8lTf5AkQIKX5Lt8H7e8+1bsHABgutLPW3C
         Q5XSxFlshhfrnZHYRYPfg/o+hzOuG7mA+BIvh4GPOY40smpoez1A4J8vGXodreBwEr17
         MP1sTJPeYSrPEPQgUQzpIsqBYuGzJ2RLXLjCfyXG0DbyxRiregk5jMukXl19wopn+Vkt
         whpoCTDlnvF2Hs93YRa5jqbTWUINIe6Zw3X0o2c0uhf8AJggNw6HEnnqYBfmPK0vx4GL
         yKOvXxV+YMdRQ3LbQ+okHRGfbcIdPhcYFMV4dEIkB79gCoM4u+IONp0QNo+bjuFOMrVr
         EW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=L4Jyw99TNOd9prh6tm9pGFIYb3ZdCvDWwjkyOODunZk=;
        b=b3UJCNonhyU3ONi5/kfkH2ayPYXpT4wsIBhDYoo8uGhiqigMmRmgpRtIxgJbUHlBXF
         UC9v64PxXuPUdJzDB2JUfNRAsw6GsUkiE8uMuE4398DaJRJ7+WO/wD+DWTI5nMjUMYUO
         fEN2PfzpKKNe+hQYhh8zv4v0Bo7+2GQIvHAH4T4pSxKPHHQ85ZDZ3pn9LC7dJMO29aMo
         g5jcpFRobn95uXlwRFbQXJB8j6bZ+vMaiJIzaIsczgvdaLLPpSvcWJRETT/HAFyWhHIH
         mSQyP+ADoxb6w11FX9Icq8TUn9VWyj4tMOPTDEtFbytrtFqPsAb5pqWzIVYItLx5+Pyh
         AUiw==
X-Gm-Message-State: AG10YOQ83xE714lI3HJD9wmpsnHRV0E3mUqdl7uQC1Ye/x/qNvFZUQABwrFDkohnyhiy6A==
X-Received: by 10.55.215.76 with SMTP id m73mr11120345qki.13.1455405068684;
        Sat, 13 Feb 2016 15:11:08 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id b201sm8208656qhb.48.2016.02.13.15.11.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:11:08 -0800 (PST)
Date: Sat, 13 Feb 2016 23:10:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Eliminate extraneous braces
Message-ID: <20160214041029.GA25367@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Get rid of extraneous braces enclosing single statement blocks.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_debugfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index c5c8cc9..8e7186b 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -98,9 +98,8 @@ static ssize_t wilc_debug_region_write(struct file *filp, const char __user *buf
 	if (count > sizeof(buffer))
 		return -EINVAL;
 
-	if (copy_from_user(buffer, buf, count)) {
+	if (copy_from_user(buffer, buf, count))
 		return -EFAULT;
-	}
 
 	flag = buffer[0] - '0';
 
-- 
2.5.0


