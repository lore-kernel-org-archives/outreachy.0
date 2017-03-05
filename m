X-GM-THRID: 6394098125937573888
X-Received: by 10.25.223.67 with SMTP id q3mr1439957lfj.1.1488741982827;
        Sun, 05 Mar 2017 11:26:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls1285486ljw.54.gmail; Sun, 05 Mar
 2017 11:26:22 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr1850769ljp.31.1488741982054;
        Sun, 05 Mar 2017 11:26:22 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id h198si830790wmg.1.2017.03.05.11.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:26:22 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so19328748wrc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2nbDarJg14bb0nRLxnl6NfWRsBosuD3+4TiGXlg22Ec=;
        b=e+LA/HMZ1CnupaXW94Q5kdgh764+u9Qeq6wpqmbqjjZYruVNhCPSaEGtc1+EK68+t+
         SOOtsAB/8lbcrrJTn3fAow9gZhag5Xb9rCWxedsnGksKsxjYh1x/y9YCNQwKjyKXigbQ
         cuvbn4o0L4Vc/M30js8WjeMxBpZuP82VDxmaWW/yZbaAPt9Qudguu0L0hC2eIl36SVF9
         l+gPZGrR0aIB5wDYC+rIhqgunwW8jDZ0kPY3JYTJmXFV8LjqHfxH/TcuqL0IcpnP6882
         KxgHklL9tgrn/pSqwy30sb2NhMuqNrpSvMCHZqYaHkF3yaPtCCox8RpEUDxWCdJMU9bx
         ChdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2nbDarJg14bb0nRLxnl6NfWRsBosuD3+4TiGXlg22Ec=;
        b=WyBHqr1s3NtyA4SFXOirqHu+9DORT4++YUkCpwi1nr2uPPBJ0FSNtBCYbn7Df9mw6w
         roFWmhJn2FOK+85Qp6EwFLTyOSY2snWowUVjBOb7HzmzaqO+WqcyYgeuaGnq5P3loIFt
         2JxpDUR8TopP9/FRrvo4tLKIvuLeZ2Vl+2TTl6twVwmlz3I0pVhJLaNCkZv/FhkoESwb
         ZjxdPCVle8xFkfcM9Rw6Affs79dB5ulg1GGlF8VqrgIBpOtnK2e1etSxifvJyIAfACYJ
         H/p9RFO7ck/dkJNB8rXjwAzxAfyz86WT3mIe7++9iIkp/kWzZkCHk/D50YXg6pRZ3TFp
         Yr/Q==
X-Gm-Message-State: AMke39kV56Ixzae5iRbUEJ/IeiykuhhFYOex/CW+qId34ngXKrPUt51aptoZUshmMLo55A==
X-Received: by 10.223.176.217 with SMTP id j25mr12176235wra.8.1488741981866;
        Sun, 05 Mar 2017 11:26:21 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:c85a:3772:cb0c:b839])
        by smtp.gmail.com with ESMTPSA id q75sm1385094wmd.27.2017.03.05.11.26.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:26:20 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] drivers: staging: speakup: kobjects: Delete spaces
Date: Sun,  5 Mar 2017 21:25:17 +0200
Message-Id: <20170305192517.18409-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted spaces to fix the following checkpath.pl issue:
CHECK: No space is necessary after a cast.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 37ee6dd..c442d95 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -109,7 +109,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 				   struct kobj_attribute *attr, const char *buf,
 				   size_t count)
 {
-	char *cp = (char *) buf;
+	char *cp = (char *)buf;
 	char *end = cp + count; /* the null at the end of the buffer */
 	char *linefeed = NULL;
 	char keyword[MAX_DESC_LEN + 1];
@@ -476,7 +476,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
 	}
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	pb = (struct st_bits_data *) &spk_punc_info[var->value];
+	pb = (struct st_bits_data *)&spk_punc_info[var->value];
 	mask = pb->mask;
 	for (i = 33; i < 128; i++) {
 		if (!(spk_chartab[i] & mask))
@@ -553,7 +553,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EINVAL;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	var = (struct var_t *) param->data;
+	var = (struct var_t *)param->data;
 	switch (param->var_type) {
 	case VAR_NUM:
 	case VAR_TIME:
@@ -745,7 +745,7 @@ static void report_msg_status(int reset, int received, int used,
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


