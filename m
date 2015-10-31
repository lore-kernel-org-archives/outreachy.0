X-GM-THRID: 6211884889777635328
X-Received: by 10.107.164.233 with SMTP id d102mr12651583ioj.13.1446317157461;
        Sat, 31 Oct 2015 11:45:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.83 with SMTP id p77ls1634551qge.86.gmail; Sat, 31 Oct
 2015 11:45:56 -0700 (PDT)
X-Received: by 10.129.95.6 with SMTP id t6mr12580848ywb.7.1446317156907;
        Sat, 31 Oct 2015 11:45:56 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iz5si1115206pbc.2.2015.10.31.11.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 11:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so109586659pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 11:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nyIvCJ/nuCrrqwD7cjZ9LcI08OUy9D5EnU69ELRrNUg=;
        b=0eUMvL58nKQf7Whtd11pW221MNn8GQ4Ssx6XKupS9glXNJ7IDOQiks0YA13jZ4LFE7
         86f3//Ptme9ARta8hI+aO5tugGg9yJdEk4HB/x0Z+ny3pfeSIjAYaBhN8VvdANC12qJK
         Dfu9ZJdLz37UGvHcdss+XeVOkG41VPkcXAQG2LKy3SL6du2PAuxa1Ld3E41O0x2UFXXP
         rWIqpEg8Piu9nZz8rvC9u0KYNORlkqPBiS6XXk8sxlVWm20Ys0NDptJsNq96ldEGMNJH
         T+khKatzV5mTCr7g4u8Sm1DMCQ2x7/mR90Zxl56gjw+AFMKBIz6l2sjaWasqnyKoiYRO
         TICQ==
X-Received: by 10.68.57.235 with SMTP id l11mr16587323pbq.26.1446317156749;
        Sat, 31 Oct 2015 11:45:56 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id cs5sm15149756pbc.15.2015.10.31.11.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 11:45:55 -0700 (PDT)
Date: Sun, 1 Nov 2015 00:15:44 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: interval_tree: Convert inline function to
 macro
Message-ID: <20151031184544.GA27064@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert the function max_u64() to macro because macros tend to be more
flexible than inline functions and here, the macro is going to be type
safe so there are not going to be any side effects.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
index a2ea8e5..52d0afd 100644
--- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
+++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
@@ -42,6 +42,8 @@
 #include "../include/obd_support.h"
 #include "../include/interval_tree.h"
 
+#define max_u64(x, y) ((x > y) ? x : y)
+
 enum {
 	INTERVAL_RED = 0,
 	INTERVAL_BLACK = 1
@@ -96,11 +98,6 @@ static inline int extent_equal(struct interval_node_extent *e1,
 	return (e1->start == e2->start) && (e1->end == e2->end);
 }
 
-static inline __u64 max_u64(__u64 x, __u64 y)
-{
-	return x > y ? x : y;
-}
-
 static struct interval_node *interval_first(struct interval_node *node)
 {
 	if (!node)
-- 
2.1.0


