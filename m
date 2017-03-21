X-GM-THRID: 6399870143121326080
X-Received: by 10.129.118.12 with SMTP id r12mr18720834ywc.169.1490085887794;
        Tue, 21 Mar 2017 01:44:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls9799508otd.37.gmail; Tue, 21 Mar
 2017 01:44:47 -0700 (PDT)
X-Received: by 10.157.17.123 with SMTP id p56mr15696592otp.116.1490085887074;
        Tue, 21 Mar 2017 01:44:47 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si3157828pfz.1.2017.03.21.01.44.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so15452656pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ywflHSxzgAPaA1aCZeJinxv9m0JKWB+5seaEFhxKilg=;
        b=UBTzK8WcN1ewu4NR/1HjiOCq5l+VcWjrjEiaWrMMPX7jSPfUgdKIsfq52sGFQlMF+z
         JWV9o5LN0Q4z4BwxnA0HisDb2kzALbcntV/RU2vLkeiCCMo99vl33rhKOY8KAQj88fQ1
         vTvMMQrO8pRpp33MhDqeWC7CvFYI7w7hwHvigvMiSJQUYGlWlJe5nqgwn9dTUphMpz1e
         O1zSkTjGbL4fFzYbpA5PEa1WcikvMylLVqQV73g874C2HjToXoNHjeIn0SYXC6JTnoLG
         KyqXoppIm4tK1r8lunQ1f27+LQgjvJWyPtWKdA2VrEzgs9p3P9sR1gAbbyV8GVE/yrTF
         BeoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ywflHSxzgAPaA1aCZeJinxv9m0JKWB+5seaEFhxKilg=;
        b=UbVAwpzYlyZQhTmbKNbbvGLkfSZc+IvCeSInMLhw9SOWbDObX8uWMXGjRF9esePS4o
         syJBYDQDRNb7e9Y6Cu11laBSt4G0eFgjJ2F/+/L5Y/+RPGZMdhBFafF3zUmfjIEBaSKa
         UFajnH/MIHWILcwzLmbpjCXJEyXHhuvZ+80JeLLCVe0Pg8tMNpN6KQoy61+hr4ULIGVC
         X49bjnSiZSTdP9xJzCDUMsalkEyMpUbjQCKzY4C8mFLXHA3oyQpPw3WyR/6DvxSrjprC
         0KSyk8IhAxsZQtjQKnH99nENSu36yvF6rGZByDNjaTZ7WdRcs5D6KRqHbxACSSLnIewe
         Hh+Q==
X-Gm-Message-State: AFeK/H2Kniydr9ZjT3YeO33MTVVp2uuG0ahBGqiqX9DbSOwIxAfzG/Us2p7geLZz38R4HA==
X-Received: by 10.99.170.5 with SMTP id e5mr35933115pgf.89.1490085886793;
        Tue, 21 Mar 2017 01:44:46 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m20sm14385846pgd.32.2017.03.21.01.44.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:46 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] netfilter: ipvs: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:35 +0530
Message-Id: <1490085879-1827-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure. When NULL
represents failure, !x is commonly used.

@@
expression *e;
identifier l1;
@@
e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 --This is my contribution to the netfilter project of
   Outreachy Round 14.
 
 net/netfilter/ipvs/ip_vs_ctl.c   | 4 ++--
 net/netfilter/ipvs/ip_vs_dh.c    | 2 +-
 net/netfilter/ipvs/ip_vs_lblc.c  | 2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c | 4 ++--
 net/netfilter/ipvs/ip_vs_sh.c    | 2 +-
 net/netfilter/ipvs/ip_vs_wrr.c   | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_ctl.c b/net/netfilter/ipvs/ip_vs_ctl.c
index 5aeb0dd..efe348a 100644
--- a/net/netfilter/ipvs/ip_vs_ctl.c
+++ b/net/netfilter/ipvs/ip_vs_ctl.c
@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
 	}
 
 	dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
-	if (dest == NULL)
+	if (!dest)
 		return -ENOMEM;
 
 	dest->stats.cpustats = alloc_percpu(struct ip_vs_cpu_stats);
