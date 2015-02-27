X-GM-THRID: 3543146692608
X-Received: by 10.42.133.131 with SMTP id h3mr12389665ict.15.1425017881095;
        Thu, 26 Feb 2015 22:18:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.137 with SMTP id yq9ls113079igb.32.canary; Thu, 26 Feb
 2015 22:18:00 -0800 (PST)
X-Received: by 10.66.147.132 with SMTP id tk4mr11566637pab.23.1425017880897;
        Thu, 26 Feb 2015 22:18:00 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id bo1si397281pbc.0.2015.02.26.22.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 22:18:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so18780039pdj.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 22:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ejyGkkl8XmkfvNNUKQTeEJyCUCSXK692ok3a1HNnKqI=;
        b=kHVj00MxY3/55j/o6X1BNesVNSWkJzsue2jkCdKhhMm086J934JPisPFBtToS+tm0z
         GZQT9e4DfdJiw1zL5k5ID9EbI6M3kVwvubJSwORiMODaEAVQgG1O4xvmJtxlkybBdTrV
         oddLXMN8rFFtZt0sPoYNJ46f/zQRQGE0oSfw2jSJERxCD13R73ZXCiEGR8BomLuqkeom
         flgaiHQAt0uNf/54t1c9ywWrI3CCVDALDue33MoGhitNVGsSuKKq1hxhXdYsoDfrW/3p
         bg0C+9QPjKtJ70zim4bFIvgXutz63+SQ6J1cgjdQv7yLgOJSteG1Y/Olj/OcwviOD14C
         lCiw==
X-Received: by 10.68.200.134 with SMTP id js6mr21375207pbc.55.1425017880794;
        Thu, 26 Feb 2015 22:18:00 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.201])
        by mx.google.com with ESMTPSA id 2sm2864839pdp.0.2015.02.26.22.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 22:17:59 -0800 (PST)
Date: Fri, 27 Feb 2015 11:47:55 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Staging: rtl8188eu: Use mod_timer and setup_timer
Message-ID: <cover.1425017327.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of timer API 
functions mod_timer and setup_timer instead of 
driver specific functions _set_timer and 
_init_timer respectively. Here, these chnages
are done using Coccinelle.

Vaishali Thakkar (2):
  Staging: rtl8188eu: Eliminate use of _set_timer
  Staging: rtl8188eu: Eliminate use of _init_timer

 drivers/staging/rtl8188eu/core/rtw_cmd.c          | 18 ++++---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  3 +-
 drivers/staging/rtl8188eu/core/rtw_led.c          | 62 +++++++++++++++--------
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 15 ++++--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  7 +--
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  4 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c         | 10 ++--
 drivers/staging/rtl8188eu/include/osdep_service.h | 14 -----
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  6 ++-
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  3 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  4 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +-
 14 files changed, 105 insertions(+), 69 deletions(-)

-- 
1.9.1


