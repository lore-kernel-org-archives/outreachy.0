X-GM-THRID: 6668981360875536384
X-Received: by 2002:a0d:f205:: with SMTP id b5mr4612427ywf.6.1552753766039;
        Sat, 16 Mar 2019 09:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls2820153ywa.4.gmail; Sat, 16 Mar
 2019 09:29:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVh4Bh6EJdQpF5WjijHe29yliB6tIjg9E1c5yrWbI1g6ou6zfXIJWk5kheOpakaM9P7bc6
X-Received: by 2002:a81:574a:: with SMTP id l71mr3878409ywb.23.1552753765180;
        Sat, 16 Mar 2019 09:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552753765; cv=none;
        d=google.com; s=arc-20160816;
        b=Wgzkivnc2BWCzVhOq7Fq6Oc1BLHqAGPxdSIIr1xmz/vsL7HTM9J17SJQ9T63ZicWZg
         RZMg8V+lqzoALY7G4xFJLFNXDWnYwvEQahe53aC9VK0mr01GMtCevLWF/PszMJRe9TQG
         amalCfsoPvZYCaVmWN9nef5YHwcrAGItyqnVG+AcqOV9wJiEH4lXSVDmAeLHejYBAZ5F
         48JE+SpHbL/FQDfmuPsFrsi4RYn94S1JTDPswDlHtpyoThfORaVbuGxFp4YmKiNhvw5Q
         g7GySzaDmP+GC21/riA6dQDMaWmUPg6GlVXiJ5F9uAQNCdqaJWvuK+xzHcGO71WaKYaZ
         5yTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=gLP7/1+Vx4QJz9XQYxFo2u6u7DoysVc2Be1kL5+ed34=;
        b=fx/n+sFCRaFnm61eUidzKA2aoKPltoSbwbDA49C0jWx+md5IFfoEYZfDxQzOXjmvDV
         d/yH8l8P52Y8WeUdITx1s6NgavQck5qYBFI3oz0QlB6vgaEwfdVwDPf8V+TGIpCnaTPX
         1tNxPh0KiEHJ7Vtpji8Dj6rzgtOLXKIdyuc3Y6YU6pRDiE/Boxp6/Wb/fCL3pJB/B8ln
         coFx1gA0MHVPyYknXOVw/nI7uS42k/jL7vD1fVW6cCn6Ut7m3JNptjE060qSnFUsqge+
         VAYlqv7ACf9LBcXZ4PablS+Tpkjo+YFaZ66KPkhbOuJrprNNlOof/+RO55iGHf8hGGbT
         DFzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+bO1K0B;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s11si231476ywg.3.2019.03.16.09.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+bO1K0B;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 8so5006933pfr.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 09:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gLP7/1+Vx4QJz9XQYxFo2u6u7DoysVc2Be1kL5+ed34=;
        b=L+bO1K0Bjk5dyxQKs4E+QUcBc0ME/YO2g6GXlrkAqYC6DfpbRh/G2mSXbksz/T3elJ
         15cVrClnfbf+KzdhWh9kOmfVhK8jY5SI1bfVPWB8vGGJYHJqXZRLQLcJu6eN0QpYAWoi
         Xh8MiIrpe+z/MrPESFYCsrVvu9O9rmLDGHTv5P9EkyowOe0/wAhm8DLfHSG37D8oUQVp
         d2GlI6jNMriGsrKFC06+FBMZ/RBTZHZGZPdscW6gFgbccXNA8DXXBmqHtfCDF6VQn3g7
         4NNhhVCsEjt1Tobp1nTmJ/l4P7GlZGWJ9MPDCIWtuSwIashqNAMPolqf8CYTW2segM6L
         JAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=gLP7/1+Vx4QJz9XQYxFo2u6u7DoysVc2Be1kL5+ed34=;
        b=AxZ4NSEccGTLDERcC5f9bRZEllDOHkO2+5gUzUBBcLOvBLiqJ8OIjfpQHQki77/LBu
         MHmChSsY3ew14pMOfnwHOFTTjOgTmAWjH9isNrozdXcmX1SDBCEJo2eS8n+xMzX0IJwA
         VAO3hDg+1VFe9ejvX2znY8xFD5edz/D71LEWiozPKvWMAm7EW5QNiUjmFTe9fjN1Elva
         6c9W5vo8nxfEb85ook2VNcLhMea4OIB92XGRH3ps1YsdORlrTc/7Gq6GqF/pjQKN9Pa2
         QIxNBH/27j/J2BmaXOL+2i9FS9HXYOHd2maECyhhKPRmSKHWwItf1Tx0N3L7Yl8T5iuI
         M1/g==
