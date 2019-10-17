X-GM-THRID: 6746399399110246400
X-Received: by 2002:a62:e206:: with SMTP id a6mr1326725pfi.245.1571285011512;
        Wed, 16 Oct 2019 21:03:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls267192pfb.2.gmail; Wed, 16 Oct
 2019 21:03:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyIP7HbR6OtsRhJrbZwBzeMjX3INeeyvVzq0Fqon9lvMODBJfgnzyvz/OM8Og1MuKMeE9Gu
X-Received: by 2002:aa7:8583:: with SMTP id w3mr1282481pfn.129.1571285010372;
        Wed, 16 Oct 2019 21:03:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571285010; cv=none;
        d=google.com; s=arc-20160816;
        b=0WY0BkyETeZDnyZxoeiJ89AMbQxAl1QdmakVm4O0IUXuEb6Sp8vzCOj9bRboUJKXlb
         fBWduDlTJeBdizOozTPoEJX9cCTrWifoEg4FsTlKD68jS9XPCZZEuvAQzg6WuoNyrlyK
         DlB2zTcdcxLxQ6MQpVECCssBtbun3TTC4pon7Arq6VdZkHVPahs8OS9ayy8QPjUaVs4v
         8+ZR2CSZ9Fc8IvqzY9cDrwrcmfSF7q1ofD2vYkKZron0JCSGni5awW5XSof7uo99qW+n
         Wua23XV6wS2be+d4VZgJiaPnfOc2N9ufPT8bxHWmv2upkPFP5gYDEnDpG5V3FNUuCJkq
         KRTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=lv3wrdaeI7oGjBWIM6azRe/1ypzraOkVyTTL90gudYg=;
        b=p1dsfEYIDaayITeSxSW113Xs9G+ijsiKPXrh42Aorwy2xOND2wQpP2OBcajtF7wmVs
         KbW1ptbCowqW6tMi2IrMsO3nLtAyhekELZIZZF14FjGsed0iovMFuD4txHcnBI1v49gs
         4ddOSiWwdUFl4FPglbcBfuSkb7YzNbMetuXJMzm6iWUiJuy+3c3shtDoRyEqeILIHcgU
         iWlfSJvBM1DGBIfmyOWdx1+6MI47Fc7/Zugff5qqI6SvHkwXeCjUDiUPMv/8XiVP50HH
         3fdO+oCOHCqraFMey8VmBbLTq7FgLrWXdqKi2JSUVs3kLwHONjSAv4j8ropkSgfuvp/K
         giiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exsJmuoe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id t22si34320pjy.1.2019.10.16.21.03.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:03:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exsJmuoe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id 4so636442qki.6
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lv3wrdaeI7oGjBWIM6azRe/1ypzraOkVyTTL90gudYg=;
        b=exsJmuoetCz4777Wx1YMWDEKM7neyB66OhruVvOIydTEn0Nmjhx3Iu38JS7oUT4Zqu
         CI/S/I1xqCN95HtnJwiW2T/UyXIR6NOiBIQophY1Tc8cZA+pPnL5xYty1dOKrPX5e43F
         +Z9Atato6ug+5kRV1yqH5e++fiSlstn93v+im1FhYEsUQrUpdUX+OGW7R2sVNkii+sgT
         3S/KZvoBAdxuE3OsYe7PotpbnbuHKrXLbkD5KczXXdEUJh/PYalboI8cvygYcn9oi6dA
         O3TCKBytozkY3bKWOB9PbHWmaKte77omhtDmbtaVxtkaLvNaO/8k8MSsBMq+iiBzQxvi
         Ja3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=lv3wrdaeI7oGjBWIM6azRe/1ypzraOkVyTTL90gudYg=;
        b=d+GdLaAodr+Tn9Gqfa07U/SRbVKYViuiTvVTEFvmom9FAaCD+NksAfjM3epK8YGYWj
         9NKd2bw9qqMGx4Pnr3Nnk6EE5pvTP/Nm++V9ZfkKfDTcg0kPbs0chB5nB1T5AodLMv8j
         tk/H9HvdQfSRqyXoFvAtGOzdYombYpgS6NeCR8SBR7WL8QoO9HjSzrCsIm0icEZHdi2Y
         4nzneLmlbtpfPQzYndCpay5NwZ8zUchkEb8lrTAc86wEhk0j9GMpm1y4/i4BC66DAPbB
         WPlqsCTEepG3clOHbnoFpAuWtrN74jSw0DdrzTopHwzPCFFzwFkH2knxk8J/EITRIL+3
         baSA==
