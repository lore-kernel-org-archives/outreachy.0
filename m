X-GM-THRID: 6754458440514404352
X-Received: by 2002:a37:5645:: with SMTP id k66mr15512985qkb.368.1572821074192;
        Sun, 03 Nov 2019 14:44:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:341d:: with SMTP id u29ls3626749qtb.2.gmail; Sun, 03 Nov
 2019 14:44:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRdGC2GFNAJyiUtz6tP0MfzhWMGnB123tv2yE4Pr0JoW7iDS6t6zGcopyPaG4cnCKxdjNO
X-Received: by 2002:ac8:2f28:: with SMTP id j37mr4364872qta.251.1572821073376;
        Sun, 03 Nov 2019 14:44:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572821073; cv=none;
        d=google.com; s=arc-20160816;
        b=zD6WkMiPKg/QQdHlfm8cszsXGRRmc6hARK022wvL0qQVN/wGpvSNnfN8OvmikYnYKU
         EUQO/ONFEAhlMO5GmqAsW7BWCOmjN4eG7QF/JEZI0JSckdY+MlSkNl1YgvnPfhgD6rI4
         H3JRph9dqIlLnpyQytlsf5dbJxDh0hkA078aA33fC2sKnlEiJFAiyIAgWybdyk5beDZO
         5SG2AjDeC8wfxAun1zzrWvlr6fOiX7RTDobEGD4mGPgu7/zC14RPOEXIh2byGZqq4kQO
         2QJ5jw9PStxYFiaVdTlsxR7Q/wb92U2Jn53hMJPxQbGLF26cIR2mJqkir42ozC8UsMkQ
         kI8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2ctTwrnMKJeZCHIc0f6NEvahEErF+bKNgDrSIb9lPLE=;
        b=BIMlQ4NOfNQ7CRVo6FVlk5xL0+To68wHB1qFZbAPQx7tcGsL9HWZFjk4cnUvAPIL0K
         VHIpgvfhNRGOXePZlpaa2pU6ndQPeZ4ESxs+f743AaqJz+wY24tjQjN7wKqC9ESprbkk
         5OT5r4FhQixQ7MUkywgWVkRGg8e4rnt1bd/ruepTXF9cE2tplh0MQe7Q6Cj3c1pld3Km
         hNWOGEXroQ8Esw/k+FDNHn0WleoIaXeRoBawlVGVWE87Fw2IvlYUYRyGMMUq0W+dzGJA
         xroa/QX3RZO5q04RKHHcDJHZfDgDJs8FEQX4FjD/66q9uQK2bj+cvEHNdWmAaRdlBGzB
         qYWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PfNqoLSQ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id w140si923327qka.6.2019.11.03.14.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 14:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PfNqoLSQ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id m6so3298207vsn.13
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 14:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=2ctTwrnMKJeZCHIc0f6NEvahEErF+bKNgDrSIb9lPLE=;
        b=PfNqoLSQzGEwl5Qa0VBG65xQcHZLC0KPua+saILEpOSCbItRGazqVGE+LGZ2OZ8gzm
         9nLV6Ua0tZyKoPkyVqOTQgrIdIUnBteUOckl14GlIJLwxe+GuTUlj6ilTc5NoRZNrxk4
         OyOnbEpdBOcep/td9rTTG9r/eqBRSKak4kXgMp/0BboLb73Et7HMhyee0DrA4bwFsd9d
         kGu85QK54S0A1g81v1B3Ma+feu0878WvvN27NOAauxgJ8mfbBVF2iHHkrBCk3eQqo5cs
         TeuqdtKJt6h8aFkd7N0AOmW3PzdRp68MQYzV+sNm62DvW9mKmv6fBOGi1WN4vVYBpKvP
         wH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=2ctTwrnMKJeZCHIc0f6NEvahEErF+bKNgDrSIb9lPLE=;
        b=uM6NPR+i1XdqeR8zZqTBiifq3O1xhbamfyi9ne+lcWfAJf7K2kNoXvCs0Jh0oAoqAh
         PJrAMuce9YDHM7B9UnLWPqe5jWQ4ggXc6uN1XZfQPB0S7zEUfTLfQq+R7B02IbaYl6HJ
         HOX5fPnfjVfL5x3GTfubPGdmV4EMJ8495W+QSCsIe7tbgeAypDSYQLP5rWAUDwLHSlTb
         0F8jYpFeUqbYk9likDMww/t6WMTj1k7G8l38K8TYTMaxoLcrj3ga+L/7qgfZv5WY037f
         yLmD4cP7IW+eU/XRNRykd8NqPdcSEsl8aiMHrf2AVR4cWmHCJq1enbTF13JJeSNnRaOT
         XLFw==
X-Gm-Message-State: APjAAAV31JpSlPkMdcyzDxbeaRTbKGuhecPiip8Xbef+RrTQWXwS8T1X
	Eu4vSkhazQFPjcxhUN5ji7ZWzHIqJ+AlfA==
X-Received: by 2002:a67:f5d7:: with SMTP id t23mr11279411vso.75.1572821073011;
        Sun, 03 Nov 2019 14:44:33 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-29-125.dynamic.etb.net.co. [190.27.29.125])
        by smtp.gmail.com with ESMTPSA id m1sm3329455vso.23.2019.11.03.14.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 14:44:32 -0800 (PST)
Date: Sun, 3 Nov 2019 17:44:30 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH V2] staging: rtl8723bs: Fix lines over 80 characters
Message-ID: <cb27cffda680eda05c44ee90db98c660fbf98b39.1572820893.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes the "lines over 80 characters" warnings in lines
affected by a previous patch.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Change the number of wrapped arguments so they don't take
	  more than 2 lines.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b75781841e87..ab85abecfaaa 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -99,7 +99,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 
-		list_add_tail(&pxframe->list, &pxmitpriv->free_xmit_queue.queue);
+		list_add_tail(&pxframe->list,
+			      &pxmitpriv->free_xmit_queue.queue);
 
 		pxframe++;
 	}
@@ -150,7 +151,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmitbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF
 		pxmitbuf->no = i;
 		#endif
@@ -188,7 +190,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxframe->ext_tag = 1;
 
-		list_add_tail(&pxframe->list, &pxmitpriv->free_xframe_ext_queue.queue);
+		list_add_tail(&pxframe->list,
+			      &pxmitpriv->free_xframe_ext_queue.queue);
 
 		pxframe++;
 	}
@@ -227,7 +230,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->len = 0;
 		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmit_extbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF_EXT
 		pxmitbuf->no = i;
 		#endif
@@ -1409,7 +1413,8 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, _MME_IE_, 16,
+				    MME, &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
 		frame_body_len = pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr);
@@ -1814,7 +1819,8 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 		list_del_init(&pxmitbuf->list);
 
-		list_add_tail(&pxmitbuf->list, get_list_head(pfree_xmitbuf_queue));
+		list_add_tail(&pxmitbuf->list,
+			      get_list_head(pfree_xmitbuf_queue));
 
 		pxmitpriv->free_xmitbuf_cnt++;
 		/* DBG_871X("FREE, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
-- 
2.20.1


