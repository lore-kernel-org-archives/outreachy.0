X-GM-THRID: 6255949616211034112
X-Received: by 10.140.29.75 with SMTP id a69mr22285513qga.0.1456576781662;
        Sat, 27 Feb 2016 04:39:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.142 with SMTP id u14ls1451534qge.82.gmail; Sat, 27 Feb
 2016 04:39:41 -0800 (PST)
X-Received: by 10.140.239.3 with SMTP id k3mr5055927qhc.25.1456576781216;
        Sat, 27 Feb 2016 04:39:41 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si390424pfa.2.2016.02.27.04.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:39:41 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so5895618pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3lXJPnG6uqe1gIYPOt6cjgRTDqvfFIuXBFb18cqOKf0=;
        b=VrA+SS0yXbpqc1G9rBG95o+2GceyZmt6/fZSfIlkLf6ih3IR0lKC7srzQ6IibXhnNZ
         t+MLrYXycFu15+WcVvul1T/eYz5bueQ0ytNIlvpEmIfg0wqvHezeizYolXjrMlXJhZ9a
         l0pJZtOxLnIKZDJy0bLFkwVRSF6M5zhm6oLeokgtMME8WPAaklap4r4CKRHGzKCrw1wN
         /ymouJN3uX5Yb4TdxK8tTR/e+Zu2nHoAK1vevH2HvnoDuXe3xYTt5FAdh9WIvDG2TpNi
         1DDLRjyAYzJ9/ThIFdJ50jz2IsNA7Ain7YEomdj3H91UMdNDbsSOjn5pRnq4ne9ME2yK
         WbYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3lXJPnG6uqe1gIYPOt6cjgRTDqvfFIuXBFb18cqOKf0=;
        b=Uj5mhhdpUJmnP74JHzOalnACYFrtycPaLleHs1crUNB5won/IKvXAc3WTMTnRP8LTE
         vS3BCbnOXdjzXdeWHce5kJ6meUzl596j1Q28aLqo2KdlY9pxv2+fVcV1g0h/V+DATq20
         zhNaNp7BqneaOIrRnN/hSZQuNWjJWE9DBuGr4UWNYBz9koBfjbzMA7KU3RMQLhpVOJVs
         dfwRcvByiFytQ0EHvGoduQowLW4dpZWJ1W3PJPSp7+k7vSfUPNaYHrutwKadK+Ur/tGA
         cuUB8BQMiQ5QUwDbz/mddzVDqE+qsFhqUrMHDv+VpeUPo7RTzoYA1kfdWupDmlhTM1c6
         d4MA==
X-Gm-Message-State: AD7BkJLtPLk/4d6f73t9ha8k+Sft9ZvrFtJpSilnw5Wv+9uFj7IJcxDyw+h37qi6wFUo9A==
X-Received: by 10.66.220.162 with SMTP id px2mr9154846pac.15.1456576781069;
        Sat, 27 Feb 2016 04:39:41 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.192])
        by smtp.gmail.com with ESMTPSA id dg12sm26022958pac.47.2016.02.27.04.39.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:39:40 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/4] staging: ste_rmi4: simplify NULL tests
Date: Sat, 27 Feb 2016 20:39:23 +0800
Message-Id: <1456576765-29100-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>
References: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>

Replace direct comparisons to NULL i.e. 'x == NULL' with '!x' for
consistency. Coccinelle semantic patch used:

@@
identifier func;
expression x;
statement Z;
@@

x = func(...);

if (
(
+	!
	x
-	== NULL
|
+	!
-	NULL ==
	x
)
   ) Z

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index 54c17b1..92579d1 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -912,7 +912,7 @@ static int synaptics_rmi4_probe
 		return -ENOMEM;
 
 	rmi4_data->input_dev = input_allocate_device();
-	if (rmi4_data->input_dev == NULL) {
+	if (!rmi4_data->input_dev) {
 		retval = -ENOMEM;
 		goto err_input;
 	}
-- 
1.9.1


