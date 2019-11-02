X-GM-THRID: 6754458440514404352
X-Received: by 2002:a05:6638:602:: with SMTP id g2mr703258jar.43.1572734991667;
        Sat, 02 Nov 2019 15:49:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:712b:: with SMTP id n43ls806412jac.2.gmail; Sat, 02 Nov
 2019 15:49:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDmVEvbXzGGRDbEdX4UpMKYyO8Fi1LKxmGDWBAnOS+Yu+gaqa+2+Pm3xiOHJfeLRK762V6
X-Received: by 2002:a02:5846:: with SMTP id f67mr9639978jab.121.1572734990351;
        Sat, 02 Nov 2019 15:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572734990; cv=none;
        d=google.com; s=arc-20160816;
        b=W7kyQkFjqktntFm/kMVOqwW5RHiXzcAZz8IvXNOFNpPaG8Xlzjj0z70ZbIbn5bkB1i
         8EMyu1POAIHBR5EzxSf3//tZA4Jc8/kxDuYamJzFO//3mJREIBWsek9o2NhLiYx5XzlB
         XLIQVWlhEyBZUZAaTDywbd3/sBZnoZ47/NHyc7yXw5zXNGEFRY9eeKZKDvzgpBb9ItOM
         axhif4zvzmAeGFP6LRWtz0PV9H8PO7Djx9qd27PfTJe2Jebe8vOH6uS6/vEtZxCWui6k
         NRDOOlsEKya8N5g7/BaDZTcC7/Zw6M8HTxE/ej/aitlwmx7561JVGCQ0Xbat+K5SRYvB
         oh4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=kLqVrEr7cv/qbpzzaLCcYqSR/Hao1/zzDRCzWqgO9tI=;
        b=SvZ2IcTryEPsgDk47/69Yp7y+fVMF07IX/3QhG9ef6htC9QinYeY7B+x6IZwvswisa
         Z/kSoLm9vH1DzW7UfcI+FTbrQUUBI1KB6gtRC4fetEZnU53EqZJSnU+SNhilBouT+j2G
         migdK8q/E3Y0664K+zeQdNHE+wFvuyGDqrSl3IomQj60mSzU6fzKRZRl8Xw94ZvbNOjK
         Nau08CLW2gF9o/nKQYhf4kEuGQ8h9+svO0Bbt/26lQt48wA8eKhDuzwFeISR5P83U1gY
         pi/OPrSOTh90pERHEoZcPgPdPmAKzk8anGrKMytCP4JwGRquraPnbbjyjIUYpjQNeaJi
         1vfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fmxFbsow;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id b74si624761ilb.1.2019.11.02.15.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 15:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fmxFbsow;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id b16so2525869vso.10
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 15:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=kLqVrEr7cv/qbpzzaLCcYqSR/Hao1/zzDRCzWqgO9tI=;
        b=fmxFbsowhq2e47fsdNSwF0ChE0AflOFaEFcylBOfEjrMoJybe+slVro+g6B9VtaFpS
         eeC5f4gDYoQjvLIcSgYgJQmOc5Z1CQSycKdH2oPPCe4BZh7XLkJVM0zkZIFyOAuzxmq5
         WCRPkx6g2/fAr5nge3h+3EYCkH9+cEm07S+WJo0V0P5jWx/jLu5vZSI+V9cwoCuWzLJS
         0aDW0+lLh+hch96aduB0VZBSCcLqEud5ybQGC6pAghtxpWfz9Uq6Q3GWbQDcYrva/Ys8
         G6hZ30TAJH1qARDLNXIE/FsXrv/9tMqpzNLgyN3HVqSUMQgZ8Huo+RDxzp21JUl79M1L
         5TPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=kLqVrEr7cv/qbpzzaLCcYqSR/Hao1/zzDRCzWqgO9tI=;
        b=iKB9mN15ZUCdMWZAm0DCvGMXuCWvLUeLw7FVYlTDZhdNQhFFP0AVeEMxyZk1qIJcZf
         ZcpaSWOeSrXlq7ysEOSYTY+b7uO/obvrO0jDZWcYlS4gtsFJjooFUaK2+Fil0TRqTDLz
         HSUOFsdumzW/CZLQgBRrGKyj3eeaV+uWGjwKrDMzj34k5+O5iJRQspxON64/KWfT9keY
         lSVqUWUqX60rZ/3aXYkuWi/EHCmFczr1saGc9xqO41y5R5Z0lJ5xWU0CX4ttGF9hoano
         dYZLLacVwseSvoE9PKX1HkNi2jDNCNzMZhpWsLkt1EfgftnYHiaZcYUh19kGDXGQnD11
         Ao5w==
X-Gm-Message-State: APjAAAWDQVp41vZVQv46DcIWvGwCWygBySjMG0c5WblCgRnYNnYmKPsm
	0gp0NkBAI/Niyszu4nFQgDg=
X-Received: by 2002:a67:e24c:: with SMTP id w12mr9528759vse.142.1572734989833;
        Sat, 02 Nov 2019 15:49:49 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-29-125.dynamic.etb.net.co. [190.27.29.125])
        by smtp.gmail.com with ESMTPSA id 47sm3210497uas.2.2019.11.02.15.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 15:49:49 -0700 (PDT)
Date: Sat, 2 Nov 2019 17:49:47 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 3/3] staging: rtl8723bs: Fix lines over 80 characters
Message-ID: <e68ec8ccf81a084d3261541b63fa188654e7eaf7.1572734925.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>

This patch fixes the "lines over 80 characters" warnings in lines
affected by a previous patch.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index d7eabee36716..f3744f0e6ab4 100644
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
@@ -151,7 +152,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmitbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF
 		pxmitbuf->no = i;
 		#endif
@@ -189,7 +191,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxframe->ext_tag = 1;
 
-		list_add_tail(&pxframe->list, &pxmitpriv->free_xframe_ext_queue.queue);
+		list_add_tail(&pxframe->list,
+			      &pxmitpriv->free_xframe_ext_queue.queue);
 
 		pxframe++;
 	}
@@ -229,7 +232,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->ptail = pxmitbuf->phead;
 		pxmitbuf->pdata = pxmitbuf->phead;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmit_extbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF_EXT
 		pxmitbuf->no = i;
 		#endif
@@ -1414,7 +1418,9 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, _MME_IE_,
+				    16, MME,
+				    &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
 		frame_body_len = pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr);
@@ -1822,7 +1828,8 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 		list_del_init(&pxmitbuf->list);
 
-		list_add_tail(&pxmitbuf->list, get_list_head(pfree_xmitbuf_queue));
+		list_add_tail(&pxmitbuf->list,
+			      get_list_head(pfree_xmitbuf_queue));
 
 		pxmitpriv->free_xmitbuf_cnt++;
 		/* DBG_871X("FREE, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
-- 
2.20.1


