X-GM-THRID: 6406607470592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f04d7bc1ed043b39,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr3537449wib.1.1425446891530;
        Tue, 03 Mar 2015 21:28:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls111479lap.17.gmail; Tue, 03 Mar 2015
 21:28:11 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr334028lbb.14.1425446891004;
        Tue, 03 Mar 2015 21:28:11 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id cl5si230085wib.3.2015.03.03.21.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:28:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id k14so411270wgh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Yq9uCIkarwxZPCUbykJ031t9Mtgqnf43MdxI8goc3ms=;
        b=d/uth3z+/g/mK4+OujshIx4PvEC91E8khIG79FoM98GFsm6spkhOoKC/cKhj/06uVs
         HSIbLch1oy2lNLhlgLyJp5U9QVNw9p4eks9zChXIDs167iRscpBt9AsTf7rhjDwVru+L
         jp8pnqCZZiXKUw2sh62CpckLRdXJceLkNhHqAWDw2oyVD/MO07BwFCXwtaVJ6kXvWarO
         UxAffLeIr5h13QzeGZcrOwumwbByUc5hZ4qJRpOXMZLP38jbhO9xfubuW/gKSR7aoCrH
         VOQqWGmnvZuOKxpv1He9nqVUCJ4lEaEoNs7sPtAPAdM6pCzkTO0rwG6v4pshyeYQz3xq
         3iGw==
X-Received: by 10.194.201.164 with SMTP id kb4mr4436351wjc.32.1425446890864;
        Tue, 03 Mar 2015 21:28:10 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id lg18sm2577911wic.23.2015.03.03.21.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:28:10 -0800 (PST)
Date: Wed, 4 Mar 2015 07:28:04 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/13] remove extra parentheses around right bit shift
 operations
Message-ID: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations using
coccinelle. The cases handled here are when resultant values are assigned to
variables or when a shift operation is employed on a function argument.


Aya Mahfouz (13):
  staging: comedi: drivers: remove extra parentheses around right bit shift
    operation
  staging: lustre: lclient: remove extra parentheses around right bit shift
    operation
  staging: lustre: llite: remove extra parentheses around right bit shift
    operation
  staging: media: bcm2048: remove extra parentheses around right bit shift
    operation
  staging: media: lirc: remove extra parentheses around right bit shift
    operation
  staging: rtl8188eu: remove extra parentheses around right bit shift
    operations
  staging: rtl8192e: remove extra parentheses around right bit shift operation
  staging: rtl8192u: remove extra parentheses around right bit shift operation
  staging: rtl8712: remove extra parentheses around right bit shift operation
  staging: rtl8723au: remove extra parentheses around right bit shift
    operations
  staging: slicoss: remove extra parentheses around right bit shift operations
  staging: speakup: remove extra parentheses around right bit shift operation
  staging: xgifb: remove extra parentheses around right bit shift
    operations

 drivers/staging/comedi/drivers/dt2801.c            |  2 +-
 drivers/staging/lustre/lustre/lclient/lcommon_cl.c |  5 ++--
 drivers/staging/lustre/lustre/llite/vvp_dev.c      |  2 +-
 drivers/staging/media/bcm2048/radio-bcm2048.c      |  3 +--
 drivers/staging/media/lirc/lirc_serial.c           |  2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |  2 +-
 drivers/staging/rtl8188eu/hal/odm.c                |  8 +++----
 drivers/staging/rtl8188eu/hal/odm_HWConfig.c       |  2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c  |  3 ++-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     | 28 +++++++++++-----------
 drivers/staging/rtl8192u/r8192U_core.c             | 16 +++++++------
 drivers/staging/rtl8712/rtl8712_recv.c             |  4 ++--
 drivers/staging/rtl8712/rtl871x_mp.c               |  4 ++--
 drivers/staging/rtl8723au/hal/odm.c                |  6 ++---
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c  |  6 ++---
 drivers/staging/slicoss/slicoss.c                  |  6 ++---
 drivers/staging/speakup/main.c                     |  2 +-
 drivers/staging/xgifb/XGI_main_26.c                |  6 ++---
 18 files changed, 55 insertions(+), 52 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

