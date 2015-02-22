X-GM-THRID: 2425015500800
X-Received: by 10.152.37.200 with SMTP id a8mr714905lak.5.1424611831221;
        Sun, 22 Feb 2015 05:30:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.191.168 with SMTP id gz8ls408298lac.16.gmail; Sun, 22 Feb
 2015 05:30:30 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr713147lal.3.1424611830796;
        Sun, 22 Feb 2015 05:30:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si489812wix.0.2015.02.22.05.30.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 05:30:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="100911580"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 14:30:20 +0100
Date: Sun, 22 Feb 2015 14:30:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: touched files
Message-ID: <alpine.DEB.2.10.1502221428351.2612@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Here is an incomplete list of files that have been modified during the
application period so far.  This doesn't mean that everything has been
fixed in these files.  But if you are considering making a whitespace or
comment related change to any of these files, then you may want to
consider doing something else.

julia

drivers/dma/ste_dma40.c
drivers/staging/board/board.c
drivers/staging/comedi/drivers/comedi_test.c
drivers/staging/dgnc/dgnc_mgmt.c
drivers/staging/dgnc/dgnc_sysfs.c
drivers/staging/dgnc/dgnc_tty.c
drivers/staging/dgnc/dgnc_tty.h
drivers/staging/emxx_udc/emxx_udc.c
drivers/staging/emxx_udc/emxx_udc.h
drivers/staging/fbtft/fb_ili9320.c
drivers/staging/fbtft/fb_s6d02a1.c
drivers/staging/fbtft/fb_ssd1331.c
drivers/staging/fbtft/fb_ssd1351.c
drivers/staging/fbtft/README
drivers/staging/ft1000/ft1000-pcmcia/*
drivers/staging/gdm724x/gdm_lte.c
drivers/staging/gdm724x/gdm_usb.c
drivers/staging/i2o/exec-osm.c
drivers/staging/imx-drm/imx-tve.c
drivers/staging/line6/toneport.c
drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
drivers/staging/lustre/lnet/lnet/lib-ptl.c
drivers/staging/lustre/lnet/selftest/conctl.c
drivers/staging/lustre/lnet/selftest/framework.c
drivers/staging/lustre/lustre/fid/fid_request.c
drivers/staging/lustre/lustre/llite/llite_lib.c
drivers/staging/media/as102/as102_fe.c
drivers/staging/media/parport/bw-qcam.c
drivers/staging/media/tlg2300/pd-alsa.c
drivers/staging/media/tlg2300/pd-common.h
drivers/staging/media/tlg2300/pd-main.c
drivers/staging/media/vino/indycam.c
drivers/staging/media/vino/saa7191.c
drivers/staging/octeon/ethernet-rgmii.c
drivers/staging/rtl8188eu/core/rtw_ap.c
drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
drivers/staging/rtl8188eu/core/rtw_recv.c
drivers/staging/rtl8188eu/hal/bb_cfg.c
drivers/staging/rtl8188eu/hal/fw.c
drivers/staging/rtl8188eu/hal/usb_halinit.c
drivers/staging/rtl8188eu/include/wlan_bssdef.h
drivers/staging/rtl8192ee/base.c
drivers/staging/rtl8192u/copying
drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
drivers/staging/rtl8192u/r8190_rtl8256.h
drivers/staging/rtl8192u/r819xU_phy.c
drivers/staging/rtl8712/drv_types.h
drivers/staging/rtl8712/os_intfs.c
drivers/staging/rtl8712/rtl871x_recv.c
drivers/staging/rtl8723au/core/rtw_ap.c
drivers/staging/rts5208/general.c
drivers/staging/rts5208/ms.c
drivers/staging/speakup/main.c
drivers/staging/speakup/spkguide.txt
drivers/staging/vt6655/card.c
drivers/staging/vt6655/mac.c
drivers/staging/vt6655/power.c
drivers/staging/vt6655/srom.h
drivers/staging/vt6656/main_usb.c
drivers/staging/wlan-ng/hfa384x.h

