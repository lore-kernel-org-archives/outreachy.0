X-GM-THRID: 6249584461823868928
X-Received: by 10.50.43.193 with SMTP id y1mr8462288igl.6.1455094772541;
        Wed, 10 Feb 2016 00:59:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls237634qga.56.gmail; Wed, 10 Feb
 2016 00:59:32 -0800 (PST)
X-Received: by 10.31.9.78 with SMTP id 75mr36612619vkj.9.1455094771988;
        Wed, 10 Feb 2016 00:59:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si220988pfb.1.2016.02.10.00.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so70109pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=58sO2zeUuLoppXnnOd8W4KTmSuM13WAI00wnmAIpRL4=;
        b=ohfoCfnRR3keNvtiYE7dGJm7HBet9jK58FRBmA8elOLJaOQfC9pEluwEnDVKwLuPlU
         k5eFYZjz2hL0c5E+10bLhv5B3rSi2w+RUGvzBc1+iy2PH8HS689imZnvrUJMFXb4Wigc
         O09niXXl1wRAos0vf0KwJhkJ4OVxNQnhVofytna2txuh9pBgYTMGKpmK6SDeqhoDkFHL
         wx4nPS3YHHeVQoMrXzZbEpV2IAC8ymrok/TOSJuCpcWr10aR8mAYOIsPdJuLm/McQkSq
         LN4ZdpBO5CATP1f90ViDb2xGRKLH9NBP8VhzgGJwE+AHdNpNf7pgCuDGfur4A/QUmAsw
         XTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=58sO2zeUuLoppXnnOd8W4KTmSuM13WAI00wnmAIpRL4=;
        b=Pk55nOap0/yFo2BEe73Yu91PuXVB5KFJSYLAkQ53WSNR/XpZ3IWbMAbiAxelKwZKzM
         De5C6K3tPFslR1PuD//vyHx4tfvWRhK2HuVE0/DY4K2DF0e6JVom07nGOd38jx9IJqzf
         wuCV/YZVWdnctOIh3fiBmhrwuSv3nGllsy1Cc3YyQ5Hj+ND6q9SSHMdetXFDyuKcZfq/
         URQEHjLP+ye/OT3rB8ZSMGG1NcT1vogyvphfXFwlsZO4MOUHb9NxAExNKfzTJNt+S47G
         XJ3K2m5tD7paYp1NT+/kvNfTJn4HxD/5GGX95Rp1SuUntUCMgFgxArQ6rYbylGkzWaND
         ybzw==
X-Gm-Message-State: AG10YORaITVqP07CG227qJX0T8FqO/Np7UG/BLifGo/ptoE3gLodX9TPhGYk29AbZuUetA==
X-Received: by 10.98.70.211 with SMTP id o80mr56474917pfi.124.1455094771814;
        Wed, 10 Feb 2016 00:59:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id fl9sm3354671pab.30.2016.02.10.00.59.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:31 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: comedi: range: Merge if conditions
Message-ID: <20160210085928.GA14628@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/range.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
index ce3a58a..f5c63ab 100644
--- a/drivers/staging/comedi/range.c
+++ b/drivers/staging/comedi/range.c
@@ -67,9 +67,7 @@ int do_rangeinfo_ioctl(struct comedi_device *dev,
 	subd = (it.range_type >> 24) & 0xf;
 	chan = (it.range_type >> 16) & 0xff;
 
-	if (!dev->attached)
-		return -EINVAL;
-	if (subd >= dev->n_subdevices)
+	if (!dev->attached || (subd >= dev->n_subdevices))
 		return -EINVAL;
 	s = &dev->subdevices[subd];
 	if (s->range_table) {
-- 
1.9.1


