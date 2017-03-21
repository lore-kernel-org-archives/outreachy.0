X-GM-THRID: 6399943701223702528
X-Received: by 10.157.45.11 with SMTP id v11mr16677708ota.105.1490103014466;
        Tue, 21 Mar 2017 06:30:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.216 with SMTP id p85ls4357522ioi.40.gmail; Tue, 21 Mar
 2017 06:30:13 -0700 (PDT)
X-Received: by 10.99.0.8 with SMTP id 8mr1846206pga.95.1490103013561;
        Tue, 21 Mar 2017 06:30:13 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si1972370pfv.3.2017.03.21.06.30.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so16474896pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1zvyKyC86dFeL3A9VsXh99IQYbN8B7Tdhx6gXaxUlNM=;
        b=TLfck6QhaBM/R0wvcnVpxs6I2DqCRrRRZyAVEsYF+CNhrDg4XFpZcU5IEjRSBNtEAo
         fEJ+UI40eVGl+ck0YawZHDDg6zVCPcYNGkP/5uUhXOpoLRbVIT8djXoMPGD7SSE/5Rmh
         4TQY0UkIac0Hv65TeVUpRM8JBtV5A00y2YLb31z8G8ijKq90a92sGxlpjDtFS6xw87Xb
         heJzmPhnF92hvnvsxQbGciIi1IARBUEoq700siKhy5sBcwHSxICy0f/ZVArt27YSeBG0
         e3aRvTQpCYwvjzYTRl3Zrs6xiaX74VmdJCgU1EQT035MpHcNrvAl+v91EHIN+7pQqiob
         LTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1zvyKyC86dFeL3A9VsXh99IQYbN8B7Tdhx6gXaxUlNM=;
        b=rRlxgPlEZuG94GRM8JlmYtINNZR5G77xu2J4YYmnSGuLwthJhmQt01BgjRAzm28f6s
         3F9nWjuLXjZPINLjM2ODx8cJsKzpnh+u5b1XSyr1vzGLa/4Hqr/lSvp8h3erfJalpVae
         nojrGwcyWHWkEwSdOCXOrQToVXbZPy8MWXRxGq9bursrx671sldSLvRXGaMUV3Ybw4Tm
         s9r5rTYBo7/kWDT0rnxJqss3koBo7FWrF9b6+4T/3Lixji94YGkLjHicqhwyZiGxGvXQ
         +Oxad/LKIW73zznNyorfffOMtwAsx5niWSpSAc18Wo5o3T3QyrjNb3J8eupdk00ZHvuu
         dzQg==
X-Gm-Message-State: AFeK/H2B7VVLQg6Wa3IOHFgPiUr3cUL7Mu7LcSGZjTs4425X1zRagWAxY3o2G4A4TQpiUw==
X-Received: by 10.99.157.6 with SMTP id i6mr22412083pgd.87.1490103013361;
        Tue, 21 Mar 2017 06:30:13 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n85sm4055017pfi.101.2017.03.21.06.30.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:12 -0700 (PDT)
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
Subject: [PATCH v2 1/2] netfilter: ipset: Compress return logic
Date: Tue, 21 Mar 2017 19:00:07 +0530
Message-Id: <1490103008-665-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490103008-665-1-git-send-email-singhalsimran0@gmail.com>
References: <1490103008-665-1-git-send-email-singhalsimran0@gmail.com>

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


