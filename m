X-GM-THRID: 6673450085590761472
X-Received: by 2002:ab0:3f3:: with SMTP id 106mr2849516uau.21.1553783678238;
        Thu, 28 Mar 2019 07:34:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8d06:: with SMTP id p6ls5978572vsd.3.gmail; Thu, 28 Mar
 2019 07:34:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG3Rla8p/voh56//Wjh6qmor7f9qYPeJp0L16QeIxjnSxZnzGJwYSOe3YZtmT3RsupQrtX
X-Received: by 2002:a67:848f:: with SMTP id g137mr2844422vsd.43.1553783677557;
        Thu, 28 Mar 2019 07:34:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553783677; cv=none;
        d=google.com; s=arc-20160816;
        b=XFwjaWpedfhP9HyOSvBfOOZ88pW9Iy318gGQOU1AyBsLVmNIxrdHknBg4p5K3qP/q/
         oK7cfwLi8UZCW6KwYtUW0iEO7KAaJ9A49byE3a90zz89ilVc/EE7u0XffGYjxwTa2fxa
         uCtdbB4cnBoaOmyYYtG+Uc+QUUI80itbirRUCn3OOCOBxY6I6wiKHswGuAfztNw3CmU1
         gxbPUSby94T0Qwk4IpzEwVBNWwKrWVUGa0I0J5q6AUfMuQ+GD2pX9OwqjLbR3XWtM1di
         9He74vk4HMRqW2Kcg7td0EFS7N+bnqzqISEC87l0lqrkP7sC+16lKvk0U0DxGUhAJhb8
         UvwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/waVk/srC5b1kkx6W+mUpyxHlWggkkZY8frN0SaMIc4=;
        b=xGR8xcQoy1mYwW56iqep0E9XiTqFwEI5Ihcqt1m/z7nNpfwvLZ/muL8O/jfIWoZT0p
         8iyJxudjo3QuzdY0jKztPHvjALIeGCQNHKWV36hSONUos0i4dJX8Y/BrzGr1vh2GtydQ
         1VxiKFQcLQJ3eSxjKrmEg0k9cH2wa1fBnI90LxLcGUYlSwaEztUW9ib5dYRo3S40sNx1
         cCIE/c7iHQBtf1GLIDLCNobmXVorb7F2vvWD/Mir/wgpkLVezKcFwpITm88F/EZFd+rz
         MpSvfMfqdftSJsMWLRgp4JQabY3EV5xBiX/lLYvmfVfa48bxJpwRZMCz8DZ4WX9vYFe/
         owWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A1KMr9LG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id g14si776611uah.1.2019.03.28.07.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:34:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A1KMr9LG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id i19so2800897pfd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 07:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/waVk/srC5b1kkx6W+mUpyxHlWggkkZY8frN0SaMIc4=;
        b=A1KMr9LGlsyPOyGifi9P9kDVKsxxSG+A6ulWVB03nPVDkUSvGSYa8lxw0zbVT7URr5
         oemCe+/lU+OIjm48BDJEJMQRsgscGe3ejTuJDlry/OPM3dc0Rm5MT//9brf939rTFUsy
         fKHTiiALTRv1+0VU7pYtgeMVVO8KA7JjbKndVYA/JuL+VYqKnZx99XVsNsfI4n719aAG
         EqjBwKIon+uZUGUFRv3avNn4JgcMZLzNNJ4uCTWwWdrU3LiMP5YC+BpudsHQIDiczO+G
         muViyroQR0L9esoXdWNaZaFvA/IwPECHWsbyqAy6fnjIEhZW9P8AE+tSybGAcbP8MoEV
         D68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/waVk/srC5b1kkx6W+mUpyxHlWggkkZY8frN0SaMIc4=;
        b=o7Nm2ClDdeQ6YNW0ssiZ4iQgb8UjK/9AKk6OFJgDmEgTeuUg0NLDhjc07L5J0NYe3g
         L+9W+94oRKU7oxYGSAOzajsLvtja4eChM6rIE0zdV8HSRpQDsEVYHVyWB3bqO8QVU1ya
         Q+SBbDi3UXKn7m5wEnp5UqTYUDdRmQizYx7vKGVt5MCP532PG5JyQL7AGcjvT39JRL5O
         ZD+BXShqVYgpe0CHkGBRlAGPPXAUJq5ppJO4HHV6iv+SSWZ6zEah9QFEjHH8qWwnXb72
         9L6Zi+II89XAfHIZwpsP7fOq32PAfEHBvK5qc3nIa5cncR0fKfiQh3d4VQfz6cxjxjUd
         FiPQ==
X-Gm-Message-State: APjAAAUXsfjy/V8ubPWXT3gZ/qN2b75ZJvJp3PrjqJ7cFwttr1NOKuEE
	YS/yRyEf1Q20i2s+ut+DkR0=
X-Received: by 2002:a63:1a42:: with SMTP id a2mr7944906pgm.358.1553783677209;
        Thu, 28 Mar 2019 07:34:37 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id i24sm19984262pfo.85.2019.03.28.07.34.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:34:36 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gasket: apex: Prefer using the BIT macro
Date: Thu, 28 Mar 2019 20:04:24 +0530
Message-Id: <20190328143424.5865-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 0578bf1ba1e9..a79613db71ef 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -294,7 +294,7 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
 
 	/*    - Wait for RAM shutdown. */
 	if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
-					APEX_BAR2_REG_SCU_3, 1 << 6, 1 << 6,
+					APEX_BAR2_REG_SCU_3, BIT(6), BIT(6),
 					APEX_RESET_DELAY, APEX_RESET_RETRY)) {
 		dev_err(gasket_dev->dev,
 			"RAM did not shut down within timeout (%d ms)\n",
@@ -340,7 +340,7 @@ static int apex_quit_reset(struct gasket_dev *gasket_dev)
 
 	/*    - Wait for RAM enable. */
 	if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
-					APEX_BAR2_REG_SCU_3, 1 << 6, 0,
+					APEX_BAR2_REG_SCU_3, BIT(6), 0,
 					APEX_RESET_DELAY, APEX_RESET_RETRY)) {
 		dev_err(gasket_dev->dev,
 			"RAM did not enable within timeout (%d ms)\n",
-- 
2.17.1


