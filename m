X-GM-THRID: 6402837556844560384
X-Received: by 10.200.57.65 with SMTP id t1mr10093016qtb.62.1490776789205;
        Wed, 29 Mar 2017 01:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls8415082otd.42.gmail; Wed, 29 Mar
 2017 01:39:48 -0700 (PDT)
X-Received: by 10.13.245.67 with SMTP id e64mr11380026ywf.127.1490776788755;
        Wed, 29 Mar 2017 01:39:48 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si1110559pfb.0.2017.03.29.01.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 01:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so1795202pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 01:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JpvjsB1hWEXW5p+mJiCcYoeBZXQO5v6hp98PbPyPZP0=;
        b=tBOS6yAHmWn0SKMp0sXdZ5vd3muO3O38l6Ihm2XfpE1dGK4Flkw0QHbmHlWGJVH9gs
         +hRRCGXgYgrpmz1zsr3oOP//0DlKXI9EukQQGfFZizVB6uS3eDfttY9nQ5hHUBQZ3nYy
         NeBcCXnu33gRsj4KXqojN+sFR9pL/JcOJs1wQRtKPSNfwI4FsvMKPzNXXQcb4oyUUM91
         xB/n90O54aHsaRCprW6aqm7e15GFtSvj6p9ECzt83J63tne1sb9KirsQOZZGpfcGBWtL
         hsPkAfGTcdQAZuIdonRs8p77u5XUqFWESZ4EZdWOu3treDSblYuMG+4V4686fLRVkurG
         XmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JpvjsB1hWEXW5p+mJiCcYoeBZXQO5v6hp98PbPyPZP0=;
        b=prBcHagpe7PsD/F2lWUBwVAQgFIq7+jXIXa60lENFG69T+H85WrJrO33ngtMmzOEHq
         bZ9POMFYPezDfv53vNeVVtNig8CtFfYJ/BFAitIOFGye6AJo4vfTn5yWnNdgpTRQ0Gam
         /0XGFE0TxYZPWprsS+g8rULJXVZdvmgVeAaX3BrgCkxe5WwyBrV/2Ujh1/GFv2HNzo5I
         ps3fO2Guj17H0udnguCoeLJCGvHjL5ddgHha4P4MGmLmpe7VGDBX5KolthVfaTiUCYgI
         VMlJI1QG3R17zVNvegUUWzDfPl7OQKl1mO8WK55Qn6NuTbvr9HGx2oqG+JdHKP7//j1F
         ShsA==
X-Gm-Message-State: AFeK/H1lsw5d0cwIe67e8ICRorqpEwFsa7l5lqM18tTnne5LHRFYriL1yFPGuB26lRyWMg==
X-Received: by 10.84.216.17 with SMTP id m17mr41062159pli.158.1490776788264;
        Wed, 29 Mar 2017 01:39:48 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s21sm11913919pgg.65.2017.03.29.01.39.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 01:39:46 -0700 (PDT)
Date: Wed, 29 Mar 2017 14:09:43 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] net: ipv6: netfilter: Format block comments.
Message-ID: <20170329083943.GA23844@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch warnings:
WARNING: Block comments use a trailing */ on a separate line
WARNING: Block comments use * on subsequent lines

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/ipv6/netfilter/ip6_tables.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/ipv6/netfilter/ip6_tables.c b/net/ipv6/netfilter/ip6_tables.c
index b8cb61c27aa1..ac69ce3bfa1e 100644
--- a/net/ipv6/netfilter/ip6_tables.c
+++ b/net/ipv6/netfilter/ip6_tables.c
@@ -51,14 +51,14 @@ void *ip6t_alloc_initial_table(const struct xt_table *info)
 }
 EXPORT_SYMBOL_GPL(ip6t_alloc_initial_table);
 
-/*
-   We keep a set of rules for each CPU, so we can avoid write-locking
-   them in the softirq when updating the counters and therefore
-   only need to read-lock in the softirq; doing a write_lock_bh() in user
-   context stops packets coming through and allows user context to read
-   the counters or update the rules.
-
-   Hence the start of any table is given by get_table() below.  */
+/* We keep a set of rules for each CPU, so we can avoid write-locking
+ * them in the softirq when updating the counters and therefore
+ * only need to read-lock in the softirq; doing a write_lock_bh() in user
+ * context stops packets coming through and allows user context to read
+ * the counters or update the rules.
+ *
+ * Hence the start of any table is given by get_table() below.
+ */
 
 /* Returns whether matches rule or not. */
 /* Performance critical - called for every packet */
-- 
2.11.0


