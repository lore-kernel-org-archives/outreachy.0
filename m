X-GM-THRID: 6200494472986361856
X-Received: by 10.50.79.201 with SMTP id l9mr498125igx.13.1443665119742;
        Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.145 with SMTP id z139ls432885iod.46.gmail; Wed, 30 Sep
 2015 19:05:19 -0700 (PDT)
X-Received: by 10.66.141.135 with SMTP id ro7mr5809584pab.27.1443665119362;
        Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si645690pbb.2.2015.09.30.19.05.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id lk4so57276635pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OINL4N5NDKwTDHDw5O5a+pQTClaXdvm0D7yVtwY/tXU=;
        b=RyLTURL98CLyKITfWksAbNiWgKEwk2ec8eRd1QH1ZPei66BhiLFv7/wz4qQox6z6Jz
         JjgxKCcaZmHA9VS1i9+wAxu35htYGkNcsKEHtXBl2XkqRwZebG1GpztFYhxyhM+Ex5Vb
         aHox9VrIXYn8qZ+QTUclQCy/Nt5udKxlbzoqGdjg2LvddlqLM4PUxSqJRy+mVhpQU78g
         0sNMzRAHPBmfvNsRVRVd2Y3ntUyTXhtpxb/mykN83JKfWYR4bY54cOh7QgX6/X+pkh1x
         2qzRb/emVzB4AJA80R1UCmBWufqQBaQAt/yeGtQxcq+NTThxecdd5SfENi5lv71q+Lla
         fcXA==
X-Received: by 10.68.65.37 with SMTP id u5mr8837061pbs.154.1443665119254;
        Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:81e4:85ec:35c9:4f6c])
        by smtp.gmail.com with ESMTPSA id a17sm3116570pbu.55.2015.09.30.19.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA256 bits=128/128);
        Wed, 30 Sep 2015 19:05:19 -0700 (PDT)
Date: Wed, 30 Sep 2015 19:05:13 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] net: defxx: Fix warning of uninitialized variable
Message-ID: <20151001020508.GA14693@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This adds explicit initialization of bar_start and bar_len
resource arrays in accordance with the compiler warning.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/net/fddi/defxx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/fddi/defxx.c b/drivers/net/fddi/defxx.c
index 7f975a2..bd73948 100644
--- a/drivers/net/fddi/defxx.c
+++ b/drivers/net/fddi/defxx.c
@@ -439,6 +439,9 @@ static void dfx_get_bars(struct device *bdev,
 	int dfx_bus_tc = DFX_BUS_TC(bdev);
 	int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;
 
+	memset(bar_start, 0, sizeof(resource_size_t) * 3);
+	memset(bar_len, 0, sizeof(resource_size_t) * 3);
+
 	if (dfx_bus_pci) {
 		int num = dfx_use_mmio ? 0 : 1;
 
-- 
1.9.1


