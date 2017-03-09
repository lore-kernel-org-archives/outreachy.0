X-GM-THRID: 6395508245662793728
X-Received: by 10.99.105.67 with SMTP id e64mr5949658pgc.169.1489070301231;
        Thu, 09 Mar 2017 06:38:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls6538372otb.17.gmail; Thu, 09 Mar
 2017 06:38:20 -0800 (PST)
X-Received: by 10.157.13.79 with SMTP id 73mr5508174oti.81.1489070300821;
        Thu, 09 Mar 2017 06:38:20 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y203si858601pfb.0.2017.03.09.06.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:38:20 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so7488365pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 06:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=QGaMxEG7JRvf6PsNb99qPiOK+aDW7LtqQD5D3UZqGMU=;
        b=F+JngaSp1mp9oXIpoN/mF44H0mGASPLRuVyMLzL7Wxs567TkEGJwVETJdm7s7ZHBW0
         9fAuv9VgLMHo4w4+JRLlunddBtSqbqSk6Ir1mvNUA+5Js8r/euTDRPfOb7X4ADC+jYT4
         t6UN2aLPm/dYFm3SxtHiRo0O++kFA+OOVK4phjWG70DwnXtDhH0Pl/hv/LrkMQPvSNic
         ZGLunXU0/do8kyqrNQmGrDpR8b17LweeLaZytvaxdkYynwwyzdYYCYyIFs2Wwur3BKhb
         9OY0foW4qyU9dBeW/gyhMxpWoRaZP6DFgfKyGvBVbfq8xbtLwqD4rSvj+p9/uTOZnFJc
         Ks1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=QGaMxEG7JRvf6PsNb99qPiOK+aDW7LtqQD5D3UZqGMU=;
        b=DM498qm5YSAJKyLQLyN7JtAUsIRdR+qb0PCRgTodu2jyVyCdZmkCpR9sjGDzXx5SJi
         jLLDSzE7XbwBDCBXerVGsY5q8azPmB1XfyETrMDvF3YPUWdtdJxxfz/3GRU6VHi+BS3m
         vzE3izfzxxURdelFghmMPBhD6KYFaOUVZqTeQchStUmjAXMXt1yFqrtRCZGZplrYOblj
         0qr3R7RHNMbnExmXyJoUX6UGCZeUwjm+gO/xtxzyreoZmaxlXIOHdzjCtUKsGF+vLNJp
         1BeqKdOffSsMv48dfRHSl/KDn5/YsKz6ifR0LfLq8CdGLe+Lsu7TyyWBSuG75RVyb0Ln
         RlOw==
X-Gm-Message-State: AMke39nkoh2Hfc2I8XdZgBsHsXEaXXe50++gCf073C0nBWBr2LtYIe3BSAxIS1GpqZLTPQ==
X-Received: by 10.84.225.146 with SMTP id u18mr17913337plj.157.1489070300480;
        Thu, 09 Mar 2017 06:38:20 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id s12sm13081545pfj.9.2017.03.09.06.38.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 06:38:19 -0800 (PST)
Message-ID: <58c168db.8c66620a.d40b5.d940@mx.google.com>
X-Google-Original-Message-ID: <20170309143814.GA14870@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 20:08:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: atomisp: Remove useless cast and
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

match alignment with open parenthesis.
Reply-To: 

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


