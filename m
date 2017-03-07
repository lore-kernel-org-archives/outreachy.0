X-GM-THRID: 6394796852504428544
X-Received: by 10.46.5.136 with SMTP id 130mr240543ljf.6.1488904667571;
        Tue, 07 Mar 2017 08:37:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls115347ljd.11.gmail; Tue, 07 Mar
 2017 08:37:47 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr252379ljb.11.1488904666974;
        Tue, 07 Mar 2017 08:37:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id i76si383516wmh.1.2017.03.07.08.37.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:37:46 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so934215wrg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qz4Q4i5WC6fx+hgNt9sJv6iBaXlj1EMKoS3o+zmgH0o=;
        b=W9InEmVZqsLglJSVwKcYuBG4SgVR6lla8uwGChYm1GeVmmxSYgudkRgUdVRtNj8sXr
         9eVWKx4bhi+sHX/GeGPgcWwmMZ1KjEeru3hsXQ8/lH3tOANik8lz1cenY4lTjKbAx33q
         yyrqsceyvyTZoB3Fg0CCc8v2GZFLLR0ZcI/H8q0yzis9I1BKT355onWkZpC/KDvm4D8q
         P8nfYEsisOV9sqauqwPvB03UbYFF69q29celxQW7CUkfkAo8zegZ9SwsAO7ZPlrlrBEF
         bZ5tjKoyNLW2XUoOJRCPghLvw4jpAU/aYatbXpWa2tD13zgLry/DWfVxdCYkNsPDa2wB
         fiig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qz4Q4i5WC6fx+hgNt9sJv6iBaXlj1EMKoS3o+zmgH0o=;
        b=Nk0tTYctmiML/o8kNdTwvKHeucv+TRVq8D5eTcC1xosviN5hTabkmHLlJenSZ1QVSh
         BCI3ui4HKjjjsK6D/AHGYXtFe+fhPiG25xmdcBCe+OsMdoW2FWydW9VQ1pdkEma5r9r6
         9It97PfnsGv8mRcnY1JvJOpnq0ZE1bW/wOhEPwWAFewWqyAbiHTUegSqBVo+oBTgnmFP
         1l5ZrYdrBYQw9Ntb9hA4pOY3BlkDnEalne1nK+4vRERUe+8paiNPlmTabd6qlt0dw6Un
         12gNSohAnndGZaLNEWX4YrNi71NGJ0l3MVv/QQoWwFDo1ad6XfljVQNtK7xkQRNtw5tA
         +lsw==
X-Gm-Message-State: AMke39m4DhKeKSRXzHEHo53ZDxiD+NurIOrm7B4nH9pGG7MBqUSWYNr5hka979HK2llaxg==
X-Received: by 10.223.141.168 with SMTP id o37mr1089468wrb.50.1488904666754;
        Tue, 07 Mar 2017 08:37:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id g13sm7120738wmd.28.2017.03.07.08.37.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:37:45 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/5] staging: speakup: kobjects: Delete space
Date: Tue,  7 Mar 2017 18:37:41 +0200
Message-Id: <20170307163741.9141-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added a space after multiple casts to fix the checkpath.pl issue:
CHECK: No space is necessary after a cast.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 4ea441d..9d44133 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -108,7 +108,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 static ssize_t chars_chartab_store(struct kobject *kobj,
 	struct kobj_attribute *attr, const char *buf, size_t count)
 {
-	char *cp = (char *) buf;
+	char *cp = (char *)buf;
 	char *end = cp + count; /* the null at the end of the buffer */
 	char *linefeed = NULL;
 	char keyword[MAX_DESC_LEN + 1];
@@ -475,7 +475,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
 	}
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	pb = (struct st_bits_data *) &spk_punc_info[var->value];
+	pb = (struct st_bits_data *)&spk_punc_info[var->value];
 	mask = pb->mask;
 	for (i = 33; i < 128; i++) {
 		if (!(spk_chartab[i] & mask))
@@ -552,7 +552,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EINVAL;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	var = (struct var_t *) param->data;
+	var = (struct var_t *)param->data;
 	switch (param->var_type) {
 	case VAR_NUM:
 	case VAR_TIME:
@@ -744,7 +744,7 @@ static void report_msg_status(int reset, int received, int used,
 static ssize_t message_store_helper(const char *buf, size_t count,
 	struct msg_group_t *group)
 {
-	char *cp = (char *) buf;
+	char *cp = (char *)buf;
 	char *end = cp + count;
 	char *linefeed = NULL;
 	char *temp = NULL;
-- 
2.9.3