@@ -1228,7 +1228,7 @@ ip_vs_add_service(struct netns_ipvs *ipvs, struct ip_vs_service_user_kern *u,
 #endif
 
 	svc = kzalloc(sizeof(struct ip_vs_service), GFP_KERNEL);
-	if (svc == NULL) {
+	if (!svc) {
 		IP_VS_DBG(1, "%s(): no memory\n", __func__);
 		ret = -ENOMEM;
 		goto out_err;
diff --git a/net/netfilter/ipvs/ip_vs_dh.c b/net/netfilter/ipvs/ip_vs_dh.c
index 75f798f..22a2535 100644
--- a/net/netfilter/ipvs/ip_vs_dh.c
+++ b/net/netfilter/ipvs/ip_vs_dh.c
@@ -159,7 +159,7 @@ static int ip_vs_dh_init_svc(struct ip_vs_service *svc)
 
 	/* allocate the DH table for this service */
 	s = kzalloc(sizeof(struct ip_vs_dh_state), GFP_KERNEL);
-	if (s == NULL)
+	if (!s)
 		return -ENOMEM;
 
 	svc->sched_data = s;
diff --git a/net/netfilter/ipvs/ip_vs_lblc.c b/net/netfilter/ipvs/ip_vs_lblc.c
index 5824927..d7c6031 100644
--- a/net/netfilter/ipvs/ip_vs_lblc.c
+++ b/net/netfilter/ipvs/ip_vs_lblc.c
@@ -352,7 +352,7 @@ static int ip_vs_lblc_init_svc(struct ip_vs_service *svc)
 	 *    Allocate the ip_vs_lblc_table for this service
 	 */
 	tbl = kmalloc(sizeof(*tbl), GFP_KERNEL);
-	if (tbl == NULL)
+	if (!tbl)
 		return -ENOMEM;
 
 	svc->sched_data = tbl;
diff --git a/net/netfilter/ipvs/ip_vs_lblcr.c b/net/netfilter/ipvs/ip_vs_lblcr.c
index 703f118..b0a9e1c 100644
--- a/net/netfilter/ipvs/ip_vs_lblcr.c
+++ b/net/netfilter/ipvs/ip_vs_lblcr.c
@@ -113,7 +113,7 @@ static void ip_vs_dest_set_insert(struct ip_vs_dest_set *set,
 	}
 
 	e = kmalloc(sizeof(*e), GFP_ATOMIC);
-	if (e == NULL)
+	if (!e)
 		return;
 
 	ip_vs_dest_hold(dest);
@@ -515,7 +515,7 @@ static int ip_vs_lblcr_init_svc(struct ip_vs_service *svc)
 	 *    Allocate the ip_vs_lblcr_table for this service
 	 */
 	tbl = kmalloc(sizeof(*tbl), GFP_KERNEL);
-	if (tbl == NULL)
+	if (!tbl)
 		return -ENOMEM;
 
 	svc->sched_data = tbl;
diff --git a/net/netfilter/ipvs/ip_vs_sh.c b/net/netfilter/ipvs/ip_vs_sh.c
index 16aaac6..99f3c3e 100644
--- a/net/netfilter/ipvs/ip_vs_sh.c
+++ b/net/netfilter/ipvs/ip_vs_sh.c
@@ -235,7 +235,7 @@ static int ip_vs_sh_init_svc(struct ip_vs_service *svc)
 
 	/* allocate the SH table for this service */
 	s = kzalloc(sizeof(struct ip_vs_sh_state), GFP_KERNEL);
-	if (s == NULL)
+	if (!s)
 		return -ENOMEM;
 
 	svc->sched_data = s;
diff --git a/net/netfilter/ipvs/ip_vs_wrr.c b/net/netfilter/ipvs/ip_vs_wrr.c
index 17e6d44..0923e6c 100644
--- a/net/netfilter/ipvs/ip_vs_wrr.c
+++ b/net/netfilter/ipvs/ip_vs_wrr.c
@@ -116,7 +116,7 @@ static int ip_vs_wrr_init_svc(struct ip_vs_service *svc)
 	 *    Allocate the mark variable for WRR scheduling
 	 */
 	mark = kmalloc(sizeof(struct ip_vs_wrr_mark), GFP_KERNEL);
-	if (mark == NULL)
+	if (!mark)
 		return -ENOMEM;
 
 	mark->cl = list_entry(&svc->destinations, struct ip_vs_dest, n_list);
-- 
2.7.4


