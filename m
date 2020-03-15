X-GM-THRID: 6804511537677467648
X-Received: by 2002:aca:80e:: with SMTP id 14mr14375736oii.143.1584298856557;
        Sun, 15 Mar 2020 12:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls5326258otj.8.gmail; Sun, 15 Mar
 2020 12:00:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vur3qpOpkQp/JNgtqB0uLG74TB9/IQcuGouXHmWGQ+V0VqpvYV1J4CpsLPQsWexqLgnHswn
X-Received: by 2002:a9d:949:: with SMTP id 67mr19802058otp.304.1584298855346;
        Sun, 15 Mar 2020 12:00:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584298855; cv=none;
        d=google.com; s=arc-20160816;
        b=tG3IalP7yE3fvk2hPUb7MdpDp5Y4R3O1fd5wyDa7Bv1NWSTtCUBIxp23dhBCR7ajNv
         mzv8cISL3Bhf/GBTEa1LkueGu6VieK1F+puKJnNH8PmnZopD/Dzxlaxt+9z5g+miM6A2
         BEYwnOiVg0HICqPKlCWr6XNJXazTOXzv8lW21oSaot4ueDXvC9ZtbmVR3fLOnl19cWsE
         M+zku2fQjt3eVmZpt6ZP0xjuMSQBHaRcN8gudY71Utnx/+NOowytx+cJdV/DzGKyIOI0
         dESmeQ4TKpkkD8lTtnoBrfYhuUaOJHNpAnIPvG4P9e3lntV8QDyLCQ47j1CZfiUlWQC6
         eUlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dOl98hdtwWD6WGiF2f3JgBAOy6EWHbabHZ99IPN/Hbo=;
        b=C3SbtBnwZfW8Cdxw7sgSkMEZhusRJaECRc3bBS2nSWsGntME4aWRxNNP3dvievXvlK
         P7Y3RgKV8Olo2u+x63jGvI6K8fqPjPI+WIEV6eBBZPlqLWHVJF2D9+s+1GmcfW2I88G1
         VYfwaHKn6EFNADfrxIVuqIwudQPxbcqByIMk1xfjzHQZVBmCTbRwEAyYPQVDpw8kMS3T
         4uA1+bVSFMfngPk6ZB9gIk7yBJVhmfHo/ODRPZIbHmFf10hQ8OdKLqF1J35G9Amt3bKu
         M5wEyCMl3Sb7sK9P1nkP6gLVpSHbjejh0QogVvwXL7La0ikzmiikSnBsA/Tvq9udpyeB
         5jxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=NKsrt6lX;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id x23si886351oif.2.2020.03.15.12.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 12:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=NKsrt6lX;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-oi1-x22e.google.com with SMTP id g6so15419826oiy.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 12:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dOl98hdtwWD6WGiF2f3JgBAOy6EWHbabHZ99IPN/Hbo=;
        b=NKsrt6lXhF3H1oWszW0iGCzD2BPeYo/wD7wfI1tnNUqn/IY0w7UidlISbOuJtpgXqV
         mo6SnfYcLeHd+wtEe6GXGp4BfPZtQrgucm5Dunxn3Z81flhzmw1RES2h/fCpm5PSPGtK
         52S7r5rs3uwpd8ZBs/GeoxcxThyn2hKWfGUX3tGg/D79Xhs9MsKVZBcVDC8eaaF5bp1G
         tQsp1RJuH7HCxC0E37W4uDAALrvqnnO5b7sQTGig1rpNuZoR3AzhiKeVM11nAFpWpMzi
         laUIAFn+w8Vv0LaZXUu2wW6UkIKAjuZaUkmcoqAC2dUFu1ozSazaEKAJac5GkJx8/bnx
         jguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dOl98hdtwWD6WGiF2f3JgBAOy6EWHbabHZ99IPN/Hbo=;
        b=B9XoA+S1odyPYvjbCHzQbr9VpzJjZDu65qfamjvUzP0AU/oyAGP35tIT4bZfcyxe7Z
         NqdKa3bUEsA8vd8jbqgGGcY9/MIgSkYUBNBlblb8rwIMuS4/HDQxgy59weJGQMOi9yts
         g54+j1N/dUJzI2+/woyAT61up2QLXXxkClZSk3XO4DMResQ7rCaokVXZf4ibO7G6WQDM
         hs6jkRLa6gDFmHHgD7//t+OeNhh1D2+/njomyTNCNjYD7Iibx8CMAsnaYYHKq5G+EJlL
         j3YNblGLEhRwZAqJdDmOYk7CgfeZMWhC/0dnpU4zWvaKNrbbicTG+nmAHYE8pjCtcZpj
         A6eQ==
