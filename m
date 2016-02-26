X-GM-THRID: 6254955929257639936
X-Received: by 10.50.13.101 with SMTP id g5mr1458029igc.6.1456479437026;
        Fri, 26 Feb 2016 01:37:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.100 with SMTP id i91ls1091003qgd.66.gmail; Fri, 26 Feb
 2016 01:37:16 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr386602ywa.9.1456479436602;
        Fri, 26 Feb 2016 01:37:16 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id r75si264694pfr.0.2016.02.26.01.37.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:37:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so4231609pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lnHNPxYgD1w91sSCaisQtUcjcaaqcRdFxhn8TAqmyYw=;
        b=JHRGTkcs6nsP86SSEujRWWqgMrpj4qMpTxNSGHrUkok5XOKZR0N/8yiy2crscS7i5m
         JEjUxXJKab1/UJ3Y7LD7h+TmLzYAzDgyGummzsZdzf+Unr8JfdHjtz1zf/HhB/vUVupg
         T4LVE7giB8/oadThYsiXMMdatBxwT9VeWg0tgbXO8bO+MymOoHi5p+LOqZ9Js3uvhEBf
         rRv0gmXabDrRfBLHfmiLXooDNeU3yQpJJ++VyWhtIUZVjiVK41VGdytHSUQI6n+HnhG/
         +7mU1rWFfBvX1nGpfAzc6app4LpHu3X1GMjoca4s7RVpGi6x0dzSMccBJ5QnSHuBrsZY
         ARUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lnHNPxYgD1w91sSCaisQtUcjcaaqcRdFxhn8TAqmyYw=;
        b=bWyTZADue4l+ACRZsAr+XNB/rbT1alhcan/NhvbV1sGaLvmwEoCY01v4zFkhk+ay7Q
         za36XX1ikV0lVd8/Ki2WkxBmMFO6E/g/HxEONiBlm2ETxMyzF3Ghl63wQDJMCvcAyaYr
         fw9MnWK03IlpEGx8EE9uyL17/gF99qTbK7ewXwCrnLwpHyHqbypbLWAswFc4S390KCrU
         VOnEe0KWHX5CFYuBK8PEmSCtb9XE8o9Y9f370Ptsgjh4DzTNh+UVQPR95ZWg5czySGuU
         iq81yqAR+pW9g0QyD6zlaLRW3NodNAc2fjWGNA2Bm12YTo9Gjr6pcV/zbKU3QCk3HYOY
         Mgnw==
X-Gm-Message-State: AD7BkJIbXq9tK2c7Pf9gYDZzhCi2fI2ysfkWEv+Z0TS6ZLQgNBZlSZxpfJPjNhOp0eXbdA==
X-Received: by 10.66.252.100 with SMTP id zr4mr635985pac.111.1456479436440;
        Fri, 26 Feb 2016 01:37:16 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e1sm17963051pas.1.2016.02.26.01.37.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:37:15 -0800 (PST)
Date: Fri, 26 Feb 2016 15:07:47 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/5] Remove useless return variables
Message-ID: <20160226093747.GA10229@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes unnecessary return variables and compresses the
return logic.

Bhaktipriya Shridhar (5):
  staging: android: ion: hisilicon: Remove useless return variables
  staging: rtl8188eu: os_dep: Remove useless return variables
  staging: rtl8188eu: core: Remove useless return variables
  staging: rtl8723au: hal: Remove useless return variables
  staging: lustre: ptlrpc: Remove useless return variables

 drivers/staging/android/ion/hisilicon/hi6220_ion.c  |  5 +----
 drivers/staging/lustre/lustre/ptlrpc/client.c       |  5 +----
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c        |  4 +---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c    |  5 +----
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 16 +++-------------
 5 files changed, 7 insertions(+), 28 deletions(-)

--
2.1.4


