X-GM-THRID: 6402540449537458176
X-Received: by 10.36.70.78 with SMTP id j75mr4114287itb.34.1490707613827;
        Tue, 28 Mar 2017 06:26:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.14 with SMTP id 14ls4726283iou.2.gmail; Tue, 28 Mar
 2017 06:26:52 -0700 (PDT)
X-Received: by 10.107.142.85 with SMTP id q82mr8336642iod.34.1490707612873;
        Tue, 28 Mar 2017 06:26:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si696192pfx.8.2017.03.28.06.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 06:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so21355706pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 06:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KrPG6p22457VEXMDUeBAhWh87XoebkMBo6wEdWHNItM=;
        b=sHV5Z88JaPhHpMlOTxrOua8zIRDZe73p8uyALBmCvkXJ20KejOtZ5VhHAq429XR1+8
         xMmClXVv5dlWT2hdQwaXZGPWuye33t4ObVtDcEwVqLjuo4ulmYa6yAPMsLPr6rpINewH
         55Hnwo3tjujLwl7GnIoYXYK4xi7MjazMhKfhIdVZMujeK1YnUXf6wzqqBgFSEmgGu8Ud
         gCfUjZNyTDYeTpywR1jh3LmEpPr/1urkfC/V5bUSSxsUlINJ5J2zBdn1VccFhFONNH7H
         gXj16vp21e17f052gAxElvE1c5BBuKWHgceVOprxc9iqhtPi7KsA3NrXXJcyMqq4Ri/z
         BVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KrPG6p22457VEXMDUeBAhWh87XoebkMBo6wEdWHNItM=;
        b=PwaxTR/CMw2UipSICAUbW5zEd+X/4u77XWeXeLcq9AwKJIdbs0U2rQmke+Sh0zRe0k
         3gRyKhjYmABiXzylzJeiQrtybHfB0Aou15o7QhOx8VaYL+/3hdfRU0jKxl9Gz7KnF8RX
         ItmilBgEbiSjw4+w+a6NnU5z5JyupvdvhR4s/wjtxtjA119UAlwcuMVNXgYi5CxgaA53
         HLkzmBV7giin9XldP8QbBTV1ckv2dv/+OHHibOEOwv8zva54WztsfurJCrNnHzY93AeG
         zxGKT9gBN0qeSJb0rmPUlRXljRfU2Bwz/7df8YAhr3uBq4HiirnrghAnSQwlkn21O/Ck
         FgrA==
X-Gm-Message-State: AFeK/H0IPenHqsIx0SFnd15xE+D43XfTw3Tab9DXjIfxDClpERTUKv1VuzQiOulrLQZTHw==
X-Received: by 10.99.140.27 with SMTP id m27mr31076853pgd.174.1490707612476;
        Tue, 28 Mar 2017 06:26:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l9sm7647485pfi.97.2017.03.28.06.26.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 06:26:51 -0700 (PDT)
Date: Tue, 28 Mar 2017 18:56:48 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: wensong@linux-vs.org
Cc: Simon Horman <horms@verge.net.au>, Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netdev@vger.kernel.org, lvs-devel@vger.kernel.org,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilters: Remove unnecessary parenthesis
Message-ID: <20170328132648.GA6644@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Rmoved parentheses on the right hand side of assignment, as they are
not required. The following coccinelle script was used to fix this
issue:

@@
local idexpression id;
expression e;
@@

