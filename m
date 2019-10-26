X-GM-THRID: 6752241350359384064
X-Received: by 2002:a92:ce03:: with SMTP id b3mr8805607ilo.301.1572128699784;
        Sat, 26 Oct 2019 15:24:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d7ca:: with SMTP id g10ls147406ilq.2.gmail; Sat, 26 Oct
 2019 15:24:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYbrZDBEbBG2Ojg8+w6QxHkceqxQJwKl8FpAXssM1YDuyCO063qQ+sdOty4mUxdZYgnw65
X-Received: by 2002:a92:83d5:: with SMTP id p82mr12783924ilk.87.1572128698841;
        Sat, 26 Oct 2019 15:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572128698; cv=none;
        d=google.com; s=arc-20160816;
        b=scnbKQAYSVQYb5NBgJ3hJgUNZrpOLsMTNFSLU2NNdg/G4oVDYPdFC0Bh/ZHAa8o5We
         y65CG0ZBurWNFhfXEV2EAkW9QROBQBIj19ULzC7t1/j8wO9d1MaGFRoNfKFrnuM8voJH
         /1et7FCJJv3adwFoX5vBbueCX+BMlogImDAP5KMylhlSL2MYGyOquoMrQAZA33uVnLh7
         L1u+N2VzzPJWmnWdT7Z0wJXi1Q9eYvm1ZmGRjeSRUGxUgOnPjCgD0AT6cCR62ULdOt7F
         2sr0i/W+7yeJJWcHVw6uorsnNZo4Bnwg0fN77zGEsitx3Ucl2czWSOh73yU7s0PR6W0a
         UT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ckFFNPjTqoIV9NtKmwbFlYYqSItNgTJwWUgtTUGHSxk=;
        b=L8etygyPht8AKKpY5/vkuI1YZSGej/ICig3SGJ0dOLErdiTCSNcb8IQoZ/Hsjo6ZZ6
         MckhSaUJX5afjFxG4SNFSowz3xfoqwZB6aOb+rVNCQnuWw+N8O16h1lXkluejD+T0/mm
         KuH3jrcyTqVmkmlPxFkIh2aRBsW4ZblwrIwpz2xtzEYDtMDY29txrM+OYP84FVKPuzEN
         zzKR+NHtyyVmfOYokdqjk8OIXGoqV9HPNioFwzVV38byr8aaK2xtYxK2Z+UrXoYIXikq
         Ws2cgyaWysrMdFsTyokb4CbJ/aMFQoSUV1cXkkTknAJNad+PyZJfV0uKB2ZyYC1M5liv
         /9Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AjxPHJRs;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id f5si511170iof.4.2019.10.26.15.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 15:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AjxPHJRs;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id o49so8890465qta.7
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 15:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ckFFNPjTqoIV9NtKmwbFlYYqSItNgTJwWUgtTUGHSxk=;
        b=AjxPHJRsbcMH2/yFR06YkVU6csiJTZ6l9KnCXkdhc+NmED9nLh+t3MhvGP+hwKwVbc
         xIcwTJUTNncG2HowAbSXiRokyvVtAfBpd3d1gh+xXC0zLTkNf/hjYkr52j9q6xgS09rW
         6JaeZKEbbFx8mNpGP9Um3Le1q7vTAIvRXyXWa43GOy6tIFG2TxX/gKndQ6nLhu8qOrQq
         C//IEr0XuQOSWEFPapyQDI2ViWzTPTiFWyIpvbApmtgnSVPSM6+LIdgTjdCrMbmzAYup
         /oDLF35L1hzW9FFtEABWmUreWI7aXs7JaF4Dn5Bi83v0UB/PYB5snwGyQeFeQ4Fh+cfu
         W4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ckFFNPjTqoIV9NtKmwbFlYYqSItNgTJwWUgtTUGHSxk=;
        b=prgMcDL1MPD1n6EFAGpWJcT9T5ET0V5OSr9ETPpHgu2A/GevLHkK+vY/8bTSN6BReI
         BSgHk1d/flu4SzPZyu8en2UuEKd3AoKco6zDtHtx5bY0T4Wb/t8EDe0SXkn0NnzffzX5
         UuVlaTXqVAQvyCCPp1TXELQeUUyIbDAoQYBEq/3674oe8N5vHLfWZO/hHIXXlbMvJSfT
         xjLysoWgcDy6riX/jhR9orkZ2OYvno1GK3TTA2KdKlaCqhYoBWcjg/UrmgnQsqFD2LsN
         s0EBWyyP3xfHI1xgJwerOy5NehuepZ+pe0NqPfNHq1qV0IT21GH/z0/mSiBMKU/UVeF+
         AB/g==
X-Gm-Message-State: APjAAAWWJmu3w/OJ7PPWD3VBCuQGqmMW02uED9sFzodFrsH57MZVzNPj
	NApqiYJEPjCkkXNPk7fXowRdDXIW95xWLw==
X-Received: by 2002:ac8:d6:: with SMTP id d22mr10473557qtg.290.1572128698141;
        Sat, 26 Oct 2019 15:24:58 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id c204sm2606120qkb.90.2019.10.26.15.24.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 15:24:57 -0700 (PDT)
Date: Sat, 26 Oct 2019 19:24:53 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191026222453.GA14562@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unneeded variable used to store return value. Issue found by
coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b07f5e2..d53bd801 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
 		uint64_t queue, union cvmx_pko_command_word0 pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
-	cvmx_pko_status_t ret = 0;
-
-	return ret;
+	return 0;
 }
 
 static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
-- 
2.7.4


