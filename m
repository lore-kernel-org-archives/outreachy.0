X-GM-THRID: 6261602092574572544
X-Received: by 10.13.234.87 with SMTP id t84mr14764776ywe.11.1457892845408;
        Sun, 13 Mar 2016 11:14:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls3995367qga.56.gmail; Sun, 13 Mar
 2016 11:14:04 -0700 (PDT)
X-Received: by 10.13.202.69 with SMTP id m66mr3480299ywd.40.1457892844865;
        Sun, 13 Mar 2016 11:14:04 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id tu5si2107396pab.2.2016.03.13.11.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so11142956pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ciK94sCSuoMOTK3D/lVcAKowLwIO7BpMLy1t/o2F+vg=;
        b=Vdl7iC95JCIAkDM7bqWqTEw/t6i+GCY/z1Pg9tFUyMM0qKBmGYNEoaFLXwyVW3/aFl
         gJaaW+bqWQlsoxTo1etXNooWfMaMRMbb81VOUxC8t5lfHwHPKBwoGINKvIUQmuIwb6rE
         ARNWB3qeyw0kPxQkccp3UlXtxs4xeuoE7qVjzNBY10VqmPdwv9AMqLlP3e0X2ZEbza27
         CmwTNTIv29xLwd/4Fs5jNEDaPJEaw4uJnahZ+KpQvNM9kQcWBDsn2OvbDtF/pHAmJQSz
         W02Bo63o1k1P9S3FnRVr6frDqLrFUmZwPxihm8yChFQRGU6FuW0Y0Uh7n6+t80x2+jLj
         N7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ciK94sCSuoMOTK3D/lVcAKowLwIO7BpMLy1t/o2F+vg=;
        b=jIm3eNOUi9MKy7YxcG+wd6hvD9EyCLmyMGuKC2elAeBSvu/HlIZVqlqh2NRKTLaZ3Z
         jI47pbqvWDqeRiYjE6Qrr5351uwWLHK5y5C/Z5VPdYB5FkDcpkEMduzBs8OARCDPzlZP
         T6eipHq9BbOW+0XKrBdMrHI+oiUkB/i9Su0qX2tT9KbtJJlNwBk0BcDsvqnWkmjZ3zW1
         V2rpLs19MCBsb56hbtUcH8X50m5kuaB5dMx6NAMna6e7NFuVUjDAuIXBckIr29fMkDpH
         ewcBwdo6Nj2hB/DCvcM5c4/NAl9eYGflg8h/aUPLMxR78UeejxpmV8LLmaa3GfzR9kra
         L6jg==
X-Gm-Message-State: AD7BkJL64oNoztWhFbFPAm3IlmrrCZObns+kmmDG6OkqJdqUIz8G9d1H9lZCZLy964XbKQ==
X-Received: by 10.98.42.20 with SMTP id q20mr24229025pfq.146.1457892844659;
        Sun, 13 Mar 2016 11:14:04 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.34])
        by smtp.gmail.com with ESMTPSA id g74sm26522966pfj.1.2016.03.13.11.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:14:04 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:44:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3]  Staging : Fix multiple coding style issues.
Message-ID: <cover.1457863546.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix multiple coding style issues. These issues are reported by checkpatch.pl script.

Sandhya Bankar (3):
  Staging: gs_fpgaboot: Fix alignment to match open parenthesis.
  Staging: gs_fpgaboot: Remove unnecessary blank lines.
  Staging: gs_fpgaboot: Add space around '+'.

 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

-- 
1.8.3.4


