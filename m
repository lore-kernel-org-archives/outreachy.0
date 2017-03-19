X-GM-THRID: 6399178880860553216
X-Received: by 10.36.124.71 with SMTP id a68mr193588itd.13.1489924937242;
        Sun, 19 Mar 2017 05:02:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.77 with SMTP id l74ls1556137ita.5.canary-gmail; Sun, 19
 Mar 2017 05:02:16 -0700 (PDT)
X-Received: by 10.99.2.205 with SMTP id 196mr9541434pgc.82.1489924936054;
        Sun, 19 Mar 2017 05:02:16 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si2103328pfb.5.2017.03.19.05.02.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so2372866pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=zHbqbv3TzgGbMGrcYvDnedThpFQtRcsL4whDkgCGOA4=;
        b=n3BAS1o9TqCUqDyem43MuB1O1vTQZTOv5UftHUNUPt5ZxfJRrRoaGnSX6m4kBxUQ6+
         Tm/qFoz2LkkBsEqyUU9IUwC2R6rUCk4yuTJtsXOU6mC9qtlpaeiS/uQ91P6gp5dOdlyY
         zJ5FD2+UFHw0i7yMDCwS+z5e/rexAY2SB3T2VRq7pPcLY8YqYHeRPaGuB06qGn5AoVi4
         iSSWGmPXoWbmXxaCa4lUROPW31Llh8QFILIfqrtp3Po8jiJfOTewychWEJucwLavnK45
         KeObDDp8hGz3S3k92wozz30djm8ZmJZfbiq7UUmVorUpCDyv15IVvJeIvyMlzdP5jUBq
         b1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=zHbqbv3TzgGbMGrcYvDnedThpFQtRcsL4whDkgCGOA4=;
        b=gfW66RAS1UQDmjNGIB73BqCE9r/RTlWLI09Wv7AErftj6J1hREcXPl7d6ex13qeCtI
         mU7lQPYk1fVfEe75Mbq5zyVXfXL5HiQLZjNWg9DfDfDu8fZqNzCx1Jc7qEqJL59dkDLI
         POglaI0doULoBKSMfURbkROnQdXvciGaZy/fKus2Q339EPRQh1NW0Wfq6SdjYv8jk+is
         9RGiL/Gh0u+YoyiawEkkGOkYwsLaW8U8ewqUcqlzMKqS8ZpliY9/txbJRY/9DibrIGGt
         iINP0vW06joOQfvt6BwKcPayPcgDJxkFU0s5dbm0MbiUcyOvw6Xfbdk3t6eqqgcQn7Da
         B5jg==
X-Gm-Message-State: AFeK/H2lqFvCSVc+FPLDI8r4rMcpIJVC4wbw8BRwIssHQAF44m5ksSgcJklwypYeSyGo9Q==
X-Received: by 10.98.205.7 with SMTP id o7mr27475864pfg.171.1489924935861;
        Sun, 19 Mar 2017 05:02:15 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.38])
        by smtp.gmail.com with ESMTPSA id 80sm27069277pfy.67.2017.03.19.05.02.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:02:15 -0700 (PDT)
Message-ID: <58ce7347.5318620a.9f9eb.6743@mx.google.com>
X-Google-Original-Message-ID: <20170319120150.GA8107@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:31:50 +0530
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


