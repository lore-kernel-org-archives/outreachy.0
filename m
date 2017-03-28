X-GM-THRID: 6402594757348950016
X-Received: by 10.129.88.85 with SMTP id m82mr9596729ywb.97.1490720258175;
        Tue, 28 Mar 2017 09:57:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls2567049itc.7.canary-gmail; Tue, 28
 Mar 2017 09:57:37 -0700 (PDT)
X-Received: by 10.99.23.95 with SMTP id 31mr9503762pgx.122.1490720257033;
        Tue, 28 Mar 2017 09:57:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id w140si275834itc.0.2017.03.28.09.57.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 09:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so22646042pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 09:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JlF/2jkIp721xcHmvbbpVB7/EcQqjs0sZ3KazpLwK0g=;
        b=WEJPaupPVKyreZrfwmx/hOC+p0Ai49SaLLrMCpr0XdsuCBtntaz0/4cKFfggIxefgR
         aQIUDTPwYMPx77wFwGcc2p4+wGq+2E2O28mZ6HHYe+CpvRnX8U37h9Ck+u/nuJjRN7+i
         pz+OW4FFB4gsUxdAULXyrLs4D0nTZ/oYEeqzS5szfagKHgx8P+XeSV0AZOXgmMx1UPLr
         Pr6N0Rwb92Xfo03XU4VqvQimjeY2JY6+aaqtXAZFolZjSVHkAA3kW57x5QyJA/vbMkdd
         gjXJK8XbZZXLcWc/6WSmpQTxvKDDa3cMQhoXA19P0nfzRvQ9g1u6uzRuOwSJAYXpo1i9
         wBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JlF/2jkIp721xcHmvbbpVB7/EcQqjs0sZ3KazpLwK0g=;
        b=H9XDw5yccU6On2gvQOrBR/Q9FTj4Vb9SNtYCvtwhSAqv1wFxAPwe5ewPPDzadqq7lY
         BNc+7oysaazntlKvy/PB2ASvfeoHaRIAavlBSYflemn+adQk05DxJSFHQwaRJ2fB2MDQ
         lwFC1zdRp7zhVRFzvFLEivY2+Wv1Nb2wUMISKhQAvY/HohiRClgH/SNsRXNRq2sHia93
         MTV/Fh33zIzyuxnEtKbuuHk2ygPLp+ghUjvh5B9ipJgSTZPMMXQPLInJ0mndAfLvWkaw
         URdPiKLQSNSevi5AjgmvQDg7Ll1tTT6NgeAopPWXEOSJmcEVqOyONJxHfS9WOjZiwx1M
         D6BQ==
X-Gm-Message-State: AFeK/H2ALsIqoUYVGteGCqCgy6xhEoiXSNGsZ/3btoVhfUycuFpo+JsFy2+najEHOlevMA==
X-Received: by 10.99.146.88 with SMTP id s24mr9599432pgn.233.1490720256635;
        Tue, 28 Mar 2017 09:57:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v11sm8571456pfk.32.2017.03.28.09.57.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 09:57:35 -0700 (PDT)
Date: Tue, 28 Mar 2017 22:27:32 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH v3] net: netfilter: Add nfnl_msg_type() helper function
Message-ID: <20170328165732.GA11602@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

To remove complexity of code the function is added in nfnetlink.h
to make code more clear and readable.
This is opencoded in a way that makes it error prone for future
netfilter netlink subsystems.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v3
 -make the subject more clear.

 include/linux/netfilter/nfnetlink.h  |  6 ++++++
 net/netfilter/nf_conntrack_netlink.c | 12 +++++++-----
 net/netfilter/nfnetlink_acct.c       |  2 +-
 net/netfilter/nfnetlink_cthelper.c   |  2 +-
 net/netfilter/nfnetlink_cttimeout.c  |  4 ++--
 5 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/include/linux/netfilter/nfnetlink.h b/include/linux/netfilter/nfnetlink.h
index 1b49209dd5c7..9a36a7c3145d 100644
--- a/include/linux/netfilter/nfnetlink.h
+++ b/include/linux/netfilter/nfnetlink.h
@@ -50,6 +50,12 @@ static inline bool lockdep_nfnl_is_held(__u8 subsys_id)
 {
 	return true;
 }
