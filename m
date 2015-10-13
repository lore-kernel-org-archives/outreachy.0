X-GM-THRID: 6205156993637810176
X-Received: by 10.31.47.216 with SMTP id v207mr8138210vkv.4.1444750696374;
        Tue, 13 Oct 2015 08:38:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls1830706ioa.108.gmail; Tue, 13
 Oct 2015 08:38:15 -0700 (PDT)
X-Received: by 10.50.55.71 with SMTP id q7mr17720259igp.7.1444750695882;
        Tue, 13 Oct 2015 08:38:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si340366pac.2.2015.10.13.08.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id rc13so24758087pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ePZGlYgi92RNGS6OkfOf2tZuqpRzmo+6oIV+Q1hNwVE=;
        b=NRId7F5NTbQbXaue/GMW17tnasgEbfs9XUKjEswybdVtm8xvfxi3jNMdII+tm0kWWK
         G5oWctWjQt5cnxb9pCwO+YNI2zL+BomkelF7BmfBKXJpLpWUnG737YKmSGgJ7f9lPNJV
         WGrifSDImwBs+hV1S1vzMFFNfmZ+vSbzQXy/AthdtmtQEzb8zgoegBNSt+JMvtQRhX+L
         iltV3KjHItuytc1Q1ScX+7fh6fnfuDsUgwdIjhs9Tr/470y2DKlcCxEHmVB3H9RGhkaM
         MXCVkoebRxtI2b1RvrkPTsar6rpaY72tWr1rG/SbZ/m+xET9R5L8gT4Thf3AsEGxOU8V
         3v6Q==
X-Received: by 10.66.219.162 with SMTP id pp2mr41364792pac.59.1444750695735;
        Tue, 13 Oct 2015 08:38:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yz3sm4562390pbb.37.2015.10.13.08.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:38:15 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] Staging: Remove exceptional & on function name
Date: Tue, 13 Oct 2015 21:07:46 +0530
Message-Id: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561D2563.00D5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove & on function name
The change is made using Coccinelle and a simplified version of
the patch used is-

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Shraddha Barke (3):
  Staging: comedi: Remove exceptional & on function name
  Staging: iio: Remove exceptional & on function name
  Staging: most: Remove exceptional & on function name

 drivers/staging/comedi/comedi_fops.c    | 2 +-
 drivers/staging/iio/adc/ad7280a.c       | 2 +-
 drivers/staging/iio/addac/adt7316.c     | 2 +-
 drivers/staging/iio/resolver/ad2s1210.c | 2 +-
 drivers/staging/most/aim-sound/sound.c  | 2 +-
 drivers/staging/most/mostcore/core.c    | 3 ++-
 6 files changed, 7 insertions(+), 6 deletions(-)

-- 
2.1.4


