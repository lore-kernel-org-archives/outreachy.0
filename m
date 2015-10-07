X-GM-THRID: 6202887067130658816
X-Received: by 10.182.102.194 with SMTP id fq2mr645296obb.43.1444222188825;
        Wed, 07 Oct 2015 05:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.136 with SMTP id l8ls251221qgf.96.gmail; Wed, 07 Oct
 2015 05:49:48 -0700 (PDT)
X-Received: by 10.129.39.87 with SMTP id n84mr723907ywn.4.1444222188038;
        Wed, 07 Oct 2015 05:49:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si4977713pbb.0.2015.10.07.05.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 05:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id lk4so20794457pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 05:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=av+gkDB0c8f+Qk/ng6z1dStJ5pO6X+zJWHvR84EGhjE=;
        b=mwvek0hNjH3aIsvu/dYdpN18Hu4X9O8Ml3RryJfq57/pve45vdyIUTNOo/5KIKFlDc
         6WpHXVKZaAGiQ0KqZWt5Z2qPgHyovceOEKFg8UMxD3P/d7dhVA3AdqNgZtzXMEvj+boS
         ojEOriPaN2A4+7WHk2Se4ZLvCAlOQ4GcHWikbwC8+vBgJGkxxHXYJEyfNMX7iRq0b9sR
         EgL2OHzDNQQiniYcKRVrfGcrHIeH9VKANniVGLQXAk1cthmyCdMClLdNjUBw89baH3EH
         0hqfE2NCM2jc6e2amXXhzzt4B6um+fazyBId+wamCChRgldr/TNYSIS/NJW/Gq4t1Nrm
         4CCw==
X-Received: by 10.66.165.5 with SMTP id yu5mr937176pab.109.1444222187895;
        Wed, 07 Oct 2015 05:49:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ci2sm11668110pbc.66.2015.10.07.05.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 05:49:47 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Use ARRAY_SIZE macro
Date: Wed,  7 Oct 2015 18:19:35 +0530
Message-Id: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561514EA.01FE,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Used ARRAY_SIZE macro instead of sizeof(x)/sizeof(x[0])
Coccinelle is used to make the changes-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Shraddha Barke (2):
  Staging: sm750fb: Use ARRAY_SIZE macro
  Staging: speakup: Use ARRAY_SIZE macro

 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 drivers/staging/speakup/i18n.c        | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.1.4


