X-GM-THRID: 6393354564445143040
X-Received: by 10.200.49.136 with SMTP id h8mr1267440qte.29.1488568858989;
        Fri, 03 Mar 2017 11:20:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls3142161iod.49.gmail; Fri, 03 Mar
 2017 11:20:58 -0800 (PST)
X-Received: by 10.99.174.9 with SMTP id q9mr1888095pgf.80.1488568858079;
        Fri, 03 Mar 2017 11:20:58 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si216061pfa.6.2017.03.03.11.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:20:58 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so13502077pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=nrm+Umw867quqOfmTcfXmfzLZxAKbsCk3EF3KxkAeGE=;
        b=KlA5FmrNGOlN5hsoMmGhlPoB2QcUqGln9ePxfujde7U4eZI1TmR2BJMDAhcSMMDEDu
         mZxAx3ASTIdG5Xd2Fo4LlyqQy40ENRrZZvp+hAEvV3oMwTEc2aODQUpZQUjTsSLNCJGH
         90Vv4SNIRxFH5TKcvfNL/fs8AyZWFbC+pzkYEyqmhddoblbqWt6bTSvziT6k38ehH8TT
         z0P5PfEc9QqZaveg89XoaY9ZHBWH9E7TCSg7A/w7rJ0RJDgCYGnPWmFqnyaNrjLGNv02
         7OKaORMhOMavSOJoV1q+V4A39DfPDMIlu8GusrgmK8/aiHz5MZBOX5umka1h93wauOW3
         Y7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=nrm+Umw867quqOfmTcfXmfzLZxAKbsCk3EF3KxkAeGE=;
        b=IPM/xQJDy0V6Tsh/k0Fv/X3afQRrRhYnaov9TM/JVcK+f8HjpQTfqmcD3DeWs5sWNf
         cjCNqTgDo6ZHY1bIKx8R902tFCJ84IozHO8HPqL05NioEEXIHYxKfK2MQPpxdiKjZkOy
         meRjXxdxv1BlHT0cIvvEqduhwM+vgmOP/g44XX8Cr1vldXk4aepwxHAhusb73zdgAGBv
         HljAeIXOnjDbplOITGXnOe1VAkxLqqxLrC49W1Ic2laSSEF9kJo9P4lEisR18oXEHexn
         2UNyzLwGL26npQ89OdK/e4hj3rTR9zACq2tPiSKr91UcHNebhpUYR1PNrAcQJfG4puSE
         J64g==
X-Gm-Message-State: AMke39lNh0QNF57wmYutqjKJqZr9b2v9VTXO1SNDUlGDBPvd43xDssqNBaasXM0SnhG0kg==
X-Received: by 10.98.153.198 with SMTP id t67mr5441972pfk.1.1488568857704;
        Fri, 03 Mar 2017 11:20:57 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id d1sm24877993pfk.20.2017.03.03.11.20.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:20:57 -0800 (PST)
Message-ID: <58b9c219.8198620a.a53aa.2375@mx.google.com>
X-Google-Original-Message-ID: <20170303192050.GA19903@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 00:50:51 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/9] staging: media: atomisp: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in media driver.

Varsha Rao (9):
  staging: media: atomisp: Removed unnecessary parentheses.
  staging: media: atomisp: Fix line over 80 characters.
  staging: media: atomisp: Added spaces around arithmetic and bitwise
    operators.
  staging: media: atomisp: Replace 'uint32_t' with kernel type u32.
  staging: media: atomisp: Fix block comments warning.
  staging: media: atomisp: Removes the FSF mailing address.
  staging: media: atomisp: Use unsigned int instead of unisigned.
  staging: media: atomisp: Fixed typo.
  staging: media: atomisp: Replace NULL comparison.

 drivers/staging/media/atomisp/i2c/gc0310.c         | 22 +++++++--------
 drivers/staging/media/atomisp/i2c/gc2235.c         | 24 +++++++----------
 drivers/staging/media/atomisp/i2c/ov2680.c         | 30 +++++++++------------
 drivers/staging/media/atomisp/i2c/ov2722.c         | 31 ++++++++++------------
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c  |  2 +-
 drivers/staging/media/atomisp/i2c/ov8858.c         |  2 +-
 .../css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h |  6 ++---
 .../isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c      |  2 +-
 .../atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 19 ++++++-------
 11 files changed, 78 insertions(+), 92 deletions(-)

-- 
2.9.3


