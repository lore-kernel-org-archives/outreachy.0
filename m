X-GM-THRID: 6253814097035395072
X-Received: by 10.50.50.208 with SMTP id e16mr7933541igo.12.1456079561234;
        Sun, 21 Feb 2016 10:32:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.104 with SMTP id sx8ls347004obc.4.gmail; Sun, 21 Feb
 2016 10:32:40 -0800 (PST)
X-Received: by 10.182.20.195 with SMTP id p3mr18084536obe.47.1456079560765;
        Sun, 21 Feb 2016 10:32:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ff2si2951935pad.2.2016.02.21.10.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 10:32:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ho8so80408530pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 10:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=974BAIiC8yP3kvgdokMbypa48/S+mo9pQwvj0ZaBhLE=;
        b=pHi0NBp6LbuYGdNkooJiPGqutWbI9gn7ZNQqI0Y/BooPxuePFZOvJK/c0W4odYtlYD
         elcHIAVh92WaWjygf+uB2pBxUTe9Mrtqd1MpodZ6CVwO3Rkz93AcOf9i6BkJ6FINZeqj
         v0obVWQlKPNBOyRhgjz1cBeF9FNvdr99lY0E3vgV4CVJvnDhfZkAIly4t3vB387uC6W5
         nbMl99e4rDqeIe7b2tl8AzvX8JN7OwAokQg9QIxjBiZ0uUA3H4Bv9/2tnhHO0wD+J9z2
         +sD2pshvN+WBJ6+R5Ojg5cio8G/V/zOEVWeVHZoK/cwUBePojOB2mEe84zp80eYm2ak3
         dciQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=974BAIiC8yP3kvgdokMbypa48/S+mo9pQwvj0ZaBhLE=;
        b=kJuqnO5+DSCys9uz7F7Dp+ftKST27gCUlmaLsq/JtjF8EevFRsVWsnPs35uPmxkYCP
         nB0QMkhW1jVbSDFXm7dSnoMDF8ZRvP+LIwdFM/4OhZGi3JJz53w2GXlxXmQqw0Udc4vb
         CEL05WooYEVqbeDwtM+xyRMrJHu6odWe7q9bnUKJXBgS+QJOtWBOe2ZcMGjXAXkUumAL
         O7T+PQO4fCXkCccW6eoRyRGana1GYsSIoWgMSMr30csPLiFapQ83daI2VGxWD+xQ9ij2
         6QTE6oFh/qZfoGalCLdLuQV6g/e8SuxKBpLMQq9e5/3U7/QywEP+J64utktaFUrpJzZP
         hbag==
X-Gm-Message-State: AG10YOTSKed78B4Ph5+18l2xh3oUmnLCTByk/6X+HA8Y7kfV1wxGfGIf7lVp/IseQiRJCA==
X-Received: by 10.66.62.161 with SMTP id z1mr33144093par.108.1456079560638;
        Sun, 21 Feb 2016 10:32:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xv2sm31535587pab.10.2016.02.21.10.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 10:32:40 -0800 (PST)
Date: Mon, 22 Feb 2016 00:03:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Use macro DIV_ROUND_UP
Message-ID: <20160221183313.GA3351@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset replaces occurences of (((n) + (d) - 1) /(d))
with the kernel.h macro DIV_ROUND_UP.

Bhaktipriya Shridhar (4):
  staging: rtl8723au: hal: Use macro DIV_ROUND_UP
  staging: rtl8192e: Prefer using macro DIV_ROUND_UP
  staging: most: hdm-usb: Use macro DIV_ROUND_UP
  staging: most: hdm-dim2: Use macro DIV_ROUND_UP

 drivers/staging/most/hdm-dim2/dim2_hal.c     | 4 ++--
 drivers/staging/most/hdm-usb/hdm_usb.c       | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 drivers/staging/rtl8723au/hal/usb_halinit.c  | 3 +--
 4 files changed, 6 insertions(+), 7 deletions(-)

--
2.1.4


