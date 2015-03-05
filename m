X-GM-THRID: 6758181371904
X-Received: by 10.112.98.38 with SMTP id ef6mr1109784lbb.3.1425591000224;
        Thu, 05 Mar 2015 13:30:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.106 with SMTP id w10ls1715laz.62.gmail; Thu, 05 Mar
 2015 13:29:59 -0800 (PST)
X-Received: by 10.152.21.9 with SMTP id r9mr1840482lae.0.1425590999627;
        Thu, 05 Mar 2015 13:29:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id r6si671665wix.0.2015.03.05.13.29.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:29:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hm9so18491593wib.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jm/KRPXBS0+XrnMZaovclRNgayDOLVFxuIWTroMFBWY=;
        b=CbchjrQnPA5iFguG3rDYg19tLmyv9xkXgnOAVFq912UyglKLOornn1QsEXbBWTa4xV
         DmQdyIo274Nag2oKI0dKvyAwb6fxZmE9idOL1/XhXVBCy0LvTm66Jitic5OFk4NY0UpC
         gxxtb3FmZu60Y1TszRhsFdQUkDPuJtLwJ9wuGRtMfllGmfqCy/JSlJCP8akK1MXlDs+H
         TL5VVdNfW0WxM+IygT9MVBEurQPexOfO5L+wsrnwmkePfiYPSutn+lTSkdAzM/988xWH
         ybffpTpK9nhD08ZvI5CxgdPosI5akJ/wEa02H+r+jP4B0O/0oTD44xxbzcHBLr4wj88H
         9pVg==
X-Received: by 10.180.14.196 with SMTP id r4mr68947464wic.77.1425590999446;
        Thu, 05 Mar 2015 13:29:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id hi6sm12170252wjc.34.2015.03.05.13.29.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:29:58 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 33B2B62672; Fri,  6 Mar 2015 00:29:56 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2 0/7] Staging: clean de_err() loging 
Date: Fri,  6 Mar 2015 00:29:55 +0300
Message-Id: <1425590995-29317-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

changes in v2: remove "git base -i" coccinelle code placed by mistake.

This patchset removes  __func__ from dev_err. dev_err includes information about: 
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

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
expression a.E, a.msg;
identifier  b.y;
@@


- dev_err(E, msg, __func__);
+ dev_err(E, y);



Haneen Mohammed (7):
  Staging: comedi: Clean dev_err() logging
  Staging: media: Clean dev_err() logging
  Staging: fbtft: Clean dev_err() logging
  Staging: iio: Clean dev_err() logging
  Staging: octeon-usb: Clean dev_err() logging
  Staging: slicoss: Clean dev_err() logging
  Staging: gdm72xx: Clean dev_err() logging

 drivers/staging/comedi/drivers/cb_pcidas64.c   |  6 ++--
 drivers/staging/comedi/drivers/ni_mio_common.c | 36 +++++++++---------------
 drivers/staging/fbtft/fb_ra8875.c              |  3 +-
 drivers/staging/fbtft/fb_ssd1351.c             |  3 +-
 drivers/staging/fbtft/fb_watterott.c           |  3 +-
 drivers/staging/fbtft/fbtft-bus.c              |  4 +--
 drivers/staging/fbtft/fbtft-core.c             | 14 ++++------
 drivers/staging/fbtft/fbtft-io.c               | 11 +++-----
 drivers/staging/gdm72xx/gdm_usb.c              |  4 +--
 drivers/staging/iio/light/tsl2x7x_core.c       | 38 +++++++++-----------------
 drivers/staging/media/lirc/lirc_imon.c         | 32 ++++++++--------------
 drivers/staging/media/lirc/lirc_sasem.c        | 25 ++++++-----------
 drivers/staging/media/lirc/lirc_zilog.c        |  3 +-
 drivers/staging/octeon-usb/octeon-hcd.c        |  2 +-
 drivers/staging/slicoss/slicoss.c              | 14 ++++------
 15 files changed, 73 insertions(+), 125 deletions(-)

-- 
1.9.1