id =
-(
e
-)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/ipvs/ip_vs_proto_tcp.c   | 2 +-
 net/netfilter/nf_conntrack_proto_tcp.c | 2 +-
 net/netfilter/nft_fib.c                | 2 +-
 net/netfilter/nft_set_bitmap.c         | 2 +-
 net/netfilter/x_tables.c               | 2 +-
 net/netfilter/xt_socket.c              | 8 ++++----
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_proto_tcp.c b/net/netfilter/ipvs/ip_vs_proto_tcp.c
index 5117bcb7d2f0..9f2abda017c4 100644
--- a/net/netfilter/ipvs/ip_vs_proto_tcp.c
+++ b/net/netfilter/ipvs/ip_vs_proto_tcp.c
@@ -487,7 +487,7 @@ static struct tcp_states_t tcp_states_dos [] = {
 
 static void tcp_timeout_change(struct ip_vs_proto_data *pd, int flags)
 {
-	int on = (flags & 1);		/* secure_tcp */
+	int on = flags & 1;		/* secure_tcp */
 
 	/*
 	** FIXME: change secure_tcp to independent sysctl var
diff --git a/net/netfilter/nf_conntrack_proto_tcp.c b/net/netfilter/nf_conntrack_proto_tcp.c
index b122e9dacfed..2e5e4a4d4778 100644
--- a/net/netfilter/nf_conntrack_proto_tcp.c
+++ b/net/netfilter/nf_conntrack_proto_tcp.c
@@ -789,7 +789,7 @@ static int tcp_error(struct net *net, struct nf_conn *tmpl,
 	}
 
 	/* Check TCP flags. */
-	tcpflags = (tcp_flag_byte(th) & ~(TCPHDR_ECE|TCPHDR_CWR|TCPHDR_PSH));
+	tcpflags = tcp_flag_byte(th) & ~(TCPHDR_ECE|TCPHDR_CWR|TCPHDR_PSH);
 	if (!tcp_valid_flags[tcpflags]) {
 		if (LOG_INVALID(net, IPPROTO_TCP))
 			nf_log_packet(net, pf, 0, skb, NULL, NULL, NULL,
diff --git a/net/netfilter/nft_fib.c b/net/netfilter/nft_fib.c
index 29a4906adc27..c907c27b0374 100644
--- a/net/netfilter/nft_fib.c
+++ b/net/netfilter/nft_fib.c
@@ -35,7 +35,7 @@ int nft_fib_validate(const struct nft_ctx *ctx, const struct nft_expr *expr,
 	switch (priv->result) {
 	case NFT_FIB_RESULT_OIF: /* fallthrough */
 	case NFT_FIB_RESULT_OIFNAME:
-		hooks = (1 << NF_INET_PRE_ROUTING);
+		hooks = 1 << NF_INET_PRE_ROUTING;
 		break;
 	case NFT_FIB_RESULT_ADDRTYPE:
 		if (priv->flags & NFTA_FIB_F_IIF)
diff --git a/net/netfilter/nft_set_bitmap.c b/net/netfilter/nft_set_bitmap.c
index 152d226552c1..09867146539e 100644
--- a/net/netfilter/nft_set_bitmap.c
+++ b/net/netfilter/nft_set_bitmap.c
@@ -47,7 +47,7 @@ struct nft_bitmap {
 
 static inline void nft_bitmap_location(u32 key, u32 *idx, u32 *off)
 {
-	u32 k = (key << 1);
+	u32 k = key << 1;
 
 	*idx = k / BITS_PER_BYTE;
 	*off = k % BITS_PER_BYTE;
diff --git a/net/netfilter/x_tables.c b/net/netfilter/x_tables.c
index 14857afc9937..7a4a9beadedb 100644
--- a/net/netfilter/x_tables.c
+++ b/net/netfilter/x_tables.c
@@ -506,7 +506,7 @@ static int xt_check_entry_match(const char *match, const char *target,
 			return -EINVAL;
 
 		length -= pos->u.match_size;
-		pos = ((void *)((char *)(pos) + (pos)->u.match_size));
+		pos = (void *)((char *)(pos) + (pos)->u.match_size);
 	} while (length > 0);
 
 	return 0;
diff --git a/net/netfilter/xt_socket.c b/net/netfilter/xt_socket.c
index 770bbec878f1..bf86e12808bd 100644
--- a/net/netfilter/xt_socket.c
+++ b/net/netfilter/xt_socket.c
@@ -65,9 +65,9 @@ socket_match(const struct sk_buff *skb, struct xt_action_param *par,
 		/* Ignore sockets listening on INADDR_ANY,
 		 * unless XT_SOCKET_NOWILDCARD is set
 		 */
-		wildcard = (!(info->flags & XT_SOCKET_NOWILDCARD) &&
+		wildcard = !(info->flags & XT_SOCKET_NOWILDCARD) &&
 			    sk_fullsock(sk) &&
-			    inet_sk(sk)->inet_rcv_saddr == 0);
+			    inet_sk(sk)->inet_rcv_saddr == 0;
 
 		/* Ignore non-transparent sockets,
 		 * if XT_SOCKET_TRANSPARENT is used
@@ -122,9 +122,9 @@ socket_mt6_v1_v2_v3(const struct sk_buff *skb, struct xt_action_param *par)
 		/* Ignore sockets listening on INADDR_ANY
 		 * unless XT_SOCKET_NOWILDCARD is set
 		 */
-		wildcard = (!(info->flags & XT_SOCKET_NOWILDCARD) &&
+		wildcard = !(info->flags & XT_SOCKET_NOWILDCARD) &&
 			    sk_fullsock(sk) &&
-			    ipv6_addr_any(&sk->sk_v6_rcv_saddr));
+			    ipv6_addr_any(&sk->sk_v6_rcv_saddr);
 
 		/* Ignore non-transparent sockets,
 		 * if XT_SOCKET_TRANSPARENT is used
-- 
2.11.0


