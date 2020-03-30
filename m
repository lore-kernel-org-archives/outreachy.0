X-GM-THRID: 6809468497850007552
X-Received: by 2002:a9d:1b31:: with SMTP id l46mr10085387otl.95.1585607850806;
        Mon, 30 Mar 2020 15:37:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:4557:: with SMTP id y84ls1877365ooa.8.gmail; Mon, 30 Mar
 2020 15:37:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvR+f5QlT1Sdp+Q3yI6BOlRFUTUTNqM9+09KP1HcysjNH/tWlOmtQWpHHxpfOKt5aowL57
X-Received: by 2002:a4a:e217:: with SMTP id b23mr11407065oot.91.1585607849770;
        Mon, 30 Mar 2020 15:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585607849; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbmO8d53DFIRbQ7bmWlblXHs9tQ/NKkfKhoMAZTU96yiGcpZz2JJLqS010XO034FhG
         nb2YEQZcHAQc9/9erhENsmxyfbNRYyrF9l7StoGVdPAKkf9gjl15Gwg/53BbTD3NXHRn
         QuPx4s0ky6KP2c6mV7o0SfgNm4fNtu+rghtITDde35OQcSWBCJZGlz318ejxJmdswfXH
         0k8kvhEMS8DWxwRsw4WviA982Gp9zJTnbpanVM8o3FpDUTcE6Ab8CO+FfT9XlqSO8uNP
         e/2ghPc/T9izamM7UJRHiTdzGZYX5WJ8jYeve7S+j9kJuWGsEBh0I2TI5QoOAT5LE2B7
         y4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YkvMuoIYK/X5jlUXAbGp136wP0Q9T5tr7KcVd6q5dxI=;
        b=kLv8GtLpWTCTiwcvqgHlqXjNgX6at1L3pDKH3YPdKRxbXxmklvZdIzW9bknxeXx1AB
         kcCM0tqIRWWAK8I/3w+VTjLHbIs2ep4WxKNGt/VtJekDmCxeCzWOB7drKBoEZJIJb8Fs
         nmXbiByuJUv5d9Mn8yGYbSCe6KgDyo/oK4jhfG7pcefl+Edsyc1y81pl/fL8Wbr1T5Z9
         OBofUGqsggdbkAdN/A16RCLpL2zXwiolEV/9pR4bArGEhStXjlew3Y1K8oU5mGdhJE/7
         X2qfwozT0H/Y6fnT6+pOSX7y8+NAo9JULQwvg+BzjH4Qa82XofC6wYSmBa6mNottRrjN
         UnQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SYt0aT//";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e21si1624783oob.1.2020.03.30.15.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 15:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SYt0aT//";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id d24so3497463pll.8
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 15:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YkvMuoIYK/X5jlUXAbGp136wP0Q9T5tr7KcVd6q5dxI=;
        b=SYt0aT//aArSMQ/UNzfekQzd0uvKBRqacpgJcWiAUN7HREbwlIsEVwcinfFwcBTEFA
         /fI0lPz5LZkn8m9qzEqPVK4DtytYMrndVNcN37GQV3SnDVElPUpPs5kwj99gYr8rE9Uv
         wK3jp5lDTiEip7wtN1BvRmYG6Q73TkRYHgW+nB3JW6Q2kiPaq6JlK8yucO6wsGc7weFr
         5MWJgKScJEl7yYRkpxIJobghTWzpJXGHqf48Lz99CpLNLM+KXZXl71l3XgoCuW2JY6LR
         NIvvbyxcFjKhs+ByXJnTOna1I58jRULZ9ldefpACM0lclCci8ybYTqNKiSoWA1od7QIz
         Yt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YkvMuoIYK/X5jlUXAbGp136wP0Q9T5tr7KcVd6q5dxI=;
        b=Ru7Zx6uxmQQiDqrr5M/FTULfUwLvKg62vIpRq7zh8py3bZ2WOXzwGgJ5ZVSvDOPL3M
         aBbEc3n1GlR2g9e42WH79sqBPhSoMU+BGhxVPAbuEkWvHS7i9dOeuA/OJAmo9OQaI7I9
         T+QeczYKb3EQ9YD8LjiZQxRGTcErc3Ww6JqJOvLRUHSnVRnzFB1nX/HTuQ+//1Bs1lWm
         sgfu6YjMRjxAcoj0JjZ1jCc7iVtiwajioD/dQnfXAPZjAY/tiTqMWfcMOSXVrNvROyio
         V1VgnWwEQkMtiEM3Gwz9Wt8nNa0aRstMAHgrjJWtfqKLTcUuhjk6jLkMWR30VR0xg047
         TrmA==
X-Gm-Message-State: AGi0PuZbrOwtMbn8doMoAWqw/L7VePiPR82p1sfjCGL3PQSO778OvH7G
	c0w7BxuZMoNQz2hiccVQGVzM9dKjZKRaEA==
X-Received: by 2002:a17:90a:240f:: with SMTP id h15mr385069pje.176.1585607848766;
        Mon, 30 Mar 2020 15:37:28 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id m14sm474522pje.19.2020.03.30.15.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 15:37:28 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v7] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 15:37:18 -0700
Message-Id: <20200330223718.33885-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v7: Move an if check.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v6: Forgot to add all the v5 code to commit.

v5: Remove Suggested-by: Julia Lawall above seperator line.
    Remove break; statement in switch block.
    break; removal checked by both gcc compile and checkpatch.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..df12c73097e0 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
-		break;
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 | 
+					  SOFTPWRCTL_SWPE3));
+		if (ret)
+			return ret;
 	}
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


