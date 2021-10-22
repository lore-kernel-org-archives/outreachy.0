X-GM-THRID: 7021611435626070016
X-Received: by 2002:a63:2a10:: with SMTP id q16mr8976044pgq.45.1634908456675;
        Fri, 22 Oct 2021 06:14:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:f547:: with SMTP id h7ls2514637plf.10.gmail; Fri, 22
 Oct 2021 06:14:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWDjrj/tNuxYK9pm3VT4EsalOMyO5ERw2MS2tidE6Ro/X9QnSinEbDHYBjOrhp9RNjpZ6X
X-Received: by 2002:a17:90b:180b:: with SMTP id lw11mr14724375pjb.45.1634908455521;
        Fri, 22 Oct 2021 06:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634908455; cv=none;
        d=google.com; s=arc-20160816;
        b=oQtWNRu16ZX+IQqYEmd9KoKjNjjIMWcaq6/r9atIw5FnRqQsHKNb6S0QnnHH6r2/xe
         5898bVuV8yG91Rud3jzPgv1MgvXYvVeuKK6wQmHqCY06c4eG1x45KlXOm6LI+gMi7zi1
         UZpoCBwvjW7k0Wv+dAVs4m5IvnECu1QUE8igWH4ks5s1d0SqsR6xEWVEZMGBgHlbwYuX
         ULpKLO67DP2NRJljm+RrGHlq0JVAWiXgulHP1PDEm9xwaBgikgD+FHVBsT+3YJ1C3YDI
         TEPK15my2hUOJaCLS9yPNeJp83ksR3HGAIP+lWImF2PRifYyq8FfIjPr71NPomKVoxc2
         Mmfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TXWLKHBX+ezfpY/ptP0oDSG+Yl9iLNNcMxfctInrjpw=;
        b=jhhbJaLE4JoP+KOes6nPRWz5uYqsXiaHoijgXt644YvabxZFUiqlS+qFLibbXra2nf
         bwIp96lWAp+f1LEdgT5SG2o/qorZU5pr5tb/C+fEXJXtEcTS97/Kv1ok21FujIA3MJBs
         LdevhDNrYXGPG4cri7tvFZyWa4vdU1+COEfVtHW7DUCrisjBkOZ5ZU1bZo8oumnwmnh4
         5It4dI7phb1iTW/GmuAB88cMRTL7VyjCLJ7B+nLVdaVNqi8iPqOZ3ndwvnY3cNgNKMvL
         zAkWOBpDMdH2ety3BrLZZ6vRx7FzzAsiEcXmtITdx1qOByF4skOwIHIy1t2nnDJ+fRio
         2QWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="pNRf/IHI";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id x1si713646pjc.3.2021.10.22.06.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 06:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="pNRf/IHI";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102c.google.com with SMTP id oa12-20020a17090b1bcc00b0019f715462a8so3033492pjb.3;
        Fri, 22 Oct 2021 06:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TXWLKHBX+ezfpY/ptP0oDSG+Yl9iLNNcMxfctInrjpw=;
        b=pNRf/IHIydBQy3G2uyFeO7k98CdPm8qSQIErmFU9y+2QzfGwkckAoJPTs7j1GD1NCv
         uQjjg/5r0oaW0rBa/gZbOMiH5tAWyIGCmfByBcNKbeoNFfpBCXc46s69p1LTNOiOCbZx
         1YhzWLDPrTOFdd9xORiAJnagn8ctAKdGIGpLcKmIb3tvFDI9GkBTzPVkR5/udgqXfRZr
         Yq1KrWntCem0x4hcGGl7c1UDMhPSjymT7C3fXh2gN9jBbYROlk/5m7+2MzXT4wRzqoti
         6cja42IUDZZitRoA2LKkRU4RiqGQNQeaaUvwU/onMH4Z6urC9NXrTbGW//9R7wA3aH1O
         plnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TXWLKHBX+ezfpY/ptP0oDSG+Yl9iLNNcMxfctInrjpw=;
        b=gRJlAf9cbEFdlCfax77YxHj2AgWWXCUP0sdSbr/KRWWspC0HuPwa7HZMNUEQz3RvyQ
         8tmgbSlDaxwLe3r0v1ym/W1a6jrF9Yzo6qeZuBGBVwLnamgVblrgiwhM4OSKWK07QWST
         nghHvqMY6lnmciGPP/ww0MgUmOwpyE4ZckuErXZEeplRSZ1TMwW47SUs77wAbZ2YamY2
         g9Epm3nU4liNweIoZqpsldtX7Z5RycbnAlU14PBqapRZaWB9/SPeewpWDQNvjgnULEgu
         TcxM1lSmBjhGIM6E6WyqmTcH4M2Gm9obfKUdrqfT5IOqQl4VomAN+9IG4YdkwbugKXsj
         Ubxw==
