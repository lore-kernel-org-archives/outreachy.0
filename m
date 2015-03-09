X-GM-THRID: 7207946027008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fcd780a8690cb6db
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.34.133 with SMTP id z5mr28259602obi.3.1425897818034;
        Mon, 09 Mar 2015 03:43:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.71.76 with SMTP id s12ls485109obu.17.gmail; Mon, 09 Mar
 2015 03:43:37 -0700 (PDT)
X-Received: by 10.182.135.230 with SMTP id pv6mr24977365obb.17.1425897817858;
        Mon, 09 Mar 2015 03:43:37 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id gb13si2538191pac.2.2015.03.09.03.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id li10so71869060pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nDddGF0AT1plNo5QI/JEfqcwLg5HAxiOW4kBbaqFnNo=;
        b=0ob5JoOhGSiv0IDoAOPwRRzHY+QDg1Iq8nFXoKHi0UhG1Vz0b9lMtFxUuNHZWT2Lla
         BdRWE1bat+LWWlcWL8NzxC/Y93GzyA2lYbRF4w2OqRurtG9zZ07vQxkqOOeKi6QoMuy1
         x9LAQK5jF+EOD4J2EJbANxf6y+buDXNqblnZSjZOrK8mTnA/defYWNNDlP+NplYJSSh8
         65AvaWmlOMajUO1dozzNYHdl2qr/GLjCT0UT+to5JNMdacoCrWblr7v0oky1Qy40kMix
         uzaKcay4fAzvpobPJ7pfzkxkOlY4+PozzHQ+TUJLwlFEQuAHmMKaqAnY7zvm0fyjfD3g
         +1lg==
X-Received: by 10.67.3.105 with SMTP id bv9mr51339407pad.149.1425897817711;
        Mon, 09 Mar 2015 03:43:37 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id d12sm18633802pdj.2.2015.03.09.03.43.33
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:43:35 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 1/5] drivers: staging: iio: accel: Removed unnecessary variable
Date: Mon,  9 Mar 2015 16:11:16 +0530
Message-Id: <1425897680-6179-2-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>

Variable len is used only to store the return value. Hence len is
removed and the return statement modified. Coccinelle was used to
detect such removable variables:

@rule1@
identifier ret;
expression e;
@@

-ret =
+return
           e;
-return ret;

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 31fb218..b614f27 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -870,7 +870,7 @@ static ssize_t sca3000_query_free_fall_mode(struct device *dev,
 					    struct device_attribute *attr,
 					    char *buf)
 {
-	int ret, len;
+	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
 	int val;
@@ -881,9 +881,7 @@ static ssize_t sca3000_query_free_fall_mode(struct device *dev,
 	mutex_unlock(&st->lock);
 	if (ret < 0)
 		return ret;
-	len = sprintf(buf, "%d\n",
-		      !!(val & SCA3000_FREE_FALL_DETECT));
-	return len;
+	return sprintf(buf, "%d\n", !!(val & SCA3000_FREE_FALL_DETECT));
 }
 
 /**
-- 
1.7.10.4


