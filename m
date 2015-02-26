X-GM-THRID: 3635562938368
X-Received: by 10.194.11.70 with SMTP id o6mr1129265wjb.6.1424942803111;
        Thu, 26 Feb 2015 01:26:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.193 with SMTP id cw1ls54262wib.44.gmail; Thu, 26 Feb
 2015 01:26:42 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr3534697wib.5.1424942802813;
        Thu, 26 Feb 2015 01:26:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id r6si82670wix.0.2015.02.26.01.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id w55so8763950wes.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=f93lsaIUMwehWKkprxowYJDNSpQK9faxffSFS0th9is=;
        b=edoxlW2hMBIldjDUW1wUeM4HaXtgCVIZxstzWSLwyNkeNk8qS21q2F4OQm6P472MFf
         FZAlLMyT8AY2+7XPtvMJ9556MxYwyMNWz9MrzLDrm+jfeHgdKizZ/vjKEMmBQDdZAR/7
         9EmZzzAZgsWIbP4WAoURRSHrneus2WrmbX7s8YAtDzmI3nfsBY7ynFy0ysz5aiy1kt+1
         yMozkWzAKocoQFag9OhBjXz+kgO8QDyn7Pu041q+ClDHQETOD5NCeKm+S9DXYqH6rJri
         5EpxA1p2mXvL3YGkBehUQ15ESlTlQ5bw07m81GqBa1bp6fVaRNiJfkYpB3xJysKVrX04
         c5ww==
X-Received: by 10.194.122.38 with SMTP id lp6mr15222996wjb.24.1424942802732;
        Thu, 26 Feb 2015 01:26:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id y3sm497161wju.14.2015.02.26.01.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:26:41 -0800 (PST)
Date: Thu, 26 Feb 2015 11:26:30 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/24] rewrite the right hand side of an assignment
Message-ID: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset is concerned with rewriting the right hand side of an
assignment for expressions of the form:
a = (a <op> b);   
to be:
a <op>= b;
where <op> = << | >>.

The set resolves the issue in the following staging drivers:

comedi
emxx_udc
iio
lustre
media/davinci_vpfe
rtl8188eu
rtl8192e
rtl8192u
rtl8712
rtl8723au
xgifb

The issue was detected and resolved using the following coccinelle
script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Aya Mahfouz (24):
  staging: xgifb: rewrite the right hand of an assignment
  staging: rtl8723au: rewrite the right hand of an assignment
  staging: rtl8723au: hal: rewrite the right hand of an assignment
  staging: rtl8723au: hal: rewrite the right hand of an assignment
  staging: rtl8723au: hal: rewrite the right hand of an assignment
  staging: rtl8712: rewrite the right hand of an assignment
  staging: rtl8712: rewrite the right hand of an assignment
  staging: rtl8712: rewrite the right hand of an assignment
  staging: rtl8712: rewrite the right hand of an assignment
  staging: rtl8192u: rewrite the right hand of an assignment
  staging: rtl8192u: rewrite the right hand side of an assignment
  staging: rtl8192e: rewrite the right hand side of an assignment
  staging: rtl8192e: rewrite the right hand side of an assignment
  staging: rtl8188eu: rewrite the right hand side of an assignment
  staging: rtl8188eu: rewrite the right hand side of an assignment
  staging: rtl8188eu: rewrite the right hand side of an assignment
  staging: rtl8188eu: rewrite the right hand side of an assignment
  staging: davinci_vpfe: rewrite the right hand side of an assignment
  staging: lustre: lov: rewrite the right hand side of an assignment
  staging: lustre: lmv: rewrite the right hand side of an assignment
  staging: lustre: libcfs: rewrite the right hand side of an assignment
  staging: iio: Documentation: rewrite the right hand side of an
    assignment
  staging: emxx_udc: rewrite the right hand side of an assignment
  staging: comedi: rewrite the right hand side of an assignment

 drivers/staging/comedi/drivers/rtd520.c            |   4 +-
 drivers/staging/emxx_udc/emxx_udc.c                |   4 +-
 drivers/staging/iio/Documentation/generic_buffer.c |   2 +-
 drivers/staging/lustre/lustre/libcfs/debug.c       |   2 +-
 drivers/staging/lustre/lustre/lmv/lmv_obd.c        |   2 +-
 drivers/staging/lustre/lustre/lov/lov_obd.c        |   2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |   2 +-
 drivers/staging/rtl8188eu/core/rtw_security.c      |   4 +-
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   |   2 +-
 drivers/staging/rtl8188eu/hal/rf_cfg.c             |   4 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c        |   2 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     |   4 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c          |   2 +-
 .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    |   2 +-
 drivers/staging/rtl8192u/r8192U_core.c             |   4 +-
 drivers/staging/rtl8712/rtl8712_cmd.c              |   2 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |  10 +-
 drivers/staging/rtl8712/rtl871x_eeprom.c           |   4 +-
 drivers/staging/rtl8712/rtl871x_security.c         |   4 +-
 drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c   |   4 +-
 drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c  |   4 +-
 drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c   |   4 +-
 drivers/staging/rtl8723au/hal/hal_com.c            |   2 +-
 drivers/staging/xgifb/vb_setmode.c                 | 140 ++++++++++-----------
 24 files changed, 108 insertions(+), 108 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

