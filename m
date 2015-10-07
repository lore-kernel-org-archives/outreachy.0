X-GM-THRID: 6202953043434012672
X-Received: by 10.140.145.78 with SMTP id 75mr1772903qhr.1.1444237549892;
        Wed, 07 Oct 2015 10:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.227 with SMTP id b90ls414477qgb.72.gmail; Wed, 07 Oct
 2015 10:05:49 -0700 (PDT)
X-Received: by 10.129.159.71 with SMTP id w68mr1726975ywg.28.1444237549268;
        Wed, 07 Oct 2015 10:05:49 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id uv4si5448002pac.0.2015.10.07.10.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 10:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ex6so26713249pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 10:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=C4G1XArZdgWZ34lmyRfCkEx21T7LtpU4+LgyU+9t6Ss=;
        b=Q/jl2pb1LCi6pk2CRsBgdTAMzT1L21h+CFaBoZr+r76hgNf/mgXQQh5ybJjoZSd/GT
         azife/aTXLEgXgEF37cXcNsYsrx80ZT2zbVeD/V5GjRWnO4ODr9dcXuDenZgcI8vuAXc
         58w8bBxIg/257Jt5OA2EwpPUGhW7iK82IlTKuxgUYGVaPWXh3KL+XsAtlueCYUBiud6J
         KQLARRgIBGH8DjWF7DtpqWyrN6uc0zgFE6OE0xrJdLRBbylYt3xJ8zK5AKAl8wCFsvcs
         VP5N3Jy08DUsFAb18v3PAqCugxIzwBK7ADDHEkO8orZEMnJw855ccmEL9BtnxRavXV+E
         qEHQ==
X-Received: by 10.68.57.175 with SMTP id j15mr2282523pbq.34.1444237549120;
        Wed, 07 Oct 2015 10:05:49 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:95d7:22da:961f:adf6])
        by smtp.gmail.com with ESMTPSA id rz7sm5003004pbc.7.2015.10.07.10.05.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA256 bits=128/128);
        Wed, 07 Oct 2015 10:05:48 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:05:46 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: skein: checkpatch patches
Message-ID: <20151007170544.GA24755@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series addresses checkpatch.pl warnings in
the skein driver.

Deepa Dinamani (2):
  staging: skein: remove extra indentation
  staging: skein: fix block comment style

 drivers/staging/skein/skein_api.c   | 47 ++++++++++++++++++-------------------
 drivers/staging/skein/skein_base.c  | 18 +++++++++-----
 drivers/staging/skein/skein_block.c | 40 +++++++++++++++----------------
 3 files changed, 55 insertions(+), 50 deletions(-)

-- 
1.9.1