X-Gm-Message-State: APjAAAWYQpu+82z9lnhMPHRVCVV1mESESlF2OafH4lu0TYHDYPOBcyz8
	NzpcZr3vxGynMEKv1z063dn7vI7lIeWkBw==
X-Received: by 2002:a05:620a:785:: with SMTP id 5mr1452612qka.114.1571285009897;
        Wed, 16 Oct 2019 21:03:29 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id m19sm536479qke.22.2019.10.16.21.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:03:29 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:03:27 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/7] staging: rtl8723bs: Remove commented code
Message-ID: <61f9b94781eb0ca1c94a5b6b8c37a8c2d0caaca6.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Remove commented code for a cleaner file.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 56 +++----------------
 1 file changed, 9 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 1bda534384a4..fea347e3a04c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -666,7 +666,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 	u8 *pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
-	/* struct	sta_info 	*stainfo; */
 	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv 	*pxmitpriv = &padapter->xmitpriv;
@@ -681,32 +680,12 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	/* 4 start to encrypt each fragment */
 	if (pattrib->encrypt == _TKIP_) {
 
-/*
-		if (pattrib->psta)
 		{
-			stainfo = pattrib->psta;
-		}
-		else
-		{
-			DBG_871X("%s, call rtw_get_stainfo()\n", __func__);
-			stainfo =rtw_get_stainfo(&padapter->stapriv ,&pattrib->ra[0]);
-		}
-*/
-		/* if (stainfo!= NULL) */
-		{
-/*
-			if (!(stainfo->state &_FW_LINKED))
-			{
-				DBG_871X("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, stainfo->state);
-				return _FAIL;
-			}
-*/
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
 			else
-				/* prwskey =&stainfo->dot118021x_UncstKey.skey[0]; */
 				prwskey = pattrib->dot118021x_UncstKey.skey;
 
 			prwskeylen = 16;
@@ -747,13 +726,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 			TKIP_SW_ENC_CNT_INC(psecuritypriv, pattrib->ra);
 		}
-/*
-		else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_encrypt: stainfo == NULL!!!\n"));
-			DBG_871X("%s, psta ==NUL\n", __func__);
-			res = _FAIL;
-		}
-*/
 
 	}
 	return res;
@@ -777,7 +749,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	struct	sta_info 	*stainfo;
 	struct	rx_pkt_attrib	 *prxattrib = &((union recv_frame *)precvframe)->u.hdr.attrib;
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
-/* 	struct	recv_priv 	*precvpriv =&padapter->recvpriv; */
 	u32 	res = _SUCCESS;
 
 	pframe = (unsigned char *)((union recv_frame *)precvframe)->u.hdr.rx_data;
@@ -822,8 +793,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				no_gkey_bc_cnt = 0;
 				no_gkey_mc_cnt = 0;
 
-				/* DBG_871X("rx bc/mc packets, to perform sw rtw_tkip_decrypt\n"); */
-				/* prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey; */
 				prwskey = psecuritypriv->dot118021XGrpKey[prxattrib->key_index].skey;
 				prwskeylen = 16;
 			} else {
@@ -1435,7 +1404,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	aes128k128d(key, chain_buffer, aes_out);
 
 	for (i = 0; i < num_blocks; i++) {
-		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);/* bitwise_xor(aes_out, &message[payload_index], chain_buffer); */
+		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
 
 		payload_index += 16;
 		aes128k128d(key, chain_buffer, aes_out);
@@ -1446,7 +1415,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
 		for (j = 0; j < payload_remainder; j++) {
-			padded_buffer[j] = pframe[payload_index++];/* padded_buffer[j] = message[payload_index++]; */
+			padded_buffer[j] = pframe[payload_index++];
 		}
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
@@ -1458,7 +1427,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 
 	/* Insert MIC into payload */
 	for (j = 0; j < 8; j++)
-		pframe[payload_index+j] = mic[j];	/* message[payload_index+j] = mic[j]; */
+		pframe[payload_index+j] = mic[j];
 
 	payload_index = hdrlen + 8;
 	for (i = 0; i < num_blocks; i++) {
@@ -1472,9 +1441,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 			frtype
 		); /*  add for CONFIG_IEEE80211W, none 11w also can use */
 		aes128k128d(key, ctr_preload, aes_out);
-		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);/* bitwise_xor(aes_out, &message[payload_index], chain_buffer); */
+		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
 		for (j = 0; j < 16; j++)