+
+static inline u16 nfnl_msg_type(u8 subsys, u8 msg_type)
+{
+	return subsys << 8 | msg_type;
+}
+
 #endif /* CONFIG_PROVE_LOCKING */
 
 /*
diff --git a/net/netfilter/nf_conntrack_netlink.c b/net/netfilter/nf_conntrack_netlink.c
index aa344c5868c5..67f6f88a3e92 100644
--- a/net/netfilter/nf_conntrack_netlink.c
+++ b/net/netfilter/nf_conntrack_netlink.c
@@ -467,7 +467,7 @@ ctnetlink_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
 	struct nlattr *nest_parms;
 	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
 
-	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_NEW;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_NEW);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
@@ -1983,7 +1983,8 @@ ctnetlink_ct_stat_cpu_fill_info(struct sk_buff *skb, u32 portid, u32 seq,
 	struct nfgenmsg *nfmsg;
 	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
 
-	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS_CPU;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK,
+			      IPCTNL_MSG_CT_GET_STATS_CPU);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
@@ -2066,7 +2067,7 @@ ctnetlink_stat_ct_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
 	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
 	unsigned int nr_conntracks = atomic_read(&net->ct.count);
 
-	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_GET_STATS);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
@@ -2576,7 +2577,7 @@ ctnetlink_exp_fill_info(struct sk_buff *skb, u32 portid, u32 seq,
 	struct nfgenmsg *nfmsg;
 	unsigned int flags = portid ? NLM_F_MULTI : 0;
 
-	event |= NFNL_SUBSYS_CTNETLINK_EXP << 8;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK_EXP, event);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
@@ -3223,7 +3224,8 @@ ctnetlink_exp_stat_fill_info(struct sk_buff *skb, u32 portid, u32 seq, int cpu,
 	struct nfgenmsg *nfmsg;
 	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
 
-	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_EXP_GET_STATS_CPU;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK,
+			      IPCTNL_MSG_EXP_GET_STATS_CPU);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
diff --git a/net/netfilter/nfnetlink_acct.c b/net/netfilter/nfnetlink_acct.c
index d44d89b56127..ae0aef6cb7ee 100644
--- a/net/netfilter/nfnetlink_acct.c
+++ b/net/netfilter/nfnetlink_acct.c
@@ -138,7 +138,7 @@ nfnl_acct_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
 	u64 pkts, bytes;
 	u32 old_flags;
 
-	event |= NFNL_SUBSYS_ACCT << 8;
+	event = nfnl_msg_type(NFNL_SUBSYS_ACCT, event);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
diff --git a/net/netfilter/nfnetlink_cthelper.c b/net/netfilter/nfnetlink_cthelper.c
index de8782345c86..e2c443c43cb9 100644
--- a/net/netfilter/nfnetlink_cthelper.c
+++ b/net/netfilter/nfnetlink_cthelper.c
@@ -416,7 +416,7 @@ nfnl_cthelper_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
 	unsigned int flags = portid ? NLM_F_MULTI : 0;
 	int status;
 
-	event |= NFNL_SUBSYS_CTHELPER << 8;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTHELPER, event);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
diff --git a/net/netfilter/nfnetlink_cttimeout.c b/net/netfilter/nfnetlink_cttimeout.c
index 139e0867e56e..6d76172117e4 100644
--- a/net/netfilter/nfnetlink_cttimeout.c
+++ b/net/netfilter/nfnetlink_cttimeout.c
@@ -158,7 +158,7 @@ ctnl_timeout_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
 	unsigned int flags = portid ? NLM_F_MULTI : 0;
 	struct nf_conntrack_l4proto *l4proto = timeout->l4proto;
 
-	event |= NFNL_SUBSYS_CTNETLINK_TIMEOUT << 8;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK_TIMEOUT, event);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
@@ -431,7 +431,7 @@ cttimeout_default_fill_info(struct net *net, struct sk_buff *skb, u32 portid,
 	struct nfgenmsg *nfmsg;
 	unsigned int flags = portid ? NLM_F_MULTI : 0;
 
-	event |= NFNL_SUBSYS_CTNETLINK_TIMEOUT << 8;
+	event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK_TIMEOUT, event);
 	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 	if (nlh == NULL)
 		goto nlmsg_failure;
-- 
2.11.0


