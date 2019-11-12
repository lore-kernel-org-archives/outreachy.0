X-GM-THRID: 6758464167600979968
X-Received: by 2002:a02:c54b:: with SMTP id g11mr6793046jaj.136.1573577613279;
        Tue, 12 Nov 2019 08:53:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:960e:: with SMTP id a14ls310394ioq.11.gmail; Tue, 12 Nov
 2019 08:53:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqwSWB5zyWsLHxOFt6Oyp9wSkVBZN9+B1rP/qQbuTHy+hJmKIsgmUvDJhxLkGXCgO+E63NxQ
X-Received: by 2002:a6b:b511:: with SMTP id e17mr471085iof.18.1573577612006;
        Tue, 12 Nov 2019 08:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577612; cv=none;
        d=google.com; s=arc-20160816;
        b=mTVCKAZMwYGPvl4Leoh5jAc9Noesdv2FMARhC8p1bAdrYAFHhBYNUql2xMArZUKncQ
         QgYtmHHWVE3YBJpJMvi95Aez4fPgrf5atLy4zICTzjVyGjrb1eClx9KttN2EJTFHkyvT
         X7Mws3b0iAFjZkyJg6NpSvdQXc9z4hJxsH3EwLxEFeGDjwxFHDq95/OUOfId5l8rG6hX
         +GC5lTpF7I4Kp4dowbGMPtee8QFun4v3hHutKv5H3hbk9Bem2HvoR0DPedj7Njvb8iuL
         Oahcje58RDYO4hlUWz9EpEfM7G9koC4Vd7XnHRnEwckwzCM7dUhcvE3lTK8Y9hNNLhKE
         oSgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=KRQTTAE5NIfXPm438X/CfTEjySDioYPsKEKUpYcXxZM=;
        b=wdxwQchFaSVbA3GY0F3aocTx+BPHFmZ52iue7ba+t9GUGG+OcGhXwZbYbq06IrUNu2
         a2K1qJ/0sJn9dYB7BXYywnPM7i8qGOb8dZm5fcfV3uIjdD4ZH7mtRpSpP7IQEtFx4SqU
         UTTJlnxPgWjTh4e0EC+DKLBjxjTyRTeBPz4Yv0p+Il75fIM4E6rdiJih1qndv7pTQLJF
         Kor0L+HWchLUyu+pRjzSBvFqB5aZw+K4t6EoL4Y793uIZiqLSAo0/N8xT3+WePCNa2YZ
         y68APf0i8Ln3lR0roK+FZZCDw1OEb8pjzv+h7NESJEwM5NDf+l+tvY8th7c5wta3sa6/
         Nfqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rfANFb1/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id z130si958751iof.5.2019.11.12.08.53.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:53:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rfANFb1/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id l24so20438589qtp.10
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=KRQTTAE5NIfXPm438X/CfTEjySDioYPsKEKUpYcXxZM=;
        b=rfANFb1/afiONMc6tGNT810eTD97Na2vCiLpUCuJCENzRwhro0TGNKoM5ZuGO6rGBS
         E7/donO0x+mNRUYgYbX9T/DVAIrjihf1chuIsuIsOj5zaObdjOBHXtY3/3F4A8nUWc5f
         KzJNvReUvSp8+qrKyBr+CdmlL5YcElggAoFr28iLs8/hPqDS+HovpmQgMzjWLB8ccYUN
         ZbqaeAj/sm4uC8CMJcaUoNinxpnFHpnVZGWeU9Wy8I/GR7pMP/jtkKJJkhBGoikvikGm
         y6r38LmBmpABtWOmmNhfsXVMBEkrktgLulISgSA1oqrjME6hHBdYt50mZK/fluDeSCix
         2qZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=KRQTTAE5NIfXPm438X/CfTEjySDioYPsKEKUpYcXxZM=;
        b=Pnkje0qOYc/DOkLUrLLZYYrCJiZDDPiRomrYMoisgPX9JLCkPkodYjdVofufmJ1+G9
         NoC90zZyJFCnk46mQUEEPn3bxtqQVXzDkDsD9mUPYY3xwZUMhu4wmlbCuZ4AykrOEz+2
         Q5fbMyJoNR5BS/GIi9l5LZmT9nOfe7GrrRsY4QQIWFFSJScTKmja81ehdAxa2yviCKoO
         f2u22bTPMWPRvESOBb++io1Q+ePYekohz5QazOSZ8ClK1hT1lK1yJapZJwNDuNzfKupZ
         +EJ0zqBG8E/VSFtEiKa7HQeRAWeirL2dtRMKbPpRYiIcKRYx1hsJZVvvY3aduEFMFZji
         OKbw==
