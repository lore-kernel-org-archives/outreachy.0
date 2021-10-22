X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6a00:13a5:b0:44c:ae90:8603 with SMTP id t37-20020a056a0013a500b0044cae908603mr12645770pfg.17.1634908449014;
        Fri, 22 Oct 2021 06:14:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:d142:: with SMTP id c2ls3130442pgj.1.gmail; Fri, 22 Oct
 2021 06:14:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+ANIhWI5nocRwsk4l8YCFITP6qf2dn6d6gri22qnvSmdZD01w/dUG7gIOxcNWzaaWviXb
X-Received: by 2002:a62:1c52:0:b0:44c:f1c3:9cb5 with SMTP id c79-20020a621c52000000b0044cf1c39cb5mr12985346pfc.14.1634908447729;
        Fri, 22 Oct 2021 06:14:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634908447; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+0XEUTwGbiuhI4SX/FxQgK1fWCmpuLY4vNaSu0DdizJVMaKcvxGZQoNv6E3r9c8ml
         dPXx+bjmGJp4aHnJsmXNqH4MzoPdkNHRB/v6aCUpMdm/8t9kzkj2TQ76IQaJ843SxgSF
         Uq6yx7dhMJCEnT1EwMLKELugxiOPhD2pG87y3g3Rsm7Lu+3yCl5MJJJTDoAJE/QesNuK
         r0GoQcyc7MZaiT+q5qBmhpWSxmq0Ft6KUv23L3DSnADwKZ6pf0wUA/YEcuBbYGcAs8++
         hXxane2E2Pp9FoosyVSegCcrxbZOM0SA0UrymudzG54FaEphg5aYRGr+jCPJmrJkU3FQ
         NDjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QweeGM4aqSjgNfs+asUhXTu86Il96HRIIEZ/a5PtZnc=;
        b=wvjootedpI4ofnbZxs9JJOVk89lQGDnaXcROEvy4OcwQPwUSfQMqWMkRc8CkzgfUd3
         RFv2Ygy3bOnZgKh69GaWHqA+hrcMJOEyaLQE7D3CfmXEUHAfHp1Y6WPG/52zt6+0rDQG
         fN6RAcLNayGf0yg9/z9w1hOZ6na4l/MMfSjdfhZOQbi9wv9RDuK4ReUR/1oUE9wMtR68
         9/y/rjDdlraOC7WA2V3dVyOpaWr3IY5sBt9KaokXrxnThM+uqIDtS1nDyCvyKMxRN4ID
         Kqn4ptMDdcd4RD7cPtw1xMN5DjXPhLcTuS48ggIxTuzbAALFq/P4t0ppNsp1eY52/NmG
         mnCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="NT/km3+Y";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id x1si713530pjc.3.2021.10.22.06.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 06:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="NT/km3+Y";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id f21so2679795plb.3;
        Fri, 22 Oct 2021 06:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QweeGM4aqSjgNfs+asUhXTu86Il96HRIIEZ/a5PtZnc=;
        b=NT/km3+Yigt6OoB3H5RMs83c7Xs53jjfJWSfp3YsEmB7d21FlEhj6UDGVL+1qxPZOZ
         rreraVJGG5bJb8Cag8FMSLF+kiMNBJwOl3M98H0iXngcM0rl4rwjM1UiI3OGlwtb+Mbz
         LWqCDuUg7RRZ9uiWxilThsJQnIWMuxloomtrJGE8vfDTo51Ee4Fx6PAsRa5h8NboGVLz
         SUkZG2Km1ARlwGczRbDNYza/u1rFnkUDkafCan06JQTKQY8tziq9LZERoVUBlPRqbIbD
         XeS6Qedoy2HxmK33ecPec9hEQLjkTPtI2+6X1VyvPSqEbsPyHhQIvRsPY01KFWIq9jAB
         b3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QweeGM4aqSjgNfs+asUhXTu86Il96HRIIEZ/a5PtZnc=;
        b=nvWVCtnZPX+KiJ3k+cnJsJZY3XkorLAGerLGNbIltQZvFcluzsQlzV8OFbBWPQHdlj
         xqvgHAKeA9xAclZcqNGzAtX8IUP0T34PqkaXvyM/3fCQeWZJeeYBG3TTFW4Ft0eCz1i5
         ZdcYLQdJgROTYfIi7KxF9/rQNisxVe3vU2rn82ymrDZAptC1vPjkhw6bYx3g3jRvOukf
         yHIBP5vGKnFOgI06K3/TWskCsNGJ9p2iCZE2DCeXldU5RrOgH4GIn6Y9OCeGBCKBAgPO
         YbVCpE8tr6xI5sBE2E3qR+e2NG9aWosI49ygl3rw7OMzpv5hNWMDiy7+wdm08BrZN5VL
         Alrg==
X-Gm-Message-State: AOAM531AijLIG57PMfr4L9HCJS6JMpWFRzukY3DEmvdfV0M8MWOuv5Nf
	KL1/Va2ZwZdnoczyTckahUM=
X-Received: by 2002:a17:902:c410:b0:13e:cfac:45ad with SMTP id k16-20020a170902c41000b0013ecfac45admr11505841plk.68.1634908447432;
        Fri, 22 Oct 2021 06:14:07 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id mq3sm11932413pjb.33.2021.10.22.06.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 06:14:07 -0700 (PDT)
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
Subject: [PATCH v3 3/4] staging: rtl8723bs: core: Remove unnecessary space after a cast
Date: Fri, 22 Oct 2021 18:43:20 +0530
Message-Id: <528ac3f0fa7b164fe3c2a86d2476dad0f23f7181.1634906059.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634906059.git.kushalkothari285@gmail.com>
References: <cover.1634906059.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v3: Enclose the version number inside the square bracket.
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


