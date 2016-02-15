X-GM-THRID: 6251539005644472320
X-Received: by 10.66.102.69 with SMTP id fm5mr16675172pab.47.1455549850166;
        Mon, 15 Feb 2016 07:24:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls839346igv.20.gmail; Mon, 15 Feb
 2016 07:24:09 -0800 (PST)
X-Received: by 10.50.109.136 with SMTP id hs8mr12719163igb.12.1455549849766;
        Mon, 15 Feb 2016 07:24:09 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si2944297pad.2.2016.02.15.07.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 07:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id yy13so87215235pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 07:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZXrsiEuO0KDDC+XaNj6MGNs9Qj4E/n1CheTjgd57xxM=;
        b=H/1ICrJJ9vmnww3s7X96SVjy9Z5OkVOeVShZ6YbnPGumNT+ToxrqXRzGR1dgFeJaU+
         P9tpbBVnXMpRCxe6T4/tlF22534RxX/qiPqRQBO8y4YAiuPPkHWnFk7SPAASErv1JcxA
         2H+M7XXYLPQ3hXWrtgd3Ry3OfuGVVEod/vknMaR2B4kl6poYHWF5FsqBYQCGDQqztsLm
         DqzTGMJnmrntwu0uNqjeLR+R4gzJEjA5rbBdiREjPMxpjeDKuKt+Wrdt3C5Bp7SOBQ2M
         2nR/C3ilFE27A0JVKQQDnpbgxStlBQZzRe0sp4nCPf23yiH7cZSVq1bBF8RlfDrhlON+
         FBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZXrsiEuO0KDDC+XaNj6MGNs9Qj4E/n1CheTjgd57xxM=;
        b=ffdB9imBt/DY4oSrRPScTO/So9X5EtG45lppDQ/tc2Ts1F4JuHgaO2nK0B4jWhcYfm
         LRnU8HHrzq/mrp864iiwRkISrEo9GZi1WrK32pO+NsplRlTaHFItxFGaf4gfWPA/YBD1
         vhjYWw3Z9UPGROUAzzOKrpJDdSoA7W0utoTM5xT1YjGTcZ+S8ByrmHvmR2oo6PLt8vlc
         tU2+d8TT2SoHfuzD2aZeM3zll3uiJ82fjuk8BSkd0cThmNdIgz7f4KXBrr1C9VCbHoU+
         sNHjRBluEcQAQXMg1ntgTu1LKQS6JbHDKQTpipkIm5bYu/fNZHdleHxIaIiV5An2DakO
         7q6A==
X-Gm-Message-State: AG10YOSR3OrvFiSz2ZHlrZ9ZW4YvHBD0ejJLxrfYRTDbqxRDG2vj/OPUHESABJmLeIz4jA==
X-Received: by 10.66.161.66 with SMTP id xq2mr24200413pab.153.1455549849644;
        Mon, 15 Feb 2016 07:24:09 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id yl1sm39415531pac.35.2016.02.15.07.24.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 07:24:09 -0800 (PST)
Date: Mon, 15 Feb 2016 20:54:26 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove braces from single statment blocks
Message-ID: <20160215152411.GA29039@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Braces are not necessary for single statement blocks.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index ba2b940..c62d25c 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -669,9 +669,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 			if (!ret)
 				break;
 
-			if ((reg & 0x1) == 0) {
+			if ((reg & 0x1) == 0)
 				break;
-			}
+
 				counter++;
 				if (counter > 200) {
 					counter = 0;
-- 
1.9.1


