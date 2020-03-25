X-GM-THRID: 6808156641040531456
X-Received: by 2002:a0c:a044:: with SMTP id b62mr3515397qva.15.1585147492114;
        Wed, 25 Mar 2020 07:44:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls873019qtc.9.gmail; Wed, 25 Mar
 2020 07:44:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsBR5UqaFdeu67kuR0M40gZbSOtB/+jV6+skKchdrYoV8XC5EQ+ysb7+GyjwRiKw8hbL97B
X-Received: by 2002:ac8:6699:: with SMTP id d25mr3221027qtp.153.1585147490598;
        Wed, 25 Mar 2020 07:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585147490; cv=none;
        d=google.com; s=arc-20160816;
        b=CyMvjssmEHUg/97mC025YDgXqGbiZCWyrL3nBsgjYw7lV/dfM9zCwS1+uZjdOJXBBm
         xqabkcVKJn56h+ji1v/cIFhslejvjUaUm+8Wdc3F7kcSRvwGF4Obxcgt3k78smBYvmZw
         qBb6JqhpkmbSy3DHZa47SCX2FMrVKU+SPXJKDNJ47R67DmLPEqhKeF+0itaDNH7ZCcHC
         C6vtRkZDDi0K5gJ7dznC9N1Hzs/NaT3/SVh/82bkOtDlyc8r04TAam9K+/AcEBCJHB44
         lu1/oHmUiZuGzHQljKwd763J+AWwJnfRwgeEtyy1nFrHqqGeLYDjN/WWrUr/5RZeOC8Q
         FC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PhmQ8nthDAh8TK8LJou8S5MNFtYBMTHJsBZjiIoA1H4=;
        b=ReBCHQ3tZDRpTwad8Jr4+GZv9WU66COPI0FBQjlG3J4W8TJoDWRmf7stUBTMDWMiQH
         tmR/0xk55j/sh4bKsEexpVjyb9+xppIJh7pPL06VlkEsLGi/zompD6bPyalqucqeu5AL
         DvaHacMbnGsTgp4LkcxML1F9gg5mcXx5Hu3ZB0uVdDb38+3GFxUHjEl2u8WDZ5o1bFGa
         zl3f3VNSK9WY1ak5dcsR5DqKysTHG4HZfB1F5V2MWrTP01iuMzTi24HqbGg7u5KfabdT
         aSWep7lAy2P7nK07PDUDDn0MOXbxD8xwvqotZUV1sgxh6nPQqqlMgWy7H0hL2RqOjZcm
         xAJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OVvFp8YM;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d34si1408255qte.4.2020.03.25.07.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OVvFp8YM;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b1so1233610pgm.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PhmQ8nthDAh8TK8LJou8S5MNFtYBMTHJsBZjiIoA1H4=;
        b=OVvFp8YM5axwEn1z0BDANHA6DiBb8AjCG8J1wikFkjpDd9OLC9mA/fSCDhTHvBUuvU
         rNdKxAYQDOBdQKCMCHqlr7sFIdIrGnfwgZWXM/mcubOT1gM+mIzhNxFr6MpPS4nqW9eH
         ZgRehH3mVzgeH+0/Crt2mgCEavXeJjiZj+RC5k4E9xdIxLhb+iTmeSDSyJEZ6dsoWLoh
         WTcxlwNqGSZYs6qO8mncdjSC9MDh//CAtb4mefysYoAOX+Vom5oCIozaD76JTIez8Qa8
         IgnmUfugMWwQJaiKLvsHoTDp2G3/4SBRbFHVDRion/+K/lMyMF2H+OgxFBMwluxzsqTh
         ipKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PhmQ8nthDAh8TK8LJou8S5MNFtYBMTHJsBZjiIoA1H4=;
        b=iHuM59QPbNcLWco3B28caKpIsNBMLdN9ajcV0pZBXfF01y8G45PgC+aJ3GwlmbuPZs
         o89FWq9RyalwQ4YwbzMKq3BHmh1NMn7kICOPM2wt2sfVt/9Pj0kbM5bd+yoRlymZpX0n
         olYDu459IUHG/nuNMntLStVj3BaA870pV7PbF3SgZTvy8BbxwjjxTZl6xwO1T4nGo8Uv
         UVp/9w8eTku4odPj/3aSvjmavpiYHsYNj69CgQzzz+uKHeEAv8KUH1/HqAUPBwba/95J
         iGt9h8BAifOGAY+cpqk3g0J3xgbDCMUrsouY2oaiahXkjqKnlu/MwJLuAvz4RdqGZPfk
         4MnA==
X-Gm-Message-State: ANhLgQ1NbtoYo6N9tFHkDcyL/PGWpJuoO16V319TbngR5EYZXgb9zALJ
	kD5wFttLkHEqF1M79CyKHYqY9g+gd0nIWg==
X-Received: by 2002:aa7:8696:: with SMTP id d22mr3751596pfo.54.1585147489258;
        Wed, 25 Mar 2020 07:44:49 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id w4sm16864102pgg.2.2020.03.25.07.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:44:48 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH] staging: hp100: Add space around operator
Date: Wed, 25 Mar 2020 20:13:53 +0530
Message-Id: <20200325144353.42655-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space around "-" operator to improve code readability and adhere to
the Linux kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 31d1ee6182dd..c743eb51da38 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2942,7 +2942,7 @@ MODULE_DESCRIPTION("HP CASCADE Architecture Driver for 100VG-AnyLan Network Adap
 #if defined(MODULE) && defined(CONFIG_ISA)
 #define HP100_DEVICES 5
 /* Parameters set by insmod */
-static int hp100_port[HP100_DEVICES] = { 0, [1 ... (HP100_DEVICES-1)] = -1 };
+static int hp100_port[HP100_DEVICES] = { 0, [1 ... (HP100_DEVICES - 1)] = -1 };
 module_param_hw_array(hp100_port, int, ioport, NULL, 0);
 
 /* List of devices */
-- 
2.17.1


