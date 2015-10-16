X-GM-THRID: 6206326590573379584
X-Received: by 10.31.162.16 with SMTP id l16mr14196481vke.5.1445023014380;
        Fri, 16 Oct 2015 12:16:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.7 with SMTP id b7ls145558ioe.48.gmail; Fri, 16 Oct
 2015 12:16:54 -0700 (PDT)
X-Received: by 10.107.169.78 with SMTP id s75mr8375670ioe.31.1445023014011;
        Fri, 16 Oct 2015 12:16:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si2159985pbb.0.2015.10.16.12.16.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacez2 with SMTP id ez2so12351259pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 12:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=K+oTIGSszdzySAvoxzQ0v+Lep/h5kA/ad9doZ/2ROTo=;
        b=u3xx6WuBNxatkN7ztAqbcqXQce5NxKAM2dVfyjS0odnWRo2SEIxWtw+4INVAQw483f
         e/lgQLJFmXYumbPXv1Qh/bH3xaUGKUrWR+idWJPBfKFb0uVb5K4VRn7u5pRbDYZ/jdNT
         m6yo2Ia+UsWwQfSJF7TkHMMaHwXIxDa1UdhOE5z8jFPOeF3CxIUv1tUIb7zijWFPSOUc
         o2drRvMj5phEV6bYewPQe0hOYeQCCg7jPX+/NfQjMQ2cpXra41UCJtmDN+va6VrSQCaj
         VrOSJ67DBr6JmiRqsRbIFmsssfQ8O+til6WdllHeWT6XwL5bjOceFgxt6Rwvqk4uKV4L
         Fxmg==
X-Received: by 10.66.147.104 with SMTP id tj8mr18118081pab.125.1445023013865;
        Fri, 16 Oct 2015 12:16:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id po7sm22608464pbc.56.2015.10.16.12.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 12:16:53 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Remove unused macros
Date: Sat, 17 Oct 2015 00:46:44 +0530
Message-Id: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset removes the macros since they are not used anywhere 
throughout the kernel.
 
Shraddha Barke (2):
  Staging: iio: cdc: ad7150: Remove unused macros
  Staging: iio: cdc: ad7152: Remove unused macros

 drivers/staging/iio/cdc/ad7150.c | 10 ----------
 drivers/staging/iio/cdc/ad7152.c | 18 ------------------
 2 files changed, 28 deletions(-)

-- 
2.1.4


