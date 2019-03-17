X-GM-THRID: 6669200248940789760
X-Received: by 2002:a7b:cf0f:: with SMTP id l15mr741223wmg.7.1552822278119;
        Sun, 17 Mar 2019 04:31:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9609:: with SMTP id y9ls873946wmd.0.gmail; Sun, 17 Mar
 2019 04:31:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2M/U1eB1jLBuGgk/dKwT44pIHC2YzkTVGtmWCJrExs3RGppHVDfLzCuPXRdbPDshheq1d
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr477299wme.3.1552822276976;
        Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822276; cv=none;
        d=google.com; s=arc-20160816;
        b=YEtP1Ajyzqn33W3YY98wj4U+d4NkVcBWVuVxbRa0Cs+oO/BTEa9vJAqnLNR44S5228
         BgmFONaR0TGexxTmlD9CT/ejFzNqRHZW0xjqDwHa4xMovdvmvgldVOC1jYSEd2j4rOnV
         g9C55htuck4d5jQI6R5royb6Z8Z0BG8kjstosR2q6dfkhBuVvevFd597B9IAwkVYp+mM
         E/uWz46U+MdC6rlVMkOkEVilwczC0xcJnrfsYavDSptEGWNS+nVVq0eFQBn5ZgVexPhP
         GUrqkUpTahD2WeuqJkTYzzEdfljbWOXfpZCQDfndE6zxXtZbyk+4GM77MLOx5JnyoOYE
         PlyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=grn/VqFGoTND6cVplqOvZQZ4XV1bmP0XG0qozzvIP9o=;
        b=gccgW3btfchuU/L832y5KfNde7KopGjkGCMveLTpV61QqdFbezVfiy/2JIEyseJvzQ
         LZY/DIbHKW/pjQZmjvhHFceBphFruOgC2eooXn/HcX6Zi/kABfIhP8wIXnBiI6dcuuar
         b4da8BBSWX1FKjdHaY+BtGZponGECZD0z7Kmi04ewUipKl5cDtt/MIiUYmj1yfX4Ro4e
         lt+gmWS9oQ4AB/ZM5/QFLgLP/Lpmr2Y13xdbLBoFsZG/unf7MhmeVqpl1xml7/tv/L6L
         NkfYuZ0eNdlsc9FUv8YtEsNC3qI9A1tyWL0tLAC05AusUh0VSWGRQPDVpV5e+adynQS1
         quxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H7Vb/4C+";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id q6si277757wmf.4.2019.03.17.04.31.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H7Vb/4C+";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id y15so13958849wro.4
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=grn/VqFGoTND6cVplqOvZQZ4XV1bmP0XG0qozzvIP9o=;
        b=H7Vb/4C+kJvauzYDg/5PvGHzNCYzWrUPa5CmLP4p0iRYiZMfjrS7RrElIGAMG35zMx
         7nSOKrnOdaFdY2QSKCREOpCb9BZTKIIvzngb35862f8/ficYJnRhlBcwTTmmtWk9Bo4M
         EsdReFZkZpqNh56njCtmTWdp7/O0RYK5KASn3obhZS4v6MxW1g+k2m3i2UZ/zFA90WoO
         nPRYkrI4cpV+3NladV4XhEnTubKYxq4E1IKB4FIRjmtEfVAoz16NvGa6S/c5ln9wFKBE
         HdAvsyDoVZBi+QbOCJIJlE4R9VoFObqrh/l9S40tvJeNToHgqbwCzVXIpSMk3ctaEbfU
         n1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=grn/VqFGoTND6cVplqOvZQZ4XV1bmP0XG0qozzvIP9o=;
        b=UWZckGa5aZJMwE48P0lD6e3Qw0SNxBmjLv/j1nvRMRsBOqJc798vRxLqDhGQRNL7Ea
         HIZ1t6zTdwnx+RsI7GcvsC2ePZu/4CVr3EK7zDGTlMl6u+wcFpeNcuLZPPOftWKk/0/9
         /YRwz1yckv1HNxaWvc2oynQynB3QBu7PeWqi51FUS/Cy9x5NbozemCUaCRP99CDAlx0P
         vVQcRWP4amKR6B0vkF4LbBx4GjNyRNB1LWVubBtNlLsNLWAEQn8PZMsc2ZtaNOPtuk18
         afZWr2UsU/fNQMm3DumPBkxQPhyDdVAumhTLKcKBLSnGuKyr3pNX4FZFVQB+QwV1p4Ch
         MtQQ==
X-Gm-Message-State: APjAAAVfohrkD9BGfwxPJwQgCjD+VjPFGiVGpXZGDZQC83ldCr1qLYLi
	uviqJruOeiDp4h91k7Bwyfg/D4Q=
X-Received: by 2002:adf:e442:: with SMTP id t2mr8401169wrm.256.1552822276637;
        Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id z10sm5073162wml.39.2019.03.17.04.31.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: speakup: fix line over 80 characters.
Date: Sun, 17 Mar 2019 11:28:56 +0000
Message-Id: <20190317112857.18220-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix coding style issues, which solves checkpatch.pl warning:
    "WARNING: line over 80 characters".
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 11c704b27c3c..53c8793c382f 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+		/* Do not replace with kstrtoul: temp need to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 		if (index > 255) {
 			rejected++;
-- 
2.20.1


