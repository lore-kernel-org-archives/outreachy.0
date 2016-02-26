X-GM-THRID: 6254955929257639936
X-Received: by 10.140.221.146 with SMTP id r140mr313858qhb.20.1456477858193;
        Fri, 26 Feb 2016 01:10:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.90 with SMTP id 87ls628042ioi.36.gmail; Fri, 26 Feb 2016
 01:10:57 -0800 (PST)
X-Received: by 10.66.142.164 with SMTP id rx4mr322828pab.2.1456477857886;
        Fri, 26 Feb 2016 01:10:57 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si1784554pfb.1.2016.02.26.01.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:10:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id a7so2875453pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=d0It7xNZIHssroyZHF0Q4V65kCG62plieCdoxkxRZls=;
        b=wJRHQfAR1Yp4GFDi7zzf/f9gTRQdUW2Om+JbmUTje7dgTrmSnJAMVg9QWI2scxLufO
         6qgaw3DknTOLH8zP445sT8+1YpeUm4WX6klT2U0bJmurxPEiWhXRRiC6Jd4cLXe6jgmH
         OH23J31/hYH409FiyN9sO2VAsnLiR2ieaaq1tLdNC68fiBl7uN4T6B63sj1gTqpqlUat
         pPXSZSP2SNCX3EacFAqsQ54WUfckLcqJ0ScvWBWaQA/YIkAA6wGsUHPgVodfE4nbVdoa
         wX9E/BR2pK6UIPZm+e/SkAdUPCn/nblBIyWOYR8+EetT3UUzR00gc75mca6lzdChA4cl
         d2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=d0It7xNZIHssroyZHF0Q4V65kCG62plieCdoxkxRZls=;
        b=X1saS+pLWrTQVzIScqP0MZAo+Ku3ckDup96taGZS5MbRm17pJuFvgwwWVIR9WDQ0HT
         lOOSWe92mG25pLYOcb+fu4PG0AkJeIjvE1jmnKJ+iBpwi6G3KdVYiJi0PY8QugrY4/8/
         zIFypWgF1ryEuASXYrpOo2rNGPjkgSYeGHWoZ4l3lVV/5/yPdm1QF+aaeCW0REar7/nQ
         jv2yy3KhsgXNCTH857m8JfBBr/byZ7fx0dC/baXgTCxKQc2JaCcFwJ+PxsThDMsA9lDr
         MplYuZkMLxG9zMaIp4lKzRC0R96BNZVMz1B72TuLJnAHWqSbZ4163SyMGrIn7gL2tosF
         heHw==
X-Gm-Message-State: AD7BkJLrL/wR1DRIaWVAyq47MfmrsQupDH2FVja3W0C3L//c+jBOiB4qVhjg99d6gYGnSA==
X-Received: by 10.66.63.104 with SMTP id f8mr517294pas.109.1456477857742;
        Fri, 26 Feb 2016 01:10:57 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e20sm17718981pfd.4.2016.02.26.01.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:10:57 -0800 (PST)
Date: Fri, 26 Feb 2016 14:41:34 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/8] Remove useless return variables
Message-ID: <20160226091133.GA9015@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes unnecessary return variables and compresses the
return logic.

Bhaktipriya Shridhar (8):
  staging: rdma: hfi1: Remove useless return variables
  staging: android: ion: hisilicon: Remove useless return variables
  staging: unisys: visorbus: Remove useless return variables
  staging: rtl8188eu: os_dep: Remove useless return variables
  staging: rtl8188eu: core: Remove useless return variables
  staging: wilc1000: Remove useless return variables
  staging: rtl8723au: hal: Remove useless return variables
  staging: lustre: ptlrpc: Remove useless return variables

 drivers/staging/android/ion/hisilicon/hi6220_ion.c  |  5 +----
 drivers/staging/lustre/lustre/ptlrpc/client.c       |  5 +----
 drivers/staging/rdma/hfi1/chip.c                    |  5 +----
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c        |  4 +---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c    |  5 +----
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 16 +++-------------
 drivers/staging/unisys/visorbus/visorbus_main.c     |  4 +---
 drivers/staging/wilc1000/wilc_wlan.c                |  6 +-----
 8 files changed, 10 insertions(+), 40 deletions(-)

--
2.1.4


