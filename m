X-GM-THRID: 6746399399110246400
X-Received: by 2002:aa7:9f47:: with SMTP id h7mr1383153pfr.44.1571284943912;
        Wed, 16 Oct 2019 21:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a589:: with SMTP id az9ls241213plb.12.gmail; Wed, 16
 Oct 2019 21:02:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzE1uKaqNle9Qayq2F1B8lZMBkoag/+aEuVqD2oUN8l+D9muZsuNH3RyuCid6xrbiJykatV
X-Received: by 2002:a17:90a:19c1:: with SMTP id 1mr1713860pjj.52.1571284942805;
        Wed, 16 Oct 2019 21:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571284942; cv=none;
        d=google.com; s=arc-20160816;
        b=0UExjozmRcCVxccSqhUxJdR5UQhhpeItU3ktNOTwKmy8FUN1Yr95sItolKF0rbyKfV
         RslG66IyM9Eiv7KWH0sbBk/7lOAYtMB2XzkrL+3uxgi/hmSgN/b1OFnGzgtacyYf+txC
         JhO8wu3TlKgzesB0d97mboGXskqeW+UOeK0e3omJBvQiE41z3iHe0HFqNko8P3TFYsS0
         P/eI7vGoZyO6ux0TsMvdaDAwGnUpqnQw5balTZ32PRTKYm/rhNRYIX5zAq6+FVAHnA1n
         35MVIUpuIb+1sFFxakugcW+mNas0LEHBJO0aFtlETLFUgPlg1wNQM6Hnf+I3V6V7vrGm
         MzQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=NKhy5+w0RMK3XSmgDoJpHmekl+j0mp8q9SSXKxt38o4FCM/5NM+22jNNlUT7jyMtUm
         VjuI374Eg9UTvdbBBJC/u1YtyHgg3lQsCcBEE1xZeyO9P6liKqJhz80d9MX+xbw8cfN5
         YOilgcFhh8x0kRAxmLZ8wiOOZXDG4s8zeNXF8vOlnLVie1n3aYKbN5n6yEwflrk+6cCE
         2glN38SfWXQMLiQldwsxrQrGGB5TKdsP6fRkXmln8UP/V1ERagn86q+Q7E9APFcFdoaO
         vgNW3WupQNQ3Lxtc/x4ZoXLsijdXvYMJZtvgIH1Qdh56i3aySmTzDvSF8o8SPopYSoRd
         yWkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rv1OD4FM;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id x2si52138pfq.3.2019.10.16.21.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rv1OD4FM;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id r5so1630283qtd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=rv1OD4FMncpEQBjlNisYW1nspTLbkcqwcbTyY7/9731sPx+RSZHLohiFP+/OQMT0GP
         L7HN2THxtE/KoLV9CueBP9qp5Y1DwudteX3+ciWH0M4lDLt4rVTYy9chEkUwe3bfq9Tr
         ONn2TPp+cfn2AVDXsZ4D7+HDMc/FT5MLdw4OL4M3B3xpWvwZw3GZj8DDzabDrFnLCxMz
         FBWFZoZ6XnGP263KnrlD7G4f8dlAEROQcesKDD/5jrWb1GDo0CggdrjJ8WWvdlx2mGSy
         2y90yIDRo0O/02goyehNeuf0WUQWHBm0SNZBHbD7xT0pCB2GFpeYg1p+2qmC8satmsgB
         +9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=8/V+AoJFVZ9neYyveoeb2XUjlGGOyQgJew/RRIo7FlE=;
        b=FKdk3CiwwQ71T2VEHAtU3sLnqD0uzY8TANLRwSXhlq68AKAT/rQX6rubzQKD6KzQpk
         T7HIhqSDkLi80slFokagvlvH4++yx9FPI4Yh3CnatXTeezBjWkbx3C4DPKH84Fmt4/D0
         yGg4zQ4mxwnzhOJ1I0uGv6SFPNi/wz4LZOFqCe1mO2dxgEJSmwDyvjwvjN81aX9XcX8y
         zKDXryN5cq3WBzb88U/V5oBROOBSkHzB53HY6czQh2rFuK6OgcLlo2lgf977wy6ZKQUM
         iK1aVMnuwlc7UOYAk3CxfF+p4Dg7lDX9WZQvZJXV0ZwvU6WXKxB+fwGGF45QPir83pwQ
         8EaA==
X-Gm-Message-State: APjAAAV7bEUlnfgxMOgAAbCgdU7i0MKTolrv9xMZ4gFq0SoEm4sxQsoW
	fctC6CGpb9SldfYxv0oQRyj3eEOkTH9C+A==
X-Received: by 2002:a05:6214:11b4:: with SMTP id u20mr1719172qvv.202.1571284941901;
        Wed, 16 Oct 2019 21:02:21 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id j137sm572840qke.64.2019.10.16.21.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:02:21 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:02:19 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/7] staging: rtl8723bs: Fix lines over 80 characters
Message-ID: <6a12577f3b95a77e060a2fb60ff17ce94774c076.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

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


