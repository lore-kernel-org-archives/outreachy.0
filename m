X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6e02:f44:: with SMTP id y4mr3657095ilj.117.1634846353619;
        Thu, 21 Oct 2021 12:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3543:: with SMTP id y3ls882445jae.6.gmail; Thu, 21 Oct
 2021 12:59:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCtQZKmB005qoY/AcVb0PyUTyZy4HLGFZdsi9sYPXhfszkQ1e97O/+0kg9DWXPTgOFkiUM
X-Received: by 2002:a02:b00d:: with SMTP id p13mr5408312jah.26.1634846352786;
        Thu, 21 Oct 2021 12:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634846352; cv=none;
        d=google.com; s=arc-20160816;
        b=FNyaS5xCD+FbCn4oJUqfKxcCQPup2F8yzoNiwjkMGM0kVh4zZQK7L6gH2J48YumiVN
         jh5uJgTnHn3tjRgz6/+GFhsTqQt6u3T2MJ6n6clOjW7czb5eXErE1BL4W8/hbYGwbV+0
         /IzbAu7nqwsCf9WGz2xN/bJnvtBQvTeLWZRtJE5MI6K5PqhI+ujqpMNpDeyJwV/b39IR
         tsF5Vgp/eob4psTIQhpEe0A264jnKMmwjI3jR+Z2U0RaFMFMMNeRyuDM0rYUrckiTmE3
         /aMngvaMNRDC9lYBQ/5uuA8HnezmOT1tPLeVSwSxlPqEvolmxel+f4qR6qxv1UvMP3TT
         G2DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BbvyX6jPLK5zSg2NVxfybp0y/nnILy7522O+U1Y7hXo=;
        b=ckgTD+ElDqCIRFyJB+2ponmqNxPZL4zahtrZbqsZCZrpTURHjeCDpo9Zol5EXbGYjY
         idnnAmxZSdIz51dasjuWVkOjy8ZOObRogRg22WaLlg+dM3RGDQpUGFARNVBb1GLyAQ2J
         TlRZbOUerc4tRmZ5SLDwWKFBDA1n6qspd3f34N0bNeoR17E+fNRU9XMZT3duj8QXJylH
         odhgAncQHdHBRXW9F7UpoilkZf69DOjuipgHz2DyVWmg/2zO/QQk568Yagb3qPOQCJnJ
         p6wbcTARMD3RXmsyz6Br/dEXW0N8sbUpXMgkpC7X4NSBkLgTS2DX+qhh7yEvIw27Xdv7
         78cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="PuDZ/KAl";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id d20si528605ioy.2.2021.10.21.12.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 12:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="PuDZ/KAl";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id s1so1147731plg.12;
        Thu, 21 Oct 2021 12:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BbvyX6jPLK5zSg2NVxfybp0y/nnILy7522O+U1Y7hXo=;
        b=PuDZ/KAlnQ8ek2j/6dOR9sHRIIrOPuC3UXhSPavRp5Xm7jfSoPhMLeNzU5ShysHefZ
         Vguxz2bCtQxm/JbeKX9z80UqVV463tJOmbodktoV8sDVrX6hz8BbsN0GA4Zhzdp6stZ3
         p/uNRKKxD10DtUNu3hMc128tbP8dSU1DRKKtCcn0a7ozgEwNIOwdCJ8gBx7skR2hQYhM
         zRDNs7CEsb9oYDtFFZhcdqTJNPrsvVU2oQHTtirderms5swugJigQMIJFqkdwxUH+hZD
         dKNrK0+AbesMeLmngEgPBPQXESrQ7hFncycjAeiN4VPXdajfAvx2y/9jKsuM/6JgozNl
         incg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BbvyX6jPLK5zSg2NVxfybp0y/nnILy7522O+U1Y7hXo=;
        b=p6Vny1O3H9l481yOFyDrYTPZxf/B7Z4wtnZL/q8qRDGstElIyliWz233E6X+GSpyF+
         Rnm6QoAlDhbWF+iAarv+fzXyVksxNm2Auq7ScGGu9uVhIgx9QcAq6Wsd/u83kPNpo5VZ
         YXSWPc5nkv94MDKOlMgAWZebvfJsWXJxxezBoweRED2N/u3M3Lltf+vh4ZjKQIOQYrsK
         yTu8ZemRJRxB18GpzmBvFwVyAGcp5SR6rwlRyAzMSLBzItTsXm1yytZNXiMSxWqJmYL5
         FbB3LWluQu3RVtoh98i6zX/oQ/7xuCVmQiUq1nj0PvlPPDeiq6AuH1SxtBUGLQF0vb78
         /hrg==
X-Gm-Message-State: AOAM5319M//HlGADJ+xkIkMz0hy8HU7Ab3GjDDai5/TiyCQnvBHFn2ct
	uE0KrL3e3ZboiG95IpPNWcc=
X-Received: by 2002:a17:902:758b:b0:13f:974a:959f with SMTP id j11-20020a170902758b00b0013f974a959fmr7091047pll.40.1634846352200;
        Thu, 21 Oct 2021 12:59:12 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:1fee:e3e7:7dfb:56c1:efef:3c0f])
        by smtp.googlemail.com with ESMTPSA id v9sm7198898pfc.23.2021.10.21.12.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 12:59:11 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com,
	kushalkothari285@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8723bs: core: Remove unnecessary blank lines
Date: Fri, 22 Oct 2021 01:27:53 +0530
Message-Id: <f6d2ba1d544c70519bad5c04f012cba0214b379a.1634845504.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634845504.git.kushalkothari285@gmail.com>
References: <cover.1634845504.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove useless blank lines

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index fce3256cc275..690e4627663c 100644
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
@@ -735,8 +732,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	}
 	/* for ies is fix buf size */
 	t_len = sizeof(struct wlan_bssid_ex);
-
-
+	
 	/* for hidden ap to set fw_state here */
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE|WIFI_ADHOC_STATE) != true) {
 		switch (ndis_network_mode) {
@@ -1080,7 +1076,6 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
 
 	/* rtw_enqueue_cmd(pcmdpriv, ph2c); */
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
-
 exit:
 	return res;
 }
-- 
2.25.1


