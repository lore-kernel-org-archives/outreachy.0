X-GM-THRID: 6329771222260252672
X-Received: by 10.157.35.244 with SMTP id t107mr637463otb.2.1473764707231;
        Tue, 13 Sep 2016 04:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls508336itd.22.gmail; Tue, 13 Sep
 2016 04:05:06 -0700 (PDT)
X-Received: by 10.66.14.166 with SMTP id q6mr155495pac.48.1473764706727;
        Tue, 13 Sep 2016 04:05:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y124si3084515pfg.1.2016.09.13.04.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g202so9491100pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DbWV3uJvDLUqJ0Qp+D1PSDPTPbb+gQ/hGEwvLedK8lQ=;
        b=JJj7/sX8gpNmHVmbDIILX203HbZqqoT37uX74UI/C2DBDe2+KhHTENMRFSqtgXC2QP
         L0Zk9zjyDy2ZUhF4PBBdQApayH1UZicHPQE6Qcl3aM8ZDjue/Nf5qGM/Ra6Od0cUUPON
         bLZhqAKOWUd78SqsjDtLOOrzMAeEv8h7AKXiXRoaWex8nSV5mhFD3XB06CeX/c989i8q
         1MBcXUBynmaS8AFCtEDYHcIQxhq9RL8SIVv52Q4iSVKOnSsMvlu0uThu3ToyuwDmgheh
         O3TD0cGZUAvtu51oIfon4N8ytcFyS+ZbEsubYwCkEtmVy2ZWFDUrosBuwe8IbLJ0xhz2
         PoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DbWV3uJvDLUqJ0Qp+D1PSDPTPbb+gQ/hGEwvLedK8lQ=;
        b=T5a5GMZ9tb5L3DMMEIT5qL4FGRoYnU3D+ZpK3BckJhEZwVf4J/SA6bhoHg6sSX2y+o
         kRy2FZTWghbDFKrgPHdoDQmLy5JHAWp24Vf49Pj+5hnzWqwTjpMsrK7bP+P7OhdLCpKk
         u6dMI1QHIKIFYR/vAmXfjx1nmqh5oYcs7VRdjsqMuDjFpvp4o3CcbZPaUf4vyB6LIkpX
         X8Psnj65nYsQXD2AFFLLpkt22avi/Skgo3TzLCfyUloqTFcruldIJjhm/aY1mIklvNs+
         kzK2FASu9IUXXbID8N4wVdhleyKBvshFuFAzudrnNvwdUU6fGLV+XWcbGT9rlwmR11Ml
         aa8Q==
X-Gm-Message-State: AE9vXwPkldjgknifKJrI2lY+phghLwPGm+DdthMNdFrZ/irxTYY0IlL+F6YtsLWS0CFNqQ==
X-Received: by 10.98.153.202 with SMTP id t71mr229310pfk.114.1473764705602;
        Tue, 13 Sep 2016 04:05:05 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id bm8sm30530835pac.16.2016.09.13.04.05.02
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:05:04 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:34:53 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/6] staging: media: lirc: lirc_imon: Remove multiple
 blank lines
Message-ID: <20160913110444.GA10389@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

checkpatch complains about multiple blank lines.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
		-modify commit message

 drivers/staging/media/lirc/lirc_imon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index a183e68..1da5cc0 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -32,7 +32,6 @@
 #include <media/lirc.h>
 #include <media/lirc_dev.h>
 
-
 #define MOD_AUTHOR	"Venky Raju <dev@venky.ws>"
 #define MOD_DESC	"Driver for SoundGraph iMON MultiMedia IR/Display"
 #define MOD_NAME	"lirc_imon"
-- 
1.9.1


