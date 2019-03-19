X-GM-THRID: 6670105232964321280
X-Received: by 2002:a63:f10d:: with SMTP id f13mr375963pgi.93.1553009132375;
        Tue, 19 Mar 2019 08:25:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls10873790plq.0.gmail; Tue,
 19 Mar 2019 08:25:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7cdk7g9rQyvW8ZCVeLBxsPPg4q5/B2/66aUxXYYzalSRBRoos9+Addx/aa8U07FSCVNTO
X-Received: by 2002:a17:902:18a:: with SMTP id b10mr7177990plb.139.1553009131578;
        Tue, 19 Mar 2019 08:25:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553009131; cv=none;
        d=google.com; s=arc-20160816;
        b=cxG6A+Xzlh6p09Es60ASHn5igUbX5XBdVRJh/qu63XxGxiybXZCBiNMaIVO9wbl/pN
         Y04JafuH4nBhpaNWW/sLMG5RUTwqKr7DhWzEM/TFj5PTKdgZ8SK43zpX8YkRL5wHxlt2
         c4zwyF3DMwKW06WzCNq4CGS6KF8xpwFAlN8CxWwOg8AdZYGG3SAgrHtP4JGMYpW+RPXv
         jdqRBAAMB3LH+dBmRDAUBO4IpJrLD66fvcv67d+1Di4TGVbjs+33EgRbBCYCxTQcFhxL
         13mSRWAmExLah9jX6le/9uSwzlX5wKljMabwo+WZDFr4BkBsLqyc5/cAyOXNNRc6xOrq
         9loA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rv0CTDIn6MmV+8UjAKF4Th9eJU+aG5EmAPlbYoedPXk=;
        b=UVfQFAcim1vQr1KzDdocqRjaFmcXL3Quzyaesj7KSWiBoRdqXvjM/48iXP1zGyuo+L
         NnM8kmG+MT+6K+smcc3jV7kzef7iftf6LM+xcT5WDCmU50P94vB/Nd+xwOC/vjo9TgCp
         J4Bp3uGeX1S+yqJQ2ODo2CgqxHgNaam0v/En+B/Zip5qStJH8wXOUe0GPr6afJw3ZE0Z
         sINysw0lAxjh+oo80QmV0BOBE/kylv8bDSKAyJPmmhTSD04eJ0GJiYpSiUSvllMnInL9
         13Uhwfa5Xm/letiMxF+LQqIxcMNxxkxT/zRJ6c4/+19UP5Hod6ro197AL2b+ON4rHBiJ
         Lbog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPK3Frxw;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a6si833335pfn.3.2019.03.19.08.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPK3Frxw;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b12so382411pgk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 08:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rv0CTDIn6MmV+8UjAKF4Th9eJU+aG5EmAPlbYoedPXk=;
        b=kPK3FrxwCW+DhB3eRHzxEbmHUDHQEO6bycl8TsiRkMJwU2UINu4oa4b0yKX6BWvAak
         jJY/72F8crnJnl3nRASFYHpRSEUbc1rgZQsQBBGvLV9IIJV1wa24cTkkNHUgpWu6dnaO
         Q3mmQjU3wg/vtiIJLpQwMFuLDNE2XL5HpZy7rYl1ilcj68H5ULvm3rHdrikA5pmR0nJ+
         Ly6nNyS+tkgKz7ge/+1N4L8+kOcReCts971YVtJPmQPN4SSouGpra4Bkv5RF2j8w8cgW
         0PoHQ/ZjRIVMXC3vFCK/gxXdDzgrdzQe6szu2XV5SCWNbaGyALDc6u3nwOPWr+v1uoFR
         oApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rv0CTDIn6MmV+8UjAKF4Th9eJU+aG5EmAPlbYoedPXk=;
        b=eEalgMc9va1RyuuO6u56HR9p5zZsA9oGq0B/X6DYqhLvmCLkrgq9WrKHSJuq+ZuAVW
         mjDwJO4dZFYmiJeQ7G6qjaPscvgrptkudUxaqfo8moSz2rNXnJT5/x71fIGnh5II1RwX
         KqKvIMy5pNhTjTYQaR7wFZ4Bobu3G7bXELjegSmlkfGL8geTsYiMyZ1EWZh45R3Wo2j2
         A8rwAbYlQFGDPv/jt7Fma3d+exby7y48j+cuZx/O/2UxhOnCl6cdVotcnZ7SixlurI6a
         154UnR3x63ZQnGuQHCSjLHvx0gKrhN3+JWPzndTgdqCXaHB9sXLt/d8Uh4/NyQIcEx7+
         xOzA==
X-Gm-Message-State: APjAAAV8wx7Z8Z3Tc5NK6q94UhKhoa4WCawngG/5JQYwHbaiooQOns5o
	9g4eqx7j5X2ujey4V4WYcwIL6NrG
X-Received: by 2002:a63:1ce:: with SMTP id 197mr2337457pgb.47.1553009131364;
        Tue, 19 Mar 2019 08:25:31 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id 23sm21088120pfn.2.2019.03.19.08.25.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:25:30 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: rtl8192u: r8192U_dm: Fix space issue around operators.
Date: Tue, 19 Mar 2019 20:55:17 +0530
Message-Id: <20190319152517.10438-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Add spaces around the operators.
Issue found by checkpatch.pl

CHECK: spaces preferred around that '+'
CHECK: spaces preferred around that '*'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
No changes
Changes in v2:
No changes 
 drivers/staging/rtl8192u/r8192U_dm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 0f1318865dd1..50a9fe667062 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2936,17 +2936,17 @@ void dm_shadow_init(struct net_device *dev)
 
 	for (page = 0; page < 5; page++)
 		for (offset = 0; offset < 256; offset++) {
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 			/*DbgPrint("P-%d/O-%02x=%02x\r\n", page, offset, DM_Shadow[page][offset]);*/
 		}
 
 	for (page = 8; page < 11; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 	for (page = 12; page < 15; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 }   /* dm_shadow_init */
 
-- 
2.17.1


