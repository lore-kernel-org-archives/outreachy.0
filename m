X-GM-THRID: 6251650339458514944
X-Received: by 10.112.77.169 with SMTP id t9mr2887325lbw.8.1455662224432;
        Tue, 16 Feb 2016 14:37:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.232.20 with SMTP id f20ls880721wmh.5.gmail; Tue, 16 Feb
 2016 14:37:04 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr2325337wme.0.1455662224024;
        Tue, 16 Feb 2016 14:37:04 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id e130si848708wme.2.2016.02.16.14.37.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:37:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id a4so2087746wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WgzcI1eqSbQk0oq0033D619BQWfVFMOLenRbtnMyJYA=;
        b=cBRaD2Sj9U7+4IJctGpyo8Ax+j7GGPKD8as5240tW12dUssf/Z1iVxKUBC7mng4K9r
         7mLZDq6ASxIeJ+k8UJFQJPM4bOUcIl+3Jhd4d9dS9h9aag7yUir5kQ7FL8LjfHbKzkz4
         XRSV130uJR1tl+wyL8D0mCZzBqrrSO2E2salms5XldMCRngm9nDcmjoRVsHtTkfP9qqO
         BzxAuq6mc2D/Hivt1JVZ0SSW0+ikTYdSQdKysHS0ogwDKImy5TXzSnVTiYFBgvBjYkpg
         Rf66tSiOTb1pcY72CJ5DhEHBfHJE/2H10dFjmM67TYIatXWXcm3vBNo/Y5LrB12G/qfa
         avaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=WgzcI1eqSbQk0oq0033D619BQWfVFMOLenRbtnMyJYA=;
        b=GyPX40Vz5tZ9Tn7io33wf/dQ1HeyUAhmSmbTphQRXoszZbCAcK2hPTbwuw2PjBZPYM
         ge/03J31GkQ/f0/4D7OjwjCp7EzppEPA11JmK3Kf6mhExnslnGb8AagMy8VMf1SD9FTf
         X3XTQxIOe4wflowaqGZn1dxjAsuHKq26ElGEp6H25ZdLqSZLzUph/H365YFR0Dr4Jt8q
         m9YidfKjuJXyutI8RF7s8FGc2IrcrqpyCJxZEL8KmEdg6qVdN/DH3bSKpLx9OUviEG41
         hlaYwcZ1N8c3un8OupzlBIse7I+ozHZXR+SLiT+Ve0JcoyYmafsKz/IbAbzxvSjlHA86
         uxHQ==
X-Gm-Message-State: AG10YORVYq5tTo5nnfzJqxMd83pKJ9guicdLdrJynW7v9K1ophd08onwWoHRJuxPWsIGXw==
X-Received: by 10.28.111.135 with SMTP id c7mr23322033wmi.46.1455662223868;
        Tue, 16 Feb 2016 14:37:03 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id k124sm127413wmb.11.2016.02.16.14.37.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:37:03 -0800 (PST)
Date: Tue, 16 Feb 2016 23:37:01 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/7] staging: netlogic: Fix multiple assignments
Message-ID: <06b2865d08a79b3070d5d0e5356ba2c65c602977.1455661648.git.nevola@gmail.com>
References: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple assignments in a single line. Checkpatch found
this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index b89e3cb..11c7733 100644
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


