X-GM-THRID: 6210016168421359616
X-Received: by 10.66.156.5 with SMTP id wa5mr16936030pab.21.1445882061048;
        Mon, 26 Oct 2015 10:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.167 with SMTP id i7ls1374902obr.15.gmail; Mon, 26 Oct
 2015 10:54:20 -0700 (PDT)
X-Received: by 10.182.80.198 with SMTP id t6mr20472324obx.32.1445882060536;
        Mon, 26 Oct 2015 10:54:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si3659775pac.2.2015.10.26.10.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so194588889pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2rK+R4oOTyhfNqyHU7htA5d72DDxg6BmGWw6kSygaV4=;
        b=Ag4WmZJR8VEaf6YXkIAcYv9G4lL4ikyzCSLv+2HEO/xiCa5GrqjiggAwTWTmpZRpwi
         bkoXM5Qc2byA683iCAgmqpBTgrNoI7BQ9Zjo4K6u0ypT0gKp1ztPRdn0h9nGnn+gytFJ
         gYX6P4GGNmp26g6gZ9HVU3RSn4fhPiM8Rvrk62fuLa3eF+4+HkaxsuIpYu2BqDnKpwDs
         BOcMfIOGzQrwaMl6PA/U50AKegLDv0sn4DDd3b9l5w++NJF+qfmTr2sHzHAXTiAOkVT+
         MSbCozCFC82Sj3Pq2KUA3xapt+OFDLC1guwrwyc3BqAnXYZm7w673NHiC7o50T6M0pkY
         Z8TQ==
X-Received: by 10.68.217.194 with SMTP id pa2mr23257402pbc.105.1445882060351;
        Mon, 26 Oct 2015 10:54:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id yi8sm35220975pab.22.2015.10.26.10.54.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 10:54:19 -0700 (PDT)
Date: Mon, 26 Oct 2015 23:24:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: Remove unnecessary variables
Message-ID: <cover.1445881808.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary variables that can be replaced with
a single line of code.

The semantic patch used to find this is:

// <smpl>
@@
expression ret;
@@
- if (ret) return ret;
- return 0;
+ return ret;

@@
local idexpression ret;
expression e;
@@
- ret = e;
- return ret;
+ return e;

@@
type T;
identifier i;
expression E;
@@
- T i = E;
 ... when != i

@@
type T;
identifier i;
@@
- T i;
 ... when != i
// </smpl>

Amitoj Kaur Chawla (3):
  staging: rtl8712: Remove unnecessary variables
  staging: rtl8188eu: Remove unnecessary variables
  staging: sm750fb: sm750: Remove unnecessary variable

 drivers/staging/rtl8188eu/hal/fw.c   |  5 +----
 drivers/staging/rtl8712/rtl871x_mp.c | 10 ++++------
 drivers/staging/sm750fb/sm750.c      |  4 +---
 3 files changed, 6 insertions(+), 13 deletions(-)

-- 
1.9.1


