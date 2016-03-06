X-GM-THRID: 6256792083376373760
X-Received: by 10.66.160.9 with SMTP id xg9mr14173735pab.38.1457298474298;
        Sun, 06 Mar 2016 13:07:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls1473804qge.15.gmail; Sun, 06 Mar
 2016 13:07:53 -0800 (PST)
X-Received: by 10.13.223.211 with SMTP id i202mr6226892ywe.4.1457298473572;
        Sun, 06 Mar 2016 13:07:53 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ff2si2701695pad.2.2016.03.06.13.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so2309672pav.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nWEzvQ1HoEX2K1CAHVqyMoqAw9GjEfvus342PebBcXA=;
        b=nthufGyGZN07q3TwvU+zIrXVE3npbxL9sYf0DWjBnxgvN3SSEl0ATEjbpBRorzlGFQ
         QpD62VisRvP+mBEo2x04v+vY7OACnTxtKn0jVdEy/xo53gGI4JL01CRHMU1lujyo0r1Z
         hnMUznUZhOtVSLYZgeZ+nJTSVFDOEBx+M7N74aE3eoFrsm7/KRr5zaTXBI0ibpB9+VKb
         kgGoUbJ/ZAHgBZLxeIsl6Bl2ayj+dHGta00YrRUvzCrBJfrNQ9dnUi/B1Ni05Wf+JHtS
         hj0Rsezs4+Sloe1sQWgfYNN2fQ+GSAI6Zn5jVW15MP/mC4teqA5pvQKB6gDHFVW/fW1D
         3dkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nWEzvQ1HoEX2K1CAHVqyMoqAw9GjEfvus342PebBcXA=;
        b=MZw7zPgSJoyyEBDsL2nv3K8axubw+ZN87tsymvbU0EAgXurZCG4YxFrS0zy7y4z7uv
         qB9RENA4jMGj5MmQvJiHGhWUmUuAVxW5dhljlmD+51gxx4GeztWhVryCX0M19oTCaMXZ
         xUCG+ZGs5jwCI1n2MZ2HB5LmkpX7KwpL9kLP2lz1sKNOIj/FMRpKiJyNDb/cShzfW+iU
         WbfnWEgvSXyc4IOXDbRDty4wian+mSh7oCtps0TAOkEhw199Zo9ze9Yl38Vtu5XcVyif
         mA36GOtRDp8ukSTZ5k7JSWYubUYfvU6C8skSUXl2csfPkOtsy2Dls/+nR+CN5uLF85g8
         VlJw==
X-Gm-Message-State: AD7BkJINkVzyAZ85x0AwsBZlu6aFt15sMmd1hlSCdHwxWx7gP1ck9ynWPAWLNEj/LC3y1g==
X-Received: by 10.66.237.39 with SMTP id uz7mr27942192pac.141.1457298473385;
        Sun, 06 Mar 2016 13:07:53 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id 27sm19460055pfo.58.2016.03.06.13.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:07:52 -0800 (PST)
Date: Sun, 6 Mar 2016 18:38:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] Staging: Remove unnecessary goto.
Message-ID: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
changes in v3:
* No change.
*Compile this patchset to check nothing is broken. 

Sandhya Bankar (5):
  Staging: gdm72xx: Remove unnecessary goto.
  Staging: iio: ade7754: Remove unnecessary goto.
  Staging: iio: ade7758_core: Remove unnecessary goto.
  Staging: iio: ade7854: Remove unnecessary goto.
  Staging: media: Remove unnecessary goto.

 drivers/staging/gdm72xx/usb_boot.c            | 6 ++----
 drivers/staging/iio/meter/ade7754.c           | 5 +----
 drivers/staging/iio/meter/ade7758_core.c      | 5 +----
 drivers/staging/iio/meter/ade7854.c           | 5 +----
 drivers/staging/media/bcm2048/radio-bcm2048.c | 7 ++-----
 5 files changed, 7 insertions(+), 21 deletions(-)

-- 
1.8.3.4


