X-GM-THRID: 7442367774720
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,48a1a84b73d58837,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.247.17 with SMTP id ma17mr20420590icb.13.1425990478842;
        Tue, 10 Mar 2015 05:27:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.67 with SMTP id j61ls49351qge.67.gmail; Tue, 10 Mar
 2015 05:27:58 -0700 (PDT)
X-Received: by 10.236.203.196 with SMTP id f44mr14346409yho.15.1425990478664;
        Tue, 10 Mar 2015 05:27:58 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pc4si90004pac.0.2015.03.10.05.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so1347996pab.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NVVUAA2HYtYO7gYUjoWKxNku0v4fAkpr3HYC0rCmiAM=;
        b=pkEDT+hv03bpJV6xJU0VQx4w9i5eJggxxJUmpc9ALkaCOFQlO88hIfKHS5C7Vso2wD
         mapyGulqNVfOWHWkRtKzaCx20+NlF3gdGZPf3rYvzfL2mqoEIjsxqRYAYkzxusRV1jck
         mITMc+pMpjZraHD23Gi1jvgaSxG6IkBGejZ1qBmu5Oy+ziCWEUtC99F/IOJ/kXItIn39
         yrGk98zniVITmK4M7V+9RqAE/ZZ3pU8nOI3WTql/0IHNtpLdLfq4RivK/vMsB0xVlM11
         nmM9MnrxKslX/KlfwrEBIFLmo4ZtRBVxiQ2IB8Wc890LzlrUMopD5AtgoCLKrHSKN0cO
         T1VQ==
X-Received: by 10.70.18.68 with SMTP id u4mr31312519pdd.38.1425990477641;
        Tue, 10 Mar 2015 05:27:57 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id n4sm926398pdl.12.2015.03.10.05.27.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:27:56 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:56:12 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Remove space to improve code style.
Message-ID: <20150310122612.GA3046@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space to improve code style and follow kernel
conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dcache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/staging/lustre/lustre/llite/dcache.c
index 3078dd9..fe1fd05 100644
--- a/drivers/staging/lustre/lustre/llite/dcache.c
+++ b/drivers/staging/lustre/lustre/llite/dcache.c
@@ -128,7 +128,7 @@ static int find_cbdata(struct inode *inode)
 	rc = md_find_cbdata(sbi->ll_md_exp, ll_inode2fid(inode),
 			    return_if_equal, NULL);
 	if (rc != 0)
-		 return rc;
+		return rc;
 
 	lsm = ccc_inode_lsm_get(inode);
 	if (lsm == NULL)
-- 
1.9.1


