X-GM-THRID: 6207482452562149376
X-Received: by 10.112.150.229 with SMTP id ul5mr1095071lbb.2.1445371028818;
        Tue, 20 Oct 2015 12:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.201 with SMTP id 70ls120679lfx.49.gmail; Tue, 20 Oct
 2015 12:57:08 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr1095061lbb.2.1445371028310;
        Tue, 20 Oct 2015 12:57:08 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id d7si185692wiy.2.2015.10.20.12.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fx6so61479078wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ULN+8OwlusTOUZ/M/RSfJFhNLbOeZB/SzLTNS4sUnYQ=;
        b=WVM8gfrmZfUuSCA33BrwWQcAg20Lbm6AALk+7L8RDBy3jn5r8fE6CydMjWXuBtNWvr
         odhXTmURt9a/9CYeMQNsf7vGl2HEQu44bDzMGln28ZsyeCoKbntFCzY1lckXvm4XQuJO
         gjrHcydAygyBsZ2bin0aKSybDzybSYKm0To00LQYAJbsOUOPtEO3sc52nCMIWZu3zvst
         Y0szxXHju8vGJTwd3pgEGKKiLc4m6zudZQL8aOp3PG62f1VCZvpC+vgnXKXZRAkioET4
         tw30uhNmiRn8Hvco06tiAhqlIPuIGB8HahKTBEQGyUh2U+S8ogh60x3BZwKRLzciDa/i
         trFg==
X-Received: by 10.194.184.166 with SMTP id ev6mr6585239wjc.125.1445371028233;
        Tue, 20 Oct 2015 12:57:08 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:07 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 9/9] staging: iio: magnetometer: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:47 +0300
Message-Id: <c6c95c9abeea988e6b77626f3407a326673d2515.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 4aab022..394bc14 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -334,7 +334,7 @@ static int hmc5843_get_scale_index(struct hmc5843_data *data, int val, int val2)
 {
 	int i;
 
-	if (val != 0)
+	if (val)
 		return -EINVAL;
 
 	for (i = 0; i < data->variant->n_regval_to_nanoscale; i++)
-- 
1.9.1


