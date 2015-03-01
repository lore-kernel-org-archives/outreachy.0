X-GM-THRID: 5447739244544
X-Received: by 10.50.92.10 with SMTP id ci10mr12582465igb.8.1425224157790;
        Sun, 01 Mar 2015 07:35:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.85 with SMTP id c82ls1107780ioe.42.gmail; Sun, 01 Mar
 2015 07:35:57 -0800 (PST)
X-Received: by 10.66.149.102 with SMTP id tz6mr8900056pab.26.1425224157592;
        Sun, 01 Mar 2015 07:35:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id pc4si1204628pac.0.2015.03.01.07.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:35:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id o5so33138981pdn.8
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nObyghCRFWiTXQrl8B6nqI2zdE/QvlLF4wPd7kGXvks=;
        b=Wml2rM25OcphB6SfVDmh5TeLG39UJpo9j2f1KbgZ3SCO1eHfloFbN90Q/O6BiFm6M0
         oe+34frZHSgGXjZlD9+OumtX0zpIdg22rxsmS0Dn15P4qAXGof/RxHXM9nj8xEz0ggLZ
         xDIPUKKIOJl6DKt9dzcpVi3rIAbAtIAd56JLyuHhAPVPtv6wCIz8KHSqs2blyVSrFQ7l
         36OtY0qmjJ1fxIEvnqZviGfI5xc8ZZiY4XBlBv7q/dA25Xe78SdcsROZcKHEEboIHD+B
         KjzMASN4Dub5xPilNLKssnoBnPSXA3vosShy4XknJNeoJ2JOjqkcvQJahyOs6owi77+O
         xZTw==
X-Received: by 10.68.221.231 with SMTP id qh7mr10159427pbc.154.1425224157501;
        Sun, 01 Mar 2015 07:35:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id dp4sm9392027pdb.66.2015.03.01.07.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:35:56 -0800 (PST)
Date: Sun, 1 Mar 2015 21:04:31 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: wlan-ng: Remove unused variables.
Message-ID: <cover.1425223729.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These patches were detected by the following
Coccinelle script :
@@
identifier f, ret;
type T;
@@
(
- ret =
+ return
  f(...);
  - return ret;

  |

  - T ret =
  + return
    f(...);
    - return ret;
)

Vatika Harlalka (3):
  Staging: wlan-ng: Remove unused variable
  Staging: wlan-ng: Remove unused variable
  Staging: wlan-ng: Remove unused variable

 drivers/staging/wlan-ng/hfa384x_usb.c | 16 ++++------------
 drivers/staging/wlan-ng/prism2mib.c   | 12 +++---------
 drivers/staging/wlan-ng/prism2sta.c   |  4 +---
 3 files changed, 8 insertions(+), 24 deletions(-)

-- 
1.9.1


