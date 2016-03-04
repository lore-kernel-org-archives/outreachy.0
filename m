X-GM-THRID: 6258266145196867584
X-Received: by 10.13.226.84 with SMTP id l81mr6679334ywe.16.1457116134452;
        Fri, 04 Mar 2016 10:28:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.31 with SMTP id f31ls291500iod.62.gmail; Fri, 04 Mar
 2016 10:28:54 -0800 (PST)
X-Received: by 10.66.148.69 with SMTP id tq5mr6897155pab.28.1457116133981;
        Fri, 04 Mar 2016 10:28:53 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id r75si1602697pfr.0.2016.03.04.10.28.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 10:28:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x188so15728821pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 10:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/fUPEI56zsoFMhLJNiLnsCLgjtD/Rik44Vt3/L4O/bg=;
        b=FpQlc5EqOFp67UbkODDYkpBhdPOrsvvUBi76s61+I0hdO/kBqFYuVC5a8Jm076fhTl
         Pkzg7JM6b+kUZxBqwN5yASgYztzZpmz5rL3xl9JcQw67R/D3iFnBDZ1jSS+acv7mZJXo
         uaf/6gnLmsiJHgkaB3DyVXvYuLspBlJd2b+TqRnGxcADpDrPu1T3pKWhtEwYMPNTOJVk
         zGy+/ck1fSUre+5t+5UTuBEro+rmlZ6FcFV+OomuEg8L0JWbO5Q21tYDyoGUzoZ8WWtm
         xLhtsyRNJsZyz6LiQ764v6pSyazis+FezlRtl3q4ePpFszH7xkAIiP1i1avrcBEn257N
         zPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/fUPEI56zsoFMhLJNiLnsCLgjtD/Rik44Vt3/L4O/bg=;
        b=BKno3YdwIZ/ADjYRX9g+4aN5wJCwG3JVGTL3QLSWXVWpDDtL+VWN3qz0sBmP6T44HW
         TBL0RqqMpNNj4RmLhJX/JhZfh1ghQ8QgXZoOxqyIpOSIXQEeibNzLv1u36Qjh7muAMi4
         gsvNAst6tqvBjxaNSjwgzWrpjiejnNZj5ygSIfXSXW0J6LhsFkyjyFBEAyKKfJHE08Q/
         0oDHmMVmZygTMGF0kNmMw5o2/TPdvylibit/66lWY/Pii+jdBt3up9d4PsSovZBfjRTZ
         MsbBk31rAPcnt3p2qL6bk/VMgYrcs4cv9GNdg8+qowxV0cnhjjGiGKZ2opRTDuGmNHO5
         iLew==
X-Gm-Message-State: AD7BkJL8N/39gNFmhkQ/wGR78XTsg0f2fP7YZotlv/xytYUIzwWDyQt4SJF4en5t0HbpoA==
X-Received: by 10.98.74.216 with SMTP id c85mr5505298pfj.129.1457116133832;
        Fri, 04 Mar 2016 10:28:53 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.248])
        by smtp.gmail.com with ESMTPSA id o7sm7099981pfa.37.2016.03.04.10.28.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 10:28:52 -0800 (PST)
Date: Fri, 4 Mar 2016 15:59:12 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: Remove & from function name.
Message-ID: <20160304102911.GA3516@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove & from function name,when function name passed as an argument to another function.
Function name is used as pointer without &. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 8a1ed62..c3eea07 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1171,7 +1171,7 @@ static int vnt_start(struct ieee80211_hw *hw)
 	if (!device_init_rings(priv))
 		return -ENOMEM;
 
-	ret = request_irq(priv->pcid->irq, &vnt_interrupt,
+	ret = request_irq(priv->pcid->irq, vnt_interrupt,
 			  IRQF_SHARED, "vt6655", priv);
 	if (ret) {
 		dev_dbg(&priv->pcid->dev, "failed to start irq\n");
-- 
1.8.3.4


