X-GM-THRID: 6331740910266613760
X-Received: by 10.129.99.87 with SMTP id x84mr3145609ywb.87.1474223311258;
        Sun, 18 Sep 2016 11:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.68 with SMTP id y65ls2884261ioi.28.gmail; Sun, 18 Sep
 2016 11:28:29 -0700 (PDT)
X-Received: by 10.66.145.72 with SMTP id ss8mr3443059pab.56.1474223309177;
        Sun, 18 Sep 2016 11:28:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id z4si4085432pam.0.2016.09.18.11.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 11:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id my20so2887890pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 11:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M+9+HQlzpncVHefmAOw1I5im+r9XjQsZ5Vx2XUVgB68=;
        b=T2tBZSNumvJfIHChp69JieEFKwkMbUHtjRt+etUkmO4uqbrfUurvCpokZU+YfC9eJt
         82DcJK/qh4Q+98YsUdx8erS2INyrh/ZYvZlrYlncRkxjwffz1XabWrSC6ySBSOYcpYWd
         NxjCFJOjOfVAgyRiG/6tuvTGyqQ+/tflyPwENIrgKBgwYxSwapR/FTdzktMoI1HISf1l
         4T48EM0YO1OsiQxCTBzonVKnGRhGdQPPXo8KdnlcaDpR3HO0pNTxWAjqbxPdJy0ttMwY
         rAA6ENPzdXVfKduMF+djN/0VH/MB9AEUw2xM1V8ewd8uf3ImgIbay8HJjnSF+CBOBXyM
         9Opg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M+9+HQlzpncVHefmAOw1I5im+r9XjQsZ5Vx2XUVgB68=;
        b=Q5feXJWMzjmmxYdjh5MVgAk9X2Gz+3mYOl2EBB7MsYz6/ABsxafr5IybkrAi3mm4c0
         tvS6LjuvPK4sVqqxAphcppO2dsqjwxc9IKofybpTFE+nIFdlPoK47RLmJytG0PjmTkl+
         /8nYasRru7bH1EHRhuo2MX8CHM8Bu5hrUu4N1AZemmFKFU8b00iAxYeqPFlNt7jT7y/Z
         RKDCa+pux20CGrrOnPyQoLLVa7wCFuvZRMdyxnHJWJ/dXbyRAczXjeC5oPud4i5gJ5R7
         RMkJT8SW5JVhMnIzH2NlwIg+yHilyxnZt9H7YgiZa9o8rVwEL+H5Kncaw3D4i2iNobKo
         GVvg==
X-Gm-Message-State: AE9vXwNS1/7grjlduuYeEQl5J80FVCJD3ulccUbV5q21fKaLk8+grbRf2snWWK+FzRrZ3Q==
X-Received: by 10.66.222.202 with SMTP id qo10mr40142481pac.76.1474223309008;
        Sun, 18 Sep 2016 11:28:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id x126sm65801035pfx.61.2016.09.18.11.28.25
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 11:28:28 -0700 (PDT)
Date: Sun, 18 Sep 2016 23:58:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: lustre: Use x instead of x != NULL.
Message-ID: <20160918182821.GA4646@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 1ff788e..b078959 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1701,7 +1701,7 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
 	struct lov_stripe_md *lsm = md->lsm;
 	struct ll_sb_info *sbi = ll_i2sbi(inode);
 
-	LASSERT((lsm != NULL) == ((body->mbo_valid & OBD_MD_FLEASIZE) != 0));
+	LASSERT(lsm == ((body->mbo_valid & OBD_MD_FLEASIZE) != 0));
 	if (lsm) {
 		if (!lli->lli_has_smd &&
 		    !(sbi->ll_flags & LL_SBI_LAYOUT_LOCK))
-- 
1.7.1


