X-GM-THRID: 6330692191065735168
X-Received: by 10.31.124.7 with SMTP id x7mr280468vkc.10.1473979137787;
        Thu, 15 Sep 2016 15:38:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls4601271ota.42.gmail; Thu, 15 Sep
 2016 15:38:57 -0700 (PDT)
X-Received: by 10.157.5.37 with SMTP id 34mr8396172otw.31.1473979137359;
        Thu, 15 Sep 2016 15:38:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1626703pam.0.2016.09.15.15.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 15:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so106623pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 15:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QT+mXNqYcD0K71gShXhKdq6IxIcF3YTOcWoDBeX2TA8=;
        b=e4omY40kXbJeo/tKaZAyLrCQEZr1vkZ4Bw2vdCeOGsl8ziIc/HZ7GTX7rHgJuuGiQZ
         BPTLzBX5zsxUJN5U0tPvPERZru1x4d5nCu9lq/+qbdCKnDhDH/FdM7urEntDAiJ4VT+f
         +KsYJdWaRgwtTofssfop4EQYL5y5n+iVj0GV5UUHMC8DuzCy/sm+E3p61a8D2za55P08
         LXBk+Ut/djdW1gWDgrnNt293kIJlalCDmyEK/InKMwDuXxCvpYcxdTEbgUZRXMyESh2A
         hTTwy0WYNH2WzpyxZxtgiYw0/wo9NXBZd/A78F2tPkuvHbOaY+r0+MVL03l4xg382oJC
         zvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QT+mXNqYcD0K71gShXhKdq6IxIcF3YTOcWoDBeX2TA8=;
        b=j6tYikJhJslIl/VRi7DJDi6eEnPpUeLNZeGK7++PLjXosK0hZJNA1C2ULj1wO9SZ+Q
         JoNsXGHZ15Tdxw+Jn3JENfLNK5qdeN8ZwEJuTQp+3s/5LXhIQEiQ2qn7PzDW6A8W7+cs
         GCvnFj8OMkymnNFwDVhUDDaEhCCOVvSVql+eZFokUbde+F+eBIDgPxk3J8eFEz7QfDug
         aqhX9SRPK8F2IZ05H7yEEFCqOy6aZfIbLnZqNsNEFm19r58eVryATxmSOBvDIflKTp+O
         wepD24yOfaVwBzhvbPCoOP8mybJCF6eRj0Pyt+0Yt7vl/tHbGqR9TN/+GJSKCxJ9yHkH
         jncg==
X-Gm-Message-State: AE9vXwPzjVcfKv3ueNVDoOzlfJ5XLdY4hnkEUO2IwiTL+hNw+SbeszvYDEPNZ15zhc5V7g==
X-Received: by 10.98.196.206 with SMTP id h75mr10364411pfk.156.1473979137143;
        Thu, 15 Sep 2016 15:38:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h66sm47319967pfc.47.2016.09.15.15.38.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 15:38:56 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/2] cleanup fbtft/fb_ssd1351.c
Date: Fri, 16 Sep 2016 04:08:10 +0530
Message-Id: <cover.1473978532.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

This patchset fixes two checkpatch issues.

Patch 1 fixes the checkpatch issue, logical continuations
should be in previous line.

Patch 2 fixes the checkpatch issue, spaces are preferred around '<<'.

Gargi Sharma (2):
  staging: fbtft: move && operator for logical continuation
  staging: fbtft: add spaces around <<

 drivers/staging/fbtft/fb_ssd1351.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.9.2


