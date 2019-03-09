X-GM-THRID: 6666290525545431040
X-Received: by 2002:a37:408d:: with SMTP id n135mr5950847qka.26.1552116739781;
        Fri, 08 Mar 2019 23:32:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:3094:: with SMTP id w142ls1795608qkw.9.gmail; Fri, 08
 Mar 2019 23:32:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqyb7QqHpZGQVTLeWPyw6Xopaa7GmtgtRaLwX+4MGN0Mc/CE1FMtFBqFtCzFYNN0teViKuiW
X-Received: by 2002:a37:9a4c:: with SMTP id c73mr12773596qke.50.1552116739281;
        Fri, 08 Mar 2019 23:32:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116739; cv=none;
        d=google.com; s=arc-20160816;
        b=AGBbGyIo/rO2cnX3vVAN0iaSdsSIuW0Mcel61xeyRKEG6cR466yWB1/zN6CpkzxlTU
         lHIwzTiufZO4mopZc+wbcAchSLXvrfwDQIEb06WmU65i1XlHiamLxPodMMLZmoQ7PbWF
         L8u3ru5D7r1j36aun7txmAsO/0oldtjFHmGMyPZrBSe3f4FTM5JZsGwMb/XGAZNPdEtS
         33n7n5zCvH+Zjl67izvsym6RPC3yzcGq21SuNMlJ9d7Ie2aYDHBoQGRTeoxELUez19X/
         yrbgpq+rXEIux/+/0R1NrhDxu29qF+v5daD173L2T9HzLtQ7OGM34L8cmgMrMEwo/3nK
         qNLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/QyheWbtAFQ5avQdnnNPK5XQqoyTmV/ZdyJO88dn6Rc=;
        b=iIr0Fzy2tJ6tS4oAvVi0HZa2ERai4ULjSK29POI5KMxexKLFvHAty2GwP+QiOB5Dmz
         x9vA8TACwanO7fi9HROPU2xNmpLAE9qHjV8BbSa9nij25TKLP8MMGOjuUFpSfEpLgKFL
         IJvC1DQNQxlZqBR8omYOn/b+S65cK8iVNrhuMsj7pY7o2LKw7WuplOttXy5ALTI0qGnu
         y/UsBr7d7Jc2ozfwRUzuY4yKUqkeE4z3WCKp3J+T3fXbjcE0awuieYGHkPUeduqpNCBG
         Cx3+eMSA2XWsHTjA575nvVxeCZchDIY6Tb7Uzcna5EDLKSRtHp5NN0zqfQPpmdTB/GyN
         OFlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zdx6Gote;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id u65si539886qkc.5.2019.03.08.23.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:32:19 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zdx6Gote;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id i19so15834126pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/QyheWbtAFQ5avQdnnNPK5XQqoyTmV/ZdyJO88dn6Rc=;
        b=Zdx6Gote1jHLkRbtTgUpmkB0ZPOCAQHfO44dyFVzoh8T6GEw2bkzxcYU1UNONl/xoH
         keYLLsJo4r34RghcPVmWhC7I/f9KljmrvI5tjCIes8t9U7d0ueHDtf5cCvudr0H2qg/M
         D6A6o6s9dt2NPUn5XuviUPx/BL8rtHFwjHsbb8lb4zLLvWWMh7iKi8cGfYNDZmD07oCs
         zT+HZOYKN3rdivq/dD6/q/oQOffkUQrKs+08O4hDzV5z7WORglQuJlzSABnyQA1g/f1j
         01KwczcNrlUVzVEpQ8Z/lx1FQQoFrLwM07dlHkVJI8JnfqLeLG3ay5MhmUll1foveFB1
         YdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/QyheWbtAFQ5avQdnnNPK5XQqoyTmV/ZdyJO88dn6Rc=;
        b=HnZOr6B1jH6rGPpeZiMmZZNUzQPLdboQU/vOU8hH0foIxj2joeWx32JgNYm7J87IXN
         /zmKoC5PStvng8DQ4o+51kZW5vJ7cvqIQ3XWRkZ3QgxXLmG0H/3AfVTW0u85WSc1B3LK
         T+o8MhQJF9AUTyor2aUgjNeBM87HbakGwEOLrBemDBzbu2KqlZJJY9lben/JmwfsvNwq
         Bun763X1dZCAp2NyAtrISLFtZYOt6lZ2uwcFyH7BdnfTgUawzG551D4G6sFwLPWxePcx
         VOe3z66wyoNRXhm6x4SrY6gpe25N+gq9BcjarytqQ6uT+LARPTZStg0vpMHMPrqZSnJJ
         FovQ==
X-Gm-Message-State: APjAAAUNS0MMYGj/78AjVgeu7aMQdnOFFBzx/hdJa/fUEy9qitTjxX+0
	Fnd8NwjCaTP1j4u26uHgDvWYTPNAYGBDBQ==
X-Received: by 2002:a63:e206:: with SMTP id q6mr20040665pgh.87.1552116738462;
        Fri, 08 Mar 2019 23:32:18 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id g69sm23236483pfd.168.2019.03.08.23.32.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:32:18 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v4 2/4] Staging: most: dim2: hal.h: Correct SPDX-License-Identifier
Date: Fri,  8 Mar 2019 23:31:23 -0800
Message-Id: <20190309073125.5610-4-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
References: <20190309073125.5610-1-etsai042@gmail.com>

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/hal.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/hal.h b/drivers/staging/most/dim2/hal.h
index e04a5350f134..fca6c22de8a6 100644
--- a/drivers/staging/most/dim2/hal.h
+++ b/drivers/staging/most/dim2/hal.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * hal.h - DIM2 HAL interface
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


