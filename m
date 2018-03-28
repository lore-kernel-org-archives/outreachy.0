X-GM-THRID: 6538074938859847680
X-Received: by 10.55.73.149 with SMTP id w143mr21477331qka.12.1522264196854;
        Wed, 28 Mar 2018 12:09:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.120.193 with SMTP id t184ls1928809qkc.13.gmail; Wed, 28 Mar
 2018 12:09:56 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49koKxqQjB4GDzKUgBY5lKFgOEsGPSBypyu25sWVH7Jw/9jwHypOGsGz/ecTPpmxTP5nbzd
X-Received: by 10.55.169.13 with SMTP id s13mr3470722qke.33.1522264196214;
        Wed, 28 Mar 2018 12:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522264196; cv=none;
        d=google.com; s=arc-20160816;
        b=uZ8jdplyBfgMO7vS4h1YAOPIEwaj1gtYoTUl7kmyfIFEdW7p7Xpl7aoW3ZDyuTAGWe
         7xrc2ENGlQRk0shrEXzR5zDBPBBpR5YottzcwRpGMGb0LyaLH+paOVKNBZZYiVTFV63w
         xzmp+j7uQDRm7Ew0aXlwwj4u/aimTO9XesDjl+TOwbs95G+kpkbR7xeCRttnLS4zDIDX
         EaEq950ldQJphQao8Je7GVHa8sXUVK1S2Vb74SEN5UXbiAJRB64vEBW+OhKv76zxz5/6
         YH1MON3Q9dBYWHPJt3+J5yY9786FviFJ4IKrLE/iicX/4kvfSCxz4y1C8tuaCLnELUV+
         EPhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=aHD3PfvJXOfeSAhofrvTdBjPzvzwlA7MxUo0KMdRzao=;
        b=I8lxxOi9Ubd3oyZo8zftQSDGIZypTk04vPp8rJuNuuqHfr/dYc+wCpNbQ49wh30HFo
         qmWQHtKi3CXERZi21vamRXTtMkxH5AraObsCXxPU2rwELYV1f3tA9qOPzEFpC6n8/sOs
         qvRS4uuH8JfJaPYf2vcfWHpF+hL2kD4SkqaIS1e6kZgD3m0ESkgNCO1o/6BfgiNw0DdW
         /PeAbcgTrmiceEtPzKPzjwdiPXv0UC35rvq6EJh97o3AYpi34WT/vgDwFVtQDhfi+sJD
         ryV0cOZreJdtX3LBuy8+BYZg4V5kHHzg4jA60/ZcTWeftQAes89XOwVP6SKo5+fgMT0n
         2FDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kVio7JQY;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q128si253958qkb.1.2018.03.28.12.09.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 12:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kVio7JQY;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i194so1391190pgd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 12:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aHD3PfvJXOfeSAhofrvTdBjPzvzwlA7MxUo0KMdRzao=;
        b=kVio7JQY3ZHhl1r+o3IlGxI9aIbvB8ZGVti8sc5ibYTRcuvdS4y1108JLbhcOnq2ya
         cR05fnLe6edcn0gkEzLlchkVrapRym6VS/hzQJ6ytfB+Aq0M7BuBemM28lO6h6lTTug5
         uJzKbzKmuoiaqeKxhs1NaToSuFFDeQeh2DqYJyMtpKD4LPavDMPNjLi35W4EkBKevqUt
         wme69KPBkNPcL9A4GtNoY1qzrbmTPQ1o/w4VZBZg4U0Oo02vu1TsMPXFSN/MfGmk/Em6
         n0ufDQ8cNdARxf8HsOZYd2inFjd4CLvo1JOk1w/9CcwdlDfEeBv21rOTDh88v9ESgzSC
         hKag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aHD3PfvJXOfeSAhofrvTdBjPzvzwlA7MxUo0KMdRzao=;
        b=aL26UvdRXec1M0hShcas3/7TIpQAAkjInRqeLNw9ZBA+tNquomCS6R+LNajANkWWWH
         LTldQ/EleBT/lMy178/kPDhbEmOVXpOqDIi76FEp+ac2ryPu6h83x2WQRf154wEtNO8N
         BkzYawKiPj3lj02McCKM2Z1XqPqcEagOKdaKI45Hmv0Vi65zT0c/Q/xW5T2LfVUH1nq3
         i48Ao/zAxPgIeWjDyPIMVIRhn9n6qxMJA+7DNdbFa422IU4KMZ70PyC/BiwpTkc27lw0
         DawBFMlUMyD/IfTtK9RRFSaeApsEfn+Qtz0P0Vc2tdX6dXUuhz5dsl4WsU7HoB1WJK/9
         ofLg==
X-Gm-Message-State: AElRT7EOnxeiEUK4qR0Eh4vBNhd4eO9w6fLh1iEcgGa5IV9VKSRrJSF/
	O+S4rxBYq9Ptg0GSNmeqBZPqng==
X-Received: by 2002:a17:902:6984:: with SMTP id l4-v6mr5145950plk.61.1522264195748;
        Wed, 28 Mar 2018 12:09:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f5sm8555307pgn.56.2018.03.28.12.09.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Mar 2018 12:09:54 -0700 (PDT)
Date: Thu, 29 Mar 2018 00:39:50 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: netfilter: Merge assignment with return
Message-ID: <20180328190950.GA3151@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Merge assignment with return statement to directly return the value.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/nf_conntrack_netlink.c | 5 ++---
 net/netfilter/xt_hashlimit.c         | 3 +--
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/net/netfilter/nf_conntrack_netlink.c b/net/netfilter/nf_conntrack_netlink.c
index dd177eb..bfa8b7f 100644
--- a/net/netfilter/nf_conntrack_netlink.c
+++ b/net/netfilter/nf_conntrack_netlink.c
@@ -1497,9 +1497,8 @@ ctnetlink_setup_nat(struct nf_conn *ct, const struct nlattr * const cda[])
 	if (ret < 0)
 		return ret;
 
-	ret = ctnetlink_parse_nat_setup(ct, NF_NAT_MANIP_SRC,
-					cda[CTA_NAT_SRC]);
-	return ret;
+	return ctnetlink_parse_nat_setup(ct, NF_NAT_MANIP_SRC,
+					 cda[CTA_NAT_SRC]);
 #else
 	if (!cda[CTA_NAT_DST] && !cda[CTA_NAT_SRC])
 		return 0;
diff --git a/net/netfilter/xt_hashlimit.c b/net/netfilter/xt_hashlimit.c
index 66f5aca..9e8ba2e 100644
--- a/net/netfilter/xt_hashlimit.c
+++ b/net/netfilter/xt_hashlimit.c
@@ -534,8 +534,7 @@ static u64 user2rate_bytes(u32 user)
 	u64 r;
 
 	r = user ? U32_MAX / user : U32_MAX;
-	r = (r - 1) << XT_HASHLIMIT_BYTE_SHIFT;
-	return r;
+	return (r - 1) << XT_HASHLIMIT_BYTE_SHIFT;
 }
 
 static void rateinfo_recalc(struct dsthash_ent *dh, unsigned long now,
-- 
2.7.4


