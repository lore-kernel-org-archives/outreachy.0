X-GM-THRID: 6261369966950350848
X-Received: by 10.107.6.149 with SMTP id f21mr12929377ioi.25.1457838799771;
        Sat, 12 Mar 2016 19:13:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls3333005qgx.73.gmail; Sat, 12 Mar
 2016 19:13:18 -0800 (PST)
X-Received: by 10.129.25.212 with SMTP id 203mr13013662ywz.35.1457838798914;
        Sat, 12 Mar 2016 19:13:18 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id p6si741972ywe.2.2016.03.12.19.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:13:18 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id o6so63114790qkc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 19:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fUxtaX1RwX2rn9hXnAuveMyiCEqNQOa4eidtWPEMPLU=;
        b=BazSIZvBUuDEXPGBePZ425q/2mmUKrQxNVPkNGqPyYzFZ6Xl++cEDQDzEUbWe4k8CS
         GbrbVFB0h0FcS6SXmntdED/RKdac2zYqwiz7wyXlHm+UbPIpY/pKolrUkdC0yEwe3Hnm
         BLzhRJZLUe7cygiGuH8czZIpUJOQeR5yWwXEcaGSjoXrSepdi8yugPZ6c+5np0T93/zA
         sygo9KFk/7c6uJbHo0Np6by4VbucketCHagUsB7f1QYewfytPCyKkkLKd8c/FeCVEI4E
         k7TbY/jQl2tsPzNBEc1EdBsnzBvwyM3NMNJ7/M/4hAH0XaVDpFDGqyJzcYDxoJTigp+u
         wTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fUxtaX1RwX2rn9hXnAuveMyiCEqNQOa4eidtWPEMPLU=;
        b=AOnA0+507cms7VhLG8tY9NR76PXYg1Mgx1C/lzlF+1jrMgDW+reiwj/azktTfDLH1K
         iiCECTRv88phV/8Su/aGjj3SUtba9+MoMXQ8ZjCEprDN9jOFuo12PKS8DYOSJ6RQ+39Q
         aTQ3YeWgKiFm84jev6F4RsAeyMXuHDj/9zZiUzLQu/R3TkqfzkvS2fdxE7bB/0Hq75t2
         n0UL+8D/+dI/p7sR3aMfcUIAwSB70Ta//p/93KjPRdCjQZ72eE7cVhNSGA+y9kZ6QZ8X
         uIk8erG2gLDe5HPlgKeDcIz3MzEuczTdaEM+Rr4qKud7HoA/JF+hDhYVqRlKGXL7le/g
         r8YQ==
X-Gm-Message-State: AD7BkJJcm6G0Bouat+HbDKEDFmj6ye3APuUeCVpDWhzMxc7veKyR5Mp64ScedAEJuDouGg==
X-Received: by 10.55.77.206 with SMTP id a197mr21412740qkb.43.1457838798632;
        Sat, 12 Mar 2016 19:13:18 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id q94sm7355378qgq.14.2016.03.12.19.13.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 19:13:18 -0800 (PST)
Date: Sun, 13 Mar 2016 00:13:14 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 0/2] staging: dgnc: fix
 dgnc_Major_TransparentPrint_Registered camelcase
Message-ID: <cover.1457838430.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset aims to fix dgnc_Major_TransparentPrint_Registered CamelCase
issue on checkpatch.pl by renaming it in dgnc_driver.h and its calls in dgnc_tty.c.
 
Juliana Rodrigues (2):
  staging: dgnc: renamed dgnc_Major_TransparentPrint_Registered to avoid
    camelcase in dgnc_driver.h
  staging: dgnc: fixed dgnc_major_transparent_print_registered calls in
    dgnc_tty.c

 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.7.2


