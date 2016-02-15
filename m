X-GM-THRID: 6251518681798410240
X-Received: by 10.50.142.73 with SMTP id ru9mr12366640igb.8.1455545118389;
        Mon, 15 Feb 2016 06:05:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.118.132 with SMTP id km4ls579703obb.97.gmail; Mon, 15 Feb
 2016 06:05:17 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr5361280obc.16.1455545117841;
        Mon, 15 Feb 2016 06:05:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ui7si3340594pab.0.2016.02.15.06.05.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 06:05:17 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ho8so87465396pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 06:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zcqVJizbtJUmXB7jIln9QuSvAEz7wConil0PMVB51YM=;
        b=0ZC81iPBsKYhQcEeAdtFP9hNGD5ekYYur7bTQOwtKWaY5mh7DcySIf4iYKg4c6HN3R
         +plXCOY8A5PU6sbZVVW1raBl48BE4ZTSjagGfS9WjXmFSFwv6Qc2o2+PRN7D9vNfYleD
         udccGn9D7ASwJp+UyP3FQf7Ob/uWu+9crpU3I5Fl76zk3ryjw7+5vX/P1XQfV3m92JmA
         MqBU4WeCBc8UV3pC5MiX6JU59bCfP+LhGC3B+8paN3JFiD1qTpWaP8HGVmdWB/TbmSRO
         VSTHifUsAMwwV6xQxZYlBoZ7rMH8YR75djKWEe9UhmIYAZSoh7+ZGpnES4GH38EkffYm
         55FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=zcqVJizbtJUmXB7jIln9QuSvAEz7wConil0PMVB51YM=;
        b=UBmI1qzU83bV7JsVoAi0S8UabZSW7a1hkXyzN+LVvDsrcu50zPbDX9qU1TB/+idfEs
         i8ZLWeMdEr+oh1ekUg+C/kqANajLS+9YeDOF1+ZJSMpmMOE7puiYP/7u7/VYwnEHqiVO
         AcpcEVzK9bfuxyqO+pjPoNS5ukVN7fcCM2+HD5MgS4cWgQIiy0kmZG5uMMHSbo6nxuDo
         k5dc+qW+BciQPI0/w1ePwrhNU55n7BUHXkXbCowtd4MFcp7bcAEI/UI83LCMkvVMdzzN
         IsWlbhUfs7uzSHeE11FbQQslJ/tL48HWwFaGKiYrDWkOqm2ONqZrH+1C5xQ+cRIsOlTU
         fKTg==
X-Gm-Message-State: AG10YORUElwwuJ2bEyvNkPldSvVrBCgq5K0VNj80DuUTq2dd4SKqItx7eH/eKwzTtdAiqQ==
X-Received: by 10.66.234.166 with SMTP id uf6mr23849363pac.122.1455545117697;
        Mon, 15 Feb 2016 06:05:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id m87sm18352600pfj.38.2016.02.15.06.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 06:05:17 -0800 (PST)
Date: Mon, 15 Feb 2016 19:35:41 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Fix "Possible unnecessary 'out of memory'
 message" checkpatch.pl warning
Message-ID: <20160215140532.GA27352@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix "Possible unnecessary 'out of memory' message" checkpatch.pl warning

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 397ad45..ba2b940 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -355,10 +355,8 @@ static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
 	}
 
 	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
-	if (!tqe) {
-		netdev_err(vif->ndev, "Failed to allocate memory\n");
+	if (!tqe)
 		return 0;
-	}
 
 	tqe->type = WILC_CFG_PKT;
 	tqe->buffer = buffer;
-- 
1.9.1


