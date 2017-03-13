X-GM-THRID: 6397085894366461952
X-Received: by 10.237.48.72 with SMTP id 66mr5254999qte.77.1489437626858;
        Mon, 13 Mar 2017 13:40:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls14715862otc.32.gmail; Mon, 13 Mar
 2017 13:40:26 -0700 (PDT)
X-Received: by 10.13.238.134 with SMTP id x128mr17746480ywe.59.1489437626422;
        Mon, 13 Mar 2017 13:40:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3317161pfd.3.2017.03.13.13.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so19533047pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hEbDhBaJnb7to/PQN1BPKV/uazxe3KPLF0TD/DNN91k=;
        b=CBOEp86loQxBL9/9Aq3o6uFfPWblEtQvyDx00mT35rSujbpV/+1hS5SQYkSkvR1Wkp
         SNeAhlpgzNQQBRPVsxg7CJ4ZB9o0W4VRQsA/GRnHPkNlkTZG7GdBZAciNnf8UOZRBQKt
         bpuvyqVF7x7AOpKK6EM/YFQBTNAdjvLiykG3/B3SlNHuxRajSqi9IlX1Q/6mUbpY6n4y
         l+gIBLp5C/2CQeQwzPq6I3Gww+Rm9aXzFWxyltC/SayJezpLFI9gt6hEnHkk8Bi7RH/W
         Grb0WPLlzzGRUYeyjQ0i6NxnLOstQa0/LCkSzHn2sPMFGBjxrqLCFlOc5AefMr9mWG8C
         mYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hEbDhBaJnb7to/PQN1BPKV/uazxe3KPLF0TD/DNN91k=;
        b=be8Lin/iKCHHjuQTnMYxMPEey3vIiUWfE6d0WCITfNaSmTS9Fso0v8fmJUt6etiTK5
         5JP1US77DJxE51/zFIPXAiovtKHsFfrT8hY6p8M+8Z56dVTFofPEPSOsryr0W4qQhgoi
         NeMjFntCl4R9MeFd3FfE+4lHIzCtfn6Hr+HyJjQwqTlpvis1f9kf6TbluKmK7ZPFxM9+
         oPN0sOgUX/ZqVfu0rpW/our7mO6g0P6QpjvMq3osxtHM4x8XUAdqrxGVWS2Vj4WRJZYT
         G43xhKO+pyy3LUz6/3D83pxuiQtNtjtczqQVUCWjlpMDAizAZkIgpGi51alUri5RoruE
         8TUA==
X-Gm-Message-State: AMke39m+8Zk21HYXBSHHqt4datGSr7brXlyon2BSccp+DyU936P4CfKwv9fOqJBuiGFEyA==
X-Received: by 10.98.217.67 with SMTP id s64mr39280496pfg.119.1489437626184;
        Mon, 13 Mar 2017 13:40:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s26sm34622889pge.33.2017.03.13.13.40.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:40:24 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 0/2] staging: speakup: checkpatch cleanups
Date: Tue, 14 Mar 2017 02:10:16 +0530
Message-Id: <20170313204018.24601-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (2):
  staging: speakup: Added blank line after function/struct/union/enum
    declarations
  staging: speakup: fix "Alignment match open parenthesis"

 drivers/staging/speakup/kobjects.c     | 2 +-
 drivers/staging/speakup/main.c         | 1 +
 drivers/staging/speakup/serialio.c     | 1 +
 drivers/staging/speakup/speakup_dtlk.c | 1 +
 4 files changed, 4 insertions(+), 1 deletion(-)

-- 
2.11.0


