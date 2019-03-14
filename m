X-GM-THRID: 6668261535001870336
X-Received: by 2002:a25:2351:: with SMTP id j78mr17273941ybj.36.1552575625019;
        Thu, 14 Mar 2019 08:00:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls446553ybb.12.gmail; Thu, 14
 Mar 2019 08:00:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxycVfaK+0FHjXri+XhplEih4Rg/PVsIfbrzxf069CuoIBSFkdPVrOCY8t22QbJEptSvZvP
X-Received: by 2002:a25:50c7:: with SMTP id e190mr22681545ybb.37.1552575623935;
        Thu, 14 Mar 2019 08:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552575623; cv=none;
        d=google.com; s=arc-20160816;
        b=h+J0bOa7rqXpOdQRV6vGo5RrZD/EzAov9MGVpbjmxyCV3eOYTrWlYC1HHqWn1uD08O
         ow/7u9N0UtARStnlaSbsixyv9l2RQ9Kij919Dvug4xiz9LSXsuKRHTrTcObTbgVQNABm
         AzdYvGQVHhqtA1Y6jx4RWuj6WlfAZNQsPlMLihnOSG/SZHSQZgHKnUOLvn/6XrKZ3tIz
         ZHdvEqOjATA+sU1YKR4PwKb7P+DZVFKcl/BqEJuDpcmSRxqt8QIX3yB/LWMz1/32CaP+
         b4bt8cspSW8IlgrLDbcyTUuw/79nr9xLQIPFt4fJPaaxx3crEHAFJayUGjDPyA+mXoYz
         /j4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gJWPoygKO9NvSvDqt1AG+BmWcWQcWkS4cY4IlDdd4I4=;
        b=d1yNgMtW4BEkCTmL0l5e17FheYsKC6Vaeq4KURNniFEK2afYbPkXImIOpxgiUGCJyq
         kTCU2YIm+zepTJaOyhTfdsrLypRaPtZmXM7WDqJ4CA1R9sZU2byyufbsBc7/D0Hlf7qo
         mnFu/8FAUY3alOOnLln0WuZhGVhNSlt9VDUXaUUhGV2L/06OHV42bJ/REXAUFrLLTp33
         q2jvDGDpiPrOW9pk6eUd7hPPH3e/eJjTJ8T0yuuVVIbu+p/+lV2gbrwFLUOTbbiIQhcq
         OpxWDegYPn9X1c6JR6OEOp6dBiNil8AD8nvqFT8TaaJkKnJwfazhKcmoJ041KwwyNXyS
         yHHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHNy15lH;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id i204si45673yba.5.2019.03.14.08.00.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 08:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHNy15lH;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd44.google.com with SMTP id x9so5315125iog.12
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 08:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gJWPoygKO9NvSvDqt1AG+BmWcWQcWkS4cY4IlDdd4I4=;
        b=VHNy15lHoBupTfuqNNePGihGpdPW/P4kbvEk9K1FZhItT1DY/aYKZvdsX2HYkH/1UW
         mDEc6vhzvzk4ls34VKGzhirdqZbt4X1qD4QxLcMXzY5ZE2mc310JxJ4HaT5JaGmB6a9L
         fnfZve0sjInK0wthJqhNYk7uCHFJDLyECKGlzHiJzz2nAJnqCDv3H6Gzxn1YBFh7ZLQ3
         CI0NB1hVBIBZOoG3Q3XPdAe8EptItc6qyUEQ85JwZltXPl8c7aeLQcPCMKN0+y19+iN5
         +Z/1yhVHa3gM9bhkevl6QFu4jgWcsjtuox2iALfo3GKvstdte+GRsjn1xXfqYO9E0Cny
         zhxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gJWPoygKO9NvSvDqt1AG+BmWcWQcWkS4cY4IlDdd4I4=;
        b=lvDJ+S4v9gpAWZQPVoxLuws6l/W8luY3RrVlvLQqFCJeZnJl7nbYzPNDW3TDmMYmMP
         XxkpoAQClsSpcpLJCAgLbPLyfoS35lLDigU97IQ75i9mG5cJjCVI1diuwiR3U7IDFUzQ
         I1h2b0+3hAZ6R7KGD5/6GOMSX11VfifRwz0p4WZ3/XwEn19T+juEdIvbyulqJbS5vE7E
         feh7guiKPACYiCRzTBoYaKl4tWyGMe5Utob1E0ZHraxdDC1CMMPXBpe0HjZPeUOidHSh
         +AXNVjAsibfPrxFV6jOoGKj5/ozkHTGPWoWSflZZm9sfW2AvkLctJ7oo/wWEvBjVmjCq
         Dt0g==
X-Gm-Message-State: APjAAAXVpW3fZdISKjclHS/4uUpq8gwxsRPWY6da3tESEkSwww4oeQNf
	/JiaNnrGdjGh6OvIRsnBYehMQBzwg4wC
X-Received: by 2002:a5d:8597:: with SMTP id f23mr6194666ioj.148.1552575623203;
        Thu, 14 Mar 2019 08:00:23 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:6d23:9f8:4c46:2f5f])
        by smtp.gmail.com with ESMTPSA id q8sm5503063ioi.33.2019.03.14.08.00.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 08:00:22 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Lines should not end with a '('
Date: Thu, 14 Mar 2019 11:00:17 -0400
Message-Id: <20190314150017.25470-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Start function arguments after initial bracket so that the
line does not end with a opening bracket.
CHECK: Lines should not end with a '('

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..d2c1dfcb95e4 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -257,8 +257,9 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft =
+	   wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
 			chip->int_reg);
@@ -284,8 +285,10 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	return err;
 }
 
-static inline void rtsx_add_sg_tbl(
-	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
+static inline void rtsx_add_sg_tbl(struct rtsx_chip *chip,
+				   u32 addr,
+				   u32 len,
+				   u8 option)
 {
 	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
 	u64 val = 0;
@@ -420,8 +423,9 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 
 	spin_unlock_irq(&rtsx->reg_lock);
 
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft =
+	   wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
-- 
2.17.1