X-Gm-Message-State: APjAAAWqo6TGkVe0Kj5HpMXPiOBpAiUFfHQkfD1cuNWTz/HKZgGP0dgR
	TejRpiB0XRWwRh8IdzJcej+Bcn07Y1RVgA==
X-Received: by 2002:ac8:28a1:: with SMTP id i30mr33559371qti.245.1573577611445;
        Tue, 12 Nov 2019 08:53:31 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id i68sm9545923qkb.106.2019.11.12.08.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:53:31 -0800 (PST)
Date: Tue, 12 Nov 2019 11:53:28 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/9] staging: rtl8723bs: Remove blank lines before a close
 brace
Message-ID: <369fa1068078d98d658fe5e8fc335df1b22f5238.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch removes blank lines before a close brase.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 35 -----------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index e10e2d74cffd..7f88f433345d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -144,7 +144,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		#endif
 
 		pxmitbuf++;
-
 	}
 
 	pxmitpriv->free_xmitbuf_cnt = NR_XMITBUFF;
@@ -222,7 +221,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->no = i;
 		#endif
 		pxmitbuf++;
-
 	}
 
 	pxmitpriv->free_xmit_extbuf_cnt = NR_XMIT_EXTBUFF;
@@ -479,7 +477,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 	if (psta->isrc && psta->pid > 0)
 		pattrib->pctrl = true;
 #endif
-
 }
 
 static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *pattrib, struct sta_info *psta)
@@ -529,7 +526,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 		/* For WPS 1.0 WEP, driver should not encrypt EAPOL Packet for WPS handshake. */
 		if (((pattrib->encrypt == _WEP40_) || (pattrib->encrypt == _WEP104_)) && (pattrib->ether_type == 0x888e))
 			pattrib->encrypt = _NO_PRIVACY_;
-
 	}
 
 	switch (pattrib->encrypt) {
@@ -600,7 +596,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 exit:
 
 	return res;
-
 }
 
 u8 qos_acm(u8 acm_mask, u8 priority)
@@ -723,7 +718,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 				DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_icmp);
 			}
 		}
-
 	} else if (0x888e == pattrib->ether_type) {
 		DBG_871X_LEVEL(_drv_always_, "send eapol packet\n");
 	}
@@ -809,7 +803,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 			if (pmlmepriv->acm_mask != 0)
 				pattrib->priority = qos_acm(pmlmepriv->acm_mask, pattrib->priority);
-
 		}
 	}
 
@@ -866,7 +859,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					rtw_secmicappend(&micdata, &pframe[16], 6);
 				else
 					rtw_secmicappend(&micdata, &pframe[10], 6);
-
 			}
 
 			if (pattrib->qos_en)
@@ -939,7 +931,6 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 		default:
 				break;
 		}
-
 	} else
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));
 
@@ -976,7 +967,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 
 			if (pqospriv->qos_option)
 				qos_option = true;
-
 		} else if (check_fwstate(pmlmepriv,  WIFI_AP_STATE) == true) {
 			/* to_ds = 0, fr_ds = 1; */
 			SetFrDs(fctrl);
@@ -1067,13 +1057,10 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum+1)&0xfff;
 						pattrib->ampdu_en = true;/* AGG EN */
 					}
