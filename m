X-GM-THRID: 6202030500933009408
X-Received: by 10.66.122.201 with SMTP id lu9mr23424006pab.8.1444026645175;
        Sun, 04 Oct 2015 23:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.139 with SMTP id 133ls851968iof.107.gmail; Sun, 04 Oct
 2015 23:30:44 -0700 (PDT)
X-Received: by 10.50.18.50 with SMTP id t18mr10919867igd.8.1444026644596;
        Sun, 04 Oct 2015 23:30:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si3708451pac.0.2015.10.04.23.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ex6so167307519pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=gX3kYNnL0YrEr0pCn+EgB0jsQvtT9fUcf7lW5jFY6dQ=;
        b=zWYD4aLjSzCTDEZYRHl2eDd91iUkJFNkz9WOHkyHT2cx9gF9ky3TT1awMkGP4W7KMv
         DiFaU/x8CT0YZmXTNQWxcvaN90bBaSHzAqbG3Vr8eqB4a27MxVpqbCia9Zeo48qPDHzs
         hftVWUrt980afwwgEZyXJdQHeW2KKPakSZqo4iyUwv//MyckSJF3+gJDamrj1F/JaTLP
         txFNirR9M0Dvr3TwGvakMnK0WJvqm5D5cGr2zoeA4EjI9f8JHIcSy3GbbnwtLdC/hPnA
         150RvX9RSiIY2qC97rOVYfSlnIUDrl2pwyB6H3tL8jlIt27T+AValq2bao2b8V7BDple
         Jhtg==
X-Received: by 10.68.181.34 with SMTP id dt2mr37296284pbc.7.1444026644328;
        Sun, 04 Oct 2015 23:30:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fk8sm25537993pab.33.2015.10.04.23.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 23:30:43 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/2] Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 12:00:32 +0530
Message-Id: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.56121913.001F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches replace memset with eth_zero_addr. Change is made using
Coccinelle script -

// <smpl>
@eth_zero_addr@
expression e;
@@

-memset(e,0x00,ETH_ALEN);
+eth_zero_addr(e);
// </smpl>

Changes in v3-
 Added appropriate header file to the second patch.

Changes in v2-
 Dropped second patch in series because it breaks the build

Shraddha Barke (2):
  Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with
    eth_zero_addr
  Staging: wilc1000: host_interface: Replace memset with eth_zero_addr

 drivers/staging/wilc1000/host_interface.c         | 13 +++++++------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  6 +++---
 2 files changed, 10 insertions(+), 9 deletions(-)

-- 
2.1.4


