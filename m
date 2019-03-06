X-GM-THRID: 6665132923205713920
X-Received: by 2002:a62:5206:: with SMTP id g6mr2013309pfb.58.1551847212844;
        Tue, 05 Mar 2019 20:40:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls392962pld.1.gmail; Tue, 05
 Mar 2019 20:40:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqygn1/DMxlFzn2dllRM5/o4CC/QF9HYHlH4eJyuRESRt+yg6yOdnbjKV6S/MhHqVPkoUHQY
X-Received: by 2002:a17:902:3303:: with SMTP id a3mr1544819plc.24.1551847212139;
        Tue, 05 Mar 2019 20:40:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551847212; cv=none;
        d=google.com; s=arc-20160816;
        b=sqjbcDXs/UVhKouFbwFjYi1xOsWCUg0MW9nexppLvrh9zwiyQeAzUBe//Yep3fq9FM
         NncWUn64rEX8m5qksmBz5p1itb3CK8w2cSjriQjZ+gFkhroHIcx2vMLmN3i6Q4nyJa2B
         dBxOdpIf4Ksdfu/AWH7cY2aH9DKDgrmGp7Ddn5z3DNU3nAOMQrkLlWcDO/eVsKbdu30e
         dNS4x5dS/QyCCZ7iqp3I5XLaoehpGZ5+dNjE81BC+RdAZEBq9fClHFNOKpMUO+jGopli
         iyxtdCnVjVi24e/6oKCa9HRZZxHzjYNWbTMLT8MopkuHILUzxLkRGjMgQg5t/j35t9o/
         WgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wwIMxugkfJJzPFhPi6WaR5JDst7a+CUcA1Kq28wZB+Q=;
        b=zsEyapz0C2tOr4JDeTZfqgAV3CGfD0CawoVoYE9ES3hCS+I854m/Zvagvz+5cozN4d
         pAAOodhD0c77JXgyaejiPAH4EjONvW4P4Vj7JiBHwmhwZzq9kQeKuGcD+Sf5dRtgxGFa
         UWi9wbkN9NViKNvC3F5DA6qlSzYiHZ5WqQjnUuX1N+s3US+HgTiIWvgR3L63lh7keia0
         OALi6P0F9++jcWYqU4T7jnahz2zrKLVMTeWxdqWm01vU+n6VmWbLqlYNGU2LSBEZ72M9
         SDsvfWXLJ0Nh7Qr2ktrKvJU/6bW9u4mMrFmykYoRhb5XKHfSmW8JvTvAB97dEptxHYFp
         DdMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m1TEqJEn;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c12si66534pfc.2.2019.03.05.20.40.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 20:40:12 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m1TEqJEn;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id s22so7491283pfh.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 20:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wwIMxugkfJJzPFhPi6WaR5JDst7a+CUcA1Kq28wZB+Q=;
        b=m1TEqJEnrs/tY1Nz3kzJ2aTFiGEENHaR8Odc5+JrfydgOebWesgq2/sbDi5G5cRgUb
         zsTucCW45HDrO3b6V6eOVPTmwnVHvtd3uMi6vO2diryfojXiLSkw0CkibTobv5G/B3sZ
         p3+s9VHPLH4DaI9h2JGt3UCTMiOOlnls57dL7jF9nZzTREKCZB+2VYPpMjW0IRIFT7JL
         NsEf3/pHkwm2Ue9iuKV4bFG6/7zhSuTdEwNgSpuKGMsUOw7yB9fuNFz5S1wg36dVXbhI
         wU121yn5vDyLkDm3zyGZ33Qib5TJaqgBqJBwfyRr3lSZ+cX82OTlirLq00fxoJ4ypgl9
         5fyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wwIMxugkfJJzPFhPi6WaR5JDst7a+CUcA1Kq28wZB+Q=;
        b=WYzIRdWa4uUnrIoeqo/7azYx+Aw2gcmqMt/L2vZqsB9flY9lawJW4kLpPN81A+/049
         Juc68W0wVjx4cV/NG5gddVrhlh10bbQpNTaxbMyqd1S3MGah/1OJfNR0C+zW1lzgffIh
         24dyIkfsZYTVDVW9x2kQmbbdVjfu/yadRH3jEMlrq5ipzzrEb2UwyAXMUiMl3QrY+fO4
         DSNueGdzsIacvYlTqmguCHA3MbCxbUyPxVnyifKMqyBtAmwLXBiUczdz/vwmYhySDIKY
         yNHKZiOBrubewzANcds2x6p7Oi8mPppHC/RT7TH+cNRv6eMkDxny2jS/jkcrZ/Ft1W01
         3h0Q==
X-Gm-Message-State: APjAAAXrJ4XisHAqCvdt2rG7hA1qftcu0nEH88npTx8MG9IhMvDcs5XQ
	0ViNWZ6j4gHPWzZ2hW/2zz0=
X-Received: by 2002:a63:702:: with SMTP id 2mr4616375pgh.14.1551847211921;
        Tue, 05 Mar 2019 20:40:11 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id h63sm1183985pfd.148.2019.03.05.20.40.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 20:40:11 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 3/4] Staging: most: dim2: Fix malformed SPDX-License-Identifier
Date: Tue,  5 Mar 2019 20:39:40 -0800
Message-Id: <20190306043941.6141-3-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190306043941.6141-1-etsai042@gmail.com>
References: <20190306043941.6141-1-etsai042@gmail.com>

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/reg.h b/drivers/staging/most/dim2/reg.h
index 4343a483017e..b0f36c208a57 100644
--- a/drivers/staging/most/dim2/reg.h
+++ b/drivers/staging/most/dim2/reg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * reg.h - Definitions for registers of DIM2
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


