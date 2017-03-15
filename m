X-GM-THRID: 6397785232436625408
X-Received: by 10.46.83.7 with SMTP id h7mr736294ljb.24.1489600453510;
        Wed, 15 Mar 2017 10:54:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.71 with SMTP id 7ls309570ljw.6.gmail; Wed, 15 Mar 2017
 10:54:12 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr734651ljd.23.1489600452485;
        Wed, 15 Mar 2017 10:54:12 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id b186si426294wme.1.2017.03.15.10.54.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 10:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so2962003wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 10:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8Sw551/4tHVz/DiAUlWh6wrIyRhO2uISo/gmunBqujs=;
        b=PGLBorvkIEDl5+pv5tkifeQHNiXYL/2l4Cgu35BaRufTwO4uPyBlQLl2ZMEMbQHlAr
         aGWzaKepnTzFCTGdaClHqF+3VSJKgg7LSnyONzU75cFua2qbgmHR2I9bQk6cvjS7iJaD
         TSUawGOA1QiqS0nwPaaQ+bJcF+AVlOVLhCD5dvcji0AN5ErwYdainKV7i0MLayHLScey
         +a+0o/3RO7mWmPkArJE8e1L86QYJbXzkSj9D2clL3ZYPGDK7gbQyS3QqJNh5U84kwVve
         f7kSLKb7vA9B7tgU2eUMEtjvJo4Qs5LQCPFvWhr59ItnBWLJXxSdKyK0K/JBMenptXp7
         vwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8Sw551/4tHVz/DiAUlWh6wrIyRhO2uISo/gmunBqujs=;
        b=feJBQ+V2GfFweJgES1APq63Bd742OhFyjEW97h0j+H9S06h8Uxm5iSIg+W8zY68nFg
         84S2bIKBAK9pZwI0fjw93e9Ung4I9HRDRKObXoXgpxKyfBl72tY6wtumAFMXi7Rv1hGt
         UlifNbtwzDAkeMdYKa3H60QT0b4gB2taB49Aw7shv8sW+D0FjIrIXuuFd/QobWCAsm+I
         twyTQQTg+9rCUkhA7h6b4DlV5fBULmaoMQEkURB8h9qYRUhRTHhcag3MUzCf3rfkE/M/
         lQWQiPwIHfDdbRH32Q4+CXyPm3Xl/a/vLWNyu7kR++yKKsUyl6NfCmg0e0h6LpvQ3pYM
         2z3Q==
X-Gm-Message-State: AFeK/H1EQsppLHVmzv9LUzVYs6zu+etxXDgkTapF2hzwI1gyXQg0JXxq2GAi3zzqBqvphA==
X-Received: by 10.223.153.39 with SMTP id x36mr4291128wrb.64.1489600452209;
        Wed, 15 Mar 2017 10:54:12 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:3132:88fa:c554:dae8])
        by smtp.gmail.com with ESMTPSA id s26sm3171546wra.66.2017.03.15.10.54.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 10:54:11 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	outreachy-kernel@googlegroups.com,
	linux-doc@vger.kernel.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: Fix typos
Date: Wed, 15 Mar 2017 19:54:07 +0200
Message-Id: <20170315175407.3913-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in vfio-mediated-device.txt to make documentation
grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/vfio-mediated-device.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/vfio-mediated-device.txt b/Documentation/vfio-mediated-device.txt
index d226c7a..acae6c0 100644
--- a/Documentation/vfio-mediated-device.txt
+++ b/Documentation/vfio-mediated-device.txt
@@ -380,7 +380,7 @@ card.
    /dev/ttyS1, UART: 16550A, Port: 0xc150, IRQ: 10
    /dev/ttyS2, UART: 16550A, Port: 0xc158, IRQ: 10
 
-6. Using a minicom or any terminal enulation program, open port /dev/ttyS1 or
+6. Using a minicom or any terminal emulation program, open port /dev/ttyS1 or
    /dev/ttyS2 with hardware flow control disabled.
 
 7. Type data on the minicom terminal or send data to the terminal emulation
-- 
2.9.3


