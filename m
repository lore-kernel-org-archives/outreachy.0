X-GM-THRID: 6387958804710948864
X-Received: by 10.157.19.69 with SMTP id q5mr1638845otq.2.1487312560931;
        Thu, 16 Feb 2017 22:22:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.200 with SMTP id 8ls3372527otz.48.gmail; Thu, 16 Feb
 2017 22:22:40 -0800 (PST)
X-Received: by 10.129.42.215 with SMTP id q206mr2081249ywq.164.1487312560450;
        Thu, 16 Feb 2017 22:22:40 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id z3si560894pfj.0.2017.02.16.22.22.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so4068550pgj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WlFmhPMFjMSc41oSXjDuZ0i7gwdtLr7Nzxx6lEZrkck=;
        b=ojTag/B48jWaxoPSVuR2SOUwXDeOprebIayU83Cppv2CYNvE5/jUKeMYt0+MyWQDnQ
         EsQfmgRtDwTXplYrHNni+Lc0qfoysoQSfC5R1awFDPuGsYHwSS02g/FQOT12FgiueXUz
         MLNRL/8q5NlB14aC3EwiRVGHWuII+1Gm6TxPMezmSapti4XfDw0Z1A1zAtBH5wDScNwa
         2TmVPZi1o2HyCjev4kpDTsa2VBJ/DIVFEtGlTpOf13b698YXNwsG0qNO+5xm9cHkbXay
         Iv5VGVUIUZZdbgYo0rCH+YMlBTErw9BHmA7souRSzLYo6rG8Kks+4KGNH0DSdLOWm2OP
         rpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WlFmhPMFjMSc41oSXjDuZ0i7gwdtLr7Nzxx6lEZrkck=;
        b=DTWjKiRBxxTK+E6da2QP3AceTKHnulDo34GT184ynvXNPqaQnf+OCNDXAn7n3ua42K
         NXgMaZa1gDcUQfPTOBdP9y4lFCpuUfRqcktz6pzJSpBRH96bK9xsTyZBSkfx/vm9MvyH
         fKA9iXmokj/YK9vl4WJy/o/3Wf8nG4dcZZIz6LxAuRGJ3tU8ykVQSlnsB4drgA+R66B0
         rk6rwT07Fl2rTgXdXB6aU+DJ6FofTMQ7iKw6wbKbbdhkANUcD1ZW/FBVS1xfx/JIEIfM
         ZZy2xkpLj+HcoRCAhh3pqS6fO4BpM95OCFiM6ZJTIuwl6hlCpzCLoAEeszWozBh3Waay
         sHpA==
X-Gm-Message-State: AMke39m5ftcJMyUXQaj2qLVVlP0nXoj9DWJYNbVVX7iaPCU+a9ZGr47jSGOee0ivHiEvxg==
X-Received: by 10.99.108.74 with SMTP id h71mr7859770pgc.99.1487312560141;
        Thu, 16 Feb 2017 22:22:40 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:39 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/6] Fix multiple checkpatch issues
Date: Fri, 17 Feb 2017 11:50:24 +0530
Message-Id: <cover.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Improve readability by fixing multiple checkpatch.pl
issues in rtl8188eu driver.

Gargi Sharma (6):
  staging: rtl8188eu: Replace x==NULL by !x
  staging: rtl8188eu: Fix block comments warning
  staging: rtl8188eu: Put constant on right side of comparison
  staging: rtl8188eu: Remove unnecessary blank lines
  staging: rtl8188eu: Remove multiple blank lines
  staging: rtl8188eu: Add a blank line

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 123 ++++++++++++++----------------
 1 file changed, 56 insertions(+), 67 deletions(-)

-- 
2.7.4


