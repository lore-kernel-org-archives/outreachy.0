X-GM-THRID: 6673442126229929984
X-Received: by 2002:a63:dc01:: with SMTP id s1mr727676pgg.10.1553965953522;
        Sat, 30 Mar 2019 10:12:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b60e:: with SMTP id b14ls440110pls.2.gmail; Sat, 30
 Mar 2019 10:12:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqye9SQzjdaidKq5MTS6hwMYeDLCCXNh2GH1qj5QIahWnJ4eVfTItIZEh/Y5ZcH7SOo6Mmys
X-Received: by 2002:a17:902:20ec:: with SMTP id v41mr1389359plg.103.1553965952896;
        Sat, 30 Mar 2019 10:12:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965952; cv=none;
        d=google.com; s=arc-20160816;
        b=kevc77F2wtQdnKmx0nt2TMJO052yorCkAb7o0vM3glPt3cLfQk6wZIL5/qwrZs/QrM
         p1Nxhs2SkcZDjgk0/DJedPlSQNt4Id0Thq2CRQnlup7SuX/M/Glly4nSmMpcVmlVGOqZ
         UVZLkMkUFGn3yBD9CiCkMyexeyBaamXp6KM0oMrGs7JEA/TgRaD0hbD6lK9cU2f9bu6V
         2+LkEvV7QHe8KvfWxpE0XszFpo6/T1Mx49qUrSTayyYSyno6Pe0xlLgNZ2rL2wODEjjb
         zNrPkwsH/Wt/e0fka4/XJAYWjpxdDFLWUy8X3DNiWfzJLayS+58dPRAXAJIZr3/GnYO1
         syAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=vm2PZjCtXNgDrn4PatStt4kirWyHyHARVSkEtUNgqzBm+61c+THc+ATFo8XgeLs9p1
         EgCXWCZuPN9ApI8G9iqviiZDvOeYf4zTK3yh7eujYy9ERD4x55eSGydDXjAP+iavuvJC
         0/poOdNmKejgGoUHreZBKUOw0jPZcF+3zkicFb9QTWpOTJcJ8r7D8mRRBMBmCOlZz7IV
         HBYhGiw+20shVkYhcxZlooF4izIjWY6kybuQkbI9J6pr8edj0tykPlYpeWVcq6+V3vMA
         GNRvQR/NbmFV1/Zn7bPouS0pBx/sdaNKnQK+JR+Oo/Sf/bvaTbn08bn7SUuli9FO95CV
         2+tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dL5OZScC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b38si354393plb.1.2019.03.30.10.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dL5OZScC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id p19so2472474plo.2
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=dL5OZScC927DzBRxf25dZDsocr/GkWvZ3dWovoxZ4VrZeYJS2byWhxI3zzDAiG8c6h
         hEhL5mLvPDQxW0CDZ3EQJO7E41AgmGNp410p1wXRiAkxTNkuOT8biSnw2KdhgXnjJ6Ge
         hIET6bx22QEv85w2jFUbpjwGKsJHW0USqJKrm8S1fuT9yBE4vTwTNAjxHEpolADVd2w2
         pj4q0pyMPG6uHN22RUDJzUby4uyYT2ixCQ3wq+Kf/RuUbL+51C8dnP1xl3jIZq/24B1V
         +dhb1GunV8rW3oWDkK6cbGIJztRflJiXpjyzERh/Q3SFdrAe8J/J4D0dhMmf3+Ply07f
         HD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=jc4qyALGDPln72csrTvtrwOlrRqjxo31gzaWOTAIOG3KqzwzIm9xmQbYGVkXaXf1Iv
         LSlFKlWgrqiyc23MwPRHw30SmPjOrqHYiAGJI1cfmPeh1/FX4q2h1xe+e6Be6CXY5Rsd
         lov8jOBeK55zr64DYe38MBy4phCnm0lcJjXPFITtXnwmf4GvfNu9pRBVZPR8lNX+za/W
         nyyYbwPRPsCGiv1I2RYmVeDKePx2ADPVdr8XtMPAawhJPv507nuudaPo7YM+VqOqk1GN
         hVFzVvAYFNizR8GlO/UQz6QXiblTBNV4Xecd2+s58jffYJfVhArRSnVwSSM8n35NjF+9
         RLbA==
X-Gm-Message-State: APjAAAX1D6Fgc8hRW2zhuGGDdRFT3xFRROqVy+xR8eTpeJ7t+Q9Gr1LC
	cfJXOc5h+h/bERnPoxhgMsgAnNpI
X-Received: by 2002:a17:902:8a4:: with SMTP id 33mr54200840pll.7.1553965952389;
        Sat, 30 Mar 2019 10:12:32 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:31 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 4/9] staging: rtl8723bs: hal: odm_HWConfig.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:51 +0530
Message-Id: <1763d980f8c5922d710e7c2da7a26c0c4a6091e3.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression, add spaces around
operator and remove trailing space.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index ee2c293..d802a1f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -19,7 +19,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 	else if (AntPower >= 0)
 		return	100;
 	else
-		return	(100+AntPower);
+		return 100 + AntPower;
 
 }
 
-- 
2.7.4


