X-GM-THRID: 6211302879745015808
X-Received: by 10.68.195.197 with SMTP id ig5mr4664750pbc.4.1446181647698;
        Thu, 29 Oct 2015 22:07:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.133.41 with SMTP id oz9ls296315obb.82.gmail; Thu, 29 Oct
 2015 22:07:27 -0700 (PDT)
X-Received: by 10.182.27.101 with SMTP id s5mr4569221obg.35.1446181647384;
        Thu, 29 Oct 2015 22:07:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id fa8si540127pab.1.2015.10.29.22.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 22:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so64985702pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 22:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dM4HPSJewIfauoos94K7i/bgN2tBjtQy/t0Y28ddD98=;
        b=VwdTLwxANU/AwV9UffetVXjIyRWc6qijq5+PrGmfcDeK6uSLFjD5Qs5mJO3b51Jw/s
         g5xLr1gE+1JiY8vZ5yx6Ob3xdjhHorXlWXbl7BJD2HFK+CW+TCRZx9MPnHzGIV1c45Mq
         KjZ9Ei0rK/hNJPV3Dy5rhAY7NxlvimLzEeifOkEp5Em9Zr/p4vzXvgnYOAzyVm6ENhTW
         L2Tu3RpggGLG5cPrAplcaAHBYXml9GYfyqcFZwPmU9WfiNWn5IqyWdeZxY+uCPs2eRe8
         qMqUrtfrZPtyxmi0udtCm/0AgSMjDt0mEf5+XmWhLpYbRB/NU91moZzm+t7l88DhwqS3
         SDAw==
X-Received: by 10.68.178.131 with SMTP id cy3mr6326202pbc.125.1446181647245;
        Thu, 29 Oct 2015 22:07:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ou3sm5432686pbb.44.2015.10.29.22.07.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 22:07:26 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/2] Staging: comedi: Fix sparse warnings
Date: Thu, 29 Oct 2015 22:07:18 -0700
Message-Id: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix sparse endian warnings in ni_mio_common and adl_pci9118.

I didn't fix warnings of ni_pcimio driver because it seems more
complex and one solution that I see is to change struct ni_private
with adding a new field (unsigned int), but I don't know if that's
a valid solution.

Ksenija Stanojevic (2):
  Staging: comedi: ni_mio_common: Fix endian sparse warning
  Staging: comedi: adl_pci9118: Fix endian sparse warning

 drivers/staging/comedi/drivers/adl_pci9118.c   |  3 ++-
 drivers/staging/comedi/drivers/ni_mio_common.c | 14 +++++++++-----
 2 files changed, 11 insertions(+), 6 deletions(-)

-- 
1.9.1


