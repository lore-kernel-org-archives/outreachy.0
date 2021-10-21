X-GM-THRID: 7021611435626070016
X-Received: by 2002:a37:a642:: with SMTP id p63mr6429092qke.193.1634846345670;
        Thu, 21 Oct 2021 12:59:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:4483:: with SMTP id m3ls1988719qvt.5.gmail; Thu, 21 Oct
 2021 12:59:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVtGgrgee/iSkYUWabMxGvr1v/VEJ0OdHqmsrQB5i0U0xeQX4zWgEXKo/fGUJ/biRXjT0H
X-Received: by 2002:a05:6214:2308:: with SMTP id gc8mr4698733qvb.31.1634846344931;
        Thu, 21 Oct 2021 12:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634846344; cv=none;
        d=google.com; s=arc-20160816;
        b=TwGW+xR3+BWn3qN1D9SFiX/y88cSOBBsI2Zy7D29ir2AXGiWFFef72NkVF/PtyweRg
         SfuQWTfD5vopbXUf9XewlkQfnO1ddTGg0fu42tmNpM7rWw69RhYcJnox2YCn3LZzOHpZ
         V7iNiAqi4Zwvgm4z/+qL9fWqZk0qmIjHH3SCfS5wmMRJZ3hn2uwFpr4kYMPkJoSBU336
         MHIriatFFYx2+9ohJP4kbb4t5hcPzdyVIslN8ZxcUiLToXhRxLFUMWJ9pxceeSnsW5qb
         Of/XmINttdJvd4JpROCQuqzLDjJz/WX/S2/j8r9BqPLEVt4vHGZtq9G++nhFFaE+Q6WY
         Xr6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yhB4mSvRCSPt5nKbZ7JtOxkpWZ8DUrHFAW9kstQCtDU=;
        b=Q7PnWLtS9JWu9ghxI8wyVNbd19HCzD3JRetFSp0rkcY+jl1TXhl5J3wOtxaQj+t52m
         y8P0z3iFTqwzHmj/bRD+a46OF5xuFbYaH73RfcmekvUFL3IOsohgRVq3Qo3DnT84sdxg
         M5Vp1pXyROw9v06B2sX8TruC+rGv6rPA/YsleLV2H/M+KEAZImWs2I7Np+4CUb7Ck6tL
         4qdILu2Xo/PJaFf6/IljH5VCh1xb/0A4tDVGHrmzmhP6KjUV3/XT7Ow26NfkXczEfp11
         BW+z+8vw71e/pP0mbBb9pp6kTYI7Xz1UDlsp4k0b+VBZRZpCorDEKGeL/zxp4uEvUAko
         M5eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AAAQXcYS;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id p8si830271qtk.4.2021.10.21.12.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 12:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AAAQXcYS;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id q5so1267303pgr.7;
        Thu, 21 Oct 2021 12:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yhB4mSvRCSPt5nKbZ7JtOxkpWZ8DUrHFAW9kstQCtDU=;
        b=AAAQXcYS4Dwa5cXJ0AsuPY1prSnzBTUxtMO0SbpW3dQ4LLAAx84Blg1CD6W0BmrCH4
         ZEeb6V2h4PloL5ciBnk7+A9IeCQX/NC5OYvbGcm6lT4b5rLgtb+ZmUQDKQkyGOUDmiUU
         oj+XzGFhEETurm4YwSi6LcmQn/fcHiRgxMk/CdjaBwSGllxC95uUkvxDzQ+4FLHmWIGF
         9M1JnzBRFj2gMk8ucjmiP7Ym7STNy/Y7IWAI6krLIcNhaa86lvcz0sSlcHP2im7FSPrs
         PAUiJWVy/dS0WVdej/luVMXK2nYrXxQpvfp8TYNyKpPcKVLX1fIwgCY5taMxukQHiYcS
         4sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yhB4mSvRCSPt5nKbZ7JtOxkpWZ8DUrHFAW9kstQCtDU=;
        b=T1s8SQ4RtD68MPjdJhC7WfVX9xAaAiDkt5yqPHzh4IX3TY0jX+hOlY9w6pCpHotNFk
         OyrjGYQPjKgRotGWRFiCOYaVgfpqiMT6PBemOEzdAq69UlqaTqn/ZYX5m9WhAbwHKUON
         lImGbwWSKU7VUtlypSDOLRLKRdvmyy4WATvp8subnJTOmH1MSYNBY0gq1GazDXs8/1ar
         ltipSQHzbqWNfE+X1bQXr222jFeQ2rKU9BQx1kZssgnX/oaEpq4/hi/wX4ke9P+qelU9
         3gNc874uW6zjmy9NYB9SFWQYCy64HBRkNyezd8XO6y924arIIUQvizKpxDutAkD3gM+N
         0SwA==
X-Gm-Message-State: AOAM533k41kE+csubzJ16pfpjFqNayZaL/smG/vyrVQAe09cAD3bO6jh
	Pu1QXNogxZJu/Z8HBlRKvoQ=
X-Received: by 2002:a62:6206:0:b0:44c:bc1f:aa5a with SMTP id w6-20020a626206000000b0044cbc1faa5amr7620355pfb.5.1634846344131;
        Thu, 21 Oct 2021 12:59:04 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:1fee:e3e7:7dfb:56c1:efef:3c0f])
        by smtp.googlemail.com with ESMTPSA id v9sm7198898pfc.23.2021.10.21.12.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 12:59:03 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com,
	kushalkothari285@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8723bs: core: Remove unnecessary space after a cast
Date: Fri, 22 Oct 2021 01:27:52 +0530
Message-Id: <f350e30b1e09332dff896b6588d962aab9800a52.1634845504.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634845504.git.kushalkothari285@gmail.com>
References: <cover.1634845504.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Issue found with checkpatch.pl.
Space after cast is not needes

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 88f6b7405106..fce3256cc275 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -922,7 +922,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
-		psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
+		psetstakey_para->algorithm = (unsigned char)psecuritypriv->dot11PrivacyAlgrthm;
 	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
 
@@ -951,7 +951,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 		}
 
 		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
-		ph2c->rsp = (u8 *) psetstakey_rsp;
+		ph2c->rsp = (u8 *)psetstakey_rsp;
 		ph2c->rspsz = sizeof(struct set_stakey_rsp);
 		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 	} else {
@@ -1002,7 +1002,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 		}
 
 		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
-		ph2c->rsp = (u8 *) psetstakey_rsp;
+		ph2c->rsp = (u8 *)psetstakey_rsp;
 		ph2c->rspsz = sizeof(struct set_stakey_rsp);
 
 		memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
@@ -2027,7 +2027,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 {
 
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *) (pcmd->rsp);
+	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *)(pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
 	if (!psta)
@@ -2042,7 +2042,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct set_assocsta_parm *passocsta_parm = (struct set_assocsta_parm *)(pcmd->parmbuf);
-	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
+	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *)(pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
 
 	if (!psta)
-- 
2.25.1


