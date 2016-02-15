X-GM-THRID: 6251650339458514944
X-Received: by 10.25.170.7 with SMTP id t7mr2142005lfe.2.1455575898443;
        Mon, 15 Feb 2016 14:38:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.161 with SMTP id 33ls90174lft.82.gmail; Mon, 15 Feb 2016
 14:38:18 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr2153928lbp.14.1455575898008;
        Mon, 15 Feb 2016 14:38:18 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h73si548130wme.0.2016.02.15.14.38.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:38:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id g62so17929393wme.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ETBOrzWARwUcnuLTkLHT4IUUrP6NGqfZD2krc4cz1Yg=;
        b=gTdZGCY8UhHDeEnvKfP59fnp63PRZPv/MAB1hstNksfpa9G71ny2sgrN1/ZKqUaDG+
         uWnb+w627PtsC4tR+zqo+a7e3kFQoZjBVMX6jgzvjrd8hCK6SZyLUiJPWUqvtBzKvnTb
         kljK3pCtK3pJu8mM8b/7gRVWjb02L0UGdrT9fo7eNJVRyD3GJbzze2tmxDzhrlC871/R
         EV2iazgcJIvnIV9ymkaggy1cup4u7Xykhl98KQngVYNghb9aW8D8QdCUafzkgZIBRBJs
         Xdc5cYKt9y4e89x+110nyvAIgbNFeV1xOMRnJYoNh6hDNI9RsLF0oFhIjFBahmH0d0y4
         wh4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=ETBOrzWARwUcnuLTkLHT4IUUrP6NGqfZD2krc4cz1Yg=;
        b=Nr6PEXbYyIsPRjlzRFqmY7JVmLPYLIN3U2W2DeopC05pa5G6mrauJHPPxGiMd7TsPX
         CTqUOm6WzdB5Kt1Fpud5poms1krX8dg3eMdhwvS05v52uytdVhr6wAVQsKj72M8E/jnP
         r+jAObny474HOM0olHunWFz0gpWxopmsLwcnJxXUBe2xOu0ohxQoE4AGxkqn9jhpDQT7
         JhYzKPO0eh1tjpReL6qm5LYguXdXzvpKZnFCdJjrwbRiE35a0l5D3B4K81/uR73pdB4b
         qU+5S5L6uA5BPqx7uPSgwswK0g5puDXsJfg0sr8hA0QWtPKxgA05S6xtPh2riZNmnkcK
         c+SA==
X-Gm-Message-State: AG10YORTXKqbHOzMnIKRlYR33XZM5bnBsOgK7j6CLNhuDJQJQsN2RaKBAhkhRVIFg8E5FA==
X-Received: by 10.28.176.200 with SMTP id z191mr15617336wme.91.1455575897852;
        Mon, 15 Feb 2016 14:38:17 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id lh1sm27138141wjb.20.2016.02.15.14.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:38:17 -0800 (PST)
Date: Mon, 15 Feb 2016 23:38:15 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: netlogic: Fix multiple assignments
Message-ID: <3bc86f8cc663d1f790a61fe949c8db9b0f756740.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple assignments in a single line. Checkpatch found
this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index b3f03b4..c1bfe7c 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -265,7 +265,8 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
 		((u64)fr_stn_id << 54)	|	/* Free back id */
 		(u64)0 << 40		|	/* Set len to 0 */
 		((u64)physkb  & 0xffffffff));	/* 32bit address */
-	msg->msg2 = msg->msg3 = 0;
+	msg->msg2 = 0;
+	msg->msg3 = 0;
 }
 
 static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
-- 
2.7.0


