X-GM-THRID: 6330560970566402048
X-Received: by 10.98.144.215 with SMTP id q84mr3220851pfk.37.1474239861674;
        Sun, 18 Sep 2016 16:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.9 with SMTP id b9ls2717795ioe.23.gmail; Sun, 18 Sep
 2016 16:04:20 -0700 (PDT)
X-Received: by 10.107.185.9 with SMTP id j9mr3194384iof.92.1474239860714;
        Sun, 18 Sep 2016 16:04:20 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id p193si1335611ywe.6.2016.09.18.16.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 16:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id b204so8838502qkc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 16:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Bo5WafNY81/rh0j7VPIxYKsxTsj3Y5eYChOqP+oOWKA=;
        b=m3rfdfs2ZQXLUQrZhIxpy6/WJsFCXMeW6S/yj1sul2DdjeBrGIvqak47O6nA1Q4ebi
         Hyc+NFrGbFpGBVEtpEka5LX80NXOkLQF44t/AkQRE5McDgl1eY4LHftyqRXqtsvKWc1H
         wGiNfrEN0+7+fZm8qwl/i5h9qdAORPW/GE7cJ8fwu3ZuSY2kDOQLeoJdgww/8nEkxkGk
         89cHSmICp6a/DC7QJCqBa31DYwlWhel5aMjxoBctIrJjx5pa5wxM29EnJ7XFF6FTvt8G
         xSjTLDxQmb0qTaTjRy1G3cGblNersNZRLxLbv8yQGYL1CAjfTNEssEGdcEXh+SueKQEB
         LNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Bo5WafNY81/rh0j7VPIxYKsxTsj3Y5eYChOqP+oOWKA=;
        b=UHNw8sX1ADx0VaSbVlmDqPmLINFHc85aP4x4GmNp3Xr30VM7fWweUjRXi4eLZmqlQU
         qQGXURmIogg8dD7xBgwfvFReSFd1OSHBLb5QmR9FcqRO3iPvFHNoLwKATYC5HbnbVEZd
         aw4U65/aKY5iL8ANqw7TpQYZr9qOBCSxrIjcQ7H3L2M7hUuOBHRqtxvfDTc6XvGey9/1
         6xJ9JfrcDtxxhm56ifqoUpS0EfTRa1IMpj3GbPCzwa1mP2TdxqzqkRrBIgotbC8sm2v6
         g2FCFPTu0MHHqV3PNCSAVsoqMcPgPcvWA2TXIphMH3TwPgcgf5YMBivgzoFLKRqhL3KP
         3Z0g==
X-Gm-Message-State: AE9vXwMCxMykdwklQhbskfOC7WF5teyiPyae7N1TtiPbnoJa59bakAtlxWzNs8mvvCb/Tw==
X-Received: by 10.55.3.193 with SMTP id 184mr27545433qkd.65.1474239860400;
        Sun, 18 Sep 2016 16:04:20 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (pool-108-41-120-25.nycmny.fios.verizon.net. [108.41.120.25])
        by smtp.gmail.com with ESMTPSA id n6sm11389820qkf.36.2016.09.18.16.04.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 16:04:20 -0700 (PDT)
Date: Sun, 18 Sep 2016 19:04:19 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v7] Staging: octeon: Fix blank lines warnings
Message-ID: <20160918230417.GA5289@fedora.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixes several of the checkpatch.pl warnings to
not use multiple blank lines

Signed-off-by: Ronald Rojas <ronladred@gmail.com>
---
v7: changed to staging tree instead of torvalds tree
 drivers/staging/octeon/ethernet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 790477c..d02e3e3 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -694,7 +694,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -937,7 +936,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.7.4


