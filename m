X-GM-THRID: 6399925601472348160
X-Received: by 10.99.96.80 with SMTP id u77mr16676256pgb.32.1490098797521;
        Tue, 21 Mar 2017 05:19:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls11584898otd.14.gmail; Tue, 21 Mar
 2017 05:19:57 -0700 (PDT)
X-Received: by 10.237.57.73 with SMTP id l67mr4341874qte.58.1490098797156;
        Tue, 21 Mar 2017 05:19:57 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si3349339pfb.2.2017.03.21.05.19.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 05:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r137so17899063pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 05:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VDJlEdntUY9yNv1Da50YpEaKfOfIPzTdYxL58C8nK1w=;
        b=lWjzOq0k7wSslYiwvDRoxuoOnvwXNiFGaZqIaWQ0mJxGwa9qpUP9eq6llda2i36/0d
         FTzMJtRILEgJPTfaRzSKEP/glm87BKsp/AQbtpccLcjgxFxYie5Wx44AM8Bfvh6EPkiF
         mHVJnA3Qb0KVSFDydRD+AuD0lZ5TT6oHJfDS/AUfj3xW/TXHZmzmD0TTr+E+ywKux5JJ
         3A+SWKm9BYdI83ShxO9o5jgSZOvXWFAOvpTTT2VXMjQmF3lTlYCg+HVH6mKDCsFZ8aPM
         yW1nvqRtpvWw3dr8S7cgwLx68EVH5yMCVl572vcfaRpTPo+8PIrDtlB2EkcgmOtN+c6p
         /mxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VDJlEdntUY9yNv1Da50YpEaKfOfIPzTdYxL58C8nK1w=;
        b=EFeZ1aGSJ1TvhNM7MfJ8nL1Ou90WWItLXGKxzjJr31mOw6CW28xFVCigIpEAUkqIIn
         MDkPf5BsRiOH3GOUEL1scEk8pKmh3MizZZOQbxbfcR8fzevOTeMk3Tf+ZzJhdDOAYwrm
         79jrUrtxkA4bL8GkLxIhVfNHBrx2OeYwJF81OafmExLlqj6IZVuDp+3Y5IMhtf5zjaj2
         G3qfriNxb0rRXaVKD3ztAEv1xuNHgZUgy3NBXS46rpsHCqzlj+agaq500LEbi1teStI1
         DvSg+MqpamCFAoB6C/qKju+rS/tNRMO7PJ4bkjrTJv2ekhUcDBQNnkKIpJ2e9gRhPGMU
         M1rw==
X-Gm-Message-State: AFeK/H36hPSIgMrTBPXBGMjY3rRUGL6quZGgN1BMVZa05JmyaxPvUsah4KhDhYizQvJM9A==
X-Received: by 10.84.231.196 with SMTP id g4mr21025830pln.173.1490098796960;
        Tue, 21 Mar 2017 05:19:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h64sm19440678pfe.130.2017.03.21.05.19.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 05:19:56 -0700 (PDT)
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
Subject: [PATCH 0/2] netfilter: Remove unnecessary cast on void pointer
Date: Tue, 21 Mar 2017 17:49:52 +0530
Message-Id: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series remove unnecessary cast on void pointer.

simran singhal (2):
  netfilter: ipset: Remove unnecessary cast on void pointer
  netfilter: Remove unnecessary cast on void pointer

 net/netfilter/ipset/ip_set_bitmap_gen.h |  4 ++--
 net/netfilter/ipset/ip_set_core.c       |  2 +-
 net/netfilter/nf_conntrack_proto.c      |  2 +-
 net/netfilter/nft_set_hash.c            |  2 +-
 net/netfilter/xt_hashlimit.c            | 10 +++++-----
 5 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.7.4


