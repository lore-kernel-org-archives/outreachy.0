X-GM-THRID: 6945688509502980096
X-Received: by 2002:a17:902:e549:b029:e6:6b3a:49f7 with SMTP id n9-20020a170902e549b02900e66b3a49f7mr1710555plf.52.1617169126228;
        Tue, 30 Mar 2021 22:38:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ac09:: with SMTP id v9ls452448pfe.2.gmail; Tue, 30 Mar
 2021 22:38:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwYPVSQeCBbprKIBSPRQCV3oAwFnO3v+oP1uVJ7Xa6GIJNvWZg+9ij7toiwU+hP05c3tSG
X-Received: by 2002:a62:928f:0:b029:1ef:2370:2600 with SMTP id o137-20020a62928f0000b02901ef23702600mr1422678pfd.9.1617169125058;
        Tue, 30 Mar 2021 22:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617169125; cv=none;
        d=google.com; s=arc-20160816;
        b=JjbEQS/XbtrlMHxV8rI+zmDeE/TXdf+8Jl2MLIWzoWeEnLFHq651mLKWXVXYpXmixt
         IA8YL90pSyNf+xjNCvUeoBukdUPEkXiVdrI9VuOhQs9XFxlOcGdhiyfh3CcD5wGNbBj4
         AK+Kg3bQ72qLooq1gScJEsni2HFr2Yqk/tCy5rVYKunk9dAZpLvR6HzFevmwYRSO7mOf
         IPLiaTec3TX9dth5lXFoG1QV+JyYhMc2dDKR3UCcRm6dSoJuhKAz7lqVEXP1FBenfCJY
         Co7CWAFxSMN2R7ETIHTG7+oYsQKnyLGyHDcdGhjB8tUobhibvscU9U7jJfxkVhetGX0l
         xNNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=so4kPdZGFoamwj7jn02pOeYfcmVYyIUHQWGAZcaFn10=;
        b=ZYiVQbIYb/s9xwq8Ef9gpdhFbEPakJ0eWzYzENf8WgxsmCGjLkK5Q6WtahBvcEWqrV
         gjgFF0c/jAyVZys8NiKdSNNT/ytrJUhkcZImIT4lR0Nh1K1FSlSCvFwAJvAoqWVeNl3j
         FQtnjqCvUXtzs3q3CfowKs2HYZ60vsRYRxBQaB1Xh+7I1Q5MhJoHgcBLjWk12f8ec4d0
         y5sW3SfXiXos4z1N2Nmf9bu1SqmVBKEgyiManFIQ4ntmZsmGhGC5GHijFZYApOz/7ffR
         jAu/3wglM6BcHk8WXjeJ7gbg82APQYrwQ7jm+q04Kxsnezx1bpqidI+KpDLBO8APPTjv
         Bk4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKPGhEE+;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q18si76041pld.5.2021.03.30.22.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 22:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKPGhEE+;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so609608pjb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Mar 2021 22:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=so4kPdZGFoamwj7jn02pOeYfcmVYyIUHQWGAZcaFn10=;
        b=rKPGhEE+Rpb55Y+wH2VI9M+g+CbYN7b60pMNpeMFERkGCaNWcFA5ovMGou3OJDRxa6
         LgqxsTyj2qv/dunPClh5nXWoCkehko3yq0F/aSwMlkv2no5Muyj37a2/f7l6h9b3UlH+
         ZQa94I4F5M+b3bULumUVrq3F8Usp/ksSXSgefIusgh8uUC7FlofQjEaqw0Avus7+oEIn
         BYWaRbuqGzHlUqN+jlTcn0MP7V7FWVhcEhIePkBizpNj+3ib0yCielUX7wRmOosW+JRC
         G86LJytujySISpCUvjWMFR6MMknX6roLyYqN2FgBsTejTlP1RhMSPsqDNyIa55naUyZH
         bGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=so4kPdZGFoamwj7jn02pOeYfcmVYyIUHQWGAZcaFn10=;
        b=VXeNhuPbH7J6djhfM9KdUv8KuhW/0SmFNOgjuIEb7dG1lQONzXAwYZmm2Co4KrbriG
         j3xadxXGRIc7CMlE8PoS/6E9MonK0fLG53+J2Upt9lIR7dAWlHHnac7C/KynrLkVM29A
         nXX6fIkAtz1yu6kBLSMws9+RsJO5QajW+/NNFMz7+pN3pvWjqw2+M/wMNe7qlvuoFlBk
         95o2x0vdVgI+kZmEHRr1gn6GWO8kPljXauYmK45fTFBzTJ0soDadmKiPUW+qBD2HErvW
         x6rfW03EjTVle1jsHu6ZdvtOOr5s8NPzOlQJi34btJQNF/iNVBzlf7xbUUrDhyUEQlnd
         2VTQ==
