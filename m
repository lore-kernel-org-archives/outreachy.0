X-GM-THRID: 6400174624352501760
X-Received: by 10.99.185.66 with SMTP id v2mr20895601pgo.94.1490156777299;
        Tue, 21 Mar 2017 21:26:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.71.144 with SMTP id t138ls3264265itb.8.canary-gmail; Tue,
 21 Mar 2017 21:26:16 -0700 (PDT)
X-Received: by 10.99.2.205 with SMTP id 196mr17149281pgc.82.1490156776511;
        Tue, 21 Mar 2017 21:26:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si40226pfz.1.2017.03.21.21.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 21:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id w20so3456718pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 21:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eKzCgACpEBtELLQu5gZaveOQc9AhM27cQGwlhSiP+xo=;
        b=TbA7YmorfQX4bf1Wdqnst8iV7C/ksjFrTlCRVBrEYWUH5QRpqp9hzdx6Hzks5kzQbH
         K4NY2gj0bizYj7DLlG546YXEYESXow+gPbAEKxnWNjxk4QNYEll2Npeax3F/XRZVI2oW
         ks8EuVWgK/utU9bpLiFCmiqrNSDDGS81LEMpRb6Tv0QCddd8Q2lEyTtaJGfiQYAQEEr8
         1kxkjrwy9m/sPrcetafCosRl4m3SHZaE7cQjjyrQP2G5alD/RrltBucIk007Yn04+V/U
         2tThMjWd+oO2A5Mkz8kngVT+B4Tyj00TQmmgED/qwFFd5FqTLRnCLejaB1XFgGM0VqyC
         U1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eKzCgACpEBtELLQu5gZaveOQc9AhM27cQGwlhSiP+xo=;
        b=V2IHPiJBdOYtQEr1HswadPHaJ8tySyMxJ5W5MJStfjflxtrkJc8RBbrfyYapT+9I9m
         dmCN/0qmkXCDTUw1cSzpzhMaLwx1DSD0oNZg1/RNuXc9uGwK/NRXJidKK+gm1hKbPWVH
         Z7MYx+qmluw+Ra1e4BQUTTQ8SLAY7uFgk5MDdbg37ZCAvW6tiN8CvACDX+4HsoFL3BJr
         rahx+omNlLNZQ+ECc3dSeRLBnDDOtyT33LgaF+XG+KpnrRfnWr4VC/MKFHrek3/sRcqs
         WKeapbumGnbRga/o4uAf+ySwwidy3GudRA/qY9Fllq4hOD/o/GAyY/yIIfzY3beh4u2v
         hCzQ==
X-Gm-Message-State: AFeK/H2Y9CWUSPxHwUCULoMdnaeO25sqMPbK5lBKOsKPXK7cLJefJkz8GOkEm+jfPnw9zw==
X-Received: by 10.98.63.24 with SMTP id m24mr43886583pfa.143.1490156776316;
        Tue, 21 Mar 2017 21:26:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b74sm388153pfd.90.2017.03.21.21.26.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 21:26:15 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-media@vger.kernel.org,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/3] staging: media: Replace a bit shift.
Date: Wed, 22 Mar 2017 09:56:06 +0530
Message-Id: <20170322042609.23525-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace a bit shift by a use of BIT in media driver.

Arushi Singhal (3):
  staging: media: Replace a bit shift by a use of BIT.
  staging: media: davinci_vpfe: Replace a bit shift by a use of BIT.
  staging: media: omap4iss: Replace a bit shift by a use of BIT.

 .../media/atomisp/pci/atomisp2/atomisp_cmd.c       | 12 +++++-----
 .../atomisp/pci/atomisp2/atomisp_compat_css20.c    |  6 ++---
 .../media/atomisp/pci/atomisp2/atomisp_drvfs.c     |  6 ++---
 .../media/atomisp/pci/atomisp2/atomisp_v4l2.c      | 18 +++++++--------
 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c   |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_isif.c    | 26 +++++++++++-----------
 drivers/staging/media/davinci_vpfe/dm365_resizer.c |  6 ++---
 drivers/staging/media/omap4iss/iss_csi2.c          |  2 +-
 drivers/staging/media/omap4iss/iss_ipipe.c         |  2 +-
 drivers/staging/media/omap4iss/iss_ipipeif.c       |  2 +-
 drivers/staging/media/omap4iss/iss_resizer.c       |  2 +-
 13 files changed, 44 insertions(+), 44 deletions(-)

-- 
2.11.0


