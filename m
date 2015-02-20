X-GM-THRID: 2067485687808
X-Received: by 10.180.80.35 with SMTP id o3mr438220wix.0.1424548585072;
        Sat, 21 Feb 2015 11:56:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls420379lah.33.gmail; Sat, 21 Feb
 2015 11:56:23 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr428449lab.0.1424548583513;
        Sat, 21 Feb 2015 11:56:23 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id i7si368138wif.0.2015.02.21.11.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id x3so11243378wes.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XizpHR9UYVD8R1Vr5ri9hhkpM6NTLsc4vlbJNvFggtI=;
        b=ySpc5lSg6BM18Cb9biaFtX6PS80LxQXFkFWrdHkVEMqLJdxzZCfFAu4V2xpntG8ojG
         byacg3TRQuTe3Bw6Xbxa8csJGhUEN2DYHUlJfNR4RcRe5Jsz2MDfNFz22J+bUxVNXPVT
         rt5T4WV8Adp8XjNqGozg/FZ40NRcaRiFlpT7lQsSOctnVauIteRVvJMYkTEpdPDwrciQ
         j+zDIkWDWMC2nRWQQ1MqAz+9mMYIcPTF4r6T+upRSIiVA4tXg8FxCM+Fx2pgawmrWYT1
         37YSukx0erx0pqnzN256linODEKLJQgwJVkD252mh+K/Y+FrffdtwoVw90ydkGfFLMsZ
         YZEw==
X-Received: by 10.180.8.98 with SMTP id q2mr6347588wia.80.1424548583419;
        Sat, 21 Feb 2015 11:56:23 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.54.52])
        by mx.google.com with ESMTPSA id cb14sm8227863wib.22.2015.02.21.11.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 11:56:22 -0800 (PST)
Date: Sat, 21 Feb 2015 02:21:32 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: emxx_udc: Fix checkpatch.pl warnings
Message-ID: <cover.1424473862.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs
Replace printk with pr_err

Haneen Mohammed (2):
  Staging: emxx_udc: Fix do not add new typedefs
  Staging: emxx_udc: Replace printk with pr_err

 drivers/staging/emxx_udc/emxx_udc.c | 60 ++++++++++++++++++-------------------
 drivers/staging/emxx_udc/emxx_udc.h | 28 ++++++++---------
 2 files changed, 44 insertions(+), 44 deletions(-)

-- 
1.9.1


