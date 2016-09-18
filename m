X-GM-THRID: 6331726524790603776
X-Received: by 10.129.53.73 with SMTP id c70mr1553748ywa.0.1474219962255;
        Sun, 18 Sep 2016 10:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls3136417iod.9.gmail; Sun, 18 Sep
 2016 10:32:40 -0700 (PDT)
X-Received: by 10.66.85.104 with SMTP id g8mr13611616paz.33.1474219960729;
        Sun, 18 Sep 2016 10:32:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si5719080pfe.0.2016.09.18.10.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 10:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so5852303pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 10:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ewqbbd6LyFtZAm2hzomY0DkyXMvEVO0MRohOiNUnF40=;
        b=kXkujz8ZgHaSkdZxdtCBVHWL7HyQM5PmHvfQWguoDijOsjbjoJ2+gLg4Uo1DBUwv6r
         ZwXHaZCOawrfumHN9rdyHuA3VnW9GGbLH0uxyEHVWEbAg8xtynqTaDI9BPojq3Q4uPOf
         caJyA3uLIswXbzHAoQQ72oP/b0DFb1JAHn76C1D/Pl0T5fdHGq/R35kSrDSztwtBJi35
         Ol0mkQadhtTxLI0bvGb9Z1BnMfg8906HfP+3WQW1973Jzwj6ZRuo8BFdtQDSr3q4CnJY
         20jZnmtcrQoh+I5IqlbTAtNOClnI4Dv1DXUH7eceuhhiIET3JDt+v/BdcM7YCJFodAz1
         SdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ewqbbd6LyFtZAm2hzomY0DkyXMvEVO0MRohOiNUnF40=;
        b=LUvhQEczhcohDggf3InUJ8Uoho3T00cFeJ3PMvGuMWeXPH3lA5d4KMYHoBEZS33RFi
         3cKMfi4R0K8SeD39jjCIben+Kht0OHXMzZdLHi9tu9d4rV/P6AKabuYhlSLiTPetTURI
         YU66X2D4pI4pEAv+UNPIjdFvW2b4QwEXWq0nkbVQhm+q9gS+nTx1Q/NhhPR12NPPBo0d
         Q+9olAbEfUJZjM23o/N4WoYDMJCxUQSD+tw34ix/Zkx6TUz16+Myk7VChFuV1i9LfwJa
         N0FlLidkQeZCN7pburhl5+w3ddSVjGyT5TOF9TldCJB/4gAY5xqKQBdzflgMIJY/lBLx
         RVdg==
X-Gm-Message-State: AE9vXwOlVKm+1MvqABwzY+DMaL2ngMDWWOqggwtLTstsh4L2VGqg0MTKqkRcBnXenVx5NA==
X-Received: by 10.66.88.227 with SMTP id bj3mr40775854pab.113.1474219960395;
        Sun, 18 Sep 2016 10:32:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id hs7sm25595873pad.24.2016.09.18.10.32.38
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 10:32:39 -0700 (PDT)
Date: Sun, 18 Sep 2016 23:02:33 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: octeon: Add missing of_node_put after calling
 of_parse_phandle.
Message-ID: <20160918173233.GA4349@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

of_node_put needs to be called when the device node which is got
from of_parse_phandle is no longer used.
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
Changes in v2:
* Correcting the commit message.
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


