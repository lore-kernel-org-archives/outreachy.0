X-GM-THRID: 7030748849446584320
X-Received: by 2002:a05:6402:40d0:: with SMTP id z16mr54314475edb.340.1636973792111;
        Mon, 15 Nov 2021 02:56:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8e41:: with SMTP id 1ls248233edx.0.gmail; Mon, 15 Nov
 2021 02:56:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz4xCh3DcefEwrhy/5hPYYU0MehC/Gn1sdRNcT9e218I8BfM9okbUpX4SWvH5uUCHaBV+S9
X-Received: by 2002:a05:6402:4307:: with SMTP id m7mr7401706edc.93.1636973790824;
        Mon, 15 Nov 2021 02:56:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973790; cv=none;
        d=google.com; s=arc-20160816;
        b=AoL9wxqFKV+1l4IBnmTTmEclhb3ndiAMuQiWBts9eRf/X2SXDbogC00LEzElhHiBpR
         ASS4SZ17tqDh7ylXf9W0wtVOQ1g53CUrqiQJdU/Gl1fK+faPe2gpgVKt2whRYrL6JRKr
         eKky6RT2mx1KN7k5AmdCmigzGtXgRoS5vP9cCLcH3bYnskzz9JRNkAr0XFiFVM03cZvE
         FW5OdK/gOXN8xyfadXFNzQ8yTaNPg03pcUOeYRypt+kkVsbXAPmOfA9kmWwbGzyzRPYZ
         geTzqkiJIgu6W8hraO/5mKSPr9+5LCkr3AehKgL44eEG/b1apxjYjGG9oEvrxACVGMn1
         VqyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dTBXnapqkVFlBYxNariu8PZzYpFF1+dh6PCGaUsL4VA=;
        b=ll/MSOuP3WPA8+UnC8vc0WSZP7SobAMQVNgVFHDk4yWbhUKKNaWBUX+AtlTYJOABct
         uXqDLHIIePfRmdlC4tZYWDa422nUEWm3S/FP3yJ4xuO7vEEqbVsa64BrVAqkeGisukhC
         ivqo+tJYIuh5IeGqkqpp1xuiaIXOIxcDm1dhLfiJU451dl8vUxoGv8aFASv7KjFqT+ol
         nwVz17EIsP0PDHFXbw31BTKlFlUki5yULUb0VWX781T71P/xl3R3SNYT91b5d4XZ1Q+B
         +BVE4MUpsRIMqWrsdedYwU8SvyTyKnFRcf1OfsN7Rl2MJNCm58GouqNECa7oFeBMCfr4
         yAFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VjkSs0po;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id d2si789724edk.1.2021.11.15.02.56.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:30 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VjkSs0po;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id i12so12669082wmq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dTBXnapqkVFlBYxNariu8PZzYpFF1+dh6PCGaUsL4VA=;
        b=VjkSs0poiWDZzogiZvuAQrpasCXjxw+5vmonR5qwXMBRrDwi5cvlD/8kd0ccuU89Bt
         N1fkPREZ4X67mH3VMzatu8JdTCNPjXTwKoxtLutR6UeQBW+Bfg1PjmyVxqtqzGh4Rwke
         uUC92A33pFJcriJEyF0Y6qpH1rPs+xK3CmqiLy7vTQZOf3yfvlb+c44ETv7qHwfEhgdR
         txaaE5fMY318Vcaprh9x9J75f1GTyoGRCymiHyKNylE5vf1HiagGM3F+YLjbIjtmUdA6
         ipwvBMAJd0AP6yUN083d+zqMDslSWVYf5yMilmhhpq5906JqEGaDw6VtM8ptNdkPipr0
         zLdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dTBXnapqkVFlBYxNariu8PZzYpFF1+dh6PCGaUsL4VA=;
        b=hB6tXChosXOVmwYl9SIJcuqn6IVSCMAa2Rvt76zrBov+ThMPn/7qmhSOF3bcLlbKxw
         GFJtia+sMfJJZloTQunNgHJUgKbKM3xrHifH3E8kkE35qCgOFtuTvDq9uk71Bk3nI6RU
         bXQFBz2Q93/3hzvJPRV+Jx2oWFRNo2T9bLnEuNO5Vgjif3jSZvaOscjzTD/1sQo4maB5
         RLtk7kLdvAEj6oSrhfZ/B3v4D0Z2ejS77qA7bLNaav+XVSEgEpfexYStKApCwxwQ034c
         mXYvOAYGJqO1loJy5StCWQO6e/lZ0Y+fUlfKt+UK4HGWrX380pe+UWeOlK/tyeNPrr2y
         tRWw==
X-Gm-Message-State: AOAM532w8ZrbihkJ0QUgtMZaGmBGhiBh7Tc+nCTQ+sSgWFfxUZQpJGzG
	INm41ok+V0/6kOENB0NqDHdvu4NoDGI=
X-Received: by 2002:a1c:1b08:: with SMTP id b8mr56453882wmb.28.1636973790577;
        Mon, 15 Nov 2021 02:56:30 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:30 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 6/8] staging: vt6655: Update comment for `rf_write_wake_prog_syn`
Date: Mon, 15 Nov 2021 10:55:47 +0000
Message-Id: <be06c8f0df043598f3280a15397ad66aabefeaf4.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the function description to include the actual parameters.
Update the comment on the return type.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 569b430dd9ae..d4c18d9bfc67 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -669,11 +669,11 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      iobase      - I/O base address
- *      channel     - channel number
- *      bySleepCnt  - SleepProgSyn count
+ *      priv        - Device Structure
+ *      rf_type     - RF type
+ *      channel     - Channel number
  *
- * Return Value: None.
+ * Return Value: true if succeeded; false if failed.
  *
  */
 bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
-- 
2.30.2


