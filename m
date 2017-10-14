X-GM-THRID: 6476782191370043392
X-Received: by 10.99.2.3 with SMTP id 3mr1121420pgc.175.1507993366531;
        Sat, 14 Oct 2017 08:02:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.140.69 with SMTP id q5ls2243085pgn.1.gmail; Sat, 14 Oct
 2017 08:02:45 -0700 (PDT)
X-Received: by 10.84.242.1 with SMTP id ba1mr1135014plb.21.1507993365407;
        Sat, 14 Oct 2017 08:02:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507993365; cv=none;
        d=google.com; s=arc-20160816;
        b=LCsQckEMqzYq3uPYiO96J/jhJHy7ZvSQETxyNs/ECaOm3o9iZtKlJSl1JUBwfxIl7S
         KWXQYhwHNfLasRcSxv3LgwLJhFLvCjgm0lOiNhg34MJPkxvL3wvtrow/+pgNWr2PVM+0
         5/ABnz2m+SYIkH874dViKSsoghTJEMZIgTzc+VOsg+KQtvDx5HDMv5KrJyThCRq2isCJ
         IFgHG1x/uVawV+3LNTAh1YMq7QWdNytEY4+aJxl4ldfzczc7vTd7XtPIFB1F3OpSc4RG
         DtacG3vA5VB5l4WUY8qLGlSA3TLRq5pDV5Ib0GthBi0HtzqJRT6X52vTg6kU6fhwnK3M
         Yhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=sHFZEhXleZSqP/SRgq8U0h5zRec2NeJr4k3kFTl6oPA=;
        b=BxjbFEIUqbC650TRi3j+s1uYjUwvDPoTOSjCcnpjWLaNh5BLLEOyv6jSUUlzW00cY2
         DgelhlfshDW8ErXUpBbgSW9NWK2jM9iEyoExJLbCpHpifkZ7riroEPpkEPtVGeDv+E9h
         0aV1HnsC88j0IdGOUWlVOkqQVpmo9WPLK8s5rUPqZAXbQZ5HNagO0OJjmA3E+2bncqpM
         cgMmjXWGPqdw46BegdFM1L8RelDZDWv4McnQCNLJfAOjRy8HM+Sr6PIq2h3XxyMXDU2a
         Elv50MOg72LgnNpEypc3tIzLw0QsQ6J2G389FdjDQx3BYEsQ55R44KZmxBQX/9vDsaZQ
         5DKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gmR0r607;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id b184si129852pga.4.2017.10.14.08.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 08:02:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gmR0r607;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n89so4934604pfk.11
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sHFZEhXleZSqP/SRgq8U0h5zRec2NeJr4k3kFTl6oPA=;
        b=gmR0r607r3Tsk5oNYFioceNlc+q1x2kzAiZ3lizJ2RlTfCXC5oybcDzT/Vhl7BiC6O
         u38OKHqFBAyQF0WHLjUYmC/mUTCMD+ljXOBSSmSB2oJoisJY87IfwLUZ3522u9tLVQHY
         wQ6QjPxxvsGwQd+EECsnx8VOmiZDhBK6AjuLTAVXSoZJXnEev0mSdTaepkBlUkOVXx2s
         vR/n2a69YANXSsecOwXmSYF9/r+z4Br+4u2CruSB3jff/fqym/RHq4loUPY+5HtqVVFl
         zOK/5yc79/MvvQgiXWf06PxTB5BQupETin75RRU02zxoymBH5ZTnlt15qMjiH/4xZOgy
         gcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sHFZEhXleZSqP/SRgq8U0h5zRec2NeJr4k3kFTl6oPA=;
        b=IFIhX+M7T5SNerTd0Mc2JnUfKW2a2TENSPqLorpftMC8l/Vvl72Qt7Ift4jDhOXMtp
         dGC5EOcu3PJYk/W8ps5PbwZP+Ak80xHJQNNnwwA/7ajwobVyA6ZI+K+qNv0MGyOxvEcF
         iWpFN3EZLZk9I0a9oA/wx7e0eiePmqvFB0zIyoyaEu/jA0SELCvNRS+3DQvex/4+qfE2
         HeDLohma1u22Fm3sJ8ZZ0qay/fENf65PYrwK+cFur+UGILmUpbhz+iCwc+3Tvv+egjk7
         1SID0mQ85wrFczK+OygmwL26Dg67ubp5jFerjdxX1wvmBrQCzxdx3zrwBBB6MfbXAG+/
         6zfw==
X-Gm-Message-State: AMCzsaUUfmem7Vv+/Yozdrra8DSO9eQOHGI7flM9sRlcBlAWpCyEEmIa
	R2zbw3iRzaV+jX4sZRvJt18=
X-Google-Smtp-Source: AOwi7QBvyKAtVcYWxqRCEiu9KFbo/yNYWHgTFSuxPDhywqaFDndcMQ+AvOdm7UoaHjoh2JjcOyPBfA==
X-Received: by 10.98.68.213 with SMTP id m82mr4178233pfi.243.1507993365022;
        Sat, 14 Oct 2017 08:02:45 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.102.186])
        by smtp.gmail.com with ESMTPSA id 68sm7660416pfo.24.2017.10.14.08.02.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Oct 2017 08:02:44 -0700 (PDT)
Date: Sat, 14 Oct 2017 19:24:00 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: atomisp: memory allocation cleanups
Message-ID: <cover.1507989087.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Patch series performs minor code cleanups using coccinelle to simplify memory
allocation tests and remove redundant OOM log messages.

Changes in v2:
Rebase and re-send patches

Aishwarya Pant (2):
  staging: atomisp2: cleanup null check on memory allocation
  staging: atomisp: cleanup out of memory messages

 drivers/staging/media/atomisp/i2c/ap1302.c         |  4 +--
 drivers/staging/media/atomisp/i2c/gc0310.c         |  4 +--
 drivers/staging/media/atomisp/i2c/gc2235.c         |  4 +--
 drivers/staging/media/atomisp/i2c/imx/imx.c        |  4 +--
 drivers/staging/media/atomisp/i2c/lm3554.c         |  4 +--
 drivers/staging/media/atomisp/i2c/mt9m114.c        |  4 +--
 drivers/staging/media/atomisp/i2c/ov2680.c         |  4 +--
 drivers/staging/media/atomisp/i2c/ov2722.c         |  4 +--
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c  |  4 +--
 drivers/staging/media/atomisp/i2c/ov8858.c         |  6 +---
 .../media/atomisp/pci/atomisp2/atomisp_fops.c      |  4 +--
 .../media/atomisp/pci/atomisp2/atomisp_ioctl.c     |  9 ++----
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c    | 36 +++++++++++-----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  6 ++--
 .../pci/atomisp2/css2400/sh_css_param_shading.c    |  4 +--
 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 10 ++----
 .../atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c    |  6 +---
 .../atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c   |  5 +--
 .../media/atomisp/pci/atomisp2/hmm/hmm_vm.c        |  4 +--
 .../platform/intel-mid/atomisp_gmin_platform.c     |  4 +--
 20 files changed, 41 insertions(+), 89 deletions(-)

-- 
2.11.0


