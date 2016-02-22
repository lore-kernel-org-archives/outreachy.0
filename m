X-GM-THRID: 6254007511915954176
X-Received: by 10.182.79.134 with SMTP id j6mr25957797obx.4.1456124594708;
        Sun, 21 Feb 2016 23:03:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls1291017qgc.99.gmail; Sun, 21 Feb
 2016 23:03:12 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr26503487ywg.4.1456124592760;
        Sun, 21 Feb 2016 23:03:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ui7si2999955pab.0.2016.02.21.23.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 23:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id x65so87889565pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 23:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xdQRRTx6ofb341bwIO+eAjN25L+kt1TT6a0S/vouIwU=;
        b=b2TTH5OVkUDARLFhQnqlaBDRf6v5OE4OM/a5lTIA+wE6Sod5JAtw2SnF2zdR9GFgsJ
         +4eja/kp/5XhPLDj82+pOypAbe3og6RAw7b3yGgl7QCAWJLXB9ftntByLutxgTmnT2xp
         jaJJ6uAh9u9FXMKYiy5EJgQwaDdNB2+clMujfEl1IiWWs9w4fFU9ylm4HQsjC05xVczV
         TCIxWr7npa5ir+HmV1xEm4xchbY1Wti20zKoLE3yPIqlUH8dh7HiQ8N6b1JhMdlm+Bu6
         S+vWhr1oFslC7PBygXzYHMkokVnE8CvduKVe4NiUIdtK/fTpNLeZYDQxolP8rH1M+pbv
         Tozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=xdQRRTx6ofb341bwIO+eAjN25L+kt1TT6a0S/vouIwU=;
        b=B9vISUK7WeGDW8MvWLzIwwK0U1uCGYGNpADOHXEa5Ark2z8IhWC7EDMiniDXz6xsXY
         22rxiZqDEp3EfNqGPPvFlcS/aPNdFcBCoSt0ke20iok1u1/6XHp4dT7AE/dNGDtzILKu
         YJc0LTM2IJkg/nysy/qpyjue4pdZRQLn0wJeJrm66vGlgMuKkE9cJtUY05GCqLALkh5x
         BC0eXZXA7iZuTrJY/ebwvwrBTOm9mk7exm+mcUwp1ONhVnGdeRxRirNpacjAsCuHSLsz
         Dy+CNRx3qYNFU6sqCU/XKQ0iulbQHxVu55d7dDDsuQ4S2Hlt7jyQtyRtl12S1CX2nQt2
         zZLg==
X-Gm-Message-State: AG10YOQvaViXdYrEFJo4mW2Sz+lFjTrTMCm6GktO59qzzqrZO3pB+C8kWMJC8NRCgaAGxg==
X-Received: by 10.98.7.219 with SMTP id 88mr35984358pfh.49.1456124592576;
        Sun, 21 Feb 2016 23:03:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id to9sm34338989pab.3.2016.02.21.23.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 23:03:12 -0800 (PST)
Date: Mon, 22 Feb 2016 12:33:45 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: lnet: Use list_for_each_entry
Message-ID: <20160222070345.GA10232@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

In general, doubly linked lists are iterated  using list_empty
and list_entry functions. But it can be better written using
list_for_each_entry macro.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry and list_for_each_entry_safe(if list_del is
used int the loop).

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0)
+ list_for_each_entry (I1, &E1, I2)
{
	...when != T *I1;
-	I1 = list_entry(E1.next, T, I2);
	...when != list_del(...);
	when != list_del_init(...);
}

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@
T *I1;
+  T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
	...when != T *I1;
	-	I1 = list_entry(E1.next, T, I2);
	...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index efb7169..976fd78 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -2354,13 +2354,12 @@ static inline void
 ksocknal_flush_stale_txs(ksock_peer_t *peer)
 {
 	ksock_tx_t *tx;
+	ksock_tx_t *tmp;
 	LIST_HEAD(stale_txs);

 	write_lock_bh(&ksocknal_data.ksnd_global_lock);

-	while (!list_empty(&peer->ksnp_tx_queue)) {
-		tx = list_entry(peer->ksnp_tx_queue.next, ksock_tx_t, tx_list);
-
+	list_for_each_entry_safe(tx, tmp, &peer->ksnp_tx_queue, tx_list) {
 		if (!cfs_time_aftereq(cfs_time_current(),
 				      tx->tx_deadline))
 			break;
--
2.1.4


