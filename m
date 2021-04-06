X-GM-THRID: 6948109803234263040
X-Received: by 2002:a05:6512:1022:: with SMTP id r2mr21464242lfr.178.1617732877040;
        Tue, 06 Apr 2021 11:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls3761682lji.6.gmail; Tue, 06 Apr
 2021 11:14:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBAvK+Ufik3TMyWT1YG5FLqiI1Pzo/LzMb3GDR+pmFwak3kuloaZIG4fpdMbMqftCuDKkl
X-Received: by 2002:a2e:9250:: with SMTP id v16mr20353525ljg.162.1617732874256;
        Tue, 06 Apr 2021 11:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617732874; cv=none;
        d=google.com; s=arc-20160816;
        b=GP8WdWPPGO3AUlhqJwelxW2ibUdtMX2XV3ULRP72JAKoUvx7xfeY9A6Hf7QEJapdFv
         QtiwNCsyw2HHdNXE6p1vySItpkR+G8VVxWZCbxIM8Lu6QtS9dYJDv9L7/WHPZcoShYfa
         A+qJ0uhlIeA1aOe0yj5x/Mv97h7+BCgTlMLDH+Erz0bsJqFtBmi5ZXy1JxnFp8PAboWq
         u3yKpPivdLkMJZZKgqigY2JxkrWFMOVO1ahX4kAw3g/3+u2LxYx7RO1rKMKZn7cjCVKI
         2GEqwvx3dz6YdW4QieYyXzLIU0fChMyt96BGPnukVy4hdrAmWqnRtRJpedjXM9R6kJMx
         /l5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UBnStJVt45cTAjhC4EKrrJE26aOExYNYx9iIn/5oiDo=;
        b=RiRYOllJNK32LZH4+IEPiSLvkMg1fJ4A3o40hg+0cXmpByIvoAaeylvuxElIEjmu3n
         J8N9YXGQD9End/ouztWp/CGY0C0CjuibEM+alwDbNI3Z4vYe41JLFS8Uk9Dt21T0XImq
         /zudos3kGgukLi8956Q8UFCPtEO1LT6BvKnzOWO+ZRtVnEXXy0gAx/Pe2ruemrxvjs4j
         rTxYq6scELM9kPIkyT/YJOgPM6450eREKdk2TATDNoOP9x0xTagKtJ22o3kKGBhgaT68
         9e99ot8YxT5Yhb/UvihPRrWksTqy3NtQdoEasyftASRHrFqizOu2KhIcjkxOjfol/Pki
         Kqxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScRAg4b5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id b12si1287043lfb.3.2021.04.06.11.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 11:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScRAg4b5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id r22so5191624edq.9
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 11:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UBnStJVt45cTAjhC4EKrrJE26aOExYNYx9iIn/5oiDo=;
        b=ScRAg4b5Y86C+5rwhTCSRpuzx54P92D3Kas4YYGOru0zupPhT6QQihvTGGd9NJ9LGa
         oX2hW4Aql3nw7fjsczkf1Kfw2NNXlZYqOUUbz4NkXo55h+4AHg7rpgc188v4iLdagYoK
         z8OjYl00qmaTsmOa8XZrWu4Va0VN+4MTrTIzHsllNfWk2kKjR8f5siEicalOeEzVZHKe
         ZGTFMqDto8W4vTCavnIrZg7TAip6MV8HU/WAudXebeKEK+X4yyZiYS0CT2t/B3nig4wq
         tWQ0rMjixwJeZ149IYVFryqi4YWHfQFtBXMNzl6Jqn7dG/PNkU1haydYK6jlY2yNfXAo
         B7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UBnStJVt45cTAjhC4EKrrJE26aOExYNYx9iIn/5oiDo=;
        b=bygU8QoLhGCHnZcPj8MIkNaQOkZ7EUymwYvBh+2YsMyhMEdnQLaV4tASOaCOURUvx8
         1wpapDl5fMTcfedfHz0qFgjiMJTmtMCFEK9NKuQXmiAPmIhUo8KWt4kNquITCO6YWHBR
         PvYi92BQnRujetlHhBHkt7lXjlqOGlXbp1rndco3zRtX3aSp4kgAR+cskrBgtnKnkrqQ
         mBptqKOHiBayhADkaFrSNriaBFDzmPoItBkBGEz5jt51hLmJHmT46R1iDbFQfSejysgc
         eyM88dcnGTaNbBm/M+lCuRREnLaafexLF5p6Go8NHGJslqeMvFcrhLJxTEtSlyghVYG2
         TSIw==
