X-GM-THRID: 6947963118205009920
X-Received: by 2002:a19:7402:: with SMTP id v2mr20089941lfe.58.1617698728817;
        Tue, 06 Apr 2021 01:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b54d:: with SMTP id a13ls3439796ljn.3.gmail; Tue, 06 Apr
 2021 01:45:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPZ3Qn0JpY+xQw1bg4vzKB23wWcpaxFH+PsKyPy64QLwSneXSfFEm0GAIeHQdcZCTrZ7rK
X-Received: by 2002:a2e:8987:: with SMTP id c7mr18403727lji.185.1617698727215;
        Tue, 06 Apr 2021 01:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698727; cv=none;
        d=google.com; s=arc-20160816;
        b=BPWB/qqp78RI/lBvB1XS1EYmKOeJLMOzxqrOtE0uqAQpB32y59aZiQY/blN486pHP1
         ZUA4h1lQZYK+f6St5ekg5YArr0ZXz4Oc4rez1orWMz07oxAxjYUhmDs/G2v4g+NThyWU
         vLOZ4BjEuPjKlrwqxj+DBwMPrGgJyxno7YAgqXUquW2Nc4PU1mROw4LI2z2o74mmItOn
         Ox1MXFql121fZsRGr+MiuxYiKQisxLMgqxl7DRqnbdbc5TVdMo0rDaz5C9jDyYJonDOL
         8Oy6VLSDBXi00gqQF+YXQOsE6wvnXX28g3EW2gMxM6GTtviO5dp6sY72i0F3YXxxs/mY
         DqFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oqsIECjR7Ea8Zvb1gn9dei6ns9KBsh89VuPOEF2Htfk=;
        b=OzV0MELe3YXrh9/mmjPWDPQSvbCp84YehsgKqGKvh8oYh/vKeAPmEGBOKMfBBMUqL5
         AcXGzoxEPiOKcLjc5B3B1WaTaB5mHPQUijEvZ7YH9jo66e318MDwjaXOD26lv8ZmVol/
         +Ojh7LlMid8iM4dfScijShp/KPHvdUPW72Xb75ujgkl2osvsduKCiDMmmKf3Ie9xxjpo
         RlzBYxqxbFtjh1yryLbHWPRZvj/wzQNf/09k/Vqz1zNulWiMlbUXzcSVjlkvls2fg55r
         P5tAfomYzL8gH10OuQPwTweGzh6kPJiZN8BRzVCAeswTHv/KLPA+zNBPaQifBK5jMHxc
         RLzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kC5KDXAW;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id v203si1622949lfa.10.2021.04.06.01.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kC5KDXAW;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12f.google.com with SMTP id d13so21462134lfg.7
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oqsIECjR7Ea8Zvb1gn9dei6ns9KBsh89VuPOEF2Htfk=;
        b=kC5KDXAWMnGTpruDL2bI7l2Kc2wia09EUEYgLnw5E/RCmU0LvAhKlP4kbxT9dkNlBW
         pTjnU3hGnc4IhN45ac7l51uhgMeANhKjE4Axb0qjs9USIuJfk8rAXVLp8wFtV4NUJrPB
         V5XMSulyBtD+v9YjDMyllvWNAAKGhspnF2sP8F0M88ZQ5JpcRRV7C+2lUOMRveE0Fsz0
         rfr7IfiweqLIaeZb1ZdK7OPB9boy2ZN+maMakS1VA+EuRFrXIf/5OxLs4CZ2KeDxpI62
         IiLtsyRu5Cov6BGLT4EZhNzWITMsoKrrkL1gwOqfHpLEKsEeH7+d6k2P5o0IzKWihXzz
         PO7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oqsIECjR7Ea8Zvb1gn9dei6ns9KBsh89VuPOEF2Htfk=;
        b=e9t1JD5l3ISnwkc0IFoGQ2X4oxhgIbokcj4TkrHjKc1RjEPtFKeyYHQloon/6J1KX7
         JElJizQpC8Wmov9sWqo/3dBhKbA5PNmrElWrGYJfzxq4q5FzidBIb8Si6oVSis+T7qZa
         mkhXI52WqwvZ/uRnFJ8LEH3l/C0HX2nq0NdAsPVLSEgfSkhLTOApfWWYM0NGbz43HVIU
         tLuNIug+5jXBfLuvc3OZGL1l2dq196S1foyEeHw15bswzJYb+xUjZAI60m2piug/j4Yk
         lPMd/RU0QLC0nIsVes2bCBT/UMCwiNV7VLeF6zO4bA8k6xwZZ3Ypcvib6GEloo3/iM8L
         4mpw==
X-Gm-Message-State: AOAM532PediPs0lSV85ZrHGNM+E909IA3c3cmxn4UGUvnKyJ/JdVivLH
	plt1PLyo2j5wKpSbIxZRBvnHSMPMWSgoGw==
X-Received: by 2002:a05:6512:10d4:: with SMTP id k20mr19470727lfg.488.1617698726836;
        Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id y8sm2200412ljk.9.2021.04.06.01.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
Date: Tue, 6 Apr 2021 14:45:25 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8712: remove extra blank lines
Message-ID: <0bf3df788ca46a59ebb990bf2e3effca7080fd1e.1617697237.git.zhansayabagdaulet@gmail.com>
References: <cover.1617697237.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617697237.git.zhansayabagdaulet@gmail.com>

Remove extra blank lines to conform with Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 6b3c5914efb4..d432f99e16b2 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -36,14 +36,12 @@
 #include <linux/if_arp.h>
 #include <linux/etherdevice.h>
 
-
 #define RTL_IOCTL_WPA_SUPPLICANT	(SIOCIWFIRSTPRIV + 0x1E)
 
 #define SCAN_ITEM_SIZE 768
 #define MAX_CUSTOM_LEN 64
 #define RATE_COUNT 4
 
-
 static const u32 rtl8180_rates[] = {1000000, 2000000, 5500000, 11000000,
 		       6000000, 9000000, 12000000, 18000000,
 		       24000000, 36000000, 48000000, 54000000};
-- 
2.25.1


