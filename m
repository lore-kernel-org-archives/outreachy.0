X-GM-THRID: 6510934491136
X-Received: by 10.152.1.5 with SMTP id 5mr381784lai.4.1425452093982;
        Tue, 03 Mar 2015 22:54:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.231.38 with SMTP id td6ls45523wic.24.gmail; Tue, 03 Mar
 2015 22:54:52 -0800 (PST)
X-Received: by 10.194.53.225 with SMTP id e1mr386785wjp.4.1425452092566;
        Tue, 03 Mar 2015 22:54:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id l8si1025523wia.0.2015.03.03.22.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:54:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so712660wgh.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KNYTIic3x38nqI5kq7hunKbKSNzIxn9bTO8XlO/DQjE=;
        b=CWDD8FKHd+ZpydrRP1Yz0tL/IwweThxcXjgNDBiqRitx2IjRPlMwwYXhcoDt1OPxOy
         yIuu9GYP//WobtwlYJPMc6Hxcjd1rANC9p0b13Vo7htu6b+i25HzoJZzKH1YYStOJdKU
         Bud4VGsq5Kw50K+mVeu0IdI+P0mTurodl+b5c6gpJbWrC9ljghz+Zah95thgl4LUIHlz
         FUQsGQYne96yrB5afmZngx0wGtbQUn4BzR4ZcWnC/8msORWoemGlKPAoT/+8NNJNzIYY
         9N9Ucx/pc9KDD70+qcpuQFz3jgWmRPDfvfxPUKOGwb8VLzeGjYAncdN6Nfe+IrVPIxJ+
         GSbA==
X-Received: by 10.180.81.7 with SMTP id v7mr9631466wix.27.1425452092494;
        Tue, 03 Mar 2015 22:54:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id w4sm5643705wib.19.2015.03.03.22.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:54:51 -0800 (PST)
Date: Wed, 4 Mar 2015 08:54:46 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] replace memset(x,0,ETH_ALEN)
Message-ID: <cover.1425451828.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


eth_zero_addr() is a wrapper function for memset if 0 is going to
be assigned to a mac address. The aforementioned function replaces
memset. In addition, linux/etherdevice.h was included as a header
in the files the patch set is concerned with. The changes were carried
out using coccinelle.

The patchset was separated from a similar earlier patch because the
drivers concerned had some build issues.


Aya Mahfouz (2):
  staging: rtl8188eu: replace memset(x,0,ETH_ALEN)
  staging: rtl8712: replace memset(x,0,ETH_ALEN)

 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 10 ++++++----
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c  |  9 +++++----
 2 files changed, 11 insertions(+), 8 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

