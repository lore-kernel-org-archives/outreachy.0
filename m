X-GM-THRID: 6661416853760376832
X-Received: by 2002:a6b:6603:: with SMTP id a3mr9629244ioc.11.1551117761168;
        Mon, 25 Feb 2019 10:02:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls2870020jaj.2.gmail; Mon, 25 Feb
 2019 10:02:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaYRQc29HmG8xrMttQ820UvFK0iZGyscMnuV2ZVo+vJ4hsrGe01obbJOiWYgCAkzaXwE3J8
X-Received: by 2002:a02:9b1c:: with SMTP id o28mr8384176jak.10.1551117760236;
        Mon, 25 Feb 2019 10:02:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551117760; cv=none;
        d=google.com; s=arc-20160816;
        b=J/HoZB9MP33GQjsBx37yp55zUFnVsw8GkJ36Frdy06ePtnEpbZ27F5lFwT5fZfQVAp
         pYRE83HzdfzmWHitbEtl8wX0I7KEF7Gg8Ei1t3qYUe6mrgxjLWwMz2qA8jDBkHwA8bif
         iEGPcXuMTm6rIYw2/wELQhWm7XmZb0V9B+VucFjfQZj3cd53f0Xs6SnGE/p9P8cvpvbH
         GslfVHQt8LDMhB5K9BE9PmXJQjcaXf7bMwftJKar1rPVE9wZ3xGvihb2lf/xQfzMQcIO
         +n8SkZAKlGHnwaeBRqHOYNQQOCs9ecc5gfoS+kFZFg3U7jRVA01gfV0gzPvYeciXndrU
         foEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WxuT/WHA0Ao9BzmlVFYEx9ODNaT5MfEBUf3twDScDdc=;
        b=Aiw+0k0p6EpPo5Xt9WYAqptGMOUwtbZJUnRt4t1bhXWEIaZHkYBdKev2X5gxY6X9cS
         KbBc+9gRzGuFwi7JIKYBK+4LI4XaELA3Y24url+DqaUgoLyl7oTZdlLClM9b4eFN7nSe
         zJ2TQY88/0JlU6CeV5SM3OYc7+qOLXnIjq0IVARMXXsuPF+pfw3dDw/0B2ZjSubOtbaC
         pA80BX+A+zY3P8PXMyWvmp2AN+owFVUUoRCy0k6WU/AbIWGeZ05cbQaVvUdHTxCQxQOa
         OKWA0UWmRJCWOzgQj9BzNbWXpEY7vN6o4XWkaHTH4CdxMzjoeM5SjlWSXVsbrnM5THxx
         K3CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYlaxSGT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id j6si603559itb.0.2019.02.25.10.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 10:02:40 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYlaxSGT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id u128so8031343oie.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 10:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WxuT/WHA0Ao9BzmlVFYEx9ODNaT5MfEBUf3twDScDdc=;
        b=XYlaxSGTwuEPjIkfIsCHJVl081IqlIUd8XsUxv2PlGfAFbDKo3ONc2J5zIOxr5+41H
         M1oLHsZEUF6ttO+81ijyvDX3CIdK8YucimCfqLMRgMKYHmkSf3TAZWMHgJSSO53O2YgP
         cAWZ6/8f/9Dc4hmeDj6iCdnfqRzwCesMZ0mOdJug04bX7/PfMLpQU+vJ664JJOtkzSKK
         hq2PhXONCBJhYCDopeK+r0zow13aR766N8FEXaWwYFhXSCEwwfMNc3uv1GjZz9a1CUcE
         52ON6Me0SH4gigq5/kRf25TxvIMtT+m85ZO/d6bEBgrRUneIAxBwXi684M0ToWaAcmmQ
         2KjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WxuT/WHA0Ao9BzmlVFYEx9ODNaT5MfEBUf3twDScDdc=;
        b=OcVgU9ZvpaBlvBYXKxuaGpK8qGADJFvayozzGCACOQh102ADkqzY2/oUP0biB6D6Up
         zC8lOhhbqQiCXgR5E7bGdlDhIhH+Vq6tQPNKhSm1BS6Di2ZG4g33y/tTvxfn1eTN2H/i
         Sy2xROSQBU2r4BemM1H6ivD4kAje7QpTk9mdYmmsVu9xVYrs9N5uJh8m+kGkgnaorEpe
         2rANVlE8+K10UWJBF0+750YSx14WVC5rRVxxIMqaCrJZUPVX7qvmapiem7np7VDqUF/5
         SGTVE7JrH75jHwwm6cXK0c4jeKGdlVDl/Ev61psYRhSzYawmNngEfA70wHJo0/FBoQBV
         MAjQ==
X-Gm-Message-State: AHQUAuaB0jP7hTce/3GZgqRMXnQtKMuajW239Sw/4v9iqzrgMRyZd6Kz
	yybMVLdDEAQ0sI/U+mMORC0=
X-Received: by 2002:aca:e1c2:: with SMTP id y185mr12181875oig.3.1551117759671;
        Mon, 25 Feb 2019 10:02:39 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w17sm4628023otk.12.2019.02.25.10.02.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 10:02:38 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix check - Lines should not end with a '('
Date: Mon, 25 Feb 2019 12:02:35 -0600
Message-Id: <20190225180235.14346-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Improve readibility

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 5dedc7aad384..6042f0bcd3f8 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -62,12 +62,11 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
 
 static
 void
-s_vCalculateOFDMRParameter(
-	unsigned char byRate,
-	u8 bb_type,
-	unsigned char *pbyTxRate,
-	unsigned char *pbyRsvTime
-);
+s_vCalculateOFDMRParameter
+	(unsigned char byRate,
+	 u8 bb_type,
+	 unsigned char *pbyTxRate,
+	 unsigned char *pbyRsvTime);
 
 /*---------------------  Export Functions  --------------------------*/
 
-- 
2.17.1


