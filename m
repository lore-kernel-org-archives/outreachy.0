X-GM-THRID: 6394528999032225792
X-Received: by 10.25.17.102 with SMTP id g99mr2356612lfi.6.1488874940612;
        Tue, 07 Mar 2017 00:22:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.208 with SMTP id f199ls383100lfg.12.gmail; Tue, 07 Mar
 2017 00:22:19 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr3226228ljd.23.1488874939832;
        Tue, 07 Mar 2017 00:22:19 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id i76si242131wmh.1.2017.03.07.00.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 00:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u108so20636664wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 00:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7xyv395WtLDWjFAPhC3HHuHeRvZO/vXhJl4hi7vdHkw=;
        b=bmvWY24xEu8FOiZOEWPjuOG4lKtomiPlW4oYyYrGqaFBxle/RofhGstkA4CYf8XYLX
         O9G+ORtXpWkPsPG5OZCApXZ1yFbKum3cQrasvf/i2wC0gDfVjzJkhikcJttRv3x2u3LY
         Lp3leOtNAjMEhW2tNL99Jil5/IawGCLUABk04vgzmU5SnBdK0XydqZ8jML4HZCp4gohQ
         9/jVH4qP0g2YcnvpWUB2Si2JiIZ+fhvIe5Zi0vOkIVmdYgS3W3zGkyxSIr2Zo+8g5rxP
         SQMrcZF/il+FEb9UyHzixCvcYrgBbx/JCLt4Ys8WcUVncmyQ3uUaszdOw/CJl0atkPXe
         sVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7xyv395WtLDWjFAPhC3HHuHeRvZO/vXhJl4hi7vdHkw=;
        b=YggXZtB4ql5+Bmq6r8uENAziXdOfPt5MZXLjTJYaxBY1QwdHd/5yMIxs5PsZYWRBWn
         wnv4lPdfw8MVeyBJEQ22sVwCuC03YmZMOqt6mP7QMhCiyKjy5E33VPypIrMLcsWNDmwT
         k9MGvpyCTVyyihjBIWuSQtVGxG6wSd6krJPxCd94vY5xPrsZpycEH+/WbhJ1HQZcEDCb
         SVkzAx8RpQIjlWpXfwk4Z7oOPcEnUHRa6kDhwG+yQn65q1qdg0XWUzCx61thcieN3hPi
         Yow2Li6RO9cyPnLe7rURR+UWERgYYuLUs/B1AB9tBTPkRsjJb8cV1yLsjwFi+6VYUTZQ
         ZhUQ==
X-Gm-Message-State: AMke39l3pC9sg02E4mRfSvwRFZL5xIH+DnB3JSeJO0hwVnMN0a7dcvNZsieYzbI8VeDalg==
X-Received: by 10.223.174.164 with SMTP id y33mr14551231wrc.166.1488874939639;
        Tue, 07 Mar 2017 00:22:19 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id k70sm17923630wmc.3.2017.03.07.00.22.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 00:22:18 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 0/2] Improve code readability 
Date: Tue,  7 Mar 2017 10:22:14 +0200
Message-Id: <20170307082214.12845-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple checkpath.pl issues to improve code readability in speakup driver.

Tamara Diaconita (2):
  staging: speakup: keyhelp: Add spaces to align
  staging: speakup: keyhelp: Fix 'if' continuation

Changes since v2:
*Replaced the subject of the patches.

Changes since v1:
*Deleted the patch: 'staging:speakup:keyhelp.c: Remove unnecessary else' from the set and remake the original file.
*Deleted the '.c' in the subject of the patches.
*Added a space after ':' in the subject of the patches.

 drivers/staging/speakup/keyhelp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

-- 
2.9.3


