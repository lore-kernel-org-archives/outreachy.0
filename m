X-GM-THRID: 6659981177442533376
X-Received: by 2002:a17:902:e50f:: with SMTP id ck15mr10155841plb.27.1550647704180;
        Tue, 19 Feb 2019 23:28:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:d241:: with SMTP id t1ls7875412pgi.11.gmail; Tue, 19 Feb
 2019 23:28:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZbH1z6En25oWuJN7Eu/M2mggid4tAT69HxsdK7O47pEu6kiN0t6+9ejddZzXI+Wb9D5Dkj
X-Received: by 2002:a62:111a:: with SMTP id z26mr3836102pfi.97.1550647703552;
        Tue, 19 Feb 2019 23:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550647703; cv=none;
        d=google.com; s=arc-20160816;
        b=gi33Bnwmvrwg1BUlzm8Hr16sJsICiFEV5702a3vhc8bQow8V4ywqDOqICvtnCgbAKv
         JA5Ol/vVvzlfL+ylG/tNkcLk54yCW9+H0saUW/Y8u+Wc0bshbWBbcjgUIjHcoy/cf2xL
         8SFDI5xWhdeQSqzmdZFLUXAzDWPdGcVQlKLzEh6JhnGiH9RYfujqFXhmGHqkdIa2SN48
         zdwi/zxpr8HYjiBiYvAU2NedUTSHPZPGBrwcLyaIKMfMO9I4ig11isFKYX3JFIw7wSSX
         SjtdkfhhmoR/KIETLP5x+9K0OZEVT1psa8KFueK1i6PmuEg35fikdVXfPGN7lRA9qroA
         kzxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HxibILbJEhD00IPWn1pKe7wGi7oOLNK4WQH5+UokoWI=;
        b=J8ydSY4ZPxtuOizhkeouJeKy6A4cZUTEZ67UarFERkGoTwjvVW2hNp3Phx/coprY/8
         588WQo+gkG18TGrpOkW1OzABgrX23qPxrpbHbxOxyblB1YfIgXrflmbFyZhIwUBAl8Xr
         JH79XpyOtkg9gN9US9qeuUAdmS7LYl9z5ixj94Zf668OEkM6JucXbeVrBaQOnfunJm5d
         W3g1ht0YCIA9/6hau0dmotCbxiKNue5y1oOyoOV47LZH91j2400/NPjlDw1MeY7jwhic
         TJSosiNyYCj5es7J9MsTnVBpOl/KnDKicDJQgQPslOdvyjhJMQzSdc8OXL+WrXI9wVP2
         6Iow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7AaYOXx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u20si877894pfj.3.2019.02.19.23.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 23:28:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7AaYOXx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id s1so11756007plp.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 23:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HxibILbJEhD00IPWn1pKe7wGi7oOLNK4WQH5+UokoWI=;
        b=f7AaYOXxfPlEZSJIMQHLKhlkbXYz/Dnp0ePh4aBOUcnYEsmRA5MGWOxnSkybuLppf9
         Aq+Wa/WpiEBsjzE1psRNivTfIKx77DDatnUkDtG0pfvThc/vJiwGx0yjjaFRicsavBIn
         5tA8mL7DPRr4udvFOIA8i8Ujmn/93+Gzr2aHjXyGhW+uHKAnzgc6nk6HT9vY4E3sunu+
         A709jT8FmMWIgOQ/iOdujQFwaStq5NdR8icUHUxoihdLqg0/FuG7DY6bLdpwRwOOenf/
         eBZRP4OSLOpZvHqHrQPi8PVFj6AI3Z1cgHh1iB2W/R9psbHlUmjrBAF5ATI2HnSfDGQ2
         3jsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HxibILbJEhD00IPWn1pKe7wGi7oOLNK4WQH5+UokoWI=;
        b=PdAQp67ySD4QIj8zAUlbPmjmbVt2cJcoaAbQKOKwCM9QDPUH8EMdy60aXKR+x+C6zj
         7e576RYu5jlA5Y1zCQ8VaG0TcoHrNBERNtksp4Zb7g7pVKoZz2wu43/34q+k5kHZSX5M
         cbesYbmgSwNr44ud0TYRRZks0fQhKB0Bnrc9N2ZhXDC8pSgkhlTZVIaeLPWIcmHEcBQt
         1cKbigcy0XCK5ScvXWt6b/5NqctdQTNmKrAuZgvoapN199/610lMkiNs5skoxDSE6Njz
         zGYhfDXcd6Ltj5H33OLCKqZ57YksNkmfQKAO4TmT6K9ZcL1zo4Z9TPy/Wb0yx2Wkcult
         AZBA==
X-Gm-Message-State: AHQUAuY/N0Kn5UOgfwvGY6E++P+Lc7D0sVc7LZUec9GsmUIUuq1B5Ti4
	32v5nNcjj3yQuJiTlD+xv46xQNP5CeM=
X-Received: by 2002:a17:902:e789:: with SMTP id cp9mr23926956plb.127.1550647703214;
        Tue, 19 Feb 2019 23:28:23 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id 23sm19149094pft.187.2019.02.19.23.28.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 23:28:22 -0800 (PST)
Date: Wed, 20 Feb 2019 12:58:20 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] Staging: rtl8192e: Replace license text with SPDX
 identifier
Message-ID: <20190220072820.GA21168@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

- adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
- Removed license boilerplate text
- Issue found with checkpatch.pl warning:
  "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index 0637de1cca47..44f11f629922 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -1,17 +1,6 @@
-/******************************************************************************
- * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * The full GNU General Public License is included in this distribution in the
- * file called LICENSE.
- *
- * Contact Information:
- * wlanfae <wlanfae@realtek.com>
- ******************************************************************************/
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved. */
+
 #ifndef __INC_DOT11D_H
 #define __INC_DOT11D_H
 
-- 
2.17.1


