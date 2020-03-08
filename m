X-GM-THRID: 6801919650078654464
X-Received: by 2002:ab0:2ea9:: with SMTP id y9mr7069937uay.42.1583695330512;
        Sun, 08 Mar 2020 12:22:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls78034vkg.7.gmail; Sun, 08 Mar
 2020 12:22:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt1mvuOrmPEWY44tAK125fP+6UlpQgrt922P/rg1VC2AJS6llXDnJ3dVbU3cpQgNDgwbiIE
X-Received: by 2002:a1f:45cd:: with SMTP id s196mr3110690vka.102.1583695328720;
        Sun, 08 Mar 2020 12:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583695328; cv=none;
        d=google.com; s=arc-20160816;
        b=E7qAy1CaqG8/J1AxFiGxL4DsnP/V+e9IG4q0h6wdNWXCLPzDg5fwWh+YPzQL+CyLNE
         XNkW58VhhLr9oQBTipeZxWMOXMS+tt0Faf9vtgLVcTmPLSaxo30JLrdh+pHPJ7s08Bk+
         a5VHMr9N3rfNqvUMc2fHYE0F4ysfNPdxVtRULgpQasTUqubZsSZ5zveJuEFDDxq8jlvg
         YVKxvtnao/9xKj31l4xg4Oj5Pa5E8nUepCHrIwa3NcLNqNXc93PnYYguH+nkgFyTD4FM
         BBC97MnE7GACCChWtGK+hO+D+q27UUKOmfrRR0zP06X4wxs51Us9W0yQadeM/uD0CDMO
         iAjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=CHPt46wsL19wRxnDRWINkgudvnaGkseqZPfxEjONV8o=;
        b=z+QCygRuEvYLqRmsBRcE/GvocotMEJpC9v5DAAqrrgMowDZ7pUE9R+PRaXV1EwYB9s
         T7f8+AyainVhW2F54h7+Q/eDEeqUQkgnlJkNam/JLCvNIumUfodDEWlfAu3HBY9a6s/c
         N9z9IyV7+nsPcglkiYQ+rlOsVzUvLBqNWz/HnzWu1jgubgmHR2Emf0ZZ6/3zzKp2x8qi
         V72X65s3eaoXx5U3vzsENikTV2t+JB8ryW2VajUWBQVp53clknPorTTHHq6OuAqN+LMS
         wh46vg2eZNEHrvTM2QbtFvhjmEb/MIMlx7bPrpv65FzGQk8QyJjJy3CaU6C7n0jIL99/
         Y4ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qYm3VcqX;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l24si70767vka.5.2020.03.08.12.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qYm3VcqX;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id f8so3076185plt.10
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 12:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=CHPt46wsL19wRxnDRWINkgudvnaGkseqZPfxEjONV8o=;
        b=qYm3VcqXfjE+ASqxyrrUExTc/0TgxqnlC3o+J2cpfIsm3q9byi/yC0npQtxR9dAk+s
         1mzKYSvWwPsweZiIV1dgkuk5F5qhaMldW4sA8Xi65wSuOgHlcLoKNDfYvRpY5wxZOecI
         yc4ffsS5KXe34PBpE1M+ZfUtGh3Obq3y26g+nxA46NQLeY08vd0DG4sNYVSjUjxIGmwI
         wr9itJUheZpQsiLzFZWFixH894oyiy12DSfxQmrjOujwJ+hiG0fwahUqicgP8rkFtQ8x
         9Cwl5W1I0X8KQLTqoDtorF5B9iC62i4gsvZF4WQh7MsB8kmJHBwI5GYulq1cnZondrQt
         Vy8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=CHPt46wsL19wRxnDRWINkgudvnaGkseqZPfxEjONV8o=;
        b=JMqyViE9AnJ500FtOPOuH8hxiwr1qGRoMjG6vsgahnJMvjhYZdlRfH6mi/98kUwMHh
         jn1aLNRBbBgfBswGrH9dh0tDkKhlO1gT4wsLioX3DO5sSqnrdlIyJKuogKvkf5skf4u0
         KPIPjg70fZjpx3EnK0iOTOwlIuoDQ7xc04gDmFWquBddNReQGLr23nYuDXG2DBdq8Ucl
         fJOHbY6rDztHGKnwFY0E1IsColTS9qtH0xcWbE3K+SyPQK0wdw3HBklf8KEA89+bbEg3
         YkdV7ZDgVMyoNDVIQfO0w7ilnvt4EG7uSrh748P/ydJiU/YwzskCGQnCZNcd4vDF0sgh
         qiaA==
X-Gm-Message-State: ANhLgQ1aS6263IR9UYSmTCTLmM/7MOqeCZSKIwf1uPhKlZhoNaQ31W+N
	8lnNMX6c8tnZQDPcSkhk/jY=
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr12834064plk.315.1583695327755;
        Sun, 08 Mar 2020 12:22:07 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([1.23.250.201])
        by smtp.gmail.com with ESMTPSA id q12sm42157418pfh.158.2020.03.08.12.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 12:22:07 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com
Subject: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around operator
Date: Mon,  9 Mar 2020 00:51:52 +0530
Message-Id: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space around & operator for improving the code
readability.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index e764436e120f..8da955e8343b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	/* update fw_state will clr _FW_UNDER_LINKING here indirectly */
 	switch (pnetwork->network.InfrastructureMode) {
 	case Ndis802_11Infrastructure:
-		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
+		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
 			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
 		else
 			pmlmepriv->fw_state = WIFI_STATION_STATE;
-- 
2.17.1


