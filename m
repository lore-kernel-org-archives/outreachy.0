X-GM-THRID: 6399870143121326080
X-Received: by 10.99.193.17 with SMTP id w17mr16830721pgf.85.1490085890909;
        Tue, 21 Mar 2017 01:44:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls2637016itj.20.canary-gmail; Tue, 21
 Mar 2017 01:44:50 -0700 (PDT)
X-Received: by 10.107.35.71 with SMTP id j68mr8573068ioj.97.1490085890473;
        Tue, 21 Mar 2017 01:44:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si1873489pfv.3.2017.03.21.01.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so24165741pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CvzFK7IjBuQEiASkVGVd67OaYGNOEY77rWf/gspYdZk=;
        b=pZiZX2C8gpN0C8BzWwQWbomQK3yYzQgxhhvkl/j/j190dKLAR0osVxOz84vbQxCnvA
         NszkBWZ/+FilkhnIF0nCEBZjqeGGUF04/tGKvuoivSPWwAUHmbj+Cdd7cbSuyNk2Hmzq
         38aR79EKsfBS7mDYyxOWwToFt8au0OHhq4G/9VAXrAry++/fw3FTHHmkRRcW7t214z4I
         8oPf8hQzpcY68IgNCNdRLPo4glwgkYclJx02p3Q40PwYpgtE17zLjbcSescgoiZMyB8Y
         S0AD4Ga2kGttk42vwkWP6Z/XAaDQFIcwdrOwXLCifWp7X2S79e/VJIO0nvb2pa9MQoXj
         C3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CvzFK7IjBuQEiASkVGVd67OaYGNOEY77rWf/gspYdZk=;
        b=oe/SFrPAYBihUPUa1n3H8EHPZl8LXYg22ko68ksi/pO/bs7kLxCREiAxP6l3Qgaweh
         WU+qQWR5is/8bbGsCFPUMV8NfkUsbFSnpEjBo0gBRpFljOTBkzhCBL22Gg3SoufwD7tO
         py6RWSZmkv1LPAxieP2WD91hvtMZvR+mUxgsvq1BDz3xVto+h5STGO4KmMZib2/ijE2U
         APqf4yAwIweDDhXSj+oZShvSlRb8TF5nZc1IWvo7X9tD4TDDFKAmwaszsccDKvAxotiI
         SyYNYXPL41r+md+FkpmIHPYRVxsThCDQZzKvdw0iPVxl9DdsxXOa16xw1f6ziZuDDcE+
         6BoA==
X-Gm-Message-State: AFeK/H3WQ8qbYg//sp4FeN7e4LWy65bIF+JurxprQMdF5YYOjH1D44Bu5p0Zt9SY/9PM0g==
X-Received: by 10.84.233.205 with SMTP id m13mr19824261pln.49.1490085890263;
        Tue, 21 Mar 2017 01:44:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e7sm38153206pgp.2.2017.03.21.01.44.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:49 -0700 (PDT)
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
Subject: [PATCH 2/5] netfilter: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:36 +0530
Message-Id: <1490085879-1827-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure. When NULL
represents failure, !x is commonly used.

This was done using Coccinelle:
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

 net/netfilter/nf_conntrack_netlink.c | 2 +-
 net/netfilter/nf_conntrack_proto.c   | 2 +-
 net/netfilter/nf_nat_core.c          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/netfilter/nf_conntrack_netlink.c b/net/netfilter/nf_conntrack_netlink.c
index 6806b5e..cdcf4c1 100644
--- a/net/netfilter/nf_conntrack_netlink.c
+++ b/net/netfilter/nf_conntrack_netlink.c
@@ -779,7 +779,7 @@ ctnetlink_alloc_filter(const struct nlattr * const cda[])
 	struct ctnetlink_filter *filter;
 
 	filter = kzalloc(sizeof(*filter), GFP_KERNEL);
-	if (filter == NULL)
+	if (!filter)
 		return ERR_PTR(-ENOMEM);
 
 	filter->mark.val = ntohl(nla_get_be32(cda[CTA_MARK]));
diff --git a/net/netfilter/nf_conntrack_proto.c b/net/netfilter/nf_conntrack_proto.c
index 2d6ee18..48d8354 100644
--- a/net/netfilter/nf_conntrack_proto.c
+++ b/net/netfilter/nf_conntrack_proto.c
@@ -358,7 +358,7 @@ int nf_ct_l4proto_register_one(struct nf_conntrack_l4proto *l4proto)
 		proto_array = kmalloc(MAX_NF_CT_PROTO *
 				      sizeof(struct nf_conntrack_l4proto *),
 				      GFP_KERNEL);
-		if (proto_array == NULL) {
+		if (!proto_array) {
 			ret = -ENOMEM;
 			goto out_unlock;
 		}
diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
index 94b14c5..922bd5b 100644
--- a/net/netfilter/nf_nat_core.c
+++ b/net/netfilter/nf_nat_core.c
@@ -626,7 +626,7 @@ int nf_nat_l4proto_register(u8 l3proto, const struct nf_nat_l4proto *l4proto)
 	if (nf_nat_l4protos[l3proto] == NULL) {
 		l4protos = kmalloc(IPPROTO_MAX * sizeof(struct nf_nat_l4proto *),
 				   GFP_KERNEL);
-		if (l4protos == NULL) {
+		if (!l4protos) {
 			ret = -ENOMEM;
 			goto out;
 		}
-- 
2.7.4


