X-GM-THRID: 6330466800696819712
X-Received: by 10.13.197.65 with SMTP id h62mr5593759ywd.4.1473926659098;
        Thu, 15 Sep 2016 01:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.65.36 with SMTP id x36ls275897ita.15.canary; Thu, 15 Sep
 2016 01:04:17 -0700 (PDT)
X-Received: by 10.66.41.114 with SMTP id e18mr5603513pal.37.1473926657375;
        Thu, 15 Sep 2016 01:04:17 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si619930pfw.1.2016.09.15.01.04.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:04:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id p2so1820741pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=agluhnr1KIubbohwJBWJamYPWoljqWVq0AztZDdmc3k=;
        b=mJTMzBsGx1qamSr2EnpsIlgXJxgw5UcneoL2jdx8hkQxw/LYZo5wrE9er3OyoeHA70
         AGsogXWtVCkB3Xnxjpydb7ZANd/WWCiWoSP8CYWZifoOsceax28IQS8O69ZaehAc3HYQ
         ywDLN2m7oWCPjAbt6rDG+2PhcCqsrDr1iLyuPgsTNjQRpKFoL094UkPCvPnU2VL4fXnP
         Xbf+Z7sAo8OeEegpnQJGvMa/iQ/KkGpID371ORxIYSD+CM0OUMQGnw84B+Gi++hVnMRv
         7OriwCgeaUz10GymxfrswRfIDjY1hcFuEWe0l4q4pZhCBf91cnfkB7eWm+ZLTqAgpGzK
         RlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=agluhnr1KIubbohwJBWJamYPWoljqWVq0AztZDdmc3k=;
        b=JAU9Yc8SIBvTFvDL3tz4BXsVL7YfB17jmr3Rtszdxez8i8+bAmNFIPkYe+wSpFFAwP
         FrsV1eIvr6+lh/eWw67o6BJvBV1avsucQoQIWo7hDBYM60FQvMe8i5PYW6HDuCWwy/W1
         C8UZSL72kjhIDvnIOtXKxYEZfDRosZzbtltLLRsx0T2xvS5UyQ1XPw4obRUVDyEcPWxt
         lySfwf8H4ZdfRmK4q/JDW4Qq59c3MPQ6GzH+IUDNpDrhX+NeSlkTcBtHFz+Y9adaGfd4
         UegogFhDvkwu3o7xHjMTk/lbW0tztEoImn2nKlGQ3Qe/dpp6x0Ld0RV+8HRnEuAL1IjH
         4fkw==
X-Gm-Message-State: AE9vXwPyF+LCfzhBfxI0yxEV+zkqeK5tFABK1ybgn/0zyBWv0pvOQwwq1qwWub+2EUbcKg==
X-Received: by 10.67.23.4 with SMTP id hw4mr12283835pad.7.1473926657136;
        Thu, 15 Sep 2016 01:04:17 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e9sm2141711pao.23.2016.09.15.01.04.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:04:16 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:34:07 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/6] staging: lustre: Fix multiple checkpatch warnings
Message-ID: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple checkpatch.pl warnings in lustre.

Rehas Sachdeva (6):
  staging: lustre: Add space b/w concatenated strings
  staging: lustre: Fix block comment style
  staging: lustre: Change 'unsigned' to 'unsigned int'
  staging: lustre: Change 'seq_printf' to 'seq_puts'
  staging: lustre: Remove unnecessary 'return'
  staging: lustre: Fix indentation

 drivers/staging/lustre/lustre/fid/fid_request.c    | 8 ++++----
 drivers/staging/lustre/lustre/fid/lproc_fid.c      | 2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 6 ++++--
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 8 ++++----
 drivers/staging/lustre/lustre/llite/file.c         | 2 +-
 drivers/staging/lustre/lustre/llite/lproc_llite.c  | 2 +-
 drivers/staging/lustre/lustre/llite/rw.c           | 4 +---
 7 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.7.4


