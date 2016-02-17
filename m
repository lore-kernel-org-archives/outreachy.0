X-GM-THRID: 6252116177284235264
X-Received: by 10.107.29.20 with SMTP id d20mr1038702iod.29.1455684452436;
        Tue, 16 Feb 2016 20:47:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.126.47 with SMTP id mv15ls142668obb.71.gmail; Tue, 16 Feb
 2016 20:47:32 -0800 (PST)
X-Received: by 10.182.33.98 with SMTP id q2mr25197460obi.28.1455684452125;
        Tue, 16 Feb 2016 20:47:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id yd9si1106153pab.1.2016.02.16.20.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 20:47:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id e127so4308430pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 20:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0AURGj6szbjuerP0ci8rUi4eI+0CV6lprIHFDLsH33g=;
        b=lnxCB65f7zdm7IU1g5Vys2rL29UQVVB+ZfzpORbRReNbPO3Lld4b0fn7xA2GsZfHN9
         yqbGNvuJ48lW3aaXVFzdwHd0uUD3GKNeUqOI/GH2Jrz71DuUvVdaJI2m0x08HZXxKUMF
         So03icLSGbK18ml1p9P/whd80j6l9S9P/R2jLCmmhz1GAZexBDbm5OhYaPTcnGqS3HpI
         w25dulHR2+5q3RrB7PPv1gC4ntzSfm4EzFPu1Fsj0j0X41UuPWBpzw6JjGDPSlBb0l5w
         IlaT8ZnAoJy8D/dGCOYD5AXkybjsWBB0jOgp1V6OyUDuk2Sqslw45Ewkk3G4/ersiPaz
         r74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=0AURGj6szbjuerP0ci8rUi4eI+0CV6lprIHFDLsH33g=;
        b=HLaRhoWOzISL48ZDAPyHHjHew1AjzDYNWu9p92iQubosmBu6N77sGuRMCoROPK1i66
         9391LvN9BuZGqgQZFIiNcq4lZ2fdSaC8qqqQ+1oZI4fDdx4Nw0e327+JBtsKGqYMqGtk
         VjgNVmhC/4+LGkiyGO2O9D7ZIxxorirINciDJwAiGWgy4qllKnH6gBjx3JUMkqGznUyH
         HkPN0L4pXXrc67yEUMz89Zm+ZJoKs3ZYthnO2bA0YkGGPbfOaN4vd2fSXuoJSr/awyvK
         SHMVOvL7nWaVeV55/8IsI/4A/82JyUkI/j3zLRt6jLpr+C20zliwot/ocwN6KBbfMdvv
         tLcw==
X-Gm-Message-State: AG10YORtEGdjaS7isJ9TBF3IpobMH3oFxlc/jWLPRosnRYOeMPFIpezF6nWQfuXkTovefw==
X-Received: by 10.98.65.11 with SMTP id o11mr35927573pfa.115.1455684451943;
        Tue, 16 Feb 2016 20:47:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id m87sm28660346pfj.38.2016.02.16.20.47.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 20:47:31 -0800 (PST)
Date: Wed, 17 Feb 2016 10:17:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: Return correct error codes
Message-ID: <20160217044728.GA8935@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This change has been made with the goal that kernel functions should
return something more descriptive than -1 on failure.

The return value of alloc_etherdev on failure should return a -ENOMEM
and not a -1. This was found using Coccinelle. A simplified version of
the semantic patch used is:

//<smpl>
@@
expression *e;
identifier l1;
@@

e = alloc_etherdev(...);
if (e == NULL) {
...
return -1
+ -ENOMEM
;
}
//</smpl

Furthermore, return -ENODEV on failure of register_netdev() instead
of -1.

The two call sites store the return value in a variable, hence no
change is required at the call site.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -corrected semantic patch
 drivers/staging/wilc1000/linux_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index a731b46..4f8b21d 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1333,7 +1333,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 	for (i = 0; i < NUM_CONCURRENT_IFC; i++) {
 		ndev = alloc_etherdev(sizeof(struct wilc_vif));
 		if (!ndev)
-			return -1;
+			return -ENOMEM;
 
 		vif = netdev_priv(ndev);
 		memset(vif, 0, sizeof(struct wilc_vif));
@@ -1373,7 +1373,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 		}
 
 		if (register_netdev(ndev))
-			return -1;
+			return -ENODEV;
 
 		vif->iftype = STATION_MODE;
 		vif->mac_opened = 0;
-- 
1.9.1


