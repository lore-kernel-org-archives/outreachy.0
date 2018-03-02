X-GM-THRID: 6528283603618496512
X-Received: by 10.159.35.17 with SMTP id 17mr2248541uae.12.1519986876752;
        Fri, 02 Mar 2018 02:34:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.47.4 with SMTP id x4ls1028331uaj.1.gmail; Fri, 02 Mar 2018
 02:34:35 -0800 (PST)
X-Google-Smtp-Source: AG47ELshwUmm/RfUQ7G02Q159DpD1lD/Vckrx5RDD5lMrPr+QxE2ecne9zrEZQTLvb5iLW2nhW9n
X-Received: by 10.176.21.174 with SMTP id i43mr2272618uae.125.1519986875755;
        Fri, 02 Mar 2018 02:34:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519986875; cv=none;
        d=google.com; s=arc-20160816;
        b=M0DROfTlY0yij+Ne7ecYwxB6KJJGNbM9h/zbTsdVKoBLkXa1X6O+VVVTX+bpgO+hH+
         iuouo5fZgpx8jt7zKcN/L1v9zZ10IOf9PQq0yZrQ/KOJ7QgzGLCl5c78v3vYcLa5xMeT
         MuOImcGoc2q2pb09na+FeCYWvWcjjydOCpKwaq5tiFoTO+sO6x7lguP57bsatcliBAhY
         Tc3eSvmrU80h2cu/0MZ8pli5bEcRIJ4VlNyVq/dS0FoOgZezJracyiGlM0f/renSxHPZ
         IYIfIX2d6xfCYz2sjKR8wm83fZG4MWQfEUltPYU0W69JhHy0hpLx/4TsDgBU46fUyxU/
         AXTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=kj1hMeY2HGTTGjwTg+4m0aJIkdU1lmTwE1hZlv++Juc=;
        b=wVN+bbM4FRRh2Fb4bomNPMVTbjDP2pmEsr+EgYERpujsCTh1cCj5KIe/QCP6GJNB71
         NHkyF3XjXnlrhFtRUerzAEIVVcUYrewHq9YN6VFnI6R9b5mXQioheRJ4tM26PMN9KtXE
         3kdXKS024ATHQ+cyZZZgwxLSU5ww/eelvTxO5rT/ewWE1nI4eFzhSoosHUSJnBomkAch
         cB3F5v5OlEJRQOs82pDcQDC1lvjoCrEIcLs6Aj+ZEXMvE865NnL07rVcRDmWNbtx9FLJ
         uoZokVgClSqjQfwQlE1APzl84yU8EpRtwqjpwyODYcXN6zj8TZ3rfM3GwD8HgswG45nk
         dC2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=krJBt1H4;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q126si411068vkf.1.2018.03.02.02.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:34:35 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=krJBt1H4;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id y186so3836839pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 02:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kj1hMeY2HGTTGjwTg+4m0aJIkdU1lmTwE1hZlv++Juc=;
        b=krJBt1H4xiZdWnnmdsLi0UWSiUUJWe6008LTpE1KTXrDYBbFc8Q7TG+6QDLkMJaWrd
         LNUQNlLyGbcISPz0MnzhPVLGYK5ZigYOvv8zTYObKVMs5EjDzErhmDLHy/Aj53Ly/Da1
         JqBIrjsCHxnEKaBJz8Udw505Zje2qzTpV6KqUVuIgXp4YeocqvzImsI224UZ7VW9/Ppe
         pac3VF3fYyOFp7URfo8maR64LCD3wEv4WyXXkJzwKdCJcycP9aC3QqZ4uJgtobewGqbA
         SuiPriRXNciC0JwQedIovQl7ecgzy/lEVwz6d6BTTvrztKn+vpZhLkRb/0vUxMjl+/Dr
         uy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kj1hMeY2HGTTGjwTg+4m0aJIkdU1lmTwE1hZlv++Juc=;
        b=g7NES2JNEqDam+JqhuNQjnUDUO+Fo5HFF/tHWvdZDtnuYAk6YnkrB73dQsOce8ZYE1
         9FHqpJAH/c93gQACEfKyriz7VE4Bi+6ehhmF0rr5/91KnopE115krfIPbaryHbAF8Di0
         kBSgS4J6AomheuExaOk+cMf1etaZUNSjpNK/DxSu0vfvxkUgHo/AywLLy8Z4ip/XU4w9
         9inBX1qn6ap9FBzyJjJyiPSzvixQUw47LOeqTCcP+ChU7STmcr1I4xObHvMslJt/mflb
         KT6R5z+lcgQUk1QVAGxHt0iaanpe9kkI8ZGLWxRd5U0fGq9p1Cl14qC149+ctU67Navh
         LwlA==
X-Gm-Message-State: APf1xPDgkLglXWIafeOW4Bn0adb3wU09BWEChU05ZSVW5mD7wLRdv8Sf
	CdaJH0z6CW7V1Ti6KqPAeIM=
X-Received: by 10.99.114.65 with SMTP id c1mr4314148pgn.314.1519986874861;
        Fri, 02 Mar 2018 02:34:34 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id a14sm11452184pff.75.2018.03.02.02.34.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 02:34:33 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	pkshih@realtek.com,
	Larry.Finger@lwfinger.net,
	devel@driverdev.osuosl.org,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2] staging: rtlwifi: remove condition where it has no effect
Date: Fri,  2 Mar 2018 02:34:03 -0800
Message-Id: <1519986843-15290-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove condition where if and else branch are identical.
Issue found using cond_no_effect.cocci Coccinelle script.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Changes in v2:
 - Change commit message
 - Add new recipients

 drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
index ffff5b0..5b82640 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
@@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
 							     NORMAL_EXEC, 5);
 
 		} else {
-			if (wifi_turbo)
-				halbtc8822b2ant_coex_table_with_type(
-					btcoexist, NORMAL_EXEC, 10);
-			else
-				halbtc8822b2ant_coex_table_with_type(
-					btcoexist, NORMAL_EXEC, 10);
+			halbtc8822b2ant_coex_table_with_type(btcoexist,
+							     NORMAL_EXEC, 10);
 
 			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
 						109);
-- 
2.7.4


