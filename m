X-GM-THRID: 6399943701223702528
X-Received: by 10.99.98.199 with SMTP id w190mr3165096pgb.159.1490103018247;
        Tue, 21 Mar 2017 06:30:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.142 with SMTP id a136ls4377951ioa.12.gmail; Tue, 21 Mar
 2017 06:30:17 -0700 (PDT)
X-Received: by 10.99.56.67 with SMTP id h3mr17551000pgn.73.1490103017300;
        Tue, 21 Mar 2017 06:30:17 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si3410644pfa.6.2017.03.21.06.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so21977078pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ovM8nioOLcTt0KuQLFpJDuwaZx5B8paKEaT2fTWiFZg=;
        b=I+vSTXkIHArC93xIGJuDwmIhMqzMJDH++Q4LJWcGZBRnEyz8c6RHb7beKaiWQDkwx/
         HNo0q4M64ekuCavJEmFW7zyh5Iv4T1IDFCF6PtTYel+t5ACJydfXx2nVwMipeKfwIkoS
         5idL1LYEoqnDfnyjG+qWlEjmo7JyuKAGQUbf9a0Ta2jGLVfyv802JVsVuequgNS9vDl0
         2tRyK9Yp96+FMQMsD9cHKaVipmIRxkHFK5RMqyteXRGvovMq8RhAYB/6TGTePJ/WGrYS
         Yd7aNhyVbiAHctFD3LZ05Eb0ozy7+3LIaM1csDbqhVjJ6KRMP9nfvnRChYSU53+03c+N
         /85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ovM8nioOLcTt0KuQLFpJDuwaZx5B8paKEaT2fTWiFZg=;
        b=MTEa71CWipUy1seYeLxIEfat6rZ+f1KROE4DbLx6cwUkMMaYxm06zZcnv0+SOvDvxr
         oSrgOFXN+5yNyeK/M7EFDqv6kBcGKhHrOrZQd0qznyKxokaWmPeyd9jqKdWzkPRJx9op
         QojDhapJCRKpUD94JyiZkHZGH2VPpYGqMIbp3vIrK5Ilr5vC2sHk7sTx7wxapAnDlqRL
         eOSrE0RBURiGZW6+cWog/wx6NjfxbwJYSeqC3Kz5D+rasRosuM0e1EHMxFP0fZ2hqyZt
         Lm+dbExpW2xO+aXFSBHEHU72HyxrxSk4qYOzYN4kx+u5bjRxilq3HLhYFfb0jJeaoLc0
         JCrA==
X-Gm-Message-State: AFeK/H3jNRo2ql0BBNKRhegUGfYakv1hoZJFWb2kg6Q7gOZVnW2JL6cn8AEFyaZa4YLdJQ==
X-Received: by 10.99.54.140 with SMTP id d134mr37280209pga.91.1490103017100;
        Tue, 21 Mar 2017 06:30:17 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z4sm40119447pge.49.2017.03.21.06.30.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:16 -0700 (PDT)
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
Subject: [PATCH v2 2/2] netfilter: ipvs: Compress return logic
Date: Tue, 21 Mar 2017 19:00:08 +0530
Message-Id: <1490103008-665-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490103008-665-1-git-send-email-singhalsimran0@gmail.com>
References: <1490103008-665-1-git-send-email-singhalsimran0@gmail.com>

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


