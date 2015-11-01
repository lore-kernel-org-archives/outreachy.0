X-GM-THRID: 6212095586717401088
X-Received: by 10.107.159.72 with SMTP id i69mr14946283ioe.23.1446371040051;
        Sun, 01 Nov 2015 01:44:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.83 with SMTP id p77ls1803749qge.86.gmail; Sun, 01 Nov
 2015 01:43:59 -0800 (PST)
X-Received: by 10.129.103.139 with SMTP id b133mr13931373ywc.24.1446371039515;
        Sun, 01 Nov 2015 01:43:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si1485165pac.2.2015.11.01.01.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padec8 with SMTP id ec8so7974375pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fJUeHhkQxEx6c4trWoyoTiFAzK8dt9mCwR4MGFBNxWg=;
        b=A1iTiajhi+CqTCklWtznUpP7vI0rg6eNZ7DYJYyq1Q8y5Wf0T2FuTgc+oWUtu0FB5J
         wsZ2t3SDWJB/gBl2WAehoMVHJHz45G6hrw1LHTRudbyp1xphvz8vSgGVUDe8jkrj694l
         SIDxRKoObQX3gXygC9rnskGQELmcAKmUAkXPWIUaXeGVZXxkjzlRm6i6a1LJ5jlrLtdQ
         mk14uCWW672rx5zoJw77GlrhgJTodUi7Ut/GDHYYlODqxA2+F7YwKc07hZwu9xW40+rS
         hxw/UViViuvwlT9Rc6/RNuKWEDOy8QfRuk+UZPO1VN/7YKH7wq5bkIOAHwd2nvj4oNi5
         j2iw==
X-Received: by 10.68.182.5 with SMTP id ea5mr19861105pbc.148.1446371039311;
        Sun, 01 Nov 2015 01:43:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id w8sm17704346pbs.87.2015.11.01.01.43.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:43:58 -0800 (PST)
Date: Sun, 1 Nov 2015 15:13:45 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: rdma: hfi1: Drop wrapper functions
Message-ID: <20151101094345.GA17548@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes wrapper functions to clean up code.

Changes in v2:
        -Removed two patches in the series

Amitoj Kaur Chawla (3):
  staging: rdma: hfi1: Remove hfi1_nomsix() wrapper function
  staging: rdma: hfi1: sdma: Remove wrapper functions
  staging: rdma: hfi1: chip: Remove wrapper function

 drivers/staging/rdma/hfi1/chip.c | 10 ++--------
 drivers/staging/rdma/hfi1/hfi.h  |  1 -
 drivers/staging/rdma/hfi1/pcie.c |  8 --------
 drivers/staging/rdma/hfi1/sdma.c | 40 ++++++++++++++--------------------------
 4 files changed, 16 insertions(+), 43 deletions(-)

-- 
1.9.1


