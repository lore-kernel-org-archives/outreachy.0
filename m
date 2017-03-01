X-GM-THRID: 6392494565268389888
X-Received: by 10.46.83.76 with SMTP id t12mr1046552ljd.26.1488368624155;
        Wed, 01 Mar 2017 03:43:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.4 with SMTP id w4ls400563ljd.22.gmail; Wed, 01 Mar 2017
 03:43:43 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr844632lfe.28.1488368623457;
        Wed, 01 Mar 2017 03:43:43 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h198si466764wmg.1.2017.03.01.03.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 03:43:43 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m70so6881243wma.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 03:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BH5enDi39QzUMLhmkUaO1HG90GqIDgD61o5ZliNmOaY=;
        b=gOqOK7HLOJJOjGi+zcrFIZst70s9W2Q/Ky/LoJwTyJbFZf/hUzRpT3wBkXwn8u24pm
         Fp++psMcZSMOl0KS+M0/uLGTudcFDnyxjR85prkWZkQc2InyNAdPrI3MTOCyeeO5gXwX
         3LxLvV675Zqyrl7yWGM6XTwoauOx7BXpMSpdRO4IqbcsRRNNw7sh8iRwrXmslGIi2Qlg
         K36QeZPxirivMrlheXI7QgSdDX2pxHvnd1nYMsObkcpzwE8XWxqfsKzllOXVg9V5ss/1
         +X9GRyC9jaM1NkPX4ALeIg3Gq5KrnFZfXyHMDE/VRhtuDAHVOx0ey74qkgnjFEqKVDRD
         Cjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BH5enDi39QzUMLhmkUaO1HG90GqIDgD61o5ZliNmOaY=;
        b=LS4mzMwKt3WwmPunaUW4xj1CgXh5nqh+fsdn6pF/bRS1I6zuFNYK4SbXFD5FrlzEnD
         PscGoxVNSANzaorboNvSZS4KnwSqiwxcvZtaKKLaObw9WwrUhKveRnZqam9QR4rPatzM
         RIeEIfYHsoF42TzAHFADydawOkf76m7j8IPiGSXzjvwABzd/yWc5jh5wmzHdzO5uT/hi
         nBMeEqsIhQ8IL0saZw3/S66O3G728/PnJDAHyzRydw7Wcyb+ECxJkOi1mw2DSEw2WdV5
         R/fJ7aoix4FP3BL9XntJTTxWnc6n52p9+Uom/G9OIwtfXpYt1dPFxOJ9gJ61in9MJnsj
         Y+RA==
X-Gm-Message-State: AMke39nzNN1YkR6z7PZfh/RqO+5qP41XA/FYcqVIi0BP2HeYumqWZSmceVhIqdQsBHkr8A==
X-Received: by 10.28.107.13 with SMTP id g13mr2914210wmc.105.1488368623225;
        Wed, 01 Mar 2017 03:43:43 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id q5sm6263488wrd.32.2017.03.01.03.43.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 03:43:42 -0800 (PST)
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
Subject: [PATCH 0/2] staging: vc04_services: bcm2835-camera: Enhanced code readability
Date: Wed,  1 Mar 2017 13:43:15 +0200
Message-Id: <cover.1488367580.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Made a few changes in bcm2835-camera in order to improve code readability.

Narcisa Ana Maria Vasile (2):
  staging: vc04_services: bcm2835-camera: Moved condition outside the
    for     statement
  staging: vc04_services: bcm2835-camera: Removed unnecessary variable

 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

-- 
1.9.1


