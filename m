X-GM-THRID: 6758464167600979968
X-Received: by 2002:a25:e04f:: with SMTP id x76mr24417272ybg.114.1573577677342;
        Tue, 12 Nov 2019 08:54:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7910:: with SMTP id u16ls717031ywc.9.gmail; Tue, 12 Nov
 2019 08:54:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqyc8KbkLOk203tXv31PIjnCIKqb7p7WBSPBhkIdLPjDOweuyXghoqZ3oxo/uA4bXZbmVbh2
X-Received: by 2002:a0d:cc90:: with SMTP id o138mr21820560ywd.193.1573577675795;
        Tue, 12 Nov 2019 08:54:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577675; cv=none;
        d=google.com; s=arc-20160816;
        b=dCYo+objt9MrZBvmbCr7LhEr02+ISDxHdNIoDq/ohFP2up/keyQ6cr98e8OUJYY42y
         kxKxhzRnbA0vvV+q9hNR0NosfSOdD5oGvc9J7OefQvaopJONo6VvI/WichDq3uhykdLY
         3rIkg9VuQw/7qWfOs/bFUIrIgvLf6+3CWyVJ2afjLptM5WTivQm3Uk0pebtAL9YpWfTQ
         ehJqLm/l/6yTmUrnUHgbT094ljL79zTIC0RuZxdhz5n3PWrhFGQ0nkmE66DdPlxhkW+B
         Y+9lIxkr40K44z0xxO7qLv993galp7bKTSC8ZHt+bHP4elWcyZBTJQs4L0uk+Ch5iI3P
         /ZoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=uRDDtR+g6T7cAS8dOvWZ7lRag0SQ32/105UUcuFUgRM=;
        b=XlXcWlZhdnPKp4Ck2T8ov2I9yNjJP3dYp8PPQt96KKSoETwxeDkMswq0m2POkF9bql
         NREpyatcfyOvSrMl5Zki8ABmIiCGYKCyhLknse1VA6ruS+seaI0941i/CjXxP4cJdxIu
         G89vbeZ3z/sxtzInS/NkYi8okBULNRR0+1lLhdi0mVaKBiqzJdjaGoa5UDUbqCdUPuRd
         LYnhTgQzMpEB2T9581vLJ2c1h9XPcFnAOIXDrPOOIycHRvwqNakGxE2M4mBeVLnkuPrc
         CgVtTrFy1a6ZDCgzgZ6hbCCKm4CAT7n2dIEYn/vCa7JZ6g/YA4xPBybiEF4sYwzVI7V6
         /liQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cUNUmyID;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id f184si1326667ybg.3.2019.11.12.08.54.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:54:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cUNUmyID;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id l24so20442398qtp.10
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=uRDDtR+g6T7cAS8dOvWZ7lRag0SQ32/105UUcuFUgRM=;
        b=cUNUmyID1o3qDKWEHs0cHvbYKAtTw8mUvrIS96y3gScQeRnNKqbRBmxMN5QIkISvMr
         2BkKyMv3ROjWyx7NwaGKhqMGclN2QmjQLw0SI8R4EHvvJrluQ5GhbaL6GFZ1DmMEasDW
         sszIqlk55au2BZ67KtfPO++ZjNjRMhlNXncTWtHcFRvcHfsb2MzyWmotrpVqhBsaM1QI
         z4oLaGGo1qiTbE1shBQ6YR1YsQhwJ0d1pMEuwtlJdfwE37IdY6pIo+EWrqG+wkqJmdRQ
         Uat+ctVZTn1o7xxUgR7DbMRWzw3NTyo1ydixeAA7dooDwuEul9TI4JDQkBYGk+pgvMaJ
         VxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=uRDDtR+g6T7cAS8dOvWZ7lRag0SQ32/105UUcuFUgRM=;
        b=tlluyfler1Ic9Ou+xmmMVbvbb/gmW2+VcOZGWCJL9yaJWI0uufqU0/aDZKnBnpFOil
         xBSbzVL4q8LMCaz95TcnqKDOxUcXUAwq5kcrUUGS1incwYQTDo8/CyDJkqWKxv7WMCHp
         HFG+LH7VMpf6afEoOZ8BdDBA0cXSsLNQG496TdBO9G/ZZqtTq3UJYcNMn0/IVatj8RLf
         MUwkrQ1g5o8i0cPkn7/GsuBED/SVmtfITsOVc8K3bz1A/X0knwTh93YvgebmGAemeYWP
         B4xgH9AcBF7ImOlyla6NUsMEi1rnh1voO4PUXCoB2loip4PsC+z3I7Zln38Nwev2z66S
         Ap6A==
