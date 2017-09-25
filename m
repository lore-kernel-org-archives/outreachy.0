X-GM-THRID: 6469693451646533632
X-Received: by 10.25.193.142 with SMTP id r136mr549213lff.25.1506342899939;
        Mon, 25 Sep 2017 05:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.23.21 with SMTP id l21ls2317251lje.3.gmail; Mon, 25 Sep
 2017 05:34:58 -0700 (PDT)
X-Received: by 10.25.205.75 with SMTP id d72mr489739lfg.19.1506342898586;
        Mon, 25 Sep 2017 05:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506342898; cv=none;
        d=google.com; s=arc-20160816;
        b=PwgkQDakNuMDeAsDUzYzC3EK2PfMqCg7LryOkqI+jB9L17unLOvIo7jhMdjGJV+PPV
         g9UqcUfdqDO58JVcZI4VfF2Y5TNtlSh/zGhqOpFcTnYlE2qOynsyqrMQgdRqlkvFCXRG
         xwWqXnmvsRhIFLKnUefvyVEVwdotQq9UkW3S+IjPU6SzaJkmvrvc8WqUn49D4chau3JP
         4ZPPUSZlonnSv7KfJ/EUDSFK2fVJ7uCSCvCr5GINDBqJqS6o8LT3Vu42p7OkCU0Ngme5
         3ClSk0Re/wYyR8xPtmwVyekDA+7xw3ffIWX/fdD4VcGN5i6g0C5ir+YLMw1d4nvlc4XS
         SygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=OH3mF9kjxo7672uA5YmcFwC5YRN+oBucK21Sev/GxWI=;
        b=ZWtpsNXEh0MHgyV26DIuX2dtz0+LICrbKaeVzQaSQENRMA9Y0YmX6VSd62CBusj/ss
         cUNeBGC2l61AKA4RgO/j9hBvZw5EI7o1VaLjGJIgtDysdEeofXmDTXtCTYEhBuYXXdfr
         dJUvC+pV4pi0JnTe7stl5uzKPABd5eY0lw+tfKMubn5UdXmsEc4rYjCoJW8cL0takfzN
         VU/oGx3kzPB6NbdVj6rFZmabJU/jBaZidVo5OIDVRJO/dLtoXbrbjTfRlk0W/rU+KuMu
         mWsN+8IoQ2Z8VgDyIAwbipaAjriSWH9pj5a6tuQQmwyWCL1pcfy3UDWBJduNRl0ddc8a
         mJyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kav8YRQW;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 191si437212wmn.2.2017.09.25.05.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 05:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kav8YRQW;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id r136so7055108wmf.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 05:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OH3mF9kjxo7672uA5YmcFwC5YRN+oBucK21Sev/GxWI=;
        b=kav8YRQWljVggC8k11jeZ4w62l0Ql+5l4TR/xvn0sG+DLZHsmb9t1+T6twMonGeTYx
         hSjKvim88DkYsYPeUL1xP4vY7Yyzmp1plcwCTlyPnnegzZpP5Jni48m0/0XQkNYm2ALe
         bnDBCV/XLEEmn38EzNaOhdW60C1AHlrTcNncRTOpBhmUx/BuVIL9adg1OP/cUnSlM/qz
         msvGSSmgOjNxGU0H/Cpr46Hay7E+lMjkIcpHMOpDKCpCLDbD2/OuWZ83P/zCnicl8E+j
         gO95WO5MYxEvt0Wzluz/PP72lZM4EvztD5msJzoIzIz2wJu5UQID0aiu3VqYW03jjoA/
         wCPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OH3mF9kjxo7672uA5YmcFwC5YRN+oBucK21Sev/GxWI=;
        b=ef9vg35yzU4ouycNRVyaMUK8B++SJ/vOKhCts0Zmp6oeJCwxwVml9HU9iYOMkSQonb
         X5bJyD0hkXJE2HlS/dkAOfRbi5n3sDJ3MTk6ysm6+/6/f416H3Pf8sx/TvYdRKECRtNR
         uWAM5fyA/TWQDIRmXJm4Bqr0ygNZrfa7sc1avLp/AT1rdJoXFM7F7hEr5/unRNWsMe/Y
         8NcumCbvZYJa7yzHHrOVU+Mn+JCBMV4bTCo1wNxpu+pPrxAAiZrYtwYlEbrcmFCUcLSY
         7x1l4MS7klIzLx7yflW1Vs88TZa587uAFlr4sxOsFdarJnBzWoPALT9prG4XidiNbOiA
         U7xQ==
X-Gm-Message-State: AHPjjUhaDhJs5V4kGAFRe6+eExTOu2EjJLPZdoSK2nbC9Ix4hmofNb8z
	Jw3pHI/x/bjb1+rAVq8/43by2LJW
X-Google-Smtp-Source: AOwi7QCG2ozo5Z+vv2DnynA/FweEU1+r2GLbp9p4vsmoOMdQHIHrUlKYXix7NAYLoNBf7z9y2X4LVA==
X-Received: by 10.28.132.141 with SMTP id g135mr182697wmd.37.1506342898353;
        Mon, 25 Sep 2017 05:34:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id e34sm10619702wre.15.2017.09.25.05.34.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 05:34:57 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/3] Staging: rtl8188eu: core: Use __func__ instead of function name
Date: Mon, 25 Sep 2017 05:34:05 -0700
Message-Id: <ab24e1906b660255f167499f3170d1804a49e83f.1506339722.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>

Replace the function name from format string with the
constant __func__ to avoid multiple changes in case
the name of the function will be modified.

Issue reported by checkpatch.pl script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
* nothing

 drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 3fd5f41..3c764b8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -237,25 +237,25 @@ static int recvframe_chkmic(struct adapter *adapter,
 	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 
 	if (prxattrib->encrypt == _TKIP_) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:prxattrib->encrypt==_TKIP_\n"));
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-			 prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+							       __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
 
 		/* calculate mic code */
 		if (stainfo != NULL) {
 			if (IS_MCAST(prxattrib->ra)) {
 				if (!psecuritypriv) {
 					res = _FAIL;
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n"));
-					DBG_88E("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n");
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
+					DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
 					goto exit;
 				}
 				mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
 
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic: bcmc key\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: bcmc key\n", __func__));
 			} else {
 				mickey = &stainfo->dot11tkiprxmickey.skey[0];
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic: unicast key\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: unicast key\n", __func__));
 			}
 
 			/* icv_len included the mic code */
@@ -273,8 +273,8 @@ static int recvframe_chkmic(struct adapter *adapter,
 			for (i = 0; i < 8; i++) {
 				if (miccode[i] != *(pframemic+i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-						 ("recvframe_chkmic:miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
-						 i, miccode[i], i, *(pframemic+i)));
+						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
+						  __func__, i, miccode[i], i, *(pframemic+i)));
 					bmic_err = true;
 				}
 			}
@@ -346,7 +346,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic: rtw_get_stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
 		}
 
 		skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
-- 
2.7.4