-			pframe[payload_index++] = chain_buffer[j];/* for (j = 0; j<16;j++) message[payload_index++] = chain_buffer[j]; */
+			pframe[payload_index++] = chain_buffer[j];
 	}
 
 	if (payload_remainder > 0) {
@@ -1493,12 +1462,12 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
 		for (j = 0; j < payload_remainder; j++)
-			padded_buffer[j] = pframe[payload_index+j];/* padded_buffer[j] = message[payload_index+j]; */
+			padded_buffer[j] = pframe[payload_index+j];
 
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		for (j = 0; j < payload_remainder; j++)
-			pframe[payload_index++] = chain_buffer[j];/* for (j = 0; j<payload_remainder;j++) message[payload_index++] = chain_buffer[j]; */
+			pframe[payload_index++] = chain_buffer[j];
 	}
 
 	/* Encrypt the MIC */
@@ -1515,12 +1484,12 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
 	for (j = 0; j < 8; j++)
-		padded_buffer[j] = pframe[j+hdrlen+8+plen];/* padded_buffer[j] = message[j+hdrlen+8+plen]; */
+		padded_buffer[j] = pframe[j+hdrlen+8+plen];
 
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
 	for (j = 0; j < 8; j++)
-		 pframe[payload_index++] = chain_buffer[j];/* for (j = 0; j<8;j++) message[payload_index++] = chain_buffer[j]; */
+		 pframe[payload_index++] = chain_buffer[j];
 
 	return _SUCCESS;
 }
@@ -1537,12 +1506,10 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	u32 prwskeylen;
 	u8 *pframe, *prwskey;	/*  *payload,*iv */
 	u8   hw_hdr_offset = 0;
-	/* struct	sta_info 	*stainfo = NULL; */
 	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv 	*pxmitpriv = &padapter->xmitpriv;
 
-/* 	uint	offset = 0; */
 	u32 res = _SUCCESS;
 
 	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
@@ -1558,7 +1525,6 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		if (IS_MCAST(pattrib->ra))
 			prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
 		else
-			/* prwskey =&stainfo->dot118021x_UncstKey.skey[0]; */
 			prwskey = pattrib->dot118021x_UncstKey.skey;
 
 		prwskeylen = 16;
@@ -1602,7 +1568,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	u8 mic[8];
 
 
-/* 	uint	offset = 0; */
 	uint	frtype  = GetFrameType(pframe);
 	uint	frsubtype  = GetFrameSubType(pframe);
 
@@ -1878,7 +1843,6 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 	struct	sta_info 	*stainfo;
 	struct	rx_pkt_attrib	 *prxattrib = &((union recv_frame *)precvframe)->u.hdr.attrib;
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
-/* 	struct	recv_priv 	*precvpriv =&padapter->recvpriv; */
 	u32 res = _SUCCESS;
 
 	pframe = (unsigned char *)((union recv_frame *)precvframe)->u.hdr.rx_data;
@@ -1895,8 +1859,6 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 				static u32 no_gkey_bc_cnt;
 				static u32 no_gkey_mc_cnt;
 
-				/* DBG_871X("rx bc/mc packets, to perform sw rtw_aes_decrypt\n"); */
-				/* prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey; */
 				if (psecuritypriv->binstallGrpkey == false) {
 					res = _FAIL;
 
-- 
2.20.1


