X-GM-THRID: 6753034664415330304
X-Received: by 2002:a25:800c:: with SMTP id m12mr6256853ybk.464.1572563013478;
        Thu, 31 Oct 2019 16:03:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d687:: with SMTP id n129ls744589ybg.13.gmail; Thu, 31
 Oct 2019 16:03:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzrWTxGTWoY55ILSb5uz7KZtrLFCNA5Hgu4J/XstvG7gkufi48adsFt9RBC4Qano7myQWz
X-Received: by 2002:a25:c5c1:: with SMTP id v184mr6719874ybe.457.1572563011904;
        Thu, 31 Oct 2019 16:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572563011; cv=none;
        d=google.com; s=arc-20160816;
        b=0vUKFmms840VVz1dV/FrKeijM5Rwo24CPTvW/nCtp/wYFRXid09j6xpROJR2syrCe9
         dPgfERTKFFW6QCPQta1+tzP5KqNakeY8Sf8r+bKKPqKgsf92EP474ScapFcY/4LyGDTL
         hWInRAoim09Qo5pwyjVho5yUcTloo3pTgyZrHznEhGIipZnzrLo6TrMZlW4j5fU8JS07
         hEYUeQcKjVSN4jydEnDp3Tea5DCO9IhEsI2QbMNNMtPtQHMSSSrEKKbr7RZKXcuDeomA
         qdQXvVopLIqxz3y3cexapnzsEPkA800lHXl3stlpb/RGoisrRx2yOU3+0VqSY8npyOTp
         fibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w1lv6i5WMZhr+LJHUYk12uXR0Zf+Nge4dShOz7QCLY4=;
        b=akoHcRVa03B+iZdaSooC14gq7NsUDWCNh7Sc3+ZA/+m/x7k89fV8erfFLxNBPxhLa8
         rE3JHlLb6mesASMcTSo1rZS70NBU0QbKj2g9Dfh4pijXh6GfEOMgIzFqu342Q4LFspgs
         A3OMYQ8WWPCgu+LcLcEg1DQ1Pr40xzFtEhfxbOJph1/H3LmQRdQWMTS35ZwMlGj505vQ
         Q91MlEkVmSjCW2ZIaRZ+JKuK43KgEUJQexXEEI4I6qsoZXth2OadoiYppIE5uaoQrXEO
         c30xjw7TyoUpu7EdCCZ9ZJ5MpzQYD3EvP8TBjv/AqcimXOEonb8+kUc7TU0lsBGDvS3e
         gb2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gMivkkZ5;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id a1si461691ywh.3.2019.10.31.16.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 16:03:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gMivkkZ5;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id r22so712679qtt.2
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 16:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w1lv6i5WMZhr+LJHUYk12uXR0Zf+Nge4dShOz7QCLY4=;
        b=gMivkkZ54O49XnNT6ktSMTgKwQeUd9Pjiy2DBrSJ9BCNsak1LylpmxHg8bqyZaBJBq
         fAXl5C+HkhUS9PBr7QFiApn1HVtf1UKky3vnp1q/FfTM6nsfDLa57Ugzkt+KRmjk7BI2
         eljn/NRnMtydKl2yk9BHWAOpVNodeDERcwWv6I5obW2farhTreah+/1gC4iAVuYa6Vuk
         FkPNhjXYAwTUtNdwyQNUA4TDPBtJCBFTj3zJtxq9YCbBfb9+q0X1I926tSdPwuVqoYa2
         An8hZjAhbIiIleUo/lC2P3NLHqdtKszSqc9rg82KLDoGoLgVY4ytoGx3h9dF5nSRmPcj
         EsPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w1lv6i5WMZhr+LJHUYk12uXR0Zf+Nge4dShOz7QCLY4=;
        b=l6AaCbiVvZxE2aRT1ty1bZoYmLJig963N50T18Uq0McspPcQ9Dt0IOPp0TJEP92rn6
         OGNHRL741ZIQ29khwagKbbTeKewQPhXJm09D0Il/xybe09iYlsCTnw9C/wfn65qOxUQe
         NBEGhCOXPQ7LxbZBE48tdD08bB2Xmn/0oOElMSAFS6yuMXqxslRI0X7AAJ6AmNxjxpzN
         JKGox1LEPyKMwV+l+n6C3bETWYMchw45ySYwMyASwvWIsL9QjlMQlOw3WibEIl9l4L2E
         QDNvWElf0u4JYko7cJyE1gRQhH1nSX4HEq+oEO5dqcyiG1g1nD6+f2JvjQ70aXSDL4f2
         wGRA==
X-Gm-Message-State: APjAAAVL1U974zNaaiE2Wm6jl1kyoU3mFQ7tuN2jo4kyMhHF0/fY89xH
	zSrhZBqItSz8b9f2bJDNgMXWdvCJIuM=
X-Received: by 2002:a0c:936e:: with SMTP id e43mr7260553qve.73.1572563011216;
        Thu, 31 Oct 2019 16:03:31 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 16:03:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v4 3/3] staging: rts5208: Eliminate the use of Camel Case in file sd.h
Date: Thu, 31 Oct 2019 20:02:43 -0300
Message-Id: <20191031230243.3462-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
References: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file sd.h
Even though the constant "DCM_LOW_FREQUENCY_MODE_SET" is defined and never used,
it's useful to keep it because it documents the device.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---
Changes in v4:
- Explain the reason of keeping a constant that is defined and not used
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1


