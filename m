X-GM-THRID: 6807521221589073920
X-Received: by 2002:a7b:cb83:: with SMTP id m3mr5163567wmi.52.1585046759807;
        Tue, 24 Mar 2020 03:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls1617734wmf.2.gmail; Tue, 24
 Mar 2020 03:45:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsuz5nrRztXJb/D4MXN9lrK47VK1Laqk435zisclgK1UHH5uIVKFLTR8mrClEwFWdho4i3d
X-Received: by 2002:a7b:c0d7:: with SMTP id s23mr4874845wmh.104.1585046758267;
        Tue, 24 Mar 2020 03:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585046758; cv=none;
        d=google.com; s=arc-20160816;
        b=qUI2Ga9JYTMB+fVCgIEqQ35BHCP1dF8lUnGxLDtlAux0t6eg/6zYSlRYeMAy8Q65h/
         C0F3K+I2dhUKLNtubBkcBIuME06sbpsqEFlrBrqiY9A9j45TsQ4kQtMhMyELcVUG1q3b
         zztfdoGAlP9R3v6Td6ZpTInPig9Dht/0Rtrtyw1gDQO89w1krC0rSjuaan9LGLu8m+e6
         tgFW6mutt1zDTjA5TUhHaCPvRs9KEU4ftHVgMmCbJ1/DIUixM+ZNRQoWk96mZWRUmv5l
         Ya//qEJZCaJI9ge7BxgmZMrYFHAIf/dPujCNHKB1O3gOVF21PFXVEJHOvGUoQJIxcpqE
         fRiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PQxKBLv/i07x4NvpQHSzv/wlfdrk7BWy5CC9LhnWpTU=;
        b=YK0wMJuUq44oqTM1CBqx5FFJvWyrECLkXlxi+r1ZvzUtcUX0OreKikaw91gAVXbevG
         MW0HnXoVsMrgtGZgKEJBVFEE9bPMfmNN4qnmPYKt39+Q1cdBHenjAzYB7aObWqsAUA6+
         JoUjD8p8ChVkyE56PLTD2zVyMyYZbDWyYIUdXbPasDFrdq7cCEKqtlO8+fxHdK2KNxcZ
         kgEXUf2GaeaSU2O7fIpZKthwNSFWR40AicMA9SjeS/dycD5PvsGINHT9x7226eWnNqHT
         DbvOLR7PqYocfVPJhjY5yhI7AWYX9DnGBq+6CApquSgMvsbLyTWbXCMYZWn8WYmu2T5v
         uguQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDRY4gjX;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v12si995974wrp.5.2020.03.24.03.45.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 03:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDRY4gjX;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id 31so14759836wrs.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 03:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PQxKBLv/i07x4NvpQHSzv/wlfdrk7BWy5CC9LhnWpTU=;
        b=qDRY4gjXY3RUGUqqY/WzPIjCba3HWn0/AGJpb7fLYbjvOz2sTqJXEZPMWjTG73FHK7
         HpyLqCoDsLDP2Kiq8lVzNlnsI9LEYf8zvB1nV3u0JC6jI3300T7Ar5GfYX7Y1cTO+JGJ
         bTLoAQPlkQXcIQ3jQ0uccr5p1quny7fv2w1coLoYpWrBXee1ItisyBwfsFLNUDWgvoZj
         BzGM/Xv8r1ogL+30BVf9tQ9Y7lWOelJwQGwvb5jsMFz1+2YfwC6o+HfMKfWvH2+T8aGi
         5auFJNbLwheTHr3o73Sm7EFoG6pkgAh3gTEaQdNAjzb0bLXORo0vVczUr1rP5MvEQI6s
         oSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PQxKBLv/i07x4NvpQHSzv/wlfdrk7BWy5CC9LhnWpTU=;
        b=pmntOio69F6VJAj5TiUU5WIQc7WlUGA3HNhEDtG0mF1eQ7LIxA5VlJlzBK0tPJ45K/
         H7TW6iCC5PECRhtVGKYMnWSC3tsJYvD8PfW3eyLi198w5qu2CwMexg1AvVn+v59KIOlM
         BxC4Q83xcR6xqMms8tSuR5cXv3GByObaolpm5XO+iDoZ5SY+zDn281+TNZZDFb7ldQP2
         RDgCi0jR4Gl6VVsjY9gzcKf28cSGftPBhvoWOY6cK+L+MkBirWfcnCcWiNg5THgfuSOQ
         EByxerLNKPh9EVez+mSOUjMoh6/P913ysMFDOflLUpVe+OkTl3EHng8+/vlybSwPHfiB
         dO2Q==
X-Gm-Message-State: ANhLgQ2pv+v9BjzoOmTU8H+sNoQOfezNUWC6nTB6S6ZkgOsSorO8Evew
	3FsxJOJnG99A+zYvUcrp0RM=
X-Received: by 2002:adf:a285:: with SMTP id s5mr37524027wra.118.1585046757944;
        Tue, 24 Mar 2020 03:45:57 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id f1sm19009025wrv.37.2020.03.24.03.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 03:45:57 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v3 1/2] Staging: speakup: Use sizeof(*var) in kmalloc().
Date: Tue, 24 Mar 2020 06:45:48 -0400
Message-Id: <19494bdab5709693126e0c0ee14b179a3b601207.1585046066.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585046066.git.jane.pnx9@gmail.com>
References: <cover.1585046066.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modifying struct allocation in kmalloc() to match the
coding standards.

Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
over kmalloc(sizeof(struct spk_ldisc_data)...)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
Changes in v3:
- Adding Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
  tag.

Changes in v2:
- None.

 drivers/staging/speakup/spk_ttyio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 5a9eff08cb96..9b95f77f9265 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -51,7 +51,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 		return -EOPNOTSUPP;
 	speakup_tty = tty;

-	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
+	ldisc_data = kmalloc(sizeof(*ldisc_data), GFP_KERNEL);
 	if (!ldisc_data)
 		return -ENOMEM;

---
2.20.1

