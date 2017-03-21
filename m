X-GM-THRID: 6399925601472348160
X-Received: by 10.99.130.67 with SMTP id w64mr11653180pgd.64.1490098800683;
        Tue, 21 Mar 2017 05:20:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls1688816otd.11.gmail; Tue, 21 Mar
 2017 05:20:00 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr17227834ywc.45.1490098800321;
        Tue, 21 Mar 2017 05:20:00 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si3277473pfb.7.2017.03.21.05.20.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 05:20:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n11so10361568pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 05:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=m2qwBXPQtDAn0JlvN/warLxFXD340Kfzj3tVY5MNBqM=;
        b=irJ2nlSzPQW5BgVj2Py9wLVqg24OgS/mk+zQQkpgZouYFtOzlp+q8DbgbJR0mY6hws
         ZSSNwdROnfOvGVoZxHE3Ac5vbwern6rL8il2ynx3HvA3TlZZVPiYeSmBp2QTZHeneRtM
         scTfS8Egpq+8rU560KCYGtB4N0wiP1ZaYAPUpvBMBu/kZ5rwhlGmyMpOALVyoJicrh5V
         aN+w0A5H3QT/eH1wwh0Ug22eM0WXnLqunnehEOQ/30I8tME5d0bXi5Wd1ckSN7sXpFg1
         M+ziZQZ8eQqeHRKv1tU5Sw4L5nWfWou9m4mj8kmEkR0Com4kr6vrlY69UrdZKv6cClms
         Z82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=m2qwBXPQtDAn0JlvN/warLxFXD340Kfzj3tVY5MNBqM=;
        b=hnk2CR5ORG3vZ1kh3SGTc0fdd40ipNu5MH4vHo5lA81A56a1yNs5LgeYUhh1QZGna+
         vqe+eVRhY5MZP07hYR0YCg+JZ+7+2OLqem426RnEPwz9NDzCtYLgwxli1eyHQNdj1TAW
         c3KCW8b3ZoDpgFriA3ronlYGwv1lYg7JQbY0Gann4tvbvmKCZElw3FV8SADeJyysPf/5
         sxv4ta1PV3um1wrdqnw4mLhFFvHObXu/jXX/S0zJaXbWDZAwqRgVFa8CYXDiKrTAQoWs
         BSWiOr1cwDoKBGLxvrHX95rKfT1P5mfa+udcdnhHP98iodPNt5E80Oiqqk8OpT5rKJuQ
         EngQ==
X-Gm-Message-State: AFeK/H14yUC2tS82EKV7LAIqPAhosnl02+ALMLfu1Q+LXQV+8zhkvH9rvRx2+khjmS7cSg==
X-Received: by 10.98.81.132 with SMTP id f126mr11028480pfb.25.1490098800063;
        Tue, 21 Mar 2017 05:20:00 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v17sm29513980pgc.20.2017.03.21.05.19.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 05:19:59 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] netfilter: ipset: Remove unnecessary cast on void pointer
Date: Tue, 21 Mar 2017 17:49:53 +0530
Message-Id: <1490098794-22518-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>
References: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 --This is my contribution to the netfilter project of
   Outreachy Round 14. 

 net/netfilter/ipset/ip_set_bitmap_gen.h | 4 ++--
 net/netfilter/ipset/ip_set_core.c       | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/netfilter/ipset/ip_set_bitmap_gen.h b/net/netfilter/ipset/ip_set_bitmap_gen.h
index 6f09a99..d302d98 100644
--- a/net/netfilter/ipset/ip_set_bitmap_gen.h
+++ b/net/netfilter/ipset/ip_set_bitmap_gen.h
@@ -232,7 +232,7 @@ mtype_list(const struct ip_set *set,
 		if (!test_bit(id, map->members) ||
 		    (SET_WITH_TIMEOUT(set) &&
 #ifdef IP_SET_BITMAP_STORED_TIMEOUT
-		     mtype_is_filled((const struct mtype_elem *)x) &&
+		     mtype_is_filled(x) &&
 #endif
 		     ip_set_timeout_expired(ext_timeout(x, set))))
 			continue;
@@ -249,7 +249,7 @@ mtype_list(const struct ip_set *set,
 		if (mtype_do_list(skb, map, id, set->dsize))
 			goto nla_put_failure;
 		if (ip_set_put_extensions(skb, set, x,
-		    mtype_is_filled((const struct mtype_elem *)x)))
+		    mtype_is_filled(x)))
 			goto nla_put_failure;
 		ipset_nest_end(skb, nested);
 	}
diff --git a/net/netfilter/ipset/ip_set_core.c b/net/netfilter/ipset/ip_set_core.c
index c296f9b..10a3694 100644
--- a/net/netfilter/ipset/ip_set_core.c
+++ b/net/netfilter/ipset/ip_set_core.c
@@ -1915,7 +1915,7 @@ ip_set_sockfn_get(struct sock *sk, int optval, void __user *user, int *len)
 		ret = -EFAULT;
 		goto done;
 	}
-	op = (unsigned int *)data;
+	op = data;
 
 	if (*op < IP_SET_OP_VERSION) {
 		/* Check the version at the beginning of operations */
-- 
2.7.4


