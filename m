X-GM-THRID: 6394051769917243392
X-Received: by 10.25.212.76 with SMTP id l73mr1380276lfg.13.1488731189563;
        Sun, 05 Mar 2017 08:26:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.10 with SMTP id u10ls1273922ljd.16.gmail; Sun, 05 Mar
 2017 08:26:28 -0800 (PST)
X-Received: by 10.46.32.216 with SMTP id g85mr1054968lji.8.1488731188717;
        Sun, 05 Mar 2017 08:26:28 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p144si188660wme.2.2017.03.05.08.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 08:26:28 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id u132so2165488wmg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 08:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/zpAtFneHxCUIejkcHmqPepYbO+z7xrgNm8mo0aS4UA=;
        b=CV5tBnusvk1dQRARCkQ0WW/tRggUDElWjRlrbEl4IfyKQc+IcTdVAeiTl2w0ms9a7Q
         WRrE5aFhzx6tKbrcJKtJL/2LD97vVjHLVyr03V56gl/PMVR5rmtFI8s0nkiWvTmpnipl
         t0+ezsdO8/IfEdsYnT94xTtkOYHVba79ATLv/ZsMX2RcwCgyx+EzZLhFRiNEHnALsvl9
         E0Kkw6KOl9Yc0mYQ6JBGCA9yjYsna2BLhYMxaK01fb+iVwcDplk3k68aMcp6xrSTp5BO
         YF+63hTgf/MPI9c/XPtdU3iNUlwRLIqnqi67WpshqXrkBaDpfyxCmlspDK1/UQjb0nX4
         TbBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/zpAtFneHxCUIejkcHmqPepYbO+z7xrgNm8mo0aS4UA=;
        b=C8w1YSRLU2VKkLRkEYNTGoSBqrnRqWI5BHWEuVKaCqKS21XNn7TEqwY3GBzuI+SDxQ
         anxfmFjbBOAT/r0FP0DR4yGtK5A4uEk+G3nvB9hxqlh0pw+rVB9ph422pqtZiX+5a1D0
         RC6tLR6HbmqUbV9UnqjxGXlcIbVvOcplr22wQPbdUOjZt5OxY8BLL0cni9zPqLROVhQL
         /ZwKmGvsOLEoFBFq+O7BhDYUJ9GTt1XVpDCp1usKoJW59yEKo9LRUSXBti8/59aojRf9
         61kuz9bWiRadISy65bKRyH8w9hyXTGHGxpC4GYng6Pe4T1iJkloXEYUH7GC/o+uGSh17
         UQ1g==
X-Gm-Message-State: AMke39l8hrDYIWkMjthx01gMU/617KkpKzjUpNc/QPZHEHLdNojaXYFbd0umMjJiEDfJ7w==
X-Received: by 10.28.31.139 with SMTP id f133mr10693930wmf.25.1488731188575;
        Sun, 05 Mar 2017 08:26:28 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id i82sm15126619wmf.1.2017.03.05.08.26.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 08:26:28 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/2] staging: iio: accel: Group similar macros into enums
Date: Sun,  5 Mar 2017 18:26:03 +0200
Message-Id: <cover.1488730643.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Group related macros into enums, for clarity.

Narcisa Ana Maria Vasile (2):
  staging: iio: adis16209: Group similar macros into enums
  staging: iio: adis16240: Group similar macros into enums

 drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
 drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
 2 files changed, 18 insertions(+), 14 deletions(-)

-- 
1.9.1


