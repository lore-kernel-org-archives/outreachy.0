X-GM-THRID: 6256431526237437952
X-Received: by 10.182.240.137 with SMTP id wa9mr10201812obc.16.1456688979962;
        Sun, 28 Feb 2016 11:49:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls1033652qgd.34.gmail; Sun, 28 Feb
 2016 11:49:39 -0800 (PST)
X-Received: by 10.129.70.86 with SMTP id t83mr9736295ywa.22.1456688979295;
        Sun, 28 Feb 2016 11:49:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id y20si1098387pfa.2.2016.02.28.11.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:49:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so7439973pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JVsDUeEucTtIAjl2k4o+Ypf2vx4bsSExrtM5veoH1nA=;
        b=mOImkReTgRXSF2r4npVt5hMtC8bujD634M4lAfrbKbEf1W1ycstqrao/AW/F29xg0m
         oisE7nHyoZFj6RDFRTIVTJqmpvELdV8bdoWK00ZoaYI+rMPLXsIuJEH8E8dHGHNUr2jq
         H05m2WwyUEjLVW09jvCjDjtzpPWyeB+GuyIk4RZTda+SfnrlghNkjMluxWM1AkKsuRZQ
         DYg64AcXMbEQfuhTNq0oV2bZ5HPbKFSfC2Avc5OJn7uth9lQ0vNZmF3Laq9td22EkZHc
         9u7feZQ6DuUE2VUzAtO+gtu3HG2Whl17mYg1dsDYwNzJokrgB1E7D/yK/6z67hDrX0tm
         ZJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JVsDUeEucTtIAjl2k4o+Ypf2vx4bsSExrtM5veoH1nA=;
        b=Kgm/YrXNisYAmz05xusrvPfW7x/SiHrCdJPDmXDZcETweC4KUo00tVJ3jpTZO8XzUx
         UaZR0Nn2H3pRsCQ1eSGA3Wlz4pFRGMDpjrBfb1mJj56JrLfjfNvaN/k8v8MhQAGQGJJs
         ZZ4atszxQutDxomcqfWb3ODbgNFmet/Cuh69LJ9G+eUMECnyTP2nc/bBMqfWIrJCAB/B
         2a2ZhOwELXK7sB4zEdYtixYzspWidvfOEmFv7ioL+8BH7RXngz2zNQx1pNyzOWCOVY6W
         XJCE5zcI1FFkZijPYObKsethlRFlIpbZqNYSWjNLkfGj0qw+q89s+homhUu8A+qunNLJ
         yhPg==
X-Gm-Message-State: AD7BkJKelce2jLmzK40hNo2D40JOBdRfpydGLO3EVBWuDebdJPgqUWqGunh207ytBsCq2w==
X-Received: by 10.66.124.170 with SMTP id mj10mr17144095pab.92.1456688979085;
        Sun, 28 Feb 2016 11:49:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.168])
        by smtp.gmail.com with ESMTPSA id f12sm32794055pfd.87.2016.02.28.11.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:49:38 -0800 (PST)
Date: Sun, 28 Feb 2016 17:19:43 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: slicoss: Use ether_addr_equal_64bits() insted
 of ether_addr_equal().
Message-ID: <20160228114943.GA4709@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use ether_addr_equal_64bits() insted of ether_addr_equal().

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index ed1c067..b2a162a 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -773,8 +773,8 @@ static bool slic_mac_filter(struct adapter *adapter,
 			struct mcast_address *mcaddr = adapter->mcastaddrs;
 
 			while (mcaddr) {
-				if (ether_addr_equal(mcaddr->address,
-						     ether_frame->ether_dhost)) {
+				if (ether_addr_equal_64bits(mcaddr->address,
+						ether_frame->ether_dhost)) {
 					adapter->rcv_multicasts++;
 					netdev->stats.multicast++;
 					return true;
-- 
1.8.3.4


