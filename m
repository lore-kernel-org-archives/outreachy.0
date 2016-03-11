X-GM-THRID: 6259688797986881536
X-Received: by 10.140.39.229 with SMTP id v92mr8493795qgv.25.1457726551828;
        Fri, 11 Mar 2016 12:02:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.71 with SMTP id y68ls1406594ioi.81.gmail; Fri, 11 Mar
 2016 12:02:31 -0800 (PST)
X-Received: by 10.107.15.91 with SMTP id x88mr8654779ioi.3.1457726551461;
        Fri, 11 Mar 2016 12:02:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si1495689pfa.2.2016.03.11.12.02.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:02:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so2925188pfn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aYeEBK5KdySkT5uFgKiMYTRTRPvemkYHeSpF2I2yPzs=;
        b=bSi7ncIdQwo/qs3hob7BUfMtAwP+0w637zDjHFQSc2CHcIkHm1eoxtv+quLn9U7i0H
         thrVO26HlFhM6M4LOIcQTCYNZqM+36VjVslfdhurS3i3Eu2/3B7OOGR5oLGvJU0AWOxm
         1cRkN8YnnFprr2pAJDBOyViibnJ/DxXbo6rXFj+D9jijLrNDA7j06HUGXG+cMaTGPXy2
         IZ+AsQKiqBJalZvuVbJipydOwjYG1eLNB6tZbijS5gDpCnBwRfjQY5XywOopYDNDMdAi
         QrwLi1B/kNwEC/ip1uTzn/QRCVyZBn1CEuW08FJx/Ubek1spB5deieb012aDj5rqcA/K
         MN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aYeEBK5KdySkT5uFgKiMYTRTRPvemkYHeSpF2I2yPzs=;
        b=Vre3BGNWV7HjLSBsYHjkqPMIniMLMgo6rs898jg79emYUczrvYCrk0GzFd2iCgDMds
         aO3lIA6deKl4TBLjuABFflHCvoAk9NuVIHgXkmoMmHu+o4Z5Rgnu46s4wDryOPIVrlfY
         Gqs0jLf8WQHxqTqUDjU6dilg1aeKh4aKEuGctT1E1b7cT5/wIk6QmoctG2p4RECq0Y0f
         3CndiDPmm/mS7WmYWHMHavlIS5YfX+G9cpwUkrpoP4uMxnKBd0UqU68xkItdr3aYHruY
         9l4k1CM1wm2OgT6KW/imsMy1dygtivwjCSRi+lj+/q2bV9B6uh3f5m1UwLF2AU6XdvvH
         UMTw==
X-Gm-Message-State: AD7BkJJMzBS0L9nc8j5yRv6NuWak7yNNo2Q3xaX1XimeB/FzhvgZaSVMq1XJ3rfIQ2RSrQ==
X-Received: by 10.98.32.136 with SMTP id m8mr8225830pfj.11.1457726551224;
        Fri, 11 Mar 2016 12:02:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 8sm12418895pfk.69.2016.03.11.12.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:02:30 -0800 (PST)
Date: Sat, 12 Mar 2016 01:32:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 04/13] staging: lustre: lnet: router:  Use
 list_for_each_entry_safe
Message-ID: <20160311200213.GA2939@Karyakshetra>
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
 Changes in v3:
	  -Combined all "Use list_for_each_entry" lustre patches into a
	   patch-set

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


