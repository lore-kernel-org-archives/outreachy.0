X-GM-THRID: 6662033797389746176
X-Received: by 2002:ab0:641a:: with SMTP id x26mr6423617uao.12.1551200612671;
        Tue, 26 Feb 2019 09:03:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls4035479vsc.3.gmail; Tue, 26 Feb
 2019 09:03:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYuSSDv1JtwF4ymKtlPzgH65vtpkmAN3EYSaifjWkSTRbRBJjDRbVmt2BklpDe8P31zR9sw
X-Received: by 2002:a67:ed05:: with SMTP id l5mr11505179vsp.23.1551200611774;
        Tue, 26 Feb 2019 09:03:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551200611; cv=none;
        d=google.com; s=arc-20160816;
        b=lpUEd/lBuDxYA91ub4pAUrHrOxUIC7Yq3FSPwrlGtNenL0U8G4zPQxWv5+hvxgi1gk
         f2LIjflW2fniZB7ugVbMpeCoyfVGJAxYUNcz0lP70eIxZ7TuoSfglPINrh5aIiH9gy4l
         cQiA3+KQJaJiCcpoPTQox2pnZL0aIzwNUssRo2NjsRICiHK4aEE2yd2tS01eNNZaEeWk
         qmeTjvVJC7aXEN02doOzbOGRAmkZrJAi5BdyEKOnir+6vEvYfXGXs7zvHtpIrnAeht1n
         FX0/G2dYN6OlYKKrWTXBGhqcnqeWklrKnfV3KHghn+ueOTCkZ1/DORtNte1eYT5l4DFp
         KO/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=RPp5L8mtc5csOa07RKobOinSSP0cxmzrOMuOgRKR94c=;
        b=MhMhhAPA3M2UT4rwpW9p/wt1I5OJyfHl/Y7JPPQLamhE9G+R+V4P9CVhQAv31iWVe2
         EmWzZOQWLs8FYbTks+Tyo3rTB8uPawhgd6QgCSvuDxn18JKyEhLQhhrmc53GNwEnuSio
         bRn6Hy1OwTRa12QsLe04gSV2I0OLkFc+7lM/NpClzooOZh/RA3wqWZaasxaQtOu4g/gL
         QnCXP7gd0bwAfu/h0niiD01KeePIoEnvP/0WF0QPNQXgEBgHer/9mEJqKWQjRKVWR5RW
         WX/qpOs8Hh6CvlmzXcIC4JLKAeoxqS/YGGg9FVyfr6e3Odut2JGe/jbAaAyjOOENK0f0
         ju3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZ2pXP7R;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id q85si338012vke.5.2019.02.26.09.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 09:03:31 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZ2pXP7R;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id q81so10921686oic.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 09:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RPp5L8mtc5csOa07RKobOinSSP0cxmzrOMuOgRKR94c=;
        b=eZ2pXP7RUCXUspS6c79jmYCuXT/574IJowm4Q2rcQFWvijgGVpOPL8oG/kwHcWJj3o
         pzqJmpG7sY1AZMbphR3liCqrVIohhtg8IO2hjkA/uWIjNQlA6a2yOzHDd8GmeK1Go5Vh
         AvigNjoqRH19AtCKlkHesgwRI+DsTpwO15TIt+9qaRwVk8zwA9NxzDD5R76EsQOp7CtL
         7Lu6DNhzqX2ppuVvZRiBvCsSCdNWBQ6AlM0EgMp2sUx78d/XNI3lBHxmoXeMQGO+b+YM
         0LjK5gD7aY11j/URME51W2nOQrkc3QHwBtHnNOv8VHTWtvYu771oQ8HbiHF3vDDCohut
         nGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RPp5L8mtc5csOa07RKobOinSSP0cxmzrOMuOgRKR94c=;
        b=SVibNFy/Gtp/vQDUs9MxGW2w4e1xiHocU8RBSzQaDDdwlQumeZPN0QudY6K3AC/ibX
         UqGykvreWLGc0z8pXA8057rygqtgLA3fF8/YiSqLZ4l23NP41qFcGuu8lNM4OLjbLGjP
         LSVg5V0TJE22No7TXNy7akA6uK4T8OhiLpsVPn71T4JKCiHrMD4xHW0Ocr1gI6pgEYKD
         BVyTR8mDum3q74yaj2SFHIfVZjLPAy6hkSyYZcZcc5fnjmJIQI99IW/YnTfZCCPor+cP
         TcDIuFAjIGtJ4gYJktqBg240qFmKkMmUXFgi9dDSNTQV7vHEb5S9zqwjVE0DKprLRlZg
         zsDA==
X-Gm-Message-State: AHQUAua2KlLCW34gWSiovt/qmoIuYG0JsTByvWAORhwhhaqtRXutS1KV
	2f3tlaThe+9QGi3KYwZj5DA=
X-Received: by 2002:aca:851:: with SMTP id 78mr3136758oii.60.1551200611250;
        Tue, 26 Feb 2019 09:03:31 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm6061623oie.52.2019.02.26.09.03.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 09:03:30 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Alignment should match open parenthesis
Date: Tue, 26 Feb 2019 11:03:26 -0600
Message-Id: <20190226170326.18500-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the check to improve readibility
CHECK: Alignment should match open parenthesis

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index c9097e7367d8..d7227e804f31 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -805,7 +805,7 @@ static bool device_alloc_rx_buf(struct vnt_private *priv,
 }
 
 static void device_free_rx_buf(struct vnt_private *priv,
-				struct vnt_rx_desc *rd)
+			       struct vnt_rx_desc *rd)
 {
 	struct vnt_rd_info *rd_info = rd->rd_info;
 
-- 
2.17.1


