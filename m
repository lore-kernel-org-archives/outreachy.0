X-GM-THRID: 6754475582330765312
X-Received: by 2002:a25:8388:: with SMTP id t8mr11324109ybk.413.1572648960699;
        Fri, 01 Nov 2019 15:56:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d98d:: with SMTP id q135ls1306166ybg.9.gmail; Fri, 01
 Nov 2019 15:55:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKJwhbRtoqsQP9fTyW8iqTtEOYpddRy9Hee0VnAY12i8OxfUvkQTF/1hxp0I39/wr7I71I
X-Received: by 2002:a25:9384:: with SMTP id a4mr11916857ybm.186.1572648959371;
        Fri, 01 Nov 2019 15:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572648959; cv=none;
        d=google.com; s=arc-20160816;
        b=Em8oh1VHupaWwxo5iyTa1KMJWNNhMFV8Qj/Tr8mJwqtSKvRTpIPU0XexOlpk3NqAe7
         NHpZ/VcaLC2av5vMw0cOIzhCg04QvCpA9Ld0cgKedT2mijitTkjBz5Q4k3IzWwxYywqO
         BZrZhCI3B53sOQNfl8ikF3sIDKEYSAJpvthyN/Hx3B6XdSGWpCZOG3RwgNIxsEhz7749
         z1PjIG4Uyz1sH2Okdc0y2IwnAqmv9kIkuNO/BrNbqpfKkxhRM7ktgCTMc5Mn0pN9eOLx
         imatpwkSR3sUNf+oFgWVb3Kr/1L1pa7FkwGcOeWVRbYDIeXE99Ng6qKJS5haxwvfETuK
         D/9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+6mUSX2PY6g+whx1kLV3CK/lvx0UDl5jF41QX1okt4k=;
        b=p5Pee8PDWL6P61gD/yskZagCko4lNQ3WAMZzo0IMZRpfMAPzxM2R/sqIbWpfCfxdnj
         papaTRMXrhbKKpHxhDuYmPlkcSTu/UcgQ2iVMDY9TwRbMLiYQEa+x6c/uZjQfyUJFpP7
         wN9D1eG8OYuih7VbcJd6Sd6YZpzEeLM7lpNCsiKuEXRr+A/nizIAg0sVLFbpNk90UiD4
         PbpolYZY/U5Djq4FWEfn50pmtv3G6KIfw0VoBZCT1FolpzeAKolV9vzAARKXeWaShejE
         rYg3hdNqSE58cni5iBHnS87vr4ZyOsv7+TOwVXE7f28F+KTBUHt2H0OKDcN5FplcnPSg
         2lDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rf60PVly;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m2si609632ybm.5.2019.11.01.15.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rf60PVly;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id z4so1963617pfn.12
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=+6mUSX2PY6g+whx1kLV3CK/lvx0UDl5jF41QX1okt4k=;
        b=rf60PVlyzon/enzNkLei4XaM9yW3AY3hd35XaaH+LVhUUBB/PIVgYHIKbvv/ySzki6
         sZsx/bz3x3NKZDgdsdfC+MlbzYrO5xkOQQ3YP8JMCzC6bI99RsA/Tf50MHpz1IebCyVN
         8kdq64q6HxD1QTFxG0ddITwAi4je6jiFMTC2q3qgNSMTpA76CcF1gvWvuBhMy4ctLkTi
         2vgsExsIgGvu1X/gCiAOuXFVS0ME0oSaAjOJrQWhtqtgsR+YbHwOQ+0Ug3EbU8IWmD42
         bWVpmyaGQSrxFtKEObyKVSBdGLx/0LxqK16q6rRv8a9FesWOTAcA84hpVzkpVgI7Pyop
         hHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=+6mUSX2PY6g+whx1kLV3CK/lvx0UDl5jF41QX1okt4k=;
        b=c1X30QB954QVyYjb+BA1gDVc5r/3aE/sEsFChxSRgRi6OOcBUGEIbLEt9vOvzVyue0
         v57aPQLhea70OU72bvNNBF+rmYXtxuONWHKH3tIGZMuwlWYkupPUveMfvNLem31OMoLM
         n8jV8L8TaY188cl9Zwbve6xBgw+XTccu3CA2YkvdE/QVqpjTn5+sMew/03EmQ5jfvVYH
         kDUZz2LkbOXDdH/XGZeQsW43Go/74zdwhTnIZUzJpmT0HWCTlRfpPSbaTJccX+aqfhKH
         JflTaJwKaW/DgnJ8mCcaxyOQTKT4FzzO8nyk6MSkqzgQ2GDbSAW4MbH9JoSFLVcrDBxX
         Ayeg==
X-Gm-Message-State: APjAAAWNTI4xZbwcZrHbh0HQ2G5vpToFVnza4ojlM0rRiIGD5Gxnw0O/
	236IZQAqp+mcwYOJFnWnr64=
X-Received: by 2002:a17:90a:9505:: with SMTP id t5mr18418020pjo.133.1572648958338;
        Fri, 01 Nov 2019 15:55:58 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id z13sm8569474pgz.42.2019.11.01.15.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:55:57 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:55:55 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8723bs: Remove blank lines before a close
 brace
Message-ID: <6fccf27583fd97170665992d4236dce2fe1804fa.1572648706.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572648706.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572648706.git.jarias.linux@gmail.com>

This patch removes blank lines before a close brase.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 35 -----------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 1f78a4c56d79..0c350d080b4a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -145,7 +145,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		#endif
 
 		pxmitbuf++;
-
 	}
 
 	pxmitpriv->free_xmitbuf_cnt = NR_XMITBUFF;
@@ -224,7 +223,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->no = i;
 		#endif
 		pxmitbuf++;
