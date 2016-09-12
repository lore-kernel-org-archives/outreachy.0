X-GM-THRID: 6329551284190838784
X-Received: by 10.157.5.37 with SMTP id 34mr2428650otw.31.1473713499889;
        Mon, 12 Sep 2016 13:51:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls564540ota.17.gmail; Mon, 12 Sep
 2016 13:51:39 -0700 (PDT)
X-Received: by 10.200.53.105 with SMTP id z38mr17626725qtb.11.1473713499437;
        Mon, 12 Sep 2016 13:51:39 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si2506602pab.1.2016.09.12.13.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 13:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id ph5so2120595pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 13:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jdPrlMQrI8LbhgzOz5XY04EU9lQNzFjBCZZrbzm4DaY=;
        b=TSH8jzNIw/lFJUcdJxYufZ9mPAHZGMJQDpmXC6Ae6ZrS9fOeroXAsm3UR526jy8FGh
         miJwZARNuOAB/jWjMHiTYHfaIQIyGaDCdSEIf7m/6ZDivtcEMF6k23PMRaLBlQMrJcQn
         an1fopJLOX5DfUNHByD1qpPgZJezzB4NHLJtxdX+i1zAYn/VO6RO7Dp8YcBBkEaO+YpD
         RScWGGsNiZ7NZ9PZ2jFqN3oyqNVMsHhbWEQbrWtkHKCz02gyjSE6V5MyOZgymVQnSwT8
         TI2ziWxgafDxrUEVjEB5kD785NRlJuhW1DyHXm5/vNcemyBu9ROs1AoaGBmUpzyLrAmg
         OWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jdPrlMQrI8LbhgzOz5XY04EU9lQNzFjBCZZrbzm4DaY=;
        b=XEvXyHKKefx+y5KzQxznLErGADPPIOSmV5QN725Bjp6HD4+WFX4bmiZPC4vI9cjWOP
         cMFdw512IC4MyjOVwCB4AZ6I4JKLM3MB/2VJYCgYNHnm47+ERgg5ETGUHNoR5LUXfijv
         PpbZAdBKUhfn0TrCgvAPbo0hzY9TwhclUGs6C/T6fE2vtMK7DyobvfiifIYHfR76jXkz
         GZausGXCOLcE8/UURDny7AQzsLsp/JduLsB94ZnmO1hO2en+e2gAEWW7hK+M7iZvM0r/
         tslwaeAmhv3iLwimX4mLIVSsnO4+i8ZOlL99cipWn7Kovd76yFJieGNNKco+/hcm3ejc
         YrdQ==
X-Gm-Message-State: AE9vXwO+Q1IT0KtI5aQBOirUeNmH8yWETR9NaBlocQpuIfCbYUpJT6wLtEKQzSRZviC6Vg==
X-Received: by 10.67.6.134 with SMTP id cu6mr37109675pad.147.1473713498951;
        Mon, 12 Sep 2016 13:51:38 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id tj5sm26543816pab.37.2016.09.12.13.51.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 13:51:38 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: speakup: Replace simple_strtoul by kstrtoul
Date: Tue, 13 Sep 2016 02:20:44 +0530
Message-Id: <20160912205044.26537-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

simple_strtoul is obsolete and hence has been replaced by kstrtoul as
mentioned by checkpatch.pl

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 528cbdc..884b2eb 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -126,6 +126,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 	int do_characters = !strcmp(attr->attr.name, "characters");
 	size_t desc_length = 0;
 	int i;
+	int err;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	while (cp < end) {
@@ -153,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		err = kstrtoul(cp, 10, &index);
 		if (index > 255) {
 			rejected++;
 			cp = linefeed + 1;
@@ -757,6 +758,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	enum msg_index_t firstmessage = group->start;
 	enum msg_index_t lastmessage = group->end;
 	enum msg_index_t curmessage;
+	int err;
 
 	while (cp < end) {
 
@@ -783,7 +785,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		err = kstrtoul(cp, 10, &index);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
-- 
2.9.2


