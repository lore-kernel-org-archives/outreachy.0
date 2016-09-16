X-GM-THRID: 6330925606572654592
X-Received: by 10.129.74.3 with SMTP id x3mr118277ywa.88.1474033483189;
        Fri, 16 Sep 2016 06:44:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls5298030otg.44.gmail; Fri, 16 Sep
 2016 06:44:42 -0700 (PDT)
X-Received: by 10.200.50.100 with SMTP id y33mr102349qta.36.1474033482694;
        Fri, 16 Sep 2016 06:44:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si4312535pfx.2.2016.09.16.06.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so3519515pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1Bl9T/SNhljLUW5MBXi/j9omISXxEURy/Lf/qkn990E=;
        b=dntmAQnbZQXF1RMMZ7Y9u/2DraoerHI/zUuhB4OAISqDIjJmmkBZvoEEMqJ2wD4gon
         EKeAXmweMGsewbIK4p3Sc8DUnK5wgdh2k8vMsrsIw1K6B3h6y82GDFcPCKa8gCGR1+CP
         Gv2UHmmsi2XL4EVLAehK5m5XwiV4JTHUwjg4+Unxr7t4LjaXOVJvgpX7SbLVH+dTlOlK
         QdEVfPeYaPi81T3pMF+dR2RnIP2b0ddVrU0e6cGgIiviz10XpERNbjp24bCyZUd44fR8
         fOjH7GiSzNRcMFsC4Q/gfgAcRUHC4vZAcPGRHC5OrtmqpTmnf5wWg6UbachLX7ZlsFTK
         yuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1Bl9T/SNhljLUW5MBXi/j9omISXxEURy/Lf/qkn990E=;
        b=jNn2ZSPhH/HP6dV2t+gjQRpni3hqZPVaP8mZ7fliBHq5vewRIl6xs/GljwwKjYsdn1
         Rb/O5VdsbxdjfL3TTihbgkQ+ckjODZUwV5FBo/V9eaDzaE8hTMp+ewg1HP6976YeqyNP
         POrAdecu4AcxJkHWAtsEunJpjloBhA5G+MEzNTkhY2EDSjWO4fnPRAVxn5A36NFdmHX+
         5+bHDKtwnM0NtNA/7JQc7egitShZ2qAONWlrk8drVYW1efjz8UUHx4U1IcLI/PLUHQwV
         SMk3AOxeqZJnlO4QKuxspgoVxE5pDwQtJFH5Uklv9dxn2iUqHkzDwDT38rcfmwgysCP3
         IWVw==
X-Gm-Message-State: AE9vXwN8xjuGMGPApaJsBh/ZqmvotLKCVDyY7AVnyuCsj7YlB/Zq7P4ova+Bld4TExmodg==
X-Received: by 10.66.176.141 with SMTP id ci13mr23485647pac.85.1474033482271;
        Fri, 16 Sep 2016 06:44:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id p7sm4794385paa.3.2016.09.16.06.44.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:44:41 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:14:30 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/6] staging: ks7010: Fix multiple checkpatch warnings
Message-ID: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes several checkpatch issues detected in the ks7010_sdio.c
file of the ks7010 driver. 

Changes in v2:
Corrected the subject line
Added a patch to remove extra braces
Removed code under comments in patch 3/6

sayli karnik (6):
  Use #include <linux/atomic.h> instead of <asm/atomic.h>
  Remove braces following single statement blocks
  Remove space after '(' and before ')'
  Remove unnecessary blank lines
  Remove the space after a type cast
  Remove extra round braces around expressions/variables

 drivers/staging/ks7010/ks7010_sdio.c | 63 ++++++++++++++++--------------------
 1 file changed, 28 insertions(+), 35 deletions(-)

-- 
2.7.4


