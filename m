X-GM-THRID: 6746399399110246400
X-Received: by 2002:a05:6602:2196:: with SMTP id b22mr1043638iob.201.1571285109110;
        Wed, 16 Oct 2019 21:05:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a81a:: with SMTP id c26ls250867ioa.15.gmail; Wed, 16 Oct
 2019 21:05:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxBnTp6AaPf4fOpfkt1od5aEres56Oa7dzSWx7kG4/E6IBiQAVVb9Gq5fvoYw7bRfhW4Mju
X-Received: by 2002:a6b:b258:: with SMTP id b85mr1049743iof.71.1571285108015;
        Wed, 16 Oct 2019 21:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571285108; cv=none;
        d=google.com; s=arc-20160816;
        b=aTRf6qEMSGBIbQFDm2FKWN7WHizSIL5UBsSZyepjmXO+IhOr3c1usu3u8F89yWhqRV
         nmrJa80gqrvQBiXKw3pfdCjULflTVbjAGKl9VqTRtj7+f+6zxV/YMpOCTpMjYWrVblTV
         5zf6m0DrGTuABU4pCKIayXN1lsux4rYW5boQlQ56zWOMHVE9kmdVONX8+/vuBd6+VWX8
         ALEoecbJSZbmm9vzwmioLSUXFu/B/iFFKUyDAz7mMKsHDicXts7ncO/eiv7XisYLTpO2
         R3++HeRw8zEic4xR2caSinRM5g5V73dEy5t7ClbrUueS+jLirKv5E8D39GDGL6sW5z5c
         ENgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=GxRivBoAuP1jq7O/jZYItGjqJPYKBpOun+dJkGl8oow=;
        b=GKQt4mW/wo7zHrOBPzld7Bn8xed0BkKJwax17OtI+SfiwziXajnl8hHkco622eRdHM
         NvkE4DB1q3W6PitzuzTc+Utd1MrQic8YNm4tt/RXNhuGvXcXPuaKmzTBol1tg2tZXvtR
         sCNnTz+1cHUFCAV7FKv3UuADmmI0qN9AxNgbXhMXjp1cGI6rNlDZ4/lclCt4x6UBSvZJ
         q8J4jEVbGNnixgEwiCoAMoZ8Z4Pd7qbIg2VSJaJ8RN5Y7n3QI78QIaKOB9JWmFdb8b1n
         +J0ayHsHZcOO0oT8NiXO6vb7DSkI7wzX0TwfduOjvysPiZ5eatiy7QswCtHENUOoMAYp
         tlRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S3w/GGlC";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x3si22191iom.2.2019.10.16.21.05.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S3w/GGlC";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id m15so1623915qtq.2
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GxRivBoAuP1jq7O/jZYItGjqJPYKBpOun+dJkGl8oow=;
        b=S3w/GGlCMHr9OLTQT2HBujYREVLbcxFW/GQn/ZqMUY3RLOe25FIVchoqG4TiUJfxZ4
         1yTcb4z86C+RsiJvJxEpM8ZFmRFG0ktZqPQoagzu1mKG/dR1P3PRiAN76VL/9Jw3wgSF
         4fyhqUJNV7wCmD0pWniBj3A3VxQo/JPAH3BaicbChy/m9h9As1JTIhNfZnxcFcFOKgYM
         4UzRq912/lu0JMms+VWmbwoAoG/IpLBXgiefrlRoGiOmuX9VB09HJUflLeVLG+eZAOlS
         qmddqXl0T5Nh42p0Uey3hp+dg0DnKwVN3F1vqQpRkroMLNtkv1Q3nP5YV4e2QXal02d/
         wOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=GxRivBoAuP1jq7O/jZYItGjqJPYKBpOun+dJkGl8oow=;
        b=kfqmL0+3ZmQSo2naNc0myi7tun5s5/r0SJ/wD6Iddx7iyCb6IdSkLlDCbNQnUmgM9h
         fDZXdOpRHsVBAUBWQcPfyucGPCNYx3G/sJebCYaKMPfdKfUR8TOggx5fZ39lYFh1RCAW
         Y0rweXDLG+Odya8uU3oo5jGFPU+HpXVUnTvOJp4tk3EcflpbXMJFwYQ7mlwx3J7uSsnZ
         ffpJcfD/NKYO2OlLT+hnXNNiATLI6mbTnZXpTyqJIZNLolPBMMiMNzZJLkUNEJ9U69xl
         gaqB2UOsALimK0ecsg0tW50NK4+6o9nf3Y2vJE5Vxn5XDsXCToOkd/XtZl0C44fCKGsi
         PCfg==
X-Gm-Message-State: APjAAAV29rBSyfS/WYSjUFETI9PeNRHJ4gjd4PgSZaGdaOaJnT+MnbrQ
	ueHSKSUXLhGna3z6EJ0/XfODhdRLfSiR/A==
X-Received: by 2002:aed:3ba9:: with SMTP id r38mr1813993qte.100.1571285107726;
        Wed, 16 Oct 2019 21:05:07 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id o14sm656461qtk.52.2019.10.16.21.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:05:07 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:05:05 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/7] staging: rtl8723bs: Change tabs for spaces
Message-ID: <7b06c103665ab7250dded8c5dadc093228eee7b4.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Change tabs for spaces when they are incorrectly used as separators.
Fix suggested by Julia Lawall.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index bf3fdf6d539b..63b65359e37a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1552,7 +1552,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 			 u8 *pframe, uint plen)
 {
 	static u8 message[MAX_MSG_SIZE];
-	uint	qc_exists, a4_exists, i, j, payload_remainder,
+	uint qc_exists, a4_exists, i, j, payload_remainder,
 			num_blocks, payload_index;
 	sint res = _SUCCESS;
 	u8 pn_vector[6];
@@ -1568,8 +1568,8 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	u8 mic[8];
 
 
-	uint	frtype  = GetFrameType(pframe);
-	uint	frsubtype  = GetFrameSubType(pframe);
+	uint frtype  = GetFrameType(pframe);
+	uint frsubtype  = GetFrameSubType(pframe);
 
 	frsubtype = frsubtype>>4;
 
-- 
2.20.1


