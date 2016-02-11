X-GM-THRID: 6249584492196921344
X-Received: by 10.129.72.199 with SMTP id v190mr43824689ywa.44.1455201580607;
        Thu, 11 Feb 2016 06:39:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls576350ioo.92.gmail; Thu, 11 Feb
 2016 06:39:40 -0800 (PST)
X-Received: by 10.50.73.102 with SMTP id k6mr15113864igv.4.1455201580130;
        Thu, 11 Feb 2016 06:39:40 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id u66si1043425pfa.2.2016.02.11.06.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:39:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id c10so30866674pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uGfpa933RwHe8X/d44ykce22spczD0VtxvxNYg6Sx1E=;
        b=nNTg2wCNHPMKcf/xZc5umVjZPkpD1oD2U6gSEk2e2Rw734fImQfP5/y7MyD7JFmlk/
         5S1vRvyHyw3Ry+wyZUhg6UUcSqbbknkPnN++keSQoXtp5FBk/NTZbgVaitUOwgkKhADh
         u1PUwxVfgwJ/2h3TbSWZx5KyYkYdYS1wC6U1vIa3Z7Bmcs6yyfHTMR6oh0lfhdEwerzG
         V5ibQCaq39ljEvqvvcDaDDF0mxzwRB34HW24Bl2VNIHByTnfGUFL7CALBOsoR+xvAGKs
         Z5VR2Lawb+i6q57P5QL1uiWsvz74awIcVwxtC0pFaF0Tx+gJaXaFkWr+vIcdwCF0se8I
         B72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uGfpa933RwHe8X/d44ykce22spczD0VtxvxNYg6Sx1E=;
        b=VzRBX8q92FtuIx8TyWL2Hqh/yD+dPJvl5+jAVB8GBx/4NDdd2MXgWSLRS02edYopeW
         6t4n42psT19YqMy2dNHL8Fy2+9fTU3nyvf9FgggYKkjto9dcVbD1g6uhv68vLBGzxrP7
         nNNtgokyd4p7iG2zXjiRwgW+mYp+h+o8oONvRJ7YJ80h6vzlnu4HBFaLJ/El/tHhsUF7
         sxR23Ct5N7fKIGom2rdyzHltfcrZx3YfOg8T/djr0HYKUq87L5fig+wVFOh+kWBk5/3J
         ly6vMvt7dSmbjBGKnVpDqeuO4Wg4TaWOTm0iOWnVEVrdiUGqPnpM70QJeAGn1N4ZV/SS
         pdJQ==
X-Gm-Message-State: AG10YOSB7ozLinYKCPH5PaT0ODm42YTOAAnYvNknCrOJlphJrlVq9Kecoo4Tag0UICKPdA==
X-Received: by 10.98.8.80 with SMTP id c77mr45078375pfd.42.1455201579984;
        Thu, 11 Feb 2016 06:39:39 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id 67sm11251220pfi.2.2016.02.11.06.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:39:39 -0800 (PST)
Date: Thu, 11 Feb 2016 20:09:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/5] staging: comedi: drivers: dt282x: Merge if conditions
Message-ID: <20160211143936.GA32724@amitoj-Inspiron-3542>
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
Changes in v3:
        -None
Changes in v2:
        -While merging use !x || !y instead of !(x && y)

 drivers/staging/comedi/drivers/dt282x.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 5a536a0..dc188c1 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -887,10 +887,7 @@ static int dt282x_ao_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_src)
 		return -EINVAL;
 
-	if (!dt282x_ao_setup_dma(dev, s, 0))
-		return -EPIPE;
-
-	if (!dt282x_ao_setup_dma(dev, s, 1))
+	if (!dt282x_ao_setup_dma(dev, s, 0) || !dt282x_ao_setup_dma(dev, s, 1))
 		return -EPIPE;
 
 	outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
-- 
1.9.1


