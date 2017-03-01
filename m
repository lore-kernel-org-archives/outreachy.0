X-GM-THRID: 6392511932367110144
X-Received: by 10.46.22.16 with SMTP id w16mr963619ljd.8.1488372667181;
        Wed, 01 Mar 2017 04:51:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls398322ljw.54.gmail; Wed, 01 Mar 2017
 04:51:06 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr693205lfe.26.1488372666442;
        Wed, 01 Mar 2017 04:51:06 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id v201si333078wmv.3.2017.03.01.04.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:51:06 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so1146731wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 04:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dgy9usGkJpLns8KtCBfDz7LwwYn3PW5w3GhaV7hfAGk=;
        b=K4YAUDR4AhkZXBiO2MXHTZfjt8uzHRoR1Xh2aYB+lY5xM1Xf8JYtWwDACT+bDAKZSL
         X6acbz7+joe+8UQOFSPcEVA2HPFOH43sqiLT+cscOSIUNc8Pyl9ZciHZPpn/y2sRlNBL
         gKG6bPURs0OkNLq5FwgBNW5Sit89Bst6IaksosC7vHGm9YNqOewnjlKASTDCdElJ2Tmd
         kYapJNGwBiBefyOGG+gljq0uroHaQ/v2J1nG/5kRF9u43g9vlXbLM9fouGtGq1FkIEtO
         L4HrlIbU6SC6uEIRjxpbrEBd2zAh6+Y0hykkgmunmTZf15TcTWAwfeOaIViYombFJJUw
         aX0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dgy9usGkJpLns8KtCBfDz7LwwYn3PW5w3GhaV7hfAGk=;
        b=o4pfvw6KKzGGk1wZimYt7z8e9EDcutrhv3r71NUdB/2AnGMrYUeEhE7bqenstWo6T/
         WXa0gsGOUrWsDVZIJ+SOtmgRKMNUK5KJLBezq0RXBKefAs54M+UyEpc3gztoRpXK6dmD
         Fov36bYns9HWJF+GMOmUfiEnpTqkdMXWpOqkcCvoG3YtKFYj/+O8faDsvjRAtVVDtqgR
         h0q9UiGsU029D7qBuLcHzFuCfFYzfsRgFV8zjiRGDTqCi6BcuIcAak2mBJNvSuxNrsqz
         cd9wgYHKsWRByeIYoP6TL1qpAEjuCEw/8RrUGREOMB2+soMvdvRnVugiMAkeeOGwRGNq
         6huA==
X-Gm-Message-State: AMke39m7ibONcnUKDLTlkTvn+EgRV7GUghTi3ohqsxIGuYs31BlfgYMGNONrS3U9W5pXmQ==
X-Received: by 10.28.156.151 with SMTP id f145mr3455239wme.8.1488372666230;
        Wed, 01 Mar 2017 04:51:06 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 45sm6475209wrx.60.2017.03.01.04.51.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 04:51:05 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/2] Enhance code readability
Date: Wed,  1 Mar 2017 14:50:55 +0200
Message-Id: <cover.1488371940.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Refactor controls.c for readability

Narcisa Ana Maria Vasile (2):
  staging: vc04_services: bcm2835-camera: Remove unnecessary else
    instruction
  staging: vc04_services: bcm2835-camera: Remove unnecessary variable

 .../staging/vc04_services/bcm2835-camera/controls.c   | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

-- 
1.9.1


