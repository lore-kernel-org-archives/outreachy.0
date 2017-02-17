X-GM-THRID: 6388170133905342464
X-Received: by 10.107.164.78 with SMTP id n75mr3170297ioe.39.1487361764263;
        Fri, 17 Feb 2017 12:02:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.19.69 with SMTP id 66ls784750itz.0.gmail; Fri, 17 Feb 2017
 12:02:43 -0800 (PST)
X-Received: by 10.99.107.1 with SMTP id g1mr3148642pgc.100.1487361763446;
        Fri, 17 Feb 2017 12:02:43 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 23si949246pfw.4.2017.02.17.12.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:02:43 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v184so5690937pgv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 12:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KmVQc8LUvOdKp+7/TEf7QUSR7YzndVSnYJOuql/qNuI=;
        b=KptK/DwUSYz5y/giEVPH+xpAi1NSOkzyFY0DJmBEwOJJBwm49y+wmHi0OwzmydNzTN
         idOgYjI1KvSjvCr3dAQqrF4N/8Y+A7EVgQexz0PZF9OwrrM6sDMfeI7XI/jMKHKo8wI7
         mwFbr4K9ZkzyYSziGeVvv4gb8/PC9mQH6IpYwqJZZGCx8qC80vftSJhopW9D/8atb/i6
         BGfPSriaKzJ4hnTXeDkg/8XWM2AyciUrDN3rLEsMvQh28e1hViOLTi1QUE9s7l5sUCor
         2ULnUnK+q4xl0ZSIH5n/xFMyefCDVmouGExKN2h9/xyNLi/HNcLt6YP+xZ9P7NvCTnid
         EVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KmVQc8LUvOdKp+7/TEf7QUSR7YzndVSnYJOuql/qNuI=;
        b=oWdp+jcBqNAH3xMVxGnAYIOa2sOXHvYbWPVbw1L40U/8Nopp/QwpOEF20+fj/fJ+i+
         tFmb8/gqD1bPBDUbLL3plXzzRDFTf3GlLL6nwa+tePABv2bWKL2SbHa7x3HBEt+BxFs+
         7w7alS76HhHv2VxHTfEXK+bsddJ6qXvJL0t0Tdz3/0N7vxR3UcJXcdpIfWyoxE/o3M5o
         QVQj0cuHBslMoc3kuL/MCALWt+o5+MwfIsjIx1XcyQ3X1cLvPxk96paISFXracE2WWVM
         XS6l9vpWT1Ao1ex8jLXGj5Wx7yVV0weCySqE6IcKzOlMGniiw0aEY4A9630gIYAI8qHz
         Aa2g==
X-Gm-Message-State: AMke39kws+m2dITVj0iDzL00YxTGARF9wcXGeTnYHqH2fjpRtlykEZkUnlasyFZVBLKniA==
X-Received: by 10.84.234.23 with SMTP id m23mr13803162plk.15.1487361763209;
        Fri, 17 Feb 2017 12:02:43 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id i10sm21242912pgd.37.2017.02.17.12.02.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 12:02:42 -0800 (PST)
Message-ID: <58a756e2.0a9d630a.ca478.ffbb@mx.google.com>
X-Google-Original-Message-ID: <20170217200237.GA7405@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 01:32:37 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] staging: rtl8712: Match alignment with open parenthesis.
References: <cover.1487359493.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487359493.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Matched function arguments alignment with it's open parenthesis. This patch
fixes the following checkpatch issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 1141ab3..8836b31 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -388,7 +388,7 @@ static int netdev_open(struct net_device *pnetdev)
 		if (!r8712_initmac)
 			/* Use the mac address stored in the Efuse */
 			memcpy(pnetdev->dev_addr,
-				padapter->eeprompriv.mac_addr, ETH_ALEN);
+			       padapter->eeprompriv.mac_addr, ETH_ALEN);
 		else {
 			/* We have to inform f/w to use user-supplied MAC
 			 * address.
@@ -405,7 +405,7 @@ static int netdev_open(struct net_device *pnetdev)
 			 * users specify.
 			 */
 			memcpy(padapter->eeprompriv.mac_addr,
-				pnetdev->dev_addr, ETH_ALEN);
+			       pnetdev->dev_addr, ETH_ALEN);
 		}
 		if (start_drv_threads(padapter) != _SUCCESS)
 			goto netdev_open_error;
-- 
2.9.3