X-Gm-Message-State: ANhLgQ2VHtv3faKzz3cH7tACDdjQ3K4W14/RSBNJKE4BeAQb3C8WjgY/
	sZIJrX/UwAa7+ySFwNxb8dTkvDpKuCzQ/w==
X-Received: by 2002:aca:4a55:: with SMTP id x82mr1636744oia.28.1584298855109;
        Sun, 15 Mar 2020 12:00:55 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.49.121])
        by smtp.gmail.com with ESMTPSA id h92sm10785016otb.2.2020.03.15.12.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2020 12:00:54 -0700 (PDT)
Date: Sun, 15 Mar 2020 13:00:53 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Helen Koike <helen.koike@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 1/2] Staging: media: rkisp1: reduce comments width bellow 80
 chars
Message-ID: <5e08334eae9ca864dbb09c02291fd72687681c39.1584298430.git.jevargas@seas.upenn.edu>
References: <cover.1584298430.git.jevargas@seas.upenn.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584298430.git.jevargas@seas.upenn.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)

Make 'Main Picture Path' part of block diagram on separate rows to avoid
80 chars WARNING found with checkpatch.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 57 ++++++++++++++++-------
 1 file changed, 39 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 558126e66465..194fc33941f0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -37,26 +37,47 @@
  *
  * ISP Block Diagram
  * -----------------
- *                                                             rkisp1-resizer.c          rkisp1-capture.c
- *                                                          |====================|  |=======================|
- *                                rkisp1-isp.c                              Main Picture Path
- *                        |==========================|      |===============================================|
- *                        +-----------+  +--+--+--+--+      +--------+  +--------+              +-----------+
- *                        |           |  |  |  |  |  |      |        |  |        |              |           |
- * +--------+    |\       |           |  |  |  |  |  |   -->|  Crop  |->|  RSZ   |------------->|           |
- * |  MIPI  |--->|  \     |           |  |  |  |  |  |   |  |        |  |        |              |           |
- * +--------+    |   |    |           |  |IE|IE|IE|IE|   |  +--------+  +--------+              |  Memory   |
- *               |MUX|--->|    ISP    |->|0 |1 |2 |3 |---+                                      | Interface |
- * +--------+    |   |    |           |  |  |  |  |  |   |  +--------+  +--------+  +--------+  |           |
- * |Parallel|--->|  /     |           |  |  |  |  |  |   |  |        |  |        |  |        |  |           |
- * +--------+    |/       |           |  |  |  |  |  |   -->|  Crop  |->|  RSZ   |->|  RGB   |->|           |
- *                        |           |  |  |  |  |  |      |        |  |        |  | Rotate |  |           |
- *                        +-----------+  +--+--+--+--+      +--------+  +--------+  +--------+  +-----------+
+ *                                                          
+ *                                                          
+ *                                rkisp1-isp.c              
+ *                        |==========================|      
+ *                        +-----------+  +--+--+--+--+   
+ *                        |           |  |  |  |  |  |   
+ * +--------+    |\       |           |  |  |  |  |  |   
+ * |  MIPI  |--->|  \     |           |  |  |  |  |  |   
+ * +--------+    |   |    |           |  |IE|IE|IE|IE|   
+ *               |MUX|--->|    ISP    |->|0 |1 |2 |3 |--[A]--
+ * +--------+    |   |    |           |  |  |  |  |  |   
+ * |Parallel|--->|  /     |           |  |  |  |  |  |   
+ * +--------+    |/       |           |  |  |  |  |  |   
+ *                        |           |  |  |  |  |  |   
+ *                        +-----------+  +--+--+--+--+   
  *                                               ^
- * +--------+                                    |          |===============================================|
- * |  DMA   |------------------------------------+                          Self Picture Path
+ * +--------+                                    |       
+ * |  DMA   |------------------------------------+       
  * +--------+
- *
+ * 
+ * 
+ *              rkisp1-resizer.c          rkisp1-capture.c
+ *            |====================|  |=======================|
+ *                         Main Picture Path
+ *            |===============================================|
+ *            +--------+  +--------+              +-----------+
+ *            |        |  |        |              |           |
+ *         -->|  Crop  |->|  RSZ   |------------->|           |
+ *         |  |        |  |        |              |           |
+ *         |  +--------+  +--------+              |  Memory   |
+ * --[A]---+                                      | Interface |
+ *         |  +--------+  +--------+  +--------+  |           |
+ *         |  |        |  |        |  |        |  |           |
+ *         -->|  Crop  |->|  RSZ   |->|  RGB   |->|           |
+ *            |        |  |        |  | Rotate |  |           |
+ *            +--------+  +--------+  +--------+  +-----------+
+ *  
+ *            |===============================================|
+ *                          Self Picture Path
+ * 
+ * 
  *         rkisp1-stats.c        rkisp1-params.c
  *       |===============|      |===============|
  *       +---------------+      +---------------+
-- 
2.17.1


