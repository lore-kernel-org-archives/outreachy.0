X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.91.76 with SMTP id cc12mr444340wib.7.1425041320068;
        Fri, 27 Feb 2015 04:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls112633wic.10.canary; Fri, 27
 Feb 2015 04:48:39 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr445778wiy.6.1425041319775;
        Fri, 27 Feb 2015 04:48:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id el6si110735wib.2.2015.02.27.04.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:48:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id p10so18012387wes.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=koYUW4S/R/0u5D2OPIFFdscAs+Y9XM1AWcpxcjLYg3E=;
        b=U4WXoe92p72axpgJzEysK3EH9WsvUch1RsfsVCoQwPOxPpqWwDwQBBusxBFveE3d0D
         VFkSVo0NwwO8+qrRnxiyNJL8yNUpVgjwOFzk7BzUUFpG3MBtBMf+KfEyLzTjnH7eKZIE
         O4yjiznRWAl2jGC3xA+8RRuPf6vioZy9Q5vleYYoAP8j2OKKYVm1dBet2H+VicPBWS2I
         tNEZwFpgBF8vu6wTCCDhePpnTkBVvKCoVRFwz54P++c/dy/BFsEhXIKY4Kof9zPrPhwQ
         CaScXn+He8nngBDNhlAPXLfnWdj9e+wj5rjcIItwiWt82S0Djb/DzaiSIU0BFNQ7M19Q
         3xDA==
X-Received: by 10.194.97.139 with SMTP id ea11mr590112wjb.108.1425041319630;
        Fri, 27 Feb 2015 04:48:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id hd5sm2669939wib.21.2015.02.27.04.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:48:39 -0800 (PST)
Date: Fri, 27 Feb 2015 14:48:32 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/24] remove unused variables
Message-ID: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset is concerned with removing variables that were used only
once to store the value of a function and then return it. The following
coccinelle script was used to discover the pattern and resolve it:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Aya Mahfouz (24):
  staging: wlan-ng: remove unused variable
  staging: wlan-ng: remove unused variable
  staging: vt6655: remove unused variable
  staging: rtl8188eu: os_dep: remove unused variable
  staging: rtl8188eu: os_dep: remove unused variable
  staging: lustre: ptlrpc: remove unused variable
  staging: lustre: osc: remove unused variable
  staging: lustre: obdecho: remove unused variable
  staging: lustre: obdclass: remove unused variable
  staging: lustre: obdclass: remove unused variable
  staging: lustre: mgc: remove unused variable
  staging: wlan-ng: remove unused variable
  staging: lustre: mdc: remove unused variable
  staging: lustre: lov: remove unused variable
  staging: lustre: lmv: remove unused variables
  staging: lustre: llite: remove unused variable
  staging: lustre: llite: remove unused variable
  staging: lustre: llite: remove unused variable
  staging: lustre: llite: remove unused variable
  staging: iio: meter: remove unused variable
  staging: iio: meter: remove unused variables
  staging: iio: light: remove unused variable
  staging: fbtft: remove unused variable
  staging: dgap: remove unused variable

 drivers/staging/dgap/dgap.c                         |  5 +----
 drivers/staging/fbtft/fbtft-core.c                  |  4 +---
 drivers/staging/iio/light/tsl2583.c                 |  4 +---
 drivers/staging/iio/meter/ade7758_core.c            | 10 ++--------
 drivers/staging/iio/meter/ade7759.c                 |  5 +----
 drivers/staging/lustre/lustre/llite/dcache.c        |  5 +----
 drivers/staging/lustre/lustre/llite/file.c          |  4 +---
 drivers/staging/lustre/lustre/llite/lproc_llite.c   |  5 +----
 drivers/staging/lustre/lustre/llite/vvp_io.c        |  5 +----
 drivers/staging/lustre/lustre/lmv/lmv_obd.c         |  8 ++------
 drivers/staging/lustre/lustre/lov/lov_obd.c         |  5 ++---
 drivers/staging/lustre/lustre/mdc/mdc_locks.c       |  4 +---
 drivers/staging/lustre/lustre/mdc/mdc_request.c     |  4 +---
 drivers/staging/lustre/lustre/mgc/mgc_request.c     |  5 +----
 drivers/staging/lustre/lustre/obdclass/dt_object.c  |  5 +----
 drivers/staging/lustre/lustre/obdclass/lu_object.c  |  6 +-----
 drivers/staging/lustre/lustre/obdecho/echo_client.c |  5 +----
 drivers/staging/lustre/lustre/osc/lproc_osc.c       |  5 +----
 drivers/staging/lustre/lustre/ptlrpc/nrs.c          |  5 +----
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c      |  4 +---
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c    | 16 +++-------------
 drivers/staging/vt6655/rxtx.c                       |  6 +-----
 drivers/staging/wlan-ng/prism2mib.c                 | 11 ++---------
 drivers/staging/wlan-ng/prism2sta.c                 |  5 +----
 24 files changed, 30 insertions(+), 111 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

