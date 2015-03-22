X-GM-THRID: 9152848986112
X-Received: by 10.112.148.10 with SMTP id to10mr9469166lbb.18.1426983658406;
        Sat, 21 Mar 2015 17:20:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls570049wid.46.gmail; Sat, 21 Mar
 2015 17:20:57 -0700 (PDT)
X-Received: by 10.180.211.199 with SMTP id ne7mr819177wic.5.1426983657099;
        Sat, 21 Mar 2015 17:20:57 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id el6si210746wib.0.2015.03.21.17.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:20:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgs2 with SMTP id 2so11064118wgs.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZF8LJiM+SsP57DrMkXazHTYxZOmugIFCH7b+lx0WcAk=;
        b=IuzvQ5bgVNz3qRDyXZVd17XlRhVOYnob6nG9yzAvamYQivq426uGzeOgQR6u3Mo5nD
         VB50sVkC2kIlDDpZAEP39s8BMP3EloH5YRs0P4Mi1CYFsyexepb1XpFwBJinub1yzumO
         ox4PY3MnCwKb6Tuw9lzT4h8MHR9brCT+iof4CN+RH682riZp1hAFYvPcww3sKkW/jGKH
         gwB90fpSmykZzJD5dI9ejVkYv+chf+c+Mmw8X/OE17vPlS6UTLhG1aUEKyTfSCtm5l7+
         B2JL/d8NASBiA2ywykiv3BbssbVB6ToGb1Y6vtFKU3d1B5jwmYUAvINELeDNCqzAIFG9
         5lXg==
X-Received: by 10.180.75.140 with SMTP id c12mr7852690wiw.14.1426983657032;
        Sat, 21 Mar 2015 17:20:57 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id lg18sm4449279wic.23.2015.03.21.17.20.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:20:56 -0700 (PDT)
Date: Sun, 22 Mar 2015 02:20:09 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Add small improvements to iio/magnetometer hmc5843
 driver
Message-ID: <cover.1426981797.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset reviews the iio/magnetometer hmc5843 driver and fixes
incorrect file header and reconfigures some small error checks.

Changes in v2:
   - drop the change of number of channels hardcoded value, since this
   value cannot be accesed through an id for each of the
   hmc5843_channels and hmc5883_channels arrays.
   - keep 2 goto labels for sleep mode on error in PATCH v2 1/2
   - update commit message for PATCH v2 1/2 to describe better why the
   change is needed


Cristina Opriceana (2):
  Staging: iio: Place driver in sleep mode on error
  Staging: iio: Fix file header to match standards

 drivers/staging/iio/magnetometer/hmc5843_core.c | 50 +++++++++++++------------
 1 file changed, 27 insertions(+), 23 deletions(-)

-- 
1.9.1


