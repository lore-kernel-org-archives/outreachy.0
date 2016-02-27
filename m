X-GM-THRID: 6256120108487278592
X-Received: by 10.112.157.164 with SMTP id wn4mr876506lbb.5.1456616471281;
        Sat, 27 Feb 2016 15:41:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.12 with SMTP id v12ls124908wmd.32.gmail; Sat, 27 Feb
 2016 15:41:10 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr878160wjc.6.1456616470637;
        Sat, 27 Feb 2016 15:41:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w197si364566wmw.3.2016.02.27.15.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:41:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p65so4205698wmp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6IFsronXodIGZB3P6zTDz/OzouakpLbkxvCbTdteMkk=;
        b=SUWV7ICY+JydPtMFZqXwxygvnTanaaVrxyxYKVC7wSbe5njW2H8Dj0Bu36xNHTCOGs
         mtwAn6tI/z6X8wqhlQ7p3lYISO2uulu+q3bx3mlEH/+aQowMPgLAWt2X+4b3QIbZwJJz
         cb8E34rKfSBV446tXsJxLTvcCU7W46fxNzFSzkV2U8VGDH8SvJhqAfYAQKGKYofJCFVL
         SiL0up4sk1h3NGZ+062/RVLyKaVY1vLG/ZqvbqPgd3qdgkKdl6egpEhPDCxYsevscwg/
         b5Z+gvNZYTjcg/g9LaPXLT4+J5DyzqqK0j/2ged52BaI7FTxo9kEyJW4CU4oAtjj80uR
         I5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6IFsronXodIGZB3P6zTDz/OzouakpLbkxvCbTdteMkk=;
        b=OO2oyBlYOhV0HbLYVFHlUWCcClon6hBeEOXmQvmCCGTRI4f+KAzuHeYv0cl9cDVpQ1
         nUMEOWotrbUIIcy6K1kJ9jItUoS/5cxVBoRD9TZWHj5uBxJuo2n86AhjCG/A9GKV9eOI
         Rc93ox1Nr2UIKCxPAmN94QmMlPbv7HvJeIvSbjVhgr44+QEnwsDwpoCWcEAJXEu9uLEK
         Yn2I5j6rtAzbQQU2k89JDXJMs1A4WOH770AiM2C/GFYPWjvGhGK/R51qxTyjUr6rfWx+
         WCpJajgGUD/RxjQHBVnk18IzUcxTFZ4n3nEDUIQcueR4iGXF83ERkQfGSjRK49/pzJt3
         10FA==
X-Gm-Message-State: AD7BkJJCbivbT9Aav99Dahxv4UxYXa2GxSmGlWZCNqIZRRT9SO7hcLx7WY2B4+PUiwkyCQ==
X-Received: by 10.194.5.36 with SMTP id p4mr8042831wjp.167.1456616470502;
        Sat, 27 Feb 2016 15:41:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id q139sm4877562wmd.2.2016.02.27.15.41.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:41:09 -0800 (PST)
Date: Sun, 28 Feb 2016 00:41:08 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/10] staging: octeon: Fix several checkpatch issues
Message-ID: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the octeon driver in order to fix several checkpatch issues detected in the source code.

Laura Garcia Liebana (10):
  staging: octeon: Move logical operators on the correct line
  staging: octeon: Fix alignment with open parenthesis
  staging: octeon: Insert blank line after struct declaration
  staging: octeon: Remove comparison to NULL
  staging: octeon: Fix block comments
  staging: octeon: Remove blank lines after open brace
  staging: octeon: Fix lines over 80 characters
  staging: octeon: Use type s32 instead of int32_t
  staging: octeon: Remove multiple blank lines
  staging: octeon: Fix braces in condition statement

 drivers/staging/octeon/ethernet-mdio.c |  2 +-
 drivers/staging/octeon/ethernet-mem.c  |  4 +--
 drivers/staging/octeon/ethernet-rx.c   | 44 ++++++++++-------------
 drivers/staging/octeon/ethernet-rx.h   |  2 +-
 drivers/staging/octeon/ethernet-spi.c  |  2 --
 drivers/staging/octeon/ethernet-tx.c   | 64 ++++++++++++----------------------
 drivers/staging/octeon/ethernet.c      | 38 +++++++++++---------
 7 files changed, 68 insertions(+), 88 deletions(-)

-- 
2.7.0


