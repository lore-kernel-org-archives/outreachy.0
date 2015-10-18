X-GM-THRID: 6207061175018979328
X-Received: by 10.182.120.3 with SMTP id ky3mr22274942obb.6.1445194048558;
        Sun, 18 Oct 2015 11:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.231 with SMTP id h7ls1023129obf.64.gmail; Sun, 18 Oct
 2015 11:47:28 -0700 (PDT)
X-Received: by 10.182.245.163 with SMTP id xp3mr3263322obc.45.1445194048082;
        Sun, 18 Oct 2015 11:47:28 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si2969489pbb.0.2015.10.18.11.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 11:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so71105032pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 11:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2DnnT7pSVB1bPq22a87UfPJWVHA5JWqnTuxrHw+5XLQ=;
        b=W0TRO5T/hKFo0LlxqIG95Dzm1BEgZzlKwSvlZzaHFzMWq3wp3GLbGpotHhIoWDiRnm
         L8k7p8C9T7iwTKURsaY4eg+RzopvDLiVpOOMgSyV2HH4zDKCltStTAXhKx6IJjxHlF1g
         02uA5/kxXkuJ2BSm5zFGfzQf1SJj9LgNDFczoTBKlwSKgMGuqSLNkGJK5+L+AvCaFDII
         QbwiIFqG6ZuJujMxYRONgBFw2oYzBXqpmF4gfkwiBUkNGixfQI5Z7VjSQ+l+pyurrEgs
         SXkUEChdMEheTMF66XYTjsr7bXHA/hPLZKSd4AkUkCAE9SuxQKzIT8ToRl1QNd9jI3PS
         2iSQ==
X-Received: by 10.66.227.230 with SMTP id sd6mr29633787pac.60.1445194047961;
        Sun, 18 Oct 2015 11:47:27 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id u10sm32060946pbs.63.2015.10.18.11.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 11:47:27 -0700 (PDT)
Date: Mon, 19 Oct 2015 00:17:13 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: interval_tree: Remove multiple assignments
Message-ID: <20151018184713.GA33618@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove multiple assignments by factorizing them.
Fix checkpatch CHECK: multiple assignments should be avoided

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/interval_tree.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
index 3d2d85b..39b5717 100644
--- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
+++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
@@ -294,7 +294,8 @@ struct interval_node *interval_insert(struct interval_node *node,
 	/* link node into the tree */
 	node->in_parent = parent;
 	node->in_color = INTERVAL_RED;
-	node->in_left = node->in_right = NULL;
+	node->in_left = NULL;
+	node->in_right = NULL;
 	*p = node;
 
 	interval_insert_color(node, root);
-- 
2.1.0


