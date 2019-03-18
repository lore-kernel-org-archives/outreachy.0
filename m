X-GM-THRID: 6668974051336126464
X-Received: by 2002:a25:2f44:: with SMTP id v65mr327060ybv.2.1552950776934;
        Mon, 18 Mar 2019 16:12:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls4419837yba.0.gmail; Mon, 18
 Mar 2019 16:12:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzN8/v3yGtr870iTazWeDnotbIeFKeYDVv4b1+n+ZdGa64NdAgYMUv8hAa9QUsxMct74olA
X-Received: by 2002:a25:6dd7:: with SMTP id i206mr6210396ybc.97.1552950775953;
        Mon, 18 Mar 2019 16:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552950775; cv=none;
        d=google.com; s=arc-20160816;
        b=0kbiG11ToqacGxIyhCYb0Pw7uHM7hpPj+xR27aMBKH1sU1yR15S/vKgt0fFegPvFjy
         zyKRFfh6Uo6kKhbAm+dzI0KcE4gRamMW+Tp5pYzeoCH8aOSLb/xh4fSUSRxAgQxO57MT
         5qaS27hZT8ba6R8deo9aIRCxXqIqmQXQ8/+TLT4bc/DB4N/haeqgPqic589JuggzAP6i
         yrDdK4tibs0MU/SIvmuQ/bGEeRnMG0hO0EW16sdRpkAiiB1/DSe7Nx/x3jbh39IuZ3E5
         g0zh7CBsiDZZYw5KLLzGT9fRZYgbPRrJXb35LWcTQOFfS0RuRkTpHLkOlHYdndJGmU9B
         +mRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JcLKsKzDmNJPblpxSnvjPI7v72OKtJT5/Z3OnH458Hc=;
        b=VZnHRznNpTm9E4jF3EQTXk8SJh4AO/kMDzcu3wCmurPTyKiVIMB3zdEbe/sYQ3pIi3
         iqe6K9hfyMhEHQkI2CXkZe44cUrCmU7cHJBpXCMg8zs26s0BX9Wuj0hb0lqguYT9ntQM
         Sdhkos37I4UE18Kejrz++G8Pwwdf9WxZO8heW62vK0Q0LYmyTX9YhMEF5mEHPqYRZobK
         W+9+B6g62Tno2JGCoKN6Hyssbilvw4v3tL/IZX5jvXjm0rvAUfiAQB4LuuYMS/FEgVcQ
         h6CfZ53aj3gkV9J6O42zva2SQOz7WdvGlH/NNGlGGED3BO8bS2U1mDHEIym7DZn7TCyp
         rcjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F5uRgQ+4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k62si719581ybb.4.2019.03.18.16.12.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 16:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F5uRgQ+4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id x8so16004355otg.7
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 16:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JcLKsKzDmNJPblpxSnvjPI7v72OKtJT5/Z3OnH458Hc=;
        b=F5uRgQ+40s451YJ1IxFSrJBjsy6ffGeVsBJ2/7nPRJ8gYIB9WnFrHHz0hWwJd9Ong8
         OpFXvWEkqwBSc8yRbkze1o0JmB2mPSrEykPfhBWMOha3uR9OtMuuwbXGyxYvSQJMk5kF
         fWytaFMcQW6uEW6CvHNjqlg9crUZ+DyKgkteV9gqbnECTKOnUKsWla/JeXt9eI+Y/J65
         VrlAiZU556tEyQi3YrCibMDW8idY3+Yv/1aCQEtwnJqEmGh8Zk4eQ++njurYoAVRlW3s
         mnMqMZU0DdwIk3hxsZ/4qfHVXpeBcZoCO9sKAGIU8CPCplfPgqNm3CBiGi9VoImoBE8k
         6bYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JcLKsKzDmNJPblpxSnvjPI7v72OKtJT5/Z3OnH458Hc=;
        b=lIuy/2AcPkFwWtzs2Q0lqsO7a6ympaQ377g4/faWMVQvH/oDUGwGxH2O562GzMWHeh
         yJXPW36XIM9FTbmWJXeYG8mpF0v4fcb7RtfdGy+6OlrwwA8jDJq7PQ2amzWqZKU+AaPJ
         rAB+IS7DGNHCtpiGI2YdSyE7n0ZjD62uU8wszqQKh1CtZjKoAk9i7eAw9uDditEHkiqq
         MpamXXqoITpb7+OGGBJlyt1ZUjCejiFD8ivW18PSRT3+E1SKBxT7PApm1ZNnLczGXVhX
         8cwDAT/eG0hD3YqpvpY2Wuw/qMEYKGJ8M2+1AMSJKR0ndcqaW4Dzh3yz36ao+MIWmpxp
         5OPA==
X-Gm-Message-State: APjAAAUMmPiKGfm5uWROCEP0gV7h9XddbKUx5dB6pz6jptS1N4tAuOw5
	1iayc0AJN/laovTHz69mfUg=
X-Received: by 2002:a9d:5e83:: with SMTP id f3mr12267599otl.181.1552950775520;
        Mon, 18 Mar 2019 16:12:55 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:34ed:fd05:e76:6c04])
        by smtp.gmail.com with ESMTPSA id 88sm4878179otx.57.2019.03.18.16.12.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 16:12:54 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 4/4] Staging: rtl8723bs: Add missing NULL check for kmalloc
Date: Mon, 18 Mar 2019 18:12:36 -0500
Message-Id: <04d8eae567af3cb430d343e19bfd82c9f19784bc.1552950374.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>

Include missing NULL check for kmalloc in function rtw_init_evt_priv.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Change in v3-

Split changes into two different patches in a series.
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 9edd0dda3c06..bd3a5a23a418 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -210,6 +210,8 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 	_init_workitem(&pevtpriv->c2h_wk, c2h_wk_callback, NULL);
 	pevtpriv->c2h_wk_alive = false;
 	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
+	if (!pevtpriv->c2h_queue)
+		return -ENOMEM;
 
 	return 0;
 }
-- 
2.17.1


