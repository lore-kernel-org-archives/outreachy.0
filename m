X-GM-THRID: 6746399399110246400
X-Received: by 2002:a05:6830:1253:: with SMTP id s19mr11072254otp.111.1570768575077;
        Thu, 10 Oct 2019 21:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6acc:: with SMTP id m12ls1191437otq.4.gmail; Thu, 10 Oct
 2019 21:36:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwf4meu8BGgc0wjn1K0/bGgK1CescIwmyxYhz6cVHZTat1vqEX3qgAy6cwrbxA6lOLpmBii
X-Received: by 2002:a9d:73c8:: with SMTP id m8mr11226413otk.75.1570768574201;
        Thu, 10 Oct 2019 21:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768574; cv=none;
        d=google.com; s=arc-20160816;
        b=iUE+ZkNBO7hnZ0jWgbc9vUnmStZKgXwJDhLdyr1D4Pze0o5yJelwgW6Vh/JugbKX7e
         zt0fkaDIpIoZRYK5E3VuYDbtGqMP+s9ondf4QMPjRb4KCfUQMjTkZMQ5GV9UKK8ifJbd
         f4hAmlVMv+JRlTYSau+4p76z/84r1f6cp2MptX44epBqoZF5LykXKSd8QzEgcTUNddJn
         w4Y14zJaWOVWoCQlZ+VUoQ22WsBZmaHvIAckqM7IQCxLUyf/C58ECCJP7RkqXUxQJ+i8
         Lnq7zAtPKDrQsPqUBWI1aKfULFJ4k2PPjlga0tr5RVYfnwBuIHg5GU9n3ZVndR2lGRE4
         U/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=HwTFu/aWL0R907UHoYaIh73S//gJjwdJigdE1/Cum1/+r0p3tqgwfRbw5fYS/RBEG7
         WypmLCNDkjl2qj/EL5NxmKknibFbvmmThikMwh0ZibEKoe7rG10ocJgyLRz4hx4Ct+nt
         53LcvqVFOev7M2rAF48jAwXbAD5pPE8Wr3tjzzKv6vL4vUu8s0bYanwFsg8EIO/OnVSL
         Nvet/n2M+zqfzDE/rqZi0kJRzFAhulZo3VJ1U4A2T+R0nDIvBe06p7NCga5tyuYd3Myl
         DFQRSXLsyVFKugefbd8go6Aky7WHm3W88wuiZln/q06PB6czt+Pocmq5Jo9HK7VLXwdO
         bCrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jT6IiKHc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id b11si87882oii.5.2019.10.10.21.36.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jT6IiKHc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x941.google.com with SMTP id u31so2658149uah.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=jT6IiKHcrOeQ47TAkefmvd6H16Mkh4eQGcQdjHzhA3xRZA1vhuWFHNK/q638LAT/ns
         13htnGeMB6sPg7jDBmDXg5vtXbmVtDEqLpVlNdEZhosJ5xvuupZwm8FNmASG0wVok9fv
         v/N/mzn+ejoK4/Up5b63lldAFbm+RL2trXyb2Gr9VkAqDyW4ZTxI5VsdQYpEoUcTz2Ct
         86FYo5VjUzdCHbWTFVI9L5a9Zhp4gJa0wm0qtg1/2HcC5SMBDdWJYyfc1J7C7RInkL4B
         mqQJOZU7OdPDRMiIAVlCUK4O1zxC8ImyfQfyb6lIPGadIWzudQIzC4q8WfcC/K1C7COt
         4ZYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=NIjwuSdOx8GbitVvqsBitjRkE0kcehNGJcHZfstFoUuiZxbulv7KyrLuBThTTxubzY
         71v0XXo1vWmeRTIi528FpK1Pi7nDad/e5R75nTmWPm8/RGiygwOrJO3TQssEw0rx9dVm
         j2G9/Qz6NIB0mcOVl/1/nFHVcytGaAAGLamdFDMQsLG33CouAm8jG7GQMtKS7l8wyJXh
         BD9eSaRbz1SMxMtosA+66xlLirOjjuF6Uaz18DjErF4K2xtPyiTXDTC5YFyFs8NQMCsw
         wDDdeUg+5RqUuXVUmgmgcTVUDPuyhIp3Cn5C0+uSRHjo2GrSF3mJ9V7QrZcsjy270eSX
         YBdA==
X-Gm-Message-State: APjAAAVLKV0Wm1JxSbEXqvr9ll8V7S2EC7Tzl21DdicixT2aMKPSUhAe
	d7jTuRxF1qwG3fiADdWcPMMBQJzwZvk7Xg==
X-Received: by 2002:ab0:208e:: with SMTP id r14mr4094533uak.138.1570768573715;
        Thu, 10 Oct 2019 21:36:13 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id q18sm2393487vkn.56.2019.10.10.21.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:36:13 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:36:11 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rtl8723bs: Replace string with identifier
Message-ID: <b2ff6a52a7140480c9fdb6486a6ac6b4eb51203b.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Replace the hardcoded function names with the corresponding
predefined identifiers.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 5ffaf9bfa6e8..4c92a3abb2c8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -303,8 +303,8 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 		*((u32 *)crc) = le32_to_cpu(getcrc32(payload, length-4));
 
 		if (crc[3] != payload[length-1] || crc[2] != payload[length-2] || crc[1] != payload[length-3] || crc[0] != payload[length-4]) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_wep_decrypt:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
-						crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
+						__func__, crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
 		}
 
 		WEP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
@@ -695,7 +695,7 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				return _FAIL;
 			}
 */
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_encrypt: stainfo!= NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -853,7 +853,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 
 			TKIP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo == NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 
@@ -1543,7 +1543,7 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 	/* 4 start to encrypt each fragment */
 	if (pattrib->encrypt == _AES_) {
-		RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo!= NULL!!!\n"));
+		RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 		if (IS_MCAST(pattrib->ra))
 			prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -1834,10 +1834,10 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	/* compare the mic */
 	for (i = 0; i < 8; i++) {
 		if (pframe[hdrlen+8+plen-8+i] != message[hdrlen+8+plen-8+i]) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("aes_decipher:mic check error mic[%d]: pframe(%x) != message(%x)\n",
-					i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]));
-			DBG_871X("aes_decipher:mic check error mic[%d]: pframe(%x) != message(%x)\n",
-					i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]);
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
+					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]));
+			DBG_871X("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
+					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]);
 			res = _FAIL;
 		}
 	}
@@ -1868,7 +1868,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _AES_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
 		if (stainfo != NULL) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(prxattrib->ra)) {
 				static unsigned long start;
@@ -1926,7 +1926,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 
 			AES_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo == NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
-- 
2.20.1


