X-GM-THRID: 6885771919120924672
X-Received: by 2002:aa7:d484:: with SMTP id b4mr4276171edr.288.1603218745928;
        Tue, 20 Oct 2020 11:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:160e:: with SMTP id f14ls2341797edv.2.gmail; Tue,
 20 Oct 2020 11:32:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxB6rX69U4rigSZuRQlDlJBt7IDGo5i8uqidOUubWW5wDeWeSzxnFSKcbgb82EvD8/J+5Ly
X-Received: by 2002:a50:be87:: with SMTP id b7mr4317683edk.185.1603218744038;
        Tue, 20 Oct 2020 11:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603218744; cv=none;
        d=google.com; s=arc-20160816;
        b=f/tvBXT1Hm8GOu2EPCDnuBPpyvSqlk558xzk3CPTpqyDST4H3I+Y/jAAGpSvZrASEd
         yLG8yDIepSsv+EFd+UQdscfBQCJIj4+Ob0mZ8ZurY76HVhskUjlb7jQVhoncsn9lLASw
         KbKgvC/q03Bmz7fsa0ljMSNta05/NID1BwZBSN+LsmWmeD+cakoW1wZBUQ3ZOos3lnCk
         Cvx+mnbVkIkf/7rqbLpGEOjrn1FiNUChZV0tVBBOfIv9PN2dRv3hrqeXUWHCno+AbXvg
         8Zh+EmZnnRLmFI0cqLQaB0LL3e6mUNXmY9sLp3BQo89+Vy1TS8t3BktLKmBm8uyUpcnk
         FvTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C5c6TOLuHgN1li2zzxjR/O0B1g1KLxk/XN5c05Bsizg=;
        b=GL9FbW7ZXDK4/tS0GXy2KfccJlZBjztVBl0MhOU6he4WBOxeXJjWb36XrQ5Q1rhGUK
         9yDSSerDwV5LI5e0aocKgRr58U1nGsc7oMoL419wV16SkfD8hA9gYtPhJ8fduqS/UndV
         yAmgc5f5IAHdV+834dr0PfptJvbnjgNeWygbfzav9o3hzFSs0DU25PhsILfZF7ThimgR
         Fg0EOS8V4IQwV80kfeIUmMbLX/pKLaoPJccr5LJT1vJYB4G1J4RztVpfwHc7b2+1dC0D
         T+NO8Ika2WnJaQ9lHfaPF4SQ54ahcRqCLP2sMIRpMdXm5s0YshV4J7l+L4UpXsrkaehd
         BSdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dv5L5JFB;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id ba3si79972edb.2.2020.10.20.11.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dv5L5JFB;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id b1so3315938lfp.11
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 11:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C5c6TOLuHgN1li2zzxjR/O0B1g1KLxk/XN5c05Bsizg=;
        b=dv5L5JFBuDA4kGWaoU3C+crvHENhZcOVETdV6+LxeM+jDiOuDK6aZTi8oySqA2F9fT
         xiguwkca1+1owt+mPEe2WfLaipq9/g1oUA7VK7QwkezR3Fef/qN6clQxEma87W07QY9A
         nSWqV6ecgmHoJ6X6G1RbAOkmyZyrRoG7raxs2HhFwcK8vHRH9E8v1K4F3jtdXDQeOKvb
         alh6cAhtGwnDcbN/B7godiAF0nYkiN1uv+ylYWcr0hE1gbQ+I8X+HZkw+SKXAuzVhPnX
         eQChpOnuIOePbRcU8LXjQXpO7tPYkLIhM4h6whSsNOCDth/yujW2lALLGPklTTLjv8VN
         HVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C5c6TOLuHgN1li2zzxjR/O0B1g1KLxk/XN5c05Bsizg=;
        b=TkxhhR6P6Sp1zY8q+5IT+dxCVbg5VbCUHmJrsapRX4J4RbmFQBAvf6kkI5V72Q8u3d
         yKewdTOOZLDJ+5xk0mUbJ0vFOt9RyV/i3QqrNJq5IwfQhM1zSblUMUcNrlTRrBffZCgP
         qMbPMqhBW8giDGWof+RwWUzo9rD3aBBtyFDT05T0qfES4qZ0Cq69iiP7x9vFYxwqb9S3
         140egCwaiighF+6e33yjtcjBXR0c/KW1FREODye684VdM+Ob3uZZmvyHjiFVue/VlRoo
         99eDp9B7j9gP8BWJOPjaG3TkUmlwkdxFdbpp8qltxfcKCgl70+CGaXbk0irD1L3wuOfr
         aZMg==
X-Gm-Message-State: AOAM531xezvAxEMRhDj6QNeYSZ2djLkGJtrP/f1MyTPgHULsUmh9kgQK
	kob9NZSZYELUrKfeSpZQMnu1IpMhWc8xHVuR
X-Received: by 2002:a05:6512:3143:: with SMTP id s3mr1585558lfi.2.1603218743749;
        Tue, 20 Oct 2020 11:32:23 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:32:23 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH 3/3] staging/rtl8712: use BIT macro
Date: Tue, 20 Oct 2020 11:24:39 -0700
Message-Id: <20201020182439.43314-3-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201020182439.43314-1-eafanasova@gmail.com>
References: <20201020182439.43314-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index d03859ca1697..2ed2d3edb312 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -8,7 +8,7 @@
 #define NR_RECVFRAME 256
 
 #define RXFRAME_ALIGN	8
-#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)
 
 #define MAX_SUBFRAME_COUNT	64
 
-- 
2.25.1


