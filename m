X-GM-THRID: 6202030500933009408
X-Received: by 10.66.162.7 with SMTP id xw7mr23814084pab.25.1444022753121;
        Sun, 04 Oct 2015 22:25:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.106 with SMTP id k97ls2423272qgd.83.gmail; Sun, 04 Oct
 2015 22:25:52 -0700 (PDT)
X-Received: by 10.13.225.21 with SMTP id k21mr17825949ywe.43.1444022752668;
        Sun, 04 Oct 2015 22:25:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id w5si3194686pbt.1.2015.10.04.22.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ex6so165575749pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=hCFcYd9pOyiNiGODDLEVvHV5oh8AMkB/YdP2iWTPkYA=;
        b=HlBLzNwUj0bdf1nm0i8wC2oyyZy1WTM2sH3AJQPYtSYNlm88E3jVzi9yqUWpe0ZRkc
         dCQdtjtGMRfolQC97rIK0JjBV31/4f1gv0ARyCaSqladqmzizcaL7Vk4r9Zmzqr+6n3o
         r6xMPiDpbBrjxpNpocWrdn9Udgrvrv9i1nE4cN+UAJTa9Y1Uwhz4lWulbEumNpzmcahF
         dC7VKD8pFORc387HzP7j8Jjart8WUsQXWML+MsZ2lPgktYCAt3BEUL3oOnl8AQppJjrG
         U6GMnj+wvv88JImtrPDCCp5OBPWhO1BO7jCNNqyeaggd4ARjnbj1mGX+3532Jl8tZCPN
         UUtw==
X-Received: by 10.66.139.232 with SMTP id rb8mr36896940pab.99.1444022752528;
        Sun, 04 Oct 2015 22:25:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id so4sm24951456pbc.72.2015.10.04.22.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 22:25:51 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 10:55:39 +0530
Message-Id: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.561209DF.00BB,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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

Shraddha Barke (2):
  Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with
    eth_zero_addr
  Staging: wilc1000: host_interface: Replace memset with eth_zero_addr

 drivers/staging/wilc1000/host_interface.c         | 12 ++++++------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  6 +++---
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.1.4


