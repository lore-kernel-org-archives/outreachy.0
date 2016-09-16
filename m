X-GM-THRID: 6330723206000803840
X-Received: by 10.36.112.144 with SMTP id f138mr4500178itc.6.1473986358180;
        Thu, 15 Sep 2016 17:39:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.138 with SMTP id b10ls4902855otc.21.gmail; Thu, 15 Sep
 2016 17:39:17 -0700 (PDT)
X-Received: by 10.157.14.134 with SMTP id 6mr8523656otj.35.1473986357815;
        Thu, 15 Sep 2016 17:39:17 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si1701713pfw.1.2016.09.15.17.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 17:39:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so1426155pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 17:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=By6CFuAU90TT6jxl3+PQvrQPapEQYpZCy8vgJzI7Tqc=;
        b=T94wGTsBSU+Lb6DVNOIBExVQ1c6GS/P/CorrTFDhYJI40h5vo/9WJw5jxMsDT3jRey
         wMRszQeNJ6hsq80RwofK8a6KhvALsgzjXC9qsnPIDYUAe+TVPRA4tCpj9v1bpwqYVhpX
         pYjt/n5ZoKhAi2mV40JKkjlmVoMZgv7S8s3SuQky85lI3qLJKaZIlGNiJuezs4AMFamH
         sWYHFMlpscv8m2AHNZFO4XqhOkehmmgakrvXG7tGvJW4T6RqhO7aZ7opBoYDYAb4HEnd
         RSyCHqmaVQcL0K6SIajOVf38l0bF/eLgHFeJ3ySWPt1IfIxRmfnWJIVvh75ydgTFQTNM
         Awxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=By6CFuAU90TT6jxl3+PQvrQPapEQYpZCy8vgJzI7Tqc=;
        b=ijvQPb8CQP4f7yilzaF3Bdpew1hrnowxW49afwBKePBpg5QBCtVg9IaTMcozDcgeR9
         EyaW9/i801c79Q6yKla83b4QgmnqPdmwuhdX7HgRS5DgI24lddMBsRzx8CSP/s1WLsmC
         Yz6B/vQOsegrZ7C7dnZlyZ5GPClIALy/e8Z8RA95zFRZWUvC2Pu0ONNsYpPnyTxm2IMo
         yBElOe/50UdkIzTiCfiCERGiUe5vGhP/19OmKv3JGZCtC2FxFfQ+eeyAQfd+/2ylAbKR
         2m1Ey2wEzrmA5biHu5aF7UL9rmUNgoHCYQ3sbNQrtfF84BDCpW5egARkUEmRRNOYrtap
         40hA==
X-Gm-Message-State: AE9vXwM2jBYrDbBZqKItk34vlsIgNOUVcfy6FBp7McgaR+MXs0CqMORHEUiW5OgQU85J3g==
X-Received: by 10.98.131.142 with SMTP id h136mr18883936pfe.92.1473986357450;
        Thu, 15 Sep 2016 17:39:17 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i68sm47603172pfc.25.2016.09.15.17.39.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 17:39:16 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: i4l: correct misspelled "ressources" to "resources"
Date: Fri, 16 Sep 2016 06:08:35 +0530
Message-Id: <20160916003835.20714-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

change ressources to resources to fix the checkpatch issue
'ressources' may be misspelled.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 1d93151..c800da8 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -176,7 +176,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
 }
 
 /*
- * Release ressources, used by an adaptor.
+ * Release resources, used by an adaptor.
  */
 void
 act2000_isa_release(act2000_card *card)
-- 
2.9.2


