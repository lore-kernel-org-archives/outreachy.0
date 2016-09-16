X-GM-THRID: 6330756111319171072
X-Received: by 10.66.129.232 with SMTP id nz8mr76133pab.14.1473994022825;
        Thu, 15 Sep 2016 19:47:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls2085431otg.26.gmail; Thu, 15 Sep
 2016 19:47:02 -0700 (PDT)
X-Received: by 10.157.48.17 with SMTP id d17mr3320568otc.20.1473994022506;
        Thu, 15 Sep 2016 19:47:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si3398543pfe.0.2016.09.15.19.47.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so24213pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MAkd13vPfdlxhoGCIJbmuRD+bbCoLdwOxtu6Po511wo=;
        b=Gg/RZrB0GmqO07DT56iZuu4JZn/sNP/qIffO8nGljIbPjYAQLWLE51y07KtMUvVNWx
         vkWqVD8mc8yj+FHMBrG+lnVHQNRm7OIgfEXnhuprDycS+3QXmKmEhq5NXoNLE03Ly+73
         W29JYy78vOFArRBEH6ybEKn2vJNRy/CvKl5pERlO+6vZnnZyqls4OwPJHm8ena5MhPhY
         sQPaBW2Aw9qpOKhXGkqMiH+CiUCHTWLd3bfaQrfbtj1b915L2e9eQhawm1RFgifoG5yO
         +oLL9ICJOm3ZUpeA4siSxZXlb2Fs8TyTff+g4EuUR0rbgQPdqPKGuB0/qfSdSSoUjxqg
         aBbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MAkd13vPfdlxhoGCIJbmuRD+bbCoLdwOxtu6Po511wo=;
        b=ILgeJVHl2umntWCBTJGmquuVgMvnv7Vnrzhw0Cdi8m+I5JNxna+fycIoqyTbkp8FQ0
         fokLhrq4cgLfqvo5zkQGq4QLvQnvjAGLzjE5scHUy37VLfsE5Y3p+ehjuXRPWEJgszIT
         7Vcvu3jXJ3WrvlfEkY1dZRw4ajZOV5p42UC2yv20mkeSaTJkjvE5vcJ2C439H1SzLIyt
         dgB6TGNY+tiHveN8L4mY15cRU6CIgZuNhudhFu/WpA7mGWJpOmxETqBA/yZwepgNdiVV
         JGG/p3WeCB7Zru7dnJG1/eM8ElM+Q6q9N9EdBSLzEIYcoRjzKPSMXQr7/CfnOH/siUxS
         0rzQ==
X-Gm-Message-State: AE9vXwN0TB99YxpGBARKbC8KDsIkdALsNU4k6Eb5wXa7MRoBmyPG3Cj+r58v4N9JdN5fAA==
X-Received: by 10.98.70.132 with SMTP id o4mr1739958pfi.132.1473994022138;
        Thu, 15 Sep 2016 19:47:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:01 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/8] staging: wlan-ng: add spaces around +
Date: Fri, 16 Sep 2016 08:16:03 +0530
Message-Id: <36cb40de43738172842a980bf1b7cb27e00384de.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add spaces around + to fix the checkpatch issue,
spaces preferred around that '&'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index cec6d0b..5bb8c58 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -63,7 +63,7 @@
 
 /*--- Mins & Maxs -----------------------------------*/
 #define	HFA384x_PORTID_MAX		((u16)7)
-#define	HFA384x_NUMPORTS_MAX		((u16)(HFA384x_PORTID_MAX+1))
+#define	HFA384x_NUMPORTS_MAX		((u16)(HFA384x_PORTID_MAX + 1))
 #define	HFA384x_PDR_LEN_MAX		((u16)512) /* in bytes, from EK */
 #define	HFA384x_PDA_RECS_MAX		((u16)200) /* a guess */
 #define	HFA384x_PDA_LEN_MAX		((u16)1024) /* in bytes, from EK*/
-- 
2.9.2


