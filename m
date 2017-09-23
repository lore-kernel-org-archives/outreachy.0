X-GM-THRID: 6468793537189117952
X-Received: by 10.107.53.87 with SMTP id c84mr294860ioa.134.1506133362875;
        Fri, 22 Sep 2017 19:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.198.140 with SMTP id s12ls193027qkl.0.gmail; Fri, 22 Sep
 2017 19:22:42 -0700 (PDT)
X-Received: by 10.200.27.65 with SMTP id p1mr252576qtk.36.1506133362426;
        Fri, 22 Sep 2017 19:22:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506133362; cv=none;
        d=google.com; s=arc-20160816;
        b=El7GgB4r1LCVY4xusBnbEineP8RfcLY/rgnfvLuOZERCyvvF/aWfIaOikWBnfabCv6
         d/i1s7jZ+jZ1K+iqfvAdossjapBVffG4Vid7vF8y/XKKKu96CR3cfp4pKHuPtkGnpSIX
         cY6OHy95co2oXY8jwEaIOMunhShnw3KxDP+JstujNQZaCdADD+KQsZUkR5bnEr0WOElR
         K13MoxlR40OkDQuoZRMHJwnKpX+VJ2cpU3TpJ0PtqFNBLPkZGIT8aj9HfATt5rOVoo1V
         eTxyXzKHkrVsxwlsUXcNvBwxSMxWMpGefC8XbLEvort2upXE+LqYHmX41E4YHlWwgzxG
         8+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=P1ahtFmNzgw9Dhi7WKgYmEzux51GVmIYXYWF/L2Gwbw=;
        b=ma2P4XeH7OjMGa/8gmPbFR1o/Nurn7fJNdZWAmEXOSzcRRQZ1T9qA1fju5gZ8gU31n
         g8UtzSLKzpZ83xAaBANggerlOtWSqnz283dVUmA0VCYWHMFC57cP9OeTZ4YCFkIcp+sB
         Hcn8B0gqJ5VpkVEpUyzNqLYD0H28UjUoDPxxjZ+yenULdVXxotrDdY7/v3MxW8imNpYg
         jyIMp9wJJwJDn/h4JE1sxM0sXUpXiGy48SY4BqMVrV0ROAYGcIF23qty34jmOzyYsrvk
         8s/H4OnhdAdU7itTU5Ybn1+4raZfgfCiGZSSMHKNV/F5Q6pZ8cRYTl5SdSqHH5cP64s6
         4MpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qsQGctGI;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f189si97546pfa.1.2017.09.22.19.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 19:22:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qsQGctGI;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so1591730pgn.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 19:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P1ahtFmNzgw9Dhi7WKgYmEzux51GVmIYXYWF/L2Gwbw=;
        b=qsQGctGIlY+1bWK+mkWEMTUCjhE58vqLEQOBqWLmMnwJKgjPteG+tNxqP9d/UMjq5j
         6uC7f1JUya8iOTIWaYEz3RbWTqte2erPxSJ8Cbly7Cjm5nnpSMW5rsqplw+OPyvZjXFk
         aRPwgdS1u6VRqlIHauuQeyJmcpSIwEL3dboJnjl2wUlJW8Zi3Q0j5T4Ir+Bfw9fpL99c
         I+iH/QAlRXXWGg1PQw2hA/917E8P0yyyJxdB2MU+FtpRZAZiMNdeEuxEZIO5+kuhcsno
         Sh+sAJrU3bzWaCFRWhRc0qgj+JwIbLFwlaifyjKxPZmdbWzaiedhv91FcLjPRHgz6mij
         6PgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P1ahtFmNzgw9Dhi7WKgYmEzux51GVmIYXYWF/L2Gwbw=;
        b=PDCh+nlaWJnubAqoWBakVrdDRWFR5Qk3MfKn8L939X6o1+gkmSoZDTaArF80O+bFSj
         Oce1FpwvJgXU0BYmB0HQn7Bnc+AarB7TIzo+6s7+n+pi1ZFJc2E7i96vFx0YC13FnlT9
         Qci6S4pZbBW+fFUGRjEj5YdLwda4lk2KUgBugbcRFedbevRfD6IEf4yGvqSwo97wCWQt
         q8CedjCS07IfnWrJdhoNUE6cVEGphQCgDzJLOGL2vS7IxTTvtzqv+ibmesEVWaM80hkU
         GPSjM65LqcfOCZpADNgTSOkaGARL9B8YQMVNz62DO4qVx8jDrwvLOAnHkCvbFJiWZH+H
         yr4A==
