X-GM-THRID: 6394528999032225792
X-Received: by 10.46.84.69 with SMTP id y5mr4022770ljd.21.1489230417877;
        Sat, 11 Mar 2017 03:06:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.68 with SMTP id s65ls174265lfs.44.gmail; Sat, 11 Mar
 2017 03:06:57 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr3964691lja.13.1489230417254;
        Sat, 11 Mar 2017 03:06:57 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l138si204409wmg.0.2017.03.11.03.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:06:57 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id g10so14365922wrg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 03:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=o0+4RtOHBh04hNBf99w9EX7Wmpk5wesOcO691sSjU3U=;
        b=KsnFrKxKQ8QjRGI9EAK/B/Gr6ZnIOoFj/ixHe4tYWjbbn6Vclfu/6ERR5O16vG5r6+
         h3O/KyizslTYIAHSdaYjy0RmEyWboTB4vLbhlH9YS4mV8NVL/+cQCrRHI6ecr64K58VY
         xXj4MwtztF7ThFo/BJczlo6mKqrji9OkJxXHPVBil9xFef/KIrmxatf928W4qrlOjiFB
         6aKqbE8fwvoZBt8sc/KEqK7hSnH2hUVoOpajzmK6JSJf4GgXXYeND7aubuEp9HySimUK
         gYD4ugCrvBLfa+ZGYCCoI/x4QplsnW6lMcpR92ZllP0INmoF5IMw3SzWc+tA5Vdfh1sX
         +6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o0+4RtOHBh04hNBf99w9EX7Wmpk5wesOcO691sSjU3U=;
        b=E9Ee3wCRD85/6DzPQhvXRumZ8wjQrCXUJ3y4K5F6uSlfYg/SyFfo+h6dHHr7ExZiI8
         872eezzB86/X2CN46Sp1yMhCv6ifFPm+I8o9FL7cDVuS/W+nxBj6wHwN9S8zceix26SZ
         Wga85IN9fMDKSL04J8wqpgxWEejGzsupW/kH8vCYsJGg4KDyoAENuwMzdoeEWQm+4eNO
         p5ygF6gbqFVWnylnIiZm3yc3fIrj8bRXqBT9GhvXcEeYd/8k9sIUkLqBCmh7mk9KXTM8
         Axalxr18vre3JIe5HD6tdm+qyME8ClWSSdfu+729bLIg4B/4qan2r6RvUckBSrao0zGw
         7QPw==
X-Gm-Message-State: AMke39lH9ZfvLxx75ZY5LZwZiDG5kWcxClrPVuuNR92YEtDOEoTQU0Ww218u/eWCvQUYNA==
X-Received: by 10.223.135.163 with SMTP id b32mr20270112wrb.170.1489230417113;
        Sat, 11 Mar 2017 03:06:57 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id p185sm3242121wme.20.2017.03.11.03.06.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 03:06:55 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/3] Improve code readability
Date: Sat, 11 Mar 2017 13:06:49 +0200
Message-Id: <20170311110652.8384-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi_read_int function in wilc_spi.c
file from wilc1000 driver.


Tamara Diaconita (3):
  staging: wilc1000: Remove unnecessary brackets
  staging: wilc1000: Declare variables at top of function
  staging: wilc1000: Correct name of variables

 drivers/staging/wilc1000/wilc_spi.c | 49 ++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 28 deletions(-)

-- 
2.9.3


