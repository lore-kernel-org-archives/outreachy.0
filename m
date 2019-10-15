X-GM-THRID: 6747989817758318592
X-Received: by 2002:a02:330e:: with SMTP id c14mr42783535jae.5.1571138812733;
        Tue, 15 Oct 2019 04:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:13c6:: with SMTP id 189ls2311475jaz.0.gmail; Tue, 15 Oct
 2019 04:26:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUSyuJHZkiQtuIAwr7+b6K+AYLlpGB67kPzXb+/8/mp10PjPfyyjqBvx4iL+Tg/3dDRlFV
X-Received: by 2002:a05:6638:a1b:: with SMTP id 27mr37592153jan.102.1571138811183;
        Tue, 15 Oct 2019 04:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571138811; cv=none;
        d=google.com; s=arc-20160816;
        b=qCB/4kHG+MUujMaP85h+++1aZ+kX4Pae5j3OJrp9Cjs0LtaB4KYbdCGafBXDzdzgc+
         AZOLWOdCLEI/jvhEhw0uQ29LJBzEyCHzCSFia1fWxEjxE9r05b2EZoTZLr0XC0k7UMI+
         kKP/Jfy1D96MYhToQ+IWq1mMT1hyCAPzpWv3HP/5qwaXkAW9veXU0nRRRLBfd99bwoph
         8H1yM5YwJW3FqeKuRk8BP4WPMOmmIHXlBa3WUH5Kd0KdhYI5PdZ37I0143JdKls2Totr
         VPR0fKApv4/7pb9WcauTskzBa2/NoLCpQRU2nwlLqb71M10940qXlOvz7JfXFYfVDMUb
         UzLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=P78Ogbx/JUEYn/bIu/iC6vnYMekh5viyN9GtdfVO390=;
        b=q+BmCrZWAQuIZCBoYQZ2yAX4iWtYAtXq9JZjm630kVvLEH9WTXwmNaaY7sWA56rfLO
         MS6b9NJZEsj4gBmdR1AHcJIT30TxHWzPGdpSUrtE94ZOB08doQUk869EIy8IeFKykifa
         IhR4sDEKWVnYb8Kh+3I/jyHrQZhZxJcL3u+p+1iJpvvP0i9MUFO5Ncs0wtz6kYJm6YSR
         V07l5ajEu4QljkrKuoigOeR3EhtEs9zdX5BDYL9aBmUeRECadYK5cZBgJ3LSrh04LB2A
         ZpPwRsRbvQ0a9rsNUbXBYWdMOHkXH61dxNYtj0eV4+mciPzxS5oqKWb8P+4MTtjZKDnR
         XsPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g1Xy0PgW;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s5si436247iol.1.2019.10.15.04.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 04:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g1Xy0PgW;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id i76so11976652pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 04:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P78Ogbx/JUEYn/bIu/iC6vnYMekh5viyN9GtdfVO390=;
        b=g1Xy0PgWMT0Wi5ZbRL9lcQNlTD1b9pM7Napp6DJ5oapxFeZr/4gbjJCfWG6U1iMYds
         kEUWZkyiqoQUQRNL5MZtmplu7HQGaIDudCFUxOc3/uC7xxBKmtvupqjm9gMtQwRGnlB5
         tWkLitMdEWshU0ms96HXAPYAPwGoSeTpkm6oKG/XzWtdq23BLuPDjNLRVg0xt1uIzFTW
         YNspxlU1tJdkY0l3W6UzCh4x/JS1uFK/XMQ5EVo31PkSIri19xSP+LAki18uMpy6NPch
         cxiQo8CnUaz37vy5qRC2VWUz4c3duMxUMnzno4EPId5f1DKqI+KrwGy4lPbRgPlaicb8
         F5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P78Ogbx/JUEYn/bIu/iC6vnYMekh5viyN9GtdfVO390=;
        b=InHJ1EDkDpH55uQr0pyMiL+CGBxNp2KJ4BBCSx0gpn6nBj6Inh1sR3Gvw5mm9SxBAx
         vormeV756TiUR+aXET0CypRWPqR0WWyFw/Vzr1Bt0hFPjaXU3G5cC1lPP+YZjiHEdH57
         Zg/sWGm1PJ4sXgW9YeouWbX1v12Qk2jjgddGreJziDQ6Pu2VAtHUc62it/HO7mdpUezi
         JZbXcpmbvA8n+NaLzStANkU6s72bwohoPHEKxxXA27SIKjWvev2J16T63Y8AQi7+MMeX
         nW3OcS0aL+1PppAmGAHkmlnDyNDsER+U9abl8JvmOh3YWMHDDtXJ1KKJAfzr2CTqsARW
         WF0Q==
X-Gm-Message-State: APjAAAWCMTVSLazdCu/BP69DgiY7XiYM0OSKgjsGAprZcvVS+y1V8R4a
	Qrn9OzX+/99ta5021KxOo4BjHxsAnTM=
X-Received: by 2002:a17:90a:8990:: with SMTP id v16mr42084195pjn.119.1571138810266;
        Tue, 15 Oct 2019 04:26:50 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id y2sm23864541pfe.126.2019.10.15.04.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 04:26:49 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: remove casts to pointers in kfree
Date: Tue, 15 Oct 2019 14:26:37 +0300
Message-Id: <20191015112637.20824-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary casts in pointer types passed to kfree.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 3030ae5b6b6d..71fcb466019a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2155,7 +2155,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 
 	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
 	if (!psetauthparm) {
-		kfree((unsigned char *)pcmd);
+		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
 	}
@@ -2238,7 +2238,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (!pcmd) {
-			kfree((unsigned char *)psetkeyparm);
+			kfree(psetkeyparm);
 			res = _FAIL;  /* try again */
 			goto exit;
 		}
-- 
2.23.0