X-Gm-Message-State: AHPjjUhBRv5T0ydU8ahZL+K4uTM27AO1vRY1bQxvIAmTI90In9yYCRTa
	RdLl2hBzuMcgN/mk/HU2bodXRvHR
X-Google-Smtp-Source: AOwi7QBgzi9uvn2xpezpoN7bHj1LZg+EqX8GAEH29cHlGEStExVso5CSG14zDQ0Cd4xwjcRW09e21A==
X-Received: by 10.84.224.206 with SMTP id k14mr875461pln.317.1506133362009;
        Fri, 22 Sep 2017 19:22:42 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id r12sm1150349pgp.81.2017.09.22.19.22.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 19:22:41 -0700 (PDT)
Date: Fri, 22 Sep 2017 20:22:39 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: lustre: lnet: replace list_for_each with
 list_for_each_entry
Message-ID: <20170923022239.GA10771@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace use of the combination of list_for_each() and list_entry() with
list_for_each_entry() to simplify the code and remove variables that are
used only in list_for_each().
Issue found and corrected using Coccinelle script:

@r@
expression head, member, e;
type T1, T2, T3;
iterator name list_for_each, list_for_each_entry;
identifier pos, var;
@@

-T1 *pos;
...when!=pos

-list_for_each(pos, head)
+list_for_each_entry(var, head, member)
{
...when!=pos
   when!=T3 *var;
-var = list_entry(pos, T2, member);
...when!=pos
}
...when!=pos

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index fbbd8a5..d0ee58d 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -176,12 +176,9 @@ struct ksock_peer *
 ksocknal_find_peer_locked(struct lnet_ni *ni, struct lnet_process_id id)
 {
 	struct list_head *peer_list = ksocknal_nid2peerlist(id.nid);
-	struct list_head *tmp;
 	struct ksock_peer *peer;
 
-	list_for_each(tmp, peer_list) {
-		peer = list_entry(tmp, struct ksock_peer, ksnp_list);
-
+	list_for_each_entry(peer, peer_list, ksnp_list) {
 		LASSERT(!peer->ksnp_closing);
 
 		if (peer->ksnp_ni != ni)
@@ -453,7 +450,6 @@ int
 ksocknal_add_peer(struct lnet_ni *ni, struct lnet_process_id id, __u32 ipaddr,
 		  int port)
 {
-	struct list_head *tmp;
 	struct ksock_peer *peer;
 	struct ksock_peer *peer2;
 	struct ksock_route *route;
@@ -491,9 +487,7 @@ ksocknal_add_peer(struct lnet_ni *ni, struct lnet_process_id id, __u32 ipaddr,
 	}
 
 	route2 = NULL;
-	list_for_each(tmp, &peer->ksnp_routes) {
-		route2 = list_entry(tmp, struct ksock_route, ksnr_list);
-
+	list_for_each_entry(route2, &peer->ksnp_routes, ksnr_list) {
 		if (route2->ksnr_ipaddr == ipaddr)
 			break;
 
@@ -1854,12 +1848,10 @@ ksocknal_query(struct lnet_ni *ni, lnet_nid_t nid, unsigned long *when)
 
 	peer = ksocknal_find_peer_locked(ni, id);
 	if (peer) {
-		struct list_head *tmp;
 		struct ksock_conn *conn;
 		int bufnob;
 
-		list_for_each(tmp, &peer->ksnp_conns) {
-			conn = list_entry(tmp, struct ksock_conn, ksnc_list);
+		list_for_each_entry(conn, &peer->ksnp_conns, ksnc_list) {
 			bufnob = conn->ksnc_sock->sk->sk_wmem_queued;
 
 			if (bufnob < conn->ksnc_tx_bufnob) {
-- 
2.7.4