X-Gm-Message-State: APjAAAVLbHQ5PUO8IVGtYxH6lclpRGIhgEdajDWcnYBu5N0CxW3AfyJc
	YGgx+C8EcUDWTDY2+EzC9Mem/zixMKo=
X-Received: by 2002:a17:902:15a8:: with SMTP id m37mr10729442pla.178.1552753764407;
        Sat, 16 Mar 2019 09:29:24 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id q86sm15899831pfi.171.2019.03.16.09.29.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:29:23 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: rtl8188eu: rtw_recv.c: fix a space issue
Date: Sat, 16 Mar 2019 21:59:13 +0530
Message-Id: <20190316162913.19144-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

Fix a space issue which removed checks after compilation using
checkpatch.pl.

CHECK: spaces preferred around '%' (ctx:VxV)
CHECK: spaces preferred around '-' (ctx:VxV)
CHECK: spaces preferred around '&' (ctx:VxV)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index fc72e797f8e5..1d3e011a732a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -253,7 +253,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 
 			/* icv_len included the mic code */
 			datalen = precvframe->pkt->len-prxattrib->hdrlen -
-				  prxattrib->iv_len-prxattrib->icv_len-8;
+				  prxattrib->iv_len - prxattrib->icv_len-8;
 			pframe = precvframe->pkt->data;
 			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
 
@@ -277,14 +277,14 @@ static int recvframe_chkmic(struct adapter *adapter,
 			if (bmic_err) {
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
-					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
-					 *(pframemic-2), *(pframemic-1)));
+					 *(pframemic - 8), *(pframemic - 7), *(pframemic - 6),
+					 *(pframemic - 5), *(pframemic - 4), *(pframemic - 3),
+					 *(pframemic - 2), *(pframemic - 1)));
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
-					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
-					 *(pframemic-10), *(pframemic-9)));
+					 *(pframemic - 16), *(pframemic - 15), *(pframemic - 14),
+					 *(pframemic - 13), *(pframemic - 12), *(pframemic - 11),
+					 *(pframemic - 10), *(pframemic - 9)));
 				{
 					uint i;
 
@@ -367,7 +367,7 @@ static struct recv_frame *decryptor(struct adapter *padapter,
 	if (prxattrib->encrypt > 0) {
 		u8 *iv = precv_frame->pkt->data+prxattrib->hdrlen;
 
-		prxattrib->key_index = (((iv[3])>>6)&0x3);
+		prxattrib->key_index = (((iv[3])>>6) & 0x3);
 
 		if (prxattrib->key_index > WEP_KEYS) {
 			DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);
@@ -496,7 +496,7 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
 {
 	int tid = precv_frame->attrib.priority;
 
-	u16 seq_ctrl = ((precv_frame->attrib.seq_num&0xffff) << 4) |
+	u16 seq_ctrl = ((precv_frame->attrib.seq_num & 0xffff) << 4) |
 		(precv_frame->attrib.frag_num & 0xf);
 
 	if (tid > 15) {
@@ -564,7 +564,7 @@ static void process_wmmps_data(struct adapter *padapter,
 	if (!(psta->qos_info&0xf))
 		return;
 
-	if (psta->state&WIFI_SLEEP_STATE) {
+	if (psta->state & WIFI_SLEEP_STATE) {
 		u8 wmmps_ac = 0;
 
 		switch (pattrib->priority) {
@@ -1763,7 +1763,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			rtw_recv_indicatepkt(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return _SUCCESS;
 		}
 	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
@@ -1771,7 +1771,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			retval = amsdu_to_msdu(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return retval;
 		}
 	}
-- 
2.17.1


