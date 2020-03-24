X-GM-THRID: 6807884729429262336
X-Received: by 2002:a17:907:20e5:: with SMTP id rh5mr300645ejb.52.1585084183070;
        Tue, 24 Mar 2020 14:09:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:aad0:: with SMTP id kt16ls1194614ejb.2.gmail; Tue,
 24 Mar 2020 14:09:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vun4jBWJA2RK5vCN0Z1L4CZe2ZEUzw5adHGp/+z91X0dan2ts4Q/29FvsU14JzrQZnyIlvG
X-Received: by 2002:a17:906:1814:: with SMTP id v20mr304315eje.14.1585084181866;
        Tue, 24 Mar 2020 14:09:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084181; cv=none;
        d=google.com; s=arc-20160816;
        b=scJ3Oqu7DtvURW/9B52i9MbZYH8q1UkGATCN25UNnGYt9AHtE3aXAogmjH4XvSBHCW
         GhskFd5nBigaJEvajA9VACdNtpxW9KageW8L3NNgpk1hoA8fU6mJ1P4EqMf8PNMVAfgi
         rEeWJ75HwRysJLAZ/Qo7cOh7OG+1IOUPTU1CJ+rgtCWuJ8OnLiQX4TZq5xgWyaVkV9hg
         Fo3Cw7U7yRUIbhsjma293KauDg0Fb745LeabHRof36LipTehz9E0jgNLE8tHf+DS8bIR
         nq8+OuIO5z8j+KPZ6cNrGz+zr77Z30KergqR7bTTjsNsT0VfF5Tj1IblYL2/7RkcYasb
         MowQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8HQsTa8GFULsbfZ8hLJ2nHXIpCjvBcD8db/txMx/TTI=;
        b=LUBXJMzuuAojxUwd0i5QS7zo3zrl/S7mpr+TpU4G/Me28MfrODh/rAAXnovEJdz9Sh
         ckK/qQKUtptMiXBTFVNHUoGDhJj0drOJaw7vWpf5COnrreHFLgVpw7d+kMJNbq08CCxj
         ja04fMb6c/rIs8WsrqdzXxbr7X7iytlk/cox0xqi4dkuX3Ri+SayMwEqD7IdQM1wbMYV
         Xeg0dLlrlTdiky9coj3P/duTwqmAYdMarBvtc3vf9uYPFvUEcO80KT0zqzdDHQRZaHka
         jgATpj9HneaO4MI85wBDi17JvVAvkR5kWV8cW4Fc5R33vv5y4+bPFO6firwe/Dy/XDPI
         aYQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBKQs5Bq;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id be1si161092edb.3.2020.03.24.14.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBKQs5Bq;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id z18so119937wmk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8HQsTa8GFULsbfZ8hLJ2nHXIpCjvBcD8db/txMx/TTI=;
        b=UBKQs5Bq631nfuOcXziPeGXPvk37x6rHxes+udBmrJaQcydnnltJrkzL+rxbK4eW4C
         IKrM01aQxIyOj9nw/kHrTikUFrllL4xCXAAsrFPpA3nokwOvCw5NHxjjbbLxhfERzdQA
         Bw4i+lm9z3FcEkqJZqc+7HEtLVisAfGJv/wZYEquXm12B23Ct7l/+b/i5Qejrp0CFu4O
         7+wD5uy5SVVo9auLXJj/0MVJiaqhxcHnUbgaXX2maqKpSeloCHVOAtpfQWZghd/At/o9
         EKoHbLsBNniV77vSnwkheYW3VLU/DtacND+6iKIN0PMsWfxDjeciW6EPMGibHudz7vk6
         0o9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8HQsTa8GFULsbfZ8hLJ2nHXIpCjvBcD8db/txMx/TTI=;
        b=LmHWRlQzoNrB5ur9B2MLeRGJmvhvlSFriDEPFoi7ZdShuy/RJaokL1f8A79xNmZWzj
         2wcZcK0vjp3FqMqdvM43qh07okDG3A7YXFg9+Qeel7BfMTfNTAOerjWHZJbHhDVQAZ5J
         zhL425ZFFdtddJoqoAafeiSAIFOYODc+wsIAh7kIvxiJTUAy+8i7diUNYg0OH+iiIWOn
         9VpG0JOEv+pCpCX5cxH3JVs37bQrW/CpIZGNt2W0DPc7OjY53KFUWhZ+xWgJjFoaCIzA
         pnJfDqW9/MWn4AMSRFu75H+N2siqbFlerE19rVBjTimffQGAhuu9Qc7RVGGSeydLfIvJ
         5e4g==
X-Gm-Message-State: ANhLgQ1vzEo46UNAHgmQPyDlki3DhdhXeugtLa0985r82eTQnIIoZbqW
	W3spc8JSe4bY9yFr8q+bqeg=
X-Received: by 2002:a1c:1d8e:: with SMTP id d136mr8158447wmd.26.1585084181626;
        Tue, 24 Mar 2020 14:09:41 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:41 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 0/6] Staging: kpc2000: kpc_dma: Clear Misc Checkpatch.pl WARNINGS.
Date: Tue, 24 Mar 2020 17:09:13 -0400
Message-Id: <cover.1585082157.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver has multiple WARNINGS and CHECKS,
Changes been made to match coding style and standards.
Modifications:
	- Remove Comparison to NULL.
	- Proper usage of kzalloc().
	- Reformat single statement blocks.
	- Including preferred header.
	- Putting spaces around operators.
	- Using the proper SPDK comment style.

Sam Muhammed (6):
  Staging: kpc2000: kpc_dma: Remove comparison to NULL.
  Staging: kpc2000: kpc_dma: Use sizeof(*var) in kzalloc().
  Staging: kpc2000: kpc_dma: Remove unnecessary braces.
  Staging: kpc2000: kpc_dma: Use spaces around operators.
  Staging: kpc2000: kpc_dma: Include the preferred header.
  Staging: kpc2000: kpc_dma: Use the SPDK comment style.

 drivers/staging/kpc2000/kpc_dma/dma.c         |  9 ++--
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 44 +++++++++----------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  4 +-
 4 files changed, 31 insertions(+), 35 deletions(-)

---
2.20.1


