X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.142.1 with SMTP id rs1mr627379lbb.19.1425668168611;
        Fri, 06 Mar 2015 10:56:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls612762wia.43.canary; Fri, 06 Mar
 2015 10:56:08 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr5711559wib.1.1425668167999;
        Fri, 06 Mar 2015 10:56:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id i7si220630wif.0.2015.03.06.10.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 10:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so5753539wiw.4
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 10:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=k8B5lW6dCfa7+kRxztUXsq0DSlK4Ml/Gpy4p55kabrc=;
        b=SQEvjDUPk3yhLQnVzx74034NlCnv1xEOrRLr1pszhD10eGdBMtYjqbZlA2IEQfYZA+
         entE4YlluOAPvSwpZ/JNNi7kNrYIQEIcdkTt3lVB6QX5xxiD6qvF6fXrJepM1QRyD7Pj
         PGyqpA9aRESNSepYRyFcMHWHwjPcGRMfpQmYew0P2QMR/qbTtaYMd04tY0vy5qf/ohJJ
         a2Twpb8GYC+ZMEjv1fJVSFuLJRcBJvgXQ2XbC+aslcqVXDIgWQme+oXHivcppwn96b/0
         R15vit+r0sveVPlRS8ZLnYkGdxiKfbpJqqKOlheUg2uPaF/osEBnMYBuG/PTgItjcU/z
         tzUg==
X-Received: by 10.194.243.1 with SMTP id wu1mr32870170wjc.69.1425668167906;
        Fri, 06 Mar 2015 10:56:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id dj5sm16121714wjb.28.2015.03.06.10.56.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 10:56:07 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1402C62672; Fri,  6 Mar 2015 21:56:05 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/8] Staging: clean dev_err logging when __func__ 2nd arg 
Date: Fri,  6 Mar 2015 21:56:03 +0300
Message-Id: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes  __func__ from dev_err when __func__ is the second argument. dev_err includes information about: 
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:


@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@


if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

	
@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@


- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Haneen Mohammed (8):
  Staging: fbtft: clean dev_err() logging
  Staging: media: clean dev_err logging
  Staging: gdm72xx: clean dev_err logging
  Staging: comedi: clean dev_err logging
  Staging: rts5208: clean dev_err logging
  Staging: iio: clean dev_err logging
  Staging: slicoss: clean dev_err logging
  Staging: ste_rmi4: clean dev_err logging

 drivers/staging/comedi/drivers/ni_mio_common.c |  4 +--
 drivers/staging/comedi/drivers/usbduxsigma.c   | 26 +++++++++-----------
 drivers/staging/fbtft/fb_agm1264k-fl.c         | 16 ++++++------
 drivers/staging/fbtft/fb_pcd8544.c             |  3 ++-
 drivers/staging/fbtft/fb_ra8875.c              |  8 +++---
 drivers/staging/fbtft/fb_ssd1306.c             |  4 +--
 drivers/staging/fbtft/fb_ssd1331.c             |  6 +++--
 drivers/staging/fbtft/fb_tls8204.c             |  2 +-
 drivers/staging/fbtft/fb_uc1701.c              |  3 ++-
 drivers/staging/fbtft/fb_watterott.c           |  2 +-
 drivers/staging/fbtft/fbtft-bus.c              |  2 +-
 drivers/staging/fbtft/fbtft-core.c             |  5 ++--
 drivers/staging/fbtft/fbtft-io.c               |  7 +++---
 drivers/staging/gdm72xx/gdm_sdio.c             |  6 ++---
 drivers/staging/iio/light/isl29028.c           |  8 +++---
 drivers/staging/iio/light/tsl2x7x_core.c       | 34 +++++++++++---------------
 drivers/staging/media/lirc/lirc_imon.c         | 26 +++++++++-----------
 drivers/staging/media/lirc/lirc_sasem.c        | 18 ++++++--------
 drivers/staging/media/omap4iss/iss.c           | 16 ++++++------
 drivers/staging/media/omap4iss/iss_video.c     |  3 +--
 drivers/staging/rts5208/rtsx.c                 |  4 +--
 drivers/staging/slicoss/slicoss.c              |  9 +++----
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c  | 12 ++++-----
 23 files changed, 102 insertions(+), 122 deletions(-)

-- 
1.9.1


