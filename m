X-GM-THRID: 6211825929976545280
X-Received: by 10.66.235.1 with SMTP id ui1mr10678100pac.36.1446303429940;
        Sat, 31 Oct 2015 07:57:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.71 with SMTP id k65ls1628271qgf.99.gmail; Sat, 31 Oct
 2015 07:57:09 -0700 (PDT)
X-Received: by 10.129.38.135 with SMTP id m129mr10680665ywm.49.1446303429492;
        Sat, 31 Oct 2015 07:57:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si1204230pbc.1.2015.10.31.07.57.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so102034202pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=duDIDvruo8YQ6fpR+PiOs2ThhgIyls6yPz5NKDD4/+g=;
        b=eQ+qLA76+M5D6jZeYGhe6UilIHThZyZS430M0wje6iMMF6lLMXzrG3Xjz1TxdKHLRK
         4wAAztC5c+AsLLWSHMaHff6tieB1YGYvIK0i/CfiV/ku+XXna/YbIbHWRB7JugP6Ng/c
         zFpqApoovLslFgPTFwOyFv4x+hlJxDJ0DNmiiOEfNsMVHrUnUt9FFPsXUdkZsgAQ0O8k
         ZBSX4KWASVMP4oMkuewwJ+IFoAKfLVkoirtpEauvgNvnrwVJLDNlDZR7fKg0fzlgCZ8U
         iN0lRAnnOzZJSp7pBEOfd6NsmlCX5Bcl3q9PeszSr/Ym1Ja6iilNesxcbOV6oPagIGQ+
         JhCw==
X-Received: by 10.68.69.15 with SMTP id a15mr15597882pbu.62.1446303429332;
        Sat, 31 Oct 2015 07:57:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id bc2sm14402071pbd.2.2015.10.31.07.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:57:08 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:26:56 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Drop wrapper functions
Message-ID: <20151031145656.GA16212@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the functions node_equal() and node_compare() and replace their
calls with appropriate functions.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/interval_tree.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
index 39b5717..a2ea8e5 100644
--- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
+++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
@@ -96,18 +96,6 @@ static inline int extent_equal(struct interval_node_extent *e1,
 	return (e1->start == e2->start) && (e1->end == e2->end);
 }
 
-static inline int node_compare(struct interval_node *n1,
-			       struct interval_node *n2)
-{
-	return extent_compare(&n1->in_extent, &n2->in_extent);
-}
-
-static inline int node_equal(struct interval_node *n1,
-			     struct interval_node *n2)
-{
-	return extent_equal(&n1->in_extent, &n2->in_extent);
-}
-
 static inline __u64 max_u64(__u64 x, __u64 y)
 {
 	return x > y ? x : y;
@@ -278,14 +266,14 @@ struct interval_node *interval_insert(struct interval_node *node,
 	p = root;
 	while (*p) {
 		parent = *p;
-		if (node_equal(parent, node))
+		if (extent_equal(&parent->in_extent, &node->in_extent))
 			return parent;
 
 		/* max_high field must be updated after each iteration */
 		if (parent->in_max_high < interval_high(node))
 			parent->in_max_high = interval_high(node);
 
-		if (node_compare(node, parent) < 0)
+		if (extent_compare(&node->in_extent, &parent->in_extent) < 0)
 			p = &parent->in_left;
 		else
 			p = &parent->in_right;
-- 
2.1.0


