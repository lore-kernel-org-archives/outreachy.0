X-GM-THRID: 6673122111994724352
X-Received: by 2002:a25:2985:: with SMTP id p127mr939162ybp.25.1553707316493;
        Wed, 27 Mar 2019 10:21:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls5882124yba.6.gmail; Wed, 27
 Mar 2019 10:21:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwk+kjtdWmtS/tRDuNmxbsUoPB8Fgr2aSXVY7uE2/KkefByJkYgqHApcSDFr8+f1FbHc2H4
X-Received: by 2002:a25:6cc6:: with SMTP id h189mr1482847ybc.13.1553707315615;
        Wed, 27 Mar 2019 10:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553707315; cv=none;
        d=google.com; s=arc-20160816;
        b=wFMv+J4tAkN6mwDQWaRhfCUevxq0qyq1p7hQuuYsbUPoDHHnFSYy0Vo75ZJYrJuMqa
         8N9mbEq2IB2erzsbyBJ4Vp0vR9boHqO9sP6gMzEUHANRcMYC9H5Ogm1BbO0AHNn2B5hy
         TZQA/EMBr+nRQRgquEFfVd1vQLa1FdNNDs+200b5i3FxbNTkVnbBHS3yaqI80FVjl9jG
         6y0D6Zp6N0lyUdQCpxho6Iui4Ab9rQlYEP9PnPVUOpliMvF5/mICbYF7Tv5QvBkgJA0K
         l7ZtHA8790tqwdmIgtDuaAwnJyPI9kDyVeKHOIhuZpfvv+EcjTFX6Gz+NY6oNbmao53z
         CbOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/VLKrlOfIXuJPzVXcggCSekjXK6uOvQiLESO3fCsAZw=;
        b=tQK5Uk5Hq12dWK9huoaykrx144KVvHOZUwAnxgLyTXvlkX7LEWAjSy9dz5rABHqK0I
         SUCgNR6fAmQMwiiIyQ+oATq98vLkEiiae8XxB0Ry98uYULyMzL0wWRweoX6weq82VLDD
         TYF3MXVCdbvG0LwyFiVK8i9cDPwAdJg3XvZ4dbCT5kVnnxi3Z5+cL4/6tSEZIWcgJSm9
         UHV0jctU/MD8QQlNljoyCkOwke64sHQahUX4vkMsIXS+HjW/+Abwhxbul5VHZqXA8Caa
         DC6Dpp4ftmWDViTlpxVQtTSyiRYAdSDBlo2VzsP9rC0pyMGgtcY90x5M44E/9fpvkmEk
         RcmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rqFn90jp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 126si271221ybo.3.2019.03.27.10.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 10:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rqFn90jp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id 103so15626435otd.9
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 10:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/VLKrlOfIXuJPzVXcggCSekjXK6uOvQiLESO3fCsAZw=;
        b=rqFn90jpo2JamlOBEP/G//d/HEs8LhMnpToZsD0Bl6xWP2M0OYD9tkBUl+9xJj2rdt
         aQ/lxToOZd2pZXfosBrtZVNeOdXfFt4vpT2oEudQyzTZE2Ig/02cpslrYUw54iun+k6O
         yGl8kmIMXVImzzg4QaE/vnRRz3rcvd4Q00qHcrOL8h/34roD3JrahU7e9+OI3YkHOSKL
         pG6IHPaSSYwgEiMucCEGNfHh+SvU/RyQOeaxE+qf+vbCLZLVQ8DVkziqXtguPOAfAd0y
         vDSpfJFDZIgimepxMsjWpCjywBRpYI/Agt64FUZ5sOQI466Kc3qusEqo37M7bTxnQSzR
         U6qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/VLKrlOfIXuJPzVXcggCSekjXK6uOvQiLESO3fCsAZw=;
        b=LrBDZAABrOlCjsFNWB51Na3Ua8NIkxg0LLQJZn3K2p0HJvgORIos9+IEizbbSBTnWV
         6cIqHHo1pnElj2Dog10MVU+P2yweXJNrhlpKJrcs9AApnhU9bQHZOOUmynwpaE/Bg1Vi
         dMT65PmcUpmoztUoHcIZg88eKjKSdz+bIgdVIiq3yrjHzAqXfDJxccue7vT2P8NBZCph
         CImEEdJqBfqK4aXlUgWrUd+IOiMsD2ZpkKMh+w03ZLntCtOiCj+YWBorhqSpmlEsPrwT
         W9JiAbG2dE5JriO6BmBOCCw6DLVeINcMqVv2ewZcK3YGmajGOr6DTXjx2rHrEi2kl9kp
         rD9g==
X-Gm-Message-State: APjAAAVK+UGqMK7Vzt3Jy8Z6Xxfopos4sDo4fCHoZNESyGIZfsqs9Uom
	n8+/9rw9eXQUQGag1WXmEnE=
X-Received: by 2002:a05:6830:1044:: with SMTP id b4mr10223712otp.274.1553707315134;
        Wed, 27 Mar 2019 10:21:55 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:b885:380e:c834:19c3])
        by smtp.gmail.com with ESMTPSA id j14sm9544494oih.28.2019.03.27.10.21.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 10:21:54 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: media: davinci_vpfe: Remove unused macros
Date: Wed, 27 Mar 2019 12:21:50 -0500
Message-Id: <20190327172150.15319-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unused macros from kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 6695680817b9..368c8a83a985 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -109,9 +109,6 @@
 #define FMTLNV					0x128
 #define FMTRLEN					0x12c
 #define FMTHCNT					0x130
-#define FMTAPTR_BASE				0x134
-/* Below macro for addresses FMTAPTR0 - FMTAPTR15 */
-#define FMTAPTR(i)			(FMTAPTR_BASE + (i * 4))
 #define FMTPGMVF0				0x174
 #define FMTPGMVF1				0x178
 #define FMTPGMAPU0				0x17c
-- 
2.17.1


