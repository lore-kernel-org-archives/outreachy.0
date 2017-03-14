X-GM-THRID: 6397080703466471424
X-Received: by 10.157.12.214 with SMTP id o22mr18225483otd.150.1489499719827;
        Tue, 14 Mar 2017 06:55:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls16082542otx.21.gmail; Tue, 14 Mar
 2017 06:55:19 -0700 (PDT)
X-Received: by 10.129.160.83 with SMTP id x80mr3360325ywg.90.1489499719479;
        Tue, 14 Mar 2017 06:55:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3675101pfb.2.2017.03.14.06.55.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so20186960pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 06:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lB7GshdaVIwmnpL4G+I7r0G4/OOMFwb9NBq49+cHhlo=;
        b=JcgEypYo+L/EtPuEJ+TEMh5tNJxV9gG9ZLokBpw2QETkJeo4IOJriEABtOjsxTQ7O7
         6cbCv3zyCccEBKy1YzDedjl9jURdLkFLVLE7P8MzPmOldNpHbfUIVUvxNKMeWR+gyxJX
         JtdvVpAkte68eud2IxfHtRFUXSTSrzGGYPPoZ/Kd2WVXsHzmOoI2gEm7P6BwygrrajV4
         onc1oZT8gSQrrx7ZV372/7GlQi683B6Mt20jZ1VmKKjnWbaYCRqfElVJegX7fQXp3hWn
         rZZtS8A9NqriFCXIHn79dlnCcI/FQ6xkDxsrl7bEe6uhTsBTYfe/fB+NYdDNOZnPc5b0
         ClOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lB7GshdaVIwmnpL4G+I7r0G4/OOMFwb9NBq49+cHhlo=;
        b=HZtCVSFRk3pwpb7EwI9Q37PPB0amPuHqiJ12PSzOjjo4rq7TEENdth3sXUVoSYe3V9
         3CoasGlg3nYAuq9cIuGfbk6SzHKHXUShs8mW1KgnDHTM+G45H8sItiC3qVA/iDc9n080
         kf2bR/SBNkfaA2uBHZiAtk7ned5camRqSFjP6P6pFdJOsK12lTCLnL7Rut+/RduEriOq
         AePLsxQqghCmfnw4jYsAeCSLRFVx+lVpqaZoeUN4le/RW9EPAzZMftaGpstKAa6/DWue
         4sAEbsdVnByLlzKraPCDeWeV5751PcIl26UpR9urpbF4nnyqBkqYyLAqNO12f2tYh7vG
         5yMQ==
X-Gm-Message-State: AMke39m9O0Qwg5E0YpBEQln20PlhlQGxX+jaZQDC1UI8Csix4W9PX2lTIrU5GOgFHdvXPw==
X-Received: by 10.98.112.134 with SMTP id l128mr43913533pfc.81.1489499719261;
        Tue, 14 Mar 2017 06:55:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w123sm38954470pfb.44.2017.03.14.06.55.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 06:55:17 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v4 0/2] staging: checkpatch cleanups
Date: Tue, 14 Mar 2017 19:25:05 +0530
Message-Id: <20170314135512.11198-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in drivers. 

Arushi Singhal (2):
  staging: speakup: identation should use tabs
  staging: dvb-frontends: removed code in comments.

 drivers/media/dvb-frontends/drxk_hard.c  |   1 -
 drivers/staging/speakup/speakup_dtlk.h   |  10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
Changes since v4:
 -Include the changes done different versions.
 -Change the subject of cover Letter.
 -Made the subject of the patches in the patch series more clear.

2.11.0


