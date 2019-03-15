X-GM-THRID: 6668560476445605888
X-Received: by 2002:a9d:7406:: with SMTP id n6mr1290956otk.64.1552645227890;
        Fri, 15 Mar 2019 03:20:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:114f:: with SMTP id x15ls169646otq.3.gmail; Fri, 15
 Mar 2019 03:20:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwveIHSF1Ahhm20eCsaiewXEYAm0zZgPRuLWbuV50uv0gKcK25AtMfryncQTihHTh4Mr2nI
X-Received: by 2002:a05:6830:2059:: with SMTP id f25mr1289650otp.35.1552645227112;
        Fri, 15 Mar 2019 03:20:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552645227; cv=none;
        d=google.com; s=arc-20160816;
        b=ZicyS2eW25c2Louf+upWmz39tIpY7JmCLDeIcxrhZW7ffiKqdMxhLKnEDIkzIk7xtO
         2kEOqHxYIaSTXYJ4y4BIV7TNZDpqE50ky2BVfgrGG7xab9TKeHdP2N8gXN9sdfNUFc/p
         z30qv3FAVzG263BPtgysAk+BIhoiJcKAdpP9guEkjqbSHaT+GRjQ9y1CzbZl1Kyq/QlT
         WPmDWkecxx2brd1Ti9LpVkR9imr3h5ZCB1UK0Dpak6sp5G6SmOkbYqACnslDjOq57Yxj
         mPkyp82rBhrjcZRog5nT8xpzpYYPlTgqvuCBzzReEU4XXQqTbkP93mEcNlkl8ITtGfe9
         QMzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6CFH2ADK4Al/uSwfNSTGz+3Dywe0AXJc8vPPYzvXKYk=;
        b=ABzoyfofvzvvCUm12+KUD40zxto/FF1iXRIWhAgWlJmuX7Sij4RXgkmLX2YdseDA0Q
         N8VDZh2m8+LeV4Q5hBq9vPH8+JC1dQ1Q3T2HIR5AxJvrmQmI7KBC41pBKR84oMDlaEkE
         LifXREbo3LQcplnW46fz6T4hYoV+23PtPwhHdOC7rEFXrhRcKeH9yvF4mHQ8Xs8zHTBk
         Do8yXocOnB74Jn2PflhMlRQHmSp3AMH6GQlmFp5iJhi9tJ8s2Exo5y/WS6WyeH5OJZqI
         qVzRynqqDkLLM7apn/2JdNfKxMJQ9/mPGTeA9KZcVZVZ5US3v0jx38TSfxlZV9D7dSk2
         xkqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JfeOLuas;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic302-20.consmr.mail.sg3.yahoo.com (sonic302-20.consmr.mail.sg3.yahoo.com. [106.10.242.140])
        by gmr-mx.google.com with ESMTPS id v129si54012oib.0.2019.03.15.03.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 03:20:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) client-ip=106.10.242.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JfeOLuas;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552645224; bh=6CFH2ADK4Al/uSwfNSTGz+3Dywe0AXJc8vPPYzvXKYk=; h=From:To:Cc:Subject:Date:From:Subject; b=JfeOLuasLHPhBrLGvFKSqhhsFyfDUTSAUYjnlirw0ljJYZwF3ekBeHVzUsatJM+dmkZgZL+0Ga6VU9QegQAvTeRrXuiEYNkY6vzpVo+WHwtKHgC60TsjTiiS5ZLH59yvFBXIviBNBKxzyFbCW4ycWYnavMUFGfcYXSMgcOLU6ZLVfjQWq8gFg5By4650lLmNfuZuLjamP6gJ1T9OKESg56+Jow5JjuZYX5vAM+iLi7NSrrpQveBAL9tO44YYRfa5Oo4fSxV0xnzIXw9Pe2f613BzFDI+NqdnK4+tN8paTdzeIstKE8uKKzS6oFoDqf4aZMIdysZc6KupRy+LEH1SKw==
