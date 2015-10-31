X-GM-THRID: 6211753081535725568
X-Received: by 10.50.129.103 with SMTP id nv7mr2306763igb.3.1446286468457;
        Sat, 31 Oct 2015 03:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.40 with SMTP id o8ls210674obx.8.gmail; Sat, 31 Oct 2015
 03:14:27 -0700 (PDT)
X-Received: by 10.182.245.163 with SMTP id xp3mr9894370obc.19.1446286467974;
        Sat, 31 Oct 2015 03:14:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id sm2si1052479pab.0.2015.10.31.03.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so101926076pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3Scf4hc5cj9+rfzeOcprHyAvY9AiO9c0PoosMmnYvZs=;
        b=BEfP5ds+jrbMWv2ACgTOdvg/TJMiJRJb1xJt2lbppe+q1ZE55YaGjZsoBQIDRQEnez
         wfNRZonlBWeuTEXQTsDETDrECZ0ufYqq7Sg8TYCFuKeQNPcTpA7Z7YFX7063ntway9ew
         vcXTT1/NvuZsi+ND/eNaxeYgNYeggtEbDmvEbH/6hcNixJyLD0zsfi3M/5HP0Pl/Ap2S
         nyceofWUL560qEyunUGPS0ZvYf+ey+r4Mh03LKBGWyLYBvyyjjxcOlqzPZlIFVYE3ZjK
         YGe7yTPNF7+noDv/Tpo4aBTtrkv8s3EwgRBrDApODhHYuWlOFr3ofz/JSAKLYnBGxDrc
         b/ew==
X-Received: by 10.68.178.131 with SMTP id cy3mr14157652pbc.125.1446286467668;
        Sat, 31 Oct 2015 03:14:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.170.60])
        by smtp.gmail.com with ESMTPSA id b6sm12954718pbu.90.2015.10.31.03.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:14:27 -0700 (PDT)
Date: Sat, 31 Oct 2015 15:44:22 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: wlan-ng: Remove unnecessary code
Message-ID: <cover.1446286289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes wrapper functions and unnecessary variable in
wlan-ng.

Amitoj Kaur Chawla (3):
  staging: wlan-ng: Remove wrapper function
  staging: wlan-ng: hfa384x_usb: Remove wrapper function
  staging: wlan-ng: prism2mib: Remove unnecessary variable

 drivers/staging/wlan-ng/hfa384x_usb.c | 34 +++-------------------------------
 drivers/staging/wlan-ng/prism2mgmt.h  |  1 -
 drivers/staging/wlan-ng/prism2mib.c   |  5 +----
 drivers/staging/wlan-ng/prism2sta.c   | 21 ---------------------
 4 files changed, 4 insertions(+), 57 deletions(-)

-- 
1.9.1


