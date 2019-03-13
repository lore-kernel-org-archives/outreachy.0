X-GM-THRID: 6667954113200783360
X-Received: by 2002:a62:aa19:: with SMTP id e25mr1286244pff.126.1552504048716;
        Wed, 13 Mar 2019 12:07:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:534c:: with SMTP id w12ls1145886pgr.8.gmail; Wed, 13 Mar
 2019 12:07:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxajGtKC8zi2wNi5gXUtK5uVa/PAZXjNNPyeDq9T+AvLoow8hZ7AIEj4Uu806yuowAg+3lF
X-Received: by 2002:aa7:804f:: with SMTP id y15mr17350482pfm.65.1552504047844;
        Wed, 13 Mar 2019 12:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552504047; cv=none;
        d=google.com; s=arc-20160816;
        b=wjImANj0NQ4GIDP/8mlBcM5HnjudSgqYnLt5DbMjPa+M5plq67zVf/ISPV4SPwqt/F
         3Nmk8Ebm67qfqkqOEA2DlC91IDdmPeFA/4f/N7MNDKXcv9t1F1hqfajee+eIo2a0fX/G
         FY8yWDCqY8iQx3qMtX6QpkGG+oz1n39MrzgxAJE1t8NThmn31bpofQMCkuPdpeKjJCHd
         e2yxnbo3/vP+AE1P9n6bEeWDt900oGGWwjbJ4sU4qOGlUK3nMz2t8uSezPppTTsnYaGg
         Zat5LNXzbcJSRnswyRuHnfdILQwqhfK0xDNicUgNSzT7f2HFRV+bgbGsslQ5SBCwk+9T
         4wTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5N7XpV0DV9XJbwqC46AMz/98KYtKmAARRg8UT0l1lYA=;
        b=PDiy/JlTyG7O7OaAcdQyO+JdBqKIFJaQDjo3jLqvfd5uQ9/8HueJySFPg4S9E4mJdx
         SRGszb55VHBf6wEtWzc4FbJD1ij5M4PPAXzB+o5yDDLjxsoEtbmLbDzdkDChrxeJ7ve3
         0RCLmfYbfSnldNNFUL1M4Xl3Qjl9VH/wcKu/eu4OsMmVj9BRmB5oMgnrKuiyAboNdA6T
         90nXrx5huvUbMVZVWuz7pvI9IjaCPgo+UW5fIubXOZP/TArUA6d+emMjgTZHAKScsOu8
         6SCdpQOy/WcNeP9iYIGZv8vzXygEvTwlA6gwj0yi1ELYmNJoZKTCpwLnehK4pN9SJtrt
         5IEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SdZhk2Kz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id b19si541024pls.5.2019.03.13.12.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 12:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SdZhk2Kz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id s23so2015712pfe.13
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 12:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5N7XpV0DV9XJbwqC46AMz/98KYtKmAARRg8UT0l1lYA=;
        b=SdZhk2Kz0a7m7uxe4B2kaUXMbEV1MetYtRlGCX62zJ7/xyk1M2b77TXwykTn9gJgB8
         La2BJAVC3m4HPGRrwhJbhoLPpj1aLNOe10+nax20C27DjDr4RDqeyThmjp5SJVbB4PeW
         2QC0/E/OpNInVPX0L+4yUsJBvFD0FZfG9ncbxSOTj2tyuSCoGsrsJFEWKd3Yads0C57z
         /qy27XIUX/PLaVSIpvFBUnXdk5IPwmqQVgZo257O/+ZE811jAsLNufmeB/BhHhohezSM
         uuOqVQhuIu82yUR3q3p8jFZtlXoMVfpQ5DGjsNMFXb98fGlilqaqIdbiONHbXLWp+Y87
         AD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5N7XpV0DV9XJbwqC46AMz/98KYtKmAARRg8UT0l1lYA=;
        b=U3fzPLAlydEGqR77cghNNfj8DEmw9ghmzT17CyzrBuAy9oSL2V4/F6EflBn2KQUyAE
         Tgqg25+2Z0KfTqDKOIhODmgIURwOUixXbBDa91ZZBInrnH/ZeKKPh/bZTs1MLawci/Yl
         u/89BBM6aW5EAvgGIl7g3xfZ21uqE+Yg2TEaU6VXAiwW2/yE3Fk5Q5Rj6VJOt25qaLjD
         eD+GIgPvU3qKijPnoZXpmGLfc5u5s0+eYoH3ITIRrbRWbaXQmqYebBtRaSO914f5qVys
         S5P0r2LGpa8efNyM7pzNqOiwNpj2e/QmKqweP5D9bkPMh27W3VE3/dHb53q369GROBe7
         pWYQ==
X-Gm-Message-State: APjAAAULxXZOXZwaLjBqEYMgNXrWqqTYJ0KM1Yron9r3vn7p1Z5IQm6e
	D1SiciOKvGgk294WBI8zUN8qrXToAu4ggg==
X-Received: by 2002:a62:449b:: with SMTP id m27mr46050844pfi.79.1552504046184;
        Wed, 13 Mar 2019 12:07:26 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e96:de47:a16b:5134:be60:2635])
        by smtp.googlemail.com with ESMTPSA id p2sm27281051pfi.95.2019.03.13.12.07.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Mar 2019 12:07:25 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: pi433: Remove unused variable.
Date: Thu, 14 Mar 2019 00:37:17 +0530
Message-Id: <1552504037-32635-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unused variable which is used to store return value,
Detected by Coccinelle semantic patch returnvar.cocci

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/pi433/rf69.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index e19b9ce..340ffa7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -624,9 +624,7 @@ int rf69_set_preamble_length(struct spi_device *spi, u16 preamble_length)
 	retval = rf69_write_reg(spi, REG_PREAMBLE_MSB, msb);
 	if (retval)
 		return retval;
-	retval = rf69_write_reg(spi, REG_PREAMBLE_LSB, lsb);
-
-	return retval;
+	return rf69_write_reg(spi, REG_PREAMBLE_LSB, lsb);
 }
 
 int rf69_enable_sync(struct spi_device *spi)
-- 
2.7.4


