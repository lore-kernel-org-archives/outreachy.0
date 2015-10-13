X-GM-THRID: 6205025075895205888
X-Received: by 10.107.31.209 with SMTP id f200mr27214257iof.14.1444719982964;
        Tue, 13 Oct 2015 00:06:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls110498iom.103.gmail; Tue, 13 Oct
 2015 00:06:22 -0700 (PDT)
X-Received: by 10.66.249.100 with SMTP id yt4mr27357074pac.42.1444719982531;
        Tue, 13 Oct 2015 00:06:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si145815pbb.2.2015.10.13.00.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ve7so12674688pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 00:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=y7KyOfEmQR716nNeFdcIEPzPbLcdlMqIqQ1cdl09td0=;
        b=t96VS7YqxbVPdza9HQiEnxYSA7xKnle9iNCF27xjJ787hCpB74z8oh374DpBiE9qtM
         T2vRHQ9I+wuEW28pc71UZYi/tJD73uxmbEvW2EGjeuLf42OFp+e+V5au5zx8IxZJ92VK
         /Er0u4XaivQb2iyjJ9oLzSI57CG1KitYvrFw9RY0kyVoJrQdfntsfI7YpWEZZCvFAvS9
         0WdtZRhvWRWdAFtCwz7G14d9Zhi2QCfku8TKV++fPrsYrmhU0fHtMiadhmjAFphQsSJ/
         wAITk+hEqPj81krboGrID0682b83OJYpmLVu1jiMed94f5/PdEtot2ep6Bi1n8w/AhtG
         vIvw==
X-Received: by 10.68.219.4 with SMTP id pk4mr39311444pbc.138.1444719982435;
        Tue, 13 Oct 2015 00:06:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qb7sm1838301pab.47.2015.10.13.00.06.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:06:21 -0700 (PDT)
Date: Tue, 13 Oct 2015 12:36:09 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] Fix issues discovered by coccinelle
Message-ID: <cover.1444719312.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes extra NULL tests, extra casts and irrelevant
typedefs and code.
After applying this patch, code becomes cleaner.

Shivani Bhardwaj (3):
  Staging: wilc1000: host_interface: Remove extra NULL test
  Staging: wilc1000: host_interface: Remove unnecessary typedef and code
  Staging: wilc1000: host_interface: Remove unnecessary cast

 drivers/staging/wilc1000/host_interface.c | 148 +++++++++++++-----------------
 1 file changed, 64 insertions(+), 84 deletions(-)

-- 
2.1.0


