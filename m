X-GM-THRID: 3543146692608
X-Received: by 10.66.65.109 with SMTP id w13mr6676673pas.28.1424931146181;
        Wed, 25 Feb 2015 22:12:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.111 with SMTP id j102ls3913635qge.31.gmail; Wed, 25 Feb
 2015 22:12:26 -0800 (PST)
X-Received: by 10.236.26.179 with SMTP id c39mr6604139yha.27.1424931146004;
        Wed, 25 Feb 2015 22:12:26 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id hs7si280607pad.1.2015.02.25.22.12.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 22:12:25 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkx10 with SMTP id kx10so11479510pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 22:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DFrIj3vpEK/bUKlXdbqb1yebOEof2+rklpnhJGm0DMo=;
        b=LMLHskQQVT6dKYqFjdHxv9uhV/stxY6eXfRVjtWaN94KeDHUdQHPpmsSW3FrL3+ZA6
         IurO2dR3gAbbXoqhKLpKULlkcR5FlRqN73ECpYffCTnsAja+s4PuF01+rEVJ4K+449fH
         WFww1LW/FetR0m7z/zeMloXTxtkGq9yeuqG/AsQzR8pzTJnhmkVc9eiQsm1RG8GfTMza
         pJjSRI12uaeV75LMEPKNQsbe1qR8w2oxQd97F4hq3fQzTSWLqc72N22UKYVQJX3+Gcox
         FnwgC8KiIwVXxUZ60EGpVwMiqJyakWjRQszr83Qot04nLbXICILYcoOZpPpRe3ys+hC8
         t4hA==
X-Received: by 10.66.219.130 with SMTP id po2mr11904603pac.98.1424931145878;
        Wed, 25 Feb 2015 22:12:25 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.220])
        by mx.google.com with ESMTPSA id b3sm43188913pbu.0.2015.02.25.22.12.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 22:12:24 -0800 (PST)
Date: Thu, 26 Feb 2015 11:42:20 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8188eu: Use mod_timer and setup_timer
Message-ID: <cover.1424930708.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of timer API
functions mod_timer and setup_timer instead of
driver specific functions _set_timer and
_init_timer respectively. Here, some of these 
patches are handled using Coccinelle and some
changes are done by hand. 

Vaishali Thakkar (2):
  Staging: rtl8188eu: Eliminate use of _set_timer
  Staging: rtl8188eu: Eliminate use of _init_timer

 drivers/staging/rtl8188eu/core/rtw_cmd.c          | 18 ++++---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  3 +-
 drivers/staging/rtl8188eu/core/rtw_led.c          | 62 +++++++++++++++--------
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 15 ++++--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  7 +--
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c         |  8 +--
 drivers/staging/rtl8188eu/include/osdep_service.h | 14 -----
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  6 ++-
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  3 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  4 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +-
 14 files changed, 101 insertions(+), 69 deletions(-)

-- 
1.9.1


