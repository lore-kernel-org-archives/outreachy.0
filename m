X-GM-THRID: 6256336271497494528
X-Received: by 10.50.20.135 with SMTP id n7mr6145715ige.5.1456666801786;
        Sun, 28 Feb 2016 05:40:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls2165266qgf.46.gmail; Sun, 28 Feb
 2016 05:40:01 -0800 (PST)
X-Received: by 10.140.239.3 with SMTP id k3mr8967785qhc.25.1456666801224;
        Sun, 28 Feb 2016 05:40:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si3029999pab.1.2016.02.28.05.40.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:40:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x65so78511605pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kmkjP/wMvwcMBrTAXQDXFAwwOudIFGZXTyDMIAuB9wU=;
        b=eV7N9aXNc/mxO/OyGaq6wMHvcaWpanNi2fUsNys4pW/NY01/WLxchE1cRc9gDKTk/9
         6/28ZF72O+oR30yhmnsACwNfG6I0u5xIqFbY7d5mlloxV4oRavgc8Z29oJ6fqtvjq8Q9
         GdCB12AGXRDZ5xeqm+PahUFeyP5vc3v7LzeHKP7IqDWWvW5ETR8rRXUBWB+gnTGNYBoL
         Am3IzGeavFuW864qkz1wCgjpPg+Ncxt9qSqqge4c4E3J76pN4eTXCBQ3V+c4lH2WGPVl
         uyXGHxt8kcQ0foR/S5wV10lK5k1ODudLUbSeKjb4x0Gxwdk0BGBVgjtzpUYpNYRO6Zp9
         SQ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kmkjP/wMvwcMBrTAXQDXFAwwOudIFGZXTyDMIAuB9wU=;
        b=NIDv8dC9HhDas/McR5BvWeVyUP/esMD8g2AU5GuCGN//VFKxs2Yu89PDP/JkN8Bug5
         tmAT2NJ+qlzsDqOvxFhtJtdrh64sGXMinqfWFQWtrRTeY18uqtbTHiwvZYlFGeIIIkQK
         ERuq73EvEljcjUAumXV1qn9CljeDbEG/1K0Y7msR4IMqkFYcjcSlS+zezTmzc4tg7GZv
         ZsYP2fdXpnVjfJ0zKiV/CLL0aC1tmAU9KhNtGGzBID58exIh4qSOiGttVge1BjMtMiNs
         um1AWEYPUAZjlUHYF9Kl2Bp/95cVi0csUNP+a/Dj1X5dp2ki0kdshlR4rTJR4/AqKO30
         Wo3Q==
X-Gm-Message-State: AD7BkJJIiGj2201Y3xfd11VdF39f4CglOSaR5Nog84USPawKTU19mM+EGnIzKhiAgIXHcg==
X-Received: by 10.98.42.20 with SMTP id q20mr15676262pfq.146.1456666801035;
        Sun, 28 Feb 2016 05:40:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id lq10sm31556421pab.36.2016.02.28.05.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:40:00 -0800 (PST)
Date: Sun, 28 Feb 2016 19:07:12 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lnet: Use list_for_each_entry_safe
Message-ID: <20160228133712.GA18646@Karyakshetra>
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
 drivers/staging/lustre/lnet/lnet/lib-move.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 7bc3e91..624e53a 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -55,6 +55,7 @@ int
 lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -93,9 +94,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
-
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);
 		LIBCFS_FREE(tp, sizeof(*tp));
 	}
@@ -106,6 +105,7 @@ static int
 fail_peer(lnet_nid_t nid, int outgoing)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -152,8 +152,7 @@ fail_peer(lnet_nid_t nid, int outgoing)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);

 		LIBCFS_FREE(tp, sizeof(*tp));
--
2.1.4


