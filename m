X-GM-THRID: 6399870143121326080
X-Received: by 10.13.238.134 with SMTP id x128mr17984953ywe.59.1490085884203;
        Tue, 21 Mar 2017 01:44:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls2654317ith.16.canary-gmail; Tue,
 21 Mar 2017 01:44:43 -0700 (PDT)
X-Received: by 10.99.39.6 with SMTP id n6mr16607501pgn.98.1490085883562;
        Tue, 21 Mar 2017 01:44:43 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si3284719pfb.2.2017.03.21.01.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so9694547pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+xYUN6Kgym0uMboVYBrVl/NHAnC5EIA9s7c2X9xj0vU=;
        b=bW1ljDjYw8uQ5O8TEx/7CIDI84PuiMe+Sfc/HHTAaukzXXZPqknjZkq0wFQUYMF7Ef
         6PGLJn1e4R1aSYzTMKmm0vlnL25ckmVzXn6byaG1VVIE0d4ajCtTJY70rdYN814GfiYE
         l9LzI3/8T3sqfmF3A8GH5jMFd7RAc+aaD1ab1l4n8ec2FuPpYy7uvlKATYVMDncCPCJF
         NkFeCtccvrsvMFGD7z388I/t0HuHSwVaSWJcKyqpcXAmzoMfz4UYBzoYxlJ/kwWFrdmV
         kp9M8mTQ7l7c23H3Fd3902zxu/MAbwOfB3xfG9aKThLfx4myR+t0I7gsvYFBx+Hde0s2
         B3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+xYUN6Kgym0uMboVYBrVl/NHAnC5EIA9s7c2X9xj0vU=;
        b=gZn8OcASoxkPGaCPV7UPMFOoVplCAzC+mUxBCNMb5bdAovoHNFsOH1yb7zcof1Htdp
         5VPnaaxNFiO3Bho0yaALId6UVcFMLGzrcQzFbAZBekA3zeKhAe6IcAhgUcFYG15Lqwk1
         lDwpJ9YNEHXGBqH5UWdjqEwUMbBb+X8i9WLUoMIlXRfRl3Nf3l8GyK+o0thlPm+R0w4r
         b1MNrkxGFpVH3kY2PKTT/XKuwBIaVC6CK1ypXNCReVS3b8vjDRi2NQdgnPYXmb8KRG0u
         WTjayCbKXTtUcy5VySN7E+PzoRH0fWAU/rXrK1wft870quG9rrzjzDtLC6/O6wbA0m2R
         fjcw==
X-Gm-Message-State: AFeK/H1tP/mwoQujn6ypDvO09dsX6DSOYZsi8f3n0gIwKvrSf96CFkbN3MAjKvXt4iZOuQ==
X-Received: by 10.84.136.135 with SMTP id 7mr46615051pll.149.1490085883367;
        Tue, 21 Mar 2017 01:44:43 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h20sm37885337pfh.79.2017.03.21.01.44.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:42 -0700 (PDT)
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
Subject: [PATCH 0/5] netfilter: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:34 +0530
Message-Id: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series clean up tests if NULL returned on failure.

simran singhal (5):
  netfilter: ipvs: Clean up tests if NULL returned on failure
  netfilter: Clean up tests if NULL returned on failure
  netfilter: nf_tables_api: Clean up tests if NULL returned on failure
  netfilter: nfnetlink: Clean up tests if NULL returned on failure
  netfilter: xt_TEE: Clean up tests if NULL returned on failure

 net/netfilter/ipvs/ip_vs_ctl.c       |  4 ++--
 net/netfilter/ipvs/ip_vs_dh.c        |  2 +-
 net/netfilter/ipvs/ip_vs_lblc.c      |  2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c     |  4 ++--
 net/netfilter/ipvs/ip_vs_sh.c        |  2 +-
 net/netfilter/ipvs/ip_vs_wrr.c       |  2 +-
 net/netfilter/nf_conntrack_netlink.c |  2 +-
 net/netfilter/nf_conntrack_proto.c   |  2 +-
 net/netfilter/nf_nat_core.c          |  2 +-
 net/netfilter/nf_tables_api.c        | 24 ++++++++++++------------
 net/netfilter/nfnetlink.c            |  2 +-
 net/netfilter/xt_TEE.c               |  2 +-
 12 files changed, 25 insertions(+), 25 deletions(-)

-- 
2.7.4


