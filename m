X-GM-THRID: 9347595763712
X-Received: by 10.182.28.104 with SMTP id a8mr88156809obh.15.1426921153558;
        Fri, 20 Mar 2015 23:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.82 with SMTP id f79ls1362513iof.11.gmail; Fri, 20 Mar
 2015 23:59:13 -0700 (PDT)
X-Received: by 10.50.72.98 with SMTP id c2mr1754556igv.0.1426921153320;
        Fri, 20 Mar 2015 23:59:13 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id gb13si1108017pac.2.2015.03.20.23.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 23:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22b.google.com with SMTP id c3so130052863pdn.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 23:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6P12MByqvspbanM5neoj9k22qDHPFMq9g4uqyWjdt2c=;
        b=Sprdvl6oMSM4XmGnZcq4mQdlk21CTcEo/7bcouhvruKKygGvWHW6J8x5QBIv0KFFrA
         YZ0s2rSlRVxNHpl67FnXMRs+OTCOhCUlJ55cTYmsf+fhmLE6w2Vm5d5Pf8eMfOdM7oUm
         vSIV/JqTf3TjuipVeIdArw3YH4h/M9FmakliuguddZWGykGnf/hP+80kwQsktrHSG9bz
         lGkQItGfCBSvyFc8b4uGvUFM+5WqSc7VqTq72oYAtuqs0hPUS+LARlqhbT9ZTTEuIh7g
         UpvGKBtI2nn/wTzd+hWisZGyJQJkHiHCC40pgxlSUzWGRJKjGZW4LpRgIhvsIdbxng4y
         OM0A==
X-Received: by 10.66.241.36 with SMTP id wf4mr138416638pac.8.1426921153046;
        Fri, 20 Mar 2015 23:59:13 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id v9sm10651798pdp.12.2015.03.20.23.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 23:59:11 -0700 (PDT)
Date: Sat, 21 Mar 2015 12:27:11 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: wlan-ng: Remove struct typedefs.
Message-ID: <cover.1426920752.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove struct typedefs and rename structs accordingly
as per kernel code conventions.

Vatika Harlalka (3):
  Staging: wlan-ng: Remove typedef prism2sta_authlist_t
  Staging: wlan-ng: Remove typedef prism2sta_accesslist_t
  Staging: wlan-ng: Remove typedef hfa384x_t

 drivers/staging/wlan-ng/hfa384x.h     |  80 +++++++--------
 drivers/staging/wlan-ng/hfa384x_usb.c | 178 +++++++++++++++++-----------------
 drivers/staging/wlan-ng/prism2mgmt.c  |  20 ++--
 drivers/staging/wlan-ng/prism2mgmt.h  |   4 +-
 drivers/staging/wlan-ng/prism2mib.c   |  36 +++----
 drivers/staging/wlan-ng/prism2sta.c   |  40 ++++----
 drivers/staging/wlan-ng/prism2usb.c   |   8 +-
 7 files changed, 183 insertions(+), 183 deletions(-)

-- 
1.9.1


