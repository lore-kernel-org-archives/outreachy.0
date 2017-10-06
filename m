X-GM-THRID: 6473929698142322688
X-Received: by 10.98.54.68 with SMTP id d65mr236897pfa.3.1507329218472;
        Fri, 06 Oct 2017 15:33:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.210.203 with SMTP id a69ls19844pli.1.gmail; Fri, 06 Oct
 2017 15:33:37 -0700 (PDT)
X-Received: by 10.99.126.90 with SMTP id o26mr378924pgn.154.1507329217578;
        Fri, 06 Oct 2017 15:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507329217; cv=none;
        d=google.com; s=arc-20160816;
        b=x6h/VsKXiqWkcfAZNSfZ3Vnjdiubdm1nBdCx1cfoPCzjRYvtmZ7UpAH8htCHbYDThA
         6HxwUCfYgf3Dsb5wwpLLCNFal7wvKiLCRJOTBBgsEnuLK9MIE8Kp46I2oMpD7gGbqOB2
         Cw+lDUQwMqyYsNOhg7oZNCASqMK+KlEGSFWG/uq86/47dq4YFWNoyeHIg1CVHucEij8M
         qhYA4w3F3ns1uXCIbPDP8d04IK5r7qrwh7ne+cjvXiQ2Pw5a4PwP6dpdhWNJW+jK9yIF
         AvFJWRnTPy5T3TRrcAI14vn/GNODz13U3cBNfDJMtQEqNVE+6NBYDeUugaLKoi1VWjcp
         ucFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=LQRA7JUiAkKg02q15Vyy0C938bHgtT72BgZsqpmpXIE=;
        b=jsKEYyCHBFO+UwhK64RI94F3LaI4+8IxcwMZI698KN/LkzVn9c9OnGAX4FfxsqOgye
         UXBzPRIRn54Tvlq7lGJCSNoe2020UuRoydDtNOOSpgllELPszLSzAhFYXYuVya3bUTR+
         oM/t1QlL2xv5UopkmeGQa0eig9hH7ZPHq4h9wWqCCefNhD+aVlyD7Yc3dSmi8gshjMri
         uAdRl91l4dmjRlFIEUdaf5taifWi4XR1WkgiN59PN1QBoXIPMbTJQJXm3rrd7Le/X/qp
         ZCvIrvi0+8NlBV5ZahzmLEx79SPfR0Bxd2W5OURUPWDA2bXk8+nT8Ubyc4pFVobVTXW7
         4LEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNjnH3JV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e80si281939pfb.8.2017.10.06.15.33.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNjnH3JV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z11so385916pfk.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 15:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LQRA7JUiAkKg02q15Vyy0C938bHgtT72BgZsqpmpXIE=;
        b=nNjnH3JVI5O7nLpF8FXtT2qfeXh16wpPeq3L1D1PHLd/NP255Vpns73jJXi/olmPul
         ADxVeg1F/k8m2oWh1uWQCw9BvO+vpJJAV1eAC3VDH7uFMwGwNZe8rESA2h0Q1KGD1byC
         o3k6OJgcYe7K0Ge4Aj3W/BCbvyDxNa5gXrDsWxTcomFE1JH75kQZu9uVy8xAbV/PtYSg
         CRr/yvtyXGZ1UYwbPYsn8jLFYaVcsL8Km0c22pT45rXh4p1tLtjZysBzN1GXGQnRGvCd
         BVKJPOoTKyszGTEqco6+6fH14TUJYCyvHNfJWK/riimjEQQRdATLC10GUbAQFndRaset
         Jlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LQRA7JUiAkKg02q15Vyy0C938bHgtT72BgZsqpmpXIE=;
        b=YvvH2VcraVF/5YMdwDKWPguB/QhbUiUhv4Xy60Ynti+dZSXvxehTSQL2OkYpMmS1wS
         ZM/3+VLK5TgvYW9R7vMTaKjnDUfK0SxyS86kFR7miECzdawM4Uov89RqxyqetiPx1wEU
         MkgOjN18pE/3sdaw4N4Psd9nGfjhZKyItXWbFtTMlNyWRQMMgBdnQKPUNtwCrVUEA9tR
         zSahryQShrFD3I6Q2WIi0b4KTaX8EijxESN1PlWph86zXwKELnLHBOk+dQw/jhB8fMPX
         KB71vbyU5uX4wKwaQM/l0jNhRwwOgp1m6R2fi2bIyEFeW325CJoJhBiJUforYVVg8lrj
         YzhA==
X-Gm-Message-State: AMCzsaXvTdxGUHXLas2RrqeMy191dreNGuO9P66JHvtDITlG4Cr9S1qV
	zQsUC+GDxP3UM2XwaM265yA=
X-Google-Smtp-Source: AOwi7QD6TzduTCiWd4L4mgEZXp7dvIK/nb4PC5PepFyYKNvjJhq4IWuhNJGx9Ju1tXeiakmxAH7xGw==
X-Received: by 10.98.212.76 with SMTP id u12mr330065pfl.118.1507329217351;
        Fri, 06 Oct 2017 15:33:37 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id y7sm4621134pfy.35.2017.10.06.15.33.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:33:36 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] src: Merge assignment with return
Date: Sat,  7 Oct 2017 04:00:33 +0530
Message-Id: <20171006223033.664-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Merge assignment with return statement to directly return the value.
Done using following coccinelle semantic patch

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/mini-gmp.c  | 3 +--
 src/statement.c | 5 +----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/src/mini-gmp.c b/src/mini-gmp.c
index acbe1be..0579c46 100644
--- a/src/mini-gmp.c
+++ b/src/mini-gmp.c
@@ -1297,8 +1297,7 @@ mpn_set_str_bits (mp_ptr rp, const unsigned char *sp, size_t sn,
 	    }
 	}
     }
-  rn = mpn_normalized_size (rp, rn);
-  return rn;
+  return mpn_normalized_size(rp, rn);
 }

 static mp_size_t
diff --git a/src/statement.c b/src/statement.c
index 6166863..168f944 100644
--- a/src/statement.c
+++ b/src/statement.c
@@ -208,10 +208,7 @@ static const struct stmt_ops objref_stmt_ops = {

 struct stmt *objref_stmt_alloc(const struct location *loc)
 {
-	struct stmt *stmt;
-
-	stmt = stmt_alloc(loc, &objref_stmt_ops);
-	return stmt;
+	return stmt_alloc(loc, &objref_stmt_ops);
 }

 static const char *syslog_level[LOG_DEBUG + 1] = {
--
2.11.0


