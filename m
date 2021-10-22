X-GM-THRID: 7021853580963348480
X-Received: by 2002:a05:6602:1410:: with SMTP id t16mr8430144iov.160.1634902714804;
        Fri, 22 Oct 2021 04:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7b03:: with SMTP id l3ls1639020iop.5.gmail; Fri, 22 Oct
 2021 04:38:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLSpeCSyph3fpwzYIowyNPVy0ucboIN8Imob+Y8hCHbG78qQpCb+A5mRGoYFP87B/ZK65+
X-Received: by 2002:a5d:87c8:: with SMTP id q8mr8387323ios.117.1634902713437;
        Fri, 22 Oct 2021 04:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634902713; cv=none;
        d=google.com; s=arc-20160816;
        b=u8Np/OyioGlwRn7lEf6lHvmMmLHbvuaOoz1PJoPEECV5pNL/fEn/+ZKWqWlKgszuUC
         u/tY+WuorDqlryHF0B6RWpfuk4KLFDOxm3nHKeiFu+lD5qDxT2owmobjQEIbimB+tc7i
         +x85t39u/CWOYO5bi4QYHgxlB0ID83gjjblKSFw2oZTJhpWVpLBg/3g1GeH7o1f4PO8w
         XgY8AtZExQQFENfpAtpNcvNxl5mDnZOc9ooJUQEY7Fvnm+qgKnpVlul0HRGXk1IO3DoV
         mOrUJazPIroMA0/s6YZJ+cGgfchTBAKMk/qB11ynic8YuPS320hWGC0HfNaBxR/fJXHg
         2J9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Rccfm12KpSvWMnfVMFO4QKNXNCfzMa0oV3Fo5GIqPt0=;
        b=atjjnnGlPGoJu9U67Yp+zYgtboDo6hKQbbdG7DKdHOXVl2pG5NLWtjmmlobTqqp2Oh
         8zG1XKaH9WCDVQpNb4eM3BKQm+oRYvPBQu+2XrLFJrxY6L/omoZFmPXpE3aTw4PkQKUL
         yKU+GcVikVEqmLp5k/wJKzDCswrOzp0Hpig1ZLNoMNSBVZaSZmVcTEf0jpEIEG7IO2wq
         OZ3aKhiJoPdn0NmzvQOrpOzgM7PmwcEroCpSNm1/gPRsxYZkGpAg+qwzJklNc/yiUXq/
         XC57mZ2+V2pVS1kwVq2Q8GBTJR6Aa2sCIZuuQ+dj3h7pHF1a0XC6038S/ydumG8zXUZt
         Z/VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iqI03UhX;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id s3si227074iog.1.2021.10.22.04.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 04:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iqI03UhX;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id g184so3066217pgc.6;
        Fri, 22 Oct 2021 04:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rccfm12KpSvWMnfVMFO4QKNXNCfzMa0oV3Fo5GIqPt0=;
        b=iqI03UhX5hT7fF3H0iiH3I5GYZpNeA+i0X7rTuDM7HLJQ/3FM4vfNLuXwVTTHgk9EJ
         uppdEkgMh16sH68w72mUsFc0Udv/wqv9y4l1JYmN4newEPyG2E+vIwSIMno04hWxw0H0
         Ya64lNEsF+FgE201TgwiY3vrWjZllECqimTXhoE90M3740d3xYcmAP9zmvcp0QAytvC0
         I3cEILn+eW8hMMYOErjQon6ktP9bT5tUFq/0fD2dISqNFNgMUCcffrr2giMyNEU19L25
         ETceSUS0n9AvVHLbEVeiPoK0eng7d7y0dWX8skISjThvQVjZqtZf5TvmJjtb9hajINH5
         BPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rccfm12KpSvWMnfVMFO4QKNXNCfzMa0oV3Fo5GIqPt0=;
        b=60BKu2DP2BDRzlmCLYbk2Z8ITjNtrPf3QMoUwZJZzFgEdtlNoBE8Smusuq58bMFN+Z
         kPO640H4Qs3AEC0DKBd2EMxqgzEXYvG4CIzEwnFSd0qhlnS7frWvE9sd4TESz0C7MHC1
         Ha30RpPeXEIXUXlDsAD54TZo7AuBU39huEDbKVC/z2v+0OE3f+fBPSvzxD8yq4OpWuvI
         pZAl9p4VR5c6cODRsNuFeA/rdz5oZlixCbdWMI4CNBcNAPTqyLqM+3F86+/LnTjEk7EH
         fbhju9Q01khkf/FdpQ6cVsK1dYyN9zU0IS9ZTgp0UBY/AWM7h81QhHggCdBgOlPc6nTa
         HcTA==
X-Gm-Message-State: AOAM533ArP+rTBVMQEAvNdtnoHHclFcRx85hIZm+ETqeOZqnmYH6s6js
	U4XyDTvpMCizk+2O4yz8BR4=
X-Received: by 2002:a62:7904:0:b0:44c:ca08:1956 with SMTP id u4-20020a627904000000b0044cca081956mr12118844pfc.47.1634902713133;
        Fri, 22 Oct 2021 04:38:33 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id t22sm10946224pfg.148.2021.10.22.04.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:38:32 -0700 (PDT)
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
Subject: [PATCH 3/4] v2 staging: rtl8723bs: core: Remove unnecessary space after a cast
Date: Fri, 22 Oct 2021 17:07:37 +0530
Message-Id: <859fedf8146c92b17295a40044007de9dc479525.1634899405.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634899405.git.kushalkothari285@gmail.com>
References: <cover.1634899405.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v2: No changes
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 88f6b7405106..fce3256cc275 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -922,7 +922,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
-		psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
+		psetstakey_para->algorithm = (unsigned char)psecuritypriv->dot11PrivacyAlgrthm;
 	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
 
@@ -951,7 +951,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 		}
 
 		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
-		ph2c->rsp = (u8 *) psetstakey_rsp;
+		ph2c->rsp = (u8 *)psetstakey_rsp;
 		ph2c->rspsz = sizeof(struct set_stakey_rsp);
 		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 	} else {
@@ -1002,7 +1002,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 		}
 
 		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
-		ph2c->rsp = (u8 *) psetstakey_rsp;
+		ph2c->rsp = (u8 *)psetstakey_rsp;
 		ph2c->rspsz = sizeof(struct set_stakey_rsp);
 
 		memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
@@ -2027,7 +2027,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 {
 
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *) (pcmd->rsp);
+	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *)(pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
 	if (!psta)
@@ -2042,7 +2042,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct set_assocsta_parm *passocsta_parm = (struct set_assocsta_parm *)(pcmd->parmbuf);
-	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
+	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *)(pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
 
 	if (!psta)
-- 
2.25.1


