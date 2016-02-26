X-GM-THRID: 6255537432818614272
X-Received: by 10.66.101.4 with SMTP id fc4mr408063pab.48.1456480806170;
        Fri, 26 Feb 2016 02:00:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.168 with SMTP id ub8ls463088obb.46.gmail; Fri, 26 Feb
 2016 02:00:05 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr448234obb.24.1456480805867;
        Fri, 26 Feb 2016 02:00:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si1778416pab.1.2016.02.26.02.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so186457pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XMVHiLYfNsdkw9r2yVq0SBpNryhUE2ZnhFU60WaJLz8=;
        b=ebBQSQh2jJeUcoprnscY7W1uBBiz9gs98OI0wqANtBIMQD7amzNva2KuxIQgavbsRs
         vLzp4tLIzO4MFvP2G45bsE+cP+yMP9q4okknNfA7COYgazwUJf8fPZ2eQK/hEDyw/1RZ
         OmfvgSdmXnPknIcflSFmE+SJI0Ldtlt+hyqQTE+0an0tpNYBrpdm3Cc8sOGN0xhqILUc
         dPgJq+GddHxthJelw5f5QaMp0GJ+laPTpg5StcZO/xaHB7wOcWbqrCNr7NZrusuN51CB
         67yAU6rdD5kWt4q1XWh5twZKYzj2TCJSFR4Rwzhc3Ml7HmMLZbqKX7qeBOoAKBM7YUqK
         suZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XMVHiLYfNsdkw9r2yVq0SBpNryhUE2ZnhFU60WaJLz8=;
        b=iOEMqF0DlwlO2aBNKlQ41O0Xa7ddfsB9/OMyW3G0EBA0NHg3UzSIztccTbRpQfR2jA
         MW5Faf/5Ydv+U1XyUh9TivxYQLZNDzxU4/cBnuDEjYmD1Ambhpxw8JkrhSJQMSHBSidL
         vfuzouON8fRVju/P7/ioSQePBKDP3ctfFnrUHWcMxEuXuR/sGCwke4ZpPz0QFZlUqC1C
         s5SvjxjU3HDRsWcxaTG1WDtlwQqE4PNUal7TCJMMIq2KF3qE9SnzBOyLMCS8oul/6fCr
         mLD+28+QHnv+5TSTgOGbDwlgvzlyGuUKAcrNxTPfws9JY84GDxWqa9/PG6uxrmpSouw/
         Xx6A==
X-Gm-Message-State: AD7BkJL3vAx/RDFaqynCfvYNRLtmqHD8mFAidO+86cyubG7jPETspdVpj1ycgftTVlFKeQ==
X-Received: by 10.98.87.80 with SMTP id l77mr790775pfb.101.1456480805690;
        Fri, 26 Feb 2016 02:00:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ml5sm18144798pab.2.2016.02.26.02.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:00:05 -0800 (PST)
Date: Fri, 26 Feb 2016 15:30:41 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lnet: Use list_for_each_entry
Message-ID: <20160226100041.GA11042@Karyakshetra>
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
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *temp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, temp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject.

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index efb7169..8c1d50a7 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -2354,13 +2354,12 @@ static inline void
 ksocknal_flush_stale_txs(ksock_peer_t *peer)
 {
 	ksock_tx_t *tx;
+	ksock_tx_t *temp;
 	LIST_HEAD(stale_txs);

 	write_lock_bh(&ksocknal_data.ksnd_global_lock);

-	while (!list_empty(&peer->ksnp_tx_queue)) {
-		tx = list_entry(peer->ksnp_tx_queue.next, ksock_tx_t, tx_list);
-
+	list_for_each_entry_safe(tx, temp, &peer->ksnp_tx_queue, tx_list) {
 		if (!cfs_time_aftereq(cfs_time_current(),
 				      tx->tx_deadline))
 			break;
--
2.1.4


