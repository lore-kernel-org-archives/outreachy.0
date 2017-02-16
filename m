X-GM-THRID: 6387802033040130048
X-Received: by 10.99.241.69 with SMTP id o5mr1250169pgk.167.1487276058182;
        Thu, 16 Feb 2017 12:14:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls2604344otg.39.gmail; Thu, 16 Feb
 2017 12:14:17 -0800 (PST)
X-Received: by 10.157.63.169 with SMTP id r38mr1240879otc.112.1487276057824;
        Thu, 16 Feb 2017 12:14:17 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z73si285521pfa.2.2017.02.16.12.14.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e4so2309803pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 12:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YNibiMQ/aeKV01IAD6ryhnT/mjwOeMKH/xcoUBs/Zto=;
        b=SFULJiJbsKfkpts/9hxlLQe7lC9Thl3x4aj1FTJECv3tw3y9R3TP3H7lHplHMsQGt5
         TX8FKPlATTT73V7+MkiN2CAZ99ivxkaTTkNRnA+akZbYmDEl7gug3RD75ov0WpnW6j69
         UrzQdvKT66nM6FH0JrWAyoplpVNw82YU5AYCvCMmwncAFH32qqam7/52S1vd3coOlFBU
         +oxcDWoNY8JgEBtfZoHeFJn2wp1Z6Ga4BA5LOFO7GWk1ICLn9kCSHOaQaWGRqRZ4zlUp
         5Edo7rt6TUPa2CXaGpLLe2mUlWMlZoNDk5deUGS0cJsEGE+LtfXVFB2vJ8bIcvGDyMLD
         Wn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YNibiMQ/aeKV01IAD6ryhnT/mjwOeMKH/xcoUBs/Zto=;
        b=MoCC3UhiJMn0dcpo9CGmz080txpWvysn6djdl5dZG7YJ6X43ttjhs+55qLSz/evCMh
         j8Dfg+6cUpZK2sm81PFNFmGFB3FOK3RB8Vl1Plp5CdXYI+rrvh3m4VC64MH6AdmuaI66
         d0eQ4IC1RA1iLWt+LMUCGPoJzmJ9XvHoEv8o+IEeISJtzde7xth0jaQVAifELSycWW/0
         Aa0yid8vX4IMjG2qUrhRZNz9DUUxeb75gyPG4nfhNihReMm4qipHTQElRPR35j/1F+oW
         donLdq8C2BY7+XpkBQgMiXbg4Od2kSPqpPv0uWZiZQ+wYbfq6S0X17LoIbR6lp5CAD3W
         mfig==
X-Gm-Message-State: AMke39miNf94AKPYxgLzP7gw0d9Wf+e8uepvUamI4jXND7D7CRDfr4AY9ZbAeHSHHuniHg==
X-Received: by 10.84.136.135 with SMTP id 7mr5745613pll.149.1487276057606;
        Thu, 16 Feb 2017 12:14:17 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id p14sm1062738pfl.75.2017.02.16.12.14.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 12:14:16 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/2] staging: fbtft: Cleanup to improve readability
Date: Fri, 17 Feb 2017 01:41:55 +0530
Message-Id: <cover.1487275508.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset contains patches that improve the code readability by removing
unnecessary blank lines and matching alignment with open parenthesis.

Gargi Sharma (2):
  staging: fbtft: Match alignment with open parentheses
  staging: fbtft: Remove blank line

 drivers/staging/fbtft/fbtft-core.c | 55 +++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 28 deletions(-)

-- 
2.7.4


