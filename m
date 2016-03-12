X-GM-THRID: 6261219545555402752
X-Received: by 10.112.136.35 with SMTP id px3mr1969032lbb.8.1457803776118;
        Sat, 12 Mar 2016 09:29:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.212.5 with SMTP id l5ls290080wmg.7.gmail; Sat, 12 Mar 2016
 09:29:35 -0800 (PST)
X-Received: by 10.28.63.201 with SMTP id m192mr1090445wma.5.1457803775719;
        Sat, 12 Mar 2016 09:29:35 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id c140si341030wmh.1.2016.03.12.09.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 09:29:35 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id l68so53928890wml.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 09:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1iCx7V9LtwnRk61Y9gHHeJMt/evgZZP2GFPr1z3dmRA=;
        b=EEa52gP1eGKqTDKFYjYLdwPEASeEJQXbUKhf1r6dRrLEC75m3Ym12IcuTdUxQjwVSJ
         hwThM8aJ2HLxnt6eyaqgs4nraOywrQypr0bKU7WO9Mer4/7OwUV2njEpTSmDsDoZsshN
         08CVoulVctFslSY9wZduhootHAzMP3EKVxcU8s0z/Na9JBhvWXIWZsBHNg60+aHmTORi
         Mj2GjKTa7G7NUt35pAfL8m454kZv5segcfvQiqmMDVJi56+SRnPy7Om4zxudSgKwjGex
         LQWqBRxX0C0FHnonDhv7WBijq3nEZSVb9xwQGWKklbD3H4k4DJcJDRhlv+NPnkxk9kYC
         zxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1iCx7V9LtwnRk61Y9gHHeJMt/evgZZP2GFPr1z3dmRA=;
        b=KRxwnONtAkm8vzCYE6juMJvWvX004re4huDnY9UNTSNXjNtMbeJzAhokP+fYDzvSc8
         09k/EBVTNHQQC5ugTkCxY9E2RLHkqBCFvrKnCmrT7ABn+55lvUcQLtbqjNeTn9tc5QOs
         5TQ8txkxqX0OQRB4ksyG8VgqBUMju6YgRRU7fQRYHwEMRX825pH6JbfY5ME+/Ai7uIKQ
         zCIRR77SylgnFgkqG+ExsgAgflIqY637W2I1ANXRnzt+xfQwZmAklIkQwnHySjHgM471
         eUXzse7Acu/n97JPm3v1OfCwpRNhi7uHy1Ye/l01crxQZZMffuQcPeQ7BKuGqc1hC23u
         ti1g==
X-Gm-Message-State: AD7BkJJV9rCHZC0N4L1P1LLq+pX7hiQ+Oupht95NWSsF5PQpaxhiv2wC44HzaMnLGYbudg==
X-Received: by 10.28.93.79 with SMTP id r76mr9355597wmb.32.1457803775551;
        Sat, 12 Mar 2016 09:29:35 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id z127sm7864674wme.5.2016.03.12.09.29.34
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 09:29:34 -0800 (PST)
Date: Sat, 12 Mar 2016 18:29:32 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libipt_REJECT: Avoid to print the default reject
 with value in the translation
Message-ID: <20160312172929.GA15987@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid to print the reject with value in the translation when the value is the default.

Before this patch:

$ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip filter FORWARD tcp dport 22 counter reject with icmp type port-unreachable

After this patch:

$ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip filter FORWARD tcp dport 22 counter reject

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libipt_REJECT.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/extensions/libipt_REJECT.c b/extensions/libipt_REJECT.c
index 4148776..0e9b7d7 100644
--- a/extensions/libipt_REJECT.c
+++ b/extensions/libipt_REJECT.c
@@ -17,6 +17,8 @@
 #define IPT_ICMP_ADMIN_PROHIBITED	IPT_TCP_RESET + 1
 #endif
 
+#define DEFAULT_REJECT_WITH	IPT_ICMP_PORT_UNREACHABLE
+
 struct reject_names {
 	const char *name;
 	const char *alias;
@@ -92,7 +94,7 @@ static void REJECT_init(struct xt_entry_target *t)
 	struct ipt_reject_info *reject = (struct ipt_reject_info *)t->data;
 
 	/* default */
-	reject->with = IPT_ICMP_PORT_UNREACHABLE;
+	reject->with = DEFAULT_REJECT_WITH;
 
 }
 
@@ -171,7 +173,9 @@ static int REJECT_xlate(const void *ip, const struct xt_entry_target *target,
 			break;
 	}
 
-	if (reject->with == IPT_TCP_RESET)
+	if (reject->with == DEFAULT_REJECT_WITH)
+		xt_xlate_add(xl, "reject");
+	else if (reject->with == IPT_TCP_RESET)
 		xt_xlate_add(xl, "reject with %s",
 			   reject_table_xlate[i].name);
 	else
-- 
2.7.0


