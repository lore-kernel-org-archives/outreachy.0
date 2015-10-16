X-GM-THRID: 6206285490616795136
X-Received: by 10.31.162.16 with SMTP id l16mr13488239vke.5.1445013445086;
        Fri, 16 Oct 2015 09:37:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.72 with SMTP id j69ls815370ioe.99.gmail; Fri, 16 Oct
 2015 09:37:24 -0700 (PDT)
X-Received: by 10.67.14.6 with SMTP id fc6mr13852983pad.14.1445013444604;
        Fri, 16 Oct 2015 09:37:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id zg1si2149797pbb.2.2015.10.16.09.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:37:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so27235682pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=K0yv468X7cjnWH5w8bKpbcjz1grbPxFMp1QuFP1BgPk=;
        b=MU1pGzQGkPEddYrqgmxmfUnXyVaNEaNw6xIQioV37x/W1jvWVV5bTzwP7hKs3YJfOY
         F2yy4KlbUzoQWbeLv09606jUI+4Wv959uj/Ox3V0CbpDZg+9ynofm9/pno6kLnNy4aWz
         x7IrssHdnYat9zatD5KyFdthNqKsm/qcqhOH3NinPKnKiCxV5MiCN54UuTiX/7uH2f6+
         BowWtgsSBC/i0htpdM3nCS3x1SFJRJNI2uoniNTbkqG4ccf5JSMPkpCSls/2hiLLUnEf
         bAbii0Zm4PJShtzxZak5nmGJFh9KiRGrAUkvxhqcoliQdVjkK3lEEjoGE5/7LShoMc5W
         TsSw==
X-Received: by 10.66.66.196 with SMTP id h4mr16491376pat.77.1445013444423;
        Fri, 16 Oct 2015 09:37:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.217.12])
        by smtp.gmail.com with ESMTPSA id cn4sm22086627pbc.94.2015.10.16.09.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:37:23 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:07:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] staging: Prefer using BIT Macro
Message-ID: <cover.1445013271.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset replaces bit shifting on 1 with the BIT(x) Macro

The semantic patch used to find this is:
@@ int g; @@

-(1 << g)
+BIT(g)

Amitoj Kaur Chawla (5):
  staging: rdma: hfi1: Prefer using BIT Macro
  staging: rdma: amso1100: Prefer using BIT Macro
  staging: panel: Prefer using BIT Macro
  staging: vt6656: Prefer using BIT Macro
  staging: vt6655: Prefer using BIT Macro

 drivers/staging/panel/panel.c               | 6 +++---
 drivers/staging/rdma/amso1100/c2_provider.c | 6 +++---
 drivers/staging/rdma/hfi1/file_ops.c        | 2 +-
 drivers/staging/vt6655/card.c               | 2 +-
 drivers/staging/vt6656/card.c               | 2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

-- 
1.9.1


