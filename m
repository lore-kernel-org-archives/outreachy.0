X-GM-THRID: 6264236778940530688
X-Received: by 10.66.244.225 with SMTP id xj1mr17151312pac.7.1458506281357;
        Sun, 20 Mar 2016 13:38:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.233 with SMTP id l96ls188534qgd.68.gmail; Sun, 20 Mar
 2016 13:38:00 -0700 (PDT)
X-Received: by 10.13.219.149 with SMTP id d143mr20922110ywe.2.1458506280539;
        Sun, 20 Mar 2016 13:38:00 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id tu5si2760750pab.2.2016.03.20.13.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 13:38:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so27107620pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 13:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9tguuG/rdDtThc+0NQdfYTGPDyqS2pU5GysiWq5kLeM=;
        b=Qbg1J5THWvets1F72NbMfjnG+4//mmqYblr6V6fZqQmqQRWplLrjNFqr3Ca/Dcp56Y
         38H3ZzSLVcMEB4L9iPYW9OYo1Y1bxDUiQ0TAWv3Ezl+rZnpQ7spqkvnfcEcdbyOeULHq
         mLbZWozYCfUsOPPM4dSHtoxOSnAmc4wB6lQln+ksgXyrhrERi3NENjtvpQRHpnvU6SN/
         rPhlUrAgY/NBeEF3evEakwt5WV9jY2LES0tJZd+sNa/QCsHROgyWBeDaXuvrl4UCJdIu
         irMA+B/hIAJjRsALSuf9Ou4SdFEIlamgpYpXhKlayPqLsHcWr5VdRE5ar35VgJUjhk1V
         ESbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9tguuG/rdDtThc+0NQdfYTGPDyqS2pU5GysiWq5kLeM=;
        b=HwyUa1yqS0a5SeXGty/6dhFWctndR5cXhNhAAd3dFDmmJmQAS1kkb3cz8QinFCUv9s
         3vj9kl8POwGHxfm+1XCzBVvh/nwp3/uAjLexi+pMVnj/A1eUnTXcOPUNs88F2Z4ms8yb
         yjq72laa45MKk+XiueMTPu4kSmAOeVm0R3f78oH5PgUmIa1WgB022+rvRXmELW6ahJeU
         1XVl54W6zVdT+66tBihPC6L1hiZlltNeEFIpGwsBarjOmPiqjZdZHHPYTViGpzPz7Igw
         gtIAgHGTVddiEQS12x/YpqIl3QMCnr9wBZErBYCVYAUMOPLFLztLaZtRUzbIboVHj3MN
         Exlg==
X-Gm-Message-State: AD7BkJJX7KLtLVa06BihKjIGxiinM4AeexbLGtSKKgoRulAQDk+8XWJwIKrDExVGnuMHEQ==
X-Received: by 10.66.146.164 with SMTP id td4mr40201501pab.47.1458506280350;
        Sun, 20 Mar 2016 13:38:00 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 82sm35239255pfi.78.2016.03.20.13.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 13:37:59 -0700 (PDT)
Date: Mon, 21 Mar 2016 02:07:58 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Clean up tests if NULL returned on failure
Message-ID: <cover.1458506158.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc/kcalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

Bhaktipriya Shridhar (4):
  staging: rtl8712: usb_ops_linux: Clean up tests if NULL returned on
    failure
  staging: rtl8712: rtl871x_mlme: Clean up tests if NULL returned on
    failure
  staging: rtl8712: rtl871x_cmd: Clean up tests if NULL returned on
    failure
  staging: rtl8712: rtl871x_ioctl_linux: Clean up tests if NULL
    returned on failure

 drivers/staging/rtl8712/rtl871x_cmd.c         | 80 +++++++++++++--------------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  4 +-
 drivers/staging/rtl8712/rtl871x_mlme.c        |  4 +-
 drivers/staging/rtl8712/usb_ops_linux.c       |  2 +-
 4 files changed, 45 insertions(+), 45 deletions(-)

--
2.1.4


