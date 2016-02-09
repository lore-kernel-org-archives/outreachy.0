X-GM-THRID: 6249298092856705024
X-Received: by 10.140.136.135 with SMTP id 129mr32525810qhi.10.1455028097165;
        Tue, 09 Feb 2016 06:28:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls786990ioe.53.gmail; Tue, 09 Feb
 2016 06:28:16 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr22372759pfj.4.1455028096784;
        Tue, 09 Feb 2016 06:28:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tn7si5118171pac.1.2016.02.09.06.28.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:28:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id gc2so335456pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YS8kXogrC/hWPfxBO7T0wMdL+oenoMF3wY+SeyfuBGQ=;
        b=e7ZzoFv2XyGwnnAW9hmyYtDWRZ/tkIXgMn8W/nuO3VCJVjCMPYPGc49Z+5qLoXwzuc
         Vr8mCtN+Ake7U9PKppK7v53uoWEB4EVif9nhxVMHZu5S9sdPYsZcmsgxtyYcdwCQpPYG
         wvVPfcyCusgHLf6A+RF8VrkaGEiTwp48RVnomK2ZynyUXcuK1T8JPoKrWZaKJ0WrCoRI
         k/rbw3oVN4IyJZ3ROMfDl9Uspc7LR2AI99/+Jr0FmwloCiFH8+9RKT4thJ0m1DVOq+Gq
         SWN71cboCYbQDbSvh2vBx6kA3RXUQKO5nHHguQ2Vf9jSM9QFdiof7E/TpDGnDEC7DXuf
         P0kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YS8kXogrC/hWPfxBO7T0wMdL+oenoMF3wY+SeyfuBGQ=;
        b=e+1pF1AOlpU9GmivHGn1TdRtQ0jwSwizBBsszy5mIdfcHgG+VoSbKJZe0Gv13AohQI
         qIkLzcZGLlY+tkcEeYEGXgq5egyUOWZY9HE55urYsNZoSX+oUwPheshX58PFoUPW7/LY
         W+o3crKft819Pxm4d+MZTi9BpHs2N5tXs9zXqU09lJQywqbDC4yPSRPZ3KrKuDrwdV/0
         JNNT8pP8IFb3aWLpx65uKP8spyhiP/E1jry/Tjh+JfQ3glMZ8LpmpncvUTBA6YDbBFm3
         c+SxU6fzrQ9N0WPZ8Mw/Eawjfo6pyx+WybhigEY5pQ3drT1bOHJAdqy/+okJjQVAmKaO
         bnCg==
X-Gm-Message-State: AG10YOTY9tpyjeB6T9/j4lhlHBzcpiBbXsLvMg3zKfLFJfDCHdw14jCskiFRGNI1mtAlig==
X-Received: by 10.66.150.66 with SMTP id ug2mr51592184pab.114.1455028096695;
        Tue, 09 Feb 2016 06:28:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.176.229])
        by smtp.gmail.com with ESMTPSA id e14sm51223818pap.24.2016.02.09.06.28.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 06:28:16 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 19:57:42 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Staging: xgifb: Fix multiple checkpatch issues
Date: Tue,  9 Feb 2016 19:57:39 +0530
Message-Id: <cover.1455026990.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes multiple checkpatch.pl issues in xgifb/vb_setmode.c .

Bhumika Goyal (2):
  Staging: xgifb: Remove space after type cast
  Staging: xgifb: Remove unnecessary blank lines

 drivers/staging/xgifb/vb_setmode.c | 28 +++++++++++-----------------
 1 file changed, 11 insertions(+), 17 deletions(-)

-- 
1.9.1


