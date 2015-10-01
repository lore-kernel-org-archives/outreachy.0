X-GM-THRID: 6200774307110453248
X-Received: by 10.180.149.210 with SMTP id uc18mr149953wib.4.1443730273784;
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.78 with SMTP id h75ls155423lfg.83.gmail; Thu, 01 Oct
 2015 13:11:13 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr729704lbc.3.1443730273191;
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c7si123555wiy.3.2015.10.01.13.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so4962297wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=kvSKJG+CJTs+4kmLAmaMslXzXKZTG+6vT/Xaa6dT/Gk=;
        b=fXlEooruRtaCraafHinXWhoKSF2jO7DR91ut5JiBcm7gU7x9oq+AvyrHbSscYTd3SD
         z33Fa7UkDuVTc5nJtg1lv89HIQTBpHHt0l56vvc8cmsrCT0eRZRe97ou83oa3pGx6rfi
         NRMmTsotorb+n8OtUguCVYhVqqAEcviGg45CrTM/RbEiIgdWJAfMudDZrPHdFdBA8GMs
         6O+ZJxRS73k3RmMF2rszvCm3gqYd6tsHKFxVpn8UOPhe+VUTllBOXr2jtw7gKA9roySt
         QQke8/Nd+gBITiy+O02rcvKfR0tQCCWGuzxtYSE4tskpZduKdsgY6TgyvoJhfY1xjiMF
         kBdQ==
X-Received: by 10.194.8.227 with SMTP id u3mr12462578wja.38.1443730273049;
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id r9sm7777516wjz.35.2015.10.01.13.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 13:11:12 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] use resource managed devm_iio_device_register
Date: Thu,  1 Oct 2015 23:10:44 +0300
Message-Id: <cover.1443729484.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset replaces the use of iio_device_register with
the resource managed function devm_iio_device_register when the remove function
only unregisters the device. Since an iio_dev registered with this function is
automatically unregistered on driver detach there is no need for the remove
function and therefore it is removed.


Ioana Ciornei (3):
  staging: iio: cdc: use devm_iio_device_register instead
    iio_device_register
  staging: iio: light: use devm_iio_device_register instead
    iio_device_register
  staging: iio: resolver: replace iio_device_register by
    devm_iio_device_register

 drivers/staging/iio/cdc/ad7150.c      | 12 +-----------
 drivers/staging/iio/cdc/ad7152.c      | 12 +-----------
 drivers/staging/iio/cdc/ad7746.c      | 12 +-----------
 drivers/staging/iio/light/isl29028.c  | 11 +----------
 drivers/staging/iio/light/tsl2583.c   | 12 ++----------
 drivers/staging/iio/resolver/ad2s90.c | 10 +---------
 6 files changed, 7 insertions(+), 62 deletions(-)

-- 
2.1.4


