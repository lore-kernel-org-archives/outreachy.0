X-GM-THRID: 6401417655470784512
X-Received: by 10.99.185.21 with SMTP id z21mr4297794pge.40.1490446193295;
        Sat, 25 Mar 2017 05:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls10076722ote.15.gmail; Sat, 25 Mar
 2017 05:49:52 -0700 (PDT)
X-Received: by 10.200.44.172 with SMTP id 41mr4072358qtw.30.1490446192797;
        Sat, 25 Mar 2017 05:49:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 190si1136262pfv.3.2017.03.25.05.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 05:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so2809232pge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 05:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r3uSf5EibxFq4NwkjtUnm4qYNnPjGp4NaXosndty8nI=;
        b=fIMFrET8EVvqQuWONXOV13JBnyqvEuC6yqK2Uc/C/eeNsFsEd+PXu+exxd9tVeVXHS
         H3NNXB35lCSwuS9dadjN8KsInFXf5yw4pAIs++vxj/ADkcuDSaCMzI3eaXiYEb+8lCY4
         BeOQuG4YzNtb5MoqHY2fhc11IUNsyQAAKqmGBd2IAfm0WEo9/EVonghoNeJgLGLM5QkV
         0D9CzRk4ipRHfOPGzm9+ig/S6lawzWthT0CUvcl+WLyvW0a9Vy9t0yBNPX6ZUselPk8b
         zhKKDKsLm8UfO+bjxy4o2ZCkcl12J2ZiO+gYRZQYVit5K1lLhs5Gt5dshe7llfeN39wG
         GwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r3uSf5EibxFq4NwkjtUnm4qYNnPjGp4NaXosndty8nI=;
        b=caZ7aIAAv1emZmXVeQutrPCwHiks53gvGSuPvHBqftb5nkOKe9hSQDrPhBkOz0GRio
         lQW4e9AHvrRmTIPWCVdjzcFWsL5+te20vj6bi/o14AcdinZalsrG1XDTR6qKwFOgmXLt
         k8yBMUwZKpa9023sUUKdEKQhTAY4epfWbdx6l9lHvTpOEOPz9wvYrMt9oAGfOupWtdQX
         aUHkV6FY/UfZxDWMY86M0RqzCqCymNfyfhNmt1gpn+MHIWg33oH3mga5fLkHTEIgLDys
         RblZXsfeQShNqjmp7gnHbMyJ20u8Xs0U/lg9lGGU3B2cPM3xJy3Wv6xJPqAGHLaXNEWD
         iXsA==
X-Gm-Message-State: AFeK/H2T8a7Lhqxxvj3MYDUFkKMoiq+o1IFa4BmxhLSdDaEvCAuSPwVDsgoaObyxrzh6AA==
X-Received: by 10.98.34.86 with SMTP id i83mr15333068pfi.89.1490446192557;
        Sat, 25 Mar 2017 05:49:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 65sm10535123pfg.109.2017.03.25.05.49.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 05:49:51 -0700 (PDT)
Date: Sat, 25 Mar 2017 18:19:47 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilter: Remove multiple assignment.
Message-ID: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes multiple assignments.
Done using coccinelle.
@@
identifier i1,i2;
constant c;
@@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
contribution to outreachy netfilter project.

 net/netfilter/nf_conntrack_proto_sctp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/netfilter/nf_conntrack_proto_sctp.c b/net/netfilter/nf_conntrack_proto_sctp.c
index 33279aab583d..723386bcc2cb 100644
--- a/net/netfilter/nf_conntrack_proto_sctp.c
+++ b/net/netfilter/nf_conntrack_proto_sctp.c
@@ -346,7 +346,8 @@ static int sctp_packet(struct nf_conn *ct,
 		goto out;
 	}
 
-	old_state = new_state = SCTP_CONNTRACK_NONE;
+	old_state = SCTP_CONNTRACK_NONE;
+	new_state = old_state;
 	spin_lock_bh(&ct->lock);
 	for_each_sctp_chunk (skb, sch, _sch, offset, dataoff, count) {
 		/* Special cases of Verification tag check (Sec 8.5.1) */
-- 
2.11.0


