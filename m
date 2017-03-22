X-GM-THRID: 6400173146424475648
X-Received: by 10.129.67.28 with SMTP id q28mr12741816ywa.112.1490156433868;
        Tue, 21 Mar 2017 21:20:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls1058524oth.13.gmail; Tue, 21 Mar
 2017 21:20:33 -0700 (PDT)
X-Received: by 10.129.174.69 with SMTP id g5mr20862048ywk.125.1490156433352;
        Tue, 21 Mar 2017 21:20:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si28879pfb.7.2017.03.21.21.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 21:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id w20so3439278pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 21:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oX0j9/jEwczUmc8+JknyWeT+Eo7wg2PHDH5/FBSG+nY=;
        b=NqplOU7JM0hCZx3LOdKtgt3kvZQ3oPZA+c8OAsOso6st5iW3fR/8EG2gGmmpSkKzhD
         dg4wkfaQG/TrEy/KvY5WzRSimAnwNjvsNuxcSO0fgqSOKRj6b3JwXBSRCk9iNUIUI9Vc
         kcw6nMKU5ceUv08IRyM9YGnq1+ivVKtKLiSorqdlzNUuGhDZt6Svn9gzEL/Tb0PmJnmi
         JSg9D6iatR7TF1P147sRhtsBpOOwAY4KaBWUxTmg/cLRgoRsa5ug2ha0fL+3G1uowQ5f
         ueAd3yU31ahoB69lpQromMPRv6clL/w7+6vKyh8vYcqjGAPk/CiXRyKiLrzc78s0wKLD
         XE3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oX0j9/jEwczUmc8+JknyWeT+Eo7wg2PHDH5/FBSG+nY=;
        b=cx9WNrPg3V7R9Uq2/Eg710F4R8XrkC/MYX/najXuWh4N2SbKCCHx/K8YFmgsbRX5n8
         rZ+KU48nQMC7qI7f2bZsxIIEVNvKf5gGEIOb2tpIBNEMkFmPSFxVKsc/XMgqJoupjU0w
         xLKBEul8qeTejSEz6mYwlCeIwyDBKKkLfo17tK3Eqswwmxi4T6arC+LX/xKJ/Tk7E1nA
         JXw/Tak5zKfrzTXikkZ6SsoCWKcKsXPejL6Isb4DwXnd5GN0Ea8azMG9kBIdG2a2r1PH
         Guc79CXnRHoLTFRZBBCHNmYPlY1L7a23FGuoqiueNi4CcCdYR43GoZNGHAKci6Tlu1J1
         T7Cg==
X-Gm-Message-State: AFeK/H0v7TaieaqGcjxKvwDxj3T/HqfppQA8qlza0CVg2c8scFpllNS3Prvszrnw2lqCrQ==
X-Received: by 10.98.67.157 with SMTP id l29mr44276988pfi.251.1490156433092;
        Tue, 21 Mar 2017 21:20:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s26sm370821pge.33.2017.03.21.21.20.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 21:20:31 -0700 (PDT)
Date: Wed, 22 Mar 2017 09:50:28 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: Replace a bit shift by a use of BIT.
Message-ID: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index ff4119e8de42..f00186ac4e27 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -381,7 +381,7 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 	    (ip_hdr(skb)->version == 4) &&
 	    (ip_hdr(skb)->ihl == 5) &&
 	    ((ip_hdr(skb)->frag_off == 0) ||
-	     (ip_hdr(skb)->frag_off == htons(1 << 14))) &&
+	     (ip_hdr(skb)->frag_off == htons(BIT(14)))) &&
 	    ((ip_hdr(skb)->protocol == IPPROTO_TCP) ||
 	     (ip_hdr(skb)->protocol == IPPROTO_UDP))) {
 		/* Use hardware checksum calc */
@@ -613,7 +613,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 #endif
 		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
 					  (ip_hdr(skb)->frag_off ==
-					      1 << 14));
+					      BIT(14)));
 #if 0
 		/* Assume Linux is sending a good packet */
 		work->word2.s.IP_exc = 0;
-- 
2.11.0