-
 	}
 
 	pxmitpriv->free_xmit_extbuf_cnt = NR_XMIT_EXTBUFF;
@@ -482,7 +480,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 	if (psta->isrc && psta->pid > 0)
 		pattrib->pctrl = true;
 #endif
-
 }
 
 static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *pattrib, struct sta_info *psta)
@@ -532,7 +529,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 		/* For WPS 1.0 WEP, driver should not encrypt EAPOL Packet for WPS handshake. */
 		if (((pattrib->encrypt == _WEP40_) || (pattrib->encrypt == _WEP104_)) && (pattrib->ether_type == 0x888e))
 			pattrib->encrypt = _NO_PRIVACY_;
-
 	}
 
 	switch (pattrib->encrypt) {
@@ -603,7 +599,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 exit:
 
 	return res;
-
 }
 
 u8 qos_acm(u8 acm_mask, u8 priority)
@@ -726,7 +721,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 				DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_icmp);
 			}
 		}
-
 	} else if (0x888e == pattrib->ether_type) {
 		DBG_871X_LEVEL(_drv_always_, "send eapol packet\n");
 	}
@@ -812,7 +806,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 			if (pmlmepriv->acm_mask != 0)
 				pattrib->priority = qos_acm(pmlmepriv->acm_mask, pattrib->priority);
-
 		}
 	}
 
@@ -869,7 +862,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					rtw_secmicappend(&micdata, &pframe[16], 6);
 				else
 					rtw_secmicappend(&micdata, &pframe[10], 6);
-
 			}
 
 			if (pattrib->qos_en)
@@ -942,7 +934,6 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 		default:
 				break;
 		}
-
 	} else
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));
 
@@ -979,7 +970,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 
 			if (pqospriv->qos_option)
 				qos_option = true;
-
 		} else if (check_fwstate(pmlmepriv,  WIFI_AP_STATE) == true) {
 			/* to_ds = 0, fr_ds = 1; */
 			SetFrDs(fctrl);
@@ -1070,13 +1060,10 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
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
@@ -1233,7 +1220,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 
 		mem_start = (unsigned char *)RND4(addr) + hw_hdr_offset;
 		memcpy(mem_start, pbuf_start + hw_hdr_offset, pattrib->hdrlen);
-
 	}
 
 	if (xmitframe_addmic(padapter, pxmitframe) == _FAIL) {
@@ -1488,7 +1474,6 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 		}
 
 		break;
-
 	}
 }
 
@@ -1573,7 +1558,6 @@ struct xmit_frame *__rtw_alloc_cmdxmitframe(struct xmit_priv *pxmitpriv,
 	pxmitbuf->priv_data = pcmdframe;
 
 	return pcmdframe;
-
 }
 
 struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
@@ -1615,7 +1599,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 			DBG_871X("%s pxmitbuf->sctx is not NULL\n", __func__);
 			rtw_sctx_done_err(&pxmitbuf->sctx, RTW_SCTX_DONE_BUF_ALLOC);
 		}
-
 	}
 
 	spin_unlock_irqrestore(&pfree_queue->lock, irqL);
@@ -1876,7 +1859,6 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	else if (pxmitframe->ext_tag == 1)
 		queue = &pxmitpriv->free_xframe_ext_queue;
 	else {
-
 	}
 
 	spin_lock_bh(&queue->lock);
@@ -1920,7 +1902,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 		plist = get_next(plist);
 
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
-
 	}
 	spin_unlock_bh(&pframequeue->lock);
 }
@@ -1970,7 +1951,6 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
 		*(ac) = 2;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BE\n"));
 	break;
-
 	}
 
 	return ptxservq;
@@ -2053,7 +2033,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 
 		hwxmits[4] .sta_queue = &pxmitpriv->be_pending;
-
 	} else if (pxmitpriv->hwxmit_entry == 4) {
 
 		hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
@@ -2064,7 +2043,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 	} else {
-
 	}
 
 	return _SUCCESS;
@@ -2118,11 +2096,9 @@ u32 rtw_get_ff_hwaddr(struct xmit_frame *pxmitframe)
 	default:
 		addr = MGT_QUEUE_INX;
 		break;
-
 	}
 
 	return addr;
-
 }
 
 static void do_queue_select(struct adapter	*padapter, struct pkt_attrib *pattrib)
@@ -2303,13 +2279,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			ret = true;
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_mcast);
-
 		}
 
 		spin_unlock_bh(&psta->sleep_q.lock);
 
 		return ret;
-
 	}
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -2362,13 +2336,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_ucast);
 		}
-
 	}
 
 	spin_unlock_bh(&psta->sleep_q.lock);
 
 	return ret;
-
 }
 
 static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struct sta_info *psta, struct __queue *pframequeue)
@@ -2402,9 +2374,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 			phwxmits[ac_index].accnt--;
 		} else {
 		}
-
 	}
-
 }
 
 void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
@@ -2508,7 +2478,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		pxmitframe->attrib.triggered = 1;
 
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
-
 	}
 
 	if (psta->sleepq_len == 0) {
@@ -2553,7 +2522,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 			pxmitframe->attrib.triggered = 1;
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
-
 		}
 
 		if (psta_bmc->sleepq_len == 0) {
@@ -2563,7 +2531,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 			pstapriv->tim_bitmap &= ~BIT(0);
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 		}
-
 	}
 
 _exit:
@@ -2572,7 +2539,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 	if (update_mask)
 		update_beacon(padapter, _TIM_IE_, NULL, true);
-
 }
 
 void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *psta)
@@ -2637,7 +2603,6 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 
 			update_beacon(padapter, _TIM_IE_, NULL, true);
 		}
-
 	}
 
 	spin_unlock_bh(&pxmitpriv->lock);
-- 
2.20.1


