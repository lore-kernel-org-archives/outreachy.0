X-GM-THRID: 6745529034450403328
X-Received: by 2002:a6b:ee07:: with SMTP id i7mr71325ioh.26.1570565866702;
        Tue, 08 Oct 2019 13:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:db48:: with SMTP id w8ls16603ilq.3.gmail; Tue, 08 Oct
 2019 13:17:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGt1nhl4OKXEQb7yme/GeTssDkjge5AmcSE97CKxN1mwCmXQaCaj5fz/LqVlbmHU8caGbu
X-Received: by 2002:a92:d986:: with SMTP id r6mr132099iln.261.1570565865307;
        Tue, 08 Oct 2019 13:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570565865; cv=none;
        d=google.com; s=arc-20160816;
        b=SRltnY2xFurwyBAwSYuB3Ne+My7BUDWUYkAvpiNLNtJk5k9ShGu+EmIYxSsg62kPnW
         o+WdTJLaOLGCVOa5oRRjoFVzTJ+tBqupNGaPU3UtsvVA1dptJi7H3rYcb1cqFf0Uhjrs
         zIg6SQTdcW7W4rJAyj7U0Hf7rFjVLLyw+p/9NDZIbjFJbBY15l08WMOLFapYGgfaL7MI
         jj201BmZ1Fls+NStMvWWAFIWALcinYWfOlFeNhxkpbJfK1hoNjrWnWSNVQK3gVQ62Ix1
         p5sDLpAOyAOSVsEKHeR1/w64AcuKXWlqGPFaz0/9LaMwugex/vZn0cjZxxRGHT9zNp8t
         DTxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0qxQS9bJ8Tr61c+DL1APR6UFGcZmcR1l62An+EGMrTM=;
        b=whWw2NXfeMDs4booaC9MG9EFaDoXv57FBRmsxdGVwlbEW4+HKVS2b6wuQ+0iB+93+h
         loj7L5jfNPhMt93jmtSvpJxzZ1HF80TvSfqQaK2dW3LAPNkeewBMKpGvhjKpcyIeG0dF
         kJsZbMPI9PsZwcxu/K/oJ/1muI0u5I/wjjoarSaWld2WbhwC1oRw6vKrnJkSHJ3eN6XS
         j1u8oj5gcA8CbFDrlwzZvw5qztv0J+BzEiM4luEB37B1iXS6gPmvvpeYuDzi5QMbEyX0
         t7J88pEYTQFnnQTZZIdsS4BLD1QGvlNQ3pJNpEnVZGGyUdjLPrx/TZ2tYvgAL1FdIc3X
         FH0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5f1IrJl;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id f11si1392018iok.4.2019.10.08.13.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 13:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5f1IrJl;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc43.google.com with SMTP id m7so6919087ywe.4
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 13:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0qxQS9bJ8Tr61c+DL1APR6UFGcZmcR1l62An+EGMrTM=;
        b=P5f1IrJlsbPzfHKCNh5ZZ0wn4d18UtQumHPEG108sYFHvWHpkybQKhTUVP/BCG/UT8
         eObmSWgWePlefG6/McWD767lLeoD9CEo/tyIvuTle07/avNONHqOEJOgNmpaCzDbgez5
         ICTaICG3YKsUYxLnSb/rW+KWNE/2erlmfouW/0RFUcV/GJvHau8SVedK7a62/yW9jI2z
         Qv/5rZG1zesIx2mF6AQmgqIfoW+CXxJ92MkoPFn+xp+ZvXSNiH0M3yLkAWZWB+uwkeuq
         nUyuxieunnJel8j6buKCkhuB5VExZZAXf7n0lveVYp8/LHY9nZ0xt8NGvl9oS1CiZIjb
         Uozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0qxQS9bJ8Tr61c+DL1APR6UFGcZmcR1l62An+EGMrTM=;
        b=Gtjtv3gj3/ZTd/8i0HHSV8dCAJ5WrQyastQ8vBfFiIzoFg66A4jjsM8zlZj5HHBhr7
         f8fEjRbiD+Uk6tqyh0bOmGl1CTivvxpWfDAZtGLWKQJm1lUeQ7P0vVtmMrmJGkwdFLhK
         asyoxFgdIo0R7ko4ptno6lcaY0vmtsEBlcICOIsIMZMuuxBirM9PjJakJI9Y8RzI+1R5
         FZeGdLqP981ib/B9f1OrIJAqkMHJtKdjWI4gbB/T1D6pjS0oNCmkhPLf+2EJJVWBpbSl
         NNimXRcyef9jFN3FqcfwyAz7/61mZbKlN9jBbpe+0hLtZY/gLU7GwmIoo46vRXFVUZRQ
         eq6g==
