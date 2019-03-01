X-GM-THRID: 6663345238466101248
X-Received: by 2002:a62:63c5:: with SMTP id x188mr1524165pfb.40.1551430960832;
        Fri, 01 Mar 2019 01:02:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls4117815pln.3.gmail; Fri, 01
 Mar 2019 01:02:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqwAJ7HYzdnHMnLge7/ULuBFaBbQ6yfZAVH9vl3FAWWfEqG6Uj6SsrKhn8gIlHgxT0mC9RwN
X-Received: by 2002:a17:902:e612:: with SMTP id cm18mr1205175plb.122.1551430960158;
        Fri, 01 Mar 2019 01:02:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551430960; cv=none;
        d=google.com; s=arc-20160816;
        b=BfWgzKZHYaqvdfiYz+tAOxWPMZh1xD3ua7lQaJIGPL56g0/3mCPZP2UXqdQ+0ANX7o
         6Ss3+wU47gtgSJzPO2QIizGOMVxM4dxn81PIjAjsYWf0I8Yk5R7xcGT0MmpNMPLuKI79
         cF0tmXiPpcrZmoQsscpQEIQWPV3yTGBt7EvIP3pX3HOfA0EXsFNsktj3g2wmLAF/ZuP3
         /L63gbKEN0RpOeHVNL9u3H6lKyg/+SYTT2Rfz/ruV5I9FKwcjrlLX659IximF6itIdqc
         WiP/P51caDD5RZagyaDHwQik0rdDWH06/cTFVZUuHw3SzVnQEy3BkkIna+bbj6y3/jnE
         uf2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SVkXWmZ9tfi1U54wBfMFWLBddpSTA1eRREeVK3PxhLM=;
        b=OyJJfqHnEqhKU+Ce+k3i70utzFrWe2GfZgKlgCGap3iLycj5v8paplua1FindD9r3f
         +Naq+DJ3QQZqX4+P9UkniffxaxAMl+QMm7HT79HImTqUjh4mTiMkg2QvpCzRG4DJhwrq
         MKQWw0fF0j36Khk/AAwdq+3I7H1YNc7u/U/QoRY8dUlnEsoM9uppUvrNRhcUsvTL/mr3
         isSUWfHLlYvqTGe+u/A0aix1r546IqFxgnd74wFrPSpR4B4tQ7PDge3fCtDc3Zz7n21P
         9bjm9UsvCUyN4cNwP+s70A3BecuZ4xeQiYFA48c2AV0sArSVB6o5YnF3oRQwjebKLfGV
         YR7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GpRyWIer;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id z184si1056969pgd.0.2019.03.01.01.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 01:02:40 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GpRyWIer;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id i130so11150707pgd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 01:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SVkXWmZ9tfi1U54wBfMFWLBddpSTA1eRREeVK3PxhLM=;
        b=GpRyWIer46Nmq1eWXine8XkxabKNUUD5IT/5MGW2PWHA9JgWif8sr7rGFJK0dKemq1
         TBQRF8vS88D0W7GzqOl/Nby1cupcotjYuBlCMYrkGoKZzWX1wiPIw5KQJWuLQHjoaoAw
         GKkMyw+43iGWduNTJ3JLQjPid+kh8QWFQ+Uxv/DB29/YBrt+PCDseF0J/01YOAp+ymDE
         AJcaHWbkf0E0nhFNYLpT62NfJH7NfG12vT4y0fuF/NlUjoj0sI0VxwoJElL9EhUVX4Iw
         hu0npES87NgMPdPkPmRfTjc3PVQfS0eshF0PfeQplFdrUyUkD/2yLd3aUDm4oioKdIbp
         ET/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SVkXWmZ9tfi1U54wBfMFWLBddpSTA1eRREeVK3PxhLM=;
        b=C17nI+/7Wly5XgXYAnyQS3EC8oHn1FAxxkm3cpfOMFBzQBZMAWBJpfQEyU2I49JZbx
         +ByIVIDQ9c5kNdbl6Z39gBYl73xAJfddScfsYcmSrCOzYTqWvYaqaGAV0QqXbGB06uPq
         f7bOG8abgmPEKImBK3PslTDCvvjf/5kLuN++nTQ1jqoYlTD9541nL26NvD/yVoqQ5tYw
         Tr1J2DRqBJz5wkkHagGZwV/gVgBjnSXrLO6UwMKsBcHH3vrhNW5fY/6SqlXsVwLLeWjT
         iozj5ekY+xPCcISnt2iMnQEDVB3NJvsiQEYImCgmMWbiey4CQluNo9Ra3jgw64MiZyNJ
         fnUA==
X-Gm-Message-State: APjAAAUYS/xIt8YtPFRw302pCmUCh9YF618tiMAvLLzOklLYMD876+6f
	8uUc82ZUkXUvw8+PZRC0G/A=
X-Received: by 2002:a62:3990:: with SMTP id u16mr4493845pfj.80.1551430959906;
        Fri, 01 Mar 2019 01:02:39 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost.localdomain ([112.122.31.150])
        by smtp.googlemail.com with ESMTPSA id f125sm12541048pfc.91.2019.03.01.01.02.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 01:02:39 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCHv2] Staging: fpgaboot: Delete newline at the end of Kconfig
Date: Fri,  1 Mar 2019 17:02:25 +0800
Message-Id: <20190301090225.9475-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.17.1

Delete the newline at the end of a Kconfig file, to silence the
checkpatch warning:
WARNING: please write a paragraph that describes the config symbol
fully.

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/gs_fpgaboot/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/Kconfig b/drivers/staging/gs_fpgaboot/Kconfig
index 550645291fab..f1179eef2d78 100644
--- a/drivers/staging/gs_fpgaboot/Kconfig
+++ b/drivers/staging/gs_fpgaboot/Kconfig
@@ -5,4 +5,4 @@ config GS_FPGABOOT
 	tristate "Xilinx FPGA firmware download module"
 	default n
 	help
-	  Xilinx FPGA firmware download module
+	  Xilinx FPGA firmware download module
\ No newline at end of file
-- 
2.17.1