X-YMail-OSG: 5wKoCXcVM1njxfnCND.P1K42LPMWIceCHbIAdx7HG6A.VKLdeSmqhuTASpbW33V
 NxICNi1BmzJ041QizxyjBoc7mSvzX1TYk4Jay9tEIqTp25ri3ynEFLG_egaUuiEUrpvvWyDjR9br
 pB3c2MqtsixgVdPhi.wB4umHNuLwjwEXTtHIruIPWYHkj479YeGOztuLLJWbZt0qk4uMHJaLX.Kg
 YhzeACBmlkMdTORLSkq2O7RdtElY40z74L.DMCRE5fMCYR51kFz5wdlahe6k2rFCwBih58RN3sHx
 ZJHKm6Q.lR0doJAbxoyYJlxgqpGjeMk3kdQa8cOJk3Btowca.MqLb3mvKY4byGtZsMKpQk7xk_ha
 nPufixFU3Ai8nifEAkHjMqc0MYFfeh8ARiqOjz5EmwOil6YwM574JIKKJVhXkBEM_SCjFJ4Dn.WX
 mujJdOf2ROiPjQEtiWJfcijeeAerj7pK4qJ.ajHwtW_4Sf.YqJD3Q3FRHV12oZ3vhUZdvxGjY88M
 eb8XUuO_dbtMuNcbZBbXXSpd7CzSuxub1hc9kqPeDEEdOiQvLbbah2z0Vx15qE3uYRZ7X_8HT_K.
 pGdbudkVbvwvmlC8VLWCMjJRAi1HuFjqQb219sfN74Qy0HFPE_j3qiT.1T9rR9Tg0d.gdPx.MG4F
 1z.EUsX3tNPT2DeqbhQQ2IgqQt.jeHtbNxkzZPEYViExqazY9fWRX6TrTiFZXxAocNyuPq0QLtsH
 JbeYOnKXW2M5nnFshNFHludmC74u_iTU1ladtgf0A9VsP5ekhe9ar99.xN_OZBCK4Zk6JGH_fJcm
 5BFIPSaXt6a9vlsc0Sr_ePHaA_fzlxZRQyOpsyO92vWwsL_yJL3Aj6F97WRNVvVOR4CcHop0J6o4
 6PWIGo5Ejv1np3vlOTmN8BQDjh9S5uBmCnyPsKQvm2saTcddT8yCY1.n.96Ij89EgCy3IFga7GtL
 ifUCL4RqT3W9i18NBhM2HTl9bQEIr7VumwqPwyNLi4k6zqmtWlYK7ZXkTrr_gCmLU_b3f3o7fzBZ
 Odim_XwmKG0riDJmaBoSQA0t4cBe8BvgWOzSgbM9xpWLIu8Eq59YtBC69QSFojtdes104vrr7fpM
 JdlhM2ThHw3dVPw9t89Vl60qn_.9.1ER7rA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.sg3.yahoo.com with HTTP; Fri, 15 Mar 2019 10:20:24 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp417.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 3b0f314cb999da8ed993d5be2c11460b;
          Fri, 15 Mar 2019 10:20:20 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: sm750fb: Remove unnecessary function
Date: Fri, 15 Mar 2019 15:50:07 +0530
Message-Id: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function sii164ResetChip() as comment above it said "below
function is not necessary".

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
 drivers/staging/sm750fb/ddk750_sii164.h |  1 -
 2 files changed, 14 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index c8e856c13912..8884ef927893 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
 	return -1;
 }
 
-/* below sii164 function is not necessary */
-
 #ifdef SII164_FULL_FUNCTIONS
 
-/*
- *  sii164ResetChip
- *      This function resets the DVI Controller Chip.
- */
-void sii164ResetChip(void)
-{
-	/* Power down */
-	sii164SetPower(0);
-	sii164SetPower(1);
-}
-
 /*
  * sii164GetChipString
  *      This function returns a char string name of the current DVI Controller chip.
diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index 862e7bf27353..1f7b5f9c1885 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
 unsigned short sii164GetDeviceID(void);
 
 #ifdef SII164_FULL_FUNCTIONS
-void sii164ResetChip(void);
 char *sii164GetChipString(void);
 void sii164SetPower(unsigned char powerUp);
 void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
-- 
2.19.1


