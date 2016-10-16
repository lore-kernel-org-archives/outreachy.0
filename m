X-GM-THRID: 6341957980641034240
X-Received: by 10.66.89.227 with SMTP id br3mr5126497pab.75.1476624672058;
        Sun, 16 Oct 2016 06:31:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls11056814ota.19.gmail; Sun, 16
 Oct 2016 06:31:11 -0700 (PDT)
X-Received: by 10.129.89.84 with SMTP id n81mr6257663ywb.23.1476624671677;
        Sun, 16 Oct 2016 06:31:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id co10si3684754pad.1.2016.10.16.06.31.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 06:31:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so7495492pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 06:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VRSO4i5ODVlD541eWdzPnSW7NZ/4lpsnpxr73sGwrbs=;
        b=uxWqRi/pVqUPGkAsXMIUQI29LAQfsCTl7LDC6Jp6fmCJXuvqCmFeQdVF/Zdx6wfOoQ
         ZNO1evx2K7DhN6YV6wCG5QSJedS8YiNgGQjRqss01F0t9Wuqj/7dFeTg/3/IDM3GpUZ7
         3LocIKV5j+9N+zHvLi92S1xSRXD4vOpylYYaFadiLDwlwrUw5oXgXmTA8bbRWAmrD5yg
         8mKww34gbRBX0jhHuGGtjeo8f54Kyox0XkqhMPI9/h94qPVtonCAOPj9rorMjDiPkSbJ
         KtnZR46lPkXnP9qJ/7j+Fx/S2j4DarEYnFvkVfjPp+0p4Ap+vyLNNaJKiukfUyn02kfR
         J6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VRSO4i5ODVlD541eWdzPnSW7NZ/4lpsnpxr73sGwrbs=;
        b=IRaLbzgDIBM05TjRqEktUdCP+i6xlK5xKTwSinEAcE4jwrpUCCwWZ9cZSsgrNjiTFg
         KQLp0PQyB70S8a/62/xYJwixiXaNjcujiT5myDQFgYX4KEourMIip1hitPZKLo20vwFk
         TmNQiv0+7M8FLI1kNTOA6VVRqAnfSO+MPiAJ8KA3XsdVEau1NAsbvFejDBRRjPTPN6Qi
         A3qvLzpg9TBxet6k1W8AFfgb1eYS+6CC+y0+ZjhD3aS608YQREDFPrvdxnx990BrFiy5
         Fxsr7VfBk15hyakZ4aVqVR/CvvBoaZLz2LJB+Qn+lA5JgChieLMeW5YjGRBVZeaOYIyL
         m8JQ==
X-Gm-Message-State: AA6/9RkgtfG5ZfQUveUpOpH3RPZpYY8/23Pq1wtEgIAPlQZnTfgkIOlkTD3U0On0KQLGzg==
X-Received: by 10.98.87.79 with SMTP id l76mr30981226pfb.174.1476624671441;
        Sun, 16 Oct 2016 06:31:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.225.216])
        by smtp.gmail.com with ESMTPSA id f2sm40883444pfj.68.2016.10.16.06.31.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 06:31:09 -0700 (PDT)
Date: Sun, 16 Oct 2016 19:00:51 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: vchiq_arm: Use ARRAY_SIZE macro
Message-ID: <20161016133051.GA28472@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch uses ARRAY_SIZE macro instead of division of two sizeofs to
find array size.
Done using coccinelle.
@@
type T;
T[] E;
@@
(
- (sizeof(E)/sizeof(*E))
+ ARRAY_SIZE(E)
|
- (sizeof(E)/sizeof(E[...]))
+ ARRAY_SIZE(E)
|
- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)
)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Adjusted the changed part in one line

 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 5ec7c96..7fee140 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -190,8 +190,7 @@ static const char *const ioctl_names[] = {
 	"CLOSE_DELIVERED"
 };
 
-vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
-	(VCHIQ_IOC_MAX + 1));
+vchiq_static_assert(ARRAY_SIZE(ioctl_names) == (VCHIQ_IOC_MAX + 1));
 
 static void
 dump_phys_mem(void *virt_addr, uint32_t num_bytes);
-- 
2.7.4


