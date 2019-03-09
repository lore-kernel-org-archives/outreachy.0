X-GM-THRID: 6666290525545431040
X-Received: by 2002:a17:902:369:: with SMTP id 96mr6931981pld.35.1552116725409;
        Fri, 08 Mar 2019 23:32:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5751:: with SMTP id h17ls4072224pgm.4.gmail; Fri, 08 Mar
 2019 23:32:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzBMRLIOtV0WWks/YiidTo4KEj7FDlzvcIdUYiHvhD+YB66tSZYvSBQYtdk9mx4/JPS6xZn
X-Received: by 2002:a63:7043:: with SMTP id a3mr8707160pgn.115.1552116724662;
        Fri, 08 Mar 2019 23:32:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116724; cv=none;
        d=google.com; s=arc-20160816;
        b=Ac/HGF4ZJO0n/5K9i227r9+bXbVrpsN/p3QO4QDQD76RNEW8Eb6YaY8oKOjhGMIn9F
         +MjC61PBbPD8wZCV6TD4ck4IQy4pre366TEwVWbTWbD9AM5/VeOB8yuUvM9ohA9pKqJe
         n2NOdOegA2V/pZknlJNDYbE3wm29qpupT3GiMCpNnmcp6EMHX75CrrfgHvk0yfFO5sd0
         Xm7RLs69dzuIe+SR1MSwoYLsRolS0C1e+j7LQd5fiQfEP6scGyHgJDPMzHXdASbApJzq
         Km4ExYGrsHJCoeCHyp5Udwr5Yyq5M0gv3/q0O1VRNu7/SW9vJ5YwZi2v2F6n7KCbL9DF
         iSnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=G+Z372xaj7i/TNZ21w8UJx+q9krFfjHcmHo69POfwTo=;
        b=uxJw5pOTf95Oi3R1Zj24+bAe2O9gGMWA6zJgP0NbYpuhULCZMMBu7MRpe+Cxen6ddg
         btywfx/5ON8FWKo7T67/WCuYy0SQvjQP4gjKT67Y3EFVjFWvjCiogFyr662MgW4CUDUR
         mEgRlaEf/Pn//Y67iJjBQGq1PAbcl3QlgBMHE/hS92Q5KMnI17Zdi9p1ac7OlwO0IP84
         YfEGqwttVVkBM69KZDuBkjCRULQ9qRJBcyQN6ekkvV+VR2y0lA5nkPwpU2euPKLM0Ku1
         iOHV6GqIjZ0RUp97qKh7HmOjZEgQAgLoDjotk9eHJvYQ5UY873PrDLm5/LPHj1MpuvtZ
         dguw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vQBAkA+T;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id e71si674740pfc.1.2019.03.08.23.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:32:04 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vQBAkA+T;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id n22so15826802pfa.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=G+Z372xaj7i/TNZ21w8UJx+q9krFfjHcmHo69POfwTo=;
        b=vQBAkA+TG+SXviYq7qP7fpGrIQYHXJmZcGoJle1ostMc6TnpjYFIEw20DT9p7W1tAS
         kZ913mqw5mYpE7IFEXKZ4/HXaYwAEpYSShTqqYGrdsxtT5cZG3NcftXIKGds+JzaHsJI
         3V/V0BKnGUd7dZyZFExMsQx9BbFBloGr8CxvhgPEAUOdKk1vlxCFHpELDZh4Oexgnw2F
         Mz+MEe+P3fAHuMELqr8xsZjSetP1ExSxsAGN4KhFuh7N3AUSnAv9yNjZxk1WCt/7IDjX
         jcp1JVML3xNsdc1mogYU/1E99WoJoyGiZxsDLZx7ubtN8OJxz1rbG2lDEiPwjRgQz7F9
         4amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=G+Z372xaj7i/TNZ21w8UJx+q9krFfjHcmHo69POfwTo=;
        b=Qf12TNgrLbSsKzmvw6fuE+7rLLFXP/oNuNYb3xvEJ/UPtTTMvA88g9TC90H51NHexH
         W5Q7I8fH86CWOcsAgvfqMhr4cxIE5KepfHcYjkvnUIMCANhxSxkJqHERGaXXcfjNKUnH
         4fBV8xMQbGaVBOAmFQun7KghfdLm5Q6PjPpk2Bj1VU3Auy6Hsg7SE50PydU/lhQan6j4
         9p1fXKQClK/h6a6VkziwrsqpDNOxiH39ywe5UuFh7uJdmWAISHEocv/mhhRoCDjt+Lkc
         aFWBlz3N+03CsRH+uZpzrrYz3FtcDEV5D+F/cjseO5KwaywVy6QyBEvq3v69DOkm83F0
         /+pQ==
X-Gm-Message-State: APjAAAXC9CtdyVGpOCAV+K1YQ4SIzZMl3m2abShl5pdrUpow+OMbwUK2
	V/yg1+GyvzE41t0rS8sl/JQ=
X-Received: by 2002:a17:902:2d24:: with SMTP id o33mr18051259plb.157.1552116724438;
        Fri, 08 Mar 2019 23:32:04 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id c127sm23538426pfg.133.2019.03.08.23.32.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:32:04 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v4 1/4] Staging: most: dim2: errors.h: Correct SPDX-License-Identifier
Date: Fri,  8 Mar 2019 23:31:21 -0800
Message-Id: <20190309073125.5610-2-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
References: <20190309073125.5610-1-etsai042@gmail.com>

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/errors.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
index 3487510fbd2f..268332e5735e 100644
--- a/drivers/staging/most/dim2/errors.h
+++ b/drivers/staging/most/dim2/errors.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * errors.h - Definitions of errors for DIM2 HAL API
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


