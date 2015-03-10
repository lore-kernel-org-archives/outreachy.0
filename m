X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.75.232 with SMTP id f8mr8045910wiw.0.1426006415040;
        Tue, 10 Mar 2015 09:53:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls55375lah.33.gmail; Tue, 10 Mar
 2015 09:53:34 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr4669505lbc.22.1426006414367;
        Tue, 10 Mar 2015 09:53:34 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id sf8si113929wic.2.2015.03.10.09.53.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:53:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so3269065wgh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=m1raI5R9RqbR/kXWZitJ9JUW7t9mU65E2k9Vdt/zzi4=;
        b=NPsrdY+fc0sjZYL6PfE5Cf8eD1LS+GN7E1qId+4GTPbFIXhAiW4/FYFya92uDdC2vZ
         L0OglUYJAUthiTLMIWJN0bJpOUYfM61qdRoSBADni2a/tbGrAEP7uq/rDDk/YTQqUJSO
         DYujVdKlx0Ho92BYxcQjBF9YZsWnKxSFQcXzLPaE2gSQ0eTmx4vDZtW70KfWrT50+0je
         RmmA9veUf5pTVGn9DHX8a8kQeevFwnsJoAKDdeuI2HIsBUyKOmb4V6uCDiP6lHfePt1F
         tzzOCELnNN9qkWLXLgIgnSiO0ZpKLcRZwgrzmPD5BdW2kdb5SgAmUQz/OyzDUu06KIPe
         gglw==
X-Received: by 10.180.106.68 with SMTP id gs4mr10431374wib.39.1426006414189;
        Tue, 10 Mar 2015 09:53:34 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id lu13sm2377940wic.10.2015.03.10.09.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:53:33 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:53:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/20] adjust function arguments
Message-ID: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixes functions' arguments through a series of coccinelle rules. The
focus was on removing extra parentheses and unnecessary casts in case
the passed argument is a pointer. Each patch has its corresponding
coccinelle script.

checkpatch.pl issued line over 80 characters warning for some of the
patches. Most of them were ignored since the problem was present in
all of the affected files before the changes were applied. In addition,
fixing the problem was not the best move.

Aya Mahfouz (20):
  staging: fwserial: remove extra parentheses around function arguments
  staging: media: lirc: lirc_imon.c: remove extra parentheses around
    function arguments
  staging: media: lirc: remove unnecessary cast on function argument
  staging: media: lirc: fix multiple issues with function arguments
  staging: media: lirc: remove pointer to pointer cast on function
    arguments
  staging: mt29f_spinand: remove pointer to pointer cast in function
    argument
  staging: ft1000: adjust function arguments
  staging: ft1000: ft1000-pcmcia: adjust function arguments
  staging: ft1000: ft1000-usb: adjust function arguments
  staging: ft1000: ft1000-usb: ft1000_download.c: adjust function
    arguments
  staging: ft1000: ft1000-usb: ft1000_hw.c: adjust function arguments
  staging: fbtft: fb_agm1264k-fl.c: remove extra parentheses around
    function arguments
  staging: fbtft: fb_hx8340bn.c: remove extra parentheses around
    function arguments
  staging: fbtft: fb_hx8353d.c: remove extra parentheses around function
    arguments
  staging: fbtft: fb_s6d02a1.c: remove extra parentheses around function
    arguments
  staging: fbtft: fb_st7735r.c: remove extra parentheses around function
    arguments
  staging: fbtft: Remove unnecessary pointer to potinter cast
  staging: fbtft: fbtft-io.c: remove extra parentheses around function
    arguments
  staging: fbtft: fbtft_device.c: remove extra parentheses around
    function arguments
  staging: goldfish: remove extra parentheses around function arguments

 drivers/staging/fbtft/fb_agm1264k-fl.c              |  2 +-
 drivers/staging/fbtft/fb_hx8340bn.c                 |  2 +-
 drivers/staging/fbtft/fb_hx8353d.c                  |  2 +-
 drivers/staging/fbtft/fb_s6d02a1.c                  |  2 +-
 drivers/staging/fbtft/fb_st7735r.c                  |  2 +-
 drivers/staging/fbtft/fbtft-core.c                  |  2 +-
 drivers/staging/fbtft/fbtft-io.c                    |  8 ++++----
 drivers/staging/fbtft/fbtft_device.c                |  4 ++--
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c  |  4 ++--
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c    |  8 +++++---
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c    |  8 ++++----
 drivers/staging/ft1000/ft1000-usb/ft1000_download.c | 14 +++++++-------
 drivers/staging/ft1000/ft1000-usb/ft1000_hw.c       | 18 +++++++++---------
 drivers/staging/fwserial/fwserial.c                 |  2 +-
 drivers/staging/goldfish/goldfish_audio.c           |  8 ++++----
 drivers/staging/media/lirc/lirc_imon.c              |  4 ++--
 drivers/staging/media/lirc/lirc_parallel.c          |  2 +-
 drivers/staging/media/lirc/lirc_sasem.c             |  6 +++---
 drivers/staging/media/lirc/lirc_serial.c            |  2 +-
 drivers/staging/mt29f_spinand/mt29f_spinand.c       |  2 +-
 20 files changed, 52 insertions(+), 50 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

