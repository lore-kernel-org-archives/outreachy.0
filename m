X-GM-THRID: 5348584849408
X-Received: by 10.42.60.132 with SMTP id q4mr22011043ich.5.1425200839529;
        Sun, 01 Mar 2015 01:07:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.201 with SMTP id e67ls1274658qgf.61.gmail; Sun, 01 Mar
 2015 01:07:19 -0800 (PST)
X-Received: by 10.236.227.162 with SMTP id d32mr23807619yhq.7.1425200839322;
        Sun, 01 Mar 2015 01:07:19 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id bo1si1107040pbc.0.2015.03.01.01.07.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 01:07:19 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fa1so5487215pad.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 01:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Qj7ztd0ddOUr3NHpf0WqK7zLgv6YQQ/Uqb2gMyPdPSw=;
        b=re4lsJ65FHSnBFUNXDMjA83I8ztYGvcGRUJ+mP7aBb6XyZb3M1NoAB5iuWep/3+CoG
         K8lV8No6fpWQYMaygeUbjwm5h9uhz40O574b3GeoA5YVG5Z1mhtqaG2zFI7mBVxbRyJb
         q1TSF+rJFUqyrzNqtKv1DG+1FZ1NYs/dDvDI0erWgPI0C3J2C3Si6jemTQNIkmEoFdZz
         DfGlr6dpqa00xo7jmT0b0n6hz0OwdX4eU2N1QmHctPk3T91NE6Na+V8SJ3ubP92Pr1cd
         CpFQpVT7YUQlqkN6tcRbDUv/A/coSkPv1arz+m6tN7rGwpki6Z8bczszbQzVnf4jmnth
         ez8g==
X-Received: by 10.66.165.105 with SMTP id yx9mr37455817pab.145.1425200839224;
        Sun, 01 Mar 2015 01:07:19 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id qj3sm8750153pac.31.2015.03.01.01.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 01:07:18 -0800 (PST)
Date: Sun, 1 Mar 2015 14:38:33 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: lustre: Remove whitespace.
Message-ID: <54a6585b45b666d28d6691bcb9d4574bc238d843.1425200447.git.navyasri.tech@gmail.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:

WARNING: unnecessary whitespace before a quoted newline

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index e0e77cc..727327d 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -620,7 +620,7 @@ int ll_get_max_mdsize(struct ll_sb_info *sbi, int *lmmsize)
 	rc = obd_get_info(NULL, sbi->ll_md_exp, sizeof(KEY_MAX_EASIZE),
 			  KEY_MAX_EASIZE, &size, lmmsize, NULL);
 	if (rc)
-		CERROR("Get max mdsize error rc %d \n", rc);
+		CERROR("Get max mdsize error rc %d\n", rc);
 
 	return rc;
 }
-- 
1.9.1


