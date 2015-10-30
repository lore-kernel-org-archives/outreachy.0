X-GM-THRID: 6211433707094409216
X-Received: by 10.68.253.136 with SMTP id aa8mr6128085pbd.14.1446212108976;
        Fri, 30 Oct 2015 06:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.6 with SMTP id 6ls15032ioo.0.gmail; Fri, 30 Oct 2015
 06:35:08 -0700 (PDT)
X-Received: by 10.107.9.196 with SMTP id 65mr7274994ioj.11.1446212108409;
        Fri, 30 Oct 2015 06:35:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si732215pbb.0.2015.10.30.06.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 06:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so78052861pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 06:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=pgtGHG9/w0Cp38r9mK9cFcvn5gL5YQZylK3yYrUoP9Q=;
        b=zdBT59b24xrgfXzSFD2AZKBtiTKgsBgoDTAk35uOjSF06E8lTsMBvm4jbmjqgcDynW
         zM+1HlqxTDYt1HUnlMX8DMbCb8fJ0C6k1iGQC8KqgRThv+zvQhJoVZkJ43c/iUMZ7xmm
         38xKtQ5keUlaRmDQ3no4BWAouHjfxVrc06u2vg06K4tyZz4p9BYMRAAiAHelZZVaCVmZ
         oZzfjeEjAKAEjkRnZovcjW7XSJ4fj7O0U7aHmGTZToOCs6q4XO1XUCN7KPu3tYCuSxzw
         sJt9NOrTsO91V4zQb1DkfpVwBn9P5hb97I2VKuVeFkG4F+8C8tlRnqpx7YUWyX/ItITS
         cr2g==
X-Received: by 10.67.5.193 with SMTP id co1mr8716962pad.134.1446212108245;
        Fri, 30 Oct 2015 06:35:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fl5sm8318658pbd.70.2015.10.30.06.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 06:35:07 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Staging: Remove unused header files
Date: Fri, 30 Oct 2015 19:04:59 +0530
Message-Id: <1446212099-28884-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5633720B.003D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the header files since they are not needed.

Shraddha Barke (2):
  Staging: sm750fb: Remove unused modedb.h file
  Staging: dgnc: Remove unused #include header file

 drivers/staging/dgnc/dgnc_utils.c |   1 -
 drivers/staging/sm750fb/modedb.h  | 233 --------------------------------------
 drivers/staging/sm750fb/sm750.c   |   2 -
 3 files changed, 236 deletions(-)
 delete mode 100644 drivers/staging/sm750fb/modedb.h

-- 
2.1.4


