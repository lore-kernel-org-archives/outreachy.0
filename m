X-GM-THRID: 6201868537095520256
X-Received: by 10.112.55.69 with SMTP id q5mr2919922lbp.24.1444418319688;
        Fri, 09 Oct 2015 12:18:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.209 with SMTP id r200ls366326lfd.6.gmail; Fri, 09 Oct
 2015 12:18:39 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr2916796lbc.23.1444418319095;
        Fri, 09 Oct 2015 12:18:39 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id bj4si6111wib.1.2015.10.09.12.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ge5so81093575wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=l206IOfYvr1xmMjH3tYPYpWBuW5vkqhHIn/UiuThFRI=;
        b=cmNE9LJRfWeqqOKym18oKAcY0MtgFCqW2CbC8Xi9UCRXpHL9YYFGRZZHg5i51g0TTQ
         1YPtAxKugTHLtAIPhNp+FIGwxfTsDpBurW+6LG9Arjg/mSouOTqg8E7icFbTxhxdKx5V
         RpgxvAO+/8H7TV5LJ+kIzVkz2mR7AXi5Uv6crdTe1nFFKFYGBX61Wk1PfbhfCTVOVDoF
         vXbb7nWeySFm3JmmtQi0VEC19NENOuW2sKS0UOWcL0f/mREPRaRtyA9cnGgNXm4BK6fz
         Pg/SelZ0jcDZX1BIB/IQKMYR1elzGNuLgMh9lclKKe7ZH+Wvswr4a7XVUXiqwbDtdeTT
         a8VQ==
X-Received: by 10.194.104.200 with SMTP id gg8mr17822414wjb.144.1444418318976;
        Fri, 09 Oct 2015 12:18:38 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.180])
        by smtp.gmail.com with ESMTPSA id hk5sm3761118wjb.6.2015.10.09.12.18.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:18:38 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 0/3] staging: octeon: Fix kernel-doc warnings
Date: Fri,  9 Oct 2015 22:17:55 +0300
Message-Id: <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>

This patchset fixes multiple kernel-doc warnings

Cristina Moraru (3):
  staging: octeon: Remove extra line from kernel-doc
  staging: octeon: Remove /** from regular comments
  staging: octeon: Fix kernel-doc function description

 drivers/staging/octeon/ethernet.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
1.9.1