X-Gm-Message-State: AOAM531xIkPs2JNBUpDZjlV7PYwnibKj/hweTrbX6B3hjjFrLB+fDTI/
	Ic5xHcoPAMRd9VCclwF+6pYwnBypiP53E9X7
X-Received: by 2002:a17:902:7585:b029:e6:cc10:61fe with SMTP id j5-20020a1709027585b02900e6cc1061femr1608189pll.23.1617169124752;
        Tue, 30 Mar 2021 22:38:44 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id k27sm714813pfg.95.2021.03.30.22.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 22:38:44 -0700 (PDT)
Date: Tue, 30 Mar 2021 22:38:43 -0700
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
	marcocesati@gmail.com, fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com, phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: fix block comments
Message-ID: <20210331053841.GA6091@djbComp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove empty comment and fix checkpatch warnings:
WARNING: Block comments use * on subsequent lines
WARNING: Possible repeated word: 'very'

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 61 +++++++++++------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 2daf5c461a4d..7b4c0f22cd90 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -46,8 +46,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	init_completion(&pxmitpriv->terminate_xmitthread_comp);
 
 	/*
-	Please insert all the queue initializaiton using _rtw_init_queue below
-	*/
+	 * Please insert all the queue initializaiton using _rtw_init_queue below
+	 */
 
 	pxmitpriv->adapter = padapter;
 
@@ -60,10 +60,10 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	_rtw_init_queue(&pxmitpriv->free_xmit_queue);
 
 	/*
-	Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
-	and initialize free_xmit_frame below.
-	Please also apply  free_txobj to link_up all the xmit_frames...
-	*/
+	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
+	 * and initialize free_xmit_frame below.
+	 * Please also apply  free_txobj to link_up all the xmit_frames...
+	 */
 
 	pxmitpriv->pallocated_frame_buf = vzalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4);
 
@@ -876,8 +876,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					*(payload+curfragnum), *(payload+curfragnum+1), *(payload+curfragnum+2), *(payload+curfragnum+3),
 					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
 			}
-/*
-*/
 	}
 	return _SUCCESS;
 }
@@ -1069,17 +1067,15 @@ u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib)
 }
 
 /*
-
-This sub-routine will perform all the following:
-
-1. remove 802.3 header.
-2. create wlan_header, based on the info in pxmitframe
-3. append sta's iv/ext-iv
-4. append LLC
-5. move frag chunk from pframe to pxmitframe->mem
-6. apply sw-encrypt, if necessary.
-
-*/
+ * This sub-routine will perform all the following:
+ *
+ * 1. remove 802.3 header.
+ * 2. create wlan_header, based on the info in pxmitframe
+ * 3. append sta's iv/ext-iv
+ * 4. append LLC
+ * 5. move frag chunk from pframe to pxmitframe->mem
+ * 6. apply sw-encrypt, if necessary.
+ */
 s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
 {
 	struct pkt_file pktfile;
@@ -1693,23 +1689,22 @@ static void rtw_init_xmitframe(struct xmit_frame *pxframe)
 }
 
 /*
-Calling context:
-1. OS_TXENTRY
-2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
-
-If we turn on USE_RXTHREAD, then, no need for critical section.
-Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
-
-Must be very very cautious...
-
-*/
+ * Calling context:
+ * 1. OS_TXENTRY
+ * 2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
+ *
+ * If we turn on USE_RXTHREAD, then, no need for critical section.
+ * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
+ *
+ * Must be very, very cautious...
+ */
 struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pfree_xmit_queue) */
 {
 	/*
-		Please remember to use all the osdep_service api,
-		and lock/unlock or _enter/_exit critical to protect
-		pfree_xmit_queue
-	*/
+	 *	Please remember to use all the osdep_service api,
+	 *	and lock/unlock or _enter/_exit critical to protect
+	 *	pfree_xmit_queue
+	 */
 
 	struct xmit_frame *pxframe = NULL;
 	struct list_head *plist, *phead;
-- 
2.17.1


