X-GM-THRID: 6395510258764087296
X-Received: by 10.99.130.193 with SMTP id w184mr5076979pgd.12.1489074606175;
        Thu, 09 Mar 2017 07:50:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls6445688otb.8.gmail; Thu, 09 Mar 2017
 07:50:05 -0800 (PST)
X-Received: by 10.13.217.82 with SMTP id b79mr5486281ywe.13.1489074605765;
        Thu, 09 Mar 2017 07:50:05 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si1255696pfb.5.2017.03.09.07.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 07:50:05 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so7690856pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 07:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=wnIRw4qHhFYXRKFiX/JHdq52xluASTWhx2kJcjoR9n0=;
        b=ITXESO/KnIgu5DP2bKCv9sEZ5rTM1+OlXMkPP1erNNgBD6GFXEjGuPONCfj5spFlhb
         Nu9VA4BeupX0ni04GqynNHQhcfFJ+inS3eyKYmfQmK3ktcx136WUaNMPqigrpjVrCGR7
         OnGjeXyqgCzWd65SywQa1+dhxIN9TtoygcnENXIV4LQm7nmqlZz0rO+9Tzc1SZClPxxq
         qZgtTqrQpxwv0hIz0GHaWnEfacekmevPIARHoaagStlYSFgksqHqFqtaRcWOwTN1p0yn
         bGuFL13YHYSUUkMqBdic5qbXrTGRgF/ss73IpU+NN7sao0m0ToT2SqF8PfQPNg35MeT2
         TEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=wnIRw4qHhFYXRKFiX/JHdq52xluASTWhx2kJcjoR9n0=;
        b=YsK4883glu6eMhDfe76ECghMAo9TlPH8WZJLNQWsCXR9Ydd5KlHt69Pc93ueilCi88
         7S/0g1X6yBO8uCNe+gTugPCFEDuYjkr8QKcrHlgHcNMosDeXd5Lf2oWrOIK9HMHFkbzc
         MQZmniKZ4SVJd59chxl3n5lf+yoADCuUR9LKlVfhUM61LVhJ8A5pxNnc3I490aKXEg7b
         JKhnwcVizssVsbcUSty0eNlOYMMRPu+p2q2Iqf1zMNN+JplNwUQhCQg0qrFyFiXGdncv
         HCx+yGoNheS58UVQqBG6RqFYX66HfrbOuP80NVYa3vVpKAVQcxNrYAH6Z26YbQptO7i/
         luwg==
X-Gm-Message-State: AMke39m4XS+XiljRUhzrJol9x4MpLBVSzj1lFj6aBxVhFNVGNHvMdl/602y0B+inAdDHsA==
X-Received: by 10.98.193.69 with SMTP id i66mr14901652pfg.35.1489074605398;
        Thu, 09 Mar 2017 07:50:05 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id p77sm13300030pfj.99.2017.03.09.07.50.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 07:50:04 -0800 (PST)
Message-ID: <58c179ac.d022620a.286d5.e10b@mx.google.com>
X-Google-Original-Message-ID: <20170309155000.GA16073@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 21:20:00 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: media: atomisp: Remove useless cast and
 match alignment with open parenthesis.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset removes useless cast and  matches alignment with open
parenthesis in media driver.

Varsha Rao (2):
  staging: media: atomisp: Remove useless cast.
  staging: media: atomisp: Match alignment with open parenthesis.

 drivers/staging/media/atomisp/i2c/gc2235.c             | 18 +++++++++---------
 drivers/staging/media/atomisp/i2c/mt9m114.c            |  6 +++---
 drivers/staging/media/atomisp/i2c/ov2722.c             |  8 ++++----
 .../atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c  |  2 +-
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c     |  8 ++++----
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c   |  2 +-
 6 files changed, 22 insertions(+), 22 deletions(-)

-- 
2.9.3


