X-GM-THRID: 9152848986112
X-Received: by 10.112.41.131 with SMTP id f3mr15108360lbl.20.1427049713966;
        Sun, 22 Mar 2015 11:41:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls559742lak.88.gmail; Sun, 22 Mar
 2015 11:41:53 -0700 (PDT)
X-Received: by 10.152.20.41 with SMTP id k9mr2816099lae.10.1427049713270;
        Sun, 22 Mar 2015 11:41:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id el6si337872wib.0.2015.03.22.11.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id g7so29761649wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7ND1wrZT2trsYzjS9EErK+H6pUEYaTdxXJGMSJLM2rY=;
        b=Y8t5aVdvfEPFjvbap5mPhPPndlUYEnZtYr083Z7anLeENct1t6GLtSCWPEZc0jb0kG
         hqfU6SxrOqTcUk4R8ds+McuvkXCCrbQgxFIHEV/auQCf7gLJ0IZWC/U6oFj8mvqY39XW
         /SJwGI3IeveoB+TgaVEUbdgh60tmNJeXzfHHDLFf4VffS7p22wpb1Ii9WtDgTMfYEpTC
         sIcjfSzQ2e5HSKiQfQdR2x1nARGDBRNaQE7fm3jOhwwfKZMG5ICdHlR+lEHiKyGbv+pT
         snTjFR3K+KUNb6JAUnRlDST3fWyJMFNvoKqq7T4yvPL/o7kevmjynVkp+qn4D5nm9MEf
         4A4Q==
X-Received: by 10.194.57.206 with SMTP id k14mr181650006wjq.1.1427049713185;
        Sun, 22 Mar 2015 11:41:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id e2sm15912784wjy.46.2015.03.22.11.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:41:52 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:41:04 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Add small improvements to iio/magnetometer hmc5843
 driver
Message-ID: <cover.1427048820.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset reviews the iio/magnetometer hmc5843 driver and fixes
incorrect file header and reconfigures some small error checks.

Changes in v3:
 - avoid duplicated code in PATCH 1/2 for the 2 goto labels

Cristina Opriceana (2):
  Staging: iio: Place driver in sleep mode on error
  Staging: iio: Fix file header to match standards

 drivers/staging/iio/magnetometer/hmc5843_core.c | 48 +++++++++++++------------
 1 file changed, 25 insertions(+), 23 deletions(-)

-- 
1.9.1


