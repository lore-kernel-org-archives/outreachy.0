X-GM-THRID: 6255098629488377856
X-Received: by 10.182.227.137 with SMTP id sa9mr41769513obc.44.1456378640914;
        Wed, 24 Feb 2016 21:37:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.240 with SMTP id y103ls171058qge.59.gmail; Wed, 24 Feb
 2016 21:37:20 -0800 (PST)
X-Received: by 10.129.117.11 with SMTP id q11mr22645214ywc.3.1456378640242;
        Wed, 24 Feb 2016 21:37:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id yd9si940035pab.1.2016.02.24.21.37.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fl4so25983912pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0qqWDmODmpbJtSx3hBZUUAe081SNuC7/vzjZxzefkPc=;
        b=boo/p3apkpoIPnguQmgszWLhpWp+dEKGoDfrFbbjyRr9x1Zf5ALvvcGQd2XkfKoEF/
         mvb+hsQEfEWzoTPdytgT0kciK0o+ZU7V+QZToVUG3zQKNa8HoAyj7dJhTzElbjRrYEnz
         yF2wPExINO0tLIxd+/L83vZphWyzrwyyF901aiOlVIdy+/tsMKAPA/qGm75UY2VnfPdP
         PdNTayZazv9/f8QVDN5qEG/bmpQFvaDIyGw88KokOCmAwFIuR3Bb0hANpWRZ8yrXbMOM
         IMxP/c/NRBEwzEUCrEQXbgFfQLKP7UMFVCYcsoHAAXJhIhStokR0lQcEKDmCcvNs0Y86
         8SCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=0qqWDmODmpbJtSx3hBZUUAe081SNuC7/vzjZxzefkPc=;
        b=WAtPmAnQH5rnbMcpNJlb6UPB2XJBB9IHINuitsqj3THUkDqYPRPTUZd2PgxiBDGMKs
         N+Br6hpupsJJOfrHRikuCXA3D13E5ttAAGrqnM3I7D4vSNOtVJDQUG029Q97x/g07XE5
         wARbT0ndmUuykpJVO5wJiMt9UaPM+nawnm/ix4V9euPfPldPUQPKpW07CaqFkldZkASG
         54PliFPc7kQvywiduvloBu20NRATMOP+ixRb4RyQepZEGXYonej03t1rdZIRxtKlVSMN
         X8V04AdZqHSnkaHrt6R4fz3jvcK/79TqXs6zjP+JLddm0vR6uuvqzaR2hsHDSYxu2BYY
         fbZA==
X-Gm-Message-State: AG10YOQt/E+In8/Z/r4Qtxd6y5ena6iyg13sWBhPNKI/tt4G8OomyUfzpUgBJFZ+4M860A==
X-Received: by 10.66.63.67 with SMTP id e3mr58789844pas.141.1456378640023;
        Wed, 24 Feb 2016 21:37:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id tb10sm8812141pab.22.2016.02.24.21.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:37:19 -0800 (PST)
Date: Thu, 25 Feb 2016 11:07:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: Remove unnecessary *_set_drvdata()
Message-ID: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary [platform|pci|spi|dev]_set_drvdata() have been removed 
since the driver core clears the driver data to NULL after device 
release or on probe failure. There is no need to manually clear the 
device driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
// <smpl>
@@
struct platform_device *pdev;
@@
- platform_set_drvdata(pdev, NULL);
@@
struct pci_dev *pci;
@@
- pci_set_drvdata(pci, NULL);
@@
struct spi_device *spi;
@@
- spi_set_drvdata(spi, NULL);
@@
struct device *dev;
@@
- dev_set_drvdata(dev, NULL);
@@
struct amba_device *dev;
@@
- amba_set_drvdata(dev, NULL);
// </smpl>

Amitoj Kaur Chawla (6):
  staging: fbtft: Remove unnecessary spi_set_drvdata()
  staging: sm750fb: Remove unnecessary pci_set_drvdata()
  staging: media: omap4iss: Remove unnecessary platform_set_drvdata()
  staging: unisys: visorbus: Remove unnecessary dev_set_drvdata()
  staging: rdma: hfi1: Remove unnecessary pci_set_drvdata()
  staging: rts5208: Remove unnecessary pci_set_drvdata()

 drivers/staging/fbtft/fbtft-core.c              | 5 -----
 drivers/staging/media/omap4iss/iss.c            | 2 --
 drivers/staging/rdma/hfi1/pcie.c                | 2 --
 drivers/staging/rts5208/rtsx.c                  | 2 --
 drivers/staging/sm750fb/sm750.c                 | 1 -
 drivers/staging/unisys/visorbus/visorbus_main.c | 1 -
 6 files changed, 13 deletions(-)

-- 
1.9.1


