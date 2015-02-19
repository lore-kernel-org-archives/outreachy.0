X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr277526lbw.4.1424313690885;
        Wed, 18 Feb 2015 18:41:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls93239lag.102.gmail; Wed, 18 Feb
 2015 18:41:30 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr260144lal.3.1424313690445;
        Wed, 18 Feb 2015 18:41:30 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com. [74.125.82.182])
        by gmr-mx.google.com with ESMTPS id by11si4221wib.1.2015.02.18.18.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:41:30 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) client-ip=74.125.82.182;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f182.google.com with SMTP id w62so4668030wes.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Woi9U+NjYdJBMBcNwTCzEXJZ0LGOnLDpTXUAqlzOP+k=;
        b=eq3A5j2SBrCrn75XlAxM3MIzKVNllExq/5i7ETO0VWAjUeDzwcMSz94YoN4Btv9TUA
         e3M3tgQM86wvAyxQb7JUb5HF3haB/aHOm0JTVHROnIuXlsqcwQycQOFkFH6IaI90ilIJ
         LjD2ErPTcGq5DkXSfqAPqz7G/K5m+tVpZvmfqYyP+RsY2jJrQbZxFOpXuMwvp4A0sacn
         IW8zt4C5yvxWkisUPsr489kIaDyTiGX2M3MkhpQAQaWo4go1CvDKhkHEGTTLovtDPcpJ
         /5I4xsWLLicMU1EE3n/yrbN4rzGzXa1yfGaawzcK7p6RcrFLuiuLFz0NNZjn5UrHZBqO
         oIJQ==
X-Received: by 10.194.22.6 with SMTP id z6mr4370657wje.146.1424313690325;
        Wed, 18 Feb 2015 18:41:30 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id dm6sm32122344wib.22.2015.02.18.18.41.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:41:29 -0800 (PST)
Date: Thu, 19 Feb 2015 04:41:26 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/8] staging: fbtft: fix coding style issues
Message-ID: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset is concerned with fixing coding style issues in the
staging driver fbtft. In general, the driver's code needs lots of
work to make it compliant with the Linux kernel coding style.

Aya Mahfouz (8):
  staging: fbtft: fix space prohibited before that ','
  staging: fbtft: fix code indent should use tabs where possible
  staging: fbtft: fix braces {} are not necessary for single statement
    blocks
  staging: fbtft: fix space prohibited before that ','
  staging: fbtft: fix braces {} are not necessary for single statement
    blocks
  staging: fbtft: fix space required after that ','
  staging: fbtft: fix space prohibited before that ','
  staging: fbtft: fix spacing errors

 drivers/staging/fbtft/fb_ili9340.c   |  10 +--
 drivers/staging/fbtft/fb_ili9486.c   |   6 +-
 drivers/staging/fbtft/fb_pcd8544.c   |   3 +-
 drivers/staging/fbtft/fb_ra8875.c    | 150 +++++++++++++++++------------------
 drivers/staging/fbtft/fb_ssd1331.c   |   6 +-
 drivers/staging/fbtft/fb_st7735r.c   |   8 +-
 drivers/staging/fbtft/fbtft-core.c   |   2 +-
 drivers/staging/fbtft/fbtft_device.c |  88 ++++++++++++--------
 8 files changed, 148 insertions(+), 125 deletions(-)

-- 
1.9.3


