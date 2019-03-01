X-GM-THRID: 6662796640872562688
X-Received: by 2002:a67:e10c:: with SMTP id d12mr1468084vsl.22.1551401035545;
        Thu, 28 Feb 2019 16:43:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls1624825vsc.3.gmail; Thu, 28 Feb
 2019 16:43:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqx42cvU9VZXFoF8WK9ToV3kPUVb/1SGx5RKYMwxH4zq1G0AGeMDAlAsgWiXx27+chIJNm+o
X-Received: by 2002:a67:ed05:: with SMTP id l5mr1417606vsp.23.1551401033912;
        Thu, 28 Feb 2019 16:43:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551401033; cv=none;
        d=google.com; s=arc-20160816;
        b=m0ARcJQHX5KMYrVJ8E/RctBYxoPgy2IBOMuRxnltNMbk7BPkYjt4VZPwHEA1iZAHTj
         K/9vBnRRK3bo2w6yduwwLmUMW2wa63+YULxjydBqvnGcLcJgZQ5HtM7LHVxQe8cswNX/
         PGxMoAsOTNTTJgiOOutwRx1cytfFGX8OFeRz+nayUOzzC5QrWhFI9hDCPfO/OM6H368j
         bv5LfuVX+6STEYybUnerRCtu4JJ7Vf8suisP4jMwnJh7yepYPAwokb3uVN4B8IitKZMg
         YJoeRz2cP8ZvNNtHveL6eX1XlD+D1U9KV1/lBhMSVaOQ4ze6DlpVuRmhxRBljkBQwteO
         G/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=mHygdBJiawM/MxIxGrwKdbHcshk+IIEYVKA/rUMUrJCGZxoDkG3hJ9DZ8IC4dDBuPe
         Fq1L5XHx4f4ZDO6UNs6DqkIfBXId7iRJTWneO1sBcgx4vsDbexvUcudFQlR4WSQIgnSZ
         SLCQDbt8tgizDsfl88LJOPZukm5MIkebmL2vfL7fRvDo2i6cnLhRdIRPQD68OIcBfO+Z
         cVvsxstkaa+PqcSh5j7+Jzbaup2il4Vq5nCYgk+pUZd9C5bOCWJ46O40PIIAXg0NCk1v
         apqv4mn8uysWzbRxO7WyA/rA8WrSp7d//emCSDujqComRpZ0qv046n8PEKg0eaJ02Kph
         yyUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6niz+7b;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com. [2607:f8b0:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id q85si802156vke.5.2019.02.28.16.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 16:43:53 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) client-ip=2607:f8b0:4864:20::32c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6niz+7b;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32c.google.com with SMTP id q24so19539226otk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 16:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=E6niz+7bfWuVxROc/Ebq/yr/oIZVSgEtzcWxQ5rG7xa3SZUQSLWtRpw9GuizOuMloE
         gLChRaTbZWsS+YNAeyxHqQG/4nKIJo450KucH26xhjEUxrfK/rD4cgIbb7hS7G8i+3YK
         0KnT7qURHuZTb14f7+PgW0+E+clwA+daSnMya1EZ5mK9F5neypLb0iuRR+sF+qcE2KK3
         wdH8KK7cFVXwN2RavPyaw6qMUs5n86OgZ9K8Bs8waknzTEFh8vi3uu0s4Gjm+h8Hi78w
         weJZdNhghmE32cJxa3qLAU0R3wHM7oc5lqr0is6j3OBSZ3M2D9wRcbgn/CsITvk7lTb5
         dYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=fiTGRhdmzISoh/inkGP7yGom2vPAp2HFZbt1r+z3tYhuLmN5erRr8VkmqGN9NAUM11
         OTcpMRq/lAkDP2kvU9LI+aiWkHVowiB58R42H90/WhCTCpdvqyreLOe8KvJ9CZiMOjUW
         hoxJdpay1dJCWBUzpPCSVaCLcsl18Lh3ku5ZArxboJXU5NVT00tM1UpoUCJhWrBuCH7b
         l+1QXsBWu8VXgS3L6XR8iv8oRzXy15F6UXdjxi9VeYRpHkVy/4YTOYkkveAlaqSpudJ+
         mVXHm2o2aqiRIbG2pRea2k+7NLzLzGSIxz54vhP4lbWQVu/NcwVpbbuLw+feODIho1x5
         bDVw==
X-Gm-Message-State: APjAAAV/SZ8KyrLjHAPEiH9HkjrGVWYtigx3rvjowP1Kjte38kQFhQlv
	d5wxMtHeOetGcnjMPikeNr4=
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr1640241otg.194.1551401033411;
        Thu, 28 Feb 2019 16:43:53 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id j21sm8288656otr.28.2019.02.28.16.43.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 16:43:52 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/2] Staging: vt6655: Modify comment style of SPDX License Identifier
Date: Thu, 28 Feb 2019 18:43:48 -0600
Message-Id: <20190301004349.29513-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix warning by changing comment style based on header file type as per
License identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


