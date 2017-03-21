X-GM-THRID: 6395900241087823872
X-Received: by 10.28.46.208 with SMTP id u199mr93083wmu.1.1490136747294;
        Tue, 21 Mar 2017 15:52:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls44407ljb.38.gmail; Tue, 21 Mar 2017
 15:52:26 -0700 (PDT)
X-Received: by 10.46.83.23 with SMTP id h23mr4020375ljb.24.1490136746128;
        Tue, 21 Mar 2017 15:52:26 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id q207si1327945wme.3.2017.03.21.15.52.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:52:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u108so24528137wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/oboh8aGEUlh/cD7KDmc5Ovuklb4TAfQ8/sse7H552w=;
        b=F3ZvtI6G1qcbSjdGWFJUml2E73s5Ysn8RAPx9ohhd4aP/uuXR87hVcVOkHdh6AR0Cd
         4aoo+8ld9drQJpg1X/BsX5Gescn89ax8KaKIyMNiFhcoJI9UUjvwqbX0J7l1ymEz0yfr
         dNy9TdgW9dW/qUmPGx6PeNhJLiNv/Z3r6L1/Wd6EHaHTWRWMlny0PAPHOFc+6gb2pPGE
         MBRBeHMe2lFvdW/DXjS+9If+HowJDeHjPs3HjIkRQYL6WKG9kMARlKLVdepLBtUE7Iuy
         rmRuxSZoKc5s0IidzJuvieCqTeGJgF71Bj1b2LD5ZYvDQSsKHtJARb54hNKVgVMy77AC
         7xcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/oboh8aGEUlh/cD7KDmc5Ovuklb4TAfQ8/sse7H552w=;
        b=s6h6eFCn2s9vOjqcYGN3iaN5BWHZy+49hUUxf3o6zeNfHEn3rKTRRfqkCHW8vlBIbE
         i7kU6z3Bs38ajdRO2wV6MW2k5ZrXm5+jkKRfP9JrQo+nuSvJ8DhUV2OX9/KhK26vgwEr
         RUt2jEJ+MFIIi9BqAHu/FXXqRzCU8DziwS5s7jgfjJv/vVgxUCuzrZjpQt6MJbZHGGvY
         uH81NRoCM6le7Ew4YeA2j7fXyAcs7XjKdgkugvhHCugJAy8qWJKIUTR8Q9ydBzi4so9X
         SsLci6AUMJUz/NkBmaQisbVCSARsT0iJSlPUj23tYdatEYuoDFwnpiiTokpNYpyADC5M
         ALAw==
X-Gm-Message-State: AFeK/H1fAeJ3Z7nXZNlbRpOmkOsxmwZtD8jBlwn8iKyAndXRo0SfkWFj/2mAsHgrqDEHTw==
X-Received: by 10.223.135.47 with SMTP id a44mr35543461wra.197.1490136745885;
        Tue, 21 Mar 2017 15:52:25 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 134sm17207186wmj.6.2017.03.21.15.52.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 15:52:25 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 0/4] staging: rtl8712: Refactor conditionals to reduce indentation
Date: Wed, 22 Mar 2017 00:52:04 +0200
Message-Id: <cover.1490136448.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

This patchset reduces indentation level by inverting if statements,
in order to clear out the error handling code immediately, and then
continue executing the function without the excessive indentation and
additional else branches.

These were found using Coccinelle.

---
Changes in v3:
    - Improve commit messages to better represent the patches
Changes in v2:
    - Make the commit messages more clear
    - Improve layout of the functions 

Narcisa Ana Maria Vasile (4):
  staging: rtl8712: Invert if statements to reduce indentation level
  staging: rtl8712: Invert the test on check_fwstate() to reduce    
    indentation
  staging: rtl8712: Restructure code for clarity
  staging: rtl8712: Invert comparison to reduce indentation

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 135 ++++++++++++--------------
 1 file changed, 63 insertions(+), 72 deletions(-)

-- 
1.9.1


