X-GM-THRID: 6675322787924541440
X-Received: by 2002:a6b:7614:: with SMTP id g20mr35226iom.14.1554219701930;
        Tue, 02 Apr 2019 08:41:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dcc:: with SMTP id b195ls647999itc.2.canary-gmail; Tue,
 02 Apr 2019 08:41:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZ0n/DsPOXtl29zbx3ROiubJhEqaG1Q+bFFvbpLbel8Ph12tX7VT7r5XpPheYlt/ycWYnW
X-Received: by 2002:a24:5ed3:: with SMTP id h202mr8201977itb.17.1554219700878;
        Tue, 02 Apr 2019 08:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554219700; cv=none;
        d=google.com; s=arc-20160816;
        b=JGGCr47xnk4Ctt3RQyCMM5Q8mdrfgzKSCP9HRZKVqP249DotUmyy7B5dWBBZNFcog1
         m7xOVUNTGC3uUMZu8ZpkIJ0Xc3v4ArAWEMQOFizIcdMnk1juHU+7x4T1YnOGV/65rz9m
         qx/8ts0tVnkSN/r8QkCuYYT8OYxuI15Pza3IxDTdX70HoiJS074fVGHd3xbP7zo+hyAq
         nZCZq3410FQ9zAOnAOwUAs0kLP7K7Cbn8hI7b+Rxu+j02hju5Lef3Fa8wqaP0juCtTnw
         ZYXpPd1ai3ScEh95IExsqh1KgD36aI/dI8C0W1g0gnjwNXKD4evBmUoXQZQtfop9E+7I
         xRWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7qqfdiuXzJ//jeHi+kWFRNrXcRLwKQKDVM7aXprpG20=;
        b=ICiLmGBXuAAFp7YKJbJTjUqqELdv70fQVwifwhVDRXWx/NTg2MG4FduOus3O/j8ZXF
         09/jDw2CNIqqAmHMJmf8R4DUtBnZbnm4y2Wv4sMSMeaprxv6IzboZzcbX9v/AC4lNxZd
         giWHH4p/lOoelROgg1BdKG8T+CXrv6o09RKY3S3AJMjTGAyjJeU5zD0Uonr2s0whZ+d5
         1u9L8nQyT7NXaAD98olFzLmZJ3TXz1t3TqtBIoOMwuqivVEvUN9kWsqPQsIgfWn1X7A7
         mV6wYcamWN054b3ujvLs7OFVxiu1rIpO7SKGU/vmed/SlmJfE4bk5d+i7WxKvDLv0XkK
         Cqfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVnYeDAE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 3si815044itz.0.2019.04.02.08.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 08:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVnYeDAE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y6so6458498pll.13
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 08:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7qqfdiuXzJ//jeHi+kWFRNrXcRLwKQKDVM7aXprpG20=;
        b=rVnYeDAE2Af+uqi7YbaQ0/W3E6loOaDD8iQ75pr/vzsLUJu8r2GKya4p793CtKYsdb
         c8axiGQZS8jdtVCtzCJWFWLYoaY/2V1h9hMQxBNuA6S1XuHJamT1ObqXXpDGKpCjbQpH
         qM5w5h0675cZAq+S0PMOUnbiotdfdn8FIVpfsSb2iSGeuz/6qx7Yv7Hnvrd3wBQpxIkE
         Hijdeg1sZUU3N23PlHq4cqhXydLH9fUp3QokANcsCpB9XA8SIV822WoGVkXXDWUvZKLS
         V141mOJpY92qGILsMRBLj9AgxqrA0dNdesO7O9l8rKVS010wdepXIcVGCP1iKJGfU6qV
         4S3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7qqfdiuXzJ//jeHi+kWFRNrXcRLwKQKDVM7aXprpG20=;
        b=MHZqjJ+CbNvjY+x5BiyTbKqNlD/54L57KM3ZU1zHNF3FjDP04MmOZMNM1IljGI/FTq
         V4SRtdo1eSHl5tfi4/1I7zf3PdOFDlHx3GMhTpZ9KLhLIvU3uCwoMGabvxvtac8Mr/VH
         kwW1kwDAiMu1cNd2QFc5DsK/sUfEuCn2ogEVOCmvwkNpkHtNjciQEcbGy+LZiuqunJas
         3DhCKYbPwyppEbot0U68XaLnBjXAA+KVhzQ44Brmyf1wjHD0uTI74qc74NTo2SHcU8eI
         PyoZ3aj4LrIAmjw8WL3r9Z8363vlx3/QhruFF7Y8BBcyP9Hcrr066MAc5T2Phv4N+MvE
         AH/g==
X-Gm-Message-State: APjAAAV4btGhGoZVYKYTzeUQrmZ2L2NUpogDZjlcIAuvU2llkA057/l2
	0WRGU9s8skZZqLKuTwxb4ki224iE
X-Received: by 2002:a17:902:f094:: with SMTP id go20mr48252218plb.159.1554219699864;
        Tue, 02 Apr 2019 08:41:39 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id l88sm24514341pfb.104.2019.04.02.08.41.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 08:41:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: iio: impedance-analyzer: ad5933.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 21:11:25 +0530
Message-Id: <1554219685-13181-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 3134295..0922cc1 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -284,7 +284,7 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
 
 	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
-	do_div(freqreg, 1 << 27);
+	do_div(freqreg, BIT(27));
 
 	return sprintf(buf, "%d\n", (int)freqreg);
 }
@@ -420,7 +420,7 @@ static ssize_t ad5933_store(struct device *dev,
 		if (val > 1022)
 			val = (val >> 2) | (3 << 9);
 		else if (val > 511)
-			val = (val >> 1) | (1 << 9);
+			val = (val >> 1) | BIT(9);
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-- 
2.7.4


