X-GM-THRID: 6331355639575478272
X-Received: by 10.107.154.68 with SMTP id c65mr1766819ioe.57.1474134029317;
        Sat, 17 Sep 2016 10:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.115.7 with SMTP id y7ls1982419itb.16.gmail; Sat, 17 Sep
 2016 10:40:28 -0700 (PDT)
X-Received: by 10.98.78.146 with SMTP id c140mr1743839pfb.19.1474134028940;
        Sat, 17 Sep 2016 10:40:28 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 142si5372857pfx.2.2016.09.17.10.40.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 10:40:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so2095876pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 10:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jTsglo73lJoq3rgFD2fuQJ4G241tUiCvUlMyZ9CmOPc=;
        b=j2Vw2ykuq4kgPn48BmPf+SsZaBJBoqWUpGzZGOvDFtqszJX5NSYk042sj/I/H8vm4X
         7UbyY38mFnZCcsZztTdNZFFDshaILX3aaiSe5DlDnBQsdmAG4RxTO2J4q9CWWkG5ahPn
         haYe/d3LacNpbd8tXmDkSoXl+p7J9gyWPFUwlHp1XGoKeS8qQCmEBbW8ynCVVrKvRlFa
         pqZqU+nCsIIAjRhAsolhD6mwmArntNkPX56ktSBHAFSAGPJoLqQJul+1wJP6+ZedIH0j
         FuR2BaOD+YUNWHfm+kTuhLeQx5E6WeUwbix9AQfuGPjlm1f12hXwZABz1TO+bUJ0R3cl
         FifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jTsglo73lJoq3rgFD2fuQJ4G241tUiCvUlMyZ9CmOPc=;
        b=agfcacf9q5hrZgZ3/Yfa2Z6eKLx7AGOVRICjI/DsnhKN0bDdNU+ZcwsHcHRNK66XFI
         UfnGCqR3coV8rMjJZlzJK3OfQWo/R1ai0ggxCjswLsPYBBsZs4u3WKsxqAyaBU35d5JJ
         V4mAavZ7+MyXMgEMzRnW/yaEvLAB1d9d8mNN7hw2i4WdBqQG8STm4NWFLLADGEUuc3FZ
         K7gkQM6aRYQ9H21kmsLcwp58qhY4SViL3VsDNwSuIzrircDmjCx770o5njXV7rzYZ5WP
         wNUBKqjidgoJPHncIu5mVEWBJPl0PvLxxNQBfoCmk7bZUChqpFBfEj2PIqjgRo0Qg45N
         MK/A==
X-Gm-Message-State: AE9vXwNiXMdVpZ6ZbdcQGd+E2YFi2Rd89G7hQCYp+kh4PuoC2lvuDt3+qDnKnufrG3GXug==
X-Received: by 10.98.138.207 with SMTP id o76mr33598237pfk.100.1474134028768;
        Sat, 17 Sep 2016 10:40:28 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id b7sm60465911pfg.87.2016.09.17.10.40.26
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 10:40:28 -0700 (PDT)
Date: Sat, 17 Sep 2016 12:09:46 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: lustre: namei: Remove exceptional & on function
 name
Message-ID: <a3cc0b4ea1581aa6c4e6de29128d668b7fc55af3.1474093197.git.bankarsandhya512@gmail.com>
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
 drivers/staging/lustre/lustre/llite/namei.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index b7d448f..aa10e7c 100755
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -551,7 +551,7 @@ static struct dentry *ll_lookup_it(struct inode *parent, struct dentry *dentry,
 		it->it_create_mode &= ~current_umask();
 
 	rc = md_intent_lock(ll_i2mdexp(parent), op_data, it, &req,
-			    &ll_md_blocking_ast, 0);
+			    ll_md_blocking_ast, 0);
 	ll_finish_md_op_data(op_data);
 	if (rc < 0) {
 		retval = ERR_PTR(rc);
-- 
1.7.1


