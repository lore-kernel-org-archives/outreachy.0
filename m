X-GM-THRID: 6392494565268389888
X-Received: by 10.25.157.14 with SMTP id g14mr988831lfe.28.1488382597923;
        Wed, 01 Mar 2017 07:36:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls457267ljb.14.gmail; Wed, 01 Mar
 2017 07:36:37 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr1204343ljd.16.1488382597330;
        Wed, 01 Mar 2017 07:36:37 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id v201si371956wmv.3.2017.03.01.07.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:36:37 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id u63so8008902wmu.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 07:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IyszyqHmeqHLFhLR/C2xr8v8RM+QF9/q7tl0hlgbnrY=;
        b=Ub+Q64UdfPy0+IAUfJuSKynEUpH3ZgAmCDgAq9aqm9e5XKyMR4dGKBRB3LM9bB4QFo
         tyGq3BObY7OnexHrhErHQzWMX2n3TH2J04Mo0p+wzHheuuQPdEjunfGZqj1b1718MwU9
         xK+8imFVHRKYvO+mc3T3IDlXniCXqMPovTXz3MY2CWBn248rvPY8qYsn1Xo+tO6/v3Ft
         h2Veoug4/5C9GkUFXpGwfNBa5g0np/NOK5bs8LpsoEHTJGFrgWUDh4CvD0jvgrhNqT/1
         a9bFK4RIOdUJOuEs2S8N+uVQveVie6I+0MOnYKOy95c/esPMn13cbHVZBpHKXr7J+H1Q
         aJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IyszyqHmeqHLFhLR/C2xr8v8RM+QF9/q7tl0hlgbnrY=;
        b=surArOcVwgDmmBjiXnkVy3UtoPD8U9KN6xrTWXs/eJbZo2phMcNt5+T8z9dUWPXQ3Q
         /Ffit0svLj/O1TQKGqtPJ1ysUk6EYTtXk014vIJCBU/VvobhmC79NUC3MHOReY8SAwZd
         9LtINxlQhLaCfIq6b3kcy6EDQns3fKh4B9Pvi8p7AOiyW/eXsJR2baSFZEQVIeNIZh7/
         3KQE2pumTC8aTuAX6813I4/fbteBQZDrQUqmGHqE/bPPWPCN+st4rgHv01/dZMWzJmE8
         tiyrjXbLTAKz0pa/dC03AsKlUtNA/ojpb+vguBSXWuLfVD80U+qg1fu8TxAbA/1J0r+A
         g1mw==
X-Gm-Message-State: AMke39klt5evyvTE4sMSo9IIShhZaC2K523yLczw8BPr+gFZIv78ykP2Zel/OY4abgWpDg==
X-Received: by 10.28.39.5 with SMTP id n5mr3878286wmn.16.1488382597148;
        Wed, 01 Mar 2017 07:36:37 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 63sm7432337wmg.22.2017.03.01.07.36.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 07:36:36 -0800 (PST)
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
Subject: [PATCH v3 0/2] staging: vc04_services: bcm2835-camera: Enhance code readability
Date: Wed,  1 Mar 2017 17:36:23 +0200
Message-Id: <cover.1488381635.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488367580.git.narcisaanamaria12@gmail.com>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com>

Refactor bcm2835-camera.c for readability

---
Changes in v3:
    - Fix coding style issue by moving the arguments one space over

Narcisa Ana Maria Vasile (2):
  staging: vc04_services: bcm2835-camera: Move min calculation outside
    the loop
  staging: vc04_services: bcm2835-camera: Remove unnecessary variable

 .../vc04_services/bcm2835-camera/bcm2835-camera.c     | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

-- 
1.9.1


