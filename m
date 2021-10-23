X-GM-THRID: 7021611435626070016
X-Received: by 2002:a17:90b:4a07:: with SMTP id kk7mr5322601pjb.37.1634974668470;
        Sat, 23 Oct 2021 00:37:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e80a:: with SMTP id u10ls6942655plg.5.gmail; Sat, 23
 Oct 2021 00:37:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjBg7i9b9suCuSiBCF2He3US1BZcd0TE2b79juzX69oYKUqNAeFAeMA6DWU5xpEfNP14Ms
X-Received: by 2002:a17:90b:1804:: with SMTP id lw4mr5404008pjb.174.1634974667211;
        Sat, 23 Oct 2021 00:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634974667; cv=none;
        d=google.com; s=arc-20160816;
        b=DBF3nVm6cAvFM5Y0LG4Wh5ACM7DU4YyQMhFRjsQz5ZkihigC+/vIEoUqE178Bnn4KT
         je/A6UmNWKyIDeym5pB7cu7Gm8jpLIZqc9JBkAoa7KbOiA0Rk2tVxS6VJIQfi3pugo5b
         s+BtyKUns0rn/3n3M/IK3p+DDezUMqbo6RA8V4juBfgTG6b8NL+WEfU/s5c8vW47iV+t
         LoUjRi3ehmtKdROogg3hUK+eNcbm00t6oFTVMPCu/u8+eMkUU0wKjFGp4KxAa7GI1r2i
         j0jykH8/GSBHxKGxc34tfr9Tehu62o09YiYwnnREOCtHzN9N88DzjxcL3nSK7htw1bY8
         0yCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JBgnyAymbMlZzBjwCM1w0weMiRh/0NNAG6lng/vwJrY=;
        b=aD11Bfm4QNrsdrmePOq6/7zTX8sj5+5mhbgK/thR2RCAdUpapiWZjpWkjesU9SIJv0
         fOhT5ECUen9ywhwSxxDnbN0fl+uHvDW9817sUpqO+ngyA75oYraQNt2LmcdP2Y5a6GyR
         2YaG+eQ6it5Nh7/j+FnRA/Hl0ZTY0pwrAyoh0MNJTe72O6O/YvhvFL7+sP/Jp1gMoPUk
         YoUWsVfBFbfzwE/41bXYp0rb57OQ4ygc4mHSJABgQ1Dm/aw0YLuYcW9xirX+I5K7dBa8
         0cYso6IvLSTKctlQbDVWoLhXAuPhPSetDcSepYn5C7zJqh853Sil8ElUtcJUKAywJrUf
         kqqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ohmblJTb;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id s22si519068pfg.2.2021.10.23.00.37.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 00:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ohmblJTb;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id f4so1567320plt.3;
        Sat, 23 Oct 2021 00:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JBgnyAymbMlZzBjwCM1w0weMiRh/0NNAG6lng/vwJrY=;
        b=ohmblJTbXi5lxEg9vYHKWeZWZmjf8pnULMSTu6HJ3gyJwn4Q6/ydLLHtKDJI38nqiF
         eLijtzM/mYDQuIyP40aOIRm6Icaaj4t24j4b5UXMpp/Vvqard7MJaJ9hJtIYwHfFjGRA
         9Zg7Vy1C8QK9nfjLOP983Uflnf74rBejcil5wjQvvaI4u7eRYk6qGkpgzG25V2LUKOXT
         cQvia8Ka5+ry+sds87AlsLCZxAhi+aqR0ORUyb1MFkKSZwvyi4WeGDrFS73PaqtQeBO8
         hzU3xGaPqe8pFLKTveA5MCqqRmR5ntv1LTDvCyTdugbuOMgd24epDsHN5WN3t/pKGgL1
         Yffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JBgnyAymbMlZzBjwCM1w0weMiRh/0NNAG6lng/vwJrY=;
        b=f5wcxecyXvR4N8iELfVfDINBMC74QQCadjELbd10vBcI5m+yHbVhRZ9prKTZ8yDI3m
         I80eajno8MQkHxMJMnSn7VDEV46sonqPKRzGwzfANtGPg3hou0L+LqJhJeGqy1XyKmmy
         f8POlTMgLxrizY1px9XAwckL3K5guz3sfL6Jp+YrRyMQIotItkw+n1/j7Qqud0RbOOtQ
         mNUfvdcbnpRUA2+4Ifiel/BdLYxWJInJbMNQin3gGTyQYlc9Zvs8w5JV3Ke+/otE4j/l
         L/uAlzPth6I3ZrMko6lVdAyObjSqiS9q/W2XXzPblEZmfldKwN0gvRyeB5W6y/eWxppD
         qmDw==
X-Gm-Message-State: AOAM530TosAQzI5T7cdU2GWhh+jR3oVaczgDux2QqrpaA03Il1l3hEr9
	o8OC1mlx386aaXK1cN9MppI=
X-Received: by 2002:a17:90b:4f4d:: with SMTP id pj13mr16595670pjb.243.1634974666927;
        Sat, 23 Oct 2021 00:37:46 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:5173:67c9:d8e4:2819:8ee8:8de4])
        by smtp.googlemail.com with ESMTPSA id c4sm13949791pfv.144.2021.10.23.00.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Oct 2021 00:37:46 -0700 (PDT)
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
Subject: [PATCH v4 4/4] staging: rtl8723bs: core: Remove unnecessary blank lines
Date: Sat, 23 Oct 2021 13:05:50 +0530
Message-Id: <78aabc0031d43c21ef06ae8d70f79412142d0784.1634967010.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634967010.git.kushalkothari285@gmail.com>
References: <cover.1634967010.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove useless blank lines

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---

Changes in v4: Move the version notes
Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: Removed whitespace errors


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