X-Gm-Message-State: AOAM532DVgl2oPf7knoDVwLOW4vGZKN8pBtKsm+pB7tXZh84H1/FcUZN
	c6Yuojg4BFt7ebDdBWa5kfM=
X-Received: by 2002:a17:902:d485:b0:13f:2212:d631 with SMTP id c5-20020a170902d48500b0013f2212d631mr11212753plg.44.1634908455217;
        Fri, 22 Oct 2021 06:14:15 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id mq3sm11932413pjb.33.2021.10.22.06.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 06:14:14 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: kushalkothari285@gmail.com,
	kush19992810@gmail.com,
	outreachy-kernel@googlegroups.com,
	fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com
Subject: [PATCH v3 4/4] staging: rtl8723bs: core: Remove unnecessary blank lines
Date: Fri, 22 Oct 2021 18:43:21 +0530
Message-Id: <bf44b6e7805e723144d185c07ca16e2f27bf8f6a.1634906059.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634906059.git.kushalkothari285@gmail.com>
References: <cover.1634906059.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove useless blank lines

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: Removed whitespace errors
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 26 ------------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index fce3256cc275..639459d52261 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -316,8 +316,6 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	return _SUCCESS;
 }
 
-
-
 int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 {
 	int res = _FAIL;
@@ -367,7 +365,6 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 	kfree(pcmd);
 }
 
-
 void rtw_stop_cmd_thread(struct adapter *adapter)
 {
 	if (adapter->cmdThread &&
@@ -497,11 +494,8 @@ int rtw_cmd_thread(void *context)
 		} else {
 			rtw_free_cmd_obj(pcmd);
 		}
-
 		flush_signals_thread();
-
 		goto _next;
-
 	}
 
 	/*  free all cmd_obj resources */
@@ -591,7 +585,6 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 
 	if (res == _SUCCESS) {
-
 		pmlmepriv->scan_start_time = jiffies;
 		_set_timer(&pmlmepriv->scan_to_timer, SCANNING_TIMEOUT);
 	} else {
@@ -752,7 +745,6 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		case Ndis802_11AutoUnknown:
 		case Ndis802_11InfrastructureMax:
 			break;
-
 		}
 	}
 
@@ -1010,9 +1002,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 		psetstakey_para->algorithm = _NO_PRIVACY_;
 
 		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
-
 	}
-
 exit:
 	return res;
 }
@@ -1080,7 +1070,6 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
 
 	/* rtw_enqueue_cmd(pcmdpriv, ph2c); */
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
-
 exit:
 	return res;
 }
@@ -1112,10 +1101,8 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
 
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvextra_cmd_parm, GEN_CMD_CODE(_Set_Drv_Extra));
 
-
 	/* rtw_enqueue_cmd(pcmdpriv, ph2c); */
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
-
 exit:
 	return res;
 }
@@ -1150,7 +1137,6 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
 
 	/* rtw_enqueue_cmd(pcmdpriv, ph2c); */
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
-
 exit:
 	return res;
 }
@@ -1347,14 +1333,11 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
 
 	/* for debug purpose */
 	_linked_info_dump(padapter);
-
-
 	/* if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING|_FW_UNDER_SURVEY) ==false) */
 	{
 		linked_status_chk(padapter);
 		traffic_status_watchdog(padapter, 0);
 	}
-
 	rtw_hal_dm_watchdog(padapter);
 
 	/* check_hw_pbc(padapter, pdrvextra_cmd->pbuf, pdrvextra_cmd->type); */
@@ -1500,9 +1483,7 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 
 exit:
-
 	return res;
-
 }
 
 static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
@@ -1542,7 +1523,6 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	u8 res = _SUCCESS;
 
-
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (!ph2c) {
 		res = _FAIL;
@@ -1577,7 +1557,6 @@ u8 rtw_ps_cmd(struct adapter *padapter)
 	struct drvextra_cmd_parm	*pdrvextra_cmd_parm;
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	u8 res = _SUCCESS;
-
 	ppscmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (!ppscmd) {
 		res = _FAIL;
@@ -1673,9 +1652,7 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 
 exit:
-
 	return res;
-
 }
 
 struct btinfo {
@@ -2021,11 +1998,8 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	rtw_free_cmd_obj(pcmd);
 }
 
-
-
 void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 {
-
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *)(pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
-- 
2.25.1


