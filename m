X-GM-THRID: 6207016662523183104
X-Received: by 10.50.62.49 with SMTP id v17mr13457513igr.1.1445183684057;
        Sun, 18 Oct 2015 08:54:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.202 with SMTP id 68ls1940200qgx.97.gmail; Sun, 18 Oct
 2015 08:54:43 -0700 (PDT)
X-Received: by 10.140.144.215 with SMTP id 206mr22055041qhq.6.1445183683226;
        Sun, 18 Oct 2015 08:54:43 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id vy6si2866911pbc.1.2015.10.18.08.54.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 08:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id rc13so165715070pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 08:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=20M0McsSoR2ARBy1ELr4ykFP+riDEX/IDuqZ4GDu/10=;
        b=fS+1XMRGyKXlhdROLvN4Xdrx1EV7cgPXxAEfyqFb0vpNx0L3ILCPHwNmA9nDt9weoR
         hgNhJmjGvzrIpZyHp9FPnTPLUhim3Q45pxH2HRwe3WRTzcR7rDkwH/tVcEjFDoeQNuse
         0yIDmmsMzVbPuIz2Mdmln4PevywZtvD10qg4xHXV58uRsQKtRu76fpXjTzlGw/O1oEvd
         RoAXsarCLMKjpyV7cRISQ7et4wo1yEplMxaBg2IHi8sD0oXEl11lDqB0eFMq3iusjqOM
         4y9HAHajlpO2ZovW9iZWM6nYORAnxn5yHiyAig+b54l9fol+6N7ySnd7BlVCioniooVx
         G8Rw==
X-Received: by 10.66.194.138 with SMTP id hw10mr29340803pac.71.1445183683034;
        Sun, 18 Oct 2015 08:54:43 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.177.180])
        by smtp.gmail.com with ESMTPSA id bo5sm31551290pbb.76.2015.10.18.08.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 08:54:42 -0700 (PDT)
Date: Sun, 18 Oct 2015 21:24:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: Fix multiple issues
Message-ID: <cover.1445183494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple issues found using checkpatch.pl

Amitoj Kaur Chawla (3):
  staging: sm750fb: Replace uint32_t with u32
  staging: sm750fb: Remove volatile modifier
  staging: lustre: ptlrpc: Replace seq_printf() with seq_puts()

 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 drivers/staging/sm750fb/ddk750_power.c              | 8 ++++----
 drivers/staging/sm750fb/sm750.h                     | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


