X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.95.67 with SMTP id di3mr12390232wjb.0.1426792709983;
        Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls207659wib.31.gmail; Thu, 19 Mar
 2015 12:18:29 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr12390228wjb.0.1426792709737;
        Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id el6si482020wib.0.2015.03.19.12.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id v3so71062772wgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BkwClzsHi8JnT+qsoATuvmTHhGBlLV4nrh2sx67mUUE=;
        b=A9iwI7RFQxHn030TmMFjmA4LveQPK9TwfFtUShSMBmfoWGi6Pg+LmRDQR5dVJy6q33
         NejJEkWq6v7FsViYPQF7RX4kejKwzWf98a1u0g+Q/2M96lPruYqlCyCb2hz0rnVYiBTw
         5clAyGlPX1f5HiZBYnXESOh1mK5/GEpSvYOse4Xe1/IZ+HlNthUZYxWBfyED5THfoCql
         NoonXO4nGTP5wILOIo7QsMAWEJYUDOzrXK7yk+E6v9aVL5Ijda4/XXz4LfKhs5pRAyv0
         9S7uiGjM5BT4c6t1WxLd4bxTTaNZlAIwCzUGyF0b38tgIXAGn/9sfnzz5mvaPkLPsEXV
         iH/w==
X-Received: by 10.180.126.38 with SMTP id mv6mr18751495wib.22.1426792709662;
        Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hw7sm3178141wjb.24.2015.03.19.12.18.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:18:29 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:17:44 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Add small improvements to iio/magnetometer hmc5843 driver
Message-ID: <cover.1426790651.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset reviews the iio/magnetometer hmc5843 driver and fixes incorrect
file header, hardcoded values and reconfigures some small error checks.

Cristina Opriceana (3):
  Staging: iio: Place driver in sleep mode on error
  Staging: iio: Replace hardcoded value with number of channels
  Staging: iio: Fix file header to match standards

 drivers/staging/iio/magnetometer/hmc5843_core.c | 59 +++++++++++++------------
 1 file changed, 30 insertions(+), 29 deletions(-)

-- 
1.9.1


