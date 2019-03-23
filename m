X-GM-THRID: 6671492660700643328
X-Received: by 2002:a24:d703:: with SMTP id y3mr4781485itg.162.1553327940662;
        Sat, 23 Mar 2019 00:59:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls3389067ita.2.gmail; Sat, 23 Mar
 2019 00:58:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqza/viTRTYtzyvf/ZPT5/6+hstkW0Xnb/gSJUVOr4hahl/hfMva2K+0GMJ0Y5cVfdaIDnXB
X-Received: by 2002:a05:660c:78a:: with SMTP id h10mr1387623itk.157.1553327939844;
        Sat, 23 Mar 2019 00:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327939; cv=none;
        d=google.com; s=arc-20160816;
        b=ctaItxNSFH6Y9Ri2T6fU5zm+EwOVosRTzprZO6qfb7LD9e78uQoaS0iurBguVBW1cV
         77j1tuN0Sj49EvOVdyCnBgaPaGACOfGpzGjRS5u3TSjJnaqUh9XSNcEsPKAoEhoN9gby
         ao3lOUO+Z/TI0n6VVkl5nRvfBkRQ1A4/+Ek1VHl0OL+YE8qBRosHtknYoEJQ5ZwnpUkI
         K28DCZhXyUe+lSf6AC+oBEsQ80QvZ6+CJxie5TjsMrEGXkEtlZNgDFQcLrZLR6QOlxVF
         XTpfFH/evh9vP3L7Nq0q8iF13j17PUlGxjjk93fcApZkEuWJlv4ud8UQnDZptxCkIRWy
         C8sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=kIVrmzQJOkI9SYt4qyK5CXofHGdNJXzdFMvKy+cDHas=;
        b=b6xpDwE4/MIU5S89mHkk27NTzdkNoMP8sS8bYhFxftFQ+UEDDAHgUUz+bJfeDu3TF1
         8jNqFuRbfNVTkHl0Z+Kz0X/kEzz9K+VlwxRHo9Je6uRqS5wTi1PKPG/sFaqM3oTcTzpD
         0//sAW+SEyIWKhoI6PoZ94iJfBD1NlXo+xIAkCgVhrP/ZUBKNjyA/1x8cQjPOw2i2cqF
         CmpEELj/72biaMF1MyO9wgfzBqelZzpynB7bUkTd77J6jBaEQ8wYB+Lo8yqUfvxens18
         B1yUPGxz8CRsVDAwU+z428qzY4lmtnnKKjmCNP+X4d/wEfT51bIYiWtbkfZr5qrda9jQ
         4djg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkvIhrJz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e74si820337ite.1.2019.03.23.00.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkvIhrJz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id j26so1033351pgl.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=kIVrmzQJOkI9SYt4qyK5CXofHGdNJXzdFMvKy+cDHas=;
        b=HkvIhrJztfSSld1DyflEtQFKUUMup0S7b+0NimX77WiE/DBVEb90f3y2DEmV7bKhSp
         jF5IsW1goq6ChMOz+AzVWEWS0xl+tTcsheN3TQXaYfG3KP1BQNcH/GBN2n+WSAI3jqsp
         5TnnXtk9Wfnl4H7wGXeYBl30OSKD7vtd3/HSb3Svi4yxfh7jgGUP+EB25eXjJjc9EpkS
         QoBMAuWh6/iyQt4MeoTkhmBBaQ/8gxS1J/UG0TFYLezNx/dYPxE/ZVW22J1F0pex/xJm
         JTRAKYwahFdnmtWjdhT7q9k3q7XEo5UvmsYmYANt0hfQ7TwtVBbLe2j8depNaZZbUfH6
         6saA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kIVrmzQJOkI9SYt4qyK5CXofHGdNJXzdFMvKy+cDHas=;
        b=kRdHfUf5vQzefxMLCgtWRBgSffq4txBAMJNywNoEhHC7LeITzZ4ppOlA9DXsxDps6b
         yFKDCaQVVA/ECJiZR0XT0jNJewUyUHf4E3wvY+fDumTG9G7hW9KbhjA6JR8LPaGRO2Xp
         1dORrqdnb+iYfpp5PnRVRcfIkWc3TmXQKtUMmkFwfsRN+Xv4fuyGYIO7eictiVYKG6R3
         97O1Cz+ZjIJLFq2qcyMndlFH0ShJbtt1OQhoAVbagE+dlWj12CvThu/Lbu4CBLKNhJzH
         UAD8cqp5LjBqaw/gzfW3j7sOh1s4VkOEt9so3d22Z+UF9mIgV9Uxx1dPtFq9LaCdJ8Jo
         Z9RA==
X-Gm-Message-State: APjAAAWFaTev3Q33LG9IaRoB6JJZbt4FyR/PY/blBrqxWDxweKo5zWEl
	ughKzoPv00Y8GY299eS6GDYrSlpf
X-Received: by 2002:a63:4750:: with SMTP id w16mr13221902pgk.256.1553327938961;
        Sat, 23 Mar 2019 00:58:58 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id n24sm22379150pfi.123.2019.03.23.00.58.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 00:58:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	pkbehappyallthetime@gmail.com
Subject: [PATCH 3/5] staging: rtl8712: avoid camelcase variable name 'bRead'
Date: Sat, 23 Mar 2019 13:28:29 +0530
Message-Id: <f5724c03e098fd9143f6971a1bda5a34a58eb1e5.1553327467.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 1a6cd42..dd007280 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -107,7 +107,7 @@ static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 	return result;
 }
 
-static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
+static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 read, u16 addr,
 			    u8 *data)
 {
 	u8 tmpidx = 0, tmpv8 = 0, result;
@@ -117,7 +117,7 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 	tmpv8 = ((u8)((addr >> 8) & 0x03)) |
 		 (r8712_read8(padapter, EFUSE_CTRL + 2) & 0xFC);
 	r8712_write8(padapter, EFUSE_CTRL + 2, tmpv8);
-	if (bRead) {
+	if (read) {
 		r8712_write8(padapter, EFUSE_CTRL + 3,  0x72); /* read cmd */
 		while (!(0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
 		       (tmpidx < 100))
@@ -421,7 +421,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	return result;
 }
 
-u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
+u8 r8712_efuse_access(struct _adapter *padapter, u8 read, u16 start_addr,
 		      u16 cnts, u8 *data)
 {
 	int i;
@@ -429,10 +429,10 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 
 	if (start_addr > EFUSE_MAX_SIZE)
 		return false;
-	if (!bRead && ((start_addr + cnts) >
+	if (!read && ((start_addr + cnts) >
 	   efuse_available_max_size))
 		return false;
-	if (!bRead && !r8712_efuse_reg_init(padapter))
+	if (!read && !r8712_efuse_reg_init(padapter))
 		return false;
 	/* -----------------e-fuse one byte read / write ---------------------*/
 	for (i = 0; i < cnts; i++) {
@@ -440,12 +440,12 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 			res = false;
 			break;
 		}
-		res = efuse_one_byte_rw(padapter, bRead, start_addr + i,
+		res = efuse_one_byte_rw(padapter, read, start_addr + i,
 					data + i);
-		if (!bRead && !res)
+		if (!read && !res)
 			break;
 	}
-	if (!bRead)
+	if (!read)
 		r8712_efuse_reg_uninit(padapter);
 	return res;
 }
-- 
2.7.4


