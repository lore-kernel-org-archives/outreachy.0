X-GM-THRID: 6807662174396219392
X-Received: by 2002:aa7:9a45:: with SMTP id x5mr28793405pfj.248.1585032365374;
        Mon, 23 Mar 2020 23:46:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls3252809plj.0.gmail; Mon, 23
 Mar 2020 23:46:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRaH2E5nWRHcPz1494/F6wiVr5DqpmfCe2LzBtpZvW8HR95KG4j0tzKre4t3KGvsSqIt85
X-Received: by 2002:a17:90b:1b04:: with SMTP id nu4mr3546424pjb.81.1585032363774;
        Mon, 23 Mar 2020 23:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585032363; cv=none;
        d=google.com; s=arc-20160816;
        b=CldBV4zXi0X8nejRkYUqP5V/xFuqqEYbaAwwrZr3nBrhuU+5eG/WvaYObJe7X/0oo3
         rcoAvpvu58e21+R53Ba/0TWIDARpZuOte5mMNdUeQ5FjlLqZtrhi3pE4tWSod3JBhZKP
         hLut+u/pxFSFSslTLOPWAqh/okzU/P6ZrWxEpidpr4HSt/fYDIvK+6PKzau4QJTp5WY3
         yydiji1vcxdr8ObgBoR6e39bQ6KpdkK5x0E74GtjsgT2lgpYibX2uufTP0RMZl1NOQ6/
         vGbvPfKEc1vooyvX+aBEUHmkFwkyIWIDQ32OWmGoljghPM7HeuaXCZJ1w6pfnUBWZD9l
         LzOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2eW4tMn4FX+hsT8yqdVtaTKyglVePfRfLH2Gh1mT3r0=;
        b=Dywn1G7spHuzzRiW9AX62F8DUIx4kcvMNzCs6cnklMbZYt+deJS+k0tyk/QP85F74i
         P2J3a5KVyKGYu3R+T72kCLJ2bqKAfaem19St33/BpnAHir/yxlMwznBql+ixxoBzMJ4S
         nh8SgD7rzuRhZbT8gDq4DEzw0K3DnBDaOcuNNJdGmAFJHxN0KmZvAPoXs3C630xkZhEc
         /3az1yhDgmig0n1KyMAX4MFqbF3sfJ4YhhQQtvYzQs10maxkrYdi4W/B5jUTheSVFX+G
         SXc4Smh6fznPnhtNo1T0nN81C4MPPbDgrJlxIF2Q3miao+vPfzJhROVafKwzWa39EkRE
         5Uwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jst754ZE;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c125si505344pga.5.2020.03.23.23.46.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 23:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jst754ZE;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id s18so6483333otr.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 23:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2eW4tMn4FX+hsT8yqdVtaTKyglVePfRfLH2Gh1mT3r0=;
        b=Jst754ZEMPZZKo/tfiTpAjUUo9LUB9h1ZhqMTl6mYb05VxiWnWNBp+bjrJOzyvQCH1
         +oKGskgAXtUyatIITVG6JzzFZQSwh15z9Uid1fjPChwcLpLSsbtoBCB9IqurQtGu+VZ9
         5PSH45pTwE5R3lpqpzVtCRbCX2svlW/JY47tOtOW/TWmuJ3P9JgEo+n6ZCurvbQViAR0
         GZ1yWkyRPajjrUQ6L1oTJFzXg5qXm31Rx9SmFLf3q2o/bSmHhLosd1ozy0pr6kaJJ+di
         aV5t4WPe0uU1ljZjXdMF2FSsPTcgmIpXOHeqa+10DJKVkO/cOkAYRTiPnEUbheisoEHk
         9CfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2eW4tMn4FX+hsT8yqdVtaTKyglVePfRfLH2Gh1mT3r0=;
        b=cVgfSarl6ej7YLrhOPLpHO4Fj/6abdF7bAji+CL8cb9hdwidb+Lr5u1x7Uv5OMmudz
         p9GxOcokQoaowrTMbD15TO9N1JjLNeM9J7RwIwlJCvilKLfyGvjaQNEcZcoLi21Qk9HC
         JuIwNIUwphusooboGRKAymlzIZeZLI4dwwDTkDtEkpXC8dECO27fe9fQ4TK0N9rEOapd
         S/+3sE7zWFQ8icOcZhH3gHyOU4sQIKHmx/8aF7rFgfmRknFeSMvdb8uIsjP10LIhZQO6
         yhZPUThyLTRuKX2jgqux7Hl8yvkFRZs4xScVSisGpaV274XHHclp1vdNHcrWhthi5ZZz
         qatA==
X-Gm-Message-State: ANhLgQ16sl2nZz24UW6at81YsDkiB0mRTxQ6OL8BCElzBJgAzIuYEis+
	4sFBb3tCWcfJtT1Z/uB248atBokYF7A71A==
X-Received: by 2002:a9d:7488:: with SMTP id t8mr1139265otk.219.1585032362970;
        Mon, 23 Mar 2020 23:46:02 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from localhost.localdomain ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 23:46:02 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 0/2] staging: vt6656: change function from always returning 0 to void
Date: Mon, 23 Mar 2020 23:45:43 -0700
Message-Id: <20200324064545.1832227-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change vnt_radio_power_on from always returning 0 to void.

The first patch in this series was originally submitted as a 
standalone patch. Greg Kroah-Hartman <gregkh@linuxfoundation.org> 
suggested more changes to be made into a patchset.

John B. Wyatt IV (2):
  staging: vt6656: remove unneeded variable: ret
  staging: vt6656: change unused int return value to void

 drivers/staging/vt6656/card.c     | 9 ++-------
 drivers/staging/vt6656/card.h     | 2 +-
 drivers/staging/vt6656/main_usb.c | 4 +---
 3 files changed, 4 insertions(+), 11 deletions(-)

-- 
2.25.1


