X-GM-THRID: 6664058472293728256
X-Received: by 2002:a24:560e:: with SMTP id o14mr8014825itb.15.1551597023600;
        Sat, 02 Mar 2019 23:10:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls3676054itc.5.canary-gmail;
 Sat, 02 Mar 2019 23:10:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqxh693YhJW1yeuW8TKvu1brHdN6NnZy3ijd9h4clFPoHk9X+dBVF1x6us6sbaJybaTMFQVD
X-Received: by 2002:a24:2c53:: with SMTP id i80mr8280550iti.2.1551597022806;
        Sat, 02 Mar 2019 23:10:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551597022; cv=none;
        d=google.com; s=arc-20160816;
        b=J9+IfQahyZT8dCr/qzSY0XrbETXReG9zlA2LlgzaMjMNIx8d9ypLiFMiJ02ilB1SUg
         tYKZQCbPf9A9dI7b+brOnosU8JaOjefYV6KC/mGhZSBycuXSKZH9ChVU9jFs5vyRqFkq
         DD1vZw53x8J0T/QZblAKruumRkTSmWrG5Ci/v7TwziOe/wc02c/5ZoZBZgDHFgmhpEHZ
         guZoR2+fhqiMB3H3SLuPaXVLVY1k4wjl3j7K8L9+29lUOLxEX3B+bUsrpNbUf696KlL4
         O5rZusldP8AXPM/nyQO9tc7t6Sv+AYFIjG7rHbn+uMflddg7RelpHP7mXJ9RB3lcA664
         FLWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nPTX7uIKGfqZfeSC2L8UFgclDE9T/996H+fjicWflqQ=;
        b=nS4ZNmVQraXjf/HBL80GQguf+3mwnnQbnu8igL1GwJKDIOHt/vZYqoU82S2JDri2PR
         tzc/ySR6wmo07WaulHD3e5xktv1ZcO7zEFJeS/T6GRnnFCWw+0p7oIALZ4MlLybeK1fA
         q16ROcRWQkis73gz/WnP5ecPzRevlRdEFhN3wef92nfBW0GW5CrE9Y80Ru8zUe8OgGuK
         biod974hCkZ2Rb1hh0sjhtNSvKpdQW+ILrLjCXDvDi9CHyxgS3i3BOP9xY2ksDhXVoZO
         UlkzM7jJbUkBxMdF5gpEDRx30GEXBAyP40tpz+aiqiXvlS3xSgYupkUAdscjnzWxsf+/
         FqPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SkClIULi;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f19si144777iol.4.2019.03.02.23.10.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 23:10:22 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SkClIULi;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id c17so986814plz.13
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 23:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nPTX7uIKGfqZfeSC2L8UFgclDE9T/996H+fjicWflqQ=;
        b=SkClIULiOpR6Xx8I45lkPMEMapW7h9YPN6wCO51wC1+RTUbESJ8ytwJzf30aSntGS8
         w2Bmm9wmxjHXU7VRV5jFgahA8AjkMWs7JsTD5v8j8S5SGdLshGmB5ywQqYeYak9N9qpv
         n7Gev6LeZHlZjP5JZhNkZbokYQifHqGi33ArGjIn76uHWEsZqurM03l3hGROTcnKVz/t
         lyHXBGHqfDzgW3OzQX6HWuLTk4/DfuyS74s8Ctgj37eXWOoSEu4nGCoOLWWm1EE6qJZ1
         1dkLqQ7xFj10kUmJzExx44KGKUK6IBE1Zofzf4/I4LnGcuxtsXdYco5ZC5kTWdEPNtei
         4OTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nPTX7uIKGfqZfeSC2L8UFgclDE9T/996H+fjicWflqQ=;
        b=nHB3nsn8xSZqzvyg2TQkVROoAK92vCAzMBdEDKJLnpA8mchPADE0CsWOidE/xUN5xZ
         5Urh+j3WjDni84dA1AtFBEK1IIvN8ESzwmuPyGyJrda1pavRzS739JHYjim8V8mfaLW3
         rMb1umyQn/hVOpaZTnywAbmmdDAIuFTI6kgKrhHzhgvHbjL1pJPFVujPflMGNfTvnxeH
         ZQH9irwAXIjWciJhKBGPFTtVV6gzeeKO7Hmv+Hn5cMaDHddTR037igYnd7ORNXz4rTcA
         x46a90EaxWJACWTGl2kl5Lz+hGKxhLPyrlLIdApPEKPkEXpBTJJKuXf/mNHT/RUUl1Uf
         m0QA==
X-Gm-Message-State: APjAAAUar73oCmEZhECG1c3cksVo7zdszeG4XI7nwBqFIhsR75sFWmX7
	jrh9MNeB4YO2+LBY38mshUs=
X-Received: by 2002:a17:902:8e82:: with SMTP id bg2mr14134608plb.217.1551597022271;
        Sat, 02 Mar 2019 23:10:22 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.68])
        by smtp.googlemail.com with ESMTPSA id u18sm3453026pfn.22.2019.03.02.23.10.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 02 Mar 2019 23:10:21 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v2] Staging: pi433: Fix checkpatch.pl issue
Date: Sat,  2 Mar 2019 23:09:55 -0800
Message-Id: <1551596995-2999-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/rf69.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index e19b9ce..0c189a7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 {
 	switch (flag) {
 	case mode_switch_completed:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
 		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-- 
2.7.4


