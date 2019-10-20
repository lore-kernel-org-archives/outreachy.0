X-GM-THRID: 6749942525265444864
X-Received: by 2002:a17:90a:aa81:: with SMTP id l1mr33296pjq.73.1571593462543;
        Sun, 20 Oct 2019 10:44:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:30e:: with SMTP id 14ls2995417pgd.10.gmail; Sun, 20 Oct
 2019 10:44:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIzOey44W9avEvPWIeyYERg+z3YJ6vuEtHTzz1T+J6z1buYDSM4rglhcrcIYZLyvUxeoTV
X-Received: by 2002:a63:1d60:: with SMTP id d32mr21688907pgm.37.1571593461479;
        Sun, 20 Oct 2019 10:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571593461; cv=none;
        d=google.com; s=arc-20160816;
        b=yLA8ubIYtnUZe51D8sfCr9JAQp/9JU954imWbZ9pzAO7lCnpEGs/nnbaTYE2AjaH5M
         0bFHH9CbyCAzU4E+2lo9nxJfA8NUnZsSy6zMgpDohPz/bEa2zmm1iD0NmZFTXcnUmpiB
         tQWgOEGRXr3O8XCT9OsjplcZKnbAUz0ILGqa3bIRYt4KNRqOwHSGKm9s/TLNu1goTDZ4
         olEM7ZcNwMijxfNXzNrjkzudwG8hGVNe7UjqDIAWGjQRQrUGygOygZHRqJJJUnDU7643
         SikXGJbyUg+jGU0ukDrDmFyoVRDcxDeRudjcYQf9IIDLblvKsP6FT5yR6L+io9l3qH9z
         qzLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=P3foq8Kf6NeJESAiU3rbRnP5rJw7QEL+wsM4BlVEH08=;
        b=yDtzeDJZBL6ukLeveqSC83fXyVvYesRpib/6mbQFk4l2y6ueavNCU6s2RvSYEhAMSP
         Jxh41H9PGLf87n2LWKKKwe/r90t2RVhu8v6OO9DDGpF/I5Fgu/J2mxgfeW77UnyvQmRc
         JZLO2vBIUX5HbNU01typPFfD2ETb7tiy4F4u0uBviQ1JCARNzFu0Ll43UFjRms6Jh2yp
         Z2vKB3NksbVzTM9IzU1mTulDAX7DPi2H2vdiwTc3SpFqtHmLffxSYg4Mrc8j91IRSG02
         o/vW3ySwezDLvr/kMV8kWR6oSSNSCf9kJAUWRmlf8/cHQrStbCJWIriIr9KcFwh2+YFc
         UYcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bKHSCMLy;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id e6si477713pjp.2.2019.10.20.10.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 10:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bKHSCMLy;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id d17so2519080qto.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 10:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P3foq8Kf6NeJESAiU3rbRnP5rJw7QEL+wsM4BlVEH08=;
        b=bKHSCMLy6x3BIk8C1AuKGrzebAEQcA8FqNRgacSnLwBI6ulpIm7+pk+O0js4mqBOIt
         /bsHDFplsyU2UyWZ7id0t8Yz0qDGAZKpU54Pm1GwWC3Xyspx6ZfkY0ctvO/c7+icAaOS
         /bGtwoGBYO5E5Iiig+ydQUf7ea/HVFAgqMdIuDDhIUEHTF9ylOFOhDrLiRTKs7GWoIj5
         zjxz0bM2bIdUWCQ+HoeuJWW2oQF4T1bwH4VV4a4twLyTFKSZ/Vq88uF6AHFGJ6V5vSIh
         d3Ct8luRTpeSnUrICTal3rBdBqyoVKI63n/GbBZ5aX2BgarSn5xGDIyPsNL6a0fnunCF
         zuuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P3foq8Kf6NeJESAiU3rbRnP5rJw7QEL+wsM4BlVEH08=;
        b=ASFH5RbPfQkdyLvLe0hWwpLBjxGTXNSrP1G/kmZHjoVw46xAXcUmKqdcUXbo+vpSwT
         9X2Mss6Kyc7Ppo7YrsY2Vak3Cp75uw9+nnksrXWmMdDKyrpzd9IFheSSWLXsJ46qD4kC
         cQrmvf6k45HUOmR6PID0yWZNKEvOe3Rt2iwBo+RntDsAPovvAkQP8Tog1OFex9lmhmQ3
         Ri3rcSit5OCxYgjNZ+Bb4IXINDSDAN1OL5XGTqIsnFgj2l1c6XftkAu49CBYcx4afQcZ
         Bmsmasbcs7y3JBW8+y2wbaLZD4NLW3HMmwIHVkt2rkQoHThMAVRlgUPmetHl2XuwqAjR
         bIGw==
X-Gm-Message-State: APjAAAXFEA+bRd+LaxlrnjMcWwwdoLjp3UjH5lGLdvyhjjOSbKAAh2vN
	6/rNcIgPcVtSzZvD/bRBbqLmYd3lOl2sRA==
X-Received: by 2002:ac8:3934:: with SMTP id s49mr19880707qtb.321.1571593460366;
        Sun, 20 Oct 2019 10:44:20 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id g6sm5095468qtv.51.2019.10.20.10.44.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 10:44:19 -0700 (PDT)
Date: Sun, 20 Oct 2019 15:44:15 -0200
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191020174415.GA3873@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line ending with a '('

Signed-off-by: 'Cristiane Naves <cristianenavescardoso09@gmail.com>'
---
 drivers/staging/gasket/gasket_ioctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..d1b3e9a 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
 
-	return gasket_interrupt_set_eventfd(
-		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
+	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
+					    die.interrupt, die.event_fd);
 }
 
 /* Read the size of the page table. */
-- 
2.7.4


