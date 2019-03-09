X-GM-THRID: 6666437691631992832
X-Received: by 2002:a62:1f12:: with SMTP id f18mr9152419pff.49.1552150978445;
        Sat, 09 Mar 2019 09:02:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls4457250pgp.9.gmail; Sat, 09 Mar
 2019 09:02:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVgKkQ2Y3zBFIDAHJ1TLgCYkp1RS6Owhp/jaBs5jlW8shshM1jAsTO0w2JXA0G9s4M1nQ3
X-Received: by 2002:a62:39d2:: with SMTP id u79mr9368832pfj.46.1552150977318;
        Sat, 09 Mar 2019 09:02:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552150977; cv=none;
        d=google.com; s=arc-20160816;
        b=IRcdwu5l1qxcxktK+ZiDb5o+sgS6+rqakE5Nq86pN4G7Pj3UNO0lB9cWQOsC5qdw1Y
         76yl+GQ+PEeZ3/tH3M77MqpyfmEJmHJ7NhSEk/qQSGNK75oApH1kBqsejTME915EwjGU
         CSPiW41fIE2K3Zfm22VROa1Fob1NbT6rQOAi+EEH1quqwvJdGcWAeq2yiLBPUJe+X4lU
         PZLazpo5YoGyyEf1IMUynr0NrTG6gD66FnHgRGngnUQlOcyNSEEGFoeswJiky70ekX6K
         zRVhs/HFc3/yiQ4XSODy+94t3VhF0AUeZVpM4UveNJJGLhWLHZ3LBZ7apvLg20phnTb0
         pIQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:cc:to:from:subject
         :message-id:dkim-signature;
        bh=Ud0df6xgxqv3KOB4Bx58CUYgRX99A1xkZYo1uSqpbr8=;
        b=b2pIYNvIfv7yDE4dmT2os/xzDTI91/N2L6WBxT3Y6+nTUDf+ZLyrbO7GDJEmFCbRQP
         mEKiWOPV/4nbKc82qLZZElK7bsZ1RdiBApyAx3b/mvdIGP0OOBrpvvQw3UhKfuJJedk/
         91S9W7LmJdz5ghR/MryxbMBUdqn4hDLpjEkLRQWWCCsTsPzKDsyDEr6ulqdJOMAeP33r
         MGjUSc3xQrZd56/fK6OBCZi8+V1Vi9vBpD863k8x+/0pDoElRhWvMg+6oMY8n9ivgFcH
         /PuxrijPtUhhNUieE/oqf/dR3S4VPPhfUtUT/C5eQAPoNRUSr+hXnAjCVHaNtWvLfKnb
         lL+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dA9gp93v;
       spf=pass (google.com: domain of mehta.aaru20@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mehta.aaru20@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mehta.aaru20@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b38si46110plb.1.2019.03.09.09.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:02:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mehta.aaru20@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dA9gp93v;
       spf=pass (google.com: domain of mehta.aaru20@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mehta.aaru20@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n22so466313pfa.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 09:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=Ud0df6xgxqv3KOB4Bx58CUYgRX99A1xkZYo1uSqpbr8=;
        b=dA9gp93v1USJZB1DvfjoBPUnngk/KWCLsX48DKL6sQ2HqNPtvvh8cCBMVd+4YWRY5h
         P5PXwmJtswGkKzXlz/+5nquG66wX27EnKGCW0NViVDZMtLZi3XW24DaDnBlxJ11COxsQ
         va0ECXC2H/E9cBAV+WDp/ug5MOZluOqiUK2uZCwLKHS6UXr3mzMDcT+7q/K6gUL1EULc
         i/1G489SFHg6lmQE1ErOS8C9bsreIy7JqwCm0Dbeh2Dj1Rr/9aHryd19N9NuxiNwomPC
         qP4lRR9WcJSoyHtTlvDoaFAAMJIV7jlA9YKrKulPLzk3SCjyQAyGGvN4mkNDzjSpQGQZ
         nbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=Ud0df6xgxqv3KOB4Bx58CUYgRX99A1xkZYo1uSqpbr8=;
        b=VQIXYNPDwxOFfEv/gNbfCOynpqIY0yTys1Ef3ylinC+15PGB0amYVnWk4RagylaSip
         1y4jcdrqeCmoRPfXKJAviNx6ufggO9D++UxvAJXHCwBitMHFih1do8ZdnAZrSQ+afz+g
         9lQppfPNZ3hC0hLRM868qFQUesfyjPMgN9t0WLjfthaWGXEr9/chX5BtFPcn1USw46uZ
         3F2aDobHkqDo0jggscWeZ2ufCX7bqdvRqnlpCPlmLnOKKF++6UWCanHl3fvK+JxZPD/0
         MCVdLyx4pxMc/WLm9eOtOS73ievZCSi5D5aNQOucq/c3bsOQrqDOWI1UvjyaijmRDiMk
         3uQg==
X-Gm-Message-State: APjAAAWLO+zVfHN8PtQ3yuUZbwkGkMLafAFTJAlxeynGjIzYXt5uO4m/
	BUhSZRIU5qEN4p5rvuLUYLaE8YqeGEg=
X-Received: by 2002:a62:e11a:: with SMTP id q26mr24249908pfh.187.1552150976518;
        Sat, 09 Mar 2019 09:02:56 -0800 (PST)
Return-Path: <mehta.aaru20@gmail.com>
Received: from am-swift ([136.233.9.103])
        by smtp.gmail.com with ESMTPSA id 145sm1517146pgb.66.2019.03.09.09.02.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 09 Mar 2019 09:02:55 -0800 (PST)
Message-ID: <0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel@gmail.com>
Subject: [PATCH] staging: board: replace macro with function
From: Aarushi Mehta <mehta.aaru20@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Date: Sat, 09 Mar 2019 22:32:50 +0530
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

From b0da5fe54699fd2b4b627344fa5a118d6d985853 Mon Sep 17 00:00:00 2001
From: Aarushi Mehta <mehta.aaru20@gmail.com>
Date: Sat, 9 Mar 2019 22:16:42 +0530
Subject: [PATCH 51/51] staging: board: replace macro with function

Signed-off-by: Aarushi Mehta <mehta.aaru20@gmail.com>
---
 drivers/staging/board/board.h | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/board/board.h b/drivers/staging/board/board.h
index 5609daf4d869..a2119ae1bac1 100644
--- a/drivers/staging/board/board.h
+++ b/drivers/staging/board/board.h
@@ -31,16 +31,15 @@ int board_staging_register_clock(const struct board_staging_clk *bsc);
 int board_staging_register_device(const struct board_staging_dev *dev);
 void board_staging_register_devices(const struct board_staging_dev *devs,
 				    unsigned int ndevs);
-
-#define board_staging(str, fn)			\
-static int __init runtime_board_check(void)	\
-{						\
-	if (of_machine_is_compatible(str))	\
-		fn();				\
-						\
-	return 0;				\
-}						\
-						\
-device_initcall(runtime_board_check)
+static void board_staging(str, fn)
+{
+	static inline int __init runtime_board_check(void)
+	{
+		if (of_machine_is_compatible(str))
+			fn();
+		return 0;
+	}
+	device_initcall(runtime_board_check)
+}
 
 #endif /* __BOARD_H__ */
-- 
2.17.1



