X-GM-THRID: 6254745992232435712
X-Received: by 10.31.9.78 with SMTP id 75mr37424721vkj.9.1456334426141;
        Wed, 24 Feb 2016 09:20:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.116 with SMTP id d107ls3027280qga.20.gmail; Wed, 24 Feb
 2016 09:20:25 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr37176189ywp.33.1456334425351;
        Wed, 24 Feb 2016 09:20:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si569277pad.2.2016.02.24.09.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:20:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id c10so1265317pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 09:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Vh3jdlkdHbR6Z9yjfOWpGB3uzg/KAOCVkCFzQPmZxTw=;
        b=jmRdmUegGr83MmhUJ4OopSqs5aOo7idQvdWc/aFuVVehykJT0LXefdrO40J8Rp6/FA
         X/xHCsZfADQWSTfVxPdZu0w4yfSgRQrXem4zLpQQ91uwseDcihWDmZlsY8hdJkyykKJH
         BhYPGc8PteaJsF2je7xjjc5vP3PSWxsDelnYXxq8EJFpXOH2VTS/Yt1yomevgxVa48Ak
         tfQ3HY4cxyVc6WMFN7cMd4hPxsbP8YjoXBIfCyAM5D1xcDXOioZ3JoYWwT9c+yKVyqLR
         bCEWkv3keG1ZX31mGFIqrrD6OG/NpSMS8QPBxqsn1qL054KS7gGddAkkdAyRSMmcC6fE
         Fy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Vh3jdlkdHbR6Z9yjfOWpGB3uzg/KAOCVkCFzQPmZxTw=;
        b=h4h+Ec4VPmJ2s9FMUImEaD4hg8N4Rqg24XuOF69zuXNLJUSnjuqQ3zE7FmdeynMGN0
         zsRejQxQBnCRRGll0oc62Rs6JwAZKLwtDDFqqmr3dOO50Ol5qpdBFIy7phhfx8yIQuac
         oUZuteg2HJSIC8FlGZbjQsd2A9T6YHcF9D5F4gUoib0rX7J59/MhlXIsrZgfl+6SSWpL
         OuDiuJS9fisHpc41TlTtCbCTUQOBjAPcRY5yZvNNaXy78rpVvXCjciTPB+uToq/GjkzT
         EvgryMbT6PmfGh+s1SPRlK/ziSrqATxncYcwVJrEa+x/8yaQ7QmukhlTKRXOZyJYzt7R
         XH6g==
X-Gm-Message-State: AG10YOTYOIteyc57NBbhnjeh0mj1l6W+H2+j67mqZB0WIZDS8F85cLts9GlAXypF/upnWg==
X-Received: by 10.98.80.206 with SMTP id g75mr56542960pfj.127.1456334425146;
        Wed, 24 Feb 2016 09:20:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id to9sm6417866pab.3.2016.02.24.09.20.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 09:20:24 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: fbtft: replace ternary operator with min macro
Date: Wed, 24 Feb 2016 09:20:17 -0800
Message-Id: <1456334417-2213-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160224064843.GA17889@d830.WORKGROUP>
References: <20160224064843.GA17889@d830.WORKGROUP>

Use macro min() to get the minimum of two values for
brevity and readability.

Found using Coccinelle:
@@ type T; T x; T y; @@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Change in v2:
- corrected Coccinelle script

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


