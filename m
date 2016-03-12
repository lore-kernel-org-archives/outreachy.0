X-GM-THRID: 6261077782348955648
X-Received: by 10.98.75.75 with SMTP id y72mr7366154pfa.10.1457770770843;
        Sat, 12 Mar 2016 00:19:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.11 with SMTP id g11ls3133809qgf.2.gmail; Sat, 12 Mar
 2016 00:19:30 -0800 (PST)
X-Received: by 10.31.153.75 with SMTP id b72mr10253331vke.0.1457770770357;
        Sat, 12 Mar 2016 00:19:30 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si1899037pac.1.2016.03.12.00.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:30 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so8820092pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IMY5ni7rY4pvDn4yDvBkskfHFb2k5yyRRQdDX9qqIrc=;
        b=nMLVoInPyeKcDartCjbSDjZ9JEAJa1bvYpCobzt/ZJnGAkEa3tjtPH2SaIfSLBAPIO
         Qv6fGk7eGPYc6NHz3+AksMUAxE3dqC6jHTDkDCSo3xTIj07sryjUqPwJq9SimQQWgNbG
         WWHRd0OySz4oIkm0swQ1atKQDoU0oaOPqNEeWYVVZ8+Q0NGmlF8RhGI2yCeF6JLDtrHk
         WQusqDp0zKOhZHY9/gxi/frdi5zAlVfFWE/Tslvwy8kyPeXuGIm8YPfWScF2u/U8hXOa
         pV4tcZ0hvYt/86tIkylZfG1dSIzuykJ0+Q+imLhbAdGRRUWPhIL1GbyxAzOsxptoklvl
         +B+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IMY5ni7rY4pvDn4yDvBkskfHFb2k5yyRRQdDX9qqIrc=;
        b=U8Y+BRsFQZxh9oOw4ifF+5NL85PR94725CsHcnT6Trrk8bzUwPxAFKFw8LiExu4ubs
         sG0CjiKhrKNi/SDj+REDJO7MgHjmyWqlU5e4K1hT6oBHN9FNtgvSCcOgdba75n+VAXP6
         SkrlWUHpzDG4u2irHJAxkxWLzcY1iFzbsEJAQHxh8SSMwrXzxga6DiY8wY98csXlEG8V
         iMERgDBJrakO1V0EPE22sM7eo6VlQXbm6wgDox1CuExkffkNCzyokUvSvM0y2I2moKiw
         lE7qIuJMczjtbSvKhD1ALIwZQeO/pCKWsb/M1Q3eiaM0KdtRfHjGml97qLcGuYcBR2qK
         XVwA==
X-Gm-Message-State: AD7BkJIHUKTeRfavvMGaDfjY+Ah0lZsu1KaCLMBwhfrYUAY9wERifRWwtbDtNDBcfEvuUw==
X-Received: by 10.98.16.150 with SMTP id 22mr14266678pfq.128.1457770770098;
        Sat, 12 Mar 2016 00:19:30 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id t76sm17965856pfi.7.2016.03.12.00.19.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:29 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 0/5] staging: iio: tsl2x7x_core: fix multiple coding style issues
Date: Sat, 12 Mar 2016 16:19:19 +0800
Message-Id: <cover.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Eliminate majority of checkpatch issues on tsl2x7x_core.c
---
This patch was already submitted before but somehow got lost in the queue. Probably because I did not send the v2 right away or some other reason.
Original submission can be found here:

https://groups.google.com/forum/#!topicsearchin/outreachy-kernel/subject$3Aiio$3A$20AND$20subject$3Atsl2x7x_core$3A$20AND$20after$3A2016$2F02$2F09/outreachy-kernel/SgWiOEpe17Q

Eva Rachel Retuya (5):
  staging: iio: tsl2x7x_core: adjust alignment to match open parenthesis
  staging: iio: tsl2x7x_core: use preferred comment style
  staging: iio: tsl2x7x_core: remove space after a cast
  staging: iio: tsl2x7x_core: add spaces around operators
  staging: iio: tsl2x7x_core: add blank line after struct declaration

 drivers/staging/iio/light/tsl2x7x_core.c | 211 ++++++++++++++++++-------------
 1 file changed, 122 insertions(+), 89 deletions(-)

-- 
1.9.1


