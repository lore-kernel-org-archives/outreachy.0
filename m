X-GM-THRID: 6395629856318554112
X-Received: by 10.46.76.17 with SMTP id z17mr3556449lja.13.1489172771167;
        Fri, 10 Mar 2017 11:06:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.137 with SMTP id f9ls1123443lji.7.gmail; Fri, 10 Mar 2017
 11:06:09 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr2841753lfd.12.1489172769976;
        Fri, 10 Mar 2017 11:06:09 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id 82si27371wmg.3.2017.03.10.11.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so12721053wrc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=zDaw9E3EHwT9a46+lzkRLX4OmftNng5UeosskWREwek=;
        b=Sp3SqdNJ6ZSuMC1xrKYn4PreZbG6IPMOyUWzXu2Ne7kJ0CDHAfCMwS2nnLeJ5TCIRl
         8Y02m9ircdLViWHxTMnVxWLSN2p1HVySZAwOBjTzYqV6wi/RpR0nTw9wkDNLcoqJ2JzY
         zIOa4mS1J0mPtoA3bvo70ghCXudiX0M362dDe5ZPU0vOmkHy60HjT4UX5TxbSVzapkM/
         DqiYtNQSGSK7Rl6e/pxoARpMCJG5rYz8+eR8kPXLHM23cN+KAVYR0kPn0Hgcy6tow3yC
         006+pMdftMcRaWvNMp0pS4Ejl77BMP5yzeKdnnT8EbF3aYpOvPwK4/yn7ovz+uZzCdo+
         geyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zDaw9E3EHwT9a46+lzkRLX4OmftNng5UeosskWREwek=;
        b=EAuV4O2UI/54U1Yh3TyaOFF7H3hGqQ7VgZBaYxR2Y5bmNpoo45xS2m+rhqJZe53NJI
         8NhBnt6oT/N5O+KX4dH1IPos/9ITIJODrvnj7WLxoI5YOex6FU2vA02885tBevtEUZzm
         dMaI2yyFm4GONFw5RkN2TsqaHLnqkhv5Kh7b5Sw12XXHM2SYqNyaly32M5T8FybJ8QSQ
         OC3KVggqHQna49rfewK3irLEO+q9pZ0m7cq9gd/O2JWoXrxXqENexxoqxaSGOKhjciS5
         DYOnQOtWo+52bMHf6lVC93a+gwe3sPY844Pz5eZzYVRV7GeNKZPCxrIo/Ug4sIhS10eh
         MWcw==
X-Gm-Message-State: AMke39ncDYluFsRYyjKFYaob3B6kAx2B+3f2WF6quoJsrn1QuEIRkIl8fVZEJmiqG8DoBQ==
X-Received: by 10.223.155.193 with SMTP id e1mr17515364wrc.86.1489172769779;
        Fri, 10 Mar 2017 11:06:09 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id u198sm400885wmf.9.2017.03.10.11.06.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:06:08 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/7] staging: wilc1000: Improve code readability
Date: Fri, 10 Mar 2017 21:06:06 +0200
Message-Id: <20170310190606.19766-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi.c file in wilc1000 driver.

Tamara Diaconita (7):
  staging: wilc1000: Remove unnecessary brackets
  staging: wilc1000: Declare variables at top of function
  staging: wilc1000: Correct name of variables
  staging: wilc1000: Add blank line
  staging: wilc1000: Removing extra tabs
  staging: wilc1000: Use kernel preferred commenting style
  staging: wilc1000: Rearrange code

 drivers/staging/wilc1000/wilc_spi.c | 101 +++++++++++++++++++-----------------
 1 file changed, 54 insertions(+), 47 deletions(-)

-- 
2.9.3


