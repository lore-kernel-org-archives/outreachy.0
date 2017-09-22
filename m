X-GM-THRID: 6468588291165782016
X-Received: by 10.28.92.18 with SMTP id q18mr202453wmb.15.1506092712330;
        Fri, 22 Sep 2017 08:05:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls215970wmf.1.gmail; Fri, 22 Sep
 2017 08:05:11 -0700 (PDT)
X-Received: by 10.28.24.207 with SMTP id 198mr221062wmy.12.1506092711572;
        Fri, 22 Sep 2017 08:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506092711; cv=none;
        d=google.com; s=arc-20160816;
        b=FLlEL4QkRq4bWeF/vplmziVStfxhYYlgMN6h5jTCDhBL+cqxWTd9o7H7WjoL4c59tW
         ZEwgLm05K8yETGQrTbPEN0Ow5HY+L9zXeNGkE2TJp/W5sVlMG6zxLw+IoBIhkfol3TET
         KSJYkRUgYGVSIkLj2++HiUHbDJHZUyqPgQcdvS4opB/AQEmQNUyC02GBhNivePxUS5I/
         NHfLQQXWAh9vtXD3hvNj1O29FSd0QNsF8zTn+6FIk2Uv6hsEWqWE8Asfrq6pnUPL4Rky
         feRTq0Zk0KsSgmS5RYRz4PrMVpKcdkPpsKRdUtyFiwjSRF/7X1k7xUxC+tgLljx2YLG2
         GsDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=eQ+sOR23N5n8nVIYiiQNIXeQbzqd2szy8mnMi6gtv1w=;
        b=d8VFxqkSQXntMJ2Kq7SJ3kpZaaJAE3UwRcbdpTNPqB5F6WK5dwH+tw8mRKpTtx8rBM
         rwYggJMavDKEPTz1s8rbJh+h+tIJ51dnEkuz2fkzEHHl8a83MAfoCpW3Cql5bZDZhBG4
         0WoVfRdY6TH6i6GZCgaxCsrRDdQqfHpFqqaCOuAx2SlF4TB6yRwlOMsKy4q+jjFqC+79
         +lAwNUyZ0vL1B1BWElvzB9l8TnRp/L84VR6Bf4O5pNWebqgnzM0OxnFxT4Vd7XIQxmqD
         q0QZSQRU6v9ngCWwtj6S23AOOi+JlxOT00PTXkKJCaabZmf75zL8etBFKhDg3VcEAsWW
         Epkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gsKpo7LP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id q145si183497wme.4.2017.09.22.08.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 08:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gsKpo7LP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id x17so1548462wmd.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 08:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eQ+sOR23N5n8nVIYiiQNIXeQbzqd2szy8mnMi6gtv1w=;
        b=gsKpo7LPMbW985uPLr0FloM7w7BtfnnRiREl7ZSfCFVOqY4Z70VhF7rXRkBm5y+TFo
         lxq3WWFG36/VDSlASNTQqJQHNg1yrCj30KTv0fcymSp3JxxiLBarVovy2TntjnZdl58R
         GDrau5kRRSVG0Y/BFmQxgV7Bmhh0RpB8Wob6mcQ7yywnoANwr7MIjvQxajLEwJZ3F1jb
         NGnOlg21vjb+4fdmsVoLvSVlZ+ZyENxxMJKbTqrU9W+J5vhQ3L6SinZWQdwPiQnzOuCh
         wEc/oKB8VV3xfcOjqD7Ns2eGboq1WdcqHIMzXQeUKZxutzmV4bz02YXg6VsRFT+fsZpn
         g3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eQ+sOR23N5n8nVIYiiQNIXeQbzqd2szy8mnMi6gtv1w=;
        b=m5JeBDnNSLMGgPtMfZTVa/3uUU9gH4I4TBukUO3Lcta5ccWAbcaoXZo8QinG57WZIJ
         qtQQ9avl1SLPlUVwbC2w5Zxo5RSRnEgZBgs1lKsAnrPmfnHbq6ayBJFTFuhOr+4D7mVh
         35XF5F06xQJDhub844fqZQA0b9ElIAjsMGCP33g7iTo8Gl4scnn2wKLw3D5teSSruhcI
         Thb6HgADCtm1vVNCpgQ2kiSwkqOvUuIiHsfuvJC6bdhg+4RzBsQ92ZmzbHWa5YlIIwdm
         d/XqQ155TbWUj+dGejnmnYehiQ2FVS0tnOB6xfgxnoa82g3Rm3DdwLwL+scmUYa7Tk3S
         wH3A==
