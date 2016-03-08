X-GM-THRID: 6259686461239459840
X-Received: by 10.140.19.4 with SMTP id 4mr20871725qgg.29.1457446827296;
        Tue, 08 Mar 2016 06:20:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.97 with SMTP id xv1ls176506obc.85.gmail; Tue, 08 Mar
 2016 06:20:26 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr21125719obz.20.1457446826747;
        Tue, 08 Mar 2016 06:20:26 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id tu5si175951pab.2.2016.03.08.06.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id q6so1272490pav.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=u5F2YH4tNZjYbzvzHwcadBpszqA8qHX5FftAbtzRQrY=;
        b=yPNAukMzQORCXt2yEsOIzcATyR08uuIOCabBedfmVFxoTJZaYHIXdCXj6WgCmmQWTL
         GX4tpg1/X2bTyZ56KB0y/MQWeZBq7sfhEt2iEs9iW3uhegAj/s2hlb5EsGzqjse1lIdH
         DZmFadHuIA6n1rVuFGZl54o1/KwBpza9mYwWBNn5gzQWbSxNPXH2wFVzIWosp6l5Xgam
         QE5XS/YXBsW80+hW/vtlch7KDnok8MQkIU2ZM3cpxk2jUshX5CvROup/9IvcJrCUzPDW
         6LuImILl2UbHbRG6bmc2bhsFh4e5S/IggHUA/tlP0hoa3iSRqZqKlAgSNpUiW089C5ZB
         2ECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u5F2YH4tNZjYbzvzHwcadBpszqA8qHX5FftAbtzRQrY=;
        b=CDoLY/UogcueejNiuqGES9fw5d9UGU58kwWbO+P3xdbkoZEVFXtX4nKeF4AuJUkKdq
         oz+XxbFBFcBP4Qk/Bn72fPnOctR1nAMmZhXxBJXFND6ZtRKLcFhLigKrhWEsTLaZk/iM
         pw4ctmM9qv1ex1HKCnxNDodwRCGH6sO9y92He3zCy0MsXnq6bOCqYayGGfRxgB6DDPdH
         eO4s7Bedv160Dwf4x/IBhktHp11QsuoJyAOx8aEf6fbz+A0ZNi6g1nCxjLiPov3arVJP
         wgog7fvVtkZsbYH9pP/xkLtrizkkRYYvlk1IUKt3vfulNZ99BGH8v3YRuJ+DQ3EOeTxQ
         rQzQ==
X-Gm-Message-State: AD7BkJJdHfyz1LrxO+wHS+RgV+TUHTJ9S5ZiL3Ob0gdqzqpM1NX4yMhOuTu28SMn3L8b6w==
X-Received: by 10.66.190.131 with SMTP id gq3mr41573560pac.42.1457446826523;
        Tue, 08 Mar 2016 06:20:26 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 27sm5464195pfo.58.2016.03.08.06.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:20:25 -0800 (PST)
Date: Tue, 8 Mar 2016 19:38:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] taging: lustre: lnet: lib-move: Use
 list_for_each_entry_safe
Message-ID: <20160308140813.GA30117@Karyakshetra>
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
 Changes in v2:
	-Changed subject to avoid conflicts with other patches

 drivers/staging/lustre/lnet/lnet/lib-move.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index b821704..0009a8d 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -50,6 +50,7 @@ int
 lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -88,9 +89,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
-
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);
 		LIBCFS_FREE(tp, sizeof(*tp));
 	}
@@ -101,6 +100,7 @@ static int
 fail_peer(lnet_nid_t nid, int outgoing)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -147,8 +147,7 @@ fail_peer(lnet_nid_t nid, int outgoing)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);

 		LIBCFS_FREE(tp, sizeof(*tp));
--
2.1.4


