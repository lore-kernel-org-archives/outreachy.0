X-GM-THRID: 6809167002234519552
X-Received: by 2002:a1f:38c6:: with SMTP id f189mr6321473vka.52.1585545337343;
        Sun, 29 Mar 2020 22:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2949:: with SMTP id p70ls1019248vkp.11.gmail; Sun, 29
 Mar 2020 22:15:36 -0700 (PDT)
X-Google-Smtp-Source: APiQypJpWsWXgwE239cNJHeltpS3bdZQ6tSxfRArri4rouwh0nYyvhChJKyk9hJpkvD4LwnDDVDg
X-Received: by 2002:a1f:2b09:: with SMTP id r9mr6114538vkr.24.1585545336198;
        Sun, 29 Mar 2020 22:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585545336; cv=none;
        d=google.com; s=arc-20160816;
        b=x86Y7YrrvsvH68YtVkWKUhA9lw6u3WapQHlpOeAvf3a4QVn+heoi8tdxCHrS5+k7OP
         YNwbkVjQeD826e4cs9sp0bCeruYkOHyWqdBh/rcoGW++EPw/Y6LYTt69wc1QN1z1mdEe
         k5jIv6iLQiZJkUUqYDmZwC3W1kNbelcInIguF7BdeiLZylIK0orRd0EKX9vvAwtDcAFp
         6qF7OqO3D24FYr5gSF3E5b5lrmHX1pmD8S5ejuKL0YVQw3ltm2iJy2QG96LCC9gVpn/0
         4K60i3dZqtHbf/Wg+xwwjEgSLe8pnBwV6re5ZFLKH8p3CmNclhoVHOYzFT+5uw7Vw4dr
         RShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=SGMfTkqKs6DB/CXMKk6NG0/fiF9jW0GrGuSYwj7coBi89w9XZ22yJ8a95KK+AdyEm7
         TKFaWLoJyyp2yteKMGnzl9RweKam0Xh1TDbIMSlAUjGFcHZVJ6bdQwFRDt/rzyiFy4AE
         jX7kAWRhepoQqdNuz5CNRS7Kyq2GfAQnXy7IyMz8qxs01E+3NItZcPacQw+RroXJGagN
         jQiSa+keNAAF2xXU+eNZSBSTM+dW6hL8LE11+Q9HcehJWKBftgajJoGSUXPeFqydwLRG
         usF6dloqn4I+cyUXHysRM0yEaxaNdunmmQxELsX5Rqq3xLDezxg377Ajhu1jC7M/7trd
         xrMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kyvA++te;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d20si989043vsf.2.2020.03.29.22.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 22:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kyvA++te;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u12so8119723pgb.10
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 22:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=kyvA++te9vylqn+DLZ/mQdJX5cr3UQo6+j8JE4jT2i9xdYD1ZZSGXn1gxY+5aBeorZ
         mnwWmMhflug8rUuZDLP1fHzo5Ndq8hKMad8q1+G3YhuodDyT3m4Xlj5Z6Tddtt3jIOol
         8p8nxc6yUULk3sh+CKT1ObKvHo0c1owTIoJMdNshiWQGTIXDHPuP1zQAaVvYo6Uw//r5
         Eu4jpIEgLVuNZp2iz4NuDk2GbtukHCvhMS7mY9oAoY2UsjcdMw/ktZYpQXs7HNDLfTqj
         YM1vBPQ/VYMQClKvPvnqOy4WDcEoVM9qFMWUxuwNyWHWio8EikmvqnfS+qz7HgzLzvxo
         zpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=qKx9jZ076LDc/nsUZ3wTSO9MX82Zb+N/x+V1LxLJaw7ttyQM8Q9cs6Fhzq1EPSrvOP
         ZlN1i7dE7MGZODaHfILP1dOXuwY/3yKqgX3WQxkbNEqfuLN5jEWuSD+KjXwpnNSYqnhl
         a5td0cE7VsJxi7eC6UgzEWZM9i/kArbehU67MujQ3osIpa3HvgRO/OL8JS3cFiiZC2zy
         weQmqU+DuOxrjJlWDbRZTgiXWqswHve4nXRGYtN8dSCdutyBNfsWuyHUDlcFdYMgLFe8
         CaF8TVL6BFmq6qX0pc9RK24rIFG6+lQtBJEScN9n/umEDNAv10cuvvyNXHa8ZSGxwrGc
         z3xQ==
X-Gm-Message-State: ANhLgQ2cUx2C1SAsXz2Q7UG6VeOzKhCFUBejQEZ0n5mIeaOkAHoNH7hN
	HLwqGrcAYAL8FF3W/NzrRc8=
X-Received: by 2002:a65:68cb:: with SMTP id k11mr10961686pgt.78.1585545335225;
        Sun, 29 Mar 2020 22:15:35 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.216.19])
        by smtp.googlemail.com with ESMTPSA id q12sm8833810pgi.86.2020.03.29.22.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 22:15:34 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH] staging: qlge: Remove extra blank lines
Date: Mon, 30 Mar 2020 10:43:43 +0530
Message-Id: <20200330051343.7841-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary extra blank lines to improve code readability and to
adhere to the Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9cc034..b30992825612 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -119,7 +119,6 @@ int ql_own_firmware(struct ql_adapter *qdev)
 		return 1;
 
 	return 0;
-
 }
 
 static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
@@ -358,7 +357,6 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 		for (i = 0; i < mbcp->out_count; i++)
 			netif_err(qdev, drv, qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
 				  i, mbcp->mbox_out[i]);
-
 	}
 
 	return status;
@@ -406,7 +404,6 @@ static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	}
 
 	switch (mbcp->mbox_out[0]) {
-
 	/* This case is only active when we arrive here
 	 * as a result of issuing a mailbox command to
 	 * the firmware.
-- 
2.17.1


