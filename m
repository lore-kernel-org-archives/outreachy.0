X-GM-THRID: 6210976897609760768
X-Received: by 10.182.65.67 with SMTP id v3mr288220obs.38.1446105748674;
        Thu, 29 Oct 2015 01:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls158439ioi.78.gmail; Thu, 29 Oct
 2015 01:02:28 -0700 (PDT)
X-Received: by 10.66.227.1 with SMTP id rw1mr239526pac.31.1446105748174;
        Thu, 29 Oct 2015 01:02:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id iz5si21789pbc.2.2015.10.29.01.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 01:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id z6so33389388pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 01:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=P1TgVc8WzOfBtDcpw3Tyxu5zjIv9Es1+I9wiGvPsE44=;
        b=K2Ok1RJtIVqEgbX78/9gSa+BW3n/K9rF/Arxj+tcDNSHlHj0cKW03QWVcX+Q8HHZmn
         35PVQKSV5MqsuiWkHYzjyQyUHiTboDhMul+zq0RC9/u4EuK2sjcsfFGJzXHIxlwQmtTp
         oJMlm3/8WvOKQWDVTVsrNSbPMkLcYAEDnpWz+Vbtuc5pD4T0yk0XJAbv6UfR1OJold8f
         NmFQPAkuJB/aDJ0Jw3BFtuilaqlt76o1j/XjgH2ED3zxPFcy8+x26v1ynEL/U3wy1Lc7
         qqhA+jDPooJMY7Wa4O2qtFm288kEEbOj5KLBaxANz2eTRj+ybstbcQ7GeERpL9LjRMID
         zmYg==
X-Received: by 10.68.183.228 with SMTP id ep4mr503069pbc.54.1446105748015;
        Thu, 29 Oct 2015 01:02:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id we9sm704807pab.3.2015.10.29.01.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 01:02:27 -0700 (PDT)
Date: Thu, 29 Oct 2015 13:32:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: rdma: Remove unnecessary variables
Message-ID: <cover.1446105494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary variables that can be replaced by a
single line of code.

Amitoj Kaur Chawla (3):
  staging: rdma: amso1100: Remove unnecessary variable
  staging: rdma: hfi1: Remove unnecessary variable
  staging: rdma: hfi1: chip: Remove unnecessary variables

 drivers/staging/rdma/amso1100/c2_rnic.c |  5 +----
 drivers/staging/rdma/hfi1/chip.c        | 22 ++++++----------------
 drivers/staging/rdma/hfi1/qsfp.c        |  5 ++---
 3 files changed, 9 insertions(+), 23 deletions(-)

-- 
1.9.1


