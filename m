X-GM-THRID: 6394409513300000768
X-Received: by 10.99.123.68 with SMTP id k4mr6899295pgn.110.1488830223252;
        Mon, 06 Mar 2017 11:57:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.156 with SMTP id 28ls57250iol.20.gmail; Mon, 06 Mar
 2017 11:57:02 -0800 (PST)
X-Received: by 10.99.1.78 with SMTP id 75mr7394950pgb.151.1488830222356;
        Mon, 06 Mar 2017 11:57:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si211782pfb.7.2017.03.06.11.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so7670478pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Hzun23dwVPfLKmZsN6ot2PVvdtpXSzJefkU1/7zDsZw=;
        b=nXScqUFq+eRC3RHKy2vz3no7iA9k+KUD9MVtTjXxmUJ5GHvvX77AyPvMC3IGO/T4xj
         IRYUZXhAIhPELoMCnPTcawtFYHvuWHmXTr20+UAFDCYdRQ6A1hdZTI/RmcMv2tFd35Ii
         LSG9XsHN3XGMbQcSgUGYSS7+4A3UqmWVtpI1LCp0Rz/bchcAmReVq+2dyFdeuGNbZRXP
         cze4tItzWCsd3ag98SKwVLrRARUXY6+fwXlu4NzP6qOW17OvtsaSTvging4Z/WTaPAhP
         lM7D4YB9Kwoynmz6eN8v7ELH5tu6sV3FD/DupqSKlZ8Azr1UqyuGR79P6biPNxyJq27w
         EdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Hzun23dwVPfLKmZsN6ot2PVvdtpXSzJefkU1/7zDsZw=;
        b=PVdpBhhcClNtl5n3uhBoPJS2w8HYQ169DJAkoALNSGk2GhhmTiZuJSH8eS21JyL2Uf
         8nNQrFHdc9j3T6HwvebjxRILBT1QfVVis5ot7jB2qPc/EdBgCXVXWjp0YLPtXafVytoA
         BkMsiM+czWD0uqYyiktGt5PIHQTeG6QDYEercb9KDfPqSKq83pxR620q8NTdGaw+ijk0
         GgMLLm8AiGAcAeOLpTGWr5y1NokIH58LE6V9Cg9Jl5raUaL/SW9iMvvdzJ3fDzKDLURp
         iYl5E5+ZUL1QKIF0pw62mBau0m0xJ60TbxUrZFvmZzRPrmppi8VKeVW7LIw7Aza8Cpq2
         78QQ==
X-Gm-Message-State: AMke39n2dOoTA944RklVofmtn01y5eYdiL5O3Bx/i0fh619j2tLusiwwo+Oi76RgLMYjcQ==
X-Received: by 10.84.209.204 with SMTP id y70mr28861336plh.69.1488830222164;
        Mon, 06 Mar 2017 11:57:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id t12sm41195823pfg.14.2017.03.06.11.56.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:01 -0800 (PST)
Date: Tue, 7 Mar 2017 01:26:55 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: bcm2835-audio: refactor code for compaction
Message-ID: <cover.1488830058.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes two code style issues:
        - Merge two if condiitonals doing the same work
	- Removes initialisation of unused semaphores

Changes in v2:
	- Removed the semaphores from struct bcm2835_alsa_stream and 
	  not just their initialisation

Aishwarya Pant (2):
  staging: bcm2835-audio: merge two if conditions into one
  staging: bcm2835-audio: remove unused semaphores

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 8 ++------
 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h     | 2 --
 2 files changed, 2 insertions(+), 8 deletions(-)

-- 
2.7.4