X-Gm-Message-State: AHPjjUgsUx/GOKkgyfQtVgy1Myowq7KImE3z5yp1BU4XSBsnQzSNMwBk
	a9Aio+HebNk5fTMdmP03aAY=
X-Google-Smtp-Source: AOwi7QC/m/AzLGd4C7honk66/hHuNxwRGWVjBRn7xj2ju9ZSbSb95+5mU4wFxsjBbdesgO00ApttJg==
X-Received: by 10.28.179.9 with SMTP id c9mr4583069wmf.57.1506092711278;
        Fri, 22 Sep 2017 08:05:11 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id e77sm102686wmf.27.2017.09.22.08.05.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 08:05:10 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] Staging: rtl8723bs: core: Code clean up
Date: Fri, 22 Sep 2017 08:04:52 -0700
Message-Id: <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506092223.git.georgiana.chelu93@gmail.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506092223.git.georgiana.chelu93@gmail.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>

Clean the code to improve the coding style.

Fix minor issues reported by checkpatch.pl:
* CHECK: Alignment should match open parenthesis
* CHECK: Logical continuations should be on the previous line
* WARNING: line over 80 characters

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 6c59faf..8dccd87 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -638,7 +638,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 #ifdef CONFIG_AUTO_AP_MODE
 	if (check_fwstate(pmlmepriv, _FW_LINKED) &&
-			pmlmepriv->cur_network.join_res) {
+	    pmlmepriv->cur_network.join_res) {
 		struct sta_info *psta;
 		u8 *mac_addr, *peer_addr;
 		struct sta_priv *pstapriv = &padapter->stapriv;
@@ -761,8 +761,9 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 			return _SUCCESS;
 
 _issue_probersp:
-		if ((check_fwstate(pmlmepriv, _FW_LINKED)  &&
-			pmlmepriv->cur_network.join_res) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
+		if ((check_fwstate(pmlmepriv, _FW_LINKED) &&
+		     pmlmepriv->cur_network.join_res) ||
+		    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
 			/* DBG_871X("+issue_probersp during ap mode\n"); */
 			issue_probersp(padapter, get_sa(pframe), is_valid_p2p_probereq);
 		}
@@ -2350,8 +2351,7 @@ void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *p
 
 void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
 {
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return;
@@ -2368,8 +2368,7 @@ s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntfr
 	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
 	struct submit_ctx sctx;
 
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return ret;
@@ -2397,8 +2396,7 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
 	u32 timeout_ms = 500;/*   500ms */
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return -1;
@@ -6356,10 +6354,10 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
 		DBG_871X(FUNC_ADPT_FMT" "CHAN_FMT"\n", FUNC_ADPT_ARG(padapter), CHAN_ARG(&in[i]));
 
 		set_idx = rtw_ch_set_search_ch(pmlmeext->channel_set, in[i].hw_value);
-		if (in[i].hw_value && !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED)
-			&& set_idx >= 0
-			&& rtw_mlme_band_check(padapter, in[i].hw_value)
-		) {
+		if (in[i].hw_value &&
+		    !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED) &&
+		    set_idx >= 0 &&
+		    rtw_mlme_band_check(padapter, in[i].hw_value)) {
 			if (j >= out_num) {
 				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
 					FUNC_ADPT_ARG(padapter), out_num);
-- 
2.7.4


