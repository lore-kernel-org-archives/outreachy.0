X-GM-THRID: 6661007874148270080
X-Received: by 2002:a9d:4d92:: with SMTP id u18mr4201485otk.14.1550886750318;
        Fri, 22 Feb 2019 17:52:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls4288711oia.7.gmail; Fri, 22 Feb
 2019 17:52:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY83fx36E+baK/4Nlcn2u/6ZLRNsw0gma+9Y6WRvOcfrIBnteCxZXiJCdxhk1MGb95JetOo
X-Received: by 2002:aca:ac55:: with SMTP id v82mr3977623oie.36.1550886749363;
        Fri, 22 Feb 2019 17:52:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550886749; cv=none;
        d=google.com; s=arc-20160816;
        b=bSUgcCgLT5MA8QQMxtcj44H0vEEkk+n/iFeCrk50b0JUzK6Wppndhs52zb1R3VINc9
         mIdlH2WF+vXzbjjcVVrPMjRnmG8shHZyj5ZKnOwGnTNThX0hzPzBXkx9oZUsO8KsTJav
         Am4dEqOhrAjE0hZPDzjHR+FDCdDTbitULbou7H5fhRisJYwuT5VME3fC42CUMI7ECcub
         9UMIOQqZj3RVuQIlTbDXvGpA1NTZP77OHx/hYfcU4HKGeLcgPLZgHr5SM5JB7+033O6f
         clCVSZWxqRzIQrc7xCrbJ5+pNxVgMgJ1Gntv+WR4n5mW8bS/jlLhUyvSoUxOgA2y00+9
         8aMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D5r+72LX8JRYUNy4yXcdhrusmVXOai4PLdw1Vl/3KZ4=;
        b=Y6P4mgDWxpSMUJKZNyuExI7bfDvqoN3DkDyqkBqWxu2ktrKVsYVlvemP6CBEqBKMN1
         xx+KRPLd4w+PmE7QxgJ4lzhV+0HyfjcJGMYi7Zf265MnD3HKJc5b0OsP3XaLS3B4DghX
         RvQyQJO7bqpJQF6c2tt5Rft4F8tnIEnyTFMtR9kpkjYvyLrTGgHwK6AZzix6bmvTKGKh
         ucYdJDTWmnv4LhxwzUwYBArseBfohQJQObQlNfWdjP+vrtytewCbI72vKu7ZO0nK/Qnz
         aOCog1HUdtuEi50628snVXWsTOUOqQbp66yREhVwdxnZP0k14CZVpBFWNlzB50IA2WlL
         rxGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Kr/ksw3P";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x31si229567otb.1.2019.02.22.17.52.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 17:52:29 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Kr/ksw3P";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id n71so3497338ota.10
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 17:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D5r+72LX8JRYUNy4yXcdhrusmVXOai4PLdw1Vl/3KZ4=;
        b=Kr/ksw3P2X3nMNc2AH83HTY2sACHxcMqOYOcEeVe1k3vXlGrgFqiMmfFk8jhugDIhM
         TrTnYErE+1dGZ897fwXjf72ZbAQvxZ7tyPhzk6SRB7h2iKf/G4Bi7QOW7AF1DsC1dHxW
         UDrduPNY47/1NefyTQcO6ZfAvCGFcGnCqaaya0hM1NXSZov9nlV50lHR8M2YUbTagpDr
         AWkwSm7uPStATXo+pm9wG3CJKQVM1D99vXW9qNomwxaueKwhVgy8BmHO4CApZIRdx5F7
         zshWQhJ3mDUHKryfIjQDCQqcSDX0LayP29s1ighoPpm3NQL+/OUbkMHvJobcasI2EYQ8
         RIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D5r+72LX8JRYUNy4yXcdhrusmVXOai4PLdw1Vl/3KZ4=;
        b=ouYJg1nUy/hsfmf+LJBdzPEELdq12TjK2XBQoCI09AtTVs/j5DVhVfEXJK7mBu3Zyt
         zk58/cgdvBEVXUqB4txuUQyMvTZT4mOwB0hZSntHFtTavpR9SGQsZ+CZ7dE5C07y3T69
         jgTadc7KxkC4CR7Rrw7ym9MKg8BzZgBF7Z7yXPXWDTT+/hu198oPuO3/Ts78U1Gquhdn
         PAIUkBsW9lxUjHZIBGvhObFv3YsNdY1M+YFzcUvto0+/EjEgEgdN3zLVTQ8QWSOqUoaF
         8v2mq5oxQsPvFfX2RL+B2qGafwH3NpFdAFz5gGiHx2Qqje/NHA/jt0028CQ+eq3ejN2q
         vorw==
X-Gm-Message-State: AHQUAuZ9KfpPdhImQqf26gO6oLBnvpBkUnAxyYV7g9YnK5AnBSdjM++1
	9Ph7IgCAGTZ1c4uHAuuoyF4=
X-Received: by 2002:a9d:32e5:: with SMTP id u92mr4676330otb.208.1550886749045;
        Fri, 22 Feb 2019 17:52:29 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 97sm1394433otn.39.2019.02.22.17.52.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Feb 2019 17:52:28 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [Outreachy kernel] [PATCH] Staging: sm750fb: Fix missing blank line
Date: Fri, 22 Feb 2019 19:52:23 -0600
Message-Id: <20190223015223.3282-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch fix a warning
WARNING: Missing a blank line after declarations.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 242fc29e5738..67f1d9cd566e 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -302,7 +302,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
 		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
 		 u32 rop2)     /* ROP value */
-		 
+
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
-- 
2.17.1


