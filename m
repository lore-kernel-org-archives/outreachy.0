X-GM-THRID: 6474128496939499520
X-Received: by 10.28.29.8 with SMTP id d8mr503160wmd.27.1507375505374;
        Sat, 07 Oct 2017 04:25:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.14 with SMTP id m14ls259618wmb.11.canary-gmail; Sat, 07
 Oct 2017 04:25:04 -0700 (PDT)
X-Received: by 10.28.215.195 with SMTP id o186mr555843wmg.9.1507375504483;
        Sat, 07 Oct 2017 04:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507375504; cv=none;
        d=google.com; s=arc-20160816;
        b=zD/P9eOZ86r2aatIgeWrthBFBZa4K29P708SXWzQBN7rFs/DcVvJjaDFx8gaZqfT2W
         jM0fzlUixrcSapfagxTwHQS3ngDxdM4LZDFcPf7M2Rd39pN+Q415QVNaCxD2CG0DT4v1
         O8RD7A0q3U8KQQvUx5nN/NbMGgM/5VBLIIQsiQ7bk989+1gdq0Skjtp/jEXWCZ/nuFCy
         gl8p2/c/x3X5pRls6cB4yQfkeH3w4djZpmq+WAtb0sSTQtuFAVDKPpk6rgEG9zhCuEoE
         ayTg7ag7U2W2WW1UF0WKmS8nHs5AVKTivrh75aY3cEeWrc11SgDT+0rbv3tN0oHN/7ez
         sbUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=3MmiIJF6myTOyYIvtN0o9oehZPJDIawZvw04c2ZmOk8=;
        b=0JF7EVzgpDI3RNZH+Iz5n7PeZWhG8Gpg9MxqtZ8/8fDxo/4OFeCagKewqgJsjg7jPO
         qkHgd1wVPjDk9Q8L1F6QXNdPW2n7C4RGlauJBBnAzyOW+FZX+Qqu9lGyjZImuLceqxXr
         Ncq3ZjRIGZ2F0D29GcprPM8N6H3Sk2n9QbowcOZzY/TBO36+2FSv4A8TR+mgeK6UKrI9
         5moLBnlKZVKKdZ6xw6mU/UARhhA3ShW8TBkRW7xsGrKRy/ZgH8yavjnqYkIi500nl2+c
         Vk6BYawk5zEm3HDqrOzg9JrLrUx9IfsGfzNJKWRw68eCnKn9OW0GOaRwF1x5ifcGbBwv
         dvJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T60ksDZo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p200si484919wmg.4.2017.10.07.04.25.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 04:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T60ksDZo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id q124so14007648wmb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 04:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3MmiIJF6myTOyYIvtN0o9oehZPJDIawZvw04c2ZmOk8=;
        b=T60ksDZoABY4vNhXA5RO6wMvJOniCuC6IYO8fqensJNwA9x0H8dGZSNLjNwnlz4vuR
         aOgkGep+3UeN1GR9POV/eQLSUM+XUbuWz7/cMveAOk0T4yEt6vuVlNPiVLC7GgvnQaX0
         FCv4S/c7UErYBmpYMwrPB/b4AAnxS9GWPMtHHXxNw9n8qaXGC8TkUIwB4RuS1d5KOXsg
         3vjqKJvW607AS/hFC/utbjuKoz1rlXqe3PVfUOekRvPD8bshypLupiDjQAuZYjMeyvQc
         wlTarBrI2nkRAJRKMktwKCsNspc84ugtlyljGRQDM+SW6X758SRQvbuVGxMrz3BrC6yE
         xaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3MmiIJF6myTOyYIvtN0o9oehZPJDIawZvw04c2ZmOk8=;
        b=MxjbcZxteeATNwFnBBl5d1RwqO1QlPagxWGDxwfdVLSq46MPD91Q1JsKL2G7+qMqbZ
         Fv+/iXY0A0cObeezMwXcWFklx9LTR0zvzdmzUmdGILcs/f5QhChYYLvqLYqRhymx3yFJ
         1ZyQ2/eJk2869ZuDr+84ifo/1qSg1GtXnm03hXPOPfY2xoi0cBVRjeBlHa6GZI+RLs47
         ar2B6MpPNzvebUk9QUC10Vbn1uI+IgliyW7i7kirs3nGSxb9kZif26/xIRgZrYV2G/Yb
         88lwvNHqCGP+N98U88CBSF7M8eGGlCSQr+0K5YJxY7wOkAv0S/cMMbIF/q0hrSVjQFF3
         POxg==
X-Gm-Message-State: AMCzsaWRuTqG0Zp0M0YFFrpzK/cGaeZCih16aMEjiM8YyqImML+8snLf
	SFmCvdMp4jBoXwL/hUy2RWPHsw==
X-Google-Smtp-Source: AOwi7QAVXm003PQG1whtw42vXmcmKFQ8G1qigB/gomGcsGcKRR2o29uJgW8IH5LZnqSA7uZaaOYm1A==
X-Received: by 10.223.184.15 with SMTP id h15mr5000437wrf.123.1507375504163;
        Sat, 07 Oct 2017 04:25:04 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([2a04:2417:4742:9480:f843:f1dd:ee29:4ddd])
        by smtp.gmail.com with ESMTPSA id l80sm4789620wmb.2.2017.10.07.04.25.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 04:25:03 -0700 (PDT)
Date: Sat, 7 Oct 2017 14:25:02 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192e: Use __func__ instead of function name
Message-ID: <20171007112502.GA4418@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 017fe04..2f1dbfa 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -128,12 +128,12 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
 	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
 	for (i = 0; i < NumTriples; i++) {
 		if (MaxChnlNum >= pTriple->FirstChnl) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
+			netdev_info(dev->dev, "%s: Invalid country IE, skip it........1\n", __func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
 		    pTriple->NumChnls)) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
+			netdev_info(dev->dev, "%s: Invalid country IE, skip it........2\n", __func__);
 			return;
 		}
 
-- 
2.7.4


