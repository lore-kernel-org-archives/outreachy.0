X-GM-THRID: 6746399399110246400
X-Received: by 2002:a81:254d:: with SMTP id l74mr887160ywl.409.1570768662216;
        Thu, 10 Oct 2019 21:37:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:6ac3:: with SMTP id f186ls587508ywc.8.gmail; Thu, 10 Oct
 2019 21:37:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwBkHsJxPQvwO8Or2Tu4Y3vzicWAZA7sjd43MtM1Mb3HmAd5DaU0nQcRCyw5D4S5A61hSRm
X-Received: by 2002:a81:5597:: with SMTP id j145mr933366ywb.145.1570768661054;
        Thu, 10 Oct 2019 21:37:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768661; cv=none;
        d=google.com; s=arc-20160816;
        b=MWIrrrr8ngd+8SdtYsma4wNDnQu+8zCguNoHvu0JAB5XPGYpvRjltzUvmeCk4vkBX9
         YxFbjL2ffb8NXOea7FI/ftK1O2KgcGSNreX3V2kD+zjk8qm0eQMWw2NERbJgGU5KsDpd
         fwf8dnKeS+2wB486rHJw2eZQ6HTIt/vQLfo4OKnCM13BShCk16rKdbO75qd/n8NWAwmv
         6xQCgf6AyfzsVsj0kSK1hLrKhmLJRZcJhbwOlI6uaJ1Pd8Cg9KjKzLl0ntH5kvFCxfBN
         Qc5bCP38/CIZfZgNLalZfxGTltQhuhtlJj6vLnwOjpkJ8NxIbjpKa1FpqTlhLZL8ChUZ
         waVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Nnxol2Yrl/0y4lIenUVNLEIHyoW7m9YvkJAVudX+hWY=;
        b=I4hHIWwOzPgJ3g3HTSMXAkaB4yhIEMShTslucgb91MuiJ6KRu6T3Mtqg+O6UZgGXsV
         EXbrTyQdpE9QoMKVYjoGK+JlMdKCcpBzXga51WJoE1W+0J7YB5zpimYyJiCLZhLz8uCe
         ZUeXaMRwPVZrSeRhwAIR+XNLVtjotR0w+iqLSsClaFWn3/Juhs8B3mprlW/YregJHnjz
         kBm9ZMc4vGhdOI2bC+TI3CTfmJpVbjBtvheyxgyblAScE+I8jG605sBVKEmI0+xNmTf8
         3SReVi4L7fdhngmkDZCCcfvwff5oFS6H5WAo3IsjsOI3+nIRSLtSiXgu4ovinE2BmNBZ
         +kIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv61I8+P;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id u8si337617ybc.2.2019.10.10.21.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:37:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv61I8+P;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id b1so5389740vsr.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Nnxol2Yrl/0y4lIenUVNLEIHyoW7m9YvkJAVudX+hWY=;
        b=Yv61I8+PsAA0Ce3oDt6Wbd3dJC1HfRVhLU+woSd/0fYK7a9Iro2q0C+D9MLVPL2MeO
         YElLZwBhOmAZmoXUdCkacWq/ZPEBhCQezkG5BtqY58D4uWPBnNEh5WFUd52m/kTmXIf7
         HM5yGzs/oyGoiUnD65y5Vmxg6a/WeTMeVT7B2RKYxGvjoEzGNP7Ygu0eykG1oSiwWiCk
         8lc9naXpBm10SVscjopkQEWX5oJLwgI9BmFwJ7Olfg3vvsz2A7Q3oJraZsgILoG3UyKc
         XKGN+4NIuZQD3t6AWiiT95REBTeP7UlYizNrDEVi6L9BxranwTpoGSqc3HsNYshtbIg0
         o2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Nnxol2Yrl/0y4lIenUVNLEIHyoW7m9YvkJAVudX+hWY=;
        b=sAwX0Xlyis4PKi61GXqTkjJ8kcssvSyuc0zJyUnCgV6ku988QAapXoUz4/mB2kVzaa
         nUNntkSEXSZ6EIKBq8EhHioZ5JkRvO8z7ABsyDJcrzCjo58flNSJIrNNX5B3Yw8s/5qK
         UkaAXTnZkG4uTnusQ/WpyuLMUDyyQhGrxw9Uc2VEilrA6bM0qAzgBB/triaZwkHPpfJE
         D+Ywf5+29AIIGiQfZyd9ad+r9OsUO2OuE6XeIRFqyj0Tp9OGqypZkAEyMrL3ewC2Rbyy
         ch0jplTLee1gBl8etESpP+3Jl7FGcwIvH+auH7ebscz7mIDjynOb9pSIfQGGws1sbYu/
         Lq6w==
X-Gm-Message-State: APjAAAXRwZ6S8CvFsvIoYw020eFi6j1ZnPIS/eu7MnTk8SHNjOeLSpw9
	Yzplpr1wCoyjvp/I9WXyDBNqlWWIvjZysA==
X-Received: by 2002:a05:6102:3139:: with SMTP id f25mr6739546vsh.221.1570768660651;
        Thu, 10 Oct 2019 21:37:40 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id a4sm1554643vsp.12.2019.10.10.21.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:37:40 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:37:38 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8723bs: Remove commented code
Message-ID: <cccff01c6626a0ba9cb79d1f9c39ae94d910d883.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove commented code for a cleaner file.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 56 +++----------------
 1 file changed, 9 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 0529a21c9740..4f6802b3ade1 100644
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


