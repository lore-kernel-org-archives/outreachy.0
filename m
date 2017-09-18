X-GM-THRID: 6467232921524633600
X-Received: by 10.28.12.21 with SMTP id 21mr1019646wmm.8.1505770003124;
        Mon, 18 Sep 2017 14:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.178.75 with SMTP id b72ls1764953wmf.27.canary-gmail; Mon,
 18 Sep 2017 14:26:42 -0700 (PDT)
X-Received: by 10.28.31.5 with SMTP id f5mr1162709wmf.4.1505770002159;
        Mon, 18 Sep 2017 14:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505770002; cv=none;
        d=google.com; s=arc-20160816;
        b=UfDxkhSfQLauzNjOGq9KFh14Lu8wSC5N5+SnxdBdqXWsI6furMQtTLugRS0VYm3kJR
         jkxW/+R7YGlpW9S2LzT5DORFiQfTst7+kbCIWMZQoSPjqA/TIJ34IzaDw+L68+u+1udu
         /eL5TilqmoW7S2qnPBtDQwpn73EKrJPpXz3H7kEodyhCxuttwja2dnNKzschRYE13+FY
         9JrBlbcWQX3Ah4TN73DJmJDQpMOMRu+awOL4Zc13Tt+tPX6Ze5DYKtWa6DY0E8PMkCj4
         xQmag3SIgFRLeoPEdkX7CFJ4vc16pbKCeyg5OSxJCLSnwnoCLAC/TeYqAkUelXjmO45j
         cAMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=DO+1LABeaRqasUlz6A2j547BVnYEyb8i9P0aeHJ6Jgs=;
        b=EMTPolno4mAtDG3pMV8E4yAoJ6EQFIONIpGdziPDiu2JTYB1BkuR+wrBw1xeJ8nHms
         pmzrsZeyZIl66cZk5pi/XVF1KkeQ47nF13ngh/9RwZ8StKCyJJlcJoc6A2wTZaRg49hB
         dv0aSvWNppbeQKN3Y+f2M1tylxTsHIRga0t38A9ZMlNeeEaTA0RqlwqsAQOQxUNH6Yo4
         dWfXxaH9NbXV6u2hL+Wx6whJAXlUeZpICMaDTnqH0X+dGB290PU6amSvfPWgXlLn2DaK
         I7hqBIQ074MXSmnj2AYpIcgDDChgqwMTCZods7Wru6C1UYujFMr57zYpG3SheF+4pzdg
         asWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4dc8a1Q;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id p70si10168wma.1.2017.09.18.14.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 14:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4dc8a1Q;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id n64so1124707wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 14:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DO+1LABeaRqasUlz6A2j547BVnYEyb8i9P0aeHJ6Jgs=;
        b=H4dc8a1Qcr8EFLkRdzmcFaIExl0OiKsVGcaZOXoHV9t/vs1D1CXQRbxsu0gbFMQR7D
         u0yXEzYz/sqrVen8DcEVKCkv95j4TJEhJQe9FVERRIBygYKIAggEKNZz1q9EAQR+HkaR
         aZIU0+cfzZyGGM1aG8o/71g97+qL7jGFbRRgnSspu9RNK/Zy3rHmQEi+/4gQJjOCnaj5
         48wePFLlYFUVap1yS8kPoyaGa7opgILYSJPc8B9e6InjPIUBpUhGIqzlDf8bjLn7Ig7n
         u48yjsDbAd7rOi298o/b6/Lt4/mflzr/XmDhZOoPA+Bv+Qsn7E28Bdb3etmLyij2U2QL
         JO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DO+1LABeaRqasUlz6A2j547BVnYEyb8i9P0aeHJ6Jgs=;
        b=o41Zq4Z8w+3frLU5UGGxXcLHzz/givePieHundJSTZoFAxpM1sC16ldFy7EGEcxgez
         +euYe3ZtiyCbjHdzgpIIKzxp9U2yyKQVhMH4G4EtHy+u15mdF9FyfCrB7TWIS5o50DqK
         lvVd4AiEEfkhenwoyq4svyHO/6R5BMu8I/wJx2YVAnAFybgKIxldNUnUcdSV6Nrm/J7D
         VfmU7o+J2/ajmguK6UVJZJzEPi5ICfNsKhsFZPipl1I9OjHmNjbFdgU+FZ5rXfMKq+Xr
         fPkyss5r8E4OkRT0K3/G8x20tZWuVHcGS8RoI3u/alGg6aBclZE1Hp4sWOQtmvJRBFyQ
         iS4A==
X-Gm-Message-State: AHPjjUiwEhaeekNhLdK/oFlIzyBsOnyVK6j3+6nqahwgxblHbApgnH5k
	EoH60X4ma+Wcs5EA1Zo=
X-Google-Smtp-Source: ADKCNb7MGFPreRQg5jw7nsChEoIL9gC8BL4d+bxrcSeO47J4dlqORjvOmvYGalHPLg4PZgOghn+RNw==
X-Received: by 10.223.177.211 with SMTP id r19mr31014017wra.2.1505770001926;
        Mon, 18 Sep 2017 14:26:41 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id m128sm1256798wmf.0.2017.09.18.14.26.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Sep 2017 14:26:41 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Tue, 19 Sep 2017 00:26:40 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: Check sscanf return value
Message-ID: <20170918212640.inn4in2kwsn2pzvr@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Check the sscanf return value and handle it.

Issue found by checkpatch.pl.
WARNING: unchecked sscanf return value

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 6a8f805c0b28..18aa4011a576 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2355,7 +2355,11 @@ static int rtw_wx_read32(struct net_device *dev,
 
 	bytes = 0;
 	addr = 0;
-	sscanf(ptmp, "%d,%x", &bytes, &addr);
+	ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
+	if (ret != 1) {
+		ret = -EINVAL;
+		goto exit;
+	}
 
 	switch (bytes) {
 		case 1:
@@ -2392,12 +2396,15 @@ static int rtw_wx_write32(struct net_device *dev,
 	u32 addr;
 	u32 data32;
 	u32 bytes;
+	int ret;
 
 
 	bytes = 0;
 	addr = 0;
 	data32 = 0;
-	sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
+	ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
+	if (ret != 1)
+		return -EINVAL;
 
 	switch (bytes) {
 		case 1:
-- 
2.11.0


