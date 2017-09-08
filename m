X-GM-THRID: 6463416293324226560
X-Received: by 10.99.120.130 with SMTP id t124mr1837745pgc.109.1504881375061;
        Fri, 08 Sep 2017 07:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.85 with SMTP id w82ls1409956itf.22.gmail; Fri, 08 Sep
 2017 07:36:14 -0700 (PDT)
X-Received: by 10.84.209.204 with SMTP id y70mr1869713plh.25.1504881374298;
        Fri, 08 Sep 2017 07:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504881374; cv=none;
        d=google.com; s=arc-20160816;
        b=Ye0wOsUrlqkd0Ci5OF6Py98C9A/YY2UoE37gFXRYYc67sF6PhD1YK7OqLC9EcrZ9pT
         S8ktxQpTIQBEUX0duIYJp6bu2jZsfGo0EGVxCClEuLyd3RyZekEEPKRNzC2a0klGymfu
         km+Hdkm7exjee1cbsheg5dqgYBdXhDyjQuNeEWp4qq2ZbFpUmFB6R8bUWuWDT+qh9dLE
         RYUYGPjGLawJI0AAZuKXqNoi6HNvYa1BgOlIuXjBPX1sGr+Ltd6Z4M8ke0unROACWOgn
         ZfAICGiYc8fWaBOJOVa349hv1hfgJvLiLTt+fBH1//qDlmfW+iIMAa/jEvUi1kr6Crvg
         gd9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=95tFZgQT9JnIRuvDysSY6xUWVGODqxD/RpeTIHR8FC4=;
        b=yJfUIX/blCTdjCWMQ06NMH4e+FDcPq+a7iDfpZHHeG7mB1Q4Hia3al/JfjNNlwfWgv
         v9DbBdpF6hKNr/mm11edimGIpQO0QnUdUfFmuP+q0OwBMMm3rlPEYEB7Iaj3a8dZJaBc
         YKwF6KX1gQqJU81Jb7NJru8rcQpMe8Ij+r6lmuFYNCH1S3a291wHSkplQPe8TdujyXrW
         OxGfSIOB9OYNBbPM1GXeGONzlsuj5NHZhRqWbXSFsMtU1jCowMh2gYB1pGqIwFJ5Bgw9
         wER9ScwXHiYe/D2jEF9ZSjZpQhfqlDtuend5S5o/jdcEvsxXod4ml7frnQC21N2jnmVl
         kRlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1LKd0HV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q65si262224pfj.8.2017.09.08.07.36.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1LKd0HV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so1512289pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 07:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=95tFZgQT9JnIRuvDysSY6xUWVGODqxD/RpeTIHR8FC4=;
        b=j1LKd0HV4cTNwJZQU4vG+78jC8DM5eqlT2KJ2De9dcyhxJL6V06OpSzPqKb2TC1nYB
         duecdJxVCn7nwKirzW+0TZaNvw+aBEt/ExMUQe8+wDG0ftwrYIqqquxqejWU8z9181lB
         VETSZFljQGpq29LytdFRNamAO6dj8VY/2iElzkOzbGsSqWHkyLXJXMLR3Ca/P7P58ZtQ
         FFYbfXM23vgjGHBubtupdh6OGn3u5LZ2IQri2jQ3S8qwQ+xwl+d2Ef4J9FuZKeFn8tO+
         jKSOx/mMLMcAAdeRBalW2Ob3qgKMaSzv1OgdYfzugZnddMJD+MuTa5jErOlDmiDnQGbR
         l1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=95tFZgQT9JnIRuvDysSY6xUWVGODqxD/RpeTIHR8FC4=;
        b=eX9Pkqwu4OiDvI57UpNCt6jEl6wfk+xPfgHksbDcDOKUQ9x+Jb8vbE93Sju2C/YLVV
         Nw2zzAqmuf9CBIgVy9GcC7bwauz8w3HwOJILn9r0f0rBR8lAkUbw+t5YoyEz4suJGT9W
         FhW321QcHvVOjd5Oy/XV599sra8vHLzovDknrl2clMVdgl5cBg7EzC/HTDDnp8Mucbay
         1aXz/EPnAzSwR6Tq7DE1XM6XiR0y1Z5tK/OHTTcWNJVYMGXMU/OiWbej9uW5LraB3Uxq
         vek3CaR4twirXpUaC04xcv62tp4lVY9gOVlXic1CDZqIADXZgdRFnz6NX7TYPtRfuW6G
         iKow==
X-Gm-Message-State: AHPjjUj17oOrx3JwMN+aOgNMjfVxyJftn3ZaTrZt2DXoGSPV9NYUH+Jp
	ND+tXG6/t9+uHA==
X-Google-Smtp-Source: ADKCNb4TyOtj7L7OzNvUEKN3LGQXP+GbFterocpNc4mX6Q2OiFdkkVgWw/JIeeLGcyhTgm6NmzhHNg==
X-Received: by 10.99.60.13 with SMTP id j13mr3263190pga.384.1504881374070;
        Fri, 08 Sep 2017 07:36:14 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id q73sm4429916pfl.147.2017.09.08.07.36.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 07:36:13 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: typec: tcpm: Comparison to NULL changed as "!port->partner_altmode[pmdata->altmodes]" 
Date: Fri,  8 Sep 2017 20:04:08 +0530
Message-Id: <1504881248-26515-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes coding style issue

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/typec/tcpm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
index 630fe75..9f4a5a5 100644
--- a/drivers/staging/typec/tcpm.c
+++ b/drivers/staging/typec/tcpm.c
@@ -982,7 +982,7 @@ static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
 	}
 	port->partner_altmode[pmdata->altmodes] =
 		typec_partner_register_altmode(port->partner, paltmode);
-	if (port->partner_altmode[pmdata->altmodes] == NULL) {
+	if (!port->partner_altmode[pmdata->altmodes]) {
 		tcpm_log(port,
 			 "Failed to register alternate modes for SVID 0x%04x",
 			 paltmode->svid);
-- 
1.9.1


