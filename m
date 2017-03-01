X-GM-THRID: 6392575837302947840
X-Received: by 10.25.0.141 with SMTP id 135mr1025526lfa.5.1488387546760;
        Wed, 01 Mar 2017 08:59:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.67.195 with SMTP id q186ls296899wma.1.canary-gmail; Wed, 01
 Mar 2017 08:59:05 -0800 (PST)
X-Received: by 10.223.165.69 with SMTP id j5mr223270wrb.4.1488387545832;
        Wed, 01 Mar 2017 08:59:05 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id h62si997191wme.2.2017.03.01.08.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 08:59:05 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id m70so8371289wma.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 08:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NuMm9RvqyJqkFWr5czYcD5Mg+53fwmV3H2rDFvzz7UQ=;
        b=BT/AMxWxCoDywnY2NEQGC4CrXHwlJN+rr8QnwBXpEpm1cizHdZBH9pl/cmAzEeyNkR
         wpA6IPEUW+y3xzBE9oLU0/BhZPzT6tLrgG/xFssoZcCqU3YhOXZB5pp47Nad4EMn1Vcq
         8iqdFePGX5UIU/0hX9RR6VO8Kdd0rjfNPI03u/eFd1xNA3ycr2NZXlimotD7EpEsJHg3
         RxuL2HSsztxb5gqz1YLYTW5VQCTrUigARNL8LWKjfhnHeDKW4MpKwxqsdzoXCt+G6X9N
         J6c/n1rgkaMRZREZw4/FkFYIm7IRNteiqRdsx5+/JIzDUHJtp4VP245DmnPIvs66p0NN
         tssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NuMm9RvqyJqkFWr5czYcD5Mg+53fwmV3H2rDFvzz7UQ=;
        b=ChRpTv/IqjUjg2OWv1P918sf+0xk9oudBiDqCmH+fgWPF3gp3B5f8l55hPPF/kKKOp
         l96JGe/ByL7twT1hw6KQIzFaVagcsvZf7i1V2CylIAYA9Xw6LiRnRQCgrFyq7/VEHDAE
         mpcMLPzD7q/pgmbg4wKy9ROvaZUzX4uGn3xKQQhLo7ufPCTbm3pepIWYfcAmVX+Yq3OT
         3lFjLm48bxourDwJV5XSoUtgZzZpN+a5GBo4FpZQxq7lIOPO6xtLwYQlzjfWRt+Y3GvZ
         bfK07y788KX758IGML5DzD/G728r/DSECIdH2qyIsuETrmGMlOwX6bX9MwxzYhcj2aZA
         3JhQ==
X-Gm-Message-State: AMke39kkTJ63105k3pPsAr1cc32Fj0u3VmKAPqGL8MPUB9yf6pF50YmtbTAdFyx6s4FcnA==
X-Received: by 10.28.193.193 with SMTP id r184mr4216210wmf.80.1488387545650;
        Wed, 01 Mar 2017 08:59:05 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id r6sm7699416wmd.4.2017.03.01.08.59.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 08:59:04 -0800 (PST)
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
Subject: [PATCH 0/2] staging: bcm2835-camera: Fix multiple checkpatch issues
Date: Wed,  1 Mar 2017 18:58:27 +0200
Message-Id: <cover.1488387254.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix coding style issues reported by checkpatch.pl

Narcisa Ana Maria Vasile (2):
  staging: bcm2835-camera: Remove unnecessary blank lines
  staging: bcm2835-camera: Add spaces around '<<'

 drivers/staging/vc04_services/bcm2835-camera/controls.c        | 4 ++--
 drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h  | 1 -
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h | 1 -
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h        | 7 -------
 drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h | 2 --
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h      | 4 ----
 6 files changed, 2 insertions(+), 17 deletions(-)

-- 
1.9.1


