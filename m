Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D7E7B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 11:42:18 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id a2so8243906plm.4
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 03:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678534937;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RHyWlNYOWTJpaRchXuBuoW9+Bl6vt/PZv6RitZv+maE=;
        b=isMskkKQ6C0aj8/sERrbyvz0ix/zfhymnTsE7AIRlzdgrVkdEWoSqMPscssxVaHl7T
         cCtG90hjqs0PFvDCDxzrnRBP2TybY8yVqbqqY+zJDD2qXuBuLfQAHiDOKvenwWf02hJX
         41yLZJSvIo6eSvjJtAsQHzhe/5TpWFAJ1WGSq4XVrltb/HleHfdmXSvSJ+/rx/31Yixg
         hQ4shkucsTpVFaqe1N3tzjRHovNI2P7RD5XJgACMSFMdkWt1lG8/sFoN9sspNb7WJQsB
         o2Hh/xXBBLbZCJR4nJSQh6CrNlMRTkm/pzEiuMD6c1iKDDEWcMTUebYvAgS5up8q3v3x
         ZIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678534937;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RHyWlNYOWTJpaRchXuBuoW9+Bl6vt/PZv6RitZv+maE=;
        b=THDWkc7hx2oeC0laH0ZcAaCCFtFBfFI9ge7PHnI9hIxxc71hhEhV7LttmW+Jmw19Jn
         9dweDJW0LJ5bY1WqUPVTx0RcUTKoFM0rbvKfBuV0a+rOrAL5GXHsNMTmCFAJ2aP3DWua
         vi0tHWzcRsaV4ybpAB7ESsbtWK2mPXyy6ajPZ+c9uc6fZXsV2AaRb6H2K3Pup0kCr9ZB
         Yshp+m/VDd51ahnDQWyt01scVMRi1h6NLf8eaoQFHiZA4Zm4vJZBKT+A0ymd4lR01RM0
         Axa5YmUU0NBU+uLoU8ILvSU3ZI4QkZ0XF5bCb84+0pAahKKJCtrHQGFicz38d4tpvZ2z
         1uXQ==
X-Gm-Message-State: AO0yUKV29iXENpBjEVoRfRu7koeuFUcK9zTUrvD+Lp2lBe7EuO5ExXKs
	vxb7Ui1ofbGemfsVybNPYnlCqVM84Hb01A==
X-Google-Smtp-Source: AK7set/3En8EOEvm6geBfk1+cAxaio/aGhIgqNtOTMV7naGu8fdCziuylLWu5GgpUgM4Q8U0KJNduw==
X-Received: by 2002:a05:6a20:734c:b0:cc:a8d7:ad7e with SMTP id v12-20020a056a20734c00b000cca8d7ad7emr31345712pzc.60.1678534937501;
        Sat, 11 Mar 2023 03:42:17 -0800 (PST)
Received: from ubuntu ([117.199.152.23])
        by smtp.gmail.com with ESMTPSA id m8-20020aa79008000000b005ac86f7b87fsm1316192pfo.77.2023.03.11.03.42.16
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 03:42:17 -0800 (PST)
Date: Sat, 11 Mar 2023 03:42:12 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: [PATCH] Staging: pi433: Change bit_rate type from u16 to u32
Message-ID: <20230311114212.GA21407@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Change bit_rate type from u16 to u32 inside struct pi433_tx_cfg to
support bit rates up to 300kbps as per the spec.

Signed-off-by: Sumitra Sharma <sumitraartsy@gmail.com>
---
 drivers/staging/pi433/pi433_if.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 25ee0b77a32c..1f8ffaf02d99 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -51,7 +51,7 @@ enum option_on_off {
 #define PI433_TX_CFG_IOCTL_NR	0
 struct pi433_tx_cfg {
 	__u32			frequency;
-	__u16			bit_rate;
+	__u32			bit_rate;
 	__u32			dev_frequency;
 	enum modulation		modulation;
 	enum mod_shaping	mod_shaping;
-- 
2.25.1

