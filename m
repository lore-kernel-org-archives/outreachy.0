X-GM-THRID: 6253454979365863424
X-Received: by 10.50.87.7 with SMTP id t7mr3642790igz.11.1455998080613;
        Sat, 20 Feb 2016 11:54:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.131.131 with SMTP id om3ls235645igb.19.gmail; Sat, 20 Feb
 2016 11:54:40 -0800 (PST)
X-Received: by 10.50.154.2 with SMTP id vk2mr3606252igb.9.1455998080308;
        Sat, 20 Feb 2016 11:54:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id u66si2527829pfa.2.2016.02.20.11.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:54:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ho8so70348537pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 11:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qY0FyIJFtebyluIDKkwdg+OY94KNdrcv9NR0sH/G3W8=;
        b=JmQ/eiCiszYgrE8L/gI2FKymHvREnN6sgAUKVcdVbzE6nq2wMIpMFJmUqNKGdQAkZd
         Uj/o5INwp0YPXGMFxRS1o2L2LYSMVcWYxl2JSAm121OoIPVuyFNKq0PkIzmEeMMZ5Zou
         hywC+lV+loFylUtJFoguj4Lt13xp8fFoiBuMM5Npk7zcuLx5skB12f4DrSJuiWjKw6pW
         ueN6eAtaRzN3CMWoZ6iaobT0O+OylPZySQZ7kMH/cZwjKCaoh4OriZc/tqqBhV3/3NU4
         HNiSvxo6xQhb08I1VGMw0torYkPq0QE3AvrAtw2fZ/vqH/X8kUXZCb+XWHm+eRylb82g
         +kQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=qY0FyIJFtebyluIDKkwdg+OY94KNdrcv9NR0sH/G3W8=;
        b=TGuzoV4xayaOkf7Cgue/QdxyRY2bGqW5ZbcpW4qg3Hdh+dQ6MqckKQMBg5MCw8+kRs
         /MzdJXGJHA2JcmqWCpa0q7Blb2DaQ3PhmFWuS8zVGUgEF8F8nAnrT4ESJAcuK9IjueAm
         01elB51N+pfXTLmZN2h7b1uQJpr4+5Wx+EQAYD+SSMG+axv9io84aelEiDsTeW9U5X+J
         /AtyqZlf+TFUxJ8HJZdtb/h8Qn74inb838bSVl3MKZLEImEwg8hYRotijjt9nMzSjs3r
         NbGahn6yarbgBAVQT3icDgsjktc6C2HkNjQDCLdPojhJ2P3/TVf11vIXEvcCZKuTnKWO
         B68A==
X-Gm-Message-State: AG10YOR4VMG6KKWfOlOCPWb+rk/v6FGqRaUlyzLJfo4HeOpp+tawyRGSL/h9Y4pAAHn7YA==
X-Received: by 10.66.122.3 with SMTP id lo3mr26987470pab.25.1455998080178;
        Sat, 20 Feb 2016 11:54:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.82])
        by smtp.gmail.com with ESMTPSA id o90sm26332935pfi.17.2016.02.20.11.54.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 11:54:39 -0800 (PST)
Date: Sat, 20 Feb 2016 17:24:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wlan-ng: Convert explicit comparison to NULL to
 !x.
Message-ID: <20160220115438.GA3260@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
*In v2,missed to add comment below --- so adding comment  
*Adding Full name in signed-off-by line.

 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 1b02cdf..86fd23f 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -613,7 +613,7 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
 	/* Allocate the rxmeta */
 	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
 
-	if (rxmeta == NULL) {
+	if (!rxmeta) {
 		netdev_err(wlandev->netdev,
 			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
 		result = 1;
-- 
1.8.3.4


