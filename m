X-GM-THRID: 6393318693588172800
X-Received: by 10.107.183.4 with SMTP id h4mr5444458iof.16.1489151248217;
        Fri, 10 Mar 2017 05:07:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls9249430ota.4.gmail; Fri, 10 Mar
 2017 05:07:27 -0800 (PST)
X-Received: by 10.13.199.132 with SMTP id j126mr8570407ywd.120.1489151247829;
        Fri, 10 Mar 2017 05:07:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si1699745pfz.1.2017.03.10.05.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 05:07:27 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so10794569pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 05:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KwoJjqUOSz8aQ9XSq1dxcDu5kFMWuDqsQOF6uLai4Jw=;
        b=HUKt1GZgikOvRSk5h3Ff6kaDASnDCWOCW14Beg6erSw9MJRc+wfgCq6aZhp69VUENW
         ITb7qGL/+SmvEflzi2pBRQfSFwQ9aVieZTv3ZXMMV0q1GK8eHowKpErASq9RitOLe9xh
         RdO6T16NV0TOw5zXQLASzhkW42kroWUG8+g11ZXlG3JWJwt+5FjmqXIPMrTh6NoEBbc+
         IIEXUuTxccQpRfSot7ww10d1KN3p+2kuERQ8XekwJ6TCR2aE6QrCRc5AZgf5WSR1YiPq
         uO2Qqx6KKbi4i64D5UJN8KTr1QLKdM/kVdykXw06rREEfshjnkZzdRhBQe3ziXqI/iYT
         cKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KwoJjqUOSz8aQ9XSq1dxcDu5kFMWuDqsQOF6uLai4Jw=;
        b=BDp2bKWIf+awV8IjuiK6ZRb7f7Ev1iUNSrQzge3gs69NiZC77goqsCZAHGd+FhUwcA
         QjhckdEj3s7PtCS/gUqUSBZkFV3rRH3aXOvy+t6WorvCyEHhBYBpKQKLEB5Dgm8J4XAJ
         O596BGy65q3r3TkRzxfIVvPScW7lvLKTYL2ePQL3vesjyDi4XmSSZNRP/0g6q+6kc6rG
         IEndU5koKAEm2GNgi3iIFDF/NGOPvckS1GyfrOtepF2wRfwDt3QUT0hso8/Shz/YAS8F
         E+mobfIdyueRP7mPzusmK3Ha3B8Di9YdEMCjWuRnxFlSu5MLcV+GO6D7e4CYutg+8rv/
         QGsQ==
X-Gm-Message-State: AMke39nvX+1b4+hBEvLRb1uKgxt0/8szLAVagIIwufo03LWVn35ciynamMnE+f+0+ilZ7Q==
X-Received: by 10.98.27.204 with SMTP id b195mr20525122pfb.154.1489151247622;
        Fri, 10 Mar 2017 05:07:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 75sm18759180pfp.80.2017.03.10.05.07.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 05:07:26 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: Remove parentheses from return arguments
Date: Fri, 10 Mar 2017 18:37:22 +0530
Message-Id: <1489151244-20714-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series removes unnecessary parantheses from return arguments.

simran singhal (2):
  staging: css2400/sh_css: Remove parentheses from return arguments
  staging: sh_css_firmware: Remove parentheses from return arguments

 .../media/atomisp/pci/atomisp2/css2400/sh_css.c      | 20 ++++++++++----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c   |  2 +-
 2 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.7.4


