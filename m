X-GM-THRID: 9088756875264
X-Received: by 10.182.251.231 with SMTP id zn7mr85153982obc.24.1426751815592;
        Thu, 19 Mar 2015 00:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.6 with SMTP id p6ls1063961qge.51.gmail; Thu, 19 Mar
 2015 00:56:55 -0700 (PDT)
X-Received: by 10.52.5.169 with SMTP id t9mr79580882vdt.7.1426751815451;
        Thu, 19 Mar 2015 00:56:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ni4si93267pdb.2.2015.03.19.00.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 00:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id c3so68752191pdn.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 00:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=X1tt8Ck8QhEcwvtcY9UjLAwaj29tJQ+E0PDcKE2VJb4=;
        b=0yGrewxozbntUu8mgHkCv2WLLQDTuJiAHSL+8P/3k7YA4XGnpLwOBOLA1W12O8qgzb
         XwxpPVNzp5fmHnN11C2eVjsD8bWBs3nGtKprFoWl3lLkHlCtUCY1oKURoTrdPlknAZhL
         L5b3PDUk6Bh+AfVleYj2cFzSBE3NZTf5JyYSeIrkyHz6FMtz61rQEC/lbEVksZgdwO5x
         tA5Y/Sywve3xg9kdKuziAhFak+5WozWKsOOseFSp+SmoSVq+PaVJQgrsEiXFYgRnKrnQ
         SJ/rOLPLT3YqJy1HivLbXnDcoKOI1HLNX9BB9Cy2pWkzsNcbuCJolIt2SK6QH522wkh9
         REUQ==
X-Received: by 10.70.46.137 with SMTP id v9mr89480149pdm.116.1426751815311;
        Thu, 19 Mar 2015 00:56:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id n10sm1457929pdp.18.2015.03.19.00.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 00:56:54 -0700 (PDT)
Date: Thu, 19 Mar 2015 13:24:59 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: rtl8188eu: Cleanups involving removing unused
 externs and macros
Message-ID: <cover.1426751449.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset is for cleanups involving removing unused
macros and externs

Vatika Harlalka (3):
  Staging: rtl8188eu: Remove unused extern declarations.
  Staging: rtl8188eu: Remove unused macros
  Staging: rtl8188eu: Remove extern as it is defined but never used

 drivers/staging/rtl8188eu/core/rtw_ieee80211.c   |  1 -
 drivers/staging/rtl8188eu/include/ieee80211.h    |  1 -
 drivers/staging/rtl8188eu/include/rtw_security.h | 26 ------------------------
 3 files changed, 28 deletions(-)

-- 
1.9.1


