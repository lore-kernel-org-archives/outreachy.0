X-GM-THRID: 6331668533690236928
X-Received: by 10.200.34.169 with SMTP id f38mr2903072qta.68.1474206460794;
        Sun, 18 Sep 2016 06:47:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.79 with SMTP id c76ls2805622ioe.7.gmail; Sun, 18 Sep
 2016 06:47:37 -0700 (PDT)
X-Received: by 10.107.162.83 with SMTP id l80mr13831166ioe.29.1474206457306;
        Sun, 18 Sep 2016 06:47:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si3974886pam.0.2016.09.18.06.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 06:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so5698573pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 06:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gqx14v064vrXBQ3WcaoK8tv9NU+Yz5XmCWGIDxk5Jzo=;
        b=cOwpnxurdux6a8nPs0I+se+tyqa91W5fSvya2Nq0iWfQeC9Qgc7sJbUYKCqqoA494E
         Z44H0Ifvj6ZhBVF+Hilw1yQBh4y9tzPdPW04U91A1U6vsqMzhfKIzV2er4Nzo7b32cNN
         X3Qpb7GqcYOe3A6cF0lNkvITUx1eJfh78SIWHzscWaObmGH1R1yCxWPIrk9kQCyII/O+
         6JelBbuUaI2Un/DAxairyfiwSSVIIBD42TTMtZ+immoQtIMZGaPUhL2qg539n/yNo4A2
         K3DVpkN78+FxnA0sLYJM3klU+VucbBCbqbZZjLDCU3We9P4yKOa8FedBSltJoEK6A3yv
         Zjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gqx14v064vrXBQ3WcaoK8tv9NU+Yz5XmCWGIDxk5Jzo=;
        b=MZOyMuhS+MJj0Pa7TQsIE+gZx2c1Xty/3sO+V+A1t6U53g+mIdiNBPcJXErkkVpI0x
         /bICtNGgxnBULfXyuLEtz44TpepRWyUexK3fED7FeqKNDOvfjx+jwr6Sgp9WLINbkolR
         xYLSc43HXREG/YLfzLZmcov0AyWFZcxwgdicGn91Bb3HmBwAIesX6HtQ7R5zVr8oCP8A
         dpDuGgH90lmHKEt+oUilLDg98aJZOjgLVwWp49YkXoMrnnXDKe8ZKmybKnlnEnBiymjk
         JGt6vDNOSP3f0WrNQXFQntmY6Ki5y8DvqlK+7ip5y+XBGGWhMLIvYbuWZ+BQClCh9GS5
         hdRQ==
X-Gm-Message-State: AE9vXwPTh4r16Yp5WOFt+m7rzNd4E4AdxXVIj0TTXsSjeuP4ClbF6eaPLToN/GVuojU++g==
X-Received: by 10.66.82.42 with SMTP id f10mr38911680pay.17.1474206456879;
        Sun, 18 Sep 2016 06:47:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id e71sm38895133pfc.75.2016.09.18.06.47.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 06:47:35 -0700 (PDT)
Date: Sun, 18 Sep 2016 19:18:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: octeon: Add missing of_node_put after calling
 of_parse_phandle
Message-ID: <20160918134815.GA3515@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

of_node_put needs to be called when the device node which is got
from of_parse_phandle has finished using.

This patch is found by below coccinelle script:

@@
expression e,e1,e2;
@@
*e = of_parse_phandle(...)
... when != of_node_put(e)
    when != true e == NULL
    when != e2 = e
e = e1

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index 1fde9c8..691e4a5 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -168,6 +168,7 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
 
 	phydev = of_phy_connect(dev, phy_node, cvm_oct_adjust_link, 0,
 				PHY_INTERFACE_MODE_GMII);
+	of_node_put(phy_node);
 
 	if (!phydev)
 		return -ENODEV;
-- 
1.7.1


