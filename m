X-GM-THRID: 6396125246226694144
X-Received: by 10.129.67.16 with SMTP id q16mr6606635ywa.112.1489721166670;
        Thu, 16 Mar 2017 20:26:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls6968204otd.42.gmail; Thu, 16 Mar
 2017 20:26:06 -0700 (PDT)
X-Received: by 10.129.87.3 with SMTP id l3mr6565546ywb.0.1489721166312;
        Thu, 16 Mar 2017 20:26:06 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1203661pfz.1.2017.03.16.20.26.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 20:26:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so7745785pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 20:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Apvm5gSHp1BCZRYWfutXfF0sPAvokMozLbthNLf2G2w=;
        b=HEX0Y1JtMnzbxJn+rWL1s8gcwyHlyZZJ52LofPJG64IFtQhX9yC95VxuGBtPxi7u0m
         Yjp4+FNQZvU4zSa55iPONcqLfBZtxNMHtZFNCHIlVnxg41Psx2RHY7g5upR6OR95tZhR
         dD0Wzjk+y9GAB0T7TBmX3b/LnhLPC+YLMiUfv0WmHkTSBVA3pBYreVZi4xeZUd6UwHtQ
         w2KU9Rlut8LmpXBo9OrV/ch2OAPEuxdza3mV+9Z7JJPG9Rns88eoJMzIegMQuHwdT3aa
         1AxixfjNgD2auGmslqufGfnohkRtsRVZPvdKxVXHpXpwDpXFtcvOA+kF/+FMCGV+awHW
         9akA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Apvm5gSHp1BCZRYWfutXfF0sPAvokMozLbthNLf2G2w=;
        b=E3H3CyquvkuLCdz+v+MGJAGqnWcdu1roQjccxYTqBlP18p9bc+Aa6w/drY5jB2nVSW
         Hoh0L6xrh7qMI8SmRVdMZkdOtnRVxd59ZOIM1Aj98ygD6J+5831JfYMvcaWyKgPmF1bS
         5Byj3CrdtZ4EdO09Ge8v9pZ9bww3YAdHiw/BEgnz3LMdUvNqh2dnjzQsUiwEGoOf/jZD
         /Lz9UddoQTxxfNI1rqz9hEw0uAZPPuIM/pTjFD44j39sNhBQDaWyMXngwIu8GGa2VYjW
         NnWosL6MOR+xwBbmKVCtmTjeUdx9R2g1E+e6oGHgHyGcd2eEGO1dWee1Dx2MXIOuGOY3
         CM7w==
X-Gm-Message-State: AFeK/H0Jz5bp/RtoUdDiAohvF+2lThhGZL/l8LoOlRQTbMASBRW69mrDwUNd+QrMfSUTLw==
X-Received: by 10.84.129.3 with SMTP id 3mr17094205plb.150.1489721166018;
        Thu, 16 Mar 2017 20:26:06 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([2405:204:2005:cd14:c57b:f0d:39df:5753])
        by smtp.gmail.com with ESMTPSA id q23sm13099684pfg.63.2017.03.16.20.25.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 20:26:05 -0700 (PDT)
Date: Fri, 17 Mar 2017 08:55:51 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: lustre: llite: rw26: Remove unused function
 definition
Message-ID: <20170317032551.GA18296@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unused function definition ll_get_user_pages().
The use of ll_get_user_pages() was replaced with iov_iter_get_pages_alloc()
in commit 91f79c43d1b54d7154b118860d81b39bad07dfff.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Updated changelog to include what function replaced use of ll_get_user_pages()

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


