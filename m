X-GM-THRID: 6249584519546929152
X-Received: by 10.129.101.66 with SMTP id z63mr42737498ywb.14.1455201597002;
        Thu, 11 Feb 2016 06:39:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.42 with SMTP id ph10ls769035igb.1.canary; Thu, 11 Feb
 2016 06:39:56 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr15159222igg.4.1455201596235;
        Thu, 11 Feb 2016 06:39:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id tn7si986796pac.1.2016.02.11.06.39.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:39:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id jp17so884286pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Kgeo/3B6pm3LQHo50iRZGuP9+X0Ev5RcW071YBEhbsM=;
        b=GMu/rpIEv4bcyt/f7hgpVHJi8JhMVpFMIvg6cIFzC0anssWJpawucY+Fe5s9Vp0q2K
         Phfc7Lq104lNQkbguwSISr2UFcO4Mfsdq5+2eC9Iw+U7XIzjXP3SXmSVRHxMnRjXCkR/
         e0JyDKF+X20ZflBjDfY2siUOASqDUldML1ne1k6+Qp9chn089PzFiQ4XpTt+kOqeHp/7
         3JGO+QJQLzBWpyRJCVqlBfifg1L+/tLg5ULS/a26X4ze+db1CHz2pguzZ87l8TqxScl9
         soOZycftuM1g8kx8gdm5xNzi73ZsSdKf5c/ckpohmQk4R0xZeAVmnXz8PRgV+BHKJ/O9
         TfTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Kgeo/3B6pm3LQHo50iRZGuP9+X0Ev5RcW071YBEhbsM=;
        b=YSmeCzBDtN6bgkun11OQd9KChqkcp36nO+K4PjZUAI5qTA0hWJkJehcF/qLO9VNLAs
         STtBM1d0OwLCMeghk7dxRXTuO/fHcrZq+m0Xcykp2PxfD6vX1pTBpQFmu/EQDHTWqa5h
         chdISF2B4kswmk+PT4pqciAl5YTKAVtV3h1j6t6qAPI6apKclu2n/vaGQM0IVCJhSqIy
         IeMVPZxa+OGJ/h6utG5/RQzy4qgTMGGwvfVXpXnBdq0B8yn9yEBk75dtV1h3eNnGmRpA
         WqccuC/Kg/KhWb7A94I7bAgbFQhojCxJzBRzr03y5hw0ARrbEFqjRmqX0Mm9nBR2EnvC
         SThg==
X-Gm-Message-State: AG10YOTBFz/7veDBzUR2LV0XCpqFL8o9MHkONQcGvjoMpwmCW55hVB9wd8aup4L5h7LHEg==
X-Received: by 10.66.159.38 with SMTP id wz6mr67265722pab.12.1455201596080;
        Thu, 11 Feb 2016 06:39:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id x12sm12876385pfi.88.2016.02.11.06.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:39:55 -0800 (PST)
Date: Thu, 11 Feb 2016 20:09:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/5] staging: comedi: drivers: pcmuio: Merge if conditions
Message-ID: <20160211143952.GA32743@amitoj-Inspiron-3542>
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

 drivers/staging/comedi/drivers/pcmuio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
index 7ea8130..d1d70fd 100644
--- a/drivers/staging/comedi/drivers/pcmuio.c
+++ b/drivers/staging/comedi/drivers/pcmuio.c
@@ -319,10 +319,7 @@ static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
 
 	spin_lock_irqsave(&chip->spinlock, flags);
 
-	if (!chip->active)
-		goto done;
-
-	if (!(triggered & chip->enabled_mask))
+	if (!chip->active || !(triggered & chip->enabled_mask))
 		goto done;
 
 	for (i = 0; i < cmd->chanlist_len; i++) {
-- 
1.9.1


