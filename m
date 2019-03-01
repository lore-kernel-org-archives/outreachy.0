X-GM-THRID: 6662796640872562688
X-Received: by 2002:a37:d150:: with SMTP id s77mr1396197qki.35.1551401043590;
        Thu, 28 Feb 2019 16:44:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls3051587qka.5.gmail; Thu, 28
 Feb 2019 16:44:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqy96Fn7EU2FJ8ydh/ohz3t3hIdvbjBzOybt/KDjnEefRxpFWb/pVh14c9kUn4lz2HT84h+9
X-Received: by 2002:a37:8cc:: with SMTP id 195mr1460318qki.30.1551401042666;
        Thu, 28 Feb 2019 16:44:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551401042; cv=none;
        d=google.com; s=arc-20160816;
        b=Ta/Rfl8wgTm6d2LElyYFVN+kniyAFslVkugTFwsdOcecnDBasUeHfg/MYPZXfet7WR
         +l3L9hDqIOW1DMYoeQCENmrcU2ES5rmOKqg7KLzLD1v06j966ggS9oDeXyqFHmX63lxg
         CSUvE1MQQY/iVYxt7Cd6wCWqS2QCoAwERkega1778naeSpUGyZViImfdsM4xz/E5Lgfe
         wv8+q4SVI/B489WcwZbEsfbFPTnTBQ0Qf7RO2YVFsEe4cC27qIGOZnJBPzL2BN4i7k+h
         NS/bd2YOlGFoZEb9PXjYEALc/iYfXyCzOCZClhq8BR3Kalo6/BPm9WbGBPf8hQTFcdnM
         u55A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=YoPidWvCAkfehjqf6Sgrpm6QPuB9R3Pl7a8pfMd5cr/9T+Vib3W/pA5buju58ghVbN
         TS6y7lBt5CknI0rpwYECBcW+RLh+9VhHIU6+Hxb2noCwSNV4XHAMVPjvyzvKuqR9jGKs
         BrAtF6DoDJmmqFzfxErWPW60ov3KQzUlfiT3ju61ZcuPdRtDdZkSl8NLsdUSRAhiMvUb
         jBPITuslr/jalHIIvwcAux5c6V701XqwKHcsnuJkD/jY8qmV27P8l7ppwrNng7xgcgfp
         PvT6i3xbfogm4rk9NauxroX6kPcQFT+/zTsjyZ0hwj/wVj2hX6ZNlLokaCsbKN187lyy
         NvRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QCVscL/j";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a62si855348qkf.1.2019.02.28.16.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 16:44:02 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QCVscL/j";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id z14so18177181oid.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 16:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=QCVscL/jFO5CGaJxyt9yUXZlcPp/A8xmKdRJDJriucZ4F0mWCUviOk4rBIg9E2hmps
         r3C9C6YqAMj73/0lUFtzWCGttaRrb6+BvARGXNwnzacMH03WfT8lDst7CgfFkF56nw2N
         LyFTYXk5I6Y1nB7KUgEj8A2wGhBUjapzmEDfN9I+Q5Pp/XpEw7YhhOmokyQrDTIpgH9z
         u3wbFeJntyRzXI3zAcxm0qw/W91UEDqiCboS9GtVeF5cl69QkGldQtmDbtMQaPcIw4gZ
         ZfqX2ZjdhOSdLfT66EU4GgIHTttjL3yiJ3nmJggWplXy7nw/VbHyRMAfGHH2qI4xZGSv
         eA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=hBOP1HYAg8twNIYVxrwp6E1mNcuWPndt+c5UFwDReqgocxczTMEht/s+0w/jhK2nr4
         Ikxg0kCqKbrG/Vqx41Jjnjc4hCkBn/4xDIilct+Nt6QDtT7hQ3Z3cnsYJoAQwqKn6mYX
         ZCG4djpdGYaXs66Oi1KSku2lsxnOKJDgLqDQ5cnkCBHAuIx5PinR7TPNSobz78T2c90M
         r3gWLXgnWdZtCHN77mIhlrw8OoZfMVKbO1cHYSCwRGUQCjO/F+cXtbQKLWqVCkrJcb53
         MSdNZfVd1RnwTpBV+O4j2lZAnMQSAT4KyVuqJTvOLQMorpBFkAjBpt1cLHafifbksHYA
         U2+Q==
X-Gm-Message-State: APjAAAVU9aEucmjVuktlX11CuHz9TtvIRe7YGpUWFUjsxI9mFgHl9xpp
	4k00lGI4HRQgjLG9F9O2qpUAOGpNsrEAaw==
X-Received: by 2002:aca:acc9:: with SMTP id v192mr1565580oie.109.1551401041934;
        Thu, 28 Feb 2019 16:44:01 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id f15sm8013080otq.65.2019.02.28.16.44.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 16:44:01 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/2] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Thu, 28 Feb 2019 18:43:49 -0600
Message-Id: <20190301004349.29513-2-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301004349.29513-1-madhumithabiw@gmail.com>
References: <20190301004349.29513-1-madhumithabiw@gmail.com>

Modify comment style of SPDX License Identifer based on header file type
as per License identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/desc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index b4a0037b40c1..d4572847b08a 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


