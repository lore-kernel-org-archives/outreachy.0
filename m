X-GM-THRID: 6331204832263667712
X-Received: by 10.129.129.67 with SMTP id r64mr1245401ywf.146.1474098496605;
        Sat, 17 Sep 2016 00:48:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls6022241ota.40.gmail; Sat, 17 Sep
 2016 00:48:16 -0700 (PDT)
X-Received: by 10.13.206.6 with SMTP id q6mr1191337ywd.163.1474098496266;
        Sat, 17 Sep 2016 00:48:16 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si3781871pab.1.2016.09.17.00.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so4394337pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sGPUjieltN9niri0osoCybHC4IN+gNkqOGMkFXJ8zfQ=;
        b=UVG6S5oG+wYQLfCsAeVjeK+21qAfgdZfNE4tB8yW2yGNFmqMaebtl0pl3nBwqyQhC9
         rRhzc1yRAqap3XWo/RFlLeLkBTVkiYXS4t3nisQN8X14zCg3J41XeNx2mcs5QekNc9Id
         VGvD3ipm+RJl2DfIAyXKaMp2ZMgF/8vW1//KWic0gEBI/OaJt7fxbpoUVabXDrQpmLaw
         LWfKzCQIOKFenatk4856N8eZl0dRHM3jzb4+o+F1fyzpZHf5y/FrpjxXI1qhA9ETsbJl
         c69XaTK1YEDfSfWhWwTjsr/7iKIiTur/ipUD3Y1li/j17AckTKfrwYIuifSf+E3x2XGC
         NASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sGPUjieltN9niri0osoCybHC4IN+gNkqOGMkFXJ8zfQ=;
        b=IgJfJYMZ2+rQLn3FiXYqjyS5kIn0vJ5A+/4TFW3yDa39XwB0tteixFZGxgZlp8vpXS
         P33R9WqqG3koldvOwKLk4/6y97OqzZGC/CiFTJF1a5FwcGvr6w6EtDo7bqVYawyyUlnZ
         s62+ploCxZ+xFJWYeX3FlvAWWaIh2sq1YwkBKJe3L+hDUDOvgEEYGYNBkr1ufLdsjhFB
         P8KBbtwHQyuT34wmkkR2HiKnLswWUKkTPPdOl+wi8KbYCgsN1AhZZJyx3+81NojPidrS
         1KCfo1Kc2VnrNU/WhB6m6AXLtkai5rnp6+8zM5T0gwca9jph7x05oGYLqr+Y1W6hyy8n
         pj0A==
X-Gm-Message-State: AE9vXwMbqRz1CwhxSG+wQyEZdNTV9PT5fiPaHPTDmEvU25W+jNgOU9bIbCZUNHmLkf5Ycg==
X-Received: by 10.66.249.103 with SMTP id yt7mr1589035pac.46.1474098495891;
        Sat, 17 Sep 2016 00:48:15 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id k80sm18733001pfk.27.2016.09.17.00.48.11
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 00:48:15 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:17:56 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
	arve@android.com, riandrews@android.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org
Subject: [PATCH 0/2] Staging: Modify argument of sizeof() to pointer
 variables.
Message-ID: <cover.1474055668.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Modify arguments of sizeof() to pointer variables.
The destination of the allocation has type struct **, so the 
elements of the array should have pointer type, not structure type.

These changes are made using below Coccinelle script:
 
@disable sizeof_type_expr@
type T;
T **x;
@@

  x =
  <+...sizeof(
- T
+ *x
  )...+>


Sandhya Bankar (2):
  Staging: android: Modify argument of sizeof() to pointer variables.
  Staging: lustre: Modify argument of sizeof() to pointer variables.

 drivers/staging/android/ion/hisilicon/hi6220_ion.c |    2 +-
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)


