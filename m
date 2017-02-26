X-GM-THRID: 6391489857245413376
X-Received: by 10.99.245.15 with SMTP id w15mr5193443pgh.63.1488134697482;
        Sun, 26 Feb 2017 10:44:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls12083912otz.38.gmail; Sun, 26 Feb
 2017 10:44:57 -0800 (PST)
X-Received: by 10.200.48.85 with SMTP id g21mr2525030qte.47.1488134697150;
        Sun, 26 Feb 2017 10:44:57 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si2737763pfk.0.2017.02.26.10.44.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:44:57 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so10136143pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 10:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=H59pBWXIkByNYczJes/KooGsFx9DbgHb+DAOYxmIKTc=;
        b=B2Oa/WPhEBsd5lP7ONJs8F+xI3EQtZ3kbBzkq3dTWwys3mop0n6rMIZZf0SjBwXX2K
         lB+cqGuV+zX0O8rfRGiUQsdMndGkvD4H4BiHzPWzYDa0JnZLJ034jQW+UmZoelQTWX2+
         sEUrc7HgHk7zQvNAc/6ybj9h/thDBPfwksPDJKB8J2Rjl8HvaRf5GmJ1QWRk/rF76Ld7
         f6QzZeeWfV4axiN1JGR3s89ONgwXZuaB28aoKcSLY12CreCirhpFIDbTKxkLUt3CPc+w
         U4yCRyj4jMWpGxOqOgU0QUk8WC5ycpE1pcHDgceoV5POKqMyeEY053GOxQsx0Q8yVBuw
         c0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=H59pBWXIkByNYczJes/KooGsFx9DbgHb+DAOYxmIKTc=;
        b=kfW70QSvKX9v2oS4hA1Y3kEPbtIYrvq2Htgtub1nVh+ixGwh2titjEaFP6Bpiszk7T
         zVT/9O52Ym5974xwQiaRYmamltrY8oO9JLok04X0BMTOHRNO55BdLTQIxUnb5ZMAJcqK
         sPl53l8FhecXYHGCJuwdnO10+LXCFDKbeuZjtV31UFf+JARU/+IFbScht+m7HKwv0S+4
         zP9phSUqMedD0Dramg0a3zoYgkGioa8A4eJ3OuYhz1y5njlcbZXucIyK4nUfT/zaw9iY
         uNeupvBZxAtgnoZ/MIa/rOWaMcnXPQqLVSe1Q4U45rvhUpvsWMZaoTxRK/wZ/6qbwYQh
         Yulw==
X-Gm-Message-State: AMke39nZKZ5ulXYS+KPKJ+q0Bp+htA33EhfmF5cZWKrYlWMDHHUBZ71LUjznIpb757OT4g==
X-Received: by 10.99.124.75 with SMTP id l11mr16449986pgn.46.1488134696804;
        Sun, 26 Feb 2017 10:44:56 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id t6sm26115065pgt.8.2017.02.26.10.44.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 10:44:56 -0800 (PST)
Message-ID: <58b32228.062d630a.823da.79a9@mx.google.com>
X-Google-Original-Message-ID: <20170226184452.GA30297@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 00:14:52 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Add comment for spinlock_t definition.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Added comment for spinlock_t definition, to fix the following checkpatch
issue:

CHECK: spinlock_t definition without comment

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 789bfb9..78c08e1 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -567,7 +567,7 @@ struct nbu2ss_udc {
 	struct usb_gadget_driver *driver;
 	struct platform_device *pdev;
 	struct device *dev;
-	spinlock_t lock;
+	spinlock_t lock; /* Protects nbu2ss_udc structure fields */
 	struct completion		*pdone;
 
 	enum ep0_state			ep0state;
-- 
2.9.3


