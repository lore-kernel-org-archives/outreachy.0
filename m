X-GM-THRID: 6254179536245620736
X-Received: by 10.66.146.231 with SMTP id tf7mr27906343pab.6.1456164646038;
        Mon, 22 Feb 2016 10:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls1521553qgf.38.gmail; Mon, 22 Feb
 2016 10:10:45 -0800 (PST)
X-Received: by 10.140.96.35 with SMTP id j32mr721128qge.6.1456164645374;
        Mon, 22 Feb 2016 10:10:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ui7si3298468pab.0.2016.02.22.10.10.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 10:10:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id c10so99625012pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 10:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lETl2J8WXOLmX5fw33Da6tckWtbBp68dddCiLuXDHdw=;
        b=qy/YaoYsLhpCZ1IB9RZVlsGeFPQcLbyDJvXaJeDoT6luM8I8kTyVxXcEpJbRusIeIV
         DwJn0KhRVj7qn1/cxaHBGouT5PnT9LBzzwfr7L69PauySbC34zxb3A7VNAPA4nkUM63w
         WejMlu+c3zVrcFDlikBP7ZrthH6t07yf0IRJMt3MX4UtZdBHitPS8Ql/UdWDzqpIORQb
         0DWawiwuEdBysHjQGbhwgAr8/mUlq5A0IHAq5ChSycPhc+Y7brT7tLaPjCiF5U3c5eA2
         T0/LpSIrEb7V5DhxDHsyXnAnelbCmRqZGZeX6UimzOmnVcwiK56A1Pr+NTZzk2Q380lD
         GP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lETl2J8WXOLmX5fw33Da6tckWtbBp68dddCiLuXDHdw=;
        b=L1HCgzpHGodeQx3+AHubUWduyyl6tbHq9t6PRfi3IfTxSt0YdhrTF1Ov8u3/s08GMH
         ctywK/6h99aM+V91BiyV51RV5f4S2bjd+QrfKNbA5QW18Ss8JbnRGFrp7xHWngs9mm3U
         3JLWMLHsCSar3LQeWocFtQS5MiBNMVlRjE5C4XdPHTCw/WnSVBtJ6l3G7ZbRrwGi1nnQ
         Zk/zaoQsUxJz5DYmZeIq5xj7cL1whD1/v21Na4a3CKHBIuuwQrHh1fnwKqejHSI4zkdT
         l2De4LWYjGOUf36WhjG2i+Ur+ga7TJ8SfAYx2f7LTfNS+zlCjjJ9/oubUV7MX9rk/MTe
         4YuQ==
X-Gm-Message-State: AG10YOTa/C9gSwvNIw6K7+CW/9kxugFVv0cx7qHP4+DZbUX3K3vuwSjEXNfER5p6YwaRPA==
X-Received: by 10.98.80.80 with SMTP id e77mr40047085pfb.126.1456164645140;
        Mon, 22 Feb 2016 10:10:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.75])
        by smtp.gmail.com with ESMTPSA id 144sm38355329pfa.83.2016.02.22.10.10.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 10:10:44 -0800 (PST)
Date: Mon, 22 Feb 2016 15:40:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Remove trailing whitespace.
Message-ID: <20160222100856.GA5026@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove trailing whitespace.This error is detected by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 33e092e..f34b15d 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
 	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
-	if (enable) 
+	if (enable)
 		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	 else 
+	 else
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
 
 	setCurrentGate(gate);
-- 
1.8.3.4


