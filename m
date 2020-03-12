X-GM-THRID: 6803435195586314240
X-Received: by 2002:a65:6909:: with SMTP id s9mr9295250pgq.92.1584048195702;
        Thu, 12 Mar 2020 14:23:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls3039555plr.11.gmail; Thu, 12
 Mar 2020 14:23:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs4t0uh1go74SYsC6caWX6hLOLdfkgnie3moz0d6Qx3Rbp+jHKitmWTlaiR5ylhMU87ecCp
X-Received: by 2002:a17:90a:37ea:: with SMTP id v97mr6366720pjb.26.1584048194316;
        Thu, 12 Mar 2020 14:23:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584048194; cv=none;
        d=google.com; s=arc-20160816;
        b=rS5RwQX+iQHVPa3ukXZyeTS/ApczyfXQQaioLFFZCLctpCl3QRuox1s16xP4qWSYys
         +dM1M3Wlurs3xSbhUDojm+G58geR/pVsLBJ8iZn72x65gXITPrubm/GvbWDAIpwhnaix
         IQT3FQyG6AmWWoyXWXfT20AL6TTQPr6Yd74m7hPlPll/Ud06KDBmHrF08A9lE//3cqbS
         jm5QeFtJch+2Wo2xQw215sZWMuWVnT6BAp6lavbJry/PpVdwZWAIqiLOb96YssQI0KwG
         uypuuMqxett/r7uAcCZqDq4nLoDk0kRfa9K4Q9xalas1OSesSe8HNoQWPsMn0L6j5rZW
         9uug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DncB9Ue7+3dkInSuVDsX3R7lw0+u5ntTmS9Zr9zDB4Q=;
        b=C+Pe8vy6iEG9K+OZdCeOvf+nqU9YZviB6ZV662nO28gBQbkdKkf/DYTlHVdue/EDu5
         3KWe4nPEqYYLkO178ZDg9wmMcmFzUfxSkVEaqoOYBrgiLJcMrhTU1iWDzuczwoKwCGNt
         c9NmS6zTsLfSDhJzLoAjL4q36ntu+5T56OCMAJ/k6kfL1nLpPuSG0qIf3AmyFtDugf60
         A0vN7CDspGEghyENzsiPHZO0taicfXzwTzGTcv0XQ5qEUf3vruuPRwgKSHuLMx2l9E5/
         cXPi2ecCPNwJrIfkb013LHPQYiKh0TEqKHM5S+h83MaV38ptP7cMPV9ap+8+I/c45t7c
         l4wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQqoChne;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c10si618870pjo.2.2020.03.12.14.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:23:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQqoChne;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 2so3877527pfg.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DncB9Ue7+3dkInSuVDsX3R7lw0+u5ntTmS9Zr9zDB4Q=;
        b=YQqoChneJzzr5gcQGSTy2x3F43HQo4vdzFYZR/Y5rQG3gdgaczYA4Sye4tNtog3+eL
         3GSt3AWGQ6z6QWgKjl3z8RaYN2vzmA+lZhv9P3u/2xOWZbH6PEo0FAZy2WY3s95bHuqV
         s8YgmH2e7DwmuBXjbsgMdYlFNX0wwpT1uaEXc+IPvA18MrwIhLftiHGQDe5hoZ6cy3if
         +L0rOKDqYOMPklrVaml8+H4THF5+Yr3wqH4+4kkcXOvPB0Dpci4oF3IThL01bTLW+lgW
         XL5MjJjSwfHxVXWGkbpZ8gRfClDm+utZfyKwhZ2AS5glbSQdSjV1Oks5XJ1SESwgmwQZ
         Af7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DncB9Ue7+3dkInSuVDsX3R7lw0+u5ntTmS9Zr9zDB4Q=;
        b=kkEG7+BWTm3yQntUGpxsQ+w4WZtLSBjHdp1g7z7YCcQxhdrH3E6r6vdX4aQQT3+bOM
         GhNhiKM+sklWavlOXS587bdCMReqPL6wDE1nsj98uTNSLQ7CVna+2hl5+U04Bg+Z5dBp
         IjJuOE3KX+MFToBB1fegIdG5rt04ra+wHdQeGsLjiqV55q7gt3cCdu1Ly27iCynwS3Jt
         6YkKIhFASO+4Q7Tf9PxJ2p1r5JYjZfVCYAGYdZ/x8W7WlzuCG5WwDkLvaQzBX6CUs1PB
         /yEjJcOjz9jDNrOcM/bQD4k0vdw4rw4H6JCdAtvrLRM9EmLkzIZYReR18OVeOVz8zyg9
         XDjA==
X-Gm-Message-State: ANhLgQ1fLJ4/HxUkCXGUCMFuDpM+mTbhblq8nF9Ub/eiVVoJi5eQ9vlL
	auGgrM6x01BD1ua/rlBAtXA7RDfP
X-Received: by 2002:a62:2ad0:: with SMTP id q199mr10559956pfq.48.1584048193826;
        Thu, 12 Mar 2020 14:23:13 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id v123sm31202367pfv.146.2020.03.12.14.23.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 14:23:13 -0700 (PDT)
Date: Fri, 13 Mar 2020 02:53:09 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH 0/4] staging: fbtft: code cleanup patchset - checkpatch
Message-ID: <cover.1584045569.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Implement code formatting corrections as flagged by checkpatch
script. Common issues around lines exceeding 80 column limit and similar
formatting issues for the fbtft driver files are considered in the scope
of this patchset.

Note that top two patches in the list below were sent to the mailing
list for review as individual patches earlier. As I found additional
similar issues in the same area, I am requesting to combine these
related pathes in this patchset.

Deepak R Varma (4):
  staging: fbtft: Reformat line over 80 characters
  staging: fbtft: Reformat long macro definitions
  staging: fbtft: simplify array index computation
  staging: fbtft: Resolve likely precedence issues

 drivers/staging/fbtft/fbtft-core.c  |  4 +++-
 drivers/staging/fbtft/fbtft-sysfs.c |  6 +++++-
 drivers/staging/fbtft/fbtft.h       | 18 +++++++++++++-----
 3 files changed, 21 insertions(+), 7 deletions(-)

-- 
2.17.1


