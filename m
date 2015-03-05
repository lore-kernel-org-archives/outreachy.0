X-GM-THRID: 6758181371904
X-Received: by 10.112.35.135 with SMTP id h7mr1745844lbj.23.1425583760467;
        Thu, 05 Mar 2015 11:29:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls379130laf.99.gmail; Thu, 05 Mar
 2015 11:29:20 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr1757813lbb.14.1425583760044;
        Thu, 05 Mar 2015 11:29:20 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id cl5si635491wib.3.2015.03.05.11.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:29:20 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id x3so8436328wes.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xvIUijdnxfY2rTtC9rG5TWTX8hm3+w7CWDvOqx3+dxY=;
        b=h6MVWKWvecGi9nUHhHQuixEExjJPp9rxao6I3xGslxKXkwPdS6QkPv2Jw6EIUdvcpq
         SCWPrru3gA+K5fxvpLbBFZj6rbVlXo6y4XAn02Y8NV2v6TMQL0es72O27DNcpHBbSB0s
         4UbYBm3RwDZsNuwRNLDvkCDk+P89Z37bZNDOZgZHxe/9XSKbc73wZEbS/aBWziettEPL
         KOtKIkbwsCVyuasa86CFMsGXnYQHERPfYlxlsNupyA2beEnLaDZ/SFd2ToN/WINGF54b
         c6wRyX4Si9CIrJ0r8x5dnPulr4/S2v1eu+mffFJHuIK1lFI9Bxx0hDOKXjKV9/53DfI2
         1/Xw==
X-Received: by 10.194.200.68 with SMTP id jq4mr22181794wjc.58.1425583759920;
        Thu, 05 Mar 2015 11:29:19 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id n6sm11817179wjy.8.2015.03.05.11.29.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:29:19 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C7ABA62672; Thu,  5 Mar 2015 22:29:28 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/7] Staging: clean de_err() loging 
Date: Thu,  5 Mar 2015 22:29:28 +0300
Message-Id: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes  __func__ from dev_err. dev_err includes information about: 
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@git rebae -i
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
  Staging: media: Clean dev_err() logging
  Staging: fbtft: Clean dev_err() logging
  Staging: iio: Clean dev_err() logging
  Staging: octeon-usb: Clean dev_err() logging
  Staging: slicoss: Clean dev_err() logging
  Staging: gdm72xx: Clean dev_err() logging
  Staging: ste_rmi4: Clean dev_err() logging

 drivers/staging/fbtft/fb_ra8875.c             |  3 +--
 drivers/staging/fbtft/fb_ssd1351.c            |  3 +--
 drivers/staging/fbtft/fb_watterott.c          |  3 +--
 drivers/staging/fbtft/fbtft-bus.c             |  4 +--
 drivers/staging/fbtft/fbtft-core.c            | 14 ++++------
 drivers/staging/fbtft/fbtft-io.c              | 11 +++-----
 drivers/staging/gdm72xx/gdm_usb.c             |  4 +--
 drivers/staging/iio/light/tsl2x7x_core.c      | 38 +++++++++------------------
 drivers/staging/media/lirc/lirc_imon.c        | 32 +++++++++-------------
 drivers/staging/media/lirc/lirc_sasem.c       | 25 +++++++-----------
 drivers/staging/media/lirc/lirc_zilog.c       |  3 +--
 drivers/staging/octeon-usb/octeon-hcd.c       |  2 +-
 drivers/staging/slicoss/slicoss.c             | 14 +++++-----
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 37 +++++++++-----------------
 14 files changed, 71 insertions(+), 122 deletions(-)

-- 
1.9.1


