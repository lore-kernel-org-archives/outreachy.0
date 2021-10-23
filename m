X-GM-THRID: 7021611435626070016
X-Received: by 2002:a67:d384:: with SMTP id b4mr4871201vsj.14.1634974660048;
        Sat, 23 Oct 2021 00:37:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:edd7:: with SMTP id e23ls3885446vsp.5.gmail; Sat, 23 Oct
 2021 00:37:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyT62LLp5uJg4HiwaI+BXDoW1S98sM2D2qw8LMkXyOvIrEnkyNCr2tPuZcZRnfCblXIw0Bb
X-Received: by 2002:a67:d816:: with SMTP id e22mr4994121vsj.60.1634974659274;
        Sat, 23 Oct 2021 00:37:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634974659; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+VB0nL0skP0Qwkg8wP0mG0hHwvl1JOjIAzQe67+swxEilp533uM2SW7Fy1RaynXjm
         87YVLV+LBzXx5ZU3MD6YxUi5Zk9nHv+l9n4Unhzk+eUln548eMHPYrrTfEDM2bxJvtX0
         0PX2/NsJ2CkFNArcD4Vz1WKYsIBPThFZAEEI53Q8yE/FyqiKjyzWdioS2/F04JeYH8RD
         jHOBiAXtyzpJxUxKmSgECvrDld1goGer8tY41tYkVyMjCHq0mHGZyCyw0cUwofBrhxYv
         E/o4jK0+fRd2KOfdvjKp7lxZBzoadSAFF/71k/K7VSCRibAeP4sF0biLTpU42PJk6YEB
         JP7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MPnz3NtbdWVH33KNLzBSBKBvsqzVWtkwV9sLj0e2Gwg=;
        b=dyIb29QuaDH4Q6P9sIClJpv3UDhF+sG2Q7fbxDrTdeq7TPQUzOXYYEBw6WpVAmQe3Q
         OyE58SVRYbACVOHG4ytM6j4klPiexv+w8GVhr0v9TEIMj9JaKJUES7Xx5yC40/Vq7bZr
         ec7Kr43EHPysqxgCV6w85w40KcD4qGZMIe4n0kj0ZP85MEuI2DRQFg1Coxo68QGPgN3C
         IFvBxmli35+w/WMo9PJ29BkTQVIg1l07ZsmWillOPAFXnuQ21c06V39xUlnCZqBpA7Ru
         RDG0+pKS1Dzblk+mJuD4j+1M61c7vYRjIxEVkUb90nE49X9b0T5xG2pYxF9GDkLyuxKk
         /D+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cQrhRNpj;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id p63si21611vkg.5.2021.10.23.00.37.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 00:37:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cQrhRNpj;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id s24so308054plp.0;
        Sat, 23 Oct 2021 00:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MPnz3NtbdWVH33KNLzBSBKBvsqzVWtkwV9sLj0e2Gwg=;
        b=cQrhRNpj6Mt8WAH4g+XXFcylw6gwNfowP1IfY6qM6tjvcOjcL6bQd740dSxBCflylu
         z1T9iyZHWNShR8Gzx42hFtKIVt3Iot7OGeui86BMhC82TC9HbaULF1qo602Lf6Pphe4f
         8pMn3LlZ2QPlydYqQEjEeqyKl5Z8yiqwEEm2C9NikMoiBT9n+hUqXUi6eb3IntpVvXxw
         3PS4A5mp82WUzjlr/NQ6aOeCxT+vk/apOnVWzzrNNjCqLe/1q8ZwT8WHBBMFZ6O2yk2Y
         yM5EwD++q2oN/0sX3gU2Dp4amMTM5fhUjjf6m3+xFyfXxWHOq/tazhN+mxsMF3pM/iNA
         QHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MPnz3NtbdWVH33KNLzBSBKBvsqzVWtkwV9sLj0e2Gwg=;
        b=eIZ/egTd9HPv+B+IjcmQhrnGJziB4z+cJv2IIFemkkkPsBCTNgoKLrBOwi/0QCnygO
         79/CcbOf32Rfz6ps7q/399reX0Sf6Bg0/vmqxghty43zPMGDtKJDb0xyd18a2GAKwZw5
         xmHDt7fnUZM7d+mn28Iq1TqVxIEutPPcox8z0J7NOELecJQl8/Ab62hEKhahlzqf6+Ni
         ByvjU1uKsGvSQDydjwN2SD5jJfqOH1YfN1Oup1VIqf70tiMpTDiJ+i8VAliAXCWMsmpY
         vsO5nUbMPyYEX9I9kbAa1hsCaK9bUHwHTtR2zEiVw46AMw9IwfcjBpaFRZyboHA/owJf
         vzCA==
X-Gm-Message-State: AOAM530dQY2GOVku9sIBXSQuhyK1YccHVRSutSuKBPMTZ461EoMefYPR
	h/O/Rrr0EW29UPj30EdEE5Y=
X-Received: by 2002:a17:90a:4a85:: with SMTP id f5mr20170467pjh.92.1634974658427;
        Sat, 23 Oct 2021 00:37:38 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:5173:67c9:d8e4:2819:8ee8:8de4])
        by smtp.googlemail.com with ESMTPSA id c4sm13949791pfv.144.2021.10.23.00.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Oct 2021 00:37:38 -0700 (PDT)
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
Subject: [PATCH v4 3/4] staging: rtl8723bs: core: Remove unnecessary space after a cast
Date: Sat, 23 Oct 2021 13:05:49 +0530
Message-Id: <baa1703e0c202dfb90e215b63b535161bd3ccccb.1634967010.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634967010.git.kushalkothari285@gmail.com>
References: <cover.1634967010.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove useless space after cast

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---

Changes in v4: Move the version notes
Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: No changes

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


