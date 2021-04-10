X-GM-THRID: 6949513279876104192
X-Received: by 2002:aca:1302:: with SMTP id e2mr13381567oii.170.1618063153685;
        Sat, 10 Apr 2021 06:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:12f2:: with SMTP id g105ls2956192otg.6.gmail; Sat, 10
 Apr 2021 06:59:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjH6WbMnXKqXFb0YOAXVRlb3JzY/gow+xqOAjWByKf4ZGgaJ3BwVXRhz4rBbQosLrbxbtX
X-Received: by 2002:a05:6830:1d4c:: with SMTP id p12mr16282367oth.96.1618063153062;
        Sat, 10 Apr 2021 06:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618063153; cv=none;
        d=google.com; s=arc-20160816;
        b=U/1qEIZNsEwi2eXEzrP5899+6O1rk5KeqcxTktf9iRlcADJxoT5TezWeQEQQdcRauc
         DGBLeH1SvmNgur31Kz9gSDxL688ksfJ/39WWVHY2VZWfgSlkDHfOlFYPuY0LcKTVgFz3
         pW+sLrZ2YLSBs46y9W6I+fbJKrouVr1XWGxq9ZULq+MRIWtLvu57os6MpPmF03Nlycpn
         U51fUCF1DlqUfQCTqZxnrEp9TlhZ0MJ9l5canG8gKLBa3q5n9u8068RlwLsHxohK4u7N
         e2H6FXKSUSNBouhd+G4/4DrwQkfOpGIcgxUTxpzrGNg/Kb6LenTXcD+RLV8ZzVEx2CUv
         Jl1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=rfTe7qVwJ3j0wr2RCsj+TUrasTd+AoVaaUkJcF+TL78=;
        b=D9QCdTbFgyYRMkKu1W6kb6/nLO9i4ZlmpVmET/86ipqLaEIMqw4FlWTuGwDDTT9pi9
         T9SYqi48VSwek6d+MtjINvdVoymsG7ZL+8VCxs4lv4RkU/duvIMPjE9Igi86BuijUl1f
         eq0nGzK697JdbniiCrTiAeN2YPns86XGiqm1uBFdp+oz3JpW+/y8NcFgc52hVVOAo267
         OedjMMIV2Oug+Q6/2EJlK/8VuP+Rb9Ff9ig06FZGuvZb4phcH0YN4WjA9CQJoKKSzpBK
         iXNEMOyu4tdQKWims9y9eyXBEpnUo5Dqj8z1cTGdb2+ARYAcniF1mBv60rXOW2zhVqQO
         X2JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5Ou9+Oi;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id f10si358974oti.1.2021.04.10.06.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5Ou9+Oi;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x630.google.com with SMTP id p10so4117676pld.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 06:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=rfTe7qVwJ3j0wr2RCsj+TUrasTd+AoVaaUkJcF+TL78=;
        b=h5Ou9+OiaESvdUnOFknMWzm5BZvQjhhLDihQC+Fczy8srhBlFsRJZsXov9/5n+vfUK
         SZN1d3T7LbiSBKZbnhqF3vhZyafvp3qJy0jlpz9/JcqkkPoE3dInG5uX+ippegOzaWyl
         Cn3fqkxA/V9lcmPBqWAr4hsCP3Z/iXWDlWpZ1dEhnKagnLFLW5fQlVZBZL8jqlP1CK+A
         vkiMUxCAXM5UeFq7MMtptKcccmJrXyzD/N9xOqc+S02GF8s0j0zviIaCmXpo01l0S/GG
         uLhbMqJm1jKz9YFx3bvKbQZYAj94FXISxhEXZ5FTSn0rbBbCRVzAXSqCxXPe4kTFMGOv
         aIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=rfTe7qVwJ3j0wr2RCsj+TUrasTd+AoVaaUkJcF+TL78=;
        b=udmYX2kG1HAV8AQV5BKy2cOCKOTVFxRrEw2Q8x0ITzdTXHnhfD4CMgQYSYXvlWr1BQ
         +S67cQcdmAr39XqD05KC/1orNXPRUiiQEaW6orXaMc7NAMTKnBhkJUQ6DcIIItVccgyZ
         CEUy/h+NgirEzXvM9Aa5Hhrhlc+9cIwN8+Zcyo2TL6XnkAER6AASjT0YtH/y0AVLGuAF
         hTC6f2Hi5A1gXYFmRgqKlO2iL4eLGZlAMjAdFAlJMDKHbZwwAjhydo1rWNrC5WG6nHrr
         FAzxFBnHyE8CTOwou5/nWnpwz8eDd29DVoh0zEpvQHpysIA7b4KrFk5Ca1Pcd0LKm4Rk
         VxZQ==
X-Gm-Message-State: AOAM532tYcGgbBUSWiVjc7C1fGBlSVGHC8E9kad7Ssij9l4MNDIGsu2F
	YEEd8iDaB7NcLukQxmASWGdfKX22Uoo3xw==
X-Received: by 2002:a17:90a:7348:: with SMTP id j8mr8072477pjs.155.1618063152360;
        Sat, 10 Apr 2021 06:59:12 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([106.195.15.71])
        by smtp.gmail.com with ESMTPSA id q66sm5519824pja.27.2021.04.10.06.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 06:59:11 -0700 (PDT)
Date: Sat, 10 Apr 2021 19:29:03 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v3] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHGvJxMhQ8nzHf6I@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed pointer error by adding '*' to the function.
Reported by Julia.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v2:- modified patch body but writing commit message
clearly.
Changes from v1:- added pointer to the function.

 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 4457c1acfbf6..78b5b4eaec5f 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 	}
 
 	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
-	if (ppTS)
+	if (*ppTS)
 		return true;
 
 	if (!bAddNewTs) {
-- 
2.30.2


