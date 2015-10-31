X-GM-THRID: 6211822819926343680
X-Received: by 10.182.107.162 with SMTP id hd2mr11230495obb.29.1446302705794;
        Sat, 31 Oct 2015 07:45:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.138 with SMTP id z10ls1449439qgd.17.gmail; Sat, 31 Oct
 2015 07:45:05 -0700 (PDT)
X-Received: by 10.129.19.214 with SMTP id 205mr10706880ywt.29.1446302705109;
        Sat, 31 Oct 2015 07:45:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si1163067pab.1.2015.10.31.07.45.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so101874166pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1ElB2kccbdrgdZdqfLhD3qjLNPLEGK8Gdc8xZ5CT+Pw=;
        b=JVOy1NtGtUMhR/pVPZr4X29+/QC5EopRubKEY+TDEGeonswAHB/cQDevbIJQRRrOWi
         ATXLVrImBEXer8+x+LAzeoQBteomnzXmKCt5yshVvXs6kTPHj3u7HCmVWmoVufKvLEnI
         sM1OSIZFETRPBARZ6U+hpW4N6wisiDov0+oHvcwu8zwVRwjjwzaNZJKcdoK1LM+cW8OR
         SJKOAQOsYJvCWepNAHjDMqRfZ3LMtmg+7cqWFbcfDaAN/ikqy2zoOf5kMpeEsRzKO07h
         BqFAth4aX/YdPLI4nveXx19MKwWIwgvwLxatNUgAcb653pWfgVbUtuRo7a9XPXv4oMxG
         aGmg==
X-Received: by 10.66.218.167 with SMTP id ph7mr15098212pac.75.1446302704899;
        Sat, 31 Oct 2015 07:45:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.37.188])
        by smtp.gmail.com with ESMTPSA id rc5sm14244034pbc.95.2015.10.31.07.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 07:45:04 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:15:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: Drop unnecessary code
Message-ID: <cover.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes wrapper function, unnecessary variable and
function to clean up code.

Amitoj Kaur Chawla (4):
  staging: rtl8712: rtl871x_sta_mgt: Remove wrapper function
  staging: rtl8712: rtl871x_mlme: Remove wrapper function
  staging: rtl8192e: Remove unnecessary variable
  staging: rtl8192u: Remove unnecessary function

 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c |  5 ++---
 drivers/staging/rtl8192u/r819xU_phy.c          | 25 +++++--------------------
 drivers/staging/rtl8712/rtl871x_mlme.c         |  8 +-------
 drivers/staging/rtl8712/rtl871x_sta_mgt.c      |  9 ++-------
 4 files changed, 10 insertions(+), 37 deletions(-)

-- 
1.9.1


