X-GM-THRID: 6256792083376373760
X-Received: by 10.13.219.80 with SMTP id d77mr14272784ywe.39.1456772927390;
        Mon, 29 Feb 2016 11:08:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.82.71 with SMTP id g7ls592413igy.8.canary; Mon, 29 Feb 2016
 11:08:46 -0800 (PST)
X-Received: by 10.66.147.106 with SMTP id tj10mr14193792pab.30.1456772926759;
        Mon, 29 Feb 2016 11:08:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si3844028pab.0.2016.02.29.11.08.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:08:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so9408997pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=u3v8d1268kAx/1lCsHz9HUCMFXcJlF1KD5M9fzXfBFA=;
        b=QXfSbPMOOM2yAx9RVMI7rIbYXK0P/wJ5sShNKvaV0l3Cd3gK1LCzV6vRp/bBd/Xhhz
         vJcfCSDyiDhe/rXGtFQPtvosTMEZJU6g+cvfPz4KGM8VDObD/xHNKWPDh0n6Xn3Y2RhJ
         hkRLq/mG6FAv4Avyp7jdooB9LzW7i9RJydfV3U+LJSFZrCGlXOiOrVqhc+DbUVoy7Sys
         A12L7Jx4cacS/tHjlatNgxH99Hssj2r9NLg1R/7S+MhtxSDljIKcKuEXyLmv1J1z8aMm
         gepwyGfNdYCEsBid6ZCEUv9HjKPvftUCPN+cgcvH48h3/JmR8dJ/1i418uW3Fbo0qB47
         fWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u3v8d1268kAx/1lCsHz9HUCMFXcJlF1KD5M9fzXfBFA=;
        b=Jsfv0cSgS41722yGQ7sxV2eWZ8OZO1OgfuQTqX8yHa8r58H/kdfUQ/X7HgGzAP3iqD
         ygrhynHYLGw0Ds+13uP0gtpY7Q8Xsmfj//cDyy39jb5IlelUmecv6/Vz7ZnJj+9xzuNi
         EI2jD2qqFulM7ukX5dJNarLjnWpWV51ClyaH8gAzSjOQZ37IuSW6u2ruj9oXdHzoxIwQ
         HYXbkbphVOIw1w/hWp4jFC5Bj2huOPTrH1wEeQRetT/l0jZi28pGPLwdmY3lQidXbKo5
         XJRf9BCl45F6H//jk1n6T9aIMnUHbJ6YUGeF7NdsdFxypiW0Kl8gGqAesIOwUaJneCp1
         oagg==
X-Gm-Message-State: AD7BkJIB7CCv8PZxigA0FsvcAqUH/ZFF5rSMIk8xREIkeYg3nacJFae5qJyUcywI3UQb4A==
X-Received: by 10.98.86.69 with SMTP id k66mr17271145pfb.28.1456772926570;
        Mon, 29 Feb 2016 11:08:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id fl9sm39877615pab.30.2016.02.29.11.08.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:08:45 -0800 (PST)
Date: Mon, 29 Feb 2016 16:38:53 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Staging: Remove unnecessary goto.
Message-ID: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Semantic patch:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
)

Sandhya Bankar (5):
  Staging: media: Remove Unnecessary goto.
  Staging: iio: ade7854: Remove unnecessary goto.
  Staging: iio: ade7758_core: Remove unnecessary goto.
  Staging: iio: ade7754: Remove unnecessary goto.
  Staging: gdm72xx: Remove unnecessary goto.

 drivers/staging/gdm72xx/usb_boot.c            | 3 +--
 drivers/staging/iio/meter/ade7754.c           | 2 --
 drivers/staging/iio/meter/ade7758_core.c      | 2 --
 drivers/staging/iio/meter/ade7854.c           | 2 --
 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
 5 files changed, 1 insertion(+), 10 deletions(-)

-- 
1.8.3.4


