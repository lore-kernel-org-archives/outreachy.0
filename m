X-GM-THRID: 6402792697450463232
X-Received: by 10.157.73.140 with SMTP id g12mr8964108otf.130.1490766344899;
        Tue, 28 Mar 2017 22:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls16492164ote.9.gmail; Tue, 28 Mar
 2017 22:45:44 -0700 (PDT)
X-Received: by 10.200.36.226 with SMTP id t31mr10061380qtt.2.1490766344484;
        Tue, 28 Mar 2017 22:45:44 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si904945pfb.5.2017.03.28.22.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 22:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so1264910pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 22:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HmfKKE2HcDP+TGXYU9/svOOmd3L/hPDowH8N5Fen7Qs=;
        b=eRiGbRrmg8bH0teryF0qXzFCV+COZBhoVdoHfn1aPza3j+fZ5IgV4uenTLqTafvybM
         EnQEVUK4Dysb3jNFfAkGwT/JsPhvY1On4yyn5a2R64ix8o56AimU6Y+EQC8R3hCJuVkK
         B5MtePgTczzjd6Zi1LGFEBCyzn6bE8BSzYZKhhEjq+isULlwqUqXTKDCvubYnlV51Xtc
         47cT5oa4Pw2exghnv6i9X4hfFgTIj5LJ544FM8XQR65oQY8ixeadV/xJ2F7WNxLfCJV+
         WrMu1x2JDTw0YZUeCErtj7b2Jki6QENic3+QUPSdQAa8Xiy/YEjLirAII7Wj21VcO9h1
         x84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HmfKKE2HcDP+TGXYU9/svOOmd3L/hPDowH8N5Fen7Qs=;
        b=GZ5jJBWn6fNp/WdXRe3vn3DnOUxonIoMeM1k3PXxWJR+4tivCgYwthpvjXsi7G6++A
         4/OVg6E7FfBw8Wn/lItI9SJ/pLnxlKgfGCL3vW4V7ee4sIeSszTIt4+7LXX7siJhsJiU
         h3LM2gDiJ8Y90YLADFkwagD+b1jHrOUGt7BaKBlZTC7b49cwii9pClZbJqM0xxv3tPdl
         zz4bVUdnAnAKGZPWIwODdtNeG1VVqHs5/Xqxa2iK8Hx+8t9Kh/+5VeHVFe9I6EpbINLb
         +xFzobmdP5XV1xuqFS0QYU8uvu2UcJmXG2ShW+XExXN6fqsMm34Xa7MHp/wQyTtfnZoo
         V0cQ==
X-Gm-Message-State: AFeK/H2Hrc7EfoquYJ00UNfMjYLU8alQHef0hrw8tU17Nlt5mLtbXPjIMUuLALyGU4RR5Q==
X-Received: by 10.99.137.66 with SMTP id v63mr33856668pgd.183.1490766344304;
        Tue, 28 Mar 2017 22:45:44 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i3sm10668003pfk.47.2017.03.28.22.45.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 22:45:43 -0700 (PDT)
Date: Wed, 29 Mar 2017 11:15:40 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilter: Use list_{next/prev}_entry instead of
 list_entry
Message-ID: <20170329054540.GA15593@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace list_entry with list_prev_entry as it makes the
code more clear to read.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 net/netfilter/nf_tables_api.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/netfilter/nf_tables_api.c b/net/netfilter/nf_tables_api.c
index b7645d7..a341eaf 100644
--- a/net/netfilter/nf_tables_api.c
+++ b/net/netfilter/nf_tables_api.c
@@ -1895,7 +1895,7 @@ static int nf_tables_fill_rule_info(struct sk_buff *skb, struct net *net,
 		goto nla_put_failure;
 
 	if ((event != NFT_MSG_DELRULE) && (rule->list.prev != &chain->rules)) {
-		prule = list_entry(rule->list.prev, struct nft_rule, list);
+		prule = list_prev_entry(rule, list);
 		if (nla_put_be64(skb, NFTA_RULE_POSITION,
 				 cpu_to_be64(prule->handle),
 				 NFTA_RULE_PAD))
-- 
2.7.4


