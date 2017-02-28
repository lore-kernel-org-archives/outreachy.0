X-GM-THRID: 6392225228462751744
X-Received: by 10.25.67.70 with SMTP id m6mr438898lfj.21.1488305914020;
        Tue, 28 Feb 2017 10:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.213 with SMTP id l204ls43914lfb.9.gmail; Tue, 28 Feb
 2017 10:18:33 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr503273ljd.23.1488305913245;
        Tue, 28 Feb 2017 10:18:33 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id h198si268842wmg.1.2017.02.28.10.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:18:33 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so2612059wrc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jo7c2Q+MbcD+Itpn+S1hcr+aFxhyIPWPRT9dhVKekvQ=;
        b=HmNUnccRWeER6o7ZtUFlsvdgubaGzRRqNVfdFgc6Jv070BWoH+68oMrOt4iC73UTdM
         S6o/OfW5f0mcI0xo2k44HQsLS5S1O3JnlDXwaGqqJ6F0TsMi+VL4wJ+YE83P11zcvW97
         fNQKpGKcTRJbKP/lTF4EBFJOFkR96M4bktR24y8vju3CZGE7zW0LzdnxP3oCCPjiVOga
         fdUeDd0hf4QlUcD1LFI172DXG1UFT+vNn4v0lKScs+AHPTnBVjxruuDToTTzNbg4dr8s
         2DiS6xB/Nz6mcwYncCTWP+AFujkx83akY5A8Sc+y52Z/3pGTKWXXTQiROFzvddmCG9ey
         mwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jo7c2Q+MbcD+Itpn+S1hcr+aFxhyIPWPRT9dhVKekvQ=;
        b=koGFxTTUZygxPRDZee/cEqUoxo/jpuLmwKPsa0+IpIN8MuKOx2HHKAQND0ojhAl9g+
         v/cfDsj/wR/qRvGluN8Kf1jB0tUzK1oaos1Ay/m+yhU1Px+VLMo81i3q75UBG+/uE7wp
         2wF+MQnclDYwAOg0s0yBE94Tu4lld3vUkMa/9sqpnb4pNfq2Sih0QxkgTg4QxQFB5c54
         9mYgd6JqkH9lS8yJy7sB6X4R3nMA3i+F4QTQgceznFGPgF3nYyrPfEag9uBawfi3V+8Y
         ukJS0VypNxvDT1ZU589uRHhDpfiqBVQVuhi8seUwsxu7cz+Qbe2vD4qXM2nhVsWEJvRb
         wFwQ==
X-Gm-Message-State: AMke39lwztYjqhCl8LT9igE3j8H2nYYitb4GO5A5hqQsbIODT8JWNYDqtnCtvq+u/KGEwg==
X-Received: by 10.223.179.216 with SMTP id x24mr3535874wrd.171.1488305913063;
        Tue, 28 Feb 2017 10:18:33 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id x1sm3301497wrd.63.2017.02.28.10.18.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:18:31 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/5] Fixing multiple checkpath issues
Date: Tue, 28 Feb 2017 20:17:56 +0200
Message-Id: <20170228181756.22863-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Made cxd2099.c file from cxd2099 driver more readable by fixing multiple checkpath issues.

Tamara Diaconita (5):
  Add comment for struct mutex definition.
  Added spaces around arithmetical operators.
  Removed unnecessary blank lines.
  Change a kzalloc parameter.
  emoved redundant code.

 drivers/staging/media/cxd2099/cxd2099.c | 96 +++++----------------------------
 1 file changed, 13 insertions(+), 83 deletions(-)

-- 
2.9.3


