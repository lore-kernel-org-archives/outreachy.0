X-GM-THRID: 6745544060634660864
X-Received: by 2002:a5d:89c1:: with SMTP id a1mr220911iot.135.1570569365535;
        Tue, 08 Oct 2019 14:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:998a:: with SMTP id t10ls42847ilk.9.gmail; Tue, 08 Oct
 2019 14:16:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8N+EHcu1SoLuFJHehCB4fQdUbuDzW28C2Gt5HVxjimIhQO/GZBRvpmE4BhIR4ky1HWD6A
X-Received: by 2002:a92:469a:: with SMTP id d26mr365181ilk.304.1570569363473;
        Tue, 08 Oct 2019 14:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570569363; cv=none;
        d=google.com; s=arc-20160816;
        b=Es3s4v6jjhg/A3RCmEpXf2VoWjayVwbQfvMPLKMzWxR+6vyKeQ1FPE3ZfLOwoayHnJ
         Ky47R+CEcOA6zTKFHiBEv37Un0ghH80SDwYToRbicz86LhMrHgJE6rWgtoGgxYc4S6Ir
         rrIK3V/DI4lW7WMsU7EhptLfP1jJrjp1tDZ611BAxWYsXRVCUR0RwIZPgGrM542y/KQ/
         AHZ3zPxutr4r7/XC5+5mH5w+vThoYO6HKMizx7paAJ/eitM8/3AdRJtdN6pfbJP80ALT
         90+6/5AorKyrcKT20pMgfvj7vsIRrMDfWqbs+bA7/K7jZ3EPYQODQDOjmmVhes1u6hQB
         RJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6yqGMvttxoNt2QLRWMMScohY0lXIrbMQLDjqfts5vEQ=;
        b=b2qcHVhplhmU8R/zY6Nzm+m4GaAgMgh1sYNaFWKe+sRqrCT+KRiyGr+PdxHLtopcgl
         O6g29YIEBvQUyqQE/QLV4EQOq59cOU3aDItI+KSoynGF9Z9gF8qyuSVKzyAcevvpLIME
         ugwr46NJvBOBw1ys9xPPUTpp2bvNkaiL5eraAZB/mK+BzZprGmxinz5mNuDNOWByhWFd
         VKGHbnz50qHZaiaFfoJ1nWp5anQ4GUb1n3IjDHaev98EM9Xe4abRffhQcwNe4PKUFm3X
         IefFpKUM/i/2tI75y35Elttosw0c4qKOzEDE7tZtP729sHgSA0aWCzX5hJ9WLWEO6QO+
         pGDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VxDrPU1R;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id f11si2105iok.4.2019.10.08.14.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VxDrPU1R;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id p13so104679vsr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 14:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=6yqGMvttxoNt2QLRWMMScohY0lXIrbMQLDjqfts5vEQ=;
        b=VxDrPU1Rmx+R/RuFbHO/McNwrQPA0BJ4To93tYo24DH3LOMmUi1LdsFPRnbk1hiBCc
         87b7uw8mr8a9ZkBVkAKCQK4ieRBbgLLs5Oazc7+ziifC3xre4Uwr0EBrFTlgVLqFaD2w
         6BQUa/QZ3K2TE9IFC7a5SLfXoTGPDpa/UNNPlBp6h9JL6O8V9dm2+OGsftCzh8SHH6UA
         1XeZp7meYRCL+8ZNAefxZVNLBzbKbkfdvjretPnOAW0TBO30zc4IT17OH3mQT2THU853
         zvliNihadsLO3CDTqQn0SbREYqzMKILegNAhbi4kkzt7NUeAjAZWiw2TFg+Qx6yrrrIv
         qbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=6yqGMvttxoNt2QLRWMMScohY0lXIrbMQLDjqfts5vEQ=;
        b=CNhK6zV7UZuNGTuFmb7z8LgOQXumi20EZ71FmqE/VqWrBVJB4lDOf2w3mP/6NKhol8
         nan5grj2xcnFIamQQ3BMkvOHzZZVjimqKnoeSCsfKX7ruaJS3/WmsR8RZes8WXt8bl4w
         sF48aG+Cpxp1k2F30XKnAETSGrIpV8ll0USx7vdoxkOlEgerumqluoP3kZoLd9RNlG5O
         rKJDLS+ZCbo2OX5fJBZPgDQb8k/0qDF5bUOgDGGRg8LGEOKwjcZmyY6Y62IKIaMvSFS2
         04kWslWFK4r7oMEqixw4zzbwzT3a6HX370alLT+XvNN3jJZck/2x64y5WcMYT85YyCrF
         oZ/A==
X-Gm-Message-State: APjAAAUTgEwDUmmQdXStgzMQPXqalI/c9wSvKy7VeQwbZejv35xAWEui
	vJhCnDsUS0yp3vSbKwUAoe+zqoCXSrl//Q==
X-Received: by 2002:a05:6102:499:: with SMTP id n25mr19720219vsa.133.1570569362939;
        Tue, 08 Oct 2019 14:16:02 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id j7sm19199vkj.51.2019.10.08.14.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 14:16:02 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:16:00 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove space before tab
Message-ID: <20191008211557.iv3hdpbklgaddlt3@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Fix warning by removing space before tab.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 4000125054c3..0ba88296b104 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -19,7 +19,7 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 	int	i;
 	u8 *pbuf;
 	struct wlan_network	*pnetwork;
-	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
+	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	int	res = _SUCCESS;
 
 	pmlmepriv->nic_hdl = (u8 *)padapter;
-- 
2.20.1


