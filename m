X-GM-THRID: 6746399399110246400
X-Received: by 2002:a17:90a:17ad:: with SMTP id q42mr15766587pja.100.1570768637310;
        Thu, 10 Oct 2019 21:37:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls1789120pgk.4.gmail; Thu, 10 Oct
 2019 21:37:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlvD2TDsJlUNXodTBC6xDQfnOiD9mVqn1zWqFh1DkUmjqu7ap1GNGvK0i4WwZM4d3GOJJp
X-Received: by 2002:a63:560d:: with SMTP id k13mr14732552pgb.437.1570768636198;
        Thu, 10 Oct 2019 21:37:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768636; cv=none;
        d=google.com; s=arc-20160816;
        b=XmOZclS10/Cc4yIAWvvoT3c+BoFpKoxRU8p/WsayK0jwtVuDMCucaROmzSfMZIPbzP
         vsj0PS53vrolBT6QTClo/vmosuYA8vKwKvzNM1CR/mK7b/7xPL1AKOsxeae5mZD24gyh
         a5DL/NyNmbX3z3g1qqjZ8MnExDfMpWqpQyqvxOuIGciM/b4ebfhomUkpLSjkqKjFuEtM
         9Gna5WXmxHi3YO6xqZmOI7h9zZqfzWccIIa0Nb9AeZJ3EskI02ntxC0KKwwRaK6PdoCO
         AhO4oE2gy2NWKYu2V1FqpmAHlbrncaRU6tt8We8pM1UE2sU61z8rc6Sim5oc/0EJRkQ9
         F30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=EDTI2GeX3FrcFVnIUSZeUTnlMJONw5r+kvGxC648StY=;
        b=DEfss7J/4aRtHAA4H08xDbj8oJxSsIutoPZ6geiCbc6jdG3vWf//GygKwRgXJ1LjC7
         mIXJis2J8hABIBHu90EbdZrxohVJ4VmxfHdr66GosfZ3sEW21W3Ukug0lFgwTZcYsbju
         RgYAcJrS8Nf2K5saXqgp33Salsr9WpgMU+ESZjnn5vYPc6zVyJ361xxj24bTrTR9tlO6
         cdAtEWJwtdhAIdLVPXuDRfpEm3JRYti08S9urkp209bmqW0ck0S2akeZUmIhSvqMvMFz
         +Abk6LrROCeglYrGiMgZmgV6E3KwuPxf+aR6JHs9zgYP0A23g2DMwf9HRwWLVsIOVfQx
         eazw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hhNKDYSA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id o23si707059pjt.2.2019.10.10.21.37.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:37:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hhNKDYSA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id l2so5387724vsr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EDTI2GeX3FrcFVnIUSZeUTnlMJONw5r+kvGxC648StY=;
        b=hhNKDYSAM7ynBegAZqkREFgT/zzyC1UxwZz0M9oLHPbgOkDI4ppMXr+tQD7mhQ9tQi
         ivtS7zHQcR/I628xQtfPMwXa33JAEuGsCAeeI0X+PWzLm/sc/L4FEctlJE2biM83ipY2
         Nfrz/eK/Gf3QEHIpZTKhfNSKiFNRJvtsiVZ6wzEm9kvOfNgplfgoCO/CjUE9K2lZKXfL
         MB+WrAa12UTXv8cqX+WAHLcovijXyBd2H6pDGtf12tzCrMMnopqiHypQW4pd9vjMcXlu
         n36wGDnQXyhgFbiZyoyxRrbxMwJ2w/mgy3V0qnXkb/QO2uCvLe0UPll98gwGUczygogx
         vAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=EDTI2GeX3FrcFVnIUSZeUTnlMJONw5r+kvGxC648StY=;
        b=nk+9sjKY3AB5J7BEIDhRVdBakFtgbq17Tqah5da69aB/tiP5wN9PkrMYXGciRywW/q
         4i66x6oi7cWbZinSJuvkrp7vv1OziKpOaeiH7rDbdb2rWCL/uszMYNICpGNeKBShGr7O
         eGGpupv0+031l0jL36G5BzFyoclrX0utikSMdRiZS0g5TzeL96LXAIFm6NT816h9fbVI
         zvIHHQe8iqinJ10YRwcsy33OHPUikAN0MmMkAajBkLFbU+yYzOMiNpt/JFiJIsbdPHez
         8eFOIkq6Xf8f406Mv33l1h7HnLLfclvsltWoczWB5tH33icsPznKDLH1xI3DAhd3g+8F
         qcbw==
X-Gm-Message-State: APjAAAXqV2CNKb4/gGAjEuJbIev8p5G7By5c/lB7cQws0qSyJeNBKq59
	Zo3mOhpt1lllAoI3VhKl5OA=
X-Received: by 2002:a67:f98b:: with SMTP id b11mr7582733vsq.53.1570768635925;
        Thu, 10 Oct 2019 21:37:15 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id i63sm2088928vkg.24.2019.10.10.21.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:37:15 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:37:13 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8723bs: Add spaces between operators
Message-ID: <7cef58a29be7c6a4b980028e057626a522b2223b.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Add spaces between operators for a better readability.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 605155ea724c..0529a21c9740 100644
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


