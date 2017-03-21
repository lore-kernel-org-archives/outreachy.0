X-GM-THRID: 6399870143121326080
X-Received: by 10.157.11.211 with SMTP id 77mr15261373oth.142.1490085899997;
        Tue, 21 Mar 2017 01:44:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls4212725iof.24.gmail; Tue, 21 Mar
 2017 01:44:59 -0700 (PDT)
X-Received: by 10.99.9.129 with SMTP id 123mr17599575pgj.120.1490085899565;
        Tue, 21 Mar 2017 01:44:59 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si3157828pfz.1.2017.03.21.01.44.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so15452656pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fTQNkIxausquKpAp/PrGgRCSgLdcwJneUykjFBHZ5I0=;
        b=T4yQxeb+GCM6z55a6L7AVfsnR78VuvKLIsTkdp6vRPV6uPrISZ6NTPD4RDnESCRJD+
         5Q2QXWRvDJvJO4rCDUn6a1B/ageeK/DglnJqOMUNWmt2a8UPTTn6eKGvpPVHR0ziWT/9
         pjvkgq4QHxxQfBl0mABLuc9Kik7ug2HfI1NsoMfIMPZ4OmQArZH0Pk4xyz5IyV5EmKbW
         2VMcIjZhh4Tb5+PPSankpAhFVeilV7VW0ehWuh1CNQqc+jqERWEu7uLx3WyrkCJCElqa
         mty/eR1Aygo3Y2hiNBx+zJygo+hgsyj83q3dSDpzTg0CSYeWxypDECAs1haEv89xiOEs
         4Kvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fTQNkIxausquKpAp/PrGgRCSgLdcwJneUykjFBHZ5I0=;
        b=goEj/ePjfTCJFz3lk8/8k0BhyE/JzqHPtAPY77rURTUor3q5Ipv0JmypuV23uCY0hp
         hbMFNHF38Ti/2SGeJE6IwVN3SlldWRFFVZ+ayIelEVBzqdHbbZ7Sz7TUwUfGJs5O25sC
         fccF/fz+6KMhnvbIBs9ib5Ga9NALaLFnGGas+Cy/WXKmTQyIVEBbkCvQ6hxYgs06uxkW
         Fq8DkZK7iGuWKyOINEqn/c4gB1eNeb2U5+uGD+v43RK1dLoGTHVha4v6ErIk0pUFWgtI
         ABdLyCyq9gld6/SxAxf9ldUlE2syGkqpREtohTLWfRCbFWChFQCqNRfYTMPbXGh7xGCO
         N7Kg==
X-Gm-Message-State: AFeK/H0D8tG+ZX4CqPDkSF1dFK1VKMkBM4ipi3HNF++6ku0bs+us4LtZQVlGRKcsEf4zDg==
X-Received: by 10.98.49.1 with SMTP id x1mr37050605pfx.26.1490085899375;
        Tue, 21 Mar 2017 01:44:59 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm38206295pgc.16.2017.03.21.01.44.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:58 -0700 (PDT)
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
Subject: [PATCH 5/5] netfilter: xt_TEE: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:39 +0530
Message-Id: <1490085879-1827-6-git-send-email-singhalsimran0@gmail.com>
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

 net/netfilter/xt_TEE.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/netfilter/xt_TEE.c b/net/netfilter/xt_TEE.c
index 86b0580..5df3282 100644
--- a/net/netfilter/xt_TEE.c
+++ b/net/netfilter/xt_TEE.c
@@ -95,7 +95,7 @@ static int tee_tg_check(const struct xt_tgchk_param *par)
 			return -EINVAL;
 
 		priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-		if (priv == NULL)
+		if (!priv)
 			return -ENOMEM;
 
 		priv->tginfo  = info;
-- 
2.7.4


