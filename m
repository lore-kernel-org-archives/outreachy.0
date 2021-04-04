X-GM-THRID: 6947173308910534656
X-Received: by 2002:a25:2c04:: with SMTP id s4mr420279ybs.351.1617514833209;
        Sat, 03 Apr 2021 22:40:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:dc8a:: with SMTP id y132ls6062979ybe.6.gmail; Sat, 03
 Apr 2021 22:40:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7a1bIK07VKMjXmHOX5hxdXkVvOg/7DYpBgt+8MRkKjRN2/HBFReVdsLhv7umkCotI5uX1
X-Received: by 2002:a25:850a:: with SMTP id w10mr28029435ybk.402.1617514832205;
        Sat, 03 Apr 2021 22:40:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617514832; cv=none;
        d=google.com; s=arc-20160816;
        b=txZJCzFnKb/PDZCqVaqdtQQhQ9SAWtoJY6SnPdnUQQBAKOYbvkDMBQgDGJH/jBIqFc
         83PR5GtTXd6pLmEVNrxtEejsb7QPAFTcTB+gWtDBjQPStdMSCxvbKnAF4V/5lScDaLQ5
         bQ91wnqCTnqKEsl5cvMdix/iZGEtpI5R9aWKth1VkgFtBkC6IPfhb5Izb6aC4AfhP/+d
         8Vn87nhKdPgPE6Zic4ZmPl2dmzqzJpTNL+MOF9AepX0jEiiLjBwIoGTKb+kt6u3537Zw
         hfB8EyyvEaAjqpzX5o9/1qoAGUFBsqVZoLLM37wcCb1xVVbA1dIZ1HKaUlRZA6Iizf1l
         9hbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KxyeeXYM+0996CFKfGwExxixHCD5JVGi5ipPAcYMkSg=;
        b=nvDJd0nl64DKrokJWLDRiLtnjMXBL6kRI3ikAKk1IlU6h6i3oIbROj3O5XyGIh+Ltg
         cOHznP2pdeHjtH+vb4moYJydgevP4trUJvFCagWFlGxnQJ7ZQxxa8TuRngU5sLrhbqX8
         /0himvpGN2j6psNCTWYc49zfLY8nhzOFpfSXLyTavOrz0HvYIzD5A7wpKJY41NNqNAFX
         8KczofYPoAn7W9WhP7b80SO285gUS9Lfy9VgsGm3v1DTErvsJ/cyv3E0/WPP8VQWLGR9
         Nle946AxkDlkCiT8OUvIc4PhI6jzeRi2YqHefO2P5vVBh5vtAsdBj4UJe6d46XoLmlp3
         0HNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Njl5EIu1;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id w15si115331ybt.3.2021.04.03.22.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 22:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Njl5EIu1;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id a6so912801pls.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 22:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KxyeeXYM+0996CFKfGwExxixHCD5JVGi5ipPAcYMkSg=;
        b=Njl5EIu18L7UlpKpxbxVVOfMtbUa6XdKE32KhTWr8XmZeibmo+CqL73CX0Ka7pzrDU
         bhLaJ4YXoBFtqzuhFMwxgVShCIsXdn0Jj62uKWLrZitzhfRA/RKwvQFjf8BMKBupU5GV
         BIq1Izg3MhnDwt1vq01sLkGhKxuKI9p2rbIrWN7aSlOjgtmdvVfeNPlzuObtNqeGXWzF
         z2ijBHognMmIVt3iRVzKLxxCrzpZXm42a32+mNlOWACUpHey/f/IVTFhAY1ZNtehyd2B
         iunxT7L/KeLfyj85rvvZLkX6LRVdRm/6b2EGJJhT0VyBF0kuXmGDAmQB75egoNGAF+0H
         RFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KxyeeXYM+0996CFKfGwExxixHCD5JVGi5ipPAcYMkSg=;
        b=K1vNsSK6sSuZVBUwQ+f+xREw0irgzGIR9z2tUkJc6yT5sxZ89GxztV8170XS++AQA7
         5ZPq1fr6DN4KN9h5IDF5qNcA9ZnsjIb2B4CMKHDKWAleB++933jt26EuwaPWNcwVw3Wn
         ofYcveVVXF/cwLK02064WTZzKxWuk9Qq3otoCV/77tHaZrNbXWOKr1RFPbPZUvlYAy1q
         VB0yA4VDS2R5yQxooLb9azk0Szx4ozDq/4iG8oqddlF4sKBCAhTJucN5EnfR2K3fQp1P
         jw7iUjIyhJNY3DmBIq2azlEvuCcJu35ilaJCm/isZyO8wZHCzXJqxOLeBFqml4pdC00y
         QnKQ==
X-Gm-Message-State: AOAM532zVkMOSRY/CcpCaXFZ2xis1PaUtStEEAu8xPDtryGp2zStQDRq
	WA6DVWyBb/KN0daqR7zc2Wg=
X-Received: by 2002:a17:902:8218:b029:e6:190e:48e with SMTP id x24-20020a1709028218b02900e6190e048emr19130071pln.33.1617514831530;
        Sat, 03 Apr 2021 22:40:31 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id y7sm11759877pja.25.2021.04.03.22.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 22:40:31 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	straube.linux@gmail.com,
	unixbhaskar@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH] staging: rtl8188eu: replace goto with direct return
Date: Sat,  3 Apr 2021 22:40:08 -0700
Message-Id: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

To conform with Linux kernel coding style, replace goto statement that
does no cleanup with a direct return.  To preserve meaning, copy comments
from the original goto statement to the return statement.  Identified by
the checkpatch warning: WARNING: void function return statements are not
generally useful.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 391c59490718..d21f21857c20 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -139,7 +139,9 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
 	hw_init_completed = Adapter->hw_init_completed;
 
 	if (!hw_init_completed)
-		goto skip_dm;
+		/*  Check GPIO to determine current RF on/off and Pbc status. */
+		/*  Check Hardware Radio ON/OFF or not */
+		return;
 
 	/* ODM */
 	pmlmepriv = &Adapter->mlmepriv;
@@ -156,10 +158,8 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
 
 	Adapter->HalData->odmpriv.bLinked = bLinked;
 	ODM_DMWatchdog(&Adapter->HalData->odmpriv);
-skip_dm:
 	/*  Check GPIO to determine current RF on/off and Pbc status. */
 	/*  Check Hardware Radio ON/OFF or not */
-	return;
 }
 
 void rtw_hal_dm_init(struct adapter *Adapter)
-- 
2.17.1


