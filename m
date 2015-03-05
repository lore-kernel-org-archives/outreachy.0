X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr1811818lbk.5.1425591372160;
        Thu, 05 Mar 2015 13:36:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.130 with SMTP id fw2ls34569wib.20.gmail; Thu, 05 Mar
 2015 13:36:11 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr2289520wib.2.1425591371782;
        Thu, 05 Mar 2015 13:36:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id i8si672089wif.1.2015.03.05.13.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:36:11 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so55679004wes.10
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=I1pe+PZmloOWQYfEIWtGgjHOxEfI+kCeDgKUxpMQIq4=;
        b=WD2HUGognF0hASuwVmbLQyqLyagpB0geadg6thbXyofTK8M8u8oK6jQ5iE2Xg3kDIv
         bU5eWqxBeXh7d2zGmz7fn0o6zxAoMMxo5MnKQFPN41preuMfplQk+WSPPKQ1gcmLMyfY
         xhDkOPcNgTIFGvQxmqevkC8wB8Y1WbZLQLu2OvxMV2l7uhwfKVmLtISENXNAbomnMXU+
         J9smoNgF4p9vw3g2eXj5pg/U3Qzh58vV96ujKotonzfWKKsZmz9Skl/KEeEwxWw2Ggm9
         0uoQpkRZ53FcbslFWZtArz9uWEZj9UQytXtx+DhlLXMopHds6kNTHX3nckbDkIhl/fZ4
         xFwg==
X-Received: by 10.194.222.197 with SMTP id qo5mr22313509wjc.142.1425591371681;
        Thu, 05 Mar 2015 13:36:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id gz3sm13340162wib.1.2015.03.05.13.36.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:36:11 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 9C2EC62672; Fri,  6 Mar 2015 00:36:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 0/7]Staging: clean de_err() loging 
Date: Fri,  6 Mar 2015 00:36:07 +0300
Message-Id: <1425591367-29508-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

changes in v3: correct patches order from stage:media instead of stages:comedi
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


