X-GM-THRID: 6341446809847595008
X-Received: by 10.28.154.197 with SMTP id c188mr20145wme.8.1476483142218;
        Fri, 14 Oct 2016 15:12:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.194.6 with SMTP id s6ls184374wmf.25.canary; Fri, 14 Oct
 2016 15:12:21 -0700 (PDT)
X-Received: by 10.28.91.143 with SMTP id p137mr18359wmb.23.1476483141562;
        Fri, 14 Oct 2016 15:12:21 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f1si38527wmf.2.2016.10.14.15.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:12:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 79so375724wmy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 15:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KeZFYAKXUXc35UwJEM876oR2PCDiEXyuil5qwkCyNiY=;
        b=uHvPHAKN4K6ERCX/jw95jz+INdF+or8I1fw3euWw/vhpPP2QVU6EJEwEGsYXUCuFSP
         3KXeKsjQDHt5ROmqDVxHWz3p30sz3EVBJpYLW6uQdKDpZVfcw9gM1xrahij7ceknLoDC
         xtqqIQpOxate9n9iTMaNmMyF2cdvl2Sm9scscTlvI+zyij/ZWOFGgzSk77qcdRqBPrwe
         bUIxOJQj6Q5mMB22S1i8SLKUqFOTCmv2i39GbrIYrsZX9YGNbNzycOzoUlfhQpnVyaqg
         1R6mCaOjv2ugwQmyF8nCmbIEsrUPELVpsicat8fC7g9AtI1qneOQ4rTHgrrrmdsY8xtb
         UQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KeZFYAKXUXc35UwJEM876oR2PCDiEXyuil5qwkCyNiY=;
        b=LFu46tIdd/DGIVbpUfjDZqFdjTOqndgYM1zORvaVSopow1cg7WMAysP3GYA7EnhlLG
         CbzdDY4fuDK+Ohk9uJ5A7nLTRisx+cpmjEEnfWJzX3T3WxOItUm5BGIXUqphq91gCJIg
         5RtbdJGN+nbwPYht9+KqUOed4Vwx3Ex2gLPNPNffl66Xl8fdO/KW89wVWYl7a4PBtlk5
         Z9wAjirkpWHFS9yYW4jkpYZg+yonPKYAARvAML4tvtH7v0Rb0cxLb8HBJhtqoWhVwV9x
         3BoJ8nVrFjZvbtSAFWuB/k2GXk1oZ64h+ZYstXTrAAez+UFi7Bsmv2GU82DAxjiHeNky
         4JdQ==
X-Gm-Message-State: AA6/9Rn9WjGj34YMN/K24ZNLMNHtXgMq3S89PhEwUKJyUuIxQ6FN8p5WeOX3Ei+fWMyUjw==
X-Received: by 10.28.45.198 with SMTP id t189mr261757wmt.52.1476483141364;
        Fri, 14 Oct 2016 15:12:21 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (119.red-88-21-223.staticip.rima-tde.net. [88.21.223.119])
        by smtp.gmail.com with ESMTPSA id h189sm523163wmd.10.2016.10.14.15.12.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:12:20 -0700 (PDT)
Date: Sat, 8 Oct 2016 07:57:53 +0200
From: Keila Novo <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Subject: [PATCH] Checkpatch.pl error fixed:"Tabstop remove".
Message-ID: <20161008055753.GA24115@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Checkpatch.pl error fixed:"No tabstop at the init
of the line"

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/nvec/nvec_power.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
index b16c871..88e6c0e 100644
--- a/drivers/staging/nvec/nvec_power.c
+++ b/drivers/staging/nvec/nvec_power.c
@@ -441,7 +441,11 @@ static struct platform_driver nvec_power_driver = {
 	.probe = nvec_power_probe,
 	.remove = nvec_power_remove,
 	.driver = {
+<<<<<<< HEAD
 		 .name = "nvec-power",
+=======
+		 .name = nvec_power,
+>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop
 	}
 };
 
-- 
2.7.4


