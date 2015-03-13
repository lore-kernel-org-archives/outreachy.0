X-GM-THRID: 8122735263744
X-Received: by 10.112.147.35 with SMTP id th3mr7370485lbb.15.1426274271372;
        Fri, 13 Mar 2015 12:17:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.131 with SMTP id fo3ls215340wib.39.canary; Fri, 13 Mar
 2015 12:17:51 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr659029wib.1.1426274271017;
        Fri, 13 Mar 2015 12:17:51 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id cl5si180508wib.3.2015.03.13.12.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id em10so8763120wid.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4zpLencdz8/LUn9ABznDaSSf8gsJZ9VVdwfF+eLRVlo=;
        b=vBXCdxxK+sC8fGWq7ms/GN2B87AIg8wGR6eKl4Quyoix/q32hflJXqLwKG5nyY9Byc
         rI0epBu31HashpZyWD2TQCqj3VM9GDJXdoYLA8S36ZzI4UZWDWbBW3dYjoHK4G2AbZjy
         NFKqwHNleL7fsdoL8goUmeKAJ26FKRs36+QFtYXpUIggwvDCZ+9fAoKd9yAMIIXcMFK4
         7DqCY+W+5U0a2R9gehjq6uqbD9axm3MxtkaD4HEnSE6uKEqwgdzPVBCFDzGoN59UGjb1
         v+A8+qqvf6kT9uyyLr1EQNPB9X7cqB6BnDX2OE8B2Vmxqqic6H0+njDXVzSZPEs14drt
         We8g==
X-Received: by 10.180.84.3 with SMTP id u3mr30785064wiy.38.1426274270949;
        Fri, 13 Mar 2015 12:17:50 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id jy7sm3993613wid.22.2015.03.13.12.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 12:17:50 -0700 (PDT)
Date: Fri, 13 Mar 2015 21:17:10 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Bool tests don't need comparisons
Message-ID: <cover.1426273386.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes explicit comparisons involving bool variables.
Warnings detected by coccinelle.

Cristina Opriceana (3):
  Staging: rtl8188eu: Bool tests don't need comparisons
  Staging: rtl8192e: Bool tests don't need comparisons
  Staging: rtl8192u: Bool tests don't need comparisons

 drivers/staging/rtl8188eu/hal/rf_cfg.c             |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c         | 40 +++++++++++-----------
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |  5 ++-
 drivers/staging/rtl8192u/r8192U_core.c             |  2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c         |  6 ++--
 drivers/staging/rtl8192u/r819xU_phy.c              |  2 +-
 6 files changed, 28 insertions(+), 29 deletions(-)

-- 
1.9.1


