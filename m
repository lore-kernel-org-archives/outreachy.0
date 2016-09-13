X-GM-THRID: 6329809349955813376
X-Received: by 10.107.153.196 with SMTP id b187mr644788ioe.34.1473773585692;
        Tue, 13 Sep 2016 06:33:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.140 with SMTP id n12ls134603ioo.14.gmail; Tue, 13 Sep
 2016 06:33:04 -0700 (PDT)
X-Received: by 10.107.169.66 with SMTP id s63mr660978ioe.16.1473773584940;
        Tue, 13 Sep 2016 06:33:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si3310744pab.2.2016.09.13.06.33.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 06:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so9618321pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 06:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yz2fNcN44hXb4062m4d3ztI4ozeHLClI8A/S6Ov9jl8=;
        b=lGnuJ89gsZot1HYO/1qiaH8tkPzorSjY2WvV8jMy38zQC1svJwLVZ7EjtIvY2V6Tvj
         hvqJJY10j/lv7ut5KJcS8UICT9uYGR5c7J7eyvaCcKNA3/ifriV093Cxw5cynd/4ptOR
         qLNqBL1021Rbc1iaii8LBu6DxtAeR7WvIXRcdg8dF22kGM627N0RjD+kHt8r5jD3TtU3
         GF0bcI/xwRoCgCuOPcQE9PyIgzwEqjrKM9VYIZHAQcyVccFPo1V7hAaz/E7RK5vBIE9e
         egtOzQkKn+7sRjV239bmZGIVZ+pr1O1wD93zMOps30wYT/QRnHEZI/nnLaVuA7ECDwur
         yaOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yz2fNcN44hXb4062m4d3ztI4ozeHLClI8A/S6Ov9jl8=;
        b=Oi9uHHnkzHNcsLgls0zJvZe9u4PV1oFt8eppGGdA6FIpaukkdnoqw7N7ZDaSoFWGe+
         RmDpnjUMxPoNBZXKmJUjuiVPWc/NtgLUvbXuKrkDNt9EOOYnKfyMyxLlUsF0WQYbVz5A
         guYjrJjWnss25l4JMfZVHLOh2izOjWhgeS95KN4MBfUm8isY39/Zx6DFohIT0MaAyimf
         hrYl7uA/pYmW0zbMHeTNUtLPvvxAMNkrDfRHAgdkk+LhU1Fw+3BceHp41IO9YakeLkSd
         RiDDZ3YxUK0JFWy1m2r8kiRLx4vyfthBU+HjaQVYVOMeSz/GY/1okkl9N8eTZ5IQwOZN
         sjmw==
X-Gm-Message-State: AE9vXwNi+q47fSfQ3kFaaQ4yln5JqHmiVaePvHnDd1wAy7zezBk3NBwaWCRwwS9q+MpEOg==
X-Received: by 10.98.157.199 with SMTP id a68mr1369672pfk.75.1473773584771;
        Tue, 13 Sep 2016 06:33:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id wp4sm31463342pab.15.2016.09.13.06.33.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 06:33:04 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: speakup: replace simple_strtoul by kstrtoul
Date: Tue, 13 Sep 2016 19:02:12 +0530
Message-Id: <20160913133212.7830-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Making changes to add a check to the value returned by kstrtoul. Also,
updating temp since it is being used afterwards.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 884b2eb..e42be0f 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -154,7 +154,13 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		err = kstrtoul(cp, 10, &index);
+		temp = cp;
+		err = kstrtoul(temp, 10, &index);
+		if (err < 0) {
+			retval = err;
+			break;
+		}
+
 		if (index > 255) {
 			rejected++;
 			cp = linefeed + 1;
@@ -785,7 +791,12 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		err = kstrtoul(cp, 10, &index);
+		temp = cp;
+		err = kstrtoul(temp, 10, &index);
+		if (err < 0) {
+			retval = err;
+			break;
+		}
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
-- 
2.9.2


