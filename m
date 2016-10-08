X-GM-THRID: 6338982763407867904
X-Received: by 10.157.23.193 with SMTP id j59mr5094703otj.122.1475909436394;
        Fri, 07 Oct 2016 23:50:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls7048243otb.23.gmail; Fri, 07 Oct
 2016 23:50:36 -0700 (PDT)
X-Received: by 10.237.45.70 with SMTP id h64mr1439833qtd.60.1475909436114;
        Fri, 07 Oct 2016 23:50:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si6485312par.0.2016.10.07.23.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so3760974paz.1
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 23:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WnWSCMR/+rfnLv7nldnH2qbe+S0+tWIOCOToWHruN7Y=;
        b=kg1HNxobLHWczmZ0AuzPjAUhUsqBKLyfHfUeyNPaQbtI967kI5/ltxgz3J50FIzd0m
         mFVW8hIMMTKAcULvnCFPAiT73RjYyfSe/lRvAsLMXEmz2b/Tt+ljPnLdNPO7+itqqyfw
         W302Zq7bmijoy5S7uV0rzdJnuDj37jOqD1Fbj+iK4p5bkp6tyoyseObKc1KVJC5pX9Fp
         0n3CK1AwC+tcYjQgUprNz8R1AB1w+8+Niqh2QVSqPhfIFXcD3inu5h1LwqU2OcpLeO1U
         o9h/NHVL2eNQgGC21rvlLs6m2c9qkyfH+4+wQraChcctynZcZAsotitVjBZYo72JywDV
         jbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WnWSCMR/+rfnLv7nldnH2qbe+S0+tWIOCOToWHruN7Y=;
        b=EhzUP2c+sTUyicX//j73bwgPq6Y5yCJPkQPiVus0MwlhD8wBc7zX/4zJBmTPMpWMEy
         z/B9qKNVNi55W1h2ncSCOH7ZIaiBqjcQ8CkqUPzC0uHWNGvMOWJTzsjPqR9SQHR5+Uwb
         RGj9dikZ7nkreOBtBjzGJaNnjqkPNfeZD711dyCrkx6bidZotKQ/6+JmKteItVPiH8Hu
         aeEFIyf7wfFk/H1jUzhpRR/7ZXTlZ/5zqYq3ou9Hsap0fEpNh6QD3ml3gSOqYQ0I1Q9d
         gRjC/TRazUC5iDOYgRC/b/dr2yTZ9FuZThzsQnS66kSLy5tt8g9ArfsM7uafZ+cotOup
         WeHg==
X-Gm-Message-State: AA6/9RlmvSQyPnOEu4HPyfDd/aJzkpMLWxpkVCjSaCifeKEx1E6bRHXb7T+sDn11YyiBVQ==
X-Received: by 10.66.78.9 with SMTP id x9mr36109760paw.201.1475909435916;
        Fri, 07 Oct 2016 23:50:35 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id wv1sm8804232pab.15.2016.10.07.23.50.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 23:50:35 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v3 0/2] staging: iio: ad7606: oversampling_ratio clean-up
Date: Sat,  8 Oct 2016 14:50:03 +0800
Message-Id: <cover.1475907512.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Implement the oversampling_ratio attribute using standard global define
as well as fix bug about incorrect setting of oversampling pins

Changes in v3:
* Add follow-up patch fixing bug about incorrect setting of oversampling
  pins
* Add Fixes tag

Changes in v2:
* Add Lars' Acked-by tag
* Update dev_err() to use proper arguments

Eva Rachel Retuya (2):
  staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO
  staging: iio: ad7606: fix improper setting of oversampling pins

 drivers/staging/iio/adc/ad7606_core.c | 67 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

-- 
2.7.4


