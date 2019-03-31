X-GM-THRID: 6674503359291981824
X-Received: by 2002:a6b:6f0e:: with SMTP id k14mr3657796ioc.11.1554028913046;
        Sun, 31 Mar 2019 03:41:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:a01:: with SMTP id 1ls1988421itw.3.gmail; Sun, 31 Mar
 2019 03:41:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzeMkIxgy5RthEg8wwxj5SvQu1zbTfh2AKF0IP0e62wF+L3yU0OhqfFTeSrmPwARj9qy31o
X-Received: by 2002:a24:6fcb:: with SMTP id x194mr4729370itb.8.1554028912402;
        Sun, 31 Mar 2019 03:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028912; cv=none;
        d=google.com; s=arc-20160816;
        b=j6RtY5BjkGfVWO9Jasd6ENh5PH50e+jRixpLhPwIvPLMp0r07GooYLcOHGuyOr59J9
         5wxAOOYklmqNjTROOL5knnrnqcdIDFpte3xAvH6Y9qjofYtICqz63IWZfAztd+/ZwJfj
         dA83pOISVTSQn5M5Y4f9XjBTqPkBCqOt2yOEvXT8o0KBIQezRrCmTRwUcrYP4QsYCyH0
         1N760QiHPs3+t/p9OlZ+vmSGo/5TM24oVggy09L4IJa59iUeN4UyEDVCg5P62hyeZXag
         wjyXKlrg0BHId4Q+WIOVwU74eMLtlamSYfj4DfIP/MCxvAoYI/tTAYKGMcu69SFND4+Q
         PFHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ePpoT0RWiHIhErNgZtkzyoG+E9uHZituRHtX/iLghKc=;
        b=M9nHGx25drMN2bdU4jS4WAEmWkZQcWauwFyNphqMIx07ShcnpiWOFJRjSSJx6eUkO5
         fe8X77fYktQaa5MPmy1hpO4LBKXgG+STExAvlPpDQYd+SH5n0iNysFm7tQftKS6hAet1
         xU8bv3u9HjobUcSFLebCrY1xsI7Owew89AgoSwNBacMLICp3PEe8XvpPqqticpUY3han
         oVJychIWQdinCsEALBdU8POLjmZGod0HqWqNgMQQYkIXHUDSIxqY/qZif3hib/nm3lSH
         hHmuMIKhceWI1wuRw8EopEfjfJy8UH+gTd94VKD8f5pPcTfS4nn7DOXTNAkaeHcwbmoy
         KsxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoavSljh;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l23si266041ioc.2.2019.03.31.03.41.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoavSljh;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so3282712pgj.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ePpoT0RWiHIhErNgZtkzyoG+E9uHZituRHtX/iLghKc=;
        b=AoavSljhZVy7zwCRCCqEwaDlLRoyl9XafKojqHO8weJiQxa/RIsf/sSoJ8yUpDc2U+
         YMav45F8f333soICB4oI3PDL+2n6ik9+YoDj1O582WuJt6weoptW84TCDtMuP2ppcTUi
         ra5SOo64uu/LLIoiV3vLF8csCQ0963kqoZqq80s5ff6z2D4rOfm5lLFcUjpSMA98wB/A
         lkvjyLMsUOXldxv5SKPmk46mA8IveuKAPkLQiJYrGDUD0480jk2TrDMUaTjaILcBdZur
         RHuEEXB7ppKQw6oOTF1RwNMKENpKSr+7vBT0kl6vKmOKk3NwxH3aPNuxxfMOg4MvaqnD
         Udkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ePpoT0RWiHIhErNgZtkzyoG+E9uHZituRHtX/iLghKc=;
        b=hCv3qMQp0OGZqzZOx+ocx51tfonTeWYxP+YjnydMj2WMK+3xUcP6qNX5HuzebP4AdC
         c6XPBrZ6DkuDJPi1Rjmd3K17VcNmBrfPla19+gUdlTaQp1Q22LzvJ7R6H1e5GK6Erti+
         fAX3MQN9xIygOFKw6JAkLWE7xE3QZu1ju8XHDNbck/bd5Xc3VkYtPKvd9gxilBbTBs2V
         J0pMAUbHDJIgCNANiAIm4W5vQqptvwqRZXRO7bgyL3PRCVdjbLuK2YwpugbF3MjRZK5V
         BTK7eGlMvbJP7gvpG3BHOgqT5JNVzicORzk5MVIOkZ3wk7ukYzHPa4YEhWj/LNWCIkfG
         DUiw==
X-Gm-Message-State: APjAAAXsTfq510oQFzbfm9nYb1vX5IBjJqWLv8uDppvNlEa8x467Mi6i
	0HZy1IGZ9Gfhc6QpyU86PtSIu7QTbJ8=
X-Received: by 2002:a62:6306:: with SMTP id x6mr55907953pfb.244.1554028911846;
        Sun, 31 Mar 2019 03:41:51 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id a17sm1495126pgd.30.2019.03.31.03.41.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:41:50 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove unnecessary parenthesis.
Date: Sun, 31 Mar 2019 16:11:42 +0530
Message-Id: <20190331104142.21966-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove unnecessary parenthesis around the right hand
of the assignment using the below script.

@@
binary operator op = {!=,&&,||,>=,<=,&,|};
expression l, r, t;
@@

(
l = (r op t)
|
l =
-(
r
-)
)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e9f10c2669ea..e1a892e3b3ad 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -695,7 +695,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
 			/* not consider of padding stuffs for oScreen,need fix */
-			crtc->oScreen = (sm750_dev->vidmem_size >> 1);
+			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
 		break;
@@ -709,7 +709,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
 			/* not consider of padding stuffs for oScreen,need fix */
-			crtc->oScreen = (sm750_dev->vidmem_size >> 1);
+			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
 		break;
-- 
2.17.1


