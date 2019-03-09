X-GM-THRID: 6666518955761336320
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr6306710edc.1.1552169899604;
        Sat, 09 Mar 2019 14:18:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls2088075eja.0.gmail; Sat, 09
 Mar 2019 14:18:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqypTLZHFoy6kDUE7vm+KrB9cPOLL/MlmvyLL+EcMqUpYzj6pqEb4yypJtraSWtk5SPrFn+F
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr2864980ejx.13.1552169898751;
        Sat, 09 Mar 2019 14:18:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552169898; cv=none;
        d=google.com; s=arc-20160816;
        b=ACsTJi7d/zzLyACy2QxejGIPiFOn42B7XC4mm9ZaFPYDx1Ld1yLkn0hCB6RjsbYEPL
         GBqX8jaD7cJZ9MOLuCFc8f+fMBQBJAHLZ0W3Rl6oJr3umI0DOki+RnsvJvp69JdCNQES
         OgJM1WiZyhr1JNroa1P0TGJWgXpjvwtDIRCBcE5mexiSy7naqIttF+go9yanswlDc0K3
         +6t1/Iy9PgP+VdR6rwvRpd+s6adRhKMbx4TdG7Q1CAYsCukzjgSqaa9mFC5BWEJMeV+q
         4Hp2MkA/kudxntYFkoKp3YQKVRr2BhETzsMoT+8+a3VkmwFj/p2i6/3DPRsqVwk5SHeI
         AWBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8ApxoGMvhJB3ZwzwfUWFWIiNHT+PYkJPlxSRt9lW8f4=;
        b=0wVBPD/F4C6FPRkU4PO6lD9copAF5knLoEFoXJo/eqOXd7Kyz3TIn8gZSmgtEbd/sq
         lGQrZV2pMZy458GiE9O//Bb67iDSNyPFkUeREKdlnbhDrgAMK8CRkGBzd4rCHsa8Rr5/
         W5yjD5A85ge0/47RyHwMI0+JByJ3KGwv47sg4+RKk+FAptCV9D2IRhRzXAuumzQUxIYO
         +09+Rhvq5+x02IQzkfz/56CeTswZHa4YeiQakKd60cm4WDSLdrZ+jvBmq2YMm6DbuEEZ
         BQYM0mZ7FEgrzyJmIQiVaQ0RC3Gqqakt4qNnBuQ7brFjvoXllNHJhk95Br3BeChptSIq
         cSyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvC4z6e4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i16si622199ede.0.2019.03.09.14.18.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 14:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvC4z6e4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id w6so1136947wrs.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 14:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ApxoGMvhJB3ZwzwfUWFWIiNHT+PYkJPlxSRt9lW8f4=;
        b=WvC4z6e4GR/6a5w8nWereERTB0ICT0xpzJqaeu1NChbgC1oTR/NEh0W/6XPyHQIfcU
         UJKi+6HEkejTnYgufMJd8mfip7XM2dlNX/fDuLTKZozywLqV5CpeAvvC0g6A2mdds65e
         ubdUNMVnkPgtfNxvTJGePH9UdlWbDQo7lQF4yjHU/qWv3HduG4H7lces1dh5v7PoL7mw
         HCrP/TjxRaR+jUXipZ/Ysjt5UUeCsmrO62K9dHc+zcJYFWOViPRf78HJ/Qy8v41/WptL
         LyCCdmk7s5Cd+vVoCbVUy9dCPnSsCNRpV1VfPC4CG1CDU0x2Nqdroy16LenoI3fnDhO2
         8Ccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ApxoGMvhJB3ZwzwfUWFWIiNHT+PYkJPlxSRt9lW8f4=;
        b=SvN5WpaNpAOZsh4zqEeuyHpYtaVaWQMZ3R/XR0898HD+2NuSjQ5x4WLuQilxuZVZKD
         712Yv8ZZmCZzIcuAHJe7KqUKtMJYv5UEqSLH3zYWDK80bdnt955rrqDRME3p7CtRzomx
         r59GySpjSF74ZBKuxRASCpPS2yojpHXhBLZGUhLXE1Zb3uCRYNErGbhC2N6KCYZUILJ6
         KgmllnYGnHPOOw8zNOH4zzzjrM1EddgcLQ0KdJg9McVnEnUG+ShZU5zEQNsoNmtgsW11
         vMs+LtXWRiyLc12oW8KKRAxXEa75KMkNhbCEoIZ1V0DVXDhRKWXQIQjWEy5pcDqs7WDs
         UTbg==
X-Gm-Message-State: APjAAAV8985UCtFwWhvlN+HiwXAfZn6T5I5hCY13giACJ+ZCDw/61Yga
	v5H0cNVP0Dd6PqvJJQEMGA==
X-Received: by 2002:a5d:40c5:: with SMTP id b5mr15781781wrq.107.1552169898088;
        Sat, 09 Mar 2019 14:18:18 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id j1sm6792662wme.4.2019.03.09.14.18.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 09 Mar 2019 14:18:17 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Fix spinlock_t definition without comment warning
Date: Sat,  9 Mar 2019 22:18:10 +0000
Message-Id: <20190309221810.25936-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch issue: "CHECK: spinlock_t definition without comment".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.h b/drivers/staging/gdm724x/gdm_mux.h
index 51c22e3d8aeb..f1169d7e10c1 100644
--- a/drivers/staging/gdm724x/gdm_mux.h
+++ b/drivers/staging/gdm724x/gdm_mux.h
@@ -60,7 +60,7 @@ struct rx_cxt {
 	struct list_head to_host_list;
 	struct list_head rx_submit_list;
 	struct list_head rx_free_list;
-	spinlock_t to_host_lock;
+	spinlock_t to_host_lock; /* spinlock for to_host command handling */
 	spinlock_t submit_list_lock;
 	spinlock_t free_list_lock;
 };
-- 
2.20.1


