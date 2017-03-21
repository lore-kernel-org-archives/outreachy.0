X-GM-THRID: 6399941946737950720
X-Received: by 10.157.35.9 with SMTP id j9mr16498186otb.74.1490102606789;
        Tue, 21 Mar 2017 06:23:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.72 with SMTP id z69ls4377367iod.16.gmail; Tue, 21 Mar
 2017 06:23:25 -0700 (PDT)
X-Received: by 10.107.18.78 with SMTP id a75mr9022868ioj.58.1490102605695;
        Tue, 21 Mar 2017 06:23:25 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si3304750pfb.7.2017.03.21.06.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so16449202pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1zvyKyC86dFeL3A9VsXh99IQYbN8B7Tdhx6gXaxUlNM=;
        b=EahL0Xtimd6qFpoFyHBXQlzJPNJJfsxb73lNTE0WznLhOqbjC68STLATjSDdTE0UI6
         fHQhSR/QBQp3Oo+ZjzvFC7ICarvcnGMjA8Hb/2ee26Hb2+PYjNsvVZ6a1dcnWlHW/gYj
         ny0WEcRZvrf+v2qeggkqdXxc6tJzORKZ7PU24OLqLnb6ajdtkjuCqtseUskr1QNt113q
         rsx/Mvsncb+zDDFuLtIkhAqo87Xd2jQnIfDez4uULXQNmkSIZjQOKUKJOpYQfGGGimB6
         uSfwV/Dh/0yDzDUtJQxqNrJHNL0NpgAZJzkd7ZzpFEZmcKzmw63Yo8lWp/q3uOqbKOsc
         8x1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1zvyKyC86dFeL3A9VsXh99IQYbN8B7Tdhx6gXaxUlNM=;
        b=LvXuOLBSEhPi4IZ8Hs7TmX7XcjKn6y4VVw4SRyPkuZTzJ8brhN8/Beab1C5y4YakqC
         LKJop67DRsal4eg2RJuv1r4R4rNzIdVHoho1yUJWtg4pytF5aR0PbHYUACsoZ+55QH4Y
         C69PH6ho8moPXNq+WRh6vzuzNr7tU0WcVDjEuafRT7HTJK3nXNpvtG0ImeIiVKZopyTY
         lmhYF91pQL/UsJXEMG+eL4FoLjb+dnP8hzdwEkcmlNtaRBsmkatmXvIVbVBm9wrsZLlj
         cIEBJlQPlw9gFjJEvFqhFtYxCFKVEmlJnuAPgDuDXitxmEWYQGLd083IBqq/GHN83E+1
         KnAA==
X-Gm-Message-State: AFeK/H39yP/lHl1ui3ZSz76NpCsKStyA/+QfZQ+nlgn08IKLTOoASSZN6mBPdZ1/8tUEBA==
X-Received: by 10.98.108.1 with SMTP id h1mr24665730pfc.95.1490102605464;
        Tue, 21 Mar 2017 06:23:25 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e13sm40078308pgf.48.2017.03.21.06.23.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:23:25 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	wensong@linux-vs.org,
	horms@verge.net.au,
	ja@ssi.bg
Subject: [PATCH 1/2] netfilter: ipset: Compress return logic
Date: Tue, 21 Mar 2017 18:53:18 +0530
Message-Id: <1490102599-27579-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>
References: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>

Simplify function returns by merging assignment and return into one
command line.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 --This is my contribution to the netfilter project of
   Outreachy Round 14.

 net/netfilter/ipset/ip_set_list_set.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/netfilter/ipset/ip_set_list_set.c b/net/netfilter/ipset/ip_set_list_set.c
index 178d4eb..2fff6b5 100644
--- a/net/netfilter/ipset/ip_set_list_set.c
+++ b/net/netfilter/ipset/ip_set_list_set.c
@@ -453,7 +453,6 @@ static size_t
 list_set_memsize(const struct list_set *map, size_t dsize)
 {
 	struct set_elem *e;
-	size_t memsize;
 	u32 n = 0;
 
 	rcu_read_lock();
@@ -461,9 +460,7 @@ list_set_memsize(const struct list_set *map, size_t dsize)
 		n++;
 	rcu_read_unlock();
 
-	memsize = sizeof(*map) + n * dsize;
-
-	return memsize;
+	return (sizeof(*map) + n * dsize);
 }
 
 static int
-- 
2.7.4


