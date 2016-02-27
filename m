X-GM-THRID: 6256054516784824320
X-Received: by 10.107.12.213 with SMTP id 82mr12168698iom.18.1456601199716;
        Sat, 27 Feb 2016 11:26:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.70 with SMTP id z6ls822606obg.26.gmail; Sat, 27 Feb
 2016 11:26:39 -0800 (PST)
X-Received: by 10.182.227.137 with SMTP id sa9mr6724112obc.44.1456601199310;
        Sat, 27 Feb 2016 11:26:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id yd9si2657661pab.1.2016.02.27.11.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:26:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so291309pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q3JYlyB07xAiDxZ28sRaSg25CvTICvkJCAy6a7asNk4=;
        b=q7R1oahVv4etfV2o5ESZUdX7NM/bQPGwVUWfjIPYozmCC83XG9kuAW5uu55woBgF3/
         s+JinfsnPFVd2FNobttNTB45o5iW3RBW92FrCPCGjAikCd0eMAdCJszsyJQPHy+3Wvga
         co3DsN570TrTqqqErKH5gmj+QeNqTnz4HLAmx9uI/43OvUvGEU90lx06DNFKHAViLqqW
         SxTVUmZAQVeQz/1ndwEK43NlYbByxEKU4yfM2g2ONcRWcHKWN6bNCGmDw5tiXR5uhzDl
         qNhj7deGGcm78bkEG9OGLTBDYlKtZxJqEIk5gfyxzCcJfyZEcT6VZLrNaFQw/+7sEmxG
         8Beg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q3JYlyB07xAiDxZ28sRaSg25CvTICvkJCAy6a7asNk4=;
        b=HL440V8jBcxQcsdCztrPGfRcnidXpxUBjZC5FvtZaciwIwKocbyv2r1AKih4phd0PH
         BmI5FZ2KIqFOWCY9EnpSjKYgXkwLmpsy/LEJqvsNFZHUgerp/64QRcwyWvMnlN58yFt/
         +4u8XZKb7LQkBUqWwTfqDey6FiSBwDo/TxhFxZ2KVxPMOytZ5ZT0QgYMSco6ZARBJqun
         d1JYz/gLYZYeszL8ZHNywfdUl92c/PP+rVeaq5FpFlNRkdLHWwnhtZuf3cxrgtNs5Yfy
         vz2gk1JJcyWiLr/esKvf85mGtLZAbxmOsjkwqA9QdvOVcb0LRtOl+GDmnxT+2Kpla4IL
         cEYA==
X-Gm-Message-State: AD7BkJJQY219yEInS11AtF76nwd3sOPC5gLjLQ1OSBFNhIKZP3lqmZBTm+gkNq9Wudtr4Q==
X-Received: by 10.98.11.134 with SMTP id 6mr11419910pfl.109.1456601199111;
        Sat, 27 Feb 2016 11:26:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id l24sm27681814pfb.73.2016.02.27.11.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 11:26:38 -0800 (PST)
Date: Sat, 27 Feb 2016 16:56:41 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <20160227112641.GA5408@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/phy/phy-qcom-8x16-usb.c b/drivers/usb/phy/phy-qcom-8x16-usb.c
index 579587d..dc97abe 100644
--- a/drivers/usb/phy/phy-qcom-8x16-usb.c
+++ b/drivers/usb/phy/phy-qcom-8x16-usb.c
@@ -291,10 +291,7 @@ static int phy_8x16_read_devicetree(struct phy_8x16 *qphy)
 
 	qphy->switch_gpio = devm_gpiod_get_optional(dev, "switch",
 						   GPIOD_OUT_LOW);
-	if (IS_ERR(qphy->switch_gpio))
-		return PTR_ERR(qphy->switch_gpio);
-
-	return 0;
+	PTR_ERR_OR_ZERO(qphy->switch_gpio);
 }
 
 static int phy_8x16_reboot_notify(struct notifier_block *this,
-- 
1.8.3.4


