X-GM-THRID: 6249599077237915648
X-Received: by 10.67.22.2 with SMTP id ho2mr36919642pad.19.1455098184431;
        Wed, 10 Feb 2016 01:56:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.7 with SMTP id g7ls286760qgg.49.gmail; Wed, 10 Feb 2016
 01:56:23 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr36812789vke.6.1455098183720;
        Wed, 10 Feb 2016 01:56:23 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 79si317709pft.0.2016.02.10.01.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id sv5so685981pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EXg5QWS9JwQ0B9Ja51Gny1jXH75l+t0Jj1M9IsmLyls=;
        b=ZzGbzb5dQF/ijjmmybsRhaj93oH4VKkBWPmcKI/CIAP2B8sLX98PSCUk5H9CeuBWdb
         a8tuuLqkOeymPnUNwtxZxQYWFjw2ESN+XDjZ6PzcwVjHo++I7X2/7KnSe7+mMJRWWeL9
         XANgUBzvrEPzAp3YC8FMDthjqP9arh/xMwboHh2sNzxV0oUEqk8zqNDpB6LHVxyzxPwJ
         dAiN9TgnT7P5WJYQ5uwsQRyAganUQPNmE24/9dSzg8JGWB7Vti3OjHV9MT4RPd60aBWs
         T5kEMy85mArhI75S92UeN6/Arw4FIsF9FcCB4gRx3ektjY5vnnbmSxeMG/L5MGNvcYf8
         8ruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EXg5QWS9JwQ0B9Ja51Gny1jXH75l+t0Jj1M9IsmLyls=;
        b=Qz3cW13OoEVbd+oy8fcTy0FZZc21xgYyN+zRtA4srhgeGAjJriafqkXa01mcy5frXl
         FVEfea1BCyTpADwHlFvAUGjknU6vduOJYBfCTGARFYaunal3fQYHJXl7P2RnHtLUa9y3
         pBZ/wTAsSiSZrMlUvxAsqZOusxBFnvXdDnmbQegeLBlydHNlBDauVWsSXpDuiETfsMfB
         7b9KF57suBxcRqoNbcHfFjs+uNqXshKB05FZ5RgQKnmmDogOIJ+3z4Yg9MP89o5CNmfV
         IX8Q3vqWhtUSmehwqiiRdymoRDvp6FauSwaB+Zq11nsKyEpvwwNVQQpphlyS+TAc1oVj
         F/zw==
X-Gm-Message-State: AG10YOSP5jddIJt29GDobNdc5UkC1nGIlWrNpzz4E2rg4wQdI2gFCukcLO9vVWbsr4E+QQ==
X-Received: by 10.66.219.164 with SMTP id pp4mr47687041pac.79.1455098183582;
        Wed, 10 Feb 2016 01:56:23 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.165])
        by smtp.gmail.com with ESMTPSA id r5sm3836878pap.7.2016.02.10.01.56.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 01:56:23 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/4] staging: fbtft: Add blank line after function declaration
Date: Wed, 10 Feb 2016 17:56:08 +0800
Message-Id: <1455098169-17667-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>
References: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>

Insert the required whitespace after the function declaration as
suggested by checkpatch.

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c | 1 +
 drivers/staging/fbtft/fb_hx8347d.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index 4ec2dc7..9970ed7 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -203,6 +203,7 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 
 static struct fbtft_display display = {
diff --git a/drivers/staging/fbtft/fb_hx8347d.c b/drivers/staging/fbtft/fb_hx8347d.c
index 4e9a6b0..450a61e 100644
--- a/drivers/staging/fbtft/fb_hx8347d.c
+++ b/drivers/staging/fbtft/fb_hx8347d.c
@@ -140,6 +140,7 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 
 static struct fbtft_display display = {
-- 
1.9.1


