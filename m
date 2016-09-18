X-GM-THRID: 6331778131378044928
X-Received: by 10.200.46.56 with SMTP id r53mr3044488qta.72.1474231977663;
        Sun, 18 Sep 2016 13:52:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.13 with SMTP id n13ls2221268ith.20.canary; Sun, 18 Sep
 2016 13:52:56 -0700 (PDT)
X-Received: by 10.67.15.70 with SMTP id fm6mr3688256pad.130.1474231976094;
        Sun, 18 Sep 2016 13:52:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id h124si5793725pfe.0.2016.09.18.13.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 13:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id oz2so37100530pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 13:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jIPtVbjHN30jK/lmTjdqFPJsckYJcG7op6VLeOW2aIU=;
        b=Xd2AXS/5SMuu8TjTOQuiD0L+awmXs87AdPaxga9vR8GDnbNcUO80yWkv6Azq5R1r9B
         7R37b8Icw3NDAf4jsk9zosJprz8YZzEJFunEh5ghCiF6jLYjf24cL4H+24juCgIZD+38
         Q6Mgb/wU5vT5eZXQPHdowtyMFAPGYDCpXwAbekSTbiypsjzDDLoLoEBP/DOEq2CY1i7M
         SjG/KJzVNQmZ6hdBbIzs66MS6E6UAP0TGgoE7dsB0Ug4nd6yym7w6sajatikC8GWah1M
         qGsmByt1I0X4irrCQFCNhZJwjmoVmCmxvhLrbFo5US2iPZ87eJmVaicDcihwf3MZZrJ+
         +tRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jIPtVbjHN30jK/lmTjdqFPJsckYJcG7op6VLeOW2aIU=;
        b=kEpGEVR9rFLAmk7pZYXKAmJY75FAR07ioty7MZyO2UMYxhfP/a3aejxsJTqv/NSmC0
         e7fC9lQXgWTaaLfvW4T2BrHMxxZhJ7/numV8Tw4FMTlM318jo0xFiQ0daP4cTUgk3eWH
         XKGMSWXSk4LwfIViqoCUDvD+8JQbfnKVwEWM74i9Q+KazdgSYeMQEjFzI5YC717W37vr
         jK/ZxtxquoNRWgiAIFavFRBAnYpfJ8TFlrPGvmnkXx4/GJQJZAdiFCFAXMhYd+MwCJLP
         PvkGypdEq9KFZ4Qw4UYkgybyxcw9NSat86qdjcZ7Yf5qfSmBTtxR9s8tYjNmQlsQXgNq
         irIQ==
X-Gm-Message-State: AE9vXwPchKgMmSJQleEl9LLVsvJxUpX3uzwHOl07OjYga+TByXoV9xxjdvYd9jHuP2qPMg==
X-Received: by 10.66.132.38 with SMTP id or6mr41179434pab.84.1474231975781;
        Sun, 18 Sep 2016 13:52:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id mk9sm26144528pab.1.2016.09.18.13.52.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 13:52:55 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 0/2] wlan-ng: fix multiple coding style issues
Date: Mon, 19 Sep 2016 02:22:06 +0530
Message-Id: <cover.1474231479.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

---
Changes in v2:
	Modified subject line for cover-letter.	Also, rebased 
	git repository for the patches to be applicable.

	
Gargi Sharma (2):
  staging: wlan-ng: use kernel preferred block commenting style
  staging: wlan-ng: change indentation for macros

 drivers/staging/wlan-ng/hfa384x.h | 626 ++++++++++++++++++--------------------
 1 file changed, 303 insertions(+), 323 deletions(-)

-- 
2.9.2


