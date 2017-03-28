X-GM-THRID: 6402533781831417856
X-Received: by 10.99.122.65 with SMTP id j1mr9858843pgn.89.1490706061789;
        Tue, 28 Mar 2017 06:01:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls12516813otb.2.gmail; Tue, 28 Mar
 2017 06:01:01 -0700 (PDT)
X-Received: by 10.13.202.86 with SMTP id m83mr9564357ywd.120.1490706061212;
        Tue, 28 Mar 2017 06:01:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si607698pfz.1.2017.03.28.06.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 06:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so21189334pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 06:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UNzzqxcogRMiGpsJvis4lXX+DoVod+ih0r/WbSmfbs8=;
        b=dzPSWMmp7i+rhZ5fTQZO3PPLmK3HuD9z7eWZuMuZmPAaOMLXz5iKUpdN8L1fn0kylm
         7BuOVUTkNL3IsytF55wovfv0OnVxNNCZtQ0yFCYtZQyhGvJooAd2j8v7/z2uDhydcL2D
         18yCQTcMbOcUfjwNoQgXgYm5knc+PnUtN1+HizKJtge7fI1x3UMzIza8+E21c5Vk9Ye2
         HH7JDuOEUx0N3h9Eml6Be4dHXDBOlN30prkhOiTsx4Ko4vusMRXqnCYoxa1gljiDmJDE
         sRYSYexnUK5I5yUnY0Vy6p4zKAW6Hx9rcM1KJUXhvCVRKpyqM/yLjGWwNt2XiqxbgZ9Q
         snvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UNzzqxcogRMiGpsJvis4lXX+DoVod+ih0r/WbSmfbs8=;
        b=KIUAXogcW0aWMW6fXtnuavIp9S8eWIpXKH7JVYKktvqirAE4YdctcCMDXd+3XFvQvD
         SZvoZRJWCLsy74AbIplofHLWEciSrUTbSpaEfMCpHtDIRjG+E+j/it8FimLH7Ax5JTVL
         8XhUHzth/LYXoHqhQ1pcapRK6Egl+Pj8BJpm8rEWZJMflY6FCkXmXZW2b31Sg7JN9rTl
         mYRf5XvwTQmI6vZSObw13qDtG5x7coJZAtlINx77Av5rGnlJrcUv7igYjPJESNr9TJG5
         s9i/bYmV5i9bZpOsUZkK5hwz/NjDTyQLF88HRm9bw2dtN8QAxFH6U57F6FItH6KIwubQ
         134Q==
X-Gm-Message-State: AFeK/H37MuLe/jYOwA8CvCRgwQnKtCqHyBGO2S0L39r8y6A+GIbNVfz73I8Z0zsl/NFLOg==
X-Received: by 10.99.65.1 with SMTP id o1mr30862630pga.93.1490706060463;
        Tue, 28 Mar 2017 06:01:00 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a77sm7518024pfl.91.2017.03.28.06.00.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 06:00:59 -0700 (PDT)
Date: Tue, 28 Mar 2017 18:30:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilter: Remove complexity
Message-ID: <20170328130032.GA5009@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

To remove complexity of code the function is added in nfnetlink.h
to make code more clear and readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 include/linux/netfilter/nfnetlink.h  |  6 ++++++
 net/netfilter/nf_conntrack_netlink.c | 12 +++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

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
-- 
2.11.0


