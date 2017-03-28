X-GM-THRID: 6399943701223702528
X-Received: by 10.98.42.79 with SMTP id q76mr6818257pfq.10.1490691996363;
        Tue, 28 Mar 2017 02:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls10313727ott.28.gmail; Tue, 28 Mar
 2017 02:06:35 -0700 (PDT)
X-Received: by 10.200.37.168 with SMTP id e37mr8735686qte.18.1490691995912;
        Tue, 28 Mar 2017 02:06:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si588269pfa.6.2017.03.28.02.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 02:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so19823037pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 02:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/3ycLDPFLV9ziZorNwMhx6ncCGPVfAa6bBWxxMJal/Q=;
        b=sPN99T6ScrQ5eV3Q7SRMXsQlRN3PJ6117b+IpiivMZsQyfHNG5Xfz//GeauoIDoPzk
         Bp26JuH3jmA4tuvStaexhcTM+w3x4mg2Y86dD8LMeTbbStX1s501Tc6L9UbyosHYUYE8
         JlVZ3khfjomPwRcCD3n3opu1MFsxourBvl2SJFkSvMv7MVwgOt+cSsrlWRZhAIpUVQmH
         OKMBZTN32xVvYw9tpcgBZvHicGKhPs35ARaYv6xoVp7+VwW44WwOlTQLoZF9uHPXMp62
         GU+LI7YHCaMhewksXokaAjJ5utrvzdEFQD5Cc+zVzyINPinJfqpL8A9Z6o3XYDIs4Vme
         LyCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/3ycLDPFLV9ziZorNwMhx6ncCGPVfAa6bBWxxMJal/Q=;
        b=h936dHSdR7G4E4S4YdUWPu7UUsKDNfQUREhTTODsePc8f4/zT5SwXeAG85uFBOGH3s
         kP21ytFo4G3Se8FvnX6O0i3NyyKhzePH8oTsjVH8SNV2LKJzhzTcJVo5yaJh3odNciFZ
         9eKfNSUum37Yn+VuCemFViI2c+xddRAY7ms0rkMjtifFy5NDp7BudU2fOhlj13Cmluzu
         j3qjdcqLVTH70bxsWSYwTjXixKnLx6ficrQtrU9vhSNwWQVk4Y9gPS8f8tzvPcKgSBPT
         a/jDDRHW2CnlBX5CqRD3FIocDotM2TPMQ405cDltuszgUaBlt1XLriRqdYDso3OJgyU2
         KxRA==
X-Gm-Message-State: AFeK/H1RmaKCkB1mUsUp8qnfymjM78u1gWn4dMTjLN8TVTF8rlKVfyiLo2amtN7LqAprnA==
X-Received: by 10.84.232.77 with SMTP id f13mr20941571pln.95.1490691995685;
        Tue, 28 Mar 2017 02:06:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t66sm5986204pfk.53.2017.03.28.02.06.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 02:06:35 -0700 (PDT)
Date: Tue, 28 Mar 2017 14:36:33 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	wensong@linux-vs.org, horms@verge.net.au, ja@ssi.bg
Subject: [PATCH v3] netfilter: Compress return logic
Message-ID: <20170328090633.GA22149@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into one
statement.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 v3:
   -change commit message.
   -merge two patches into one.
 v2:
   -Change the subject of cover patch

 net/netfilter/ipset/ip_set_list_set.c | 5 +----
 net/netfilter/ipvs/ip_vs_ftp.c        | 5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

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


