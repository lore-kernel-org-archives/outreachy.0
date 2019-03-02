X-GM-THRID: 6663442013681090560
X-Received: by 2002:a1c:4e0c:: with SMTP id g12mr610381wmh.9.1551516005507;
        Sat, 02 Mar 2019 00:40:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ca1a:: with SMTP id a26ls1395314wmg.8.gmail; Sat, 02 Mar
 2019 00:40:04 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ6Whn+T/qEidb41EN0h/RmSZR6CPbpfi6AhEBz848H8r7hz/U9uq52TaY3vC1yGtEqWoBo
X-Received: by 2002:a1c:2545:: with SMTP id l66mr584906wml.14.1551516004664;
        Sat, 02 Mar 2019 00:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551516004; cv=none;
        d=google.com; s=arc-20160816;
        b=ISflL3vmYt3T2FD0t1nzmSk212onbe0c1z5x48R+W1CNinn0kRX9d+MkWKKx1Smnm1
         dA7vmRp/B+MP+waAsy0PGM0Y4RNKTl36+FjvAQslVkEScNEOPT8kExdAB37n3mKZorab
         gOEOjGTjx7gwylkRvYhuusiHiBuk0LBpSq6mD5ZHHNHlXTnaI45pXKYYk+0n3L+PRe2Z
         ego96er9EcNsqXBbkuIVirjCEbo8ep66cesG5puo/BPQhxAkAUkcckJMFobm2gwa5Lcd
         JzzQFWwCYGI/TZiEGIOqCVVYEFEJUBrg/XIGbStdxQFqIXK5z7muGbni4okcykzUg69x
         B7TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mi4FCF2wG/R2ZuR8ItroKye1nrerC1w4+6DfyZ3ca0Y=;
        b=xdo1g14CWBCeHaGV0y+mD93rqi5I1y1nAF4nn8YcZFTHb8XOizrZA5rcZ3OC7TN6eP
         wdY7YPiUVE1pPBQHi8KgRcbHmA88rzEO58FfgO/zVSho8UU4O8hBlCJMgbp9SW8QLcSo
         IA6uyNGx8wV32ZyMPpjY6/Kl33jZ7XC/6SfbK+eazZRIeHmiHfUQ59jfLZ2/wl9phyAz
         uXu5NV8qld8jObQkxWEJjLBKLO4Z/TOZW41iarmv2fdecr0ln8fvLZ6oUm9vn4Y16HgA
         YruS8QaOoxrg3aApkT416e2sUeWIvIL6gR5B+8xC5dXYW4yFafcrqnr33Wj+Hd6ptHqb
         v4Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPgzniU0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id b134si36151wmd.2.2019.03.02.00.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 00:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPgzniU0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id q1so254723wrp.7
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 00:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mi4FCF2wG/R2ZuR8ItroKye1nrerC1w4+6DfyZ3ca0Y=;
        b=tPgzniU0Ycz6dtQT4cH2eWj8kZfuopIZUw4YoZNS/O7BEhrjsc2TqyKBdJ+av4Y9IC
         +gUuzBcF+7MgQMcgIU2o8jiL1rkV/P2pHkUXH4V5KwSBO+g/Lf36twHyNOgK93us0o8W
         O3GcGopIwWsJO0iC/W9aY6Gfn/D0TjE5xYDpDYK99Wn3UuUuap8yvFLMBAyuH0/SDNpX
         qJJri/Z6TYClfg12RuugQAUCOEqfR/JeTp7Jrjs4UUjskTKGcE1FpwFh2bLsjwH2cUDw
         7SoOuj1pkZ1mG8NRoyUW2LXO2yYOEOFueCxD5//ZvOk+22t9MOmMYMSXa/ME3mOm0+7d
         aa8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mi4FCF2wG/R2ZuR8ItroKye1nrerC1w4+6DfyZ3ca0Y=;
        b=e3n1Xq8JStqIjCh3Fge59UfOq/psAFbD+VU8GJUu6p+Jx3DNJMwmKRia220408ZUIo
         58PndxZNj3pU3I1J6ffkpZ3CZYWkgqFqP0My6lWA84yLwaQtEwcsg7AS57/EpM84MEDE
         mRnx1x/gE54w8Pr5sFTZy5hXdxh6BmZC1AuJuM3/1ZFooYj9YA3KMjZvvgoLebn2q1G8
         euhumh0IFllFXBWutafbxDTIlgstkzGnGz2Lkoqypg//zP0O7ZZrwGQ1R2jvqoPq6JjR
         +gBDrgIfSgGEIEMEuPXMncfnNE9edBTBHbvRu+0VPe0yX5szxShdZpubgSJEUnZRCpMF
         Mx3A==
X-Gm-Message-State: APjAAAXyRXJxatOtjp9bUTDgNsOs4VnmadH0oyENaffnc2N2ge/jSDxU
	qb3PywscLTulSl5sLUbHWKHVmVU=
X-Received: by 2002:adf:9dc4:: with SMTP id q4mr6443546wre.330.1551516004182;
        Sat, 02 Mar 2019 00:40:04 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a8sm1176332wmh.26.2019.03.02.00.40.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 00:40:03 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: mt7621-dma: SPDX license cleanups
Date: Sat,  2 Mar 2019 08:32:38 +0000
Message-Id: <20190302083240.23894-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 This v2 series made commit message more clear, corrected grammar in code comment
 and added punctuation.

Jules Irenge (2):
  staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
  staging: mt7621-dma: remove license boilerplate text

 drivers/staging/mt7621-dma/mtk-hsdma.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

-- 
2.20.1