X-Gm-Message-State: APjAAAVxOCwulOG8j+74VaOvk+zPD+hyhla20Z/2JjUHYd1IBuw8hC2K
	tqACbibB9xUxuVIGd9yLx+c=
X-Received: by 2002:ac8:4688:: with SMTP id g8mr32103887qto.361.1573577675467;
        Tue, 12 Nov 2019 08:54:35 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id l14sm9628968qkj.61.2019.11.12.08.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:54:34 -0800 (PST)
Date: Tue, 12 Nov 2019 11:54:32 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 5/9] staging: rtl8723bs: Add necessary braces
Message-ID: <9653d1c5ea7ebd7b4137edea4f5eef74ea65703b.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patchset adds braces when they should be used on all arms of
the statement.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 31 +++++++++++++++--------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index fdb585ff5925..42bd5d8362fa 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -370,8 +370,9 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 	/* 		Other fragments are protected by previous fragment. */
 	/* 		So we only need to check the length of first fragment. */
 	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
-		if (sz > padapter->registrypriv.rts_thresh)
+		if (sz > padapter->registrypriv.rts_thresh) {
 			pattrib->vcs_mode = RTS_CTS;
+		}
 		else {
 			if (pattrib->rtsen)
 				pattrib->vcs_mode = RTS_CTS;
@@ -679,8 +680,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
 		memcpy(pattrib->ta, get_bssid(pmlmepriv), ETH_ALEN);
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_ap);
-	} else
+	} else {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_unknown);
+	}
 
 	pattrib->pktlen = pktfile.pkt_len;
 
@@ -724,8 +726,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		rtw_set_scan_deny(padapter, 3000);
 
 	/*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
-	if (pattrib->icmp_pkt == 1)
+	if (pattrib->icmp_pkt == 1) {
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_LEAVE, 1);
+	}
 	else if (pattrib->dhcp_pkt == 1) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_active);
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
@@ -926,8 +929,9 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 		default:
 				break;
 		}
-	} else
+	} else {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));
+	}
 
 	return _SUCCESS;
 }
@@ -1204,8 +1208,9 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			ClearMFrag(mem_start);
 
 			break;
-		} else
+		} else {
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
+		}
 
 		addr = (SIZE_PTR)(pframe);
 
@@ -1446,8 +1451,9 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (!perp)
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
+		}
 		else {
 			protection = (*(perp + 2)) & BIT(1);
 			if (protection) {
@@ -1455,8 +1461,9 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 					pxmitpriv->vcs = RTS_CTS;
 				else
 					pxmitpriv->vcs = CTS_TO_SELF;
-			} else
+			} else {
 				pxmitpriv->vcs = NONE_VCS;
+			}
 		}
 
 		break;
@@ -1509,8 +1516,9 @@ static struct xmit_buf *__rtw_alloc_cmd_xmitbuf(struct xmit_priv *pxmitpriv,
 			DBG_871X("%s pxmitbuf->sctx is not NULL\n", __func__);
 			rtw_sctx_done_err(&pxmitbuf->sctx, RTW_SCTX_DONE_BUF_ALLOC);
 		}
-	} else
+	} else {
 		DBG_871X("%s fail, no xmitbuf available !!!\n", __func__);
+	}
 
 	return pxmitbuf;
 }
@@ -2177,11 +2185,12 @@ inline bool xmitframe_hiq_filter(struct xmit_frame *xmitframe)
 				, attrib->ether_type, attrib->dhcp_pkt?" DHCP":"");
 			allow = true;
 		}
-	} else if (registry->hiq_filter == RTW_HIQ_FILTER_ALLOW_ALL)
+	} else if (registry->hiq_filter == RTW_HIQ_FILTER_ALLOW_ALL) {
 		allow = true;
-	else if (registry->hiq_filter == RTW_HIQ_FILTER_DENY_ALL) {
-	} else
+	} else if (registry->hiq_filter == RTW_HIQ_FILTER_DENY_ALL) {
+	} else {
 		rtw_warn_on(1);
+	}
 
 	return allow;
 }
-- 
2.20.1


