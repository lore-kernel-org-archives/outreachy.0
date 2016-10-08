X-GM-THRID: 6339051787828330496
X-Received: by 10.46.5.196 with SMTP id 187mr1565361ljf.13.1475925507980;
        Sat, 08 Oct 2016 04:18:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.4 with SMTP id 4ls312980ljb.31.gmail; Sat, 08 Oct 2016
 04:18:27 -0700 (PDT)
X-Received: by 10.25.138.11 with SMTP id m11mr1548038lfd.15.1475925507124;
        Sat, 08 Oct 2016 04:18:27 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id e21si388340wmc.2.2016.10.08.04.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 04:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id b201so6620350wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 04:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/5m68f2+763xj/PHGtwvwgl+aecNbpua+qJR+GRJv6g=;
        b=IRgml5qETJU1U9l9DfsQ+uI4Bu646QKlSztvXHJOev5e6m3myfMPEjTuQFT1Qq+6HC
         /8+jGT7ar3czZvBDWQKg3L2M11EMqV6JJgE6LP1BUZtmTQWB3LtH06u3WPyOvTZQa/TD
         L60NsUx9MzIzug5W6q+PYFD1MeqlW1tqXIVPyF4/EUczuOtwnOJHLZBJDFrUCHIXhQqi
         8nY1RTspb3iXE9SIsIyM70Xouikup7Szb/kCRCBT+rxOoNRtzqKliQvVmc82WEYKr5lS
         tgB/C0blXkyVAPV62jBDv31T02k7cf16DAScdcq7S58S+z0EKpYqrU8OLGHMrXDHu7Hk
         pfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/5m68f2+763xj/PHGtwvwgl+aecNbpua+qJR+GRJv6g=;
        b=ErCv4y/q3vNoZ9z31xJOjLCrC/cNJj+Kb8WKi7HbDodB9KUQMfruIUVF2zRlkKQpNd
         uxIXXvidRYKhdrHqj7t3IRc/86lNMVF3p5W6CQrTuY/mP7O3aQjx+VuiQyEKSHnQxVCU
         U46RrWSJZ167Mj3Jx/7RMgEM6sTB/EBor7VPuWJPqCy2cBS8pMunBDcfdlvezdyHd7p7
         PQR9NeAhEPu/47y9QDmOy3J45XLN8R1oZeMjaPhkanoZo+5MdX/73eQvZdysz3H2SVV/
         PQBIx4A/RF3bOY2XHE+Aw4ifEdvJVVVD06C1rgrYHd7MytX+hckMaVvmci2F69ocz909
         TYIA==
X-Gm-Message-State: AA6/9RnVKUU+cp6CyxY0OPGFycDTUdVbYYha/AG4eJmhvIHT54JoBVVGyfxVY6cvUBy0aA==
X-Received: by 10.28.191.214 with SMTP id o83mr2977191wmi.83.1475925506875;
        Sat, 08 Oct 2016 04:18:26 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id vs7sm24566383wjb.10.2016.10.08.04.18.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 04:18:26 -0700 (PDT)
Date: Sat, 8 Oct 2016 14:18:25 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>
Subject: [PATCH] Staging: wilc1000: Unnecessary 'out of memory' message
Message-ID: <20161008111825.GA11921@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete unnecessary 'out of memory' message , warning found by
cehckpatch.pl tool.

WARNING: Possible unnecessary 'out of memory' message.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..2072170 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1723,7 +1723,6 @@ _WPAPtk_end_case_:
 	case PMKSA:
 		pu8keybuf = kmalloc((pstrHostIFkeyAttr->attr.pmkid.numpmkid * PMKSA_KEY_LEN) + 1, GFP_KERNEL);
 		if (!pu8keybuf) {
-			netdev_err(vif->ndev, "No buffer to send PMKSA Key\n");
 			return -ENOMEM;
 		}
 
@@ -2322,10 +2321,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
 		wid.size = 2;
 		wid.val = kmalloc(wid.size, GFP_KERNEL);
 
-		if (!wid.val) {
-			netdev_err(vif->ndev, "Failed to allocate memory\n");
+		if (!wid.val)
 			return -ENOMEM;
-		}
 
 		wid.val[0] = u8remain_on_chan_flag;
 		wid.val[1] = FALSE_FRMWR_CHANNEL;
-- 
2.7.4


