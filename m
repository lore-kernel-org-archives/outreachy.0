X-GM-THRID: 6254745992232435712
X-Received: by 10.182.53.233 with SMTP id e9mr23290999obp.28.1456296535288;
        Tue, 23 Feb 2016 22:48:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.142 with SMTP id u14ls1374506qge.82.gmail; Tue, 23 Feb
 2016 22:48:53 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr36908462ywc.55.1456296533616;
        Tue, 23 Feb 2016 22:48:53 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id 79si221821pft.0.2016.02.23.22.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 22:48:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id e127so7440734pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 22:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xHDROOx3l3lXmuRK03lFupGE/thWyZ3DZ9R767HPyqQ=;
        b=Kx9Oyi5WvoRyA1NZGchufWrogIdv3EaohUYc6d42E/7aIFK+3CIiwufozP4Rx49us4
         4QudrPEeohuDSa9tD/qmh6iPQ9dCMZ1YHbhCZ23ryd/lKm8MLyuMFehxhNu/Xw+0qHCV
         SswH8kMzzEMqsJb1AHozDct4H8AdZQiUX7GGAc4x63Pq5JVrafTp5IPItjfUH5Xgqj/e
         rwufzD+o09WnfxnR28MQ1sWgMwmuZv6LFK2LnFUtMt10JBxYjdktjazAKwyUx6r6cDmi
         IQ+nvWlkTrTGEkZrE4B2mmXvTWmeqW6k9y3Nz9GekkD2CltVmVjjC8Flcr6i7W1r+ikN
         N6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=xHDROOx3l3lXmuRK03lFupGE/thWyZ3DZ9R767HPyqQ=;
        b=iXHYXOMtBbY5nTUQcZjvRoBUuRd9Ok/i7mb5jDjmdOh6vyl6og+/MT0mx5rTZ8438Z
         /rGW2kAQ6FFQ0Gt6DwKCZifkPJCBtIKw7nUNf07sJMaI8rnBIb4D4cacBfyikci2l2ox
         4iZSnJonZ28EhcNjr3HZ+K4kp3qq3GmMqc9/FBIuVysrvBXe5tHGzstjhiPNmY/pnDCs
         vLurlaRUeQIYf91tnOZEmbRpZus5E0mC3LtTKW7OzXL4z6/u1zaFFHSsp5vRucyUL734
         Ht9bXSbGoVXY4ti6U4+VP/wY8hXvSP5GE1jGpA71l0Fgi9XBxGTHWYc8IpvbvVjcEffp
         UBFA==
X-Gm-Message-State: AG10YOSV4tqdjbCEYmPouz8+IT9PXI/KeJq9D3QL9GbjEGZuAb0UK+vsTOrL6JYlnSAp0w==
X-Received: by 10.98.67.67 with SMTP id q64mr52938964pfa.44.1456296533438;
        Tue, 23 Feb 2016 22:48:53 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id r87sm2116416pfa.61.2016.02.23.22.48.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 22:48:52 -0800 (PST)
Date: Tue, 23 Feb 2016 22:48:52 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: replace ternary operator with min macro
Message-ID: <20160224064843.GA17889@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use macro min() to get the minimum of two values for
brevity and readability.

Found using Coccinelle:
@ type T; T x; T y; @@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c | 2 +-
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index b167c50..0585e0b 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -277,7 +277,7 @@ static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 		startbyte_size = 1;
 
 	while (remain) {
-		to_copy = remain > tx_array_size ? tx_array_size : remain;
+		to_copy = min(tx_array_size, remain);
 		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
 			to_copy, remain - to_copy);
 
diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index 58449ad8..b31f111 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -157,7 +157,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 	}
 
 	while (remain) {
-		to_copy = remain > tx_array_size ? tx_array_size : remain;
+		to_copy = min(tx_array_size, remain);
 		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
 						to_copy, remain - to_copy);
 
@@ -201,7 +201,7 @@ int fbtft_write_vmem16_bus9(struct fbtft_par *par, size_t offset, size_t len)
 	tx_array_size = par->txbuf.len / 2;
 
 	while (remain) {
-		to_copy = remain > tx_array_size ? tx_array_size : remain;
+		to_copy = min(tx_array_size, remain);
 		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
 						to_copy, remain - to_copy);
 
-- 
2.1.4


