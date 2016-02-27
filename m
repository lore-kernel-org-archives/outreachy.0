X-GM-THRID: 6256054516784824320
X-Received: by 10.13.192.134 with SMTP id b128mr6675636ywd.43.1456604326926;
        Sat, 27 Feb 2016 12:18:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.138 with SMTP id 10ls204677qgl.13.gmail; Sat, 27 Feb
 2016 12:18:46 -0800 (PST)
X-Received: by 10.141.0.9 with SMTP id b9mr6704251qhd.16.1456604326229;
        Sat, 27 Feb 2016 12:18:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2733874pab.0.2016.02.27.12.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 12:18:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so6554939pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 12:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=owyzTS3K2NBX8N5zNV6dsBMOJLTmpSzz/15KkcKU4BY=;
        b=CkUtFaXMBRurT94+zIjuwQhekah0JVfU9rV3apviIDCuHX1wmGF/Uvp/XWYfHL8/1T
         POtCD8VCLNkHJJL3vMonEHI3bjj9eNblVw+1cRF8MnTlvquq7D0iCnCI676fVNHZZsPM
         fwtEgnAkm2D+KqWy5ZWEg0GDkP7FW/v/d5Txsxcpn677n++oJ6aPMHRiQJxcbZdBsbxh
         7XnFgpWB+TcCrhUmlrmb0+CWZVT9nzTLpFIISoUXcE2yPs76qbqZ/JnLPsPAdLN2wfXj
         QllHBVOXtD+Vd/AanOReMQ7X2/BGZO6SrsfHdI02nYfkpsX5/NKkthdBPND6n0YRxEbD
         zOmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=owyzTS3K2NBX8N5zNV6dsBMOJLTmpSzz/15KkcKU4BY=;
        b=f17s6SRVlr9TqlgCuddtTQAYz+iFwOvvcw/3dXDzVZvta14LMWbDFzvAtagY5Lp6DJ
         2fcC44enAZBokPwq+bp8EzzCJ8SR233mALM5BYNs2BXlPWo1Ma81GRd+/5YjVx66XrP7
         9M1OlIK0w0hY65OwSmjzW2iNc7gzAwKh+6DsFG1k/r8x2+1RHgCfOGTdbnXFaoKM6Moq
         iyMy4CYSGgDxdLldmnUH6rRnupFkIYo1jSzfzXR1EtMRJuyR7fRIMn5DgFsVWpOgD4R7
         s+HcnjcrEusZFT6VFPb3p0rgZJCwjevlMOVzysDmF1vxTSyKAmYUlFruhq8DBDsSi3LV
         nH4g==
X-Gm-Message-State: AD7BkJLp0bsrYbGCPBSPc1bbdihkxbz69fJZqAvjwi+0rjEMItfizjAERDZuOjfda/ak2w==
X-Received: by 10.98.69.78 with SMTP id s75mr11576794pfa.102.1456604325951;
        Sat, 27 Feb 2016 12:18:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id w9sm27846096pfa.21.2016.02.27.12.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 12:18:45 -0800 (PST)
Date: Sat, 27 Feb 2016 17:48:39 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <20160227121839.GA5697@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 changes in v2 :
 * Add missing return.
 drivers/usb/phy/phy-qcom-8x16-usb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/phy/phy-qcom-8x16-usb.c b/drivers/usb/phy/phy-qcom-8x16-usb.c
index 579587d..9724997 100644
--- a/drivers/usb/phy/phy-qcom-8x16-usb.c
+++ b/drivers/usb/phy/phy-qcom-8x16-usb.c
@@ -291,10 +291,8 @@ static int phy_8x16_read_devicetree(struct phy_8x16 *qphy)
 
 	qphy->switch_gpio = devm_gpiod_get_optional(dev, "switch",
 						   GPIOD_OUT_LOW);
-	if (IS_ERR(qphy->switch_gpio))
-		return PTR_ERR(qphy->switch_gpio);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(qphy->switch_gpio);
 }
 
 static int phy_8x16_reboot_notify(struct notifier_block *this,
-- 
1.8.3.4


