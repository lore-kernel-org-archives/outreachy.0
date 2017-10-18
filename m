X-GM-THRID: 6473410411176656896
X-Received: by 10.157.23.46 with SMTP id i46mr10312551ota.25.1508352602372;
        Wed, 18 Oct 2017 11:50:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.43 with SMTP id c40ls1598295otc.17.gmail; Wed, 18 Oct
 2017 11:50:01 -0700 (PDT)
X-Received: by 10.202.183.86 with SMTP id h83mr7849478oif.110.1508352601944;
        Wed, 18 Oct 2017 11:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352601; cv=none;
        d=google.com; s=arc-20160816;
        b=MkZ8JdT8lxZg58jN+mhjeQNZUSD+AxyBWEqy/sYHsECtUSxZKFBqlHmU491GCKg3Kr
         HdspynY5X2YHFSDTuRlAyykbjqZP6nZmUXrkL6LDdzj7yZTrfbib6MUT1VzjeG3IXcjB
         JhFtluIrqVIJPR5yYOtdxrBQJ6F5UrDCqPs/m1keuaJBTDrJkr1RyN7bHhIa2oEKan1y
         bG6hR9lHemiS+a0TngZGnwuSLlV7YR/V2G/oiQrCWpy6UzG+9ryqdWCWOBbFxqbq5Jrq
         yJXe7AEtjjx7+GKmcxiiFma1Jpiu0ZimGQOMOHQOefa1JlbrelVER57aM+R9PuxLBobr
         tloA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=xL44FB5oNgMNr5HNoIov1JcGKHOAhdQb+47Lnk1cBQ8=;
        b=KiKDSMtBEhwJbSnVu6tb0SfJIMm7hBgNfTaNpvswmIRaxDijA9dN7V/TMYHVpgegUD
         jnyDOLoN1GGwXaYcUQMNGSBfLZ4HZoyvvMgLyZgGZaL+HpbcLatjKwzi8fwMiDnwblfn
         bP7sMoV5Zd+e98TxvYxqK6KQxSPb0BdAVIKl9zGn6wp3v0rzA6EoY9yz69vQ6SDlL9t5
         4QTm1L7wnC5ATBgfZDuyGgnRbUcVXlrst1JzukmeNhVjpc6CQ7axs0k+gqMpVndLsSZq
         ujk270e2rHFxUjuH4S+lW4pvOVIBoEXVwNeKQwXQ2/P9j5YTmDYYIdiicrEl5MStEAnj
         bWqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rblN58HQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id f22si773418oth.2.2017.10.18.11.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rblN58HQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id i5so4605335pfe.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xL44FB5oNgMNr5HNoIov1JcGKHOAhdQb+47Lnk1cBQ8=;
        b=rblN58HQgxI6NVOsAjfO+HKwkIuHTCWOzX1Hrzvl4EJ9QvRouCtKyWWinSJFbLJV9x
         ZQdvAY1V0dzDew1mS8VE+K5EtxWCL6/BshagFHS8YR3xZaGL3NhRr/y/NQIeJh9xYUHw
         0xUYnymAcZTBZrjBn4Cr1bNXoyaDf5SN6FamZwa5hnY6jT7OzIfs4FmHOhtexpu5urJo
         zEAe/1Lo91jLZdU4oDU0biemDFvNDRoFmarF+1WFKTABWs4ov1vkVl8UEqqOVtLZB4dr
         Eh+qiVrxmW8xEFCr0Rg2U/UyDPICXh3hPKqGr0f0wAoX9ldgxtzzwYZuakbrpEvg39oN
         E2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xL44FB5oNgMNr5HNoIov1JcGKHOAhdQb+47Lnk1cBQ8=;
        b=qpem+yYOiFkaxSfKCD59ojhKvpoX/38OWA3LyEsM4rb4i4qjuo5vNQIVfyLQ5WcNdC
         UhYPv+3clL79OFMw935HpodSTKwn2oq/R6JVgplHVLE8HV/x3wJZq+9FvfUGXwx7vz0I
         spvd/2iQn1TaxoMFqrDgALcTrWB4IJfPYVoHpOu/Daly8F4AfSlIvLCgpLeZl/F36Z1+
         bIW0nIroK0DMWJek1Xx0kP/nAMgSItjfrC2Q5ZnhKgYpzVJ298WNKVlir4mRe2wy8yRA
         NGuSSslYoSmFUJHKE9jUdvVcT4Wb9qUkKt6W2SCDz1CkU+G12vuwdqg29VMDE4mYvufM
         Yibg==
X-Gm-Message-State: AMCzsaVvtGBNLSNOo9epyFIOcUMGNVhagPQeXmOVKbM81zuR1Nbekb2F
	fy+2Tm5hGDOFx93w41iKUmM=
X-Google-Smtp-Source: AOwi7QApU/zoIZvM6kfxAS1I0X5XjHwk9cgnSDK1EKJs4N1ViCrPW9rcFumpOQ5P1SeJKplANoGigQ==
X-Received: by 10.84.240.3 with SMTP id y3mr15251321plk.22.1508352601427;
        Wed, 18 Oct 2017 11:50:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id h10sm22466255pgn.73.2017.10.18.11.50.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:01 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 1/7] staging: lustre: drop macro that has no uses
Date: Thu, 19 Oct 2017 00:19:40 +0530
Message-Id: <1508352586-25475-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index a3c0481..3cf0b65 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1303,8 +1303,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


