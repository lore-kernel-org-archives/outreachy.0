X-GM-THRID: 6396646954273603584
X-Received: by 10.129.164.215 with SMTP id b206mr13003927ywh.117.1489335427796;
        Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls12105515otx.21.gmail; Sun, 12 Mar
 2017 09:17:07 -0700 (PDT)
X-Received: by 10.157.8.97 with SMTP id 88mr12235780oty.143.1489335427364;
        Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si2691918pfb.7.2017.03.12.09.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so15614604pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=gjGmJZnq5ipOZ7R0T+/dp5PNZQAvxoeyKxHFe+HoLtg=;
        b=jyTlIwtbTclN1qJi3LfmBk5VGFRPbjaoV8vRv2KwiFZBmgtCnsD9uXbw3s5LR5ttQA
         nvj2ysBQd4/vwglhkkhzpNVG4V6oK1rNlVcNoKgu3yDjIWeDcWmB3/ZViSo/H2SK109j
         a+56vuBUbQAebSTM2VE4wKdr/YngukBxnnpHoKRX1KdTjhh0w+gsdDq4wpKCvh+t5BLP
         WBcsC19jvRdR/O4HGVxD+Ww/9Nik7HAid1UmUjk3rsOHfCq5VD51Ze5TnYoGqU5puCHh
         jgXD73iOkc9nqk6Yl1Jn1Wj6XTRO91698QnNnXPNLr8EgpRdC2bBFTKJeH613a5y6vkk
         h3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=gjGmJZnq5ipOZ7R0T+/dp5PNZQAvxoeyKxHFe+HoLtg=;
        b=akwAjKCpdaX2df3AM/CtWDO+QuNR4uVwILf8PHPFGS0NH4bK/6T9W2JRJO1ZyLJYSS
         UypQ6GLIbWLfxEZO1yoYwJCCSIxWNZg0g1jpoDU61Iz4n5Eu0xnIpQUBznx5qnN+kgzH
         g1B470HRMf2xoX0sZITRZkCRC3ehhV4qjynEh9k/ZDP9QSoOQG1JXz7MC8pe+qSoFbBi
         x9nxS53kFVBPRQeLyU/pOap7g2+4RYgozL86nxynoen8wZUWsZdg1qJO5CtHoZyDvyuC
         YEDTv7ihCy+WstH3fL4onGDvCVmkP6cLBXGtouEFCdp8P0d95N0WawWvQlEEX0ha7j7k
         FtRw==
X-Gm-Message-State: AMke39kJ7+y4HmKX1qVFRiJWf4UasP72JY81KFzMaxHkI8r3JSQLLBzav14nPnrT8QerUw==
X-Received: by 10.84.215.23 with SMTP id k23mr40517674pli.58.1489335427020;
        Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id d68sm29016538pfj.92.2017.03.12.09.17.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:17:06 -0700 (PDT)
Message-ID: <58c57482.c74b620a.d0a23.894c@mx.google.com>
X-Google-Original-Message-ID: <20170312161700.GA17488@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 21:47:01 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: atomisp: Compress return logic into one
 line and remove gc2235_init() function.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset removes gc2235_init() function and compress return logic
into one line in media driver.

Varsha Rao (2):
  staging: media: atomisp: Compress return logic into one line.
  staging: media: atomisp: Remove gc2235_init() function.

 drivers/staging/media/atomisp/i2c/gc2235.c | 13 ++-----------
 drivers/staging/media/atomisp/i2c/ov8858.c |  4 +---
 2 files changed, 3 insertions(+), 14 deletions(-)

-- 
2.9.3


