X-GM-THRID: 6402496770620784640
X-Received: by 10.200.40.194 with SMTP id j2mr8653608qtj.36.1490697444552;
        Tue, 28 Mar 2017 03:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.228 with SMTP id 91ls16017147otx.26.gmail; Tue, 28 Mar
 2017 03:37:24 -0700 (PDT)
X-Received: by 10.237.60.99 with SMTP id u32mr8757380qte.24.1490697444152;
        Tue, 28 Mar 2017 03:37:24 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si572149pfb.7.2017.03.28.03.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:37:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so20327255pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=uf+a+IYjMil7Z46E3c/FTb8zBXKhnYEIzik0F+2+H6s=;
        b=FH/TqOtuO4qVIEeDnWrGe3tYeaYtzRkw2ZmCpZ/3bzxgZKpmGkXyy3Y+VQqITNLOFg
         p3plA2mF3eYVkxuOLud7ZcwJUJa4NHc4qHtwZ+B0GTRqada8coQEwqkE+VRaeAECbPL2
         Bgy28Lws0lBgjwhJksCY4zUv67U3OWtLjsMyjR2PTLHlMDbFdy410f3p91d39ROalBkX
         ZIZG/NroiQ4jfvto0/ICvuKYuCFNIVZTs4X4GqWOe0WLqHea2h3TTV+9r/EdvZZqOHIw
         pMIXnLEJLqe7OcrzwpziIf4DhmjPb4MeKZFECIv5mSzN3ffo8PP6AjNdtk7Yx4A16krU
         Q/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=uf+a+IYjMil7Z46E3c/FTb8zBXKhnYEIzik0F+2+H6s=;
        b=oJjMfPMyokeKzqJpzT+hH/ltgExxmKWt6MBYpSscnhjQpKp0OYWhvJkQ5WCXEKXZBW
         KNjqWQBFskv6bSpr64M+VzZpF05xNFdvlsGjK8PySdXxgl1MzYJfK85o0Nmreezc2M6h
         7OurDLrsCemgxgxa6Mlu9650JCXkEb+biu1CH1Rwhi/9c/hpS8ZWwOsasav1FmpJ7qF8
         wGw81dleGyxEpSRNOMa/w/f+qhwZ9p7pllD7zuIDtuDLtDiLwgRkh69Nx5JZtONBSZx7
         l2lD2AnRWz/sWLp4U9g0VhT5kHibjePcbTVqLjKad0OOE0fkCBbVR1Ur0d3w6kTvIrXg
         aqVQ==
X-Gm-Message-State: AFeK/H3pCpF9IBMjqg3Qtph0UELFcrzFxGQo56C9WM7oYp1ZChgtZ7VvP1PWZQ4Sze9WEA==
X-Received: by 10.99.233.17 with SMTP id i17mr29740527pgh.76.1490697443917;
        Tue, 28 Mar 2017 03:37:23 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.136.149])
        by smtp.gmail.com with ESMTPSA id z63sm6612297pfz.70.2017.03.28.03.37.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:37:23 -0700 (PDT)
Message-ID: <58da3ce3.4233620a.6a513.0dff@mx.google.com>
X-Google-Original-Message-ID: <20170328103649.GA17597@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 16:06:49 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Wensong Zhang <wensong@linux-vs.org>, Simon Horman <horms@verge.net.au>,
	Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] netfilter: ipvs: Replace kzalloc with kcalloc.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Replace kzalloc with kcalloc. As kcalloc is preferred for allocating an
array instead of kzalloc. This patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 net/netfilter/ipvs/ip_vs_sync.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_sync.c b/net/netfilter/ipvs/ip_vs_sync.c
index b03c280..30d6b2c 100644
--- a/net/netfilter/ipvs/ip_vs_sync.c
+++ b/net/netfilter/ipvs/ip_vs_sync.c
@@ -1849,7 +1849,7 @@ int start_sync_thread(struct netns_ipvs *ipvs, struct ipvs_sync_daemon_cfg *c,
 	if (state == IP_VS_STATE_MASTER) {
 		struct ipvs_master_sync_state *ms;
 
-		ipvs->ms = kzalloc(count * sizeof(ipvs->ms[0]), GFP_KERNEL);
+		ipvs->ms = kcalloc(count, sizeof(ipvs->ms[0]), GFP_KERNEL);
 		if (!ipvs->ms)
 			goto out;
 		ms = ipvs->ms;
@@ -1862,7 +1862,7 @@ int start_sync_thread(struct netns_ipvs *ipvs, struct ipvs_sync_daemon_cfg *c,
 			ms->ipvs = ipvs;
 		}
 	} else {
-		array = kzalloc(count * sizeof(struct task_struct *),
+		array = kcalloc(count, sizeof(struct task_struct *),
 				GFP_KERNEL);
 		if (!array)
 			goto out;
-- 
2.9.3


