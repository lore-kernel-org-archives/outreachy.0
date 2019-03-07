X-GM-THRID: 6665741201511022592
X-Received: by 2002:ac8:18e5:: with SMTP id o34mr8276549qtk.39.1551988814846;
        Thu, 07 Mar 2019 12:00:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls2886381qka.5.gmail; Thu, 07
 Mar 2019 12:00:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxEV9HPdfWpSG19l53DkZ96B9Ki76hcUiqcdfb72Gwq7k4jhEyv+8ZDk5LFbEORsOhh3UK
X-Received: by 2002:a37:6750:: with SMTP id b77mr8391319qkc.53.1551988814278;
        Thu, 07 Mar 2019 12:00:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551988814; cv=none;
        d=google.com; s=arc-20160816;
        b=gkjoggt97Z1WcApFS3n/LNhLyJW9MSrC2IEb/tH2Dcq9VK6ZTs8Gr+XjZ/zMxkBuH1
         Fq9s/MHI4ok82cIqnva0rdvd6DSNNBlmVKJEBPZIPKW+7L3OAzX8qA+RPjc1cBvSOnFl
         ZQjUjVwBzK9Fxe2mTZ4fOjHMC7ugbYEuGmNfS66xOub0QXU9FexLfm4Ock6ESmC7Xq4N
         mjppU0Jx7wRl2EffPwZvPrgObhq7Wk3lEF6IcqgAy82Qe7W1dezpVf1gUD2uiBHRysxH
         N9NluRzEMiQTmec+VZyn38sJcJFGu0ZCLLgxoeQpX5u4NbFOZse/6kMbFd0yn3mmEMMp
         JzTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=NINKsGFcQsHiuGBy/+Vvxc+PJD+gm8MquacxByN7wjM=;
        b=Fq0krVHbPQ4iHMCYUMkKuA8onA3LxlTlJ3+BMJd4wHiBK0YgrmUVWsnY9D25vhvNOt
         0U1MC//OvShQ04wsm6YeTd10p82Rj5168wXP2dcve5fIsV07HEMJAC76t5hXU0/V8osi
         wbTHcbl6/vI0PaesVkpVCWctJMhK9ob4CmmGNuDq7rlA4E81apG0oCcecLJuxXdbSunr
         I6edq9a9RHSM8UaBa7CB1VEFIpogU87+9gJvwSW4sZ9kbvFfZJzOAB04qlrElP8z4546
         o5JfOw5qdGfda519LQrgjY1j8OxewMGMzxGoD5msrPRBn0bsc0UHQFJ4SJyyiDDiDa6x
         K6jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NIDMMBaf;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a3si361886qtc.0.2019.03.07.12.00.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:00:14 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NIDMMBaf;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id v20so15257168otk.7
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NINKsGFcQsHiuGBy/+Vvxc+PJD+gm8MquacxByN7wjM=;
        b=NIDMMBafaG4rH0tTtJqzn8rb88deUnm6/GTYXaBHg77dKoPSvxfpap46tc3aAJ4nO7
         +oreFJurHAc5YpzZBaqaF+bHnAD2IVFnVDAO5GEPASbUUMPBz1BIjcZ7BbUqHik9PJzP
         1DygOvqRqZSXGOg0Pir8nvE6pJg2yQaAEGOekidl7gSBvcY1ploOk7umFbVnOb/LmINN
         KtfBeMy0k/Qmw+Xrgw8/k7KCOV4SLWFvyPl4FovfULya4sARlbyzhhEPD885SgUGqEbB
         ffszrIz3mwdhSUAqa6tNbUxqkGDw1IIqLcJOQ4cOVkYZAxrIHYiifHfPjD5pPrklCo8t
         8wMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NINKsGFcQsHiuGBy/+Vvxc+PJD+gm8MquacxByN7wjM=;
        b=i0hIY72YJRvON1yoAzMRLS0yq+pKNgm1o9yo4L2SyYhaLEVRCI5I7IRMOzeH2z9uSc
         P0Enpdg1r5gbexwcF6mQ960TwBLSfoo57a0UqTP889+c+Gvy89HWYkK/RkRJm4kQwPcF
         1WeA7WuiPdPNIzJeJ86ZEA9CSGyOdPAOv2N9OoWT7n15FS0PUBH7dT4EFaqPa0IkuUIW
         AOMG2ROWoqYi/7Qvqt5vT0Fo6K2yoJKxCZdydLulXmsPGw8ssbGPhMCHqaTK6iQS9Ddw
         iH+38iLHrun9R7mNnaYsH2koqbEFK4xSWV7YutC1qA9cXyw5ez2jzcX3KhKhwN6QDUlr
         jwfw==
X-Gm-Message-State: APjAAAUjogAjxeVHR8nJoEWGSsHMTHopybi+aaUWRs1RI+CT5JnrlSGX
	kquNSIPAT0KpXNpkLe/W1OY=
X-Received: by 2002:a9d:7348:: with SMTP id l8mr9343902otk.284.1551988813716;
        Thu, 07 Mar 2019 12:00:13 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id e89sm2476170otb.30.2019.03.07.12.00.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:00:13 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Remove an unused function prototype
Date: Thu,  7 Mar 2019 14:00:08 -0600
Message-Id: <20190307200008.23438-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function prototype as there is no such function in the
kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Changed commit log and subject line.
---
 drivers/staging/vt6655/mac.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 99de843b4551..59538ac09fc5 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
 void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
-void MACvGetLongRetryLimit(struct vnt_private *priv,
-			   unsigned char *pbyRetryLimit);
 
 void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
 
-- 
2.17.1


