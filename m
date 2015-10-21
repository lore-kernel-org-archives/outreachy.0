X-GM-THRID: 6208177008118071296
X-Received: by 10.66.240.138 with SMTP id wa10mr8693140pac.43.1445453848028;
        Wed, 21 Oct 2015 11:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.135 with SMTP id j7ls640309igx.17.gmail; Wed, 21 Oct
 2015 11:57:27 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr8950473pac.29.1445453847298;
        Wed, 21 Oct 2015 11:57:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ce6si1280552pad.0.2015.10.21.11.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 11:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hk11so62343035pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 11:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+I9f/oaQNH0xbjLecd2d6lHu7j8Ww9wuqw9TpRvfdGU=;
        b=IJ29pbQukF1Bkw9dUJvDoNSjT1OCzOhZGo9HR+2smzPrnK+7Kvf2SvVEV+00aS4iZH
         96RLIsE7wZuj7b4EKP6DL8EsSELznHy0jWf6brfoY/fBI8nj2XagSjiTV39BL2RrCBBy
         2Px5H3ChPRAULR9SN3eWrhfbxu420Vh1CfHamLoDV3k/saOr9bGYcRuGPpDsaYuQg0yL
         szWKnqTxBunMXaj8tPnaK2dYPr59mo3eh2z3ANbCU6nqgX6dw+tC1yYWAjPEVvBKmP9e
         Jv4RwHPoYDIKloVDh0YJZ+PSkrIeXSxFxjtKFD0dzpYO/q+yTlHKWi19Fas5XF528hHi
         5oQg==
X-Received: by 10.68.254.137 with SMTP id ai9mr12077117pbd.68.1445453847143;
        Wed, 21 Oct 2015 11:57:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.194.209])
        by smtp.gmail.com with ESMTPSA id a17sm10423427pbu.55.2015.10.21.11.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 11:57:26 -0700 (PDT)
Date: Thu, 22 Oct 2015 00:27:22 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: Fix endian sparse warnings
Message-ID: <cover.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple sparse warnings for endianness.

Amitoj Kaur Chawla(3):
  staging: rts5208: Fix endian sparse warnings
  staging: lustre: lmv: Fix endian sparse warnings
  staging: lustre: lnet: Fix endian sparse warnings

 drivers/staging/lustre/lnet/lnet/lib-msg.c  | 24 ++++++++++++------------
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 12 ++++++------
 drivers/staging/rts5208/rtsx_transport.c    |  4 ++--
 3 files changed, 20 insertions(+), 20 deletions(-)

-- 
1.9.1


