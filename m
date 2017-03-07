X-GM-THRID: 6394684558131855360
X-Received: by 10.46.87.80 with SMTP id r16mr245683ljd.12.1488904743791;
        Tue, 07 Mar 2017 08:39:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.72 with SMTP id a69ls112617ljb.42.gmail; Tue, 07 Mar
 2017 08:39:03 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr241240ljf.6.1488904743095;
        Tue, 07 Mar 2017 08:39:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id 82si93455wmg.3.2017.03.07.08.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so913186wrc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4qGyCHE0jdo0iIBZ3HnDDqdkdbr73YZmbj8dYQczxE8=;
        b=Xj0TQPMlQlR6ztA3EEHu+2zu4xW5fooSLmjFANsNaSlt+LxzlhcfISTdKi1W2KNb9z
         WYR03oAdcQu8wW/C41Kbojbl6KuH4R8oZ0WFuZHFeFXq0wkzC56s1RKlGiNsgzwgxlqD
         eV0n/QwvYTuKzl3x4+AJz7LjADLeQGGR+FKqWG02VagN1ZNYrt9HaiAeNTJ0T6LlIaWS
         0ah9zJnB1LN2OIiRuJEY1jrQKGPYXY3lbi2MgjN/is0lhx9ynOMdyxiHUtQ78I2FKdej
         lAuSFzeAfze9S7RogOE22PSto6wl5nrS1RSoD6fAkB6V5OV4tZoFTD0Av7W/6TkgtSVn
         haLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4qGyCHE0jdo0iIBZ3HnDDqdkdbr73YZmbj8dYQczxE8=;
        b=ijo4upf/4StNC03xzxRzQQoknU6EiVA4Y5EFdv6tvvHddedmsB8qfjvwa7XK8kKns7
         M7nprMmMoPh0NCtRlBqCnACxYJo2BoYL1msTg8u3LUmJW1Mc5YchRtvJfjjuxODwMUh+
         vyDfREoU9piODZYhgNUOFw8Ix2O+D29F3+azp3svX4MQmzI4s6UDdQlaNxfgzIbJyx4e
         6Txf/HnLSqjO78Z4nDSR3aHd32vj1r6gHNlU7ZKvqV1Avc5m9O+gbmZmpcDzvvkFP3uX
         dEfJWK84EEvaTRiBG4qeMUovOQRVFRV54ikfsvQaL9UsOvMilH3GS4TZJSTH3lBldwmM
         rwEA==
X-Gm-Message-State: AMke39lxw4EmJRhjPIBE/bppH+Q2CvJHSu4Wg1SnS1num/MfJN8OuSMHyZccFwSlzc5Dnw==
X-Received: by 10.223.146.195 with SMTP id 61mr1010579wrn.91.1488904742906;
        Tue, 07 Mar 2017 08:39:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id p93sm614866wrc.67.2017.03.07.08.39.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:39:01 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 5/5] staging: speakup: kobjects: Delete comparison
Date: Tue,  7 Mar 2017 18:38:59 +0200
Message-Id: <20170307163859.9486-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Comparison to NULL is not necessary because 'if' statement tests if
'synth' is NULL anyway.

Delete comparison in 'if' structure to fix the checkpath.pl issue :
CHECK: Comparison to NULL could be written 'synth'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 7337716..b5ffbb2 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -392,7 +392,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
+	if (synth && (!strcmp(new_synth_name, synth->name))) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
-- 
2.9.3


