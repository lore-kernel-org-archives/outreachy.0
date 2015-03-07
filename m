X-GM-THRID: 3543146692608
X-Received: by 10.50.55.102 with SMTP id r6mr40134153igp.1.1425714696442;
        Fri, 06 Mar 2015 23:51:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.163 with SMTP id k3ls378815igx.13.gmail; Fri, 06 Mar
 2015 23:51:36 -0800 (PST)
X-Received: by 10.42.247.17 with SMTP id ma17mr5953682icb.13.1425714696241;
        Fri, 06 Mar 2015 23:51:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id bo1si1659966pbc.0.2015.03.06.23.51.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 23:51:36 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so51552833pad.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 23:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=o6yW3DCIM/OCkWhQ/100vwOn77FLqUAY0gl/kPFpsqw=;
        b=rNwPGZYRJemkQ1k8+i6wlRdXGJwaJj3mJXBzPmMREvZTuzX9q657netYw8eVas+V1K
         ++vN+x63ynWzPNGBDMOjoYBMpSkDkdxPjLSfdIMmwxIki3ONusw+g4r5y1xYSgAran4I
         v/F8SwJ6pCN1JELPsdzT53sAQi7glgE0Gr7mGsS2yckGO6mzFJ7oQ8Vt+KZmAMWIj10N
         1DJPdfAK2cuzPrdIAsd+WRi/1a2HwOfYv18SWLdEuD/1W0cU3vqTCtOMxvVtG8t30ozt
         ejAEieD5ogFuvic9aUPKYKI+jPU2QIjOfqd73/7j6/TI2/sbFpyR0b2SBuBQJ4IY7RzS
         RjcA==
X-Received: by 10.68.110.132 with SMTP id ia4mr32356744pbb.95.1425714696093;
        Fri, 06 Mar 2015 23:51:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.154])
        by mx.google.com with ESMTPSA id os6sm11574552pac.28.2015.03.06.23.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 23:51:34 -0800 (PST)
Date: Sat, 7 Mar 2015 13:21:30 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Staging: rtl8188eu: Use mod_timer and setup_timer
Message-ID: <cover.1425714259.git.vthakkar1994@gmail.com>
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
 drivers/staging/rtl8188eu/core/rtw_recv.c         | 18 ++++---
 drivers/staging/rtl8188eu/include/osdep_service.h | 14 -----
 drivers/staging/rtl8188eu/include/rtw_led.h       |  2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h      |  6 +--
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  | 12 +++--
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  3 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  6 +--
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 19 ++++---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +-
 16 files changed, 134 insertions(+), 97 deletions(-)

-- 
1.9.1


