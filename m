X-GM-THRID: 6669413684549255168
X-Received: by 2002:a25:3b10:: with SMTP id i16mr6478475yba.70.1552846420874;
        Sun, 17 Mar 2019 11:13:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:27d6:: with SMTP id n205ls759429ywn.10.gmail; Sun, 17
 Mar 2019 11:13:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5slogD+kjcUZ8MPcATE2YKrClLCSKxoINezBQQ4dKDWcXq0MXcA7Y0JF9iB6GF5PlRbFw
X-Received: by 2002:a81:6209:: with SMTP id w9mr6692676ywb.4.1552846420170;
        Sun, 17 Mar 2019 11:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552846420; cv=none;
        d=google.com; s=arc-20160816;
        b=KwLj7PJn02wN1s02qugFZ/gybZuOG/zok0r6feLR1TIUjijk9Cxv8zpahbzEDfbRtR
         iQb6dTdHYpmTomVi7rT2JNwgb1/zAOOjujpwDdOfG1avrRenTvhvRSALOkzF2M2661mB
         e25rPqzd9CyBJxlJPA/4bq5TCQS42ZqRprZjDeLYFokTqRFo87CvNgu1LaxnnoqXfu88
         U9/sHreDN7A+MNQXx/AJMQkOyfqGgQY7jlThcSf1TNiGO1mLcAkANrO7X4K6vw9+d8hB
         rcOJo20hQhTuxUpkNTULVd78OKl/MCmWKBcXgnuRTDjSqIM92nju8DxY50EJik1A2WZ1
         Q4VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=yICTLmZPlEv0eKXlflVs7SEpQZA98zA1dhl+HNUIREY=;
        b=Epvtf7M3U10+V1Fbg7fFH1fU07+3Y16+v/x8y87cnh9IvUBtUyIg2PLDgfmDF7GrMr
         RJN4I6TCEjzynhR+KH3Uqap/OoOS+r/A7bgKl+JD8pGb48exha1Z0K4mj0QjyjIvQ1Q9
         oORrhs5isXLwE2LGwkVl1leYJuOjZpsy7xk4+a5tx9ypB1np6vGLyt6CAYqEtnuHvuxL
         El0d0nGbqNUFAzpgart2Om2l5wYSvJsC+gr28QR5xgvYjQB2CvxuX59vGnuTukFVXEJc
         4TBw/UEzBENnY8awXG5C6Nt6EQ55B/VzPluSMHKrbYHlf2awebap5JG4KeYEJWMDOwsw
         sk0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpuVDIwn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e23si392967ybb.1.2019.03.17.11.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpuVDIwn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so3026465pfd.10
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 11:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yICTLmZPlEv0eKXlflVs7SEpQZA98zA1dhl+HNUIREY=;
        b=WpuVDIwnagbCl0A+w0in8ak8pEk33LSbkMQTFH9Q817FXKP2Bgsdy+K57k5L1XKqeW
         W3e5Q/I0Huq07bivvuezz7CaUv+teBp6CcL012fKF9cVVB8UL9NTgm6L20dKjKoGN/5K
         mZGQwHD1atR7IU7Vrm2QHnp0WRm9WIRaYUhkTxYP/kPHITePdK4RfQdFQjal8Kaev57k
         dZ1fdPi00gKtIhZWRz1JbUWoJby/UoKRjz3e3NoenO2PSA9VDikhvjWFefYJvM28ohZB
         0QeZhOC03pqeMr/p+vOxIYxU4NIsNm714xebtSwEF+bF0CY7b59mDabrH0PDAOYkPIUY
         xgbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yICTLmZPlEv0eKXlflVs7SEpQZA98zA1dhl+HNUIREY=;
        b=VNch8ULLA1bg4yH+Xk7RQKBAkOmUOUm2SGd90ffYXFkJ3LwbaU9XacZpi9vSY/ArYn
         Zc4GWdqPn2I7eo0SHKeoF/1tfW+rwycQ8zikXiuxwem/VdHKHLU/oZ15caEXUNJMG1VJ
         7BIDADP/uYSadT/sofAS8JJdOa9sy2Nf1ZcjdR9/oyP24b+dv86A8sQy0tuUiURqM6hk
         Izwnpq4OoaDPw7ZwFZ2ioXNcYQwdlC50C+ymHJoqEBOsON/HKUyx+EqyaeZbNsTcTaaV
         HALnalmzz54R3ul5UVdtEbpVwC15FSJWK2CPVtKH7bwv/RnDFXd0bj4h/2sguwa64++3
         ZK5w==
X-Gm-Message-State: APjAAAUzYO6yV6/DgRLDlgv+FMsKDlr6bcZIt1BKVH0PVoDHjPoHAw4l
	7Isf32W6pA8rqqNxa5udvGUiU9uqqcw=
X-Received: by 2002:a63:450f:: with SMTP id s15mr3435299pga.157.1552846419433;
        Sun, 17 Mar 2019 11:13:39 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.8])
        by smtp.googlemail.com with ESMTPSA id k75sm26441490pfj.46.2019.03.17.11.13.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:13:38 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: gasket: gasket_interuppt.c: Fix string split issue.
Date: Sun, 17 Mar 2019 23:43:28 +0530
Message-Id: <20190317181328.4707-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove string " across the line.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2: 
Fix the string in a single line within quotes.
 drivers/staging/gasket/gasket_interrupt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index ff61b782df30..2d6195f7300e 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -97,8 +97,7 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
 		 * modify-write and shift based on the packing index.
 		 */
 		dev_dbg(gasket_dev->dev,
-			"Setting up interrupt index %d with index 0x%llx and "
-			"packing %d\n",
+			"Setting up interrupt index %d with index 0x%llx and packing %d\n",
 			interrupt_data->interrupts[i].index,
 			interrupt_data->interrupts[i].reg,
 			interrupt_data->interrupts[i].packing);
@@ -120,8 +119,7 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
 				break;
 			default:
 				dev_dbg(gasket_dev->dev,
-					"Found interrupt description with "
-					"unknown enum %d\n",
+					"Found interrupt description with unknown enum %d\n",
 					interrupt_data->interrupts[i].packing);
 				return;
 			}
-- 
2.17.1


