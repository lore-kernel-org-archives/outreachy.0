X-GM-THRID: 6670329493054291968
X-Received: by 2002:a25:2d7:: with SMTP id 206mr1711554ybc.66.1553057126864;
        Tue, 19 Mar 2019 21:45:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2f90:: with SMTP id v138ls363594ybv.10.gmail; Tue, 19
 Mar 2019 21:45:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqws5IoIvfQ+l/FavJvHRPw32Eo0YPRYpxY38nGvlG+IZ1cLEJW2QLW2XfG/R8wM39MTqoz4
X-Received: by 2002:a25:a281:: with SMTP id c1mr1233721ybi.39.1553057126178;
        Tue, 19 Mar 2019 21:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553057126; cv=none;
        d=google.com; s=arc-20160816;
        b=j6mW262Z+jAzLfavmZJYRbzME8GncjncenOePpDq6MDF3dmlh/Dpe2mDiCfU7yREQ9
         oWRjLBy8MufzWTMaZ1gaatCSz7S5VfIzfPl21zF17gRrzC7kMBwVJZd4FFAgTtUq+u3B
         zLLZjVaR7oCsucRt/B1hAnm1ab5nDJhl2vZ0Sjc8ah7HUseMoQEnBrJQmiDt9mlpnWqF
         hjU1LijYRf+m1m/FDSgO7uWKwW1MKKdcFLgrgNNACdhG+y7dUKlW+ZHF2UlcdYQenb+H
         CtoZcvJnzJJTLEasNkegJVT4p/HeblK2xZvzN+3pUzp2TU1NK6ctHoflorvksG3mEQxa
         4l+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/IbAuLBVktjxdiWVit7YPXCGEWGp8eqttuCc7gsQQ78=;
        b=xl7BagMG+pvQbheDeMcCeoddgLnZjrkYn/xXAKJrm5JSMnxWcJqISiMRlBJYYDpUzg
         7R+loYisxBiQeqQgOUbYby1WLj7J3F7mrXk6bA7T6RNpS0UAgUHy/Re75NFFmV9W7YYK
         cmJAoNxV/P/y+ykvLTxVc42CEYK92HuErXf0f3e8Z1jW0d1HTAtj454M5m51UeJtCb5K
         3TYgRsSm8ZDGZl3CCHDbhet8d0dPjUvdTt0kGLReROJN6CP8vndKiuEt3NJ1w5dXJh3t
         FeAsPKGo/LL1VpmDo2JJICboNfW+ptCATBg1QkQzsp6uS9kmfDgLcjNVTlJl+k/VsNXW
         arAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJEH9Wdf;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id f23si53452yba.3.2019.03.19.21.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJEH9Wdf;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id p10so988075pff.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/IbAuLBVktjxdiWVit7YPXCGEWGp8eqttuCc7gsQQ78=;
        b=BJEH9Wdfj6gaKLArY76qGZHwLB8dUMX1yVzvwfIIsDNq6VVhnuo49nA6JeE4LcASoh
         k4ogxRkrVRBkPfHvHlv9XsuetlC1DE5EatZqk7+SyFD+5BXx4l3zCphPEQUoikUggkZ1
         7lHBF2zqPVYm55Vz6l9nrNbppaBgNI6qvZKwFDKtMx+hazAl4m5uW3KwthihlZsUb11S
         WpXWy7G6KhScZh9kWqvo6uHnS8E/DBAKug0pEYL1NPJFw4IEv3p2N8hbauAyx36wYNWv
         QFqZirPB0Wnfyz35rtsprZ4VJAYqRrTTYj1XZlhzDMEQmEMnwqvhp+Fv+0XplMxJNm4c
         HDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/IbAuLBVktjxdiWVit7YPXCGEWGp8eqttuCc7gsQQ78=;
        b=n2i8sQcCsqQK3u/9RPEFRG3ZjBQ+eM5IciT+GWhq5DyZDrbkskBol81eam1TmmC7uy
         DXGbThVD9XUst5y6oor9Rd4tnYXXLgRb6Ubt0E68qEzzS2bkbLr4fkTs3MTNQIzRj8xZ
         Dd9Ns/52oxH7L6dwYbwOprwtWcZFJ7xkNS5Z2RMk1O23PJvfOMAz9uT631PElHyVoWXU
         hRQrzkLxzOzT17slzkV/522AxDTFSUsR8FR17o5qV3F8HNXCi8rB9/6G2bL8Avl4/cJ8
         q3qjlqmfGOefSKX//uYn+v4PgZAYKpbLcgo3/o0xnTxA65nUIqWqFMzO3pLShZsX/JG+
         T1tg==
X-Gm-Message-State: APjAAAVvdaaAB3rzgAUNg721iIoFLfqDR8DUIBjuwuAiMNNM3Vtp6kY3
	NE+ulegALJGzUWHK2GA7Udc=
X-Received: by 2002:a63:2b03:: with SMTP id r3mr5224907pgr.1.1553057125930;
        Tue, 19 Mar 2019 21:45:25 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id u26sm819278pfh.42.2019.03.19.21.45.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:45:25 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 1/3] Staging: unisys: visorhba: Replace '--help--' with 'help' in Kconfig
Date: Tue, 19 Mar 2019 21:44:59 -0700
Message-Id: <20190320044501.5445-2-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190320044501.5445-1-etsai042@gmail.com>
References: <20190320044501.5445-1-etsai042@gmail.com>

Replace '--help--' in Kconfig and indent the subsequent text to silence
checkpatch.pl
warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/unisys/visorhba/Kconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/Kconfig b/drivers/staging/unisys/visorhba/Kconfig
index 241d8038261c..fb592f7cb7c3 100644
--- a/drivers/staging/unisys/visorhba/Kconfig
+++ b/drivers/staging/unisys/visorhba/Kconfig
@@ -5,10 +5,10 @@
 config UNISYS_VISORHBA
 	tristate "Unisys visorhba driver"
 	depends on UNISYSSPAR && UNISYS_VISORBUS && SCSI
-	---help---
-	The Unisys visorhba driver provides support for s-Par HBA
-	devices exposed on the s-Par visorbus. When a message is sent
-	to visorbus to create a HBA device, the probe function of
-	visorhba is called to create the scsi device.
-	If you say Y here, you will enable the Unisys visorhba driver.
+	help
+		The Unisys visorhba driver provides support for s-Par HBA
+		devices exposed on the s-Par visorbus. When a message is sent
+		to visorbus to create a HBA device, the probe function of
+		visorhba is called to create the scsi device.
+		If you say Y here, you will enable the Unisys visorhba driver.
 
-- 
2.11.0


