X-GM-THRID: 6256792083376373760
X-Received: by 10.141.0.9 with SMTP id b9mr18793305qhd.16.1456865208306;
        Tue, 01 Mar 2016 12:46:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls3601609qgd.43.gmail; Tue, 01 Mar
 2016 12:46:47 -0800 (PST)
X-Received: by 10.140.29.75 with SMTP id a69mr319739qga.0.1456865207731;
        Tue, 01 Mar 2016 12:46:47 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si4684381pab.0.2016.03.01.12.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:46:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id l6so2077978pfl.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KpBgcFaaZPsdC+nT0z4MERIGT9WNexN/swHLo5f9T2o=;
        b=NezVGG2QUp6Aqj0Mqnl1rodXz4SBA8SpxO1EdBTcR3QWhPapETKW6ES5F2+H9xb1aw
         o/EPwFGXwy4OH5/Anpeis4wGhXm+REl3H8ERhhyFqjG+RjRTfbuVk+gT+uAeXtyGoujy
         NbPK/JqbeSAH7yEHWbJJJQ5EYO8s2mUaTdkE3kDM/CHmUqKnJmMpCeBTGJJ42+ynYBPT
         ETPgI+8GccEj8Ld//smiZ+Gwmcl9WZQ8iUiRkfJJxVoYHOyxipVgxllvjw28nhs/eOwE
         6nJbFmq6vTzbE9sbJ9I3Kzh3WVT6MDR67GXLdKjMOgTYNWnjOGWT44HHmOHPptj/9ACk
         tt4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KpBgcFaaZPsdC+nT0z4MERIGT9WNexN/swHLo5f9T2o=;
        b=cY4Ag/+mqoanzgrzYZcjubRIudfFnjZYF6jkTZsT+hvPfy2dSfo83pNw/W4jCLiVLh
         swxXffDB+e2zFkDHOyodm1XILIs62WdVIyBV9D3Fa8tWmIWBTe8zcJ4MdQgv7HtevcK0
         TK4JrZVTjH2VoI0Yduf9Np3qBHFBJvMMIgFFy9Pw15aVA5Jc82POI66fnKVkjiWdf9m+
         mDC1Q0NYRMdJd1/0EqvX3XBvu7K0gyCWsTEz/p/duJrCCsOfeCfXnf8vrh1HcdlfQpby
         Iuf2/W3xhuoOcpP/TCO9ZD0V1THmVPgep9eLFlBRAj79Wvip2WITNsXB32enxzdUNXXF
         Ck9A==
X-Gm-Message-State: AD7BkJLFx2LUpXyBfCiSCXS+G2ehAKdWHwq81hSVaw6okDXTLVUILtzblpuj5AYwkz06Dw==
X-Received: by 10.98.16.70 with SMTP id y67mr22575029pfi.166.1456865207378;
        Tue, 01 Mar 2016 12:46:47 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id 81sm30771743pfa.12.2016.03.01.12.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:46:46 -0800 (PST)
Date: Tue, 1 Mar 2016 18:16:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] Staging: Remove unnecessary goto.
Message-ID: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
changes in v2:
*Simplify the code by adding return statement instead of goto due to which no need of end labels and so there will be no more jumps.

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


