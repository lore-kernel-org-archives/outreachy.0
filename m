X-GM-THRID: 6667786089217916928
X-Received: by 2002:a63:cf4e:: with SMTP id b14mr16027164pgj.143.1552464928794;
        Wed, 13 Mar 2019 01:15:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls790650plt.7.gmail; Wed, 13
 Mar 2019 01:15:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy+VOOe0Lsy1WRMA+c9pZfsEcEmMHGc8Z0pGlVU4NqvN8fvopgtoTQqH9Dmzl/sHL60lUPP
X-Received: by 2002:a17:902:e28f:: with SMTP id cf15mr13421945plb.36.1552464928116;
        Wed, 13 Mar 2019 01:15:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552464928; cv=none;
        d=google.com; s=arc-20160816;
        b=MX9xMdZxCAXYi55bx4BxbHwkR5slE+Z5n+FlaafM6298mPI+gdjtkgjHuLRxI3wtxF
         PEf+UoQoQV5BK1fDGrJ3i6Gla4eQw9MkbgE1GXdm+ZXdZ+r7T67Cr8domYnkun8FYseX
         JhGbMPNuMDCr8j/ndsaKPFXUZXMH9iJ6XJ/4a1JUsbZLI1Q6CWFuDijRJGkLpc23BQFa
         dgog4FhDVI5kNcrmzd8PHVeGhKOsMg8FAVrPnXntCStyWH3pAGTdY8QodR9u0qgxSB8E
         ak/oVRB5MKMb7T6Hd5Norc7npbz672PPcaIPbS2VR7WRlBg8tDb+OfxLKbKSlpVhnJyY
         TXCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BUQMIyepTZo1IdsmmrUzdqLGUI6Wj07j1+pqFhHMXEE=;
        b=m8Cc6Cnb7WcQ12nVBPcneVFeRl8koojxahnS9pnH05/jkTSPPoF5hJzX3QpcY521bk
         /yvJzajTNr3HoQEe280l+jNgmLCy4NKa9weaHwv6N7w1ar83e+T8cRucxliZ0s6IXtWK
         wHQxUS/821tA4uyXN0VzC1iYnL47A+ZpFUJtW7m047+WV9cr72OulQvDcUQh9b04Xzp3
         SuC7V+54+ylktGcVRYY69LBTbPDs4LdwFYlHspAt3KbnouNsYO6tKYqylwt10489g7Sl
         BTRL6YLzJAhHgMZwhj5amrdSkqObuBjR3IL7uQHvegAaNEHzCoqYnPVkkzPecJnpAa6k
         44iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="quU7/W0L";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c12si657665pfc.2.2019.03.13.01.15.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 01:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="quU7/W0L";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id d25so827800pfn.8
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 01:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BUQMIyepTZo1IdsmmrUzdqLGUI6Wj07j1+pqFhHMXEE=;
        b=quU7/W0LhEKgT1KAlFi+rV18ArRvf8JS6aP2zzRIEwhK8ldLxNiMfoEraQ12M4JLCd
         xmJ+ZqZAhWzZqT0yemfVyOAJVN8DHKmvAw+ifjzdMu1GCFM2XpkS5Qe8pUhznTmWnl/8
         vshvnjugkHpDydOYxfWzuY6Rf8fe7ucGxwMHi+3QA/ThDrXmU3dfaUuI9aM6YQeu9nTY
         e7Nlq8TZBg2NcdqqY9O+3TTyBQVEtQyXiupok6fDgjn0OAtDSS+bXd4OAj/hvY9sY/n4
         oTQZ70uVLNfW0VQdmwgbhI9/IfsMHuxbuyQ2vLDS1NSroR5ThtmDBCHPfD5Z8Dn2vdeZ
         AyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BUQMIyepTZo1IdsmmrUzdqLGUI6Wj07j1+pqFhHMXEE=;
        b=e0zq/nwTOtXyk2u44fsKUPLJUJVS+x4TnvhWMtG1sUHUyv18lo5fjQVfVN/HxAimaC
         Ho2hDRZmuI3dkrCPHPxB2NoTZm6+VNEqqtiEyzgHvUr/tOm3QiwK1tJM30LdILlXJpi1
         SrE8VCCMufbU8wccSAAqQYMqR0AcDfRFii7PYbCOJYh0OQAlJ5WMjMq9JKP9IlbGtmcW
         pBi6zgZUld57XwlcT98/6rqW+SEu6wd7HG4mwhW59piNSuLpLJ1GGJSxBWcnLeUnf/Fa
         KnVKd56xBlx6t8jOV9VvdtFL1OfsncWWRZB4ZS0SD0k3w4tK2u45eSwoQVN7s114DpK2
         CHrw==
X-Gm-Message-State: APjAAAVAHG0mEmVNEtHMAm7DfZwC52L0sw4QyuGrTjUqSjnusphKRouD
	JOpQX9Xif4+Fgt5HdQCiAsg=
X-Received: by 2002:a17:902:4203:: with SMTP id g3mr43444525pld.99.1552464927722;
        Wed, 13 Mar 2019 01:15:27 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e86:dc90:4c0:b2b7:2377:b784])
        by smtp.googlemail.com with ESMTPSA id u26sm15064217pfn.166.2019.03.13.01.15.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Mar 2019 01:15:27 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v6 2/2] staging: fbtft: ternary statement to if statement.
Date: Wed, 13 Mar 2019 13:45:10 +0530
Message-Id: <1552464910-32765-2-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1552464910-32765-1-git-send-email-digholebhagyashri@gmail.com>
References: <1552464910-32765-1-git-send-email-digholebhagyashri@gmail.com>

Convert a ternary statement into a if statement which is detected while
resolving "WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v6:
  - Drop some invalid changes.

Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1306.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..1fb0098 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				if (vmem16[(y * 8 + i) * xres + x])
+					*buf |= 1 << i;
 			buf++;
 		}
 	}
-- 
2.7.4


