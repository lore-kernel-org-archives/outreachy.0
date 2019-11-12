X-GM-THRID: 6758464167600979968
X-Received: by 2002:a1f:2cd:: with SMTP id 196mr22148840vkc.23.1573577700329;
        Tue, 12 Nov 2019 08:55:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6122:c1:: with SMTP id h1ls113104vkc.16.gmail; Tue, 12
 Nov 2019 08:54:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqxNc8RDfS9iu1AFSecnEOVU9CSRE6RYhpURUibT2y1eNhQsnH9ohV04bMnmw2ekAkEkAZDZ
X-Received: by 2002:ac5:c7b1:: with SMTP id d17mr15181192vkn.90.1573577697944;
        Tue, 12 Nov 2019 08:54:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577697; cv=none;
        d=google.com; s=arc-20160816;
        b=sLVWBteLBMvrbwwq2Ww6eVcM9gXRjJQZyU5o3ivK2HbZTAvTlNJW5LSXqUhvNiULu+
         M0bEfETdSCR9eLxSXtOkQbsVJIWrkYgaPujyXx0aA2LoTMUg4syS06xkeq5qIOUWbiFB
         m5OJLEGwtbZ6jYcRDH6gcXCMBcO7QybFtKGs2uT9eVt3emYIwZNC5wX1l6tNeJhBr2CV
         dJK/RpxWVLL7oPXr62RRNQ1TUYrKZAwK8vZthdmzT4mZwbogM6nYWiFc+eipJKeeBNGM
         vqHG808DjBqpITNhTuAlwQ5b7EXy15lMWZvT8EkxH660jbxq+7XGO2yvIFgDdHgrMi6n
         RNMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=2tZEjGn9AWJuu90IGU4ZcEA4pxCT88LgEy8kCZaNDsM=;
        b=EVtc8LlYdhf+hZB3rf6RWRkdxKpZpQYzcR6yYyFG8p630TgaE5RCeYQEjL+TD2+Tu5
         Zz3HN2a7Fh+EajheSolNGvpjbKMwkOQqgDY5LJNzB/0y2CCfpmYXg/ETdiVwxQqOabvi
         fNrFD7+bOrSB96qHVq5sqdfapmyZ7E1bBUSiFwIqC250ZzdKGshLRr3HWFgAAffiH3FU
         SXDLOAxu8KFyIPNeGgqm2zqzDUTF9v//5WsnlIgYfHC+yYpylHJULy9M2TKzl23DvCJh
         dOmSHJs1sYGh6ySxwgHuMNRrzgoplMKTnREdbUYRLIjNJp9rr3C8aokP/YzqYQUTfEbB
         hfpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DpmujUOK;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id f12si1111894vso.1.2019.11.12.08.54.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:54:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DpmujUOK;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf44.google.com with SMTP id d3so5064932qvs.11
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=2tZEjGn9AWJuu90IGU4ZcEA4pxCT88LgEy8kCZaNDsM=;
        b=DpmujUOK6jq6CWVSZcXbA1KzGl36fGH709fFYkJ/eBAPnT8MlWyCi8sShA060UTer0
         fAZjVVHYP7z3r+OfzlgF23woZcPQsQtQ7bcd0iFp8zd7X9RY416oHa4YbLUiwFS5ZTEC
         2aRgeErFHr+ELCMFiHkjpx4WMn3WzRz1Ui9JhCuuq7reGHSgYm92rPzl6PYBehny08FH
         RaV3IA4e1LcWS2PFlCIbbR9HVdvtLLt/yNIt/cqWT8VRhnXIvlX4nY5kymXrSSYHw5q4
         XfQamktekRtTMUc/NU18F8jdMotNZeIKm7CxYRZbbX2boSmN5N69kRzsNE9pDODr9w/x
         wgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=2tZEjGn9AWJuu90IGU4ZcEA4pxCT88LgEy8kCZaNDsM=;
        b=m26+DP2JUNbu9ggGp7oGtow69ZGa56FkswhOpQobf8Xvvvq2vI0NUdnw5+cMWeroKH
         tpNw4LnMoJvdK4D9Y4g2opVEX//8MMghB7ovgYkykCgDQObuz8nn8NFW8ZCQfr1y1sCF
         O1mxGeXegTmsmr4ipKZrDYQmeaGw3FoAKJfR0rPqaMvRCl8J4TLl6XK7RGff5TzV5KVT
         kPOpR4LrVXLDniG5ThnjJComgGvPeJro2zdhqO7vG92ipZFlXywJTSeX/xu4ZJ1YEjJQ
         ZT2GkfM9wwOTExmCyQOeDFCKMAxmmqklFo5iRoS/qDhPfqHFzYz+lBsjtIGd0wQyBBd5
         COlg==
X-Gm-Message-State: APjAAAUIUAgUUiXWL+g+rFm+RTx89kdrKwuj/PvCVKAGlsqMc1q39arZ
	E1i6q56aNto5/9yX36Bykf0=
X-Received: by 2002:a0c:b064:: with SMTP id l33mr30129564qvc.34.1573577697611;
        Tue, 12 Nov 2019 08:54:57 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id h44sm14231832qtc.1.2019.11.12.08.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:54:57 -0800 (PST)
Date: Tue, 12 Nov 2019 11:54:55 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 6/9] staging: rtl8723bs: Fix unbalanced braces
Message-ID: <d208c4db5ed51f94e61f67891dcf1c102c5501d9.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch fixes unbalanced braces around else statements. It also
removes an empty else block.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 42bd5d8362fa..be0d83280e1c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -372,8 +372,7 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
 		if (sz > padapter->registrypriv.rts_thresh) {
 			pattrib->vcs_mode = RTS_CTS;
-		}
-		else {
+		} else {
 			if (pattrib->rtsen)
 				pattrib->vcs_mode = RTS_CTS;
 			else if (pattrib->cts2self)
@@ -1453,8 +1452,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
 		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
-		}
-		else {
+		} else {
 			protection = (*(perp + 2)) & BIT(1);
 			if (protection) {
 				if (pregistrypriv->vcs_type == RTS_CTS)
@@ -1847,8 +1845,6 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 		queue = &pxmitpriv->free_xmit_queue;
 	else if (pxmitframe->ext_tag == 1)
 		queue = &pxmitpriv->free_xframe_ext_queue;
-	else {
-	}
 
 	spin_lock_bh(&queue->lock);
 
-- 
2.20.1