X-Gm-Message-State: APjAAAXIxmcMcSwITcLrkaGHm82X3FEQlVFXgjN4IZNkZ4oJJURgVnFP
	DyIfzFV2iCCdDirXkQfIArl0fp4nncY=
X-Received: by 2002:a81:7dc5:: with SMTP id y188mr140098ywc.504.1570565864699;
        Tue, 08 Oct 2019 13:17:44 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id z127sm16798ywd.45.2019.10.08.13.17.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 13:17:43 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: rtl8723bs: core: Remove typecast in call to kfree
Date: Tue,  8 Oct 2019 13:17:38 -0700
Message-Id: <1570565858-91737-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove typecast in the call to kfree as it is not needed.
Issue found using the below coccinelle script with options -I and
--recursive-includes,

@@
type t1;
expression *e;
@@

-kfree((t1 *)e);
+kfree(e);

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_cmd.c       | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme.c      | 8 ++++----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c      | 2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 6d18d23..a1f5016 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
 	if (psetstakey_para == NULL) {
-		kfree((u8 *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1496,7 +1496,7 @@ static int rtw_ap_set_key(
 	}
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
 	if (psetkeyparm == NULL) {
-		kfree((unsigned char *)pcmd);
+		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
 	}
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 8d93c2f..e6fea96 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -372,13 +372,13 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 	if ((pcmd->cmdcode != _JoinBss_CMD_) &&
 	    (pcmd->cmdcode != _CreateBss_CMD_)) {
 		/* free parmbuf in cmd_obj */
-		kfree((unsigned char *)pcmd->parmbuf);
+		kfree(pcmd->parmbuf);
 	}
 
 	if (pcmd->rsp != NULL) {
 		if (pcmd->rspsz != 0) {
 			/* free rsp in cmd_obj */
-			kfree((unsigned char *)pcmd->rsp);
+			kfree(pcmd->rsp);
 		}
 	}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 4000125..e548414 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2209,7 +2209,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 
 	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
 	if (psetauthparm == NULL) {
-		kfree((unsigned char *)pcmd);
+		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
 	}
@@ -2286,7 +2286,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	default:
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n rtw_set_key:psecuritypriv->dot11PrivacyAlgrthm = %x (must be 1 or 2 or 4 or 5)\n", psecuritypriv->dot11PrivacyAlgrthm));
 		res = _FAIL;
-		kfree((unsigned char *)psetkeyparm);
+		kfree(psetkeyparm);
 		goto exit;
 	}
 
@@ -2294,7 +2294,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (pcmd == NULL) {
-			kfree((unsigned char *)psetkeyparm);
+			kfree(psetkeyparm);
 			res = _FAIL;  /* try again */
 			goto exit;
 		}
@@ -2310,7 +2310,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 		res = rtw_enqueue_cmd(pcmdpriv, pcmd);
 	} else {
 		setkey_hdl(adapter, (u8 *)psetkeyparm);
-		kfree((u8 *) psetkeyparm);
+		kfree(psetkeyparm);
 	}
 exit:
 	return res;
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 3933e863..9590e6f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1466,11 +1466,11 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 		}
 	}
 
-	kfree((u8 *)bssid);
+	kfree(bssid);
 	return _SUCCESS;
 
 _mismatch:
-	kfree((u8 *)bssid);
+	kfree(bssid);
 
 	if (pmlmepriv->NumOfBcnInfoChkFail == 0)
 		pmlmepriv->timeBcnInfoChkStart = jiffies;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b5dcb78..4326847 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2212,7 +2212,7 @@ void rtw_free_hwxmits(struct adapter *padapter)
 
 	hwxmits = pxmitpriv->hwxmits;
 	if (hwxmits)
-		kfree((u8 *)hwxmits);
+		kfree(hwxmits);
 }
 
 void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry)
-- 
2.7.4


