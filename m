X-GM-THRID: 6746399399110246400
X-Received: by 2002:a67:e20f:: with SMTP id g15mr746714vsa.127.1571284972512;
        Wed, 16 Oct 2019 21:02:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7214:: with SMTP id u20ls58206uao.2.gmail; Wed, 16 Oct
 2019 21:02:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzuIO/NaI9BM3Y0UjPQDEWXwJtCojNek1foWSSJvxe8ITo3U/5pJX751zwM9jWlerOtgEyv
X-Received: by 2002:ab0:2815:: with SMTP id w21mr1072540uap.133.1571284971422;
        Wed, 16 Oct 2019 21:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571284971; cv=none;
        d=google.com; s=arc-20160816;
        b=Zoa1sqanuymOiR1bJbhN5d55ITnZpQ+GeEk+msx93ISaDODlHy+NRKRlrMzgoWdJH1
         29L99d4sCKJbilM1kyBsvKFwTRDIiGOjzjjqZYgJhN1BV6YFjdrQ+u0H7wO380Db9liZ
         6W5eimAAy5oblWYyfH3gPA2H8mHLoBmAcE6SX5Wd6VtMy7O/hWpzotTyeo5LfFBEBWE4
         9D84Drxg0WnjcPJqKdVHpJLCq/I2f8cdVG/QthinEc4SG2UXnVx4NTq5spvtb2otd37Q
         VM/0JmlnfK39/JXQGMaGnYj9yrUHGseSc2R9iWvi2ml+opTxohOpxZWubH1XNgctXtmS
         FTCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yuF7Bdv7knUFR7P6aflxkxR7srSeUEgkDFlPti0qTro=;
        b=ZzkJ74Zu0eOKSkwDnZ4Ct7XxCR6dtFCquqrFGit28WgF8xnIRTgcFiWT5DEi/5QyQI
         DVsDCZwssnbbYgtn70HlxInlnSrhW/ZYZrYnHu1/OBzFBOP+0kDd0g4jvPlZN0QiKDdw
         CMm4oC6u+8x4f5BcQjZOoe4G0jKYZa2MW4HNeaLEha6PImTfAt8UaT5gi7UDWS3GZ9CZ
         K2mWZkr+ReqysbJBIff/j4BnB0hNpoOPBUia9XtRQ8vKXZKUW0qRUACWtizzrcLG5wjo
         XS54uLBuM83pHMqq+ceCYdx3KM60cN7S2ExYvDs1DOT0NyuzqzolxSScr3lt1GIhElJN
         G1jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LGBGSiCn;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id v4si59480vka.3.2019.10.16.21.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LGBGSiCn;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id x134so663212qkb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yuF7Bdv7knUFR7P6aflxkxR7srSeUEgkDFlPti0qTro=;
        b=LGBGSiCnzXfJDZquomul9jHKyJWcTz9m2FPppzYkiGqi/SkxG6/d4iLFThD0IDF4iT
         UsvJ31CB8vhQCbA9MxMrnz3ffqidnqRgRun74MJpRvRoh72kEAcMTR0jafCe+sesQFzD
         O1KnqA25jk6rnebqjsd/W0LPgSWi+4cj0a/b87jON+hElKk3OMNLdxZ/vONYvNpwSnnV
         D/NtwNSEqaLxCt5qWFNiTyHMvGTPxwAwWaAiqye389X3sxay5z/MQw/LtvSUQ9PdO32g
         +IRQa2PyIvHrTxMtdjqedR2DWghC3zIaIh6sFP9Fvr0uOxDy/xve/moYxvSja9xO/i3l
         qJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=yuF7Bdv7knUFR7P6aflxkxR7srSeUEgkDFlPti0qTro=;
        b=HydueyH09o/oPL7vTXU1boMcWsGS/IpklmKvoWd43ZF6c7IOT0SrSV5E56JRKPGh6b
         JSiGlNqf7pT6jr3ywib+Ou/RBf5FxntlXeDrLq9daKkyjQbu4XgeS6qtKi12he4r3Qd/
         l04jwHaJqYiKkRkInxYmok2+ikzVOyzXB+kKgCMp7C9PNTWa8/ddk5EFHssdJpjdpF3I
         88CV8EybpJsUnJCDC8HrVuwoitwFk/PwRRSjHSiq31CklCdEnNFMXQ3DcnZtAnWA+dcG
         hy9uceOSsMNYyf+0q5bQUMDkqHsErUn5g6sX2qKIZPHKeW5UHi/EAMYhUrQt6EvS4xBj
         YVXQ==
