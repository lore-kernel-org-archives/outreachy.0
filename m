X-GM-THRID: 5348584849408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c3a920c892222546
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.96.67 with SMTP id i3mr21210405icn.7.1425200772757;
        Sun, 01 Mar 2015 01:06:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.230 with SMTP id ax6ls686261igc.19.gmail; Sun, 01 Mar
 2015 01:06:12 -0800 (PST)
X-Received: by 10.42.43.199 with SMTP id y7mr22449475ice.9.1425200772599;
        Sun, 01 Mar 2015 01:06:12 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id bo1si1106859pbc.0.2015.03.01.01.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 01:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so31726801pdj.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 01:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OBai/JrMgY4xvZA9COyUM0hmAH+DNSOn7ln6ehUuldY=;
        b=q2wSPZt2oKyuoptHVfXqQMDw8tLEViWHfHsNJkdWe8+RnFvHveefIV4pTqAvL2ghcT
         NzLCGjgPvi6EfWBb/IJpkgeaIp+fQTDfnEbF6s3r+XVLKR0qW7TSRdvoRTBtsIZZCnd/
         Sr/QrsvF7YC+zQzUFgxzvxjHneNhn8Wzfz7CA8qzCikRe8YiiyoH2MyI/YTVtsHrB1mp
         nvkGRnNIxTnrihyNxnTN9PXf6J3aTV0eT4XxVqmzVoA9ji0CA27SeMNCgbS4rtNhZJ4Q
         g0HyerdR50GMaSy/QT7f4HxPSXdHQMXD5bYtn2Xr+TN1KP0Vl+E6YrYHwCFUaLCetVhW
         SLzA==
X-Received: by 10.69.27.15 with SMTP id jc15mr37827805pbd.126.1425200772479;
        Sun, 01 Mar 2015 01:06:12 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id b5sm8622152pdj.88.2015.03.01.01.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 01:06:11 -0800 (PST)
Date: Sun, 1 Mar 2015 14:37:26 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: lustre: Use kstrtol instead of sscanf.
Message-ID: <053f80bb1c0f723a2a9586070e6fbe48ff9511fb.1425200447.git.navyasri.tech@gmail.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Parsing error in sscanf returns a zero, while kstrtol returns
non-zero.This patch changes sscanf into kstrtol by making
appropriate changes in the case of parsing error conditional
check to fix the following checkpatch.pl warning:

WARNING: Prefer kstrto<type> to single variable sscanf

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 26e8626..44d41dd 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -2150,7 +2150,7 @@ int ll_process_config(struct lustre_cfg *lcfg)
 	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
 	if (!ptr || !*(++ptr))
 		return -EINVAL;
-	if (sscanf(ptr, "%lx", &x) != 1)
+	if (kstrtol(ptr, 0, &x))
 		return -EINVAL;
 	sb = (void *)x;
 	/* This better be a real Lustre superblock! */
-- 
1.9.1


