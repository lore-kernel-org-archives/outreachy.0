X-GM-THRID: 6202253196489916416
X-Received: by 10.112.198.33 with SMTP id iz1mr5527817lbc.8.1444074603284;
        Mon, 05 Oct 2015 12:50:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.200 with SMTP id hu8ls906379wib.0.gmail; Mon, 05 Oct
 2015 12:50:02 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr2529667wib.1.1444074602847;
        Mon, 05 Oct 2015 12:50:02 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id h2si55962wiy.0.2015.10.05.12.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=haticeerturk27@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so129647229wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=kCB0+NQiP0SZ7nE0pM17m5Y5bzzwvDEIpywpglkER48=;
        b=TGqaxjo9PvyJc2Ey8AcY1GUTDGTW5uqrtEBQgjxCqi+FHO/bcgi5tB7VnxcE4MVECK
         +0+yx5WgcSTJHCoDWh1RNhDny1lQKcnxfjTWIJm2lOhtNisqU0VnQPjaRgnz5omk+V11
         qbNO+nRt9EKmQzMBSmyFcAV1CHMc32QuB+PLeDwISfQlC4PKKMHu7xkfDmxI84sOz92/
         eH52C4WZAGPC4a2fdrZpDC3+Nf9O1f5+0ULu4wmBLPDeyo7/tWiHZ9Kdtpqy91OIITCN
         v4DA7/OjfEVJIHLDkm9nYMEXwcO5MNI9azI0unGxd8NSwK250j+wOZN8ZlzbsmGw9LaG
         C9WQ==
X-Received: by 10.194.117.39 with SMTP id kb7mr30932892wjb.129.1444074602753;
        Mon, 05 Oct 2015 12:50:02 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([88.242.105.163])
        by smtp.googlemail.com with ESMTPSA id ex17sm16264513wid.23.2015.10.05.12.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 12:50:02 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lnet: klnds: socklnd:  removed trailing whitespace
Date: Mon,  5 Oct 2015 22:49:36 +0300
Message-Id: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Removed all trailing whitespace in
"staging/lustre/lnet/klnds/socklnd/socklnd.c"

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index d5268e9..2a06f53 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -228,7 +228,7 @@ ksocknal_unlink_peer_locked(ksock_peer_t *peer)
 		ip = peer->ksnp_passive_ips[i];
 
 		iface = ksocknal_ip2iface(peer->ksnp_ni, ip);
-		/* 
+		/*
 		 * All IPs in peer->ksnp_passive_ips[] come from the
 		 * interface list, therefore the call must succeed.
 		 */
@@ -362,7 +362,7 @@ ksocknal_associate_route_conn_locked(ksock_route_t *route, ksock_conn_t *conn)
 	route->ksnr_connected |= (1<<type);
 	route->ksnr_conn_count++;
 
-	/* 
+	/*
 	 * Successful connection => further attempts can
 	 * proceed immediately
 	 */
@@ -444,7 +444,7 @@ ksocknal_del_route_locked(ksock_route_t *route)
 
 	if (list_empty(&peer->ksnp_routes) &&
 	    list_empty(&peer->ksnp_conns)) {
-		/* 
+		/*
 		 * I've just removed the last route to a peer with no active
 		 * connections
 		 */
@@ -547,7 +547,7 @@ ksocknal_del_peer_locked(ksock_peer_t *peer, __u32 ip)
 	}
 
 	if (nshared == 0) {
-		/* 
+		/*
 		 * remove everything else if there are no explicit entries
 		 * left
 		 */
@@ -702,7 +702,7 @@ ksocknal_local_ipvec(lnet_ni_t *ni, __u32 *ipaddrs)
 	nip = net->ksnn_ninterfaces;
 	LASSERT(nip <= LNET_MAX_INTERFACES);
 
-	/* 
+	/*
 	 * Only offer interfaces for additional connections if I have
 	 * more than one.
 	 */
@@ -769,7 +769,7 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
 	int best_netmatch;
 	int best_npeers;
 
-	/* 
+	/*
 	 * CAVEAT EMPTOR: We do all our interface matching with an
 	 * exclusive hold of global lock at IRQ priority.  We're only
 	 * expecting to be dealing with small numbers of interfaces, so the
-- 
1.9.1


