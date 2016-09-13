X-GM-THRID: 6329968789142110208
X-Received: by 10.129.79.144 with SMTP id d138mr2884383ywb.19.1473810707923;
        Tue, 13 Sep 2016 16:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.83 with SMTP id e80ls961385ite.0.gmail; Tue, 13 Sep 2016
 16:51:46 -0700 (PDT)
X-Received: by 10.107.200.79 with SMTP id y76mr104348iof.1.1473810706054;
        Tue, 13 Sep 2016 16:51:46 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si268185pfe.0.2016.09.13.16.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g202so219663pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CQNsUoe32+iLms5FuHpq8rQWEmnKJDxTD6NuL5fYZY4=;
        b=MHBiXmt9jEhETAUL8OWkBPP/isqUnb2mNIg47M1BQbJBYU6PsWm/h6X7dsHeAWi954
         iNAaczyd5sqtWeecU9LKrvz94yn6cDRFBZvZLCFeDCcngzJg7cXJRoSxsnG8lxgSZ0Wi
         SRYSPD76o/EJeD8fMB8xtp8VFe05dOIrwElnJI5rsKBl/X9UVEQYvCrGJsm30Y37F1FR
         IeTq6bekWZo0iOU1JCbTvKfA19Xn3fe3U7Gwvt5x9nKtfSfLF/SPkgpO4CtN7G06CIf0
         fQIDVq2xZ3Jt/+c93a9TxFC/jkw3j+7X5ae9plEBu0RfGB79vbCcO2MX6jWAn99AzaHp
         VcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CQNsUoe32+iLms5FuHpq8rQWEmnKJDxTD6NuL5fYZY4=;
        b=J64qkz3RkHticPw0RRlcMDT8hUTvd4r5IkwNdxUp/+JcACnCqG70dZ160DI8D0Wnpr
         SiuztegL4/OWKUu/RLWMhJVzOadQBGvTL2egCuYlW38Ekohl55j593iuh4nAd1QXUpjo
         yogTrXevsW16uSEwArtG3OzavFYsLJ8p8ydywtvnyrP5Xp43p3xVAi/SSSGI0nX4ZGHv
         0O0ltnKIh6mS/21CZ5+w9JvKAmJLlJG5CFUZVEPHyiON4zjjmFNVRB3cplpkmzXJ4NVV
         qAQ4LesFLU7pgVoIiHr62lDdw4DK/SwxLWAtCejHoTUIkZ2XFpldlmDiBCccGBxtqWnl
         txLg==
X-Gm-Message-State: AE9vXwNLoaOEDKrsNoaiwkVbyKiiAIxehBLPSs/r1eG3N/VGcg145vKvs0pS/fsFDSjAqQ==
X-Received: by 10.98.8.13 with SMTP id c13mr5973504pfd.166.1473810705839;
        Tue, 13 Sep 2016 16:51:45 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:45 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/6] Cleaning xgifb/vb_setmode.c
Date: Wed, 14 Sep 2016 05:20:59 +0530
Message-Id: <cover.1473809550.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

This patchset fixes various issues that come up in the checkpatch in patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion when a one patch was sent fixing the checkpatch issue of moving && operator to previous line.

Gargi Sharma (6):
  staging: xgifb: move AND operator for logical continuation
  staging: xgifb: remove unnecessary parentheses
  staging: xgifb: remove blank line after open brace
  staging: xgifb: add spaces around |
  staging: xgifb: remove blank line before closing brace
  staging: xgifb: fix alignment for if arguments

 drivers/staging/xgifb/vb_setmode.c | 48 ++++++++++++++------------------------
 1 file changed, 17 insertions(+), 31 deletions(-)

-- 
2.9.2


