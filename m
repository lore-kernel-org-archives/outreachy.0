X-GM-THRID: 6746399399110246400
X-Received: by 2002:a25:bacb:: with SMTP id a11mr8651819ybk.483.1570768607438;
        Thu, 10 Oct 2019 21:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:34c5:: with SMTP id b188ls1060875ywa.2.gmail; Thu, 10
 Oct 2019 21:36:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwY1zWyJuKbtmhMAvfN+1SZ/L37/B2EG1OEw20raME2b4suE26YyxYX6Z4L1Dedas3FDjo9
X-Received: by 2002:a81:1ac4:: with SMTP id a187mr935358ywa.482.1570768606377;
        Thu, 10 Oct 2019 21:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768606; cv=none;
        d=google.com; s=arc-20160816;
        b=d8Spc3ywrvPCdgzcoUY0idezqZl8UFLuIS8yoygJA7saNWQtR2lQse3lZlI8tkSDrh
         xHVbMfneLzhJs4zAYXanz0SHArfsUHn9NFfQFQlkF+8X6B2vec5xDQKS+SNwJBoy3DzA
         TOa8UzQNYnHJJnKZ+NCxDHnSmx6SMHpUR38r7aLkt/X9hlRrSuVG3Y8TwB4Zy2u5nL01
         cjl9a6K4xDmnxiHjTB/uGERiiA/8qSJZDvJcGOueUdJPS8Ol4MmPxLRaGQB+83Pbpoyt
         6O2BEFdF9NacvH2PYtq1ifC8wjXLq5p/A4Rl9vO7wovbNO+x5FOwqkkPCSVmT75nW5Eg
         +0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=v9RmoQejvG1sxmjdbSR4eCD46xnrEPrDjVrvDUD03m8ipyZwSUABDKwB9703OCFcff
         Lv439gaZQFbHxwCDbo90GEpFq/H51qBChTnaElSgGKFp8oRSVI46XLZwttr7RP4JuBlF
         Os3gY7CKu+tup8ejTwlQHpw3qDchXrMXAcFpTuwrXtqMz9OMYmMeboJOKXHlV5BvEnfw
         h+uO0kkyySjaXYsABb5RcXtlHm2g8JAF+/a/uiccTCXuUA9GyOCH4kr5Y2TDhZ+WlhEA
         N81n94AI7NuTA46qZGkHZW0OjRtb4/m4jdkK18j/PlC0hS/EnYDrz18/myGm5W5+b0t8
         p9UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QJz+/M8A";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id a1si550678ywh.3.2019.10.10.21.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QJz+/M8A";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x941.google.com with SMTP id k24so2641547uag.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=QJz+/M8A78stt+hyyh0hWC5BU36sBjcYGttOb8w2cOjxPRnHEjqb9L2SW4E5TgzEKm
         HG3WFS0UeBr4qeSJSPIKFbDMeM/KfP+Yp6KrPmlcuDh91Rs7Yc8+fO0+Al9vmgqgDPhS
         wBelDVtGmOXkI558V5Ss+ekhJsKBUyki8+E85dTu13gHgQXI7240jWvGbO6ASZLk69xD
         miZ3MWnJTPBaH7EStTON6KiJ/ZNPzSC5wRSpT23irYWwQA6GtIiFqiU/UQfCSFjNmoFo
         QjfyUXmosRtozjMQ7aI0r8n2ycqhdBGJ0Di+fwTxcjR0kq24kyZ0RJtjZXrBY6J78C06
         DDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=AkP11fcdcCh9fQXKcL2robKp7ulfa26RMLWV+fHTCNkll8InymlUqSdUmiX0S7J8ez
         OTH7dEJF6gjyDhPUPrr3GJHS3xHRwuqG8dcmnxF1SJ1iRDMMVB3tuz5kf1gAgNygL7Ui
         GRl4wuju1rE4Ly9iXWEfOPP+hjOJaGWOwpZklZs/jVEAwjrVD4EycdEgBSHIgOYAtgJg
         KUnROVmGFPoecbhGqTNCp81q/nNwhzG6jtkin3iw4DvvlQ4+50YEiK5TUuw34nPfioWg
         prSJUb4rdOm/E2a7+oi/Oo+Fxei+0kASPwuuzVcuhZAm/zqo43LBdwfjQzjpUgkDQpRg
         J3OQ==
X-Gm-Message-State: APjAAAXDcNyEG0H35/F0WSJ+WE61joiuAs6YQkNnky+kV2QoixAE/kbo
	0YcQCQ7VJDLYYl4Rd99MWbM=
X-Received: by 2002:ab0:28c4:: with SMTP id g4mr1946893uaq.26.1570768605944;
        Thu, 10 Oct 2019 21:36:45 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id i3sm3166536uai.20.2019.10.10.21.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:36:45 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:36:43 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8723bs: Fix lines over 80 characters
Message-ID: <6a12577f3b95a77e060a2fb60ff17ce94774c076.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix lines over 80 characters by wrapping arguments in function calls,
improving the format for a better code readability.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 40 ++++++++++++++-----
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 4c92a3abb2c8..605155ea724c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -303,8 +303,14 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 		*((u32 *)crc) = le32_to_cpu(getcrc32(payload, length-4));
 
 		if (crc[3] != payload[length-1] || crc[2] != payload[length-2] || crc[1] != payload[length-3] || crc[0] != payload[length-4]) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
-						__func__, crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
+					__func__,
+					crc[3], payload[length-1],
+					crc[2], payload[length-2],
+					crc[1], payload[length-3],
+					crc[0], payload[length-4]));
 		}
 
 		WEP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
@@ -845,9 +851,13 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 			*((u32 *)crc) = le32_to_cpu(getcrc32(payload, length-4));
 
 			if (crc[3] != payload[length-1] || crc[2] != payload[length-2] || crc[1] != payload[length-3] || crc[0] != payload[length-4]) {
-				RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
+				RT_TRACE(_module_rtl871x_security_c_,
+					 _drv_err_,
 					 ("rtw_wep_decrypt:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
-					 crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
+						crc[3], payload[length-1],
+						crc[2], payload[length-2],
+						crc[1], payload[length-3],
+						crc[0], payload[length-4]));
 				res = _FAIL;
 			}
 
@@ -1834,10 +1844,18 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	/* compare the mic */
 	for (i = 0; i < 8; i++) {
 		if (pframe[hdrlen+8+plen-8+i] != message[hdrlen+8+plen-8+i]) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
-					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
+					__func__,
+					i,
+					pframe[hdrlen+8+plen-8+i],
+					message[hdrlen+8+plen-8+i]));
 			DBG_871X("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
-					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]);
+					__func__,
+					i,
+					pframe[hdrlen+8+plen-8+i],
+					message[hdrlen+8+plen-8+i]);
 			res = _FAIL;
 		}
 	}
@@ -1868,7 +1886,9 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _AES_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
 		if (stainfo != NULL) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(prxattrib->ra)) {
 				static unsigned long start;
@@ -1926,7 +1946,9 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 
 			AES_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo == NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
-- 
2.20.1


