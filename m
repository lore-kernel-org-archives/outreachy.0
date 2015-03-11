X-GM-THRID: 7618575728640
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c3252cdcd38cb81d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.61.197 with SMTP id w45mr35024972yhc.54.1426054257228;
        Tue, 10 Mar 2015 23:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.219 with SMTP id 88ls331156iop.32.gmail; Tue, 10 Mar
 2015 23:10:56 -0700 (PDT)
X-Received: by 10.70.48.209 with SMTP id o17mr13469506pdn.5.1426054256894;
        Tue, 10 Mar 2015 23:10:56 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id gb13si516019pac.2.2015.03.10.23.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fa1so8629177pad.9
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7cU12z/x2VDJoSoLqDV0iPPoak603vRtm0d7DP/Gulo=;
        b=nDOl3kpXlczYr5C/3+4xTuICcPzq/9vs67wkFza/9Gz05Yf+IvmfUmNf8jrZ2YgcP2
         HCbDLHcJwLERdOVtrNzrk92cXLICQM0SMtXKZz4B2ioBX05IN+4+Xq8NZx7RNrFoa53e
         4elUlRZ8fEW/OjrVIXJCMfKMH9/E4ArqkZ80YRKhwNk20Tm4rJ/MAmT0tDZE4Gn3rhqa
         b6IKPF3KN08+uOtcs6h9/R4GWN3PCjwQGjwjxKmrukIPtrcaHi6eaZJw+W42YGeD1qk0
         qdcZwiob0NWHQ5QM2lz8yve/ud8kvFE17CrivxSDeGVBBY5sf0wEcy9jt9yIN5ygD8qX
         v1tQ==
X-Received: by 10.70.47.193 with SMTP id f1mr56145141pdn.158.1426054256570;
        Tue, 10 Mar 2015 23:10:56 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.86.3])
        by mx.google.com with ESMTPSA id c8sm4119184pds.5.2015.03.10.23.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:10:55 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:40:44 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/2] Staging: rtl8188eu: Use mod_timer and setup_timer
Message-ID: <cover.1426053765.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of timer API
functions mod_timer and setup_timer instead of
driver specific functions _set_timer and
_init_timer respectively. Here, these chnages
are done using Coccinelle.

Also, to fix the build warnings after the
elimination of _init_timer necessory changes
are done.

Vaishali Thakkar (2):
  Staging: rtl8188eu: Eliminate use of _set_timer
  Staging: rtl8188eu: Eliminate use of _init_timer

 drivers/staging/rtl8188eu/core/rtw_cmd.c          | 18 ++++---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  3 +-
 drivers/staging/rtl8188eu/core/rtw_led.c          | 66 ++++++++++++++---------
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 27 ++++++----
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     | 19 +++----
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  8 +--
 drivers/staging/rtl8188eu/core/rtw_recv.c         | 20 ++++---
 drivers/staging/rtl8188eu/include/osdep_service.h | 14 -----
 drivers/staging/rtl8188eu/include/rtw_led.h       |  2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h      |  6 +--
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  | 16 +++---
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  5 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  6 +--
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  5 +-
 16 files changed, 134 insertions(+), 105 deletions(-)

-- 
1.9.1


