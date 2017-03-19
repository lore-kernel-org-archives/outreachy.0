X-GM-THRID: 6399178880860553216
X-Received: by 10.157.4.39 with SMTP id 36mr10765270otc.107.1489926424183;
        Sun, 19 Mar 2017 05:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls11748437ott.28.gmail; Sun, 19 Mar
 2017 05:27:03 -0700 (PDT)
X-Received: by 10.129.168.202 with SMTP id f193mr12044473ywh.88.1489926423841;
        Sun, 19 Mar 2017 05:27:03 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si2144001pfb.7.2017.03.19.05.27.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so15910120pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=zHbqbv3TzgGbMGrcYvDnedThpFQtRcsL4whDkgCGOA4=;
        b=WqaiX88sJMdj50kwKlNF5vMGnJzW9k7RTyw0p+cYbVfTryikHf/YkKpx8rgy3ruutb
         75yZKUm6J5n2sFwzy7MYb3M6pKFfTa8XAPpMZih4D65rfmbENgzymh8G+Q6HRG6Nibwo
         ZWIY7lwUYf5l8jN80dMJBZll8Y82PVmJqiFAH8wCPH/Dj8fv2dihw41nHc8hRa1YoFt7
         uJ23aUmuq/PiOcLbGhKQMevMGr5w1GV110R6NN7qpOk5CEzYMpHteJjqy+W1xdQiZ5Js
         JasBiC5mgy+pI/h4vWqSyLWXwS3YzVvKcAy9RzuPCB71k7Yb/AS4Nbf0POwSUl8YtwDF
         gbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=zHbqbv3TzgGbMGrcYvDnedThpFQtRcsL4whDkgCGOA4=;
        b=Mb3r1yMgAHV+KMYrrUxKgc4IPpS2D5sWrOD8u+t6y/m7SaoNjo6P95VWqR5XuKjClM
         twcNmsDPB5SBog/GnW52pWmhVBlqXgZqirici1D1lLTbxnK+Qb+cTwLrDYQ+bAqTIhDy
         oMt8z0cMONzqad0wBP9RumPHEzKK1woIG64MDZchESCZyM4yKWugCgFYpJXzh2KY0tUa
         x35NGVomjImH/8Yh25ZjwTFPdh603/PS/K5n4sENw8NF12ke+5b3Yrs3Ygd/dT/YrpLb
         Z1BiS9LwhqLeokSfxsAay7jceQuGcUwm7BAsb8GEPDiH6co5hRNwiIajky8EOYDrA3GR
         EcmA==
X-Gm-Message-State: AFeK/H3vq3hskUracYuUiszw8sTD/Nj1H8FjUnlIZOFZDhEbHNUWWdOJaJyaY6IPWrRl6Q==
X-Received: by 10.99.101.131 with SMTP id z125mr25349657pgb.218.1489926423472;
        Sun, 19 Mar 2017 05:27:03 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([157.49.4.219])
        by smtp.gmail.com with ESMTPSA id b195sm27153588pfb.106.2017.03.19.05.27.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:27:03 -0700 (PDT)
Message-ID: <58ce7917.cc1b620a.99582.75bd@mx.google.com>
X-Google-Original-Message-ID: <20170319122423.GA8456@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:54:23 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: media: atomisp: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in media driver.

Varsha Rao (4):
  staging: media: atomisp: Added spaces around arithmetic operators.
  staging: media: atomisp: Fix block comments warning.
  staging: media: atomisp: Remove unnecessary blank lines.
  staging: media: atomisp: Remove unnecessary braces.

 .../isp/kernels/ctc/ctc2/ia_css_ctc2.host.c        | 38 ++++++++++------------
 .../isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c     | 23 ++++++-------
 .../atomisp/pci/atomisp2/css2400/sh_css_mipi.c     |  5 +--
 .../platform/intel-mid/atomisp_gmin_platform.c     |  8 ++---
 4 files changed, 31 insertions(+), 43 deletions(-)

-- 
2.9.3


