X-GM-THRID: 6746399399110246400
X-Received: by 2002:a54:4716:: with SMTP id k22mr1419683oik.158.1571284917512;
        Wed, 16 Oct 2019 21:01:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:de9:: with SMTP id 96ls179341ots.6.gmail; Wed, 16 Oct
 2019 21:01:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwr8jIAQe4LZvOFU0xs9V1ihnX7JpOn4BpftDxfVhb5JL+Vpf8eMhwHvATPz5kB07UNXslW
X-Received: by 2002:a9d:66c5:: with SMTP id t5mr1248598otm.225.1571284916575;
        Wed, 16 Oct 2019 21:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571284916; cv=none;
        d=google.com; s=arc-20160816;
        b=YSB9YUu5rbzVPpw2t4h9Xlm0Ie1LEASxNkS3D/OwOkRMOxJ0oHQyXp0v+LeNbcPzXW
         HXRwtnXE40vrjG4KmJ0OEhhZgXT9VqXHBvAzvAp+h8fV/efvp6YE9XzX7A3bLzP8kNsS
         p0t4rHDtIvwzDvvndNUNhQUf6GBeFn/wx5XvHoc95EcsYNhcjPf9y+ZZKuS0tQGXe7v2
         mAwIQQMUfFFNZKCODmH0OhGo32P4bLn+akJ3ZLGn6GXaQzXzMbzxvp+ZcOCSUZF1LVzh
         6OrY+VoHX1joz+vak8adoI6NObHwA8Npg60tt6XdsAA8ETa7eCJxnN4Tyht+cuv+P+zQ
         UUog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=KqqldiJmnedk/2e/wHnVqbN6xiSYaDljJviDlcVWT6MtLnUzoURO89bwxcmbhRrir3
         uFi+VxXSQ/Bb5CVu72JWfpZDdEO8KHe9qg6aPvDACKmIOZHuJt6SScneDqCr6NiIq5BM
         ShBrYsKhkN8M4xxP04TlfErMjBnCYD/BbaYxdBXPD/iZhvQTcrBigJT0pP4o5f7Zr27Q
         Dq0zo/jcKC8vvDePbcqqX1hxVr/8d5GdQL4xqXDkFfjStGkt4qa/6hTl1+YNQH++A1fe
         2xCuYL8ijQfwztlfAsGIaQgFFXuKutpmkejersVFVUskmA3O07+HYkfnReFupVHq+rUQ
         mOZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SDabGrll;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id v3si50813oth.4.2019.10.16.21.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SDabGrll;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id w2so653184qkf.2
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=SDabGrll++S/KpYMpQ6oL5ShyMsQNGfuadch2xqhUUx0pj2olAsbV2Vd/k0QqLiNNg
         qPm/leFF9z5LiVCle1wvBKdjVyxlnq85SJ9BPGRl4lq+80LttcXnuCkNUts3BKds3CBx
         DcYB/8CArh3fbJHx4diK1LLvoXa3I7jylOizSQ66UH/i4yTGqs0dFbgurvB/nwxXhDhp
         2PiXAO3VeHG8AJ3T1HMCbT7De9F5p1az6RVKvqwSQ22rVp6f9odXDmSzo6e9b4Gt4iO5
         K1iG2/hyaJkX9GAN78Dm8CXYNVtuinPETksi1DSLPrdB41hRLoTHuMEFgxaC05B7zGhS
         HYFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=lJDjENvJIArC2UuZm3cuVAEdUtAjM7bXd8VXwe5WSoY=;
        b=YiewcL4GeKkEKo3wy051sIU7LXk2fVUkUDFMsOK6/emtLiz8Lr9uwcR2vDYlcSUE9k
         y4GysFuIp+A+bw3FTKfFsgFKVPoRGbKrrguamzamFxJttaIYXKZmqeAt2dwOtolI6h+t
         hvJgWeA6F8rnk6uZSB3jUmHx92WLIDqjfrNLxQiayhPrXr0mJRdtuPRNTa0gBZdcv/u1
         CLUy/pBZbuJZ/xARDxrGJIqBa7T2pLzKI3ZfIGyjYR+F7lofB3f6TLTd176NL/xB0sAY
         sdtFHvQVviSubE+9ccuMBQU3nWzbYX8+xJksWJr/w2rIJUK1plCo0G5YddEfLT3kHaDq
         Vxpw==
X-Gm-Message-State: APjAAAXM6jENBw9SgFMOgsM+t2h6MZBL6GgiDU6A/4YzdalufM6As9uE
	dkFbaFhqSUl+aHTqiF1XSjY=
X-Received: by 2002:a37:4f88:: with SMTP id d130mr1455068qkb.168.1571284916041;
        Wed, 16 Oct 2019 21:01:56 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id g10sm602916qkm.38.2019.10.16.21.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:01:55 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:01:53 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/7] staging: rtl8723bs: Replace string with identifier
Message-ID: <b2ff6a52a7140480c9fdb6486a6ac6b4eb51203b.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

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


