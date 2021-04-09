X-GM-THRID: 6949308630417014784
X-Received: by 2002:ab0:20a3:: with SMTP id y3mr847795ual.49.1618012001487;
        Fri, 09 Apr 2021 16:46:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6f05:: with SMTP id r5ls1061703uah.9.gmail; Fri, 09 Apr
 2021 16:46:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2Gykj+1JvDKi31Pa1vZfOFcfPmKVfLS1g1BXit4GGUI1v7cOFwm/FPo8LozaCn8aalxSh
X-Received: by 2002:ab0:458e:: with SMTP id u14mr5594010uau.40.1618012000661;
        Fri, 09 Apr 2021 16:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618012000; cv=none;
        d=google.com; s=arc-20160816;
        b=nk3txN0jidm2M6p/PvThLozzlg5QBlE0HmZrKq38pjXoaHD6oYQWiVf4tbUnHx3FHo
         wYxbGCLSGMHmDj7N9tYwxhIanXihG2ZDj3FhYZDKFbOO8FAZpELvqACjiAFI3TdUMrx0
         DdvOZNBv4qJDosvWcQ1kj5t/jxrHsBp/QfrKCNyoD8fM2nCiGujZsNwcQi3eqU8N3Sdp
         PHZsIxfbGBljLwcxL17w/4rwUZ1MIUMwCumMZYCxV8oCNtostLR/AN1LWEjaCoBCf/og
         +/L+CPJp36RJm8nc62/VdAWyH28PuOd2YwuP3YoOP5newYteZqiplwnFaOk1JZWL7rDr
         2qZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=SVHlr9PFsAmGK4+X1iTgg6ZdMx+ehnrMFUWQE+qDW68=;
        b=hJ/+e9DMw6vAfCghHe51xXYO0JRyzcPqYjAIlsGMXNkWR3NgmvR36Nko8NN2VjqUAE
         YB154jjkf14ZbT4WGfZqkwhGJ36kHJFO4habMjQKq0AYbvoW7kXdyfkE2znYmH0QunqB
         SWIHf/3yraiGFpw/9D8ETMBrH37JhuSMHFGfR4EUdT8AkNdSiFEFRwMlGIqVwfNtE4C/
         GwC/Cr4qJ9au0iNqo/TyiA0ntet3+sMjNcHEn78FjK8aYmaFqBmsQRGkhrTSDAY0bTTq
         PrIjq5MBRSDiOfZ4u0YkvRHlf9XzpUi03QGy0RCoXd9vMn4EQnZ1WpbLpqXSVMJep8Ql
         e0ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eqpKB3Kj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id r8si399974uat.1.2021.04.09.16.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 16:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eqpKB3Kj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102b.google.com with SMTP id b8-20020a17090a5508b029014d0fbe9b64so5722117pji.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 16:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=SVHlr9PFsAmGK4+X1iTgg6ZdMx+ehnrMFUWQE+qDW68=;
        b=eqpKB3KjqIKg8bCrXpgqDgvGD6OtrVps761SKfnm3LqgzUVpBis2S1dNnDiQG1WXjs
         QSsSf787BjZNH+sHBNG4u7GHcflzhqNLZiEiBAnC0wUUUW0WcBBoivNP2M1AwrEi0qXr
         n9/dIHILE0SSUHkvbu3x0JHoqTj3oF8N01sT3b+Iy/ZEzG9lD0TS0qhENJ8wvhZeiKmx
         LEpDhiNsBOSPt9qPYSvSCXbIdHsYEg/NpS5OOBDCeKqLc1im4n31ykjY000SrW6sZR8+
         l2wTkiguiny2s/zc+5Ttub+CVSe9Mko8CQYLR7fZRKX3sCm6cZfJ0J2fHSdbgdHGnGIS
         +7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=SVHlr9PFsAmGK4+X1iTgg6ZdMx+ehnrMFUWQE+qDW68=;
        b=qFDriYObUH9xXmVr/6giCbsMRo9EjgClex3ylL4DOM3JrTw5OxOhJJ2fT2gYei2K6J
         7n9BbH9YKjfS3dbgKE+eCNTgofNM+R5BfmFE8zEIYu4d16nLhAY6UxQ7FvAZdOJSfD+G
         fQblJLzsXdxurgHi8qdXJxH8Cnmg+OHz4L2+as8Zf6M/gbVP2mzomru+UYUPZAc+D1K/
         6n8DoZVIHASQwogvfkYIwa+YCYZQHz4hLy026pjZu8Za4+1EgF8jMFjL9J5iNtKy+nHu
         9ySZHoGuRXLEWanMLGF4I+VCw4iVXRFk/B0ScO5M6wQCKBGjtv48rTLGgaRpff/0Ey69
         yDCA==
X-Gm-Message-State: AOAM5305LMkQNCuvfqFYOENsd1sZlscrYMV2kFNZUTspue9G2bvoD2Pi
	wzwRpoyQAwwVyDETyNtQlEQ=
X-Received: by 2002:a17:90a:516:: with SMTP id h22mr15503466pjh.222.1618012000197;
        Fri, 09 Apr 2021 16:46:40 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id w191sm3570429pfd.25.2021.04.09.16.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 16:46:39 -0700 (PDT)
Date: Sat, 10 Apr 2021 05:16:34 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8192e: replace comparison to NULL by bool
Message-ID: <YHDnWpWztxeZospi@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed Comparison to NULL can be written as '!...' by replacing it with
simpler form i.e boolean expression. This makes code more readable alternative.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 65eac33aaa5b..476875125e87 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -269,12 +269,12 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
 {
 	u8	count;
 
-	if (pTsCommonInfo == NULL)
+	if (!pTsCommonInfo)
 		return;
 
 	memcpy(pTsCommonInfo->Addr, Addr, 6);
 
-	if (pTSPEC != NULL)
+	if (pTSPEC)
 		memcpy((u8 *)(&(pTsCommonInfo->TSpec)), (u8 *)pTSPEC,
 		       sizeof(union tspec_body));
 
@@ -328,7 +328,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 	}
 
 	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
-	if (*ppTS != NULL)
+	if (ppTS)
 		return true;
 
 	if (!bAddNewTs) {
-- 
2.30.2


