X-GM-THRID: 6210938115276668928
X-Received: by 10.107.132.77 with SMTP id g74mr1114720iod.10.1446096778600;
        Wed, 28 Oct 2015 22:32:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.38 with SMTP id b35ls224882qgf.96.gmail; Wed, 28 Oct
 2015 22:32:58 -0700 (PDT)
X-Received: by 10.31.148.206 with SMTP id w197mr42694293vkd.9.1446096778038;
        Wed, 28 Oct 2015 22:32:58 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si5386193pac.2.2015.10.28.22.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so30585827pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8F1ucF57UU5dnSFigTStEnb1PQn7RfeCdJ+JA98jkes=;
        b=v7NYJoDWV1oqVNUzHvtChVJRhWPNfuwmcsaj7sk1oNwMzjlLFI76FwUNRAyfxu0Fl1
         Gi+Pah8DGgOtVZzLNAWlTR0Omgnbb1ERVKxvGrJk46htJiHkCchWTmOQeU4lNNFnFnpG
         CeyclnXH8bRdEr1IFQbBXGIbwGhdxudU/92v+vzAQ/Z84OPmP4KGn+wmoltsQBOJLUOc
         syZE56V8pO7MwA0pcp+jvkV3BvpUnypnhaLYqaDEjOE2+OnJ4BUms9tqPeJrJXjPReS+
         B2fieyGO1AJX3s3XdO88S7vTLJr9E1nwU3aIlxqmIvF9sQx+VyntiJwfatz3OmkeKZBS
         /ioQ==
X-Received: by 10.68.165.35 with SMTP id yv3mr38745183pbb.53.1446096777822;
        Wed, 28 Oct 2015 22:32:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ub4sm33124000pac.29.2015.10.28.22.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:32:56 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:02:48 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: lustre: console: Remove irrelevant return
 statement
Message-ID: <add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
References: <cover.1446096468.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446096468.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove return statement from the function lstcon_group_ndlink_move()
as its return type is void.
Fix checkpatch WARNING: void function return statements are not
generally useful

Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 9748a09..b1eceb4 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -318,8 +318,6 @@ lstcon_group_ndlink_move(lstcon_group_t *old,
 	list_add_tail(&ndl->ndl_hlink, &new->grp_ndl_hash[idx]);
 	list_add_tail(&ndl->ndl_link, &new->grp_ndl_list);
 	new->grp_nnode++;
-
-	return;
 }
 
 static void
-- 
2.1.0


