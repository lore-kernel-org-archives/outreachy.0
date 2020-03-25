X-GM-THRID: 6808080746625892352
X-Received: by 2002:ab0:2553:: with SMTP id l19mr1573965uan.128.1585129822490;
        Wed, 25 Mar 2020 02:50:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fd71:: with SMTP id h17ls170772vsa.9.gmail; Wed, 25 Mar
 2020 02:50:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vto/IamidZChHf7wWMkcZY/ZJjS0iqyhC6Qs2136u3ljk2aZ/jA5KPDEkJiztq2MUDfeY/F
X-Received: by 2002:a67:b001:: with SMTP id z1mr1962629vse.82.1585129821429;
        Wed, 25 Mar 2020 02:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585129821; cv=none;
        d=google.com; s=arc-20160816;
        b=UZl14+4iD5bu8EG1Hz6P/Ky2wIF5KB2ZBIX0xnxzfzvsxB+zGV52Xc8BAcVkSrkaTt
         bJUScCFckjvY+YyumcRbEuzaqZDsNIh+iOn6pfsyZKd3D/4Fs8B+Yk3EvCM+lvTZY4SG
         wtVKBHsjB/xR4J2RHLcTi78h1KIgPas7CurIuQd6d6tceE2IBe1egPuEnVA37DUtWfbj
         S7rLUQfyIsTBS0Ezczq4PfmbuPJz0sb3Q6jYWXPWyhjQ4Nbu2KX5E7uAwxwI7qm51bx5
         /6RhjvW5t4Jvx44WqPwv2R3z7HJ8q+IFPwj7na0CgYBemvL44qvaNNwkacnrPxq9RT9X
         PtZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hSsXe77LuzYGJUdPUTX8N8X/SF22Tho2fdnE7o4K6o4=;
        b=DgxJL4fg97aTL+9gWM++2fNdR8Qmn8hffv6jiXBak7KitIMQvdRdJ0wSjwQ79dckkH
         6scCuwp+KWlWSuGeh8erbtC8ILGlVXgSeomHqnZUrLHDu/Zg/uBH7LTTgddUfMse1ouI
         CV7C/BMTGo7Fo+KopzstpmMLLgqpUE9HtQdd1k5oVERbt0kWzeQ/51NUOAZ0TVE2ktsr
         yGIr3Lys/YPbWo/ogiVxHjQHHC2Kl5hH5LjdGoVx6XkvK+wgnyYg+BwMDmTD1Llahya8
         /XpRtp3nav47EliAUtEgji3daXmCiBgpENhCXrOZNdZg5HxzqwrwG4M+yNg9+veoamhN
         aWgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WHxN5iwM;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i13si1600763vkk.5.2020.03.25.02.50.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 02:50:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WHxN5iwM;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id q16so2170964pje.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 02:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hSsXe77LuzYGJUdPUTX8N8X/SF22Tho2fdnE7o4K6o4=;
        b=WHxN5iwMnOD32lXJsWQwzEITQx7Cld7fja1GqQX8ckfTs728Lur6jSB8ENUqaM2gcO
         WaNZK4odGJJWUGYvfH6Jk35MeeWSxrxjEOn6FVf6s9HqD5s8iS0ZaoYoFD29Y9//0I1H
         h9fiT2nA1BihOeRgBoKo/f9rreYE5y8sWygeLD43Rqc/bBWQu5mbL5IR1kbsS8gkJkf7
         uSILnyquI7MEgK6hKSG2nRZTRWfOabmPRHBiMSApkSwh1UbcvW7dCkrpqtPde/FY7nTq
         phIiDI2gQ0ayztuZ2/fZrOU7t8b2YWMk2nc2kFqus4gnjUIAV21IJ2sHNK30O1bQnvSc
         p6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hSsXe77LuzYGJUdPUTX8N8X/SF22Tho2fdnE7o4K6o4=;
        b=BHmKcloqEFkHWAPjFz6b3yBnUZ4L6m67GQlrvRODunL1pQsfd/2paXvwiILJnbJnlz
         9uDb212C68oqIqRSeEgLJ4LROuJQ5C66uCgg0qO7lX9u4SiClNjRlZd6BAk+fFT4U89R
         wHTdGmt4gilINJTAO3vi5HY7R4pNDGXkA77+JhBjlVaknRFasyuoTXRD6ZqZ1FwIn0Wq
         kL3hzdIsNZxCzJ9Xo3scjEzE2P+QtQ42UvbrInaWSy/j7Uulb/kUXKXgzyANntxcZ5OB
         42+8LH22GhAs/cgZ6y4iZpDWBWRTI9cphkzOpZqEf79ovBzfFH7lDGtMFndWTnk8LSSA
         g36A==
X-Gm-Message-State: ANhLgQ0tBWVJCYrpfa8CRm3qmHzDsQUDFImdTVOzq6StC8Ms0ScSGAjV
	XNOBryCwdsZNhnpAPud9zWad/arj8U0itQ==
X-Received: by 2002:a17:90a:30cf:: with SMTP id h73mr2838476pjb.189.1585129820003;
        Wed, 25 Mar 2020 02:50:20 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id f22sm13038700pgl.20.2020.03.25.02.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 02:50:19 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH] staging: hp100: Add spaces in if statement.
Date: Wed, 25 Mar 2020 15:19:51 +0530
Message-Id: <20200325094951.33508-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space between if and open parenthesis "(" in if statement to improve
code readability and to adhere to the standard linux kernel
coding style. Also, shift the next line to the right by a single space
as it is the continuation of the above if statement.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 16fe9c7879cf..926d0b51ddb2 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -556,8 +556,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			 * can map the full 32bit address space.
 			 * Also, we can have EISA Busmaster cards (not tested),
 			 * so beware !!! - Jean II */
-			if((bus == HP100_BUS_PCI) &&
-			   (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
+			if ((bus == HP100_BUS_PCI) &&
+			    (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
 				/* Gracefully fallback to shared memory */
 				goto busmasterfail;
 			}
-- 
2.17.1


