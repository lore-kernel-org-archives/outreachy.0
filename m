X-GM-THRID: 9130553114624
X-Received: by 10.180.80.35 with SMTP id o3mr829207wix.0.1426791850618;
        Thu, 19 Mar 2015 12:04:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.132 with SMTP id ey4ls193573wib.26.gmail; Thu, 19 Mar
 2015 12:04:10 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr9256449wjc.5.1426791850012;
        Thu, 19 Mar 2015 12:04:10 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id i8si204047wif.1.2015.03.19.12.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id k59so65072016wet.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AOgs1RKAIpgGhxi8iY9ZvLvVBHlGwp6Ey8MTU5dvZCg=;
        b=TM8hsJJiRzYIsEH3wYozamXxqBrNlPbl5AcUXGpJ2njiGkx/3bR3lHAcLmkVxBWE6b
         65sy6SOMrJUdyAZiYNtWSX3lzUb4PDYbd1iCCvAhLKRwYHBdWQ6Hq4vJpH4ZlctW40ed
         PxxqKX2eyPfHaujEbUb0LSRs9615t/n+NXVbhF7JgxqoOQgY1R+G66UepGJBlXRyzcyG
         Fjeva0QjRhk7Tmg/h9vSpZmex7dzRmvzy+okGnJ2p4IayAfwu5+62/ruB/MZeeVoRn+D
         KjyHI7rJ1YYjVxJgmp6Ky0/Rcc0woC8myX/xOq3y0Yd7QnFn0EBYg4N3J6TlUwkaSD8P
         7rsA==
X-Received: by 10.180.105.136 with SMTP id gm8mr19241891wib.13.1426791849956;
        Thu, 19 Mar 2015 12:04:09 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ga8sm3643632wib.11.2015.03.19.12.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:04:09 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:03:25 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Fix iio/magnetometer style warnings
Message-ID: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes some iio/magnetometer style warnings in order to
keep the code clean.

Cristina Opriceana (5):
  Staging: iio: Simplify NULL pointer condition
  Staging: iio: Align function parameters to match first row
  Staging: iio: Remove multiple blank lines
  Staging: iio: Remove line over 80 characters
  Staging: iio: Add kernel-doc for struct hmc5843

 drivers/staging/iio/magnetometer/hmc5843.h      | 13 ++++--
 drivers/staging/iio/magnetometer/hmc5843_core.c | 59 ++++++++++++++-----------
 drivers/staging/iio/magnetometer/hmc5843_i2c.c  |  8 ++--
 3 files changed, 46 insertions(+), 34 deletions(-)

-- 
1.9.1


