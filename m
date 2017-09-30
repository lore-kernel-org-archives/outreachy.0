X-GM-THRID: 6471467521247543296
X-Received: by 10.101.69.194 with SMTP id m2mr979833pgr.7.1506756062900;
        Sat, 30 Sep 2017 00:21:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.176.1 with SMTP id h1ls1961466pgf.12.gmail; Sat, 30 Sep
 2017 00:21:02 -0700 (PDT)
X-Received: by 10.99.175.72 with SMTP id s8mr737489pgo.98.1506756062289;
        Sat, 30 Sep 2017 00:21:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506756062; cv=none;
        d=google.com; s=arc-20160816;
        b=RAohRng0DzLkSLGd7judM/WVTmzNTf0ZSeyLx/XJL2o0hWHKFW6JKwJY7dI3nDbXaM
         6Nw6GmiqOPpkV7S3TH/OOG7VwlcAULd9lSSkdo09ZsgnttSc8fJ8dub3JXh5k9XZviEK
         6nTJgSk2yRzU7wlvAoJVl85rNEIrW5+f8Zy/c6LWIjYN85hLClzCIDF/dPSY65XyxG+A
         RegQh8f1EpvsVksP9XORlp44dC29oOjVnqKxKYtd+QRApAyCX7KU6O9wBBjztAu2jWip
         xJJk89o1Vfji+UmcuICe4b1LQv6qkHZUPoadzjrDUCypxcd18kVpj868V33a7C1JrYoV
         MqDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=SQ026ZZ926DOdN4dU7IG12WvqK6/NaPsn7KdWPOPUS0=;
        b=DArigRfhNZAPG975ImUKQ8/XuHvjMIdUSJNIO8Rpy7n/pNQcZoVUiUuJT8cp6tyCpQ
         J0RXo+qk/7bJO32KT4b9VB27kHkycpxvHctkVWbPZEvkadtzsFT4lsepdHY7/MWRsyBv
         oeOYUfnr7l9LfWpZaY1aI9XoK9vfHoHVjiVwrUQTtRlzujfK5kSLCCndLKJJ8YhfG3Pf
         SVo904BRiswNCyk58huX/ZwmyWFK+rRqA9hSyoJgG7tjwKV0KEustK7Ecfk3oBQwNsPE
         Y/OlHR/ArS3sdPRtBbWF2zycnstPDj3malrQC8de5J19U54fJpWmuWLfkaHeCnBUg6Xl
         BQ+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfWyCu47;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b6si702996pfm.28.2017.09.30.00.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:21:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfWyCu47;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so1131697pfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SQ026ZZ926DOdN4dU7IG12WvqK6/NaPsn7KdWPOPUS0=;
        b=tfWyCu47dI6YhK+tqLVuorCFHgdHBXhy6O8wBDSsSpVYxwqsGx0Wp2N1yBHK8JAXam
         dtDt6Z9VQTL18KxpkTskRrmpsiLuU76L3V95m23NKvfEFWL8YeuyewiMyf78JElXPiWA
         /bbgQk3z96In0LtY6RTmRuh1gWCQDSMTMYu0XIAZRZDoxglt+M2xRmjlIM8Fb0Uli6Iq
         PQpBbdC4KAb4l5GJJBC+mfFjL77svjEd40dCS78IXzLysOhKXNQxa5fft7MAoVwn14Wk
         MJJnWg3x226cY4XsiONlpRFyyDPUUBNBKuSfsWEAcN8ZkK10v+jYtDuFuex46nPqQALJ
         k3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SQ026ZZ926DOdN4dU7IG12WvqK6/NaPsn7KdWPOPUS0=;
        b=CTCj3KK3PRmOkEhEinVeMpIIHqLUag1iVkKSOhjEwd/aYpTqtNwoOAvL7EnQeIMEWX
         h35lixGhmIF9ufJ+G9lQA+htSMFdp3e35fVbIP+rQwSkxVKmOzVdQCXgzVZga1w6we6K
         r1W64ZP0Pr44jghgvIxNNhnHT1ETET98y+r0E4pKYM3C4EnLcIw+RHF9pXpIugWqYfBM
         qqAYIyxRwaSBx53HhEwY4nWWtswyZZgnNOvddpd4rNO33fNUrDMnbx5E8WsLTQn/3Ayl
         Q7v3sW1i0LtYGKmnFVlzf0ZLZBNnv4s2Bgx/nOtYnC88p57F/C3uHayG3M5QXgd5KY/c
         WeRw==
X-Gm-Message-State: AHPjjUiOupJe56XzmK0A93uUP7orkHboClaMsUmg6RZx5/LspUD9xjti
	BD/NZHEug06jiPLEAjtlZv28TQ==
X-Google-Smtp-Source: AOwi7QCh3y3nJwyDfJOJZ3pBRyU37EHIFO58iIxZUZO2MV1VBtmXU1nt8KlpCLKUWJXwkr+xevssIQ==
X-Received: by 10.98.70.137 with SMTP id o9mr9841010pfi.173.1506756062062;
        Sat, 30 Sep 2017 00:21:02 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id n129sm1610265pfn.78.2017.09.30.00.21.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:21:01 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 5/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:50:57 +0530
Message-Id: <deef34ad5b963ac49fc8086675af24db68bdc8c5.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of type struct list_head* use list_entry to access
current list element instead of using container_of. Done using
the following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
   (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 611c940..80fe6ae 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1790,7 +1790,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			u8 *p;
 			struct wlan_bssid_ex *pbss_network;
 
-			pnetwork = container_of(plist, struct wlan_network, list);
+			pnetwork = list_entry(plist, struct wlan_network, list);
 
 			plist = plist->next;
 
@@ -5470,7 +5470,7 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 			xmitframe_plist = xmitframe_phead->next;
 
 			while (xmitframe_phead != xmitframe_plist) {
-				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+				pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 				xmitframe_plist = xmitframe_plist->next;
 
-- 
2.7.4


