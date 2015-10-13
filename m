X-GM-THRID: 6205119636361445376
X-Received: by 10.107.156.129 with SMTP id f123mr11680796ioe.4.1444741998506;
        Tue, 13 Oct 2015 06:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.134 with SMTP id w6ls1409624igl.33.canary; Tue, 13 Oct
 2015 06:13:18 -0700 (PDT)
X-Received: by 10.68.165.5 with SMTP id yu5mr28629937pbb.1.1444741998109;
        Tue, 13 Oct 2015 06:13:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id uv4si347932pac.0.2015.10.13.06.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so21261763pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cYkSlW43PK2tdX693wmK/n5tqhGtY/HSF+jYajjg754=;
        b=bJYUCVxtsu9puJ9ucKsehY1E5mQ8LVKZ0eS0MJelVRbdvzNzONS0xPmXSa0IL4t1gx
         ajRPn2XpJlAUhIjlPVr6wCBVQHIxldq0Baii6sxin8zQ6nqA77O8xqLipMcF7bUcKvcp
         Plc/A7aUstqZ89ZMRrZtx2UueCjHBgUFXbqpztwja2x4VX4AdpdGmK7u564Wgf5ZkCjH
         1p05cmqBvYjakBTKidMXMtyKOmvCM7YLoBp2GpRRMHkOwlGZbkQMccDrkW4U0/anKZ7y
         miWtPoQ/9GvTDMjnKXIpGh2Ixn1kET4YKjWZcFC0yQRo7RrI0f5vMmPs5Vng5v6SMfUq
         hu9g==
X-Received: by 10.68.196.161 with SMTP id in1mr40498245pbc.127.1444741998005;
        Tue, 13 Oct 2015 06:13:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id u10sm3927623pbs.63.2015.10.13.06.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:13:16 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:43:05 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Remove constant and unused code
Message-ID: <cover.1444741377.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unused code, changes the variable type to more
effective one and, removes unnecessary constant definitions.
After applying this patch, code becomes better. 

Shivani Bhardwaj (3):
  Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
  Staging: wilc1000: wilc_wfi_cfgoperations: Change variable to bool
  Staging: wilc1000: wilc_wfi_netdevice: Remove definition of a constant

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
 drivers/staging/wilc1000/wilc_wfi_netdevice.h     | 3 +--
 2 files changed, 4 insertions(+), 7 deletions(-)

-- 
2.1.0


