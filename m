X-GM-THRID: 6249599077237915648
X-Received: by 10.66.55.4 with SMTP id n4mr44789177pap.20.1455210586348;
        Thu, 11 Feb 2016 09:09:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.210 with SMTP id s18ls1544573igr.32.canary; Thu, 11 Feb
 2016 09:09:46 -0800 (PST)
X-Received: by 10.66.228.234 with SMTP id sl10mr43464115pac.29.1455210585976;
        Thu, 11 Feb 2016 09:09:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id u66si1124499pfa.2.2016.02.11.09.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:09:45 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so2664090pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=z20ai8xnVr8Q33xXXwsK+6lJLASrkmUo8IwTZUHzssU=;
        b=aLHb5vFytwFHSP14Z2asutELHiFtBJ37oho3iqVvkbdW0/V6U6UIsjsf3HqsngkAY1
         Qa1t4Rh8oG5bf7ALfjzTNRgJmkTh7lqswJ5GVZ88M0ANof3YzB3O7gUZk47aWSukYoP9
         k29PFTDatgs25+sjWSaK4joV+NDceZrAtX6WrcAPxFTK2/8YUcsO1g/L/chM7XiUHnPe
         DANXvRLwMWkt1v1Hwm8d654TDYSn1KcKSojqDEp2YHL+yfMhjdEJPpPM22yagDml518q
         YqAGrMMfsjunWXzdy4AnFxF0j2ylxFJoUJQKs2gSsdqJxVE/qSwCOsNwp1Vk3wz10nvv
         541w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=z20ai8xnVr8Q33xXXwsK+6lJLASrkmUo8IwTZUHzssU=;
        b=AqqjNfgd5L6jXidLtfpuwauGre81I1lYey6lwzYfnV000UpAr661nro9vonk0Tnv37
         Of7F8cPx1wgCs5B/LQaSWz9ZPoWWURKlDBaD09YeV9gA9Ssah7jwn6/VIHHJC1gp/P+O
         xiBs357odZZA42N2ticBcP1/uc3iRF4p+826pADPoIGeclz+1x+USHYqcZkftwe/eOr0
         KYHS14ZCv2/cnZuv/NzFNPt8rAP/kE3z4usHA3tOrltuUzaEfWlbYI38+Vn540A+clA9
         JDKoNn7EzCGdGVlo0ez4owZVgAquzkp9F4b3N1l/LEdadv2Ic/EAuJprVOU2BBX2Py4s
         pwjw==
X-Gm-Message-State: AG10YOQTXI2T6w14pQxBOqoa5pwGH0XjrnyyjLLQmR3KdttwH6hsQh1fZ6EAtc43tKJ6wg==
X-Received: by 10.66.141.36 with SMTP id rl4mr5169933pab.40.1455210585889;
        Thu, 11 Feb 2016 09:09:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.48])
        by smtp.gmail.com with ESMTPSA id b2sm13601019pfd.24.2016.02.11.09.09.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 09:09:45 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/5] Fix multiple coding style issues
Date: Fri, 12 Feb 2016 01:09:05 +0800
Message-Id: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address checkpatch WARNING and CHECK issues on the fb_ili9xxx series of files.

Eva Rachel Retuya (5):
  staging: fbtft: Fix block comments according to kernel coding style
  staging: fbtft: Indent to match open parenthesis
  staging: fbtft: Add blank line after function declaration
  staging: fbtft: Remove blank line after '{' brace
  staging: fbtft: Remove the use of CamelCase

 drivers/staging/fbtft/fb_ili9163.c | 103 +++++++++++++++++++------------------
 drivers/staging/fbtft/fb_ili9320.c |  13 ++---
 drivers/staging/fbtft/fb_ili9325.c |  81 +++++++++++++++--------------
 drivers/staging/fbtft/fb_ili9340.c |   8 +--
 drivers/staging/fbtft/fb_ili9341.c |  19 +++----
 drivers/staging/fbtft/fb_ili9481.c |   7 ++-
 6 files changed, 117 insertions(+), 114 deletions(-)

-- 
1.9.1


