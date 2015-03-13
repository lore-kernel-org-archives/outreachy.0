X-GM-THRID: 8172468174848
X-Received: by 10.112.162.135 with SMTP id ya7mr7460045lbb.14.1426277130171;
        Fri, 13 Mar 2015 13:05:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.82 with SMTP id u18ls495399lal.79.gmail; Fri, 13 Mar
 2015 13:05:29 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr2497935lbb.18.1426277129538;
        Fri, 13 Mar 2015 13:05:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id cl5si187989wib.3.2015.03.13.13.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:05:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fb4so14832822wid.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fUe6Uy7wxMJdZXVJsaedwRlef/VbDwppICZe8+2qvr8=;
        b=kRAHcUVaJEhmiGRMrHs2IW7GeNIeSaLAPZ0NQv20lkyeg8ovz7o7JpgSD6tlWwtJmF
         hPankdUA5yUE8CLgLseFATg3Q7ZSkXgAifiQ6rJN0RGZn2kSjbNU79WCvF51dDW9EPGi
         49UaOCzMJuSNdvcnoihRGpVg3yjLinx7vfLu0V7JcN/hMR3tocpmAiQzMSAEFv8cP9fg
         ihpqM/7uNDvc56l4PrFV38FpqUfvWPInhstD5DmSMluDoKqwpqQVw4qsaSq4CiSrvdpM
         tRPngsB/MuaEFDh3uUkJ9JmyEC1EqBodcqJJYEKzzYDWyihTd4ML4clNIVd09fKrrLID
         rU2w==
X-Received: by 10.195.12.97 with SMTP id ep1mr102254860wjd.134.1426277129415;
        Fri, 13 Mar 2015 13:05:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id vh8sm4196967wjc.12.2015.03.13.13.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 13:05:28 -0700 (PDT)
Date: Fri, 13 Mar 2015 19:53:21 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/8] Staging: Remove parentheses around right side an
 assignment
Message-ID: <20150313165321.GA6657@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Parentheses are not needed around the right hand side of an assignment.
This patchset remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Haneen Mohammed (8):
  Staging: rtl8188eu: Remove parentheses around right side an assignment
  Staging: rtl8192e: Remove parentheses around right side an assignment
  Staging: rtl8723au: Remove parentheses around right side an assignment
  Staging: media: Remove parentheses around right side an assignment
  Staging: iio: Remove parentheses around right side an assignment
  Staging: lustre: Remove parentheses around right side an assignment
  Staging: rtl8192u: Remove parentheses around right side an assignment
  Staging: ft1000: Remove parentheses around right side an assignment

 drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c |  4 ++--
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c   |  4 ++--
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c   |  2 +-
 .../staging/ft1000/ft1000-usb/ft1000_download.c    |  4 ++--
 drivers/staging/iio/accel/adis16240_core.c         |  2 +-
 drivers/staging/iio/light/tsl2x7x_core.c           |  4 ++--
 drivers/staging/iio/meter/ade7753.c                |  2 +-
 drivers/staging/iio/meter/ade7754.c                |  2 +-
 drivers/staging/iio/meter/ade7759.c                |  2 +-
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  2 +-
 .../staging/lustre/lnet/klnds/socklnd/socklnd.c    |  4 ++--
 .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c |  4 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  |  2 +-
 drivers/staging/lustre/lustre/libcfs/debug.c       |  2 +-
 drivers/staging/lustre/lustre/llite/file.c         |  2 +-
 drivers/staging/lustre/lustre/llite/lloop.c        |  2 +-
 drivers/staging/lustre/lustre/llite/rw.c           |  2 +-
 drivers/staging/lustre/lustre/lov/lov_obd.c        |  4 ++--
 drivers/staging/lustre/lustre/obdclass/genops.c    |  2 +-
 .../lustre/lustre/obdclass/linux/linux-sysctl.c    |  2 +-
 drivers/staging/lustre/lustre/osc/osc_io.c         |  2 +-
 drivers/staging/media/bcm2048/radio-bcm2048.c      |  8 ++++----
 drivers/staging/media/lirc/lirc_parallel.c         |  4 ++--
 drivers/staging/media/lirc/lirc_serial.c           |  2 +-
 drivers/staging/media/mn88472/mn88472.c            |  2 +-
 drivers/staging/media/mn88473/mn88473.c            |  2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |  6 +++---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      | 22 +++++++++++-----------
 drivers/staging/rtl8188eu/core/rtw_recv.c          |  4 ++--
 drivers/staging/rtl8188eu/core/rtw_sreset.c        |  2 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     | 18 +++++++++---------
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   |  4 ++--
 drivers/staging/rtl8188eu/hal/odm_HWConfig.c       |  2 +-
 drivers/staging/rtl8188eu/hal/phy.c                | 20 ++++++++++----------
 drivers/staging/rtl8188eu/hal/rf.c                 |  2 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     | 14 +++++++-------
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c     | 20 ++++++++++----------
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |  6 +++---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c     |  2 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c       |  4 ++--
 drivers/staging/rtl8192e/rtllib_softmac.c          |  2 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      |  4 ++--
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |  2 +-
 drivers/staging/rtl8192u/r8192U_core.c             | 12 ++++++------
 drivers/staging/rtl8192u/r8192U_dm.c               |  6 +++---
 drivers/staging/rtl8192u/r819xU_phy.c              |  4 ++--
 drivers/staging/rtl8723au/core/rtw_mlme_ext.c      | 16 ++++++++--------
 drivers/staging/rtl8723au/core/rtw_recv.c          |  4 ++--
 .../staging/rtl8723au/hal/rtl8723a_bt-coexist.c    |  2 +-
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c  | 12 ++++++------
 drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c    |  4 ++--
 drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c    |  4 ++--
 drivers/staging/rtl8723au/hal/rtl8723au_recv.c     |  4 ++--
 drivers/staging/rtl8723au/hal/usb_halinit.c        |  4 ++--
 58 files changed, 144 insertions(+), 144 deletions(-)

-- 
1.9.1


