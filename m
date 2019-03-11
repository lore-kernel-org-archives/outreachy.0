X-GM-THRID: 6666918096348905472
X-Received: by 2002:ac2:4149:: with SMTP id c9mr1653448lfi.12.1552262831571;
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:63c4:: with SMTP id s65ls1731013lje.12.gmail; Sun, 10
 Mar 2019 17:07:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHoqk7pSLnT5l7XQ9QksasGnI03bnTbo4zECwX8bJjzUxJe4IarvyHQmbD88XQPovDNlP+
X-Received: by 2002:a2e:290:: with SMTP id y16mr1544409lje.20.1552262830533;
        Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552262830; cv=none;
        d=google.com; s=arc-20160816;
        b=NrsSh+HH37FSXMb4xE+Bl5eN6t7tseV6EaIEssDkPEXoP/SxOWNexcbV9Tlvn3dPPi
         UWbcVyI7gtkXnxJV6P9SusFERtGF+7Ja58JiJ9g6gNtJ1Kez2E30IzBMl4c1yiZg0m+A
         ZnxqmoNB0QG0TZWhhZWogRn3AFtHPkK2oZ3fvm4iH8DcUeDKB04peDqKZBf8E5iQIQHt
         YFJFknu7kEo4+d2tleM1ix9Sb7/sqsXMcXhOkMPgNUlZ7nkN/oeDzT0l/nURDf3aIaj3
         svG4be8XtyQyKsaNgYyPGC0LF6A+UrzoSPcpt/uYOzN8O2nCtiKoQpYWC1k6nSilW2N/
         uR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=45VYyaQv8aIxbphLkGhJW/A5rCiDkuffaqZXHZ1qjU4=;
        b=e5YHJ23dF8U3j21XIBu1Gg06PgNtAnQea5TVRNRbbn1EHNIEnZ2p29AMHV7A2Ylrdm
         EpAnmkPYDmHdM23am4R31gWObpz082NHBVHnJBRcD4y36d6C8wWPwnKNTfeDBfanu9gS
         mZzJht6T7wlbM4nZYRv22+C9mNzv3P13c5pg+oQ+/lL0BdX85ai16nDTyhuvWcDQd2OZ
         0DobuH4l5/DLVFQdiSX4B9VwbGemK3PSncrhE/9opnEwClX/2ZQfrwVk82U7NMFsIpNy
         MfVCuJpQYyi6JjjAE9Z5OSQ3hLgPLZaaSnyE3FfTJaEUr29uhbL9AWo09gdIbVomw23T
         TPNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hythk2IY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id u21si184625lja.1.2019.03.10.17.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hythk2IY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id o17so3158960wrw.3
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=45VYyaQv8aIxbphLkGhJW/A5rCiDkuffaqZXHZ1qjU4=;
        b=Hythk2IYTjaB3mQPF+Gkkomf4u8RDFyYF1Xm+AqpkgFdniaJcukzb/+YN1I7O5eQci
         9vpb30aI8X6ur1zR7c3l9e0Xj4l1ifzd5tU6llcWw1X+I/49QQKBkfgL/964055ZB609
         KHK4sv9plYMJAuD7aNsTSorpu0b1eYlN21cmA2iwQbH0iXTFRoHmZp7hbD29cr5PaMCF
         s8LnZcT37RR7tnY2CXOA3+Cp+NCQmYX4b0+bU+hJtUgXWL6uAmtF1Tvhy24hZxNjIArj
         JK1NXeWXJgqegSRKK2NQi9rdCPaEn66xR5HuuzufJG3NhhrhysAT3jJlR8A5StMSJZuu
         /T1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=45VYyaQv8aIxbphLkGhJW/A5rCiDkuffaqZXHZ1qjU4=;
        b=axiyEaVq39qF88LyxhfgLLh5VDTQAzRb14GvfD45KsXllHbSj4ae6qTiAqghL8D2yt
         +rPCFv0LCXuC3HcB5GYct/Oss6v+xj1eOm8+jD4hCi6PtE26v4UawiawyFcugt4aLwQY
         tQqTIRtPrALL9627CxJrKt7FWuDC+OfuRMavuVNrjq09/qpBjjbN92frPt0L/KJ4KRue
         q1jGXKNQ+zFjdRHR0wGX3CuHF+BPC0tuublAaPFoVOnj9y8crQ2GyXrgkesPgy9QsgLp
         zXLNCML5mJdJLU3/1PaxjXsHvzAtWZv+ijx9w032LA5GT5hYNzcb+7cMwg0J+FqXsTAT
         qWHQ==
X-Gm-Message-State: APjAAAWwlJiqo49YE0HNTDMadiiKo12p7blYoKM+oIfGUGgL+cMv7KeB
	8hAX/L4cLQPshNxZ2eGDTPpUPM4=
X-Received: by 2002:adf:fdc3:: with SMTP id i3mr17223696wrs.252.1552262829977;
        Sun, 10 Mar 2019 17:07:09 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id x17sm16313142wrd.95.2019.03.10.17.07.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 17:07:09 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 0/3] SPDX cleanups and line over 80 characters fix
Date: Mon, 11 Mar 2019 00:06:59 +0000
Message-Id: <20190311000702.12740-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This v1 series clean up SPDX and fix line over 80 characters.

Jules Irenge (3):
  staging: rtl8192e: add SPDX GPL-2.0+ license identifier
  staging: rtl8192e: remove license boilerplate text
  staging: rtl8192e: fix line over 80 characters warning

 drivers/staging/rtl8192e/dot11d.c | 57 ++++++++++++++-----------------
 1 file changed, 25 insertions(+), 32 deletions(-)

-- 
2.20.1


