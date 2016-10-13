X-GM-THRID: 6340987629622788096
X-Received: by 10.66.253.105 with SMTP id zz9mr1601434pac.143.1476376231474;
        Thu, 13 Oct 2016 09:30:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.43 with SMTP id 40ls6091326otc.42.gmail; Thu, 13 Oct
 2016 09:30:30 -0700 (PDT)
X-Received: by 10.200.51.97 with SMTP id u30mr1969433qta.16.1476376230881;
        Thu, 13 Oct 2016 09:30:30 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p70si1872700vkd.0.2016.10.13.09.30.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 09:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id b75so13340465lfg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 09:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ev66ewt4XOpwikAcpE0/+jt8Xsk5Ly6Ugx01E86wH7Y=;
        b=ZpwD2+e5QcPzWeNS7C3xWEmiKPqtMg+sV6o0l2FxCWfTNhGhyDAJXywQdrkLnnGwcR
         D+/XJti82bh2LxTtDulpsm4NUmw0bS1sZNnJxTZIVztlP+QQtcawsg70G0+v6O0r8Ela
         gUe11ci9GH3x0ieq69NUtJ6Yt3TEzjfxh46uxEyawNXO0gJZKA5HJ6VsAMy5h2pS0mtz
         S2pEiEzrrFYegaFTi6VdKJc9I7o4NUryySNAXuMS2GS8JOsBZFe8EoxFdJPqrJNreOeZ
         iY7UKZAsJTkkBRFpqa8SWHL5+H4g80kfqOSwnwKf5L/amLSJOcKsJMytoUplsnenhSa7
         2IFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ev66ewt4XOpwikAcpE0/+jt8Xsk5Ly6Ugx01E86wH7Y=;
        b=RZLb16QfeysNGVitOMx8aN1zHJ0qk1LACoVZPWZR9fDTY4oTU+eSFMxU982DGOeofs
         i2PqzhXZu6mK+m6zINPOo4aendde9u2St04HSLsbAV5JXt81GUDeFGNuEi16OFG1XiWn
         A+D0gBULW7QzxEwJ1dQmwQ8yMD9YTfjRCdmapDAayDA8uGUb7popk5st4b/6QiORKCT/
         VPzTsTguV8XNLjRhB3UvZjzLS7CuYecTNJvobCIxVhAcPBjJn7CrBKGAm4YHET7HSXdk
         7uFid/H+cohuTKk1e8cOvxfu02QhrM2E6LE5EDH7Jb11JN3gW7Q2gXQPQL2StJUfCumA
         mITw==
X-Gm-Message-State: AA6/9RlEbFLPY2nTEGhMx2nVltpZy6SkxaeALd6uP6qU2msA66RRj/cS8ias8VydBfKhsA==
X-Received: by 10.194.79.67 with SMTP id h3mr7622158wjx.142.1476376230229;
        Thu, 13 Oct 2016 09:30:30 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id a1sm23740771wju.41.2016.10.13.09.30.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 09:30:29 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:30:27 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: netlogic: Compress return logic into one line
Message-ID: <20161013163027.GA6040@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
expression e, ret;
@@

-ret =
+return
        e;
-return ret;

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 552a7dc..766969d 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1006,8 +1006,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 	adapter = (struct xlr_adapter *)
 		devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
 	if (!adapter) {
-		err = -ENOMEM;
-		return err;
+		return -ENOMEM;
 	}
 
 	/*
-- 
2.7.4


