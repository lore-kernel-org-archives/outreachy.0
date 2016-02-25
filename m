X-GM-THRID: 6254955929257639936
X-Received: by 10.107.8.216 with SMTP id h85mr2121439ioi.0.1456401017590;
        Thu, 25 Feb 2016 03:50:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls345998qgf.38.gmail; Thu, 25 Feb
 2016 03:50:15 -0800 (PST)
X-Received: by 10.140.96.35 with SMTP id j32mr12767612qge.6.1456401015788;
        Thu, 25 Feb 2016 03:50:15 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 79si1179171pft.0.2016.02.25.03.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:50:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 71so2704924pfv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QjSfoNfFlng6PIgfZF59AZd/cxDdxcW2Sf4rMVhNiNo=;
        b=yU6aV4hVkwu48btXF3xORqSOb/GdcvUPmsFqDx4EfPVPla7u3g/xphtdlEQe98yEuA
         kqhy+kyLvTc9aHznNpOg8gToROGV0BwXRaalq6mY+R7bIqsDfU2ZJhYjQSqLAzNHMoFQ
         1X4nvl9kDUKvErcnlEhZWwppqTW7WP93ovNdoIY6zpVWOWiUyEdbyPcQndvLoJP+xCYq
         CQuhraYWxQHvRF5TedmSn0kxMQqUOJ0nIXU8+9sc6dng9CXDbGp8k6jKFCuBta4Nl2R8
         pR2qwjn1jQUI9Catk6WSYidSApNYeibYrdlNl9N301bG7lNLXnmIC9rndv7DrODSmq5x
         kMmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QjSfoNfFlng6PIgfZF59AZd/cxDdxcW2Sf4rMVhNiNo=;
        b=NXlVZw7CTGOTbtYjL/t5hKMI8NV9tGomXahOem5JswenN9Cs4EtFRKL9vc/Wp/QX2O
         K1Otf2bxhuswZ895zmDCfdDg1+R2M7V1KWWi65J/mZ0Wx/Y3K7m9Q1E611ZehCoubcUE
         GCB0/0MNhe+Gx/HQhh/58KmveEX5Svs4dj5jwgb0GLiW/NzNiKVdvSxiNeyN1SCkLU2x
         dWS6QV+1wn+Nli3hshMa9APbpbcx67/BqW3S+qp3TIa2Rff83pzzWocnVOLRS/0JK99b
         wNhBTdfDTJ93qtBJYV2h54uDG0y5lO4IanqOJU4F+7JaOObgYUNNb0hu0jkJHfqsuY5b
         z98A==
X-Gm-Message-State: AG10YOS+9gz1wrXL87ntryYi7FxLPGSlGaINSnN+zeN0r7u+QJSOC6A3YdGJ9FBWHfoPQQ==
X-Received: by 10.98.19.205 with SMTP id 74mr62299021pft.31.1456401015523;
        Thu, 25 Feb 2016 03:50:15 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k14sm11835573pfj.0.2016.02.25.03.50.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:50:15 -0800 (PST)
Date: Thu, 25 Feb 2016 17:20:50 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/8] Remove useless return variables
Message-ID: <20160225115050.GA5247@Karyakshetra>
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
  staging: lusture: ptlrpc: Remove useless return variables

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


