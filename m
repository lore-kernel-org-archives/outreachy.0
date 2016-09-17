X-GM-THRID: 6331355639575478272
X-Received: by 10.98.23.88 with SMTP id 85mr10222145pfx.5.1474133838422;
        Sat, 17 Sep 2016 10:37:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls2375650ioe.45.gmail; Sat, 17 Sep
 2016 10:37:17 -0700 (PDT)
X-Received: by 10.66.221.70 with SMTP id qc6mr2164362pac.17.1474133837315;
        Sat, 17 Sep 2016 10:37:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si3683150pfw.1.2016.09.17.10.37.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 10:37:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so3609371pfy.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 10:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UNViKczcvClJ1Y4LDAijkfzTKIr7+cntUJ3njp0GAP0=;
        b=b7lw+GRjORX1MszwuGXVfra0uolKwQS978J8hCcQECeZcOTfadKnVHcullBYpvKF8t
         JWQoh3+REAS7DiQcujpj2o6/0fjLtXlNk5O5w+jFPjyXK7jPWBQxjsN9lTtTFhlMtRQd
         5aK7ZCkOJkHYhfP0mTJoRRlJDYAGQMtlMNMPv00Dj4qI1hhj+JyRnUhvfSwS6j6Dri5O
         O2B6v6OoSQ3vdgO4QIHoUHjik7KkvvKQ+M6uKLdRrNh9Pt7rRsh5RqyRWNqrg1Uehuht
         HrzPMDUmeaf5CWgM/LIpOPK9LpvCp9PdUT7b4WvpjjnPrfpU1w20CrHbOqjVGfSeLeeN
         W0tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UNViKczcvClJ1Y4LDAijkfzTKIr7+cntUJ3njp0GAP0=;
        b=ejnknPER4rdkVnMw5StEslBCSJEF6hCNmU/Ax/nkbz1LJvuq4d+y81qOeVlX+B+PS8
         AWWHHwesXTjKRpddfdzEZ7FzeKM9OUHFkE1mprZKmgQjrXJ/052BURN1NIGVqmHksJ3i
         Q4gXwBur53nSWqJnFX4Fz5Ai+Frg5wmFUvOinQw+z/4K2AU+eoHsWGLStRBVsTLcMdz7
         SK7TNg7CDRdJci3+nZ9NJfHs9M/YGQ+f89RRJbh0eT/J94NJ0QdN4mn8t9fzKBLdVTXL
         3xxqhvu3v97aU3ce9tGHAk0cMvqIYjh1wUl9fUUCXN0BP02a3Ae28LLex68pAcXsHfJp
         TWrg==
X-Gm-Message-State: AE9vXwPESu/lQ2A1HDxPv51IHEZAwLesbUshr43LfMD9SUBeL60Qe7PiH1od72F+ERkkDg==
X-Received: by 10.98.223.22 with SMTP id u22mr33283321pfg.128.1474133837159;
        Sat, 17 Sep 2016 10:37:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id j1sm8057280pfg.95.2016.09.17.10.37.14
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 10:37:16 -0700 (PDT)
Date: Sat, 17 Sep 2016 12:06:34 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org
Subject: [PATCH 1/2] Staging: lustre: file: Remove exceptional & on function
 name
Message-ID: <285e794ee88fdc0effa3c0c64d8f21fe469d57bd.1474093197.git.bankarsandhya512@gmail.com>
References: <cover.1474093197.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474093197.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

The function names is itself used as pointers without &.
This changes made by below coccinelle script:

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index bfac6dd..4965d15 100755
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -829,7 +829,7 @@ ll_lease_open(struct inode *inode, struct file *file, fmode_t fmode,
 	it.it_flags = fmode | open_flags;
 	it.it_flags |= MDS_OPEN_LOCK | MDS_OPEN_BY_FID | MDS_OPEN_LEASE;
 	rc = md_intent_lock(sbi->ll_md_exp, op_data, &it, &req,
-			    &ll_md_blocking_lease_ast,
+			    ll_md_blocking_lease_ast,
 	/* LDLM_FL_NO_LRU: To not put the lease lock into LRU list, otherwise
 	 * it can be cancelled which may mislead applications that the lease is
 	 * broken;
-- 
1.7.1


