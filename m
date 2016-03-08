X-GM-THRID: 6259688797986881536
X-Received: by 10.182.16.199 with SMTP id i7mr18575610obd.44.1457447371901;
        Tue, 08 Mar 2016 06:29:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls374411qgn.3.gmail; Tue, 08 Mar
 2016 06:29:31 -0800 (PST)
X-Received: by 10.140.99.106 with SMTP id p97mr21231973qge.13.1457447371421;
        Tue, 08 Mar 2016 06:29:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id yd9si505758pab.1.2016.03.08.06.29.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:29:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fy10so13764649pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TS4U8eKvl38KVXX8/kavJlv21B5tHqW/jd3RBjsk4Eg=;
        b=ltbq7t7OdTnwnju5MDXBvgic0bUK+YThiRb6Lqq7/XEY7be0G27ywgF//7oYsEpFJw
         m7ZQr8x3Ex3nc1+pbTld7qAsSHNS0q8/BTmimhiuogiv+QGw2gLx5Myjh4DniJRgUuOL
         PpoOYe+xqOr3hp3phZO+uwbotP+W/rmTPer4m/sogyJNJ+w/ZEUrhWZIMbynmreA1nec
         l2CMV4y77TJLESNE9MtDCmrEohFzdJ46gN4jwpAfT6fgYKsv1PPvaxPFgpgvqVK4yi/s
         ghZjegMBcGcCi5q4Z1Sf3bY/v+nZDPn9mWlf3R8nlikm8/9igsfzCWnGcwgb3oofNLoT
         dlwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TS4U8eKvl38KVXX8/kavJlv21B5tHqW/jd3RBjsk4Eg=;
        b=VL9yGqAKV5Q1KOcxCVusCIdK6wN5eSnloEe5tv3t8mAzrsWvsTLtd6hSF4JRy9txM0
         X6ouxjkFqMctkS0JvS+3GLQiL22vJZ+iyM1yRFDLldOJA86CIgdQqV7LflmDaC6q5TLL
         Nv9uTrh1KLXY6x0oEqg6F2Z8rwjvEGZ6rDJnC9QDRkDTtO2+0uuVzfaa4dovegaTwW7s
         zQkYmPWfbVuN/MMdWPaIkScLtNuz/1IsVWNfhLe48NMldQU92FxUY36jMkAQsaWNqVkP
         1jQbnfRufiQ2TmBzEhXgD0uGXZ9TUupCSJ+MouEkgqMhCYQIJbguBPzaeSDECcnzc7fS
         8EIA==
X-Gm-Message-State: AD7BkJLlv03dxK9qKlDDv5zwQYefOuBOj6iO6v6JrlyTKHqZpQ2j9rmKpWCFlN9K3xiK1Q==
X-Received: by 10.66.190.131 with SMTP id gq3mr41644391pac.42.1457447371246;
        Tue, 08 Mar 2016 06:29:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r65sm5525275pfa.27.2016.03.08.06.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:29:25 -0800 (PST)
Date: Tue, 8 Mar 2016 19:47:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: router:  Use list_for_each_entry_safe
Message-ID: <20160308141713.GA30447@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 6a44601..61459cf 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -1352,6 +1352,7 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
 	int npages = rbp->rbp_npages;
 	struct list_head tmp;
 	lnet_rtrbuf_t *rb;
+	lnet_rtrbuf_t *temp;

 	if (!rbp->rbp_nbuffers) /* not initialized or already freed */
 		return;
@@ -1368,8 +1369,7 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
 	lnet_net_unlock(cpt);

 	/* Free buffers on the free list. */
-	while (!list_empty(&tmp)) {
-		rb = list_entry(tmp.next, lnet_rtrbuf_t, rb_list);
+	list_for_each_entry_safe(rb, temp, &tmp, rb_list) {
 		list_del(&rb->rb_list);
 		lnet_destroy_rtrbuf(rb, npages);
 	}
--
2.1.4