X-Gm-Message-State: AOAM53355JyqT7/THZyBDVd+54sip3g5yj21ZXBnVoTApK2VGqXA04PJ
	/99Gbi49odOdgp/KLbG2MJKKUECHAWEfgfmG
X-Received: by 2002:a05:6402:229a:: with SMTP id cw26mr13270091edb.266.1617732874034;
        Tue, 06 Apr 2021 11:14:34 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id eo22sm11463976ejc.0.2021.04.06.11.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 11:14:33 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces around operators in hal_btcoex.c
Date: Tue,  6 Apr 2021 20:14:28 +0200
Message-Id: <20210406181428.15097-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added spaces around operators. Issue detected by checkpatch.pl.
Spaces around operators are preferred to improve readibility.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 30 +++++++++++-----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index d42cc24c7535..2cb5eedddde3 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -721,7 +721,7 @@ static void halbtcoutsrc_BitMaskWrite1Byte(void *pBtcContext, u32 regAddr, u8 bi
 		originalValue = rtw_read8(padapter, regAddr);
 
 		for (i = 0; i <= 7; i++) {
-			if ((bitMask>>i)&0x1)
+			if ((bitMask >> i) & 0x1)
 				break;
 		}
 		bitShift = i;
@@ -1482,8 +1482,8 @@ u32 hal_btcoex_GetRaMask(struct adapter *padapter)
 void hal_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen)
 {
 	BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_EXEC, ("[BTCoex], FW write pwrModeCmd = 0x%04x%08x\n",
-		pCmdBuf[0]<<8|pCmdBuf[1],
-		pCmdBuf[2]<<24|pCmdBuf[3]<<16|pCmdBuf[4]<<8|pCmdBuf[5]));
+		pCmdBuf[0] << 8 | pCmdBuf[1],
+		pCmdBuf[2] << 24 | pCmdBuf[3] << 16 | pCmdBuf[4] << 8 | pCmdBuf[5]));
 
 	memcpy(GLBtCoexist.pwrModeVal, pCmdBuf, cmdLen);
 }
@@ -1552,13 +1552,13 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[0]=%d for INTF_INIT\n",
-		(GLBtcDbgType[BTC_MSG_INTERFACE]&INTF_INIT)?1:0);
+		(GLBtcDbgType[BTC_MSG_INTERFACE] & INTF_INIT) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[2]=%d for INTF_NOTIFY\n\n",
-		(GLBtcDbgType[BTC_MSG_INTERFACE]&INTF_NOTIFY)?1:0);
+		(GLBtcDbgType[BTC_MSG_INTERFACE] & INTF_NOTIFY) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
@@ -1570,61 +1570,61 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[0]=%d for BT_RSSI_STATE\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_BT_RSSI_STATE)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_BT_RSSI_STATE) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[1]=%d for WIFI_RSSI_STATE\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_WIFI_RSSI_STATE)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_WIFI_RSSI_STATE) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[2]=%d for BT_MONITOR\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_BT_MONITOR)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_BT_MONITOR) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[3]=%d for TRACE\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[4]=%d for TRACE_FW\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_FW)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_FW) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[5]=%d for TRACE_FW_DETAIL\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_FW_DETAIL)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_FW_DETAIL) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[6]=%d for TRACE_FW_EXEC\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_FW_EXEC)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_FW_EXEC) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[7]=%d for TRACE_SW\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_SW)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_SW) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[8]=%d for TRACE_SW_DETAIL\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_SW_DETAIL)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_SW_DETAIL) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
 	leftSize -= count;
 	count = rtw_sprintf(pstr, leftSize, "\tbit[9]=%d for TRACE_SW_EXEC\n",
-		(GLBtcDbgType[BTC_MSG_ALGORITHM]&ALGO_TRACE_SW_EXEC)?1:0);
+		(GLBtcDbgType[BTC_MSG_ALGORITHM] & ALGO_TRACE_SW_EXEC) ? 1 : 0);
 	if ((count < 0) || (count >= leftSize))
 		goto exit;
 	pstr += count;
-- 
2.30.2


