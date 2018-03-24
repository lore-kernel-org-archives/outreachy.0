X-GM-THRID: 6536479698699943936
X-Received: by 10.55.154.88 with SMTP id c85mr20767583qke.3.1521892781210;
        Sat, 24 Mar 2018 04:59:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.120.193 with SMTP id t184ls3637674qkc.13.gmail; Sat, 24 Mar
 2018 04:59:40 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvYkHqasj+RlL65lW75GFZeQPh1geox9sH070VelTULZ2xoS41+uh2/35q5XT81blBvqa4k
X-Received: by 10.233.239.212 with SMTP id d203mr20530585qkg.38.1521892780630;
        Sat, 24 Mar 2018 04:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521892780; cv=none;
        d=google.com; s=arc-20160816;
        b=yIULxSbhd+IPfJR6/ZTqfNaNKNr7XVPRAiDhgB3k39xxstwS8Qw5Jy0l6y/4mfvGH1
         jaRX8plCE0ranVj9ccgwhBjD2T8Ww/d3Zd40b+K/72IheV5x/xCOW1yZMiSFLPr71XgO
         a7pTDJGJGGEskieULJtZUIpBhjROsedc/qQd4ZYIS4xURsLZ0jxl27cRPbZQA70XR+ir
         hADmL/ep7hWjrsuFL4+GZ4EJjV6PVLY+Ue1/U2/YvoPtszwMp/r4t6pCTpbG5SlH4g7L
         +RtafYQFGeTgKjzw54+nzmV1B04BvKM3JusKwShES2GawVs2QEp5WiIgHs+poEtKazgJ
         7c3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=M4O0twG9lXRc/pb0QD3wBf08uSp6KOtFwnvb/2mv5mY=;
        b=eELSPg/MqU3falYEqArag8uriCEmbaugCbeIoyliHsvL44BmR8zAXmzoToGrenvD3a
         fvfO/chz7CtEgBW1mcl6FkM0fN5G0Jdn6om0VHkbFPhZcPOhP7lEKI76mNAYXJ4CeSgV
         Skul4qRIS1u5TAdhATesKqbWpNYlK6Xee3YFIDdd7HGkahw2AzX5Gx3hDYsWO+R6pzAY
         o3bcYMXxvc3eULWGCFIDjkrE3oU2YRSaRO8QLoTwVKiEaNs794Xqu3aRG9E4/91Ac5yS
         GbL/iRd1hUTaEEvpl3j7/SV+hkqMi8nZN43EVrqg8yERK+v9GLB5ySoadqLgi9jS+lfw
         u4rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=cvUOlWrm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id b1si903879qkf.5.2018.03.24.04.59.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 04:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=cvUOlWrm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id 91-v6so1234629pld.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 04:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M4O0twG9lXRc/pb0QD3wBf08uSp6KOtFwnvb/2mv5mY=;
        b=cvUOlWrmwLTrTZE/JWYliFhwG75ci/sd53mQhHwYYDzYS69GcRkpK+nQD/o7N/RzMP
         cNSThwfRlvWU0lMA6wu3shJrI3G/MtHDD/64PoU75Lj02foiHH1LY5RRmmRW/EO7WZzc
         sAXeAXyUSEPX5LGJHRZBNBKUnTWNIZ09gM2ZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=M4O0twG9lXRc/pb0QD3wBf08uSp6KOtFwnvb/2mv5mY=;
        b=du0upXrlnT3ouvkY4/4lmx195i3nQegkfYztCXvQCD9RBGUbIpHPiAuYA4egZmdJ/Q
         oSlXoG2QeD5qkUUCJqNlvQ/JbvJhPls/YfNls9ZXhyfqF3GqjDDppv+XGLTArMTiBrck
         5XQ4kZJ2DmfGStcQo4CcWtlyXg5jjYZRVN3ro+9Q279jtS5mFUPkRksFjDI2EN4uKu6W
         ixLF0Bd+vmdwhWDGzmmOpoPyLhgyetyWE49E3B5zSNNPCiEa9alTiPPm1xMLHN15ZAAf
         AA29BPUt667Bn8oPkt/1JhJsX/FLBKSHOygwdcvKW+gMqNz8FMWNnjSlEiDRUI1/CumU
         NPow==
X-Gm-Message-State: AElRT7EkuJEPWRgSMh5Dd4rulgOlRTADqGysc34ycT8Wz5ifUr3UOq69
	IfHXZ3uX6kTSuPD1ph6YbZK2q++y
X-Received: by 2002:a17:902:b608:: with SMTP id b8-v6mr33485986pls.392.1521892779157;
        Sat, 24 Mar 2018 04:59:39 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x137sm25460453pfd.162.2018.03.24.04.59.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 04:59:38 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3 4/5] staging: vt6655: Delete unused typedef enum _chip_type
Date: Sat, 24 Mar 2018 11:59:17 +0000
Message-Id: <1521892758-27981-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Delete unused typedef enum _chip_type.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - Delete the typedef.

 drivers/staging/vt6655/device_cfg.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index b81f9dd..6b41c74 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -45,8 +45,4 @@
 
 #define PKT_BUF_SZ          2390
 
-typedef enum  _chip_type {
-	VT3253 = 1
-} CHIP_TYPE, *PCHIP_TYPE;
-
 #endif
-- 
2.7.4


