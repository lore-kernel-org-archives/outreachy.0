X-GM-THRID: 6402862819430105088
X-Received: by 10.157.14.40 with SMTP id c37mr10749667otc.34.1490782671443;
        Wed, 29 Mar 2017 03:17:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls2263659otc.30.gmail; Wed, 29 Mar
 2017 03:17:51 -0700 (PDT)
X-Received: by 10.157.49.33 with SMTP id e30mr1360607otc.107.1490782671084;
        Wed, 29 Mar 2017 03:17:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1156944pfx.8.2017.03.29.03.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 03:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so1345808pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 03:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ubZAlX7Gn84LApXo0fKbyQ/fhB5KXqZlmMtlvvPgVlk=;
        b=ptJLpNWN7MSUZq0Pq6vh6/c1BoFBq1ivjcq/YFKA/wal9Ce7QzMyie4AVgjJ5Hysy2
         8mfE4bYUxDoIov93rNGocnIucfogIu6AtG4NUpZ6eA5096yiTvelzJ6sQwKoj1qw4YMT
         ufOGmFOlHI3p20ArBHpuE+j6+zhiSUo9SSNx2Fe6yHECByS3sS7yFwB9EXsAO0TAMeaP
         /UVMh8DY9xb+SLO71cEmjcUdY9QNOYvYOIBTyl5kUCK4mkqV51x6XvFJpmlgxsJyvi6e
         51qfIKBl1BcjO1LyK0O1K1QW9am1eqUiypB3JxgWczPQg0gEBBZou3axD62Hu/80DRuj
         Jvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ubZAlX7Gn84LApXo0fKbyQ/fhB5KXqZlmMtlvvPgVlk=;
        b=EC94XOegAmIm37LbL/WF4Shzlhip/Rs/U7fjlJrmB8QBobz0tpjCPoC3F0CQ1wD3A3
         WcV10MJLHQ8fgD4ut0WE3Cv5tadi34gGwdbdMBtgLqs6GyP2qea1as1P1lsTMZM/bG5l
         r3p+PG6ryJOe1lYTXOUWC3hvlJKrETEU+RJCCBUhguzcRshRWC6mrEDJrLovwj6tHZt2
         84n8gPNGRZSknl4RxREtcWs7SjlWAw+/LnxkFFz2MTvsVAN+WqZ9Y9W2S/CPS/4fXv7W
         PF/Mx2RNd4XpGJD0dxUmi9zF9+Z6SUkIk7sm0UtFCZEdU2TVMbiwT48/jpp/BaZMVIJ7
         850A==
X-Gm-Message-State: AFeK/H3vzaD2tbJDxbvHsPvQdmOkz4EcMmQBK+8QzN283RgwVdvBwPGr3WgZF/Xx36WfPQ==
X-Received: by 10.98.68.199 with SMTP id m68mr36918475pfi.31.1490782670855;
        Wed, 29 Mar 2017 03:17:50 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 23sm12662820pfw.94.2017.03.29.03.17.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 03:17:49 -0700 (PDT)
Date: Wed, 29 Mar 2017 15:47:46 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] net: ipv6: Removed unnecessary parenthesis
Message-ID: <20170329101746.GA30647@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed parentheses on the right hand side of assignment, as they are
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
 net/ipv6/netfilter/nf_conntrack_reasm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ipv6/netfilter/nf_conntrack_reasm.c b/net/ipv6/netfilter/nf_conntrack_reasm.c
index fdde76e8a16a..34dfdc2fb2bc 100644
--- a/net/ipv6/netfilter/nf_conntrack_reasm.c
+++ b/net/ipv6/netfilter/nf_conntrack_reasm.c
@@ -387,9 +387,9 @@ nf_ct_frag6_reasm(struct frag_queue *fq, struct sk_buff *prev,  struct net_devic
 		return false;
 
 	/* Unfragmented part is taken from the first segment. */
-	payload_len = ((head->data - skb_network_header(head)) -
+	payload_len = (head->data - skb_network_header(head)) -
 		       sizeof(struct ipv6hdr) + fq->q.len -
-		       sizeof(struct frag_hdr));
+		       sizeof(struct frag_hdr);
 	if (payload_len > IPV6_MAXPLEN) {
 		net_dbg_ratelimited("nf_ct_frag6_reasm: payload len = %d\n",
 				    payload_len);
-- 
2.11.0


