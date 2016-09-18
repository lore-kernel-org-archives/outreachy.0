X-GM-THRID: 6331640360325873664
X-Received: by 10.13.199.65 with SMTP id j62mr2719022ywd.130.1474200218287;
        Sun, 18 Sep 2016 05:03:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls8400666otj.7.gmail; Sun, 18 Sep
 2016 05:03:38 -0700 (PDT)
X-Received: by 10.31.63.130 with SMTP id m124mr2550220vka.37.1474200217985;
        Sun, 18 Sep 2016 05:03:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id e66si313077pfk.2.2016.09.18.05.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 05:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so2625896pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 05:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CkMeCz9POgCB3Tte+X6k9ik0PJkd00qWhBveygYG/FY=;
        b=jvyqDhGgRnfWsjhRwAzKvOXZWp/8jf2oViNd3KK6E8wWeE2gJezPvGvLrxTt3+fNif
         HBqUNh++9rrqQ13iByoJeF2zxV2CAjOKWglFHKTm2v2njrB28IIfshL9H7cykhLViqvC
         qXPmR8YXA5VPPuTaxs2s1y/o6ob5bp/XFG4hV+Cbe81MndtYK5/zCT/KnvS1Da02cOqw
         PMaueEPsGeHvja/YiqXGU5wwIJ1xjZEo+HLtX5Ran6Vs4YA2sZTeXxvjPzFmfLWemDz5
         EKg2oqgmb7ZP8vHSAFqpKd3g2qISRVtIfKEtChWKYq704ibAHkFJJnSNZFgou7OhBLRF
         Rz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CkMeCz9POgCB3Tte+X6k9ik0PJkd00qWhBveygYG/FY=;
        b=DG1cvc6IcKxiyNGIhBtZhNjmxvHnyXJC4u9uYrdv7yLDP6KZHrHS+XeX2288Ch0nbT
         q6nDDEynGjhyCoj60IGj6bv8u8EGtDv3jGjKMQ0HjVyZRmAn/H/6ws0rL7QnRg7j4VPD
         M59eZ8j5ijBPWylzge7WZvCuN3Ewcs2gpZu476Sbor5aPv5jYlpDejyUCelPAMmtRrOi
         ShWiGRlUDUGkC7Bg88voH/fXvuV4zI/nt59VS6D3SdHO3TpfF0X2dZuc6+l+oGZig22S
         SfQiZSz9cLDPHzOigflBJNt3JY/g3vYCUDxrjEgBcsa8s5LFVUiwhBRwF7bJqWJBpR1F
         OiOg==
X-Gm-Message-State: AE9vXwOqiYCiURvrVx/65tBJjIMlXe4CZV4xESs5dDSyGjr4QLob1Js547lDo2s4GKJPAA==
X-Received: by 10.66.40.235 with SMTP id a11mr29844173pal.145.1474200217761;
        Sun, 18 Sep 2016 05:03:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id bl6sm24200020pad.6.2016.09.18.05.03.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 05:03:37 -0700 (PDT)
Date: Sun, 18 Sep 2016 06:32:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] Staging: lustre: namei: Remove exceptional & on
 function name.
Message-ID: <b320a274438ddde2626d786089ad117f8cd39631.1474159150.git.bankarsandhya512@gmail.com>
References: <cover.1474159150.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474159150.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

A function name is already a pointer, and does not need &.
This changes are made by below coccinelle script:

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
Changes in v2:
* Correcting the commit message.
* Correcting the file permission issue
 drivers/staging/lustre/lustre/llite/namei.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index b7d448f..aa10e7c 100644
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


