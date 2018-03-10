X-GM-THRID: 6531387623906213888
X-Received: by 10.99.109.129 with SMTP id i123mr488770pgc.59.1520707184307;
        Sat, 10 Mar 2018 10:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.93.77 with SMTP id e13ls252912pgt.3.gmail; Sat, 10 Mar
 2018 10:39:43 -0800 (PST)
X-Google-Smtp-Source: AG47ELugdkz/sWZk5xQP5zVaY7cmXWFbDQfxMaH6ba9tEA2myGR5dLf6Q0ZeK4yUZXjnda0pnA6C
X-Received: by 10.99.117.83 with SMTP id f19mr42982pgn.33.1520707183024;
        Sat, 10 Mar 2018 10:39:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520707182; cv=none;
        d=google.com; s=arc-20160816;
        b=gMywIdmELFlDd9f4SJh33+2Xbj4OG7m7DxHlvfhrKBxwuq6kXKY780v58Xg1jsK4Tf
         0wu94HlyiGeM8YXwSDwWd0thPtBf3yq039tgZ5g/i2xnoBukIOIt1MVG7uR8rWsOT6XY
         HLJlh0PP+RFiTY9vze8o5gYjQPaUk+pEYYwZqfyQ+IQTQ6frGuD8HgKkEDs5DBCBlnOk
         V9zUo/4wbV7hfEdDyHDxEsANE2AI3tFPCSyRSV+gDfDIrco8qvkXo8ssU1T7uN2A2JDZ
         qC4DxxgMDbvUo2FrubM1XiVpkTHIMoEov1ip2ot1lK0sRr/IBYmthOOjgPyVGyjElD6x
         iDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=nIy/dCZLN9MQeLimXYq4V2PLAwfS9OTg4HJw6h6m1Cs=;
        b=T8sz/AUSppxpBBp/dkyKj+uW9UhJyCrC/47MfikWjogvhCkl6epW6v39ORencBxND7
         FuGEX6JYE+7vCuTiViTa2PaaFH3lP/liNOoqp2M/Lrb0bxUa9PinkePpvNYiztRezIS4
         XWNY2nFv+DDimUPez3HeFSoGcNgFgyr14ki8xsIbYxTrYbMBUCm6I24JYharBz1H6FLe
         xw1P++gExk7GGARZ65tmrVoxZCsKXYm3HDAP6r5yF2AWN1wZjsAupn6I9hP7u41pUW6Y
         A7/XezBUzYueTZnoqi910bxBnYJyY4giuL/nblPhm5Dk3ADImIqyMR9Tsy6OQquTwwiv
         rHqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKdz/vMH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id f26si351999pfh.2.2018.03.10.10.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 10:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKdz/vMH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id d9-v6so7031458plo.8
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 10:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nIy/dCZLN9MQeLimXYq4V2PLAwfS9OTg4HJw6h6m1Cs=;
        b=AKdz/vMHlHro+3eO4Egr2EuGfzvUg+87S5zBnWNnDOt3Dx5gJ2i7OAYmaIxMjLSwV9
         orZ6Y6wLDbuflgsJ93DO7a4KPjwvzj0LRFZhzTp7AtEV5Jq1mA50PA8O+ghTmUhnmEY3
         cf/o/77SdCIL0psl0dbd+miTM577W+ihs5ZOmIi3VHGFJCm/nhhqwgOMj0omDNnkYo2i
         GkgXE0jFzeXNzfodz+droyF2izZA+9OP0h3O+yvXhJmi4GTbXlg6oiXsNVLY4FvTqsk9
         LJ4QLGmjwXNoXpIAk+TEbeNXWrgy7VfR8y0Bdc5n/TeTzAKucYOrvnoX3cI2eaiGi5bj
         IlQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nIy/dCZLN9MQeLimXYq4V2PLAwfS9OTg4HJw6h6m1Cs=;
        b=tBNDspEcWgZDb1+Cr9csJm8yCD9MPULi+SFqLQ/GGHHUPDm57hTXTaUWUoVXQGyNMc
         qsusgG9kWu/+RLQ0roi043LK2gQTAkaOgW5UeGwpGRKUpv+tdrCI6g7+hINQDYoquMU8
         DN9XY0r+/IGG9FXkIkCIhZTvr9ZjC23Jvq1YnDUSoL3qFP+/1n8d/4YM4a01A44tbHUu
         BTSfPEexavVVMCMVRMlL+uf3rk4CX12YBHOqklHRQx6D1+Ra95nHgsb1i3LJSXtaJmrk
         V19xEmegWyx00bn4Z+IxgCDVFGYVjf8pYddrKgD0faI+40mOBIN2LEwFE2Crt9pmmHsi
         kbBw==
X-Gm-Message-State: AElRT7FvCAb6PxbJZTI8cA7UwR3roX2drovE/DMRh98XQQHEcpWGBxgT
	rKpuP2uQMKM/AuBH5umkBS4/Wg==
