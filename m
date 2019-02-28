X-GM-THRID: 6663088716189270016
X-Received: by 2002:a17:902:262:: with SMTP id 89mr91841plc.68.1551371234920;
        Thu, 28 Feb 2019 08:27:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls2146775pgc.11.gmail; Thu, 28 Feb
 2019 08:27:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaEM2wGaxDuFUmC/bWfgLC7JXm8pe403ILUGZ9lVZ7IFuY65KqOcr4q0h2M+i8hAEBEzBOd
X-Received: by 2002:a63:d84a:: with SMTP id k10mr3577162pgj.123.1551371234056;
        Thu, 28 Feb 2019 08:27:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551371234; cv=none;
        d=google.com; s=arc-20160816;
        b=IDN054riuzFG6DMZlsK3KPYUvqk8ChtjxpofyJXVmvllU/66nTeiNcIBXPE79kXuVs
         VBunWvdBy78ihXSO/DHEXhjvIVjz3C3zU2mhCgfb42MEMBeFzsCQbnK8VT3RmRQoYlQb
         RV1GlUYstN5Us2bTIdLgu6imcZ0dPTRHGvaJBaP03ZTyoPtkFKZT0Dj/OC+ODnF7S7KG
         E8cRX2VPy/Qlezc5gDaiRxfU1tl5KibPxERL6FZaMhwxM5FH0ftE+lqhYRyMWWl7AFtu
         zrTKkviVGnWAOADvCO+JwpaxPK/K2G5PiUqlN4HQARa7nDPgBXGGhkGnPoeYhnMMyBBm
         rvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Gh/5pUB5dwYtCnd24itlEwPGlN5jC1pz15NAw+tkbd8=;
        b=sekPa7RdIHhkPtHDv1TcavTPV6jgRJ00Wb7OYMxc/gWlUkA+rJYnVnNjmandlEEl6/
         7XK73ygkqDdQ4OzY0xzyep+jYkC5SdJukUa0cGePguBfh8F91XMDsFy/aRywI7l4PPkM
         81a13oQ17jhDFZaRZU1e3HuzuK6LVtKy2S/85cql45Xc3k39F+XhnMPWq55d2b0ol0u/
         /kb1MekAxrRYCE4/k+7cnIHTAMYqgTXDauYK5gb3HjAT33NYYJpfw8oHIzNuzT6EfWbi
         ODK+E8ebZLzddYM3xeTUVFTcczyWHO/7fdPyWIyAhtzee/9vs67+hlaOJet1rmdS5GDu
         spvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBH8gGDT;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id e71si338124pfc.1.2019.02.28.08.27.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 08:27:14 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBH8gGDT;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id d25so9954023pfn.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 08:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Gh/5pUB5dwYtCnd24itlEwPGlN5jC1pz15NAw+tkbd8=;
        b=VBH8gGDTuqADVO30Ies+MdoD8YmQ7DJHzW5GccJBjaW95YDw9Do0r21NC+k6RCWkjU
         L7L+4uOxbxNIkGgUMQp9AAv8IwHFbN3if2QVPA+NjfpfwXRVuC+nI7rXo3N8HdjXwy+B
         FCCdXaZV7n0yRczqLZaGXTY22oEexp4Y8tUfeABuJASRr63ZetLThfTeYlwiCiV54Z2u
         EPdvpM8ftGSU/unYn9LzPN0SY3h8603rhjRVoyoui8WOPC4v+dMMustmVkTQYClO2v1C
         KYLtkxQq6av9FBs8IbyfjFhhtudJGWVTjDcVQYHidmTCfUpiWO/vcXdNV6KxBO46bitB
         4TwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Gh/5pUB5dwYtCnd24itlEwPGlN5jC1pz15NAw+tkbd8=;
        b=HWbV4KK2NcOiFnlUujINU2X1fTAWlId1pjJ303idSlsdA3i/X7mL68yQutytVxDzmL
         rOUiXkBg4OkrFbfmwQPFBWooO1bI+nzBL5B4R+qQsJT7jS9F3qdEmuYKTBqZ3UQEhUVh
         3Q0uYCWrQJZjwwUd2KDbLEYgAMatvZmmIriZrI15MuX9yZLqMaDE0zbaMsFrKPcDXZA+
         IwcHyzOcJIszO45sQYGz9pb5VWtru7HTM4B83qDFMnAzNtXmaDT4ezPL30TGOCl9xI4x
         9vvXqyaaClgczyC7HK5b4dP5sjuXfZ8u5SwAd7fF/4mG6eGw2Rc8KDBH/O+hWrZeQPmr
         V2QA==
X-Gm-Message-State: APjAAAUbM1HGj/dPOCGRaOkzVowwdZqeDLGLcwF7oq1ps6u9QO2GT0/e
	q2vcSNmJFTcFETpo42NUKLFNVrfR3JGpRQ==
X-Received: by 2002:a63:8942:: with SMTP id v63mr175pgd.406.1551371233635;
        Thu, 28 Feb 2019 08:27:13 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost.localdomain ([223.104.36.240])
        by smtp.googlemail.com with ESMTPSA id 71sm1758196pgc.23.2019.02.28.08.27.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 08:27:13 -0800 (PST)
From: Elisa Tsai <etsai042@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: E-Tsai <etsai042@gmail.com>
Subject: [PATCH] Staging: fpgaboot: Delete newline at end of file
Date: Fri,  1 Mar 2019 00:27:03 +0800
Message-Id: <20190228162703.14828-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.17.1

From: E-Tsai <etsai042@gmail.com>

This patch fixes the checkpatch.pl warning:
WARNING: please write a paragraph that describes the config symbol fully

Signed-off-by: E-Tsai <etsai042@gmail.com>
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


