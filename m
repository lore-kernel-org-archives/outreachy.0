X-GM-THRID: 6256042901730492416
X-Received: by 10.182.28.41 with SMTP id y9mr6343304obg.14.1456598495130;
        Sat, 27 Feb 2016 10:41:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.131.131 with SMTP id om3ls174798igb.19.gmail; Sat, 27 Feb
 2016 10:41:34 -0800 (PST)
X-Received: by 10.66.139.162 with SMTP id qz2mr6145837pab.1.1456598494302;
        Sat, 27 Feb 2016 10:41:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si546370pfa.2.2016.02.27.10.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 10:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so4882742pax.3
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 10:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+x+G97GJ9yX1BDQyJdSCJrDict+LYTpDre0nrynRFqc=;
        b=wOLwCISOkp26sR2L0se9obO1+kK8ewp9zqLjDBtSCOGu/6WuM8iTl+TG9riQbK648P
         X8WZmcUvIRD2w4JU7YY6d5PVepox3nuUufU1togzYy+YuwdGETCRHpz5YSWeB0PzBSEj
         LqDmmQKiLRxvPgB1UHrWCodaAf2Ww0FwDHUQ0wmpZeWHDphvISQn2QO9Pl6Wc8yLlLmj
         CRHFyW02DHlw/e/MsHyNI5J0GeJSVctKhJXOcSp9hid9vn3/iT/1xOQID8jwwyckL1ZY
         YLcH0DAVQIqPwfwBRXwKDG0n07c8r3GLNLVYl7gxPHmEZ0zy3GoO1icp87JDofemQOrc
         BA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+x+G97GJ9yX1BDQyJdSCJrDict+LYTpDre0nrynRFqc=;
        b=EbvxzqgsRzXAzF7d+ZjUXy+T2P5Knr/k84G2zWpkk5zXzUnGwQuGPHPNTBtnxtw+QD
         UachNyPLmktufnoi0HoyLaIVl9EcD8XFbv+5uQob693k0cJTQuhsb/s1XK6PtraT3C+z
         zoTnEMtfdKEA6vAl/F6hBbRObeT9RPEWT3t39CpcpjmcGcswaIfmnQrfqIJErwc5bnBd
         wGL0gLSF/JYJFYX88m7ZoFEAuVrcYymbZc6E57FC19zt/ZR31fOsJVD5SD9/BPWKkG27
         Zcf981X6nIBFzdQK0ryXhpE12uX4Rfsu5p+G3mSlOo1r37CvQ0jvJVb3E2J4E4YymUbS
         /j/Q==
X-Gm-Message-State: AD7BkJLeiCZumSd8rIbIRv3KMLPncDUyPwV0jp+MUjFomfyGSGMK6ZVjRT1PS7uOFvhWYg==
X-Received: by 10.66.124.201 with SMTP id mk9mr11065173pab.152.1456598494163;
        Sat, 27 Feb 2016 10:41:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q2sm3955064pfq.88.2016.02.27.10.41.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 10:41:33 -0800 (PST)
Date: Sun, 28 Feb 2016 00:08:46 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: lnet: Use list_for_each_entry_safe
Message-ID: <20160227183845.GA2182@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe macro.
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
	-Changed commit message
	-Changed subject to list_for_each_entry_safe instead of
	 list_for_each_entry

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


