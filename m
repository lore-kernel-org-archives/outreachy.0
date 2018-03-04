X-GM-THRID: 6529194595681566720
X-Received: by 10.157.37.111 with SMTP id j44mr1068118otd.62.1520196580336;
        Sun, 04 Mar 2018 12:49:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.8.79 with SMTP id 76ls1631637oii.13.gmail; Sun, 04 Mar
 2018 12:49:39 -0800 (PST)
X-Google-Smtp-Source: AG47ELv32cfPsD2q7NzD89jVCBA3/d0PSfS9Z3GQ1gISSZ8YADPtDjDayPcR1g0UltSKwgjv0a2H
X-Received: by 10.202.181.194 with SMTP id e185mr5759821oif.94.1520196579365;
        Sun, 04 Mar 2018 12:49:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520196579; cv=none;
        d=google.com; s=arc-20160816;
        b=UqrH6uKXkK8fLo4I0n72mEHAwc4PMOJ5gmyQJ5ydeca09YBESkJ4b5yDxENsGGlc7Y
         zhuhTJ7xFwGkLLFFlOmXWu7IStTL71Y4R7iLVQQ0LlGidriu8IQ8daHxVMKXL+oh4PJe
         k056zkvgaMJ5F5yZJaN6CjJCIB4Frys1tflzIuydTZ/9tBKyUgeZdUtRkPgjkHiPfqm4
         /iBfYrjLGdGLSePIdkxZ0cVsomerVJ+1mf8N9wTvJN0UP21g0IDmW1UHDfNBVm5hpDrw
         EPcghropqr99Dde/rJYLdTJprDH05/J3a6gd0xqV/wD5wjF0oI2QsYzhj1Slmo3hoxaU
         FvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KRuwOrNwsp0fF1kPgQFC/iTH1Ld5c7Y5SOixsAeC/v8=;
        b=uzyLI5Z6kRkTppm1iX8MP6UZiQqjIx+910FO38012rr4y+Nmk2L89NEl4kL0x6mNEV
         nB2DmfuGdFL3E/PgZ8NoWtHbd1drlLwKjFGH3XvIexwpmZ0EXqyfxWNvOckT0RcV/aP9
         LpGCLZ08W+7evZwfJBzuj1Tmxsr5g6WFAI8+fSKBqmrYNyp9vjIvEhu8nj9fw8KdvPIO
         GJZJZQUTXpB5WZHTTnCzHFlMLkConD2ba4LDwuiQ5zAhIBVmreBFJonvpyrKmg8dgW0Z
         UJOVhce9OYSvwT5SRH8fDvGN67jhl9TiM5djuPdlJlC/8eZQcM18j1nPL1N4/afuKbsZ
         G6cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n1Ko2H1o;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id x2si745447oia.5.2018.03.04.12.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:49:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n1Ko2H1o;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id f80so6338874pfa.8
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 12:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KRuwOrNwsp0fF1kPgQFC/iTH1Ld5c7Y5SOixsAeC/v8=;
        b=n1Ko2H1oZAxX+syHLSUmcQC+4bNW5nZPNOSzrPq7Yt/Z4EgfjWWp6Ha0offSCsAogZ
         k+jB9MDL7W0jMscnVINA3TVaLuo8i7qNaGtNplAzXe0Z/aTc8uHomTPL3xOnSxwwOVdb
         mhmQywNAjYPVdgCPfhPdvhcs5Y9tw8gODPV9IyUM+rDJTgTiPDBg+fiG58qXVL+fuhEj
         dDU6bVNu+SXdOLhTkR6vQbWyPFC40VTpyFJgZ/sx9yKlmAyECVzMEe/3QNcBccxyLfT7
         g1m7G5gZ0O256sVevlDu1i2Ha4X+YwLlAeIQkp6mAyWNACV5vVo7pJXEFiVepNBidYve
         9DRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KRuwOrNwsp0fF1kPgQFC/iTH1Ld5c7Y5SOixsAeC/v8=;
        b=WgB+/985exLHdxDQEHwSw8N7NRhJ+BSWP8D8xgaO7zAnqJNOzvdfPxBKUXQF74f3Cx
         clxkO6QBSduVmB2yyxmGIBTFZzz4Cjk+aWPZmMDQuNkwaS+SrW6GhVpS3vqLqWzMvubx
         DAH3i6uYW74Kdib9IC6zXSidjCh6YgCx+qoaPmehJv5i4IRElmQcPZa3y7ydl5cyIlYj
         ymcw7aLo1BzP+8o7Toi1BmBmb71sBUgVfGD3kQSDiBsErazwPFuzDW2PaVrvWTMSJhoY
         xSk09TG7Lie1PTiFL7/4E1rmBFcfABD0mfwLyJNRNJouj3Cj7m2MPTvp2rm9pgFex15J
         jh7g==
X-Gm-Message-State: APf1xPAdHok5SfpRKFikIoLDhBh7dqWf7hB3vI6EDoGNEnYXYrMUu6CJ
	uyoKPtVZDiDHy4PpHaPJQGCHcA==
X-Received: by 10.99.103.195 with SMTP id b186mr10334891pgc.446.1520196578169;
        Sun, 04 Mar 2018 12:49:38 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u28sm22954653pfl.19.2018.03.04.12.49.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 12:49:36 -0800 (PST)
Date: Mon, 5 Mar 2018 02:19:11 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: netdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180304204910.GA4840@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace printk having a log level with the appropriate
net_*macro_ratelimited.
It's better to use actual device name as a prefix in error messages.
Indentation is also changed, to fix the  checkpatch issue.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
*In previous version printk was changed to pr_*macro(), which is used
in kernel instead of calling printk() directly. And for drivers,
dev_*macro() or net_*macro_ratelimited() should be used for calling
printk() directly.

 drivers/staging/ipx/af_ipx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
index d21a9d1..9a96962 100644
--- a/drivers/staging/ipx/af_ipx.c
+++ b/drivers/staging/ipx/af_ipx.c
@@ -744,13 +744,13 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
 			intrfc->if_netnum = cb->ipx_source_net;
 			ipxitf_add_local_route(intrfc);
 		} else {
-			printk(KERN_WARNING "IPX: Network number collision "
-				"%lx\n        %s %s and %s %s\n",
-				(unsigned long) ntohl(cb->ipx_source_net),
-				ipx_device_name(i),
-				ipx_frame_name(i->if_dlink_type),
-				ipx_device_name(intrfc),
-				ipx_frame_name(intrfc->if_dlink_type));
+			net_warn_ratelimited("IPX: Network number collision "
+					     "%lx\n        %s %s and %s %s\n",
+					     (unsigned long) ntohl(cb->ipx_source_net),
+					     ipx_device_name(i),
+					     ipx_frame_name(i->if_dlink_type),
+					     ipx_device_name(intrfc),
+					     ipx_frame_name(intrfc->if_dlink_type));
 			ipxitf_put(i);
 		}
 	}
-- 
2.7.4


