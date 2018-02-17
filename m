X-GM-THRID: 6523574178803613696
X-Received: by 10.80.202.201 with SMTP id f9mr2809249edi.12.1518887974010;
        Sat, 17 Feb 2018 09:19:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.133.197 with SMTP id q5ls2430976edh.1.gmail; Sat, 17 Feb
 2018 09:19:32 -0800 (PST)
X-Google-Smtp-Source: AH8x226N2OID0Z1A8nApkwqIEQQKG35hFT8L60My8u2xTWbl3rilWjFpWpKnScXC1Xb1NM2hS+f3
X-Received: by 10.80.189.195 with SMTP id z3mr2819799edh.8.1518887972388;
        Sat, 17 Feb 2018 09:19:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518887972; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5Y4a/E+LO/OTywiymtLQSahuWlR3KqH/eD6D/wbSrYf/vjdn2ujyd0ItUKgCFvtkT
         NTk3zEcp0T5BgqR7KqsbArEWTJNCq3iTLud3BTOSNDijoh5fn/X83P9TNSuGr4dhzj+0
         wW0TuXbPFNwIS5B5b/Re2D/m47nCrCnPHlU5sd330HgsurK1x7++OHOooETdlCUXObVq
         57c8DSvK5RfpgD/7tfkBi2sAFfpxiOAfavizFLqrksTcD7qvaIjjX+xEbHzeOxW/Kz3D
         qQLdhlyLSzZI+prB4d+M1NmroCly1w9l36OcqNt1ZWg1XwB/gwb/xBfJQqyjs5XKLHWA
         S+Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=FfAuF9xzVkcmfmZLGqYpOpKLeSB7swetG2nh75qKTFA=;
        b=XbIrC0D9b7aWjjYGhnjeo+ds+Moh01zMuCfOvuIMFe7AThsYiwT4snRHdfkVi+OIrF
         6gl7eNQTNMu56slTD2epWCLGI8+sib9CyD2VeCmHH7tBRWOUDvnjGmmWvvmPKA4laN+N
         4Gz0SlV/ZuxgCezeX1Q2c5Yhml5t5soX8pqbesbMp8lO3jWiA/u0VydV2V6hNFzDHDAi
         1TBYWHnKC0HImyNtEjxyrTnWHp00XwR/e8w86Jh5DOOwRbCTN5SA+WhZMHjnd3sdvgJR
         r85WSHyH/XtjadgnTSCWDu7JEzsXC9miZpDBpJ0iEmROIsiT1mFpVOJIQO9WmfI4SM15
         uUkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvmNJrvE;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id g10si774877edm.0.2018.02.17.09.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 09:19:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvmNJrvE;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u49so1080509wrc.10
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 09:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FfAuF9xzVkcmfmZLGqYpOpKLeSB7swetG2nh75qKTFA=;
        b=IvmNJrvEddRfdLS31+7z7FjDoWYrWa507Q1NcxL8wjUfxEgQI8o4QYu1K3LqNb4ujS
         s6J+/jMJ4N8FxAtr+yFmcQO56FsdE4YTTym9P1K07x4i9+kZzl4fDDy8yXaY1rgNTKGG
         YeYbAZ3F+kdFCMgQZjoeexz2LK3AAaSxYX+08y/BCBEBZeoy98fSwio7TbWvxoVJoez7
         llNGjGOe5YghYYBSOJDltGl/3GRD2iGngSyRdopGK2kFXIoPV/MV1LeVNt9tcZ1ER9q2
         ebS1wz/xOebhH4o52UhL42mShtrbNoAA0Zuhwds78IhhoX1mlDUda1jPKhotjUabLeYd
         HNMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FfAuF9xzVkcmfmZLGqYpOpKLeSB7swetG2nh75qKTFA=;
        b=K6dzEq83iQAo72mDtAb+ZxqI+RBMFBFTpHlhLrTE99LqMjEEGwoROHFkOyS80UWifB
         yrKW1kQTODWmMm+h707wPB3utdIruMPHWFYYY8cXBHou4LBkziWfT+G2doXHN6TgD1TR
         KMadlJDG5zbRCHeM5w3BrgmcIMsDK04vxOKLlkJRdNvH01rBNeavloKDvOxxt93AusRt
         0+mrZBIv7MIUTuwWtK18tXeL3IttL87PYQ1U6yDiz0ml5nSvgFbHn/y7RNph9xweo29e
         eEYMW9hLE8fey0J0tsVD/KpSiSlDcKCIlGhDWzJ1T24/pZiFqRFzwX3zPiNciVQsyYFt
         tpSg==
X-Gm-Message-State: APf1xPCcS+ZgVs3jtonoB7win4KCjhZrEvW+ZPX8CYJP9TEw5sbSvCM+
	ssbKtEuC5pcTqlUS61me1DK6EQ==
X-Received: by 10.223.169.4 with SMTP id u4mr8000097wrc.170.1518887971945;
        Sat, 17 Feb 2018 09:19:31 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id h194sm26117155wma.8.2018.02.17.09.19.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 09:19:31 -0800 (PST)
Date: Sat, 17 Feb 2018 19:19:28 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Move closing braces of 'if' statements
 to end of line
Message-ID: <20180217171924.GA4155@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move all closing braces to the end of the line.
Remove braces in single 'if' statement.
Break 'if' condition to avoid 80 characters line.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index f29e110..4861c80 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 	if (alloc_sz > 0) {
 		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
 		if (pxmitbuf->pallocated_buf == NULL)
-		{
 			return _FAIL;
-		}
 
 		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
 	}
@@ -90,8 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
 	queue = skb_get_queue_mapping(pkt);
 	if (padapter->registrypriv.wifi_spec) {
 		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
-			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
-		{
+			(pxmitpriv->hwxmits[queue].accnt <
+			 WMM_XMIT_THRESHOLD)) {
 			netif_wake_subqueue(padapter->pnetdev, queue);
 		}
 	} else {
@@ -177,8 +175,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
-		if (!(psta->state & _FW_LINKED))
-		{
+		if (!(psta->state & _FW_LINKED)) {
 			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
 			continue;
 		}
@@ -187,8 +184,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
 			|| !memcmp(psta->hwaddr, null_addr, 6)
 			|| !memcmp(psta->hwaddr, bc_addr, 6)
-		)
-		{
+		) {
 			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
 			continue;
 		}
@@ -249,8 +245,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 			#endif
 			)
 		&& (padapter->registrypriv.wifi_spec == 0)
-		)
-	{
+		) {
 		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
 			res = rtw_mlcst2unicst(padapter, pkt);
 			if (res == true) {
-- 
2.7.4


