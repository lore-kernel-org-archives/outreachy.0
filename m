X-GM-THRID: 6673132168254849024
X-Received: by 2002:a25:69d1:: with SMTP id e200mr1532031ybc.76.1553709657207;
        Wed, 27 Mar 2019 11:00:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls7310234ybb.14.gmail; Wed, 27
 Mar 2019 11:00:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9SfoDU020BjVXcWjFosUU4siWmMefS21ZHrHtp1JbBNNilOR5OuAEz7TZdn8Wwq/grHv/
X-Received: by 2002:a25:2589:: with SMTP id l131mr1048881ybl.30.1553709656373;
        Wed, 27 Mar 2019 11:00:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553709656; cv=none;
        d=google.com; s=arc-20160816;
        b=ZAqlsK0ehzoqqMG4SBV8OQpOnaSWxw2o2j2b+wG1F5tE74VFujwKYrkKXjxOCt6/ym
         ozE7nxfNVJerx8f+CSz5Lrv5LSVa8nNeNLwkeehkhVeUPyMjmgfSK3lDRIM+jAV0D8f5
         ae1sxpyuyDuaf08lKo8e7sa/V9PScYBZAXAZ5yhln2O47qCrZV4fJq+QNHzOLt4u23wx
         6hHaSJfHfUg6iqg//0vLs0TFlWzo+3qXaLCuDqroaTaGe45B2alcuXJwSx9f5vHLTM8y
         7vRsg0wXJgKRVclWwUwDUWScYfU3n96HKr2mSSQylh1SDuJ9Qf3PtheUPG0zJFgyO36Y
         h9lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ezNtJfLq064iNRFY/WeKM7VwpKe1ZR69uoXN8YGY0pk=;
        b=kJ3nl4ZsVCAQXCNorUZQixfJn+Yxk2pt6i6vVNbow9THYO29ZyEAQCZJhoYlXv3f5n
         ANJQABNlHwSmCcBvqtpXLVwiIqqr+eEB9RDHJAXpj6QgXjUNC11cXtaMxR3+gFqq4UuQ
         jrBhBPqbWI/3jP7KrB/1eaWMDjcv3wXEZKhuH73zBZl9Doce6R7tAbq9MQraLzZcrO6Y
         gVrzhzkNaq+L81OXFgeeSdiFPjZhYc7OpA4QdSoP61EDW44/AqGgKbK9bxYUZdBW7xRx
         PQoljxj62MtlOuDm3WbfRBajXbhWZ12JZAQSg3LRXNZtFAHHcVNdg6RZ9W0W9+b8mgun
         UCJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nnUozaMN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id e23si1631288ybb.1.2019.03.27.11.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 11:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nnUozaMN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id s24so6270017otk.13
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 11:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ezNtJfLq064iNRFY/WeKM7VwpKe1ZR69uoXN8YGY0pk=;
        b=nnUozaMNWSHSmENYsF6B1pP3QEOB4VS++g5L8xb+5cYyLDrqRVTxDsC6p7dN1o5j0m
         qtIoki/QcX28KSRRsL3iNPosEkCYC6LPG6hKJ+CKh/rZI+n+XPAY4FRrPggAm5qyeOUI
         UsTsLG78hftLkhmaZkDPVjhPYsb/caVO52qy0RsnLWxzgkhxqhOJMr40lG3gWrYIZUNN
         2AR1YbLj/3vyGdyOCBcnh6IlSsxmMeoUbfYiiahpNUmVJI9RmAMmCH7u9zHTyeeUsk9z
         lDtyQ2q/h7H7U7K+mEXtkXkiKQ/CXku6zFfOj+k/nMcDcmgSnMdcAIk+QdJAyD8kKfCA
         cy6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ezNtJfLq064iNRFY/WeKM7VwpKe1ZR69uoXN8YGY0pk=;
        b=jKRAZv85Py6sedMsYsBC3Ub02fdru0ULDz9E56+QrmyS6NrDYz/Y2dKFYeAvTZYxsB
         TsJ1OGHrXMA7hZY/f+EFcNX/FVNNk+imGWsbZDvVTWdlErOuHz4Mnmnm2rtI217ILqxG
         SKtO5maSzEi7LeWshekMtnofV4X4qZnkVvDuRYycwDdlIU91CttppRXcTPVWdgeeKSwQ
         ivXB401yZ0xUG9NiPgTaw7eGaZDuYpX74dEmjUe6N8ShF8GZOqhn3U5rIDXJfSoK0EC4
         eHmdpzLUEeTI0XaJ9388Dw2ITM5O4WrwbLyTNOr0LWgqIxcruzN7fBMZG2wT3raEWMeB
         3P/g==
X-Gm-Message-State: APjAAAV1Uy4gUtYPqJHKkeFdkg9gkEG0/Gy/rLAWB2zVhtIQFVXzjWmn
	HDCAo1382VSHRll2P1EOoGA=
X-Received: by 2002:a9d:6015:: with SMTP id h21mr26659544otj.42.1553709655872;
        Wed, 27 Mar 2019 11:00:55 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:b885:380e:c834:19c3])
        by smtp.gmail.com with ESMTPSA id 66sm2574736otn.39.2019.03.27.11.00.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 11:00:55 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: media: davinci_vpfe: Convert ceil macro into an inline function
Date: Wed, 27 Mar 2019 13:00:52 -0500
Message-Id: <20190327180052.30298-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macro into an inline function in order to maintain Linux kernel
coding style based on which the inline function is preferable over the
macro.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2 -

- Corrected commit log spelling
- Made the subject line unique from previous commit
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 174334b53f96..32dce3c95304 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -27,7 +27,10 @@
 #include "davinci_vpfe_user.h"
 #include "vpfe_video.h"
 
-#define CEIL(a, b)	(((a) + (b-1)) / (b))
+inline unsigned int ceil(unsigned int a, unsigned int b)
+{
+	return ((a + (b - 1)) / b);
+}
 
 enum ipipe_noise_filter {
 	IPIPE_D2F_1ST = 0,
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 9d726298b406..395c66520932 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -386,7 +386,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
 	}
 	o = 10 + (two_power << 2);
 	if (((input_width << 7) / rsz) % 2)
-		o += (((CEIL(rsz, 1024)) << 1) << n);
+		o += ((ceil(rsz, 1024) << 1) << n);
 	h2 = output_width - h1;
 	/* phi */
 	val = (h1 * rsz) - (((upper_h1 - (o - 10)) / two_power) << 8);
@@ -630,7 +630,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
 		val /= rsz << 1;
 		val <<= 1;
 		val += 2;
-		o += ((CEIL(rsz, 1024)) << 1);
+		o += (ceil(rsz, 1024) << 1);
 		h1 = val;
 	}
 	h2 = output_width - h1;
-- 
2.17.1


