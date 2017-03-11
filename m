X-GM-THRID: 6396125246226694144
X-Received: by 10.157.15.4 with SMTP id 4mr8987701ott.12.1489213957022;
        Fri, 10 Mar 2017 22:32:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.74 with SMTP id 68ls5149822otn.3.gmail; Fri, 10 Mar 2017
 22:32:36 -0800 (PST)
X-Received: by 10.13.194.199 with SMTP id e190mr11095461ywd.93.1489213956667;
        Fri, 10 Mar 2017 22:32:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si2153619pfx.8.2017.03.10.22.32.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 22:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so13058066pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 22:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6Yn20OLFGuEbeVPj8dqxkKYmTI7u6fIDxt6Dunf1ktw=;
        b=qKcVtk62NMaVxEM4F7LaEXqmnFfN1ZYeiuv8YKtt+EwCN3bHnULVQO2twGQmQmRSaP
         A+frunH/4Xx5AsIpEVsPOrGgr7jeLRqCqWBFuXYuKmV9zjJfWJn/TdbQBeW981mL7haU
         RscentDEXJTpgdvghsHnyl1zE7lcCN/tbV5Q3WtegK1MtXZHw43pY5zcLEcnjU3FbP0g
         w24zgwbrRWaNvivJkoF9avW/EDAgnBq5AItd2HhlMbWB9vNfPe2roC6qF2XJVq8XppDe
         fQT6c13GoMVEDHIFRwqB87v8ZuZhyWDGzENzKDCui3CKU5S6Rn8bhm0kzxQKzIJm53cH
         4slQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6Yn20OLFGuEbeVPj8dqxkKYmTI7u6fIDxt6Dunf1ktw=;
        b=tTN0pF62tuy2f4kmxZModk/0HsKftjF2vu5P6m2VHy7ildJ2Fq57DdQuVfhFPicZF2
         sR7mfoavB0tknw6UbnIUjeE/xt52VjdG8dC80GvfwJloP21yxmklQoye5SG4HzlKljhh
         i09SQdvw2tM4+wDohPtWTrEC8dQ9q+mgD0Wp3b2pUtsXDcPWgpi8YtbpTLWZL7hf8HVO
         kQwHvePsXJzkrDl+HEzh46Bt4ldqBwdcuLEvkvVAJc3qK+1nmJ32KWmUbJQMx4qv64CR
         v87wPkfZw4mn4FIY+Jh9cIa+R11nY6UWEzfo2vS+gtG4qe+ZHtwbBWYfoTgzotIKFflh
         otXQ==
X-Gm-Message-State: AMke39ly/Wfu1F1R17V7gdOPyT09X4uCKPsiie4fYwKDTkeioszEyPH3t5IF8xw70xB5Pg==
X-Received: by 10.98.7.86 with SMTP id b83mr25446204pfd.66.1489213956347;
        Fri, 10 Mar 2017 22:32:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([42.109.85.92])
        by smtp.gmail.com with ESMTPSA id h9sm21929692pfd.103.2017.03.10.22.32.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 22:32:35 -0800 (PST)
Date: Sat, 11 Mar 2017 12:01:53 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: lustre: llite: rw26: Remove unused function
 definition
Message-ID: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unused function definition ll_get_user_pages().

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/lustre/lustre/llite/rw26.c | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
index d89e795..420f296 100644
--- a/drivers/staging/lustre/lustre/llite/rw26.c
+++ b/drivers/staging/lustre/lustre/llite/rw26.c
@@ -156,32 +156,6 @@ static int ll_releasepage(struct page *vmpage, gfp_t gfp_mask)
 
 #define MAX_DIRECTIO_SIZE (2 * 1024 * 1024 * 1024UL)
 
-static inline int ll_get_user_pages(int rw, unsigned long user_addr,
-				    size_t size, struct page ***pages,
-				    int *max_pages)
-{
-	int result = -ENOMEM;
-
-	/* set an arbitrary limit to prevent arithmetic overflow */
-	if (size > MAX_DIRECTIO_SIZE) {
-		*pages = NULL;
-		return -EFBIG;
-	}
-
-	*max_pages = (user_addr + size + PAGE_SIZE - 1) >> PAGE_SHIFT;
-	*max_pages -= user_addr >> PAGE_SHIFT;
-
-	*pages = libcfs_kvzalloc(*max_pages * sizeof(**pages), GFP_NOFS);
-	if (*pages) {
-		result = get_user_pages_fast(user_addr, *max_pages,
-					     (rw == READ), *pages);
-		if (unlikely(result <= 0))
-			kvfree(*pages);
-	}
-
-	return result;
-}
-
 /*  ll_free_user_pages - tear down page struct array
  *  @pages: array of page struct pointers underlying target buffer
  */
-- 
2.7.4


