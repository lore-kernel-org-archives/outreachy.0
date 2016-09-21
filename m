X-GM-THRID: 6332712433108385792
X-Received: by 10.107.6.208 with SMTP id f77mr14165050ioi.32.1474449511247;
        Wed, 21 Sep 2016 02:18:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls1434108otg.26.gmail; Wed, 21 Sep
 2016 02:18:30 -0700 (PDT)
X-Received: by 10.200.50.100 with SMTP id y33mr6829774qta.36.1474449510780;
        Wed, 21 Sep 2016 02:18:30 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si3650954pfk.2.2016.09.21.02.18.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 02:18:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so2151048pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 02:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BlT/pcIzUc4/Ab0d1/2t4Cl53N4hMFoMUi2dO93vah8=;
        b=JoXGQaJVe+r3jfk/vDHXPV6Q/FYkpMq3ZznQIP8ySqyhIQVhixGoaCBzSG0NrbFYpo
         164kQpxIyGzjTZUA/VrJn576SOpbJedBibDi4B2D4/6SrVf9pvXiP1hbsuzX3JyK1F4O
         KxloosTZyjdL0QJR7nhp9Ag4QceZXGD6vV91p2U0wo4iYAE+IN91OThEQZ/0+05EJpNY
         3cCr4ZBSu8+/HxAxV8B46adWGDNBy1XwwqNGMJZVtz7aADPb9Heepot7vlFMDYIN7o3c
         wB8YdRwcibUzSocjyw2BZ9lDw/AHLeQwT1O38mqWLlBmbcOJdgAezIfDZKYxVnomCVVO
         cXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BlT/pcIzUc4/Ab0d1/2t4Cl53N4hMFoMUi2dO93vah8=;
        b=Omh5XP8oU2Zq5ewkF/qxCuxPWpmzKDDSyBHdAqIpcr7oHEqXLNKHnMwwB6z5gTgkaM
         wne5M461Zfr38YsfCFM5+an8P3VWUPw0owlErb2uj7Mc9xrVwhaB/VW7Kpcr75n166/s
         2gqvD8JosDAqFGnwIjK5aZjPPAo2G1/Sli35vKH+7gaKoSNdFnu6ZIQu3Rhlz6gnoXiV
         kV+zJlfAcO9Bd5+pLneirYT+efeIMCsvxzwMTE7GfIaTzxtDYLA0++yYoarxQ/eMVhwD
         gRXrLxbjLQo8w6PSWM5NEIQZJzp9HSV1n/w2vJNMyMjMYOd3WRAtSBl80UFhEbZspdv+
         CQlw==
X-Gm-Message-State: AE9vXwPD8gAs15HYt8fjObMVzXLk8a9maHJmbGlXcOGRXLpw4yZrS7vk+SfR+Kj8/vX6eg==
X-Received: by 10.98.223.22 with SMTP id u22mr63694806pfg.128.1474449510576;
        Wed, 21 Sep 2016 02:18:30 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id d5sm84932965pfa.44.2016.09.21.02.18.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 02:18:30 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/2] staging: greybus: declare struct of_device_id as const
Date: Wed, 21 Sep 2016 17:18:05 +0800
Message-Id: <1474449487-9524-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Address the following checkpatch warning:
WARNING: struct of_device_id should be normally const

Eva Rachel Retuya (2):
  staging: greybus: arche-apb-ctrl: declare struct of_device_id as const
  staging: greybus: arche-platform: declare struct of_device_id as const

 drivers/staging/greybus/arche-apb-ctrl.c | 2 +-
 drivers/staging/greybus/arche-platform.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