X-Gm-Message-State: APjAAAXOs/MKUHwmIP1NbJuo0acchTrwI8O65hbj8sx3Vjyy/eJk3xwM
	kxl7w2FzW7+99h4nNaPzaLc=
X-Received: by 2002:a05:620a:99c:: with SMTP id x28mr1393955qkx.480.1571284971052;
        Wed, 16 Oct 2019 21:02:51 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id 44sm1137667qtt.13.2019.10.16.21.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:02:50 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:02:48 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/7] staging: rtl8723bs: Add spaces between operators
Message-ID: <4194f2f5a7ed9deeaf3c2a2f2c91081e1f1189c0.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Add spaces between operators for a better readability.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 605155ea724c..1bda534384a4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -307,10 +307,10 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 				 _drv_err_,
 				 ("%s:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
 					__func__,
-					crc[3], payload[length-1],
-					crc[2], payload[length-2],
-					crc[1], payload[length-3],
-					crc[0], payload[length-4]));
+					crc[3], payload[length - 1],
+					crc[2], payload[length - 2],
+					crc[1], payload[length - 3],
+					crc[0], payload[length - 4]));
 		}
 
 		WEP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
@@ -854,10 +854,10 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				RT_TRACE(_module_rtl871x_security_c_,
 					 _drv_err_,
 					 ("rtw_wep_decrypt:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
-						crc[3], payload[length-1],
-						crc[2], payload[length-2],
-						crc[1], payload[length-3],
-						crc[0], payload[length-4]));
+						crc[3], payload[length - 1],
+						crc[2], payload[length - 2],
+						crc[1], payload[length - 3],
+						crc[0], payload[length - 4]));
 				res = _FAIL;
 			}
 
@@ -1624,11 +1624,11 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_remainder = (plen-8) % 16;
 
 	pn_vector[0]  = pframe[hdrlen];
-	pn_vector[1]  = pframe[hdrlen+1];
-	pn_vector[2]  = pframe[hdrlen+4];
-	pn_vector[3]  = pframe[hdrlen+5];
-	pn_vector[4]  = pframe[hdrlen+6];
-	pn_vector[5]  = pframe[hdrlen+7];
+	pn_vector[1]  = pframe[hdrlen + 1];
+	pn_vector[2]  = pframe[hdrlen + 4];
+	pn_vector[3]  = pframe[hdrlen + 5];
+	pn_vector[4]  = pframe[hdrlen + 6];
+	pn_vector[5]  = pframe[hdrlen + 7];
 
 	if ((hdrlen == WLAN_HDR_A3_LEN) || (hdrlen ==  WLAN_HDR_A3_QOS_LEN))
 		a4_exists = 0;
@@ -1666,7 +1666,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 				qc_exists,
 				pframe,
 				pn_vector,
-				i+1,
+				i + 1,
 				frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
 			);
 
@@ -1849,13 +1849,13 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 				 ("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
 					__func__,
 					i,
-					pframe[hdrlen+8+plen-8+i],
-					message[hdrlen+8+plen-8+i]));
+					pframe[hdrlen + 8 + plen - 8 + i],
+					message[hdrlen + 8 + plen - 8 + i]));
 			DBG_871X("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
 					__func__,
 					i,
-					pframe[hdrlen+8+plen-8+i],
-					message[hdrlen+8+plen-8+i]);
+					pframe[hdrlen + 8 + plen - 8 + i],
+					message[hdrlen + 8 + plen - 8 + i]);
 			res = _FAIL;
 		}
 	}
-- 
2.20.1


