X-GM-THRID: 6259712613604655104
X-Received: by 10.66.65.168 with SMTP id y8mr178323pas.10.1457726644761;
        Fri, 11 Mar 2016 12:04:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.129.73 with SMTP id nu9ls221175igb.15.gmail; Fri, 11 Mar
 2016 12:04:04 -0800 (PST)
X-Received: by 10.66.146.194 with SMTP id te2mr8321685pab.17.1457726644357;
        Fri, 11 Mar 2016 12:04:04 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id tu5si1258103pab.2.2016.03.11.12.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:04:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so2927304pfn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SVAHsQvjjYhAjys9YZan16DRh5UrUlJ1R4oJgQ8CRZU=;
        b=TeW1OCL8nh9KTIs/JhijLdJHZGbTxtunZW6urFBwvewD3Ws6nzOOLQKvTL6PrXRRpf
         iU8MG/RG53Zp2yHzjFCLtmDr6UO5vcudCvPBGG57SDQHs2Trmj8+y8WY65eM0x5LmHDH
         2W7lXoFQRW8coC/UKz7XJCjLOnbYaP2PnLr2fdyZ1dTTnljuBm9B8KmrcLc+KHlvA+PB
         pHSUlCvz8ZYHtt8aFFq6NKoiCqgbqgC7cuRaS2qRQ0/gEziqEMOCJV5FDC7RnfZ6tsED
         jBrGJVutqIqOvHRo9164h7YewekO7+ZllLJTL3FP8LYPft1q7RA1sSXVHs25V2a+WBsk
         qM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SVAHsQvjjYhAjys9YZan16DRh5UrUlJ1R4oJgQ8CRZU=;
        b=JZ2ZuDvfb0Lz/riqphkIg2zDr1StcBYCZajSWdjrzX1X3MVMrWWEzWeJ1sQbcCikwO
         jZophHhN84NcdYycikaHTnA0m9v6KXhS72dX9sVJb3khY5bKsLDW6d2rYB6R9mnI42e3
         3zag8RRm4bLKg+QEExrdboryeBevz8gz1Amia8hLtxDQYN+R94fd/i91YPJ5peyMOvOS
         PWzHaaB14cGop6F50qG5Kdms96uoZZvl8H060qFHK8qFQMAVo/TIXaUR4vdHXnVx1ACi
         HRbXxju1p0fV1E569mDn0f2jJ1zGakNjzyqGnGXb7CaR8UY7AT+TQmpi20nMiruYRDye
         GNPw==
X-Gm-Message-State: AD7BkJJXDtdPXbA7774qi/jeXcHnSKKAXcgM/F9evcpUUv1kcdX4st12ZgAOoBTg/Ew+mQ==
X-Received: by 10.98.71.92 with SMTP id u89mr10735121pfa.100.1457726644207;
        Fri, 11 Mar 2016 12:04:04 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fn3sm14852729pab.20.2016.03.11.12.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:04:03 -0800 (PST)
Date: Sat, 12 Mar 2016 01:33:46 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 06/13] staging: lustre: lnet: peer: Use
 list_for_each_entry_safe
Message-ID: <20160311200346.GA2972@Karyakshetra>
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

 drivers/staging/lustre/lnet/lnet/peer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/peer.c b/drivers/staging/lustre/lnet/lnet/peer.c
index 19c80c9..b026fee 100644
--- a/drivers/staging/lustre/lnet/lnet/peer.c
+++ b/drivers/staging/lustre/lnet/lnet/peer.c
@@ -177,6 +177,7 @@ lnet_peer_tables_cleanup(lnet_ni_t *ni)
 	struct lnet_peer_table *ptable;
 	struct list_head deathrow;
 	lnet_peer_t *lp;
+	lnet_peer_t *temp;
 	int i;

 	INIT_LIST_HEAD(&deathrow);
@@ -210,8 +211,7 @@ lnet_peer_tables_cleanup(lnet_ni_t *ni)
 		lnet_net_unlock(i);
 	}

-	while (!list_empty(&deathrow)) {
-		lp = list_entry(deathrow.next, lnet_peer_t, lp_hashlist);
+	list_for_each_entry_safe(lp, temp, &deathrow, lp_hashlist) {
 		list_del(&lp->lp_hashlist);
 		LIBCFS_FREE(lp, sizeof(*lp));
 	}
--
2.1.4


