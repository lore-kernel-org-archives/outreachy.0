X-GM-THRID: 6260890053146312704
X-Received: by 10.107.165.213 with SMTP id o204mr8645026ioe.10.1457727060391;
        Fri, 11 Mar 2016 12:11:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.73 with SMTP id qg9ls233408igb.36.gmail; Fri, 11 Mar
 2016 12:11:00 -0800 (PST)
X-Received: by 10.107.184.67 with SMTP id i64mr8580493iof.24.1457727060068;
        Fri, 11 Mar 2016 12:11:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si1603543pab.0.2016.03.11.12.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:11:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so8102473pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EimzABn/hp6d8RPnK8UQ+vwb60uzklmjgTKuaooBjcI=;
        b=fLIiOdLsDGYgI2WrF80naCS3yC4kmvxS2mxKswiy9IHRrv4ap+biTZc4yzu3XNlBjv
         HvYuqkZMfN5acL5nu7Z80FC2GZeEozCeU9faay4WmkDsP1wpaZs8jbOiLM3ApKElQ6f4
         aoIQ34pbTZD3i3TwUEJSty59uO0467l8BRgQtQ5aKWVNTaMGFkEJBXNxd9lBeS+/e+xy
         ij+DC+pQ+lQ0yBGE1PBCUYTZLDa0T3Hjq2nj87oFUhcQGn2eSBMlsuIm+s7DjTb8P0H/
         SZ22dpk+TDxkPKAVxqWoPGgCdzq+nzthklelHjpp+LSTdGhsdJrlPYCSL04Qrq9j2fQA
         QmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EimzABn/hp6d8RPnK8UQ+vwb60uzklmjgTKuaooBjcI=;
        b=bFFPZtOZInLK9i9Yvl3K7L4l7HQSJTgEGoq9eE0W3o01bG/N0/Xt8jxovM2jUQri5C
         o67hTQGAT/Ect5/xmmGjMQrmAGekGkDbROysbAOqGCiEA4VkN9DAvW61CuYzjQxeKTBD
         16MXjiO8Gd6/t33P0C9X33T3iIjxxGqBYrsQaoKfKNE40ub2oUKUqMzRgGWjphxu0715
         apjjVC3/dIf85ypBb91Mj6E5VkmdLaX+V9X0Uu9NxQh8u7xFbqByGUufCwTH4Z2eBBAL
         r3ExPY+8RI+SC8TQ/js5ZP5ty9NnKMWKL/m7OQc4atMDBXNwrEe7wOl/Dikhr5hIQGk4
         GOew==
X-Gm-Message-State: AD7BkJJFWXZSu+2fX3EYmMETmBZLWayEAwqfl5UqPNLixn9SLsovyVi6zLlzYaumW16GPQ==
X-Received: by 10.98.71.147 with SMTP id p19mr10631301pfi.135.1457727059908;
        Fri, 11 Mar 2016 12:10:59 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l13sm14875084pfb.21.2016.03.11.12.10.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:10:59 -0800 (PST)
Date: Sat, 12 Mar 2016 01:40:42 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 12/13] staging: lustre: lnet: socklnd: Use
 list_for_each_entry_safe
Message-ID: <20160311201042.GA3069@Karyakshetra>
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
 -Combined all "Use list_for_each_entry" lustre patches into a patch-set

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index a710541..cca7b2f 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -1556,6 +1556,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 {
 	ksock_peer_t *peer = conn->ksnc_peer;
 	ksock_tx_t *tx;
+	ksock_tx_t *temp;
 	ksock_tx_t *tmp;
 	LIST_HEAD(zlist);

@@ -1581,9 +1582,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)

 	spin_unlock(&peer->ksnp_lock);

-	while (!list_empty(&zlist)) {
-		tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
-
+	list_for_each_entry_safe(tx, temp, &zlist, tx_zc_list) {
 		list_del(&tx->tx_zc_list);
 		ksocknal_tx_decref(tx);
 	}
@@ -2286,13 +2285,13 @@ ksocknal_free_buffers(void)
 	if (!list_empty(&ksocknal_data.ksnd_idle_noop_txs)) {
 		struct list_head zlist;
 		ksock_tx_t *tx;
+		ksock_tx_t *temp;

 		list_add(&zlist, &ksocknal_data.ksnd_idle_noop_txs);
 		list_del_init(&ksocknal_data.ksnd_idle_noop_txs);
 		spin_unlock(&ksocknal_data.ksnd_tx_lock);

-		while (!list_empty(&zlist)) {
-			tx = list_entry(zlist.next, ksock_tx_t, tx_list);
+		list_for_each_entry_safe(tx, temp, &zlist, tx_list) {
 			list_del(&tx->tx_list);
 			LIBCFS_FREE(tx, tx->tx_desc_size);
 		}
--
2.1.4


