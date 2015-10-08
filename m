X-GM-THRID: 6203360253861429248
X-Received: by 10.182.94.204 with SMTP id de12mr1156876obb.21.1444340249712;
        Thu, 08 Oct 2015 14:37:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.52 with SMTP id t49ls1265565qge.1.gmail; Thu, 08 Oct
 2015 14:37:29 -0700 (PDT)
X-Received: by 10.140.196.14 with SMTP id r14mr8006326qha.3.1444340249192;
        Thu, 08 Oct 2015 14:37:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id wl2si5623329pab.1.2015.10.08.14.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ve7so6756763pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 14:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1hnIJqlaWHVoJT+qq70RPL3/IZUH2PkZ9Y7TM28/dVE=;
        b=kNTY8bGaA6FETsN86ecEOQZrNnsFkLz0H5e+Sj4+Y+DApv+CtmP77g5YCHE6++EhXK
         zJEeZqig7UMFa7aDPjCC7oP/+Yz4ZTYpatMq3BAlBN2CRn/Wma+SwtOWHVwppXWtdXqQ
         eT/8PZDitkB1Tu7X/Nmvipg561DGKCbikmFBpVWPf3gYFZGUe4qYOxWK/6BiW71z6b6O
         YK/yC2NDcFAvN4CbkZ/Yk5dnmhnKcBJy/FcnMQAgEIwNVmkRsbBbsVUkVZ1chMiXRa0u
         h3yqMWEUBuFQHEYUNYoQkO+s7o62/WQExuPCZMxSyLt28gtS4tm7emr4G/VuiHOgpMHe
         0swQ==
X-Received: by 10.66.101.68 with SMTP id fe4mr10745394pab.30.1444340249005;
        Thu, 08 Oct 2015 14:37:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id ih4sm31115182pbc.28.2015.10.08.14.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 14:37:28 -0700 (PDT)
Date: Fri, 9 Oct 2015 03:07:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Fix multiple checkpatch issues
Message-ID: <cover.1444340091.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple issues found using checkpatch.pl

Amitoj Kaur Chawla (3):
  staging: sm750fb: Remove space after cast
  staging: sm750fb: Remove space before closing brace
  staging: sm750fb: Remove space after opening brace

 drivers/staging/sm750fb/ddk750_chip.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

-- 
1.9.1


