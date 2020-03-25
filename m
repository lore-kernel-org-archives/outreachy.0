X-GM-THRID: 6808213747145900032
X-Received: by 2002:a05:6602:22cb:: with SMTP id e11mr4222061ioe.62.1585160788179;
        Wed, 25 Mar 2020 11:26:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3a9a:: with SMTP id i26ls827195ilf.3.gmail; Wed, 25 Mar
 2020 11:26:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vubp57X1twcaGy5+x0QoopV1PIve7WuHIOOR1f2Vqn7tmWPZT9GDNiEpEvfpJIkkCZborNp
X-Received: by 2002:a92:7ec5:: with SMTP id q66mr4825784ill.110.1585160786932;
        Wed, 25 Mar 2020 11:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585160786; cv=none;
        d=google.com; s=arc-20160816;
        b=ciguw73PBRGvgV+MA+sZxXSvsPP4HTn9UzZRf/j6bxnKds3Dc4IHLrsOhk9NJKmz5e
         jcFMSLeKAm4mkf2mpNtYowRmS3/W+CGbjveXPwKblDvvhxtmAAXzppzhvSRJdVzc54nL
         FeU+yoMjGhJg17gpNVxd9XWG5sEDR/u0HsllVrqoyV5XzI5E0YvjFcwMUuVzA57NvIWW
         EqOcCN9uUWUM8cf5kpoXWJfMqWZjA3EZfOy/L8fXuk/0FtS6CDaMEHBOGlzaQY6LXTBM
         lrJDeL3+KV1AW7axSWuk90s8cykUusxb2JBlBD3zfz8l+mCjNXXUTJGUQhjh69ZE379i
         syhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=rdOwQ11n3cpKxP1BnmbKbCp9D6XytaUHGx7F/xFAJIw=;
        b=So3bIymhpJQs0HqqGWEW46eyp7nDGpwGd1Aoabkaq0lks1U8GLPLgPideH+yHhKxcI
         bdu8YBReAwipEhvvp5mwdtGllbc9mzzRJC1JY4po2vwa4Shpl0eZna2hPIumZDcAEj0k
         rJyA0vv0UjmnndjDgG7Jw6bQwlGqqZ9cQ9XKqrdvjdwjo+WjukgNVhe28pF2VmHLpWaW
         kW7ZCA9uVVFpz6jjYjLE3pkR4KCiWl+SOM2wJvuT9pZyfHmcpilbCFR0Tfdmpv8UTiJQ
         /DMr7Ifb3kMqRjfgMPxSfNF8/X67OGy4cT/LH+0iUNuoILxVQrapIJ6jDRcaaOCAhx++
         16dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLQ5jdqM;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t13si1766122ilk.5.2020.03.25.11.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 11:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLQ5jdqM;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 22so1449665pfa.9
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 11:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rdOwQ11n3cpKxP1BnmbKbCp9D6XytaUHGx7F/xFAJIw=;
        b=YLQ5jdqMUqkf5nUdhOeIqGBUKQMvKSU5dOE/f/on/yy1ZjkRYbO+QC0yH3loc1RBrI
         8vq2BARKAuVLS4B4rkewceFxkPUnbVuNcwx2TvXQGBJ/uyM5cua7oqCYDdFD4x3Qcf0P
         MVGIUCA8QeCEVWeuBNNruftZGmJfbxGwCw+w6rJpBshpXXluQcFANXQ3c0FkhgzZYold
         xF/N7snIgVzB7mPP3fxPlFSbTWs4Ln5Y9VO1dBgN8ri9Gy0O8IL1IC2rNKJS/Tcc0JBW
         Dr8qmOckxGoJMz/fdhJbasckqIEXNxe2IeItDFu9BvwmDJi8TL9a7Dqris43Fi0Ru1AX
         TkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rdOwQ11n3cpKxP1BnmbKbCp9D6XytaUHGx7F/xFAJIw=;
        b=i99hTAUoLIBJLMwvWpl66Mj5VWaXXGfqU+zb6sfPIdKqouLxB4Ecjqsfe+7Nl7Jym8
         URwjaijDBsTXRc5NNkwERkxOtFLPDPRjMJmCX5AaVRliaK7dE49oTBFMG4/SY6kJy0M7
         wZOjeKBi4NWTtmM+gxX9azs4r+/d5JF7NjqCTctGGWPSLJ7pypSjrLqklqAWi0GjCF0Q
         wA1kYs9e8xlhx9EWrZiafHkMuGnrMWGOrSB3zW5RSPTJ5OPuOjVkZK/CKwMpRqF5KL+X
         2d/mtKqJyITj1Di4yX/gxgcIfbhPKAWPR7jN4ZDmgELBK/xNzMrBvc1VatGoNGMLuFbO
         irrg==
X-Gm-Message-State: ANhLgQ0c299BtXbjjJ5OciSnlzO5NUvdlZ2FMcMBKeHMcwZO1kxudJ8R
	pQxAlq4/6Znuz95aA6c64833RTTvZM4=
X-Received: by 2002:a63:df15:: with SMTP id u21mr4022987pgg.95.1585160785420;
        Wed, 25 Mar 2020 11:26:25 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id k6sm4160953pfa.214.2020.03.25.11.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 11:26:24 -0700 (PDT)
Date: Wed, 25 Mar 2020 23:56:17 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove blank line before '}' brace
Message-ID: <20200325182617.GA9411@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove unneeded blank line before a close brace '}'.
Issue found by checkpatch.pl:
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 9c4607114cea..5ebf691bd743 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -434,7 +434,6 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 			rtw_secmicappend(&micdata, &header[16], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
-
 	}
 	rtw_secmicappend(&micdata, &priority[0], 4);
 
@@ -723,7 +722,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 			TKIP_SW_ENC_CNT_INC(psecuritypriv, pattrib->ra);
 		}
-
 	}
 	return res;
 }
@@ -829,11 +827,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
 			res = _FAIL;
 		}
-
 	}
 exit:
 	return res;
-
 }
 
 
@@ -1219,7 +1215,6 @@ static void construct_mic_header2(
 		if (!qc_exists && a4_exists) {
 			for (i = 0; i < 6; i++)
 				mic_header2[8+i] = mpdu[24+i];   /* A4 */
-
 		}
 
 		if (qc_exists && !a4_exists) {
@@ -1234,7 +1229,6 @@ static void construct_mic_header2(
 			mic_header2[14] = mpdu[30] & 0x0f;
 			mic_header2[15] = mpdu[31] & 0x00;
 		}
-
 }
 
 /************************************************/
@@ -1413,7 +1407,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		}
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
-
 	}
 
 	for (j = 0 ; j < 8; j++)
@@ -1719,7 +1712,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 		}
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
-
 	}
 
 	for (j = 0; j < 8; j++)
-- 
2.17.1


