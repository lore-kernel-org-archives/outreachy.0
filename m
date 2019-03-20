X-GM-THRID: 6670497613364592640
X-Received: by 2002:a5d:8c8f:: with SMTP id g15mr7264643ion.36.1553096252584;
        Wed, 20 Mar 2019 08:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls812232itk.4.canary-gmail; Wed,
 20 Mar 2019 08:37:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweqc/CnAKrzx5R7T6jT55d/W94OGBbbSGGMLl4n8QniFT2ev8+NZWPlU/JzksSkUCqOkU3
X-Received: by 2002:a24:1a04:: with SMTP id 4mr3255799iti.27.1553096251446;
        Wed, 20 Mar 2019 08:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553096251; cv=none;
        d=google.com; s=arc-20160816;
        b=0rQ6/It9lu6xuNh4EzEi/YqdtNXxrymDLWonmB77BlDuN2NQuqy42cvMv7GyjEg0Rk
         xEZD/JvL250Crk5ZKmM/1m+R4eI7XhNGy6bh5BwLs4Th8elrXPFzVyLvX6rfziJ/zgV+
         1sRWpBxuvoWEaRlW9tsPQDn7dITyTZJFcMq2JmiqXYlUl3FrreiFX/nh91xT/83wep1w
         VB/pNNBhSneGFDKak0pvKkazPP1La8eKIl7K+pzYZxp2M/AyWkps+JUPQ2WAuHauqjdy
         4GvQccZywsNLXwWiGf5edB8OY4f03b3gcQUxrcZBy0VmZ+SdoxR0dRo5dk+fJBxRyTAr
         Z8Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0UKlyJIAXVUmHUDZIGBPTTDQxa74yL2B0pdEI3euL3E=;
        b=vScNogxfgvoNW/Bd6ZAC4h1FdccPtAKQ7Z5b5WotTbqWxYqIDhjtHGxCFKCLyf+yXN
         alo1eJMrsbC5cPriFOs1McpitTRHgs93+Gck5MpGyHXYQrUVVAJa06FaGGzmlTBS9/Er
         jQzGQQMqnYctaMbKGX6cqzir5+G0ofYE0B1LDhjgB1+lOJBKEWwMwt8xQFgWiAfT0nUA
         JfyR8YeNFAp2dsrEZDu2/97XlqOu98BrezaUXexDRywB6NpB9JE0fevlWA+AAdT8zTry
         YFiKwfHyfhg0oLaRzPegi379ZwnlKD+D4rBvU7hkg5FUq/wTcqfB0kgST2Etc7J+U1Sz
         xe4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpDmdASg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e74si248889ite.1.2019.03.20.08.37.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpDmdASg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id 8so2204555pfr.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 08:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0UKlyJIAXVUmHUDZIGBPTTDQxa74yL2B0pdEI3euL3E=;
        b=WpDmdASgwMcIMX81Z0OyDd9HwiIF7Cmf3ZlhGWEbZ7gUXm6/OKXo8ZYKpRJdvVPbgd
         iZMkDZQoKdkScdzpucXQj6WIaKUtDt8VG33KmHA/AR5Vbl3HUhY68lHJVoJF6j7bmit1
         1MpPnpSqWDrNTgCfEI0S8AQEExOq84of3cZF7L92Ml4Nx4nq2qscI/p6/yVLnF/1vovx
         9dHbNZvAMGgvZlZ6Te4qShQent/2ja1jgoRm/5KFwC44BM4zc4r8rVja9NH/W/+CMoOP
         lSIyTCiIY0EGNgAZ358AKlL3d6D8MitkBdcCuh2z2MZVTOaq1B0BZZ+ehX3m0aFGSVMP
         N9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0UKlyJIAXVUmHUDZIGBPTTDQxa74yL2B0pdEI3euL3E=;
        b=toOm7FA5COf7HBBcWxjHoD6oj2UQ9cneIb3mGOJum+ZAvFFDsFp/hZjonAk0bYYp5L
         4dJRpovd4xNg7LTFSCmsJSu/Ap1DvbmjZL0OLC6xQQFpQMMTcxaTFQtTIdlPIB+XymXB
         t45p78Rx534OKNSMFatNpXE2SfgoSM/5HngoQBwcStUSJIQQ5tySPmyfioNXzveMYRil
         tV7q0JWM0U5G0Z9of+OUj513jSjHMlO4ZvrgNjeHT6rRu7yYKIDiE4ADWVlFBbjRhbVX
         HUMjzWTDZMXefAejTHELHRr9FcsN0ST02uP79mlSTV7zkpe7Cx27rpDg4dDKukAy+Uxl
         WetQ==
X-Gm-Message-State: APjAAAUFp5n0h702vU6zeOwvwajfWqB8qVUmU3tDMptaMgFeG9TnBlkw
	QqeKXE8U4ZbNNC80p6vfvE0=
X-Received: by 2002:a17:902:2947:: with SMTP id g65mr8681260plb.258.1553096251125;
        Wed, 20 Mar 2019 08:37:31 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.24])
        by smtp.googlemail.com with ESMTPSA id o14sm2831157pgn.65.2019.03.20.08.37.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:37:30 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: rtw_recv.c: Modify return type suggested by Coccinelle.
Date: Wed, 20 Mar 2019 21:07:18 +0530
Message-Id: <20190320153718.13516-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 90eb1a025051..606a9f51508a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1859,8 +1859,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 			/*  including perform A-MPDU Rx Ordering Buffer Control */
 			if ((!padapter->bDriverStopped) &&
 			    (!padapter->bSurpriseRemoved)) {
-				retval = _FAIL;
-				return retval;
+				return _FAIL;
 			}
 		}
 	} else { /* B/G mode */
@@ -1879,8 +1878,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
-			retval = _FAIL;
-			return retval;
+			return _FAIL;
 		}
 	}
 
-- 
2.17.1