-
 				}
 			}
 		}
-
 	} else {
-
 	}
 
 exit:
@@ -1230,7 +1217,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 
 		mem_start = (unsigned char *)RND4(addr) + hw_hdr_offset;
 		memcpy(mem_start, pbuf_start + hw_hdr_offset, pattrib->hdrlen);
-
 	}
 
 	if (xmitframe_addmic(padapter, pxmitframe) == _FAIL) {
@@ -1482,7 +1468,6 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 		}
 
 		break;
-
 	}
 }
 
@@ -1566,7 +1551,6 @@ struct xmit_frame *__rtw_alloc_cmdxmitframe(struct xmit_priv *pxmitpriv,
 	pxmitbuf->priv_data = pcmdframe;
 
 	return pcmdframe;
-
 }
 
 struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
@@ -1607,7 +1591,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 			DBG_871X("%s pxmitbuf->sctx is not NULL\n", __func__);
 			rtw_sctx_done_err(&pxmitbuf->sctx, RTW_SCTX_DONE_BUF_ALLOC);
 		}
-
 	}
 
 	spin_unlock_irqrestore(&pfree_queue->lock, irqL);
@@ -1867,7 +1850,6 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	else if (pxmitframe->ext_tag == 1)
 		queue = &pxmitpriv->free_xframe_ext_queue;
 	else {
-
 	}
 
 	spin_lock_bh(&queue->lock);
@@ -1911,7 +1893,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 		plist = get_next(plist);
 
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
-
 	}
 	spin_unlock_bh(&pframequeue->lock);
 }
@@ -1961,7 +1942,6 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
 		*(ac) = 2;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BE\n"));
 	break;
-
 	}
 
 	return ptxservq;
@@ -2044,7 +2024,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 
 		hwxmits[4] .sta_queue = &pxmitpriv->be_pending;
-
 	} else if (pxmitpriv->hwxmit_entry == 4) {
 
 		hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
@@ -2055,7 +2034,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 	} else {
-
 	}
 
 	return _SUCCESS;
@@ -2109,11 +2087,9 @@ u32 rtw_get_ff_hwaddr(struct xmit_frame *pxmitframe)
 	default:
 		addr = MGT_QUEUE_INX;
 		break;
-
 	}
 
 	return addr;
-
 }
 
 static void do_queue_select(struct adapter	*padapter, struct pkt_attrib *pattrib)
@@ -2294,13 +2270,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			ret = true;
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_mcast);
-
 		}
 
 		spin_unlock_bh(&psta->sleep_q.lock);
 
 		return ret;
-
 	}
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -2353,13 +2327,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_ucast);
 		}
-
 	}
 
 	spin_unlock_bh(&psta->sleep_q.lock);
 
 	return ret;
-
 }
 
 static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struct sta_info *psta, struct __queue *pframequeue)
@@ -2393,9 +2365,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 			phwxmits[ac_index].accnt--;
 		} else {
 		}
-
 	}
-
 }
 
 void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
@@ -2499,7 +2469,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		pxmitframe->attrib.triggered = 1;
 
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
-
 	}
 
 	if (psta->sleepq_len == 0) {
@@ -2544,7 +2513,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 			pxmitframe->attrib.triggered = 1;
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
-
 		}
 
 		if (psta_bmc->sleepq_len == 0) {
@@ -2554,7 +2522,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 			pstapriv->tim_bitmap &= ~BIT(0);
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 		}
-
 	}
 
 _exit:
@@ -2563,7 +2530,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 	if (update_mask)
 		update_beacon(padapter, _TIM_IE_, NULL, true);
-
 }
 
 void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *psta)
@@ -2628,7 +2594,6 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 
 			update_beacon(padapter, _TIM_IE_, NULL, true);
 		}
-
 	}
 
 	spin_unlock_bh(&pxmitpriv->lock);
-- 
2.20.1


