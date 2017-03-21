X-GM-THRID: 6399941946737950720
X-Received: by 10.99.122.65 with SMTP id j1mr16320141pgn.89.1490102609653;
        Tue, 21 Mar 2017 06:23:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.10 with SMTP id w10ls2776338itf.13.canary-gmail; Tue,
 21 Mar 2017 06:23:28 -0700 (PDT)
X-Received: by 10.99.125.5 with SMTP id y5mr19264715pgc.30.1490102608681;
        Tue, 21 Mar 2017 06:23:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si3304750pfb.7.2017.03.21.06.23.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:23:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so16449202pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ovM8nioOLcTt0KuQLFpJDuwaZx5B8paKEaT2fTWiFZg=;
        b=B0VhftWnGUkniommDZBcjXNtYYwoQTAJw0V6I3NvkUs3tNIUkpjwmiOzbZmEUM4nXk
         yt4ya7konP0JUsFpdBsyEqrvPeYK4kpVtSbVTwe9L7g6ZWja0f8HTdkI5/FMVy8+8npD
         GBYKOHD6/x0LqQyu4KEAGoVRMVaMfXi8QJeXN7sW614XFnXuZKROWy5rrUMRkQ6KShAk
         Skl3l9ER2Gh5aCdUoxSS0k6h4RsqwIEKgyCPRL9hhcJ0SlTnuFG6NTmOCjw9wn/5hdkh
         94Ehwy8O5R8/p4LDgyUEetF9lmOZdsXpSsQt1o5Em+wgns1f2Rh57xjwP0xaCl6Wuo1x
         PExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ovM8nioOLcTt0KuQLFpJDuwaZx5B8paKEaT2fTWiFZg=;
        b=D5KYggoIDsieBfvxt49LWwwbp4wgSrW60rrgIqNZTECQAENI7ONl53tJNAKqG/U7k6
         OHDijJq0hsod2yvXQT/6TGjOdnqndzFwrNxVvi7pVacHf/7taBh47M1QsFqfOu0oqKRo
         RfX3J9FzBhQedUkKauJ3Mgj412KVfRHLWo3SqVFq+3k+DNvt9CMF8St53xEt0+G/7cg9
         ERZGbaaCBYrBqXlqi/Ua4xi2AKm8qNaMcapPALnIneR3HWaoY9YBoiy+ezZIc7zYsF+P
         kq/MT4uGX/0l5lCPYvGhH96ro63AGikzmf/K9fAeBLN64btgp790z3jUtENaOCTKmGzf
         /8EA==
X-Gm-Message-State: AFeK/H0/HkYGtu5GZY4py0vc8nF5kU2KtPpFyEU3VKIIcm/s5XieEoudv9sCkIPCKLN5ww==
X-Received: by 10.98.28.72 with SMTP id c69mr39745375pfc.8.1490102608469;
        Tue, 21 Mar 2017 06:23:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v143sm40038502pgb.47.2017.03.21.06.23.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:23:28 -0700 (PDT)
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
Subject: [PATCH 2/2] netfilter: ipvs: Compress return logic
Date: Tue, 21 Mar 2017 18:53:19 +0530
Message-Id: <1490102599-27579-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>
References: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>

Simplify function returns by merging assignment and return into
one command line.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 --This is my contribution to the netfilter project of
   Outreachy Round 14.

 net/netfilter/ipvs/ip_vs_ftp.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_ftp.c b/net/netfilter/ipvs/ip_vs_ftp.c
index d30c327..c93c937 100644
--- a/net/netfilter/ipvs/ip_vs_ftp.c
+++ b/net/netfilter/ipvs/ip_vs_ftp.c
@@ -482,11 +482,8 @@ static struct pernet_operations ip_vs_ftp_ops = {
 
 static int __init ip_vs_ftp_init(void)
 {
-	int rv;
-
-	rv = register_pernet_subsys(&ip_vs_ftp_ops);
 	/* rcu_barrier() is called by netns on error */
-	return rv;
+	return register_pernet_subsys(&ip_vs_ftp_ops);
 }
 
 /*
-- 
2.7.4


