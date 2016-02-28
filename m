X-GM-THRID: 6256430192250585088
X-Received: by 10.50.66.203 with SMTP id h11mr7431562igt.1.1456690816242;
        Sun, 28 Feb 2016 12:20:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.38 with SMTP id rt6ls383362igb.24.canary; Sun, 28 Feb
 2016 12:20:15 -0800 (PST)
X-Received: by 10.66.163.4 with SMTP id ye4mr10220014pab.23.1456690815927;
        Sun, 28 Feb 2016 12:20:15 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si3157975pab.1.2016.02.28.12.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:20:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so7786168pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AgErIdVjOJVMTUACXo0owCR2BqrP5BmxgaKD/eCxcVw=;
        b=Bchxqu7SvM2tabHki4BRZUVa3PLg1lTnSD+bvO16/aWLzxuXw/b2Lu8PWMRHKQN8lG
         g5xpLowuoKEavQEfpoT5KLsEiW4GeqoLBqr4/P+/0KmA89pykX6ZY4wmI1Eu6D28Z0LE
         2iObdBRiIb4PzGLI12bnx2o+AnrSQTywao6ncEgDmfduZHS9hD7Pl8dKJZxRI6StXnZe
         QAlFWDoFgjPo4hOgSPzofsEUyTYBxtH5/1gNOWePRPqV8KdjaBAqc3XpVtbuS8erbpei
         500EjPXu0ZCSWYQF6als8GRMB5UeW+Ui2ETmeISKzCa7VJx6mDDB8dderzPdqvCim9a6
         94kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AgErIdVjOJVMTUACXo0owCR2BqrP5BmxgaKD/eCxcVw=;
        b=fH8IVNQrlT3++IWYhIh04yYhaNmWlJ/5Vl3JTlGCT4qaI1R3nKh03vRcxt9XE0ckuX
         iyfZUqVnR+COibHYnl8Iyw5nZ5sM9zjfq55/2o/oV3qSxBQTz0uBfmgpSEJIr+UGnMGU
         3ZwaVqCtEcJSUWqVu+D/bsZ3tQ/yrUg1eOYBoTNPiDHic1G3ySFtgmJU8WSNKmYSmccv
         ojw4yZHgBLJCGX5ahQUfZpKAVLX3jURFTgtQ4A/2YjVwJvmF+gUb5M7qY2fiuas6Xw0P
         j8Fn6GYOCPDdytwps1beK/CB6vvd/l6+HA/WZ2HECUWgQXOxO+RIzSiysVBzDUhjtddt
         GFHA==
X-Gm-Message-State: AD7BkJKMHOUhCPUviKiqT64dUEJ3kgRcCHF1rSMcnpZFiqM5BC/lM4aU5EZx/VzuU97cyw==
X-Received: by 10.98.64.132 with SMTP id f4mr17023380pfd.159.1456690815798;
        Sun, 28 Feb 2016 12:20:15 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 144sm32857176pfa.83.2016.02.28.12.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:20:15 -0800 (PST)
Date: Mon, 29 Feb 2016 01:47:27 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Remove NULL test before vfree
Message-ID: <20160228201727.GA2287@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

*** BLURB HERE ***

Bhaktipriya Shridhar (4):
  staging: rts5208: Remove NULL test before vfree
  staging: rtl8188eu: core: Remove NULL test before vfree
  staging: rtl8188eu: os_dep: Remove NULL test before vfree
  staging: rtl8192e: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
 drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
 drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
 drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
 6 files changed, 27 insertions(+), 53 deletions(-)

--
2.1.4


