X-GM-THRID: 6663618170330284032
X-Received: by 2002:a25:3b89:: with SMTP id i131mr4227949yba.26.1551494530211;
        Fri, 01 Mar 2019 18:42:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls1826ybb.3.gmail; Fri, 01 Mar
 2019 18:42:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqw10onDFSaq4gQRdHpT+C+lAswI0ZJGuPMf0wkLhB/y0be3g+cA4CusKNBroBYMI5Yzk1Lu
X-Received: by 2002:a25:50c7:: with SMTP id e190mr3960734ybb.37.1551494529731;
        Fri, 01 Mar 2019 18:42:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494529; cv=none;
        d=google.com; s=arc-20160816;
        b=w780l+udf2b8YKVtRcBIVvK2STRzpLpaM8T2V3uFzkfQVvQ6xuU4heKNNzt6Yn1d2Q
         nyNaGSDYrcFtzTszYJFR5vB9DcK2K0K7YYNgq5PwFgUNRxJ0K81HyknxQTlUVY/bLkpw
         wbpTek/Zqq7aMKN9lP55cEtFwIDkFJ187F7qAH4NesrLVILUNu0q4uGB8T2mYQgl03Bw
         33w63Kjk+5ZOtUDrqM25EqSuLV8JiJLnQeXZZnzWKqgpS2sUGpkgsQXZR6Wqn8rO4/nl
         4auGs0SRFKdf2UXPRo8jAOun/LOvoeYZTci9Oei6u00my6OQoJnHUtTCZgTiwuiYbRUW
         /D7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=bVYNU26YF3HQmUabCzaagC9Gx7GnDS1uc2QCYr8fOiwVX0DhaWf8y97FPHsr7X4TDV
         tfhGuEx6qJ3JrWKYfHb1mzX48dNO/BtwL446Uc6fEzuRs+B1h8a9MAD8NzH/Gv2NCL3a
         91OmoCZdUxkYl23PuMqWjlVBZqBIsLdGE12T7WmkvevIpE3WzF/e0VbwRXqifQIK4jTd
         b8+b0EW8+sVka7HFXXMTYwV3zxXv76zi6y6sCdrwNfpHvYA94ppPmRKn9G/PnOadwqBG
         LAg3kkRCW3LGkISPAby8sdq63BWJyxWXRbg045m6me3Zf69aZavc06WwXgOv0iooROCq
         J4Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d07UqcTT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j16si1071118ywa.2.2019.03.01.18.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:42:09 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d07UqcTT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id s16so21153995oih.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=d07UqcTTc5P3lZwE9DZP4KljHHfrl7U65yGqoSPw3erohCRjjuQdN4VriVkwaybfe5
         TJuYaWUyplqx+HqG3SL7Do9S0KUuGdofit+r+Z6PiwMyFteimoF7zKlIqKAqt6aN7WUt
         tmEk93D+QC4huZLfj6hfQwrL1FO4y/snimKpd9wWTisVjRaQ7VeIiXpEj9c1C6X78o1+
         jS5n5vJmV8Y8SoadyA6G/UTJPPDHkHNhaLVwsQOR2KXr4hzVcQYBIxSznEPi0zzOnKGq
         xUMgX0WgpMriljDqrFi1jtQQ8b6bttOJwUb5KpoZ6pY7lDDEwhC3ZnjTr7wxXeg41T4l
         1eBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=BytHDkL/NlANbAmWm8arlFdKkDlHqShWr+/mPIBCXmZZz6a6/jECNxZJGpVdeIvSWC
         9GxNK0WQpsYZA1vEJ00kx52Gn4Vq/onkKEYjkxpxMSbpHsna9fTLHoQ6iewx715SICR5
         58MKgFGDJsuxRDK+udYW6qnsoUw+Qg9iJsMxJQt0kpQgKYVDrbEPXpKIbT+DJpegOYyh
         rKssldRlEJKKob/55G9ydBO5hC5wpnFiKDhA8o3o5gffEeuna6BtzIJ3er51qGZ5erUC
         pGDbovyXK5O9Y0f/kC0Ddhbrv9zej1WrDr7mVltyRa2GW5dTfXJSM2gSWo+lh848q22v
         Ra0w==
X-Gm-Message-State: APjAAAXjapQSp9Ux6CZZ/IqW+ygeaQKlHDKla4Io7LwsMDuN059YgZgd
	79O3vQhUXPqqwxoxMXgBoPE=
X-Received: by 2002:aca:45d4:: with SMTP id s203mr599587oia.107.1551494529183;
        Fri, 01 Mar 2019 18:42:09 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id a62sm17175712otb.72.2019.03.01.18.42.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:42:08 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 8/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 20:41:42 -0600
Message-Id: <31305c53d72147ef9936b19d31027d486c293f11.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header type file based
on License Identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index b8ab09434773..8c8c26792343 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