X-Received: by 2002:a17:902:d891:: with SMTP id b17-v6mr2804150plz.241.1520707182162;
        Sat, 10 Mar 2018 10:39:42 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y18sm8605328pfl.146.2018.03.10.10.39.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Mar 2018 10:39:40 -0800 (PST)
Date: Sun, 11 Mar 2018 00:09:07 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH Netfilter] net: netfilter: Replace printk() with more
 standardize output format.
Message-ID: <20180310183906.GA20125@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

printk() is the raw way to print output and should be avoided.

For drivers with defined "struct device object", dev_*macro() is
prefer and for "struct netdevice object", netdev_*macro() is prefer over
dev_*macro() to standardize the output format within the subsystem.

If no "struct device object" is defined prefer pr_*macro() over
printk().

This patch Replace printk having a log level with the appropriate output
format according to the order of preference.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/nf_conntrack_acct.c      | 2 +-
 net/netfilter/nf_conntrack_ecache.c    | 2 +-
 net/netfilter/nf_conntrack_timestamp.c | 2 +-
 net/netfilter/nf_nat_core.c            | 2 +-
 net/netfilter/nfnetlink_queue.c        | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/netfilter/nf_conntrack_acct.c b/net/netfilter/nf_conntrack_acct.c
index 8669167..fc7329d 100644
--- a/net/netfilter/nf_conntrack_acct.c
+++ b/net/netfilter/nf_conntrack_acct.c
@@ -80,7 +80,7 @@ static int nf_conntrack_acct_init_sysctl(struct net *net)
 	net->ct.acct_sysctl_header = register_net_sysctl(net, "net/netfilter",
 							 table);
 	if (!net->ct.acct_sysctl_header) {
-		printk(KERN_ERR "nf_conntrack_acct: can't register to sysctl.\n");
+		netdev_err(net->loopback_dev, "nf_conntrack_acct: can't register to sysctl.\n");
 		goto out_register;
 	}
 	return 0;
diff --git a/net/netfilter/nf_conntrack_ecache.c b/net/netfilter/nf_conntrack_ecache.c
index caac41a..c1fb296 100644
--- a/net/netfilter/nf_conntrack_ecache.c
+++ b/net/netfilter/nf_conntrack_ecache.c
@@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct net *net)
 	net->ct.event_sysctl_header =
 		register_net_sysctl(net, "net/netfilter", table);
 	if (!net->ct.event_sysctl_header) {
-		printk(KERN_ERR "nf_ct_event: can't register to sysctl.\n");
+		netdev_err(net->loopback_dev, "nf_ct_event: can't register to sysctl.\n");
 		goto out_register;
 	}
 	return 0;
diff --git a/net/netfilter/nf_conntrack_timestamp.c b/net/netfilter/nf_conntrack_timestamp.c
index 4c4734b..abd9fbd 100644
--- a/net/netfilter/nf_conntrack_timestamp.c
+++ b/net/netfilter/nf_conntrack_timestamp.c
@@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net *net)
 	net->ct.tstamp_sysctl_header = register_net_sysctl(net,	"net/netfilter",
 							   table);
 	if (!net->ct.tstamp_sysctl_header) {
-		printk(KERN_ERR "nf_ct_tstamp: can't register to sysctl.\n");
+		netdev_err(net->loopback_dev, "nf_ct_tstamp: can't register to sysctl.\n");
 		goto out_register;
 	}
 	return 0;
diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
index 6c38421..dcda5ac 100644
--- a/net/netfilter/nf_nat_core.c
+++ b/net/netfilter/nf_nat_core.c
@@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
 	ret = nf_ct_extend_register(&nat_extend);
 	if (ret < 0) {
 		nf_ct_free_hashtable(nf_nat_bysource, nf_nat_htable_size);
-		printk(KERN_ERR "nf_nat_core: Unable to register extension\n");
+		pr_err("nf_nat_core: Unable to register extension\n");
 		return ret;
 	}
 
diff --git a/net/netfilter/nfnetlink_queue.c b/net/netfilter/nfnetlink_queue.c
index 8bba231..4b4bef5 100644
--- a/net/netfilter/nfnetlink_queue.c
+++ b/net/netfilter/nfnetlink_queue.c
@@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct nf_queue_entry *e, int diff)
 			nskb = skb_copy_expand(e->skb, skb_headroom(e->skb),
 					       diff, GFP_ATOMIC);
 			if (!nskb) {
-				printk(KERN_WARNING "nf_queue: OOM "
-				      "in mangle, dropping packet\n");
+				netdev_warn(nskb->dev, "nf_queue: OOM "
+					    "in mangle, dropping packet\n");
 				return -ENOMEM;
 			}
 			kfree_skb(e->skb);
-- 
2.7.4


