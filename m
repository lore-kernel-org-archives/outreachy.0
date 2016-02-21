X-GM-THRID: 6253706030519156736
X-Received: by 10.107.12.99 with SMTP id w96mr23229327ioi.5.1456054400640;
        Sun, 21 Feb 2016 03:33:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.20 with SMTP id hg20ls324275igb.39.canary; Sun, 21 Feb
 2016 03:33:20 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr17815840pfq.9.1456054400367;
        Sun, 21 Feb 2016 03:33:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ff2si2795470pad.2.2016.02.21.03.33.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 03:33:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so75485182pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 03:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gcGpAiZH2MKw9kU8+Ayl9ntymUh2EZ9xyLyO5b25+Bc=;
        b=i02EZ9kjvdT1uMPyaY+Q8GDDTkwzwwMUn69nJAEAnvfK5PqEnZxIqYmYStHcf2hbl1
         PEJqEzElMSekBQ8SdMI9OTAubnWj6FHnGbO3i64KyOCtTAJZ9J9W7+JuZ0Rex9oYdr1J
         bbh+W4lKQsoSehdZ3Fjn5eGFg9WRdL13KSd8oPvOjs4m8oYOkYP/seJvO8Wi6cQ6MeOT
         f7m9un52x9Eww50eL545Fv38MU6tu5h40Z4zb+jWva/8s//HZEE8n6fCoXVNTGesglaG
         gOyasxXdOGM+fWuhR+bBu4M8BQ6nhZeYyZDo0zcIrUtDbzq9Rwm01av8fpmqaZI2qyE8
         5t3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=gcGpAiZH2MKw9kU8+Ayl9ntymUh2EZ9xyLyO5b25+Bc=;
        b=k4Vu1t/VDiX5EgBqeeJnbhse7uTecFi4fFePt7pPF3xoyWVjVp5yW5GqJnIwlfIIIP
         7VLLGIZgf248wx7R1BLNuYSKv/VjCMkX4rlivC+kstPs3w2m5BLFkAI96y0m0RMOVGqO
         7rZLILiMFKtGljmHaYF+X1vg6oAyHqEfwM3VGfLPMk1BpR67qmLylYtGe3Uh5C0h/U5H
         osjGEOIooOo+EkB6YmKU3UoLdQ1xl8XYnF98MT/nyaGrkZ0sWWgLmOxmpuk/TuK2uvZU
         6uiPH0dHR3ZecMVm4WEL8bgq+CJ3qLaKjNitPiE692NVAngYqJWPKIhN1lgcIojcbMM1
         4W6A==
X-Gm-Message-State: AG10YORjj6Wn0R9urh/MAdwyIcukgPj7Vbk77id/hFA0aaH66mRC1Bafds/pd7ckkpFZaw==
X-Received: by 10.66.220.7 with SMTP id ps7mr30908846pac.58.1456054400254;
        Sun, 21 Feb 2016 03:33:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t87sm29625678pfa.14.2016.02.21.03.33.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 03:33:19 -0800 (PST)
Date: Sun, 21 Feb 2016 17:03:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Prefer using kmalloc_array
Message-ID: <20160221113352.GA28141@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:
@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(sizeof(e1)*e2, C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(e1), C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(t), C)
+ kmalloc_array(e2, sizeof(t), C)
|
- kmalloc(sizeof(t)*e2, C)
+ kmalloc_array(e2, sizeof(t), C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 3a93218..9d1b84c 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1730,8 +1730,8 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);

-	priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
-			       GFP_KERNEL);
+	priv->rx_urb = kmalloc_array((MAX_RX_URB + 1), sizeof(struct urb *),
+				     GFP_KERNEL);
 	if (priv->rx_urb == NULL)
 		return -ENOMEM;

--
2.1.4


