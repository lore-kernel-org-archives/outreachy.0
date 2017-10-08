X-GM-THRID: 6474468235249975296
X-Received: by 10.98.217.216 with SMTP id b85mr463626pfl.16.1507454606291;
        Sun, 08 Oct 2017 02:23:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.88.193 with SMTP id m184ls711639pfb.4.gmail; Sun, 08 Oct
 2017 02:23:25 -0700 (PDT)
X-Received: by 10.98.160.71 with SMTP id r68mr449097pfe.9.1507454605413;
        Sun, 08 Oct 2017 02:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507454605; cv=none;
        d=google.com; s=arc-20160816;
        b=zdP7Zp7WxmHxMmJ3ulsmSNJzxngem0cj+h0p6nrnE5mdbxNEUlPBlxqcZXE7mlTZHf
         1N+/nP0N9dH6XT2AEeNOzOjZJPSLjA6Ng8YOhRnjxQNmrW5o5sPjY7jIDoaJfzP4JkxO
         0FNV17CSplAOgSDxYdLN61zrTtJOGC8OrWw5m1WOuN1xKfr3T2e3EZpYbtU+SpfKtxqm
         tsSXZDxuRdS9QdA1cUpPvyHKNFPdpTGtc7i+CkJjskd8kqwTbOdPznSsVU7vRBBLKU0X
         C8IalQfAZaEgbhImbW2zpE3Y7hCsgqIx8lxz0VIAJBkbhcUA6FE10UmA6QohPSAtxhyd
         OjKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=s2MzsMdIZzMXIkz1ypChez5jm+y91psk6ginhj9FbEw=;
        b=lCoMH4SxuGXXjTSsXzrjlkEeJxYTE7T22cLihwOrLCh7QdkTFYz4MngljZHGPKAoSc
         LrVjUTwMuy7dz47Fi93ZRKCxYQAhsu1r+ytG7B5F9DPPgzSgQAzf/ErH7WFblKCm2pRH
         79lmk6EXiNbkzJYwuLd017AUw8T3gpHhIMZzyUxoNJAFQUdPYKwr3VO7XMLWZLRQzYJu
         gvf9rglFNce5yjHfmZLvkVfaJMCpumppi6L8VeGVFF3eGHLQf0DY1tTKAMJZInxk/ood
         71bUyGcdlav7BhGfwpZZyXZ6VeuPgqeKk3YE2NfDCTCIjr3Fb5JFuM1VyJFcUPdqnZ2d
         ErQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5Fyheka;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id m186si615699pfm.2.2017.10.08.02.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 02:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5Fyheka;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id a7so21209782pfj.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 02:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s2MzsMdIZzMXIkz1ypChez5jm+y91psk6ginhj9FbEw=;
        b=T5FyhekaVSEk9sc8u2VTUVNUlqatXkXJIjc79Qw3rTZNp6qX44dYSrlk7BIgP4DDSU
         TSt+Ybov4ZINSNAsNR///ppkF1kpgkOwY0LC7QoLnKsT0Z28gt4IGtJPQbi8U7B0UArR
         51yz6HS8xz7AuEhWOqVKwHZ3ptobPO/L8Mzf3tOsr6fYxBruk6RRvUNlZ1FAH0uDQRf9
         tImnwzgpREUbdEzJx855v/juUZjPeOzwHh1A2A6TdZewA6qvNhJmDk96wAjatR+m8qHd
         QtCxOjjp8b3XYVZs9HDVMq3ouzkwm+i+27fE93KJMACUW+jfJKb5yD8W2jhubM/QANQb
         xBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s2MzsMdIZzMXIkz1ypChez5jm+y91psk6ginhj9FbEw=;
        b=HFpAp8vxx5aK1Tq74MOWZJsibv5D/oyUSnQawRjeDVCZahyODWybtMI1iiE/fyYmrV
         IU9I1GavtvhUi+vxCgwc+GfsTujLAEKf2rdC3Ub8HcQhtvGeRFWzavZOIRhNyxx9IbK0
         vkJ7p5wQoC7ZHekreKZEspbx4FZkVKPAzh1uvOYs5RMGzcbZEwZAx2bRvP5Fo+60QPoN
         gxNUmAzWqolF+etbhjRdO+B1jhbzt+LXReQ9tm+IdGaSsp7ibyliRyqW+f89ZGvfgXbr
         HiIT/3hifraHkFT2zugFhFYpKr2wYJxp69phMdE5FWG+Abi3ZZiYfSoVQrZ7PwionEB0
         muMA==
X-Gm-Message-State: AMCzsaUVvebucYxuWnN487Fz3ottcibvWDuNqQmV06hUTH5pfjSds0Eh
	blgQvlIhfaT2Iux84ATRJJc=
X-Google-Smtp-Source: AOwi7QAgl2wVLqEULs+hjkHd9yp3G6YIiia2Z42NgafNfi2nr9rf06sOfECEjYkpZQUG6tuf1BMS8w==
X-Received: by 10.98.200.85 with SMTP id z82mr7015894pff.313.1507454605130;
        Sun, 08 Oct 2017 02:23:25 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.167.151.35])
        by smtp.gmail.com with ESMTPSA id b65sm11344865pfj.97.2017.10.08.02.23.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Oct 2017 02:23:24 -0700 (PDT)
Date: Sun, 8 Oct 2017 14:53:20 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staginng: atomisp: memory allocation cleanups
Message-ID: <cover.1507454423.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Patch series performs minor code cleanups using coccinelle to simplify memory
allocation tests and remove redundant OOM log messages.

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


