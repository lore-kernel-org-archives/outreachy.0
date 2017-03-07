X-GM-THRID: 6394826935620337664
X-Received: by 10.157.40.138 with SMTP id s10mr745441ota.97.1488911671215;
        Tue, 07 Mar 2017 10:34:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.49 with SMTP id o46ls1098283ota.35.gmail; Tue, 07 Mar
 2017 10:34:30 -0800 (PST)
X-Received: by 10.157.12.214 with SMTP id o22mr801290otd.150.1488911670810;
        Tue, 07 Mar 2017 10:34:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si153681pfa.6.2017.03.07.10.34.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:34:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so851924pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Q+Zfl1+H5cBBNLYhdyXTRu2787cKq51V31jC9W9Dd9M=;
        b=reByIfoEDoITqJ8VA82hr+Pdebxhp5kN18W44CgDMbwUMxg9uOj4gex/8jkSHFa2HV
         mye9bNjXSPlzl2B501A/OAR64c5h7b07koDggNsWIz8y6h6vQxcuAqg/0fejNMJJ5RQz
         4TyGvAHV6KhbFA3kQHElhhGnxLaytjn6vwTNRcasIJoK3PoLI7LU3ny1PjDJdVBztKba
         Cc7oXeybfeDnQ0xcIsJCMhqerdFUavYIKd35ALyR7xkUVI5nG+JDrz9Br1dzHVv4Ck22
         y2LE680gTf6P4dOTwWPeZCHMtSOcAZ3g8fFKMKeiutKxnnmd5McgzHn4NWJ1YWWkBsyV
         JodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q+Zfl1+H5cBBNLYhdyXTRu2787cKq51V31jC9W9Dd9M=;
        b=KPtYH5nA9Iw8Hs1GeFeFI8vWzT5uKyE+aP6am6FmFHZOppLwTaKKAFMitAVpa/4qSH
         PLlg5UK4OqLzlO3doSL/NufOqA+1CUaJTFfQn4xCp5s8UU5N9Yaj1XZTphRDIVl1iq9W
         P+xk+PVaZjPF5DTUqCHhsPHQZLScvEjaerK8kVteTyc+MxPX4AgGzQvhIgmrMup6Al8c
         oCWmtRYmY+X8FMp2uaAqlgxCXS4FKWslsAV3mIrFNv1G/CqL84ioovxLmDBl4EwV2ml9
         eqtqhBr/M9/BU3gKRUK43uqCjTSMoeFcnTbFCV2Ewd6tuniTPrf1gxgi7xx3LDB1qCRM
         vxTQ==
X-Gm-Message-State: AMke39nDt8ruNhG8ejpWUHbnVY0I9DdNevqrD7Cm6OvMO4CirFPaej2p35EluJsh3w0QMQ==
X-Received: by 10.99.178.86 with SMTP id t22mr2037427pgo.136.1488911670422;
        Tue, 07 Mar 2017 10:34:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c22sm1205606pgn.43.2017.03.07.10.34.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 10:34:30 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: Remove max_u64 function
Date: Wed,  8 Mar 2017 00:02:05 +0530
Message-Id: <1488911525-9782-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Removed the max_u64 function to find the maximum value of
two unsigned 64 bit numbers to use the linux macro max
instead.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/interval_tree.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
index e134ecd..e106902 100644
--- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
+++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
@@ -101,11 +101,6 @@ static inline int node_equal(struct interval_node *n1, struct interval_node *n2)
 	return extent_equal(&n1->in_extent, &n2->in_extent);
 }
 
-static inline __u64 max_u64(__u64 x, __u64 y)
-{
-	return x > y ? x : y;
-}
-
 static struct interval_node *interval_first(struct interval_node *node)
 {
 	if (!node)
@@ -134,8 +129,8 @@ static void __rotate_change_maxhigh(struct interval_node *node,
 	rotate->in_max_high = node->in_max_high;
 	left_max = node->in_left ? node->in_left->in_max_high : 0;
 	right_max = node->in_right ? node->in_right->in_max_high : 0;
-	node->in_max_high  = max_u64(interval_high(node),
-				     max_u64(left_max, right_max));
+	node->in_max_high  = max(interval_high(node),
+				 max(left_max, right_max));
 }
 
 /* The left rotation "pivots" around the link from node to node->right, and
@@ -394,8 +389,8 @@ static void update_maxhigh(struct interval_node *node,
 	while (node) {
 		left_max = node->in_left ? node->in_left->in_max_high : 0;
 		right_max = node->in_right ? node->in_right->in_max_high : 0;
-		node->in_max_high = max_u64(interval_high(node),
-					    max_u64(left_max, right_max));
+		node->in_max_high = max(interval_high(node),
+					max(left_max, right_max));
 
 		if (node->in_max_high >= old_maxhigh)
 			break;
-- 
2.7.4


