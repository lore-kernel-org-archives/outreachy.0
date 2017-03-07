X-GM-THRID: 6394797109992751104
X-Received: by 10.46.77.69 with SMTP id a66mr252990ljb.11.1488904727434;
        Tue, 07 Mar 2017 08:38:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls112632ljb.9.gmail; Tue, 07 Mar 2017
 08:38:46 -0800 (PST)
X-Received: by 10.46.19.1 with SMTP id 1mr256542ljt.4.1488904726877;
        Tue, 07 Mar 2017 08:38:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id e72si405566wma.0.2017.03.07.08.38.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:38:46 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so1903861wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RIym2qfpjpc5zbDXtbXn+5NbjQyyUzPA+c66IuF9rTU=;
        b=Oy6sEFmiWVNHAirtELdBrq3ipZtRU1KTbXIdYfEiXSf36MqZI0gzd4shbu7XytYiL0
         jlI5SADuqQSMWstluZcyl8/w7Zd+EFFPz/oniARSTq/35ymDyb3bJfhRMegdBw//Jb2o
         grWrX+L1TwA6mjvExR5I4xYPWGXubZidGHJWXpMYRVJ3VY6kkTp7/JEttmH/qFKAxLfy
         F3fWCm3ZE9dnlrQ1F9vUOyIIr7YATCpi+oKLStf1SEszPYaMhNxilMjnrSbUdFVj5slZ
         TEjZKp6ry3+j/1a7HIBv5lVPy+NNY7NRCQUgribzI45WfcWTDUw/FCYTGY36yTsDsH+0
         moLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RIym2qfpjpc5zbDXtbXn+5NbjQyyUzPA+c66IuF9rTU=;
        b=lf8kNLH5hG4wSMX4fym8/mUdbzTFxQwcxcNJTE2wfHeG0LAZkJ33AR4U1SwmXBprRb
         FzJK/rTIWCBrEOmFpGI5zQkcMMqBmaej0ExiPHXzyseI/2F3UmBJ3n4FfNuCTtUy+ImM
         GD0Dr3ViyRNvYiORDoBNsGtn+uFGSD3xEu6a4+t/A9pgYDDp/voNUjnTZGnwSpuCdTZs
         TUEDQmQf6y0J7V3VocsmwNUwBb9ojqK+psoDxQxpaVqrkQqHOh+3/0iuOA+rT7XGrn/e
         LbFXfM6e/h75XOQgpfdg58IaLHgn+9Qr4QWvQXlXLP+aVwqegzaldTrovVMAPgYOQShK
         /SQA==
X-Gm-Message-State: AMke39nJngwI+Qrwm2de5zOjL+RXaFlDpPTF5ubj6FjMLnu3MrC7VOYoiAzdTRpfvXj12Q==
X-Received: by 10.28.195.197 with SMTP id t188mr20305537wmf.61.1488904726672;
        Tue, 07 Mar 2017 08:38:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id 65sm627767wri.53.2017.03.07.08.38.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:38:45 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 4/5] staging: speakup: kobjects: Rearrange headers
Date: Tue,  7 Mar 2017 18:38:40 +0200
Message-Id: <20170307163840.9405-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Put a part from the headers of some functions in a new line to have less than
80 characters.

Fixed the checkpath.pl issue:
CHECK: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 9aff045..7337716 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -106,7 +106,8 @@ static void report_char_chartab_status(int reset, int received, int used,
  * This is called when a user changes the characters or chartab parameters.
  */
 static ssize_t chars_chartab_store(struct kobject *kobj,
-				   struct kobj_attribute *attr, const char *buf, size_t count)
+				   struct kobj_attribute *attr,
+				   const char *buf, size_t count)
 {
 	char *cp = (char *)buf;
 	char *end = cp + count; /* the null at the end of the buffer */
@@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when text is sent to the synth via the synth_direct file.
  */
 static ssize_t synth_direct_store(struct kobject *kobj,
-				  struct kobj_attribute *attr, const char *buf, size_t count)
+				  struct kobj_attribute *attr,
+				  const char *buf, size_t count)
 {
 	u_char tmp[256];
 	int len;
-- 
2.9.3


