X-GM-THRID: 6674450234072891392
X-Received: by 2002:a17:902:f08a:: with SMTP id go10mr935298plb.94.1554016555841;
        Sun, 31 Mar 2019 00:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3d81:: with SMTP id k123ls2523100pga.0.gmail; Sun, 31
 Mar 2019 00:15:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzDtJVlqfAinNyxAmPjS1Lbd7LnDsd+LTRXpPUQlJcYmmAbqTq1zDCA7SmvASjIITDLyU/o
X-Received: by 2002:a65:528c:: with SMTP id y12mr651301pgp.40.1554016555161;
        Sun, 31 Mar 2019 00:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016555; cv=none;
        d=google.com; s=arc-20160816;
        b=PhOOHqi8CP/t1xM7ub41+6KJmdIzvuCxT/fDQBpY7y0eJWJylcpbZIAU55ifq1r9wO
         Xpeg4dUQWRqg3P1neOhxTzb8n304rHouxkGO4W21cKNgmvWD5cSE2Bs0Cs68XvypXqEh
         uIRejAOhcsZijS+l3/xp5j9Y/f6toYAr2gw+K0WxBxxUrWBanfAMWFA1qjcwDIJkYum2
         jur45YlHHiY7E0XA2AyHIDkrjydFME6Q3tcBiOL7FlszATkMbaJeMFyt3J2a7zKrDdFm
         J0f8L0uAJO9a7UObKOSAEui+5rlFzXxKpsa+sogkRGynbzBBg9aZdtQ9cJxcbqgAmolm
         W2yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=r7O8pEIX9/79dHYX07KtcwN8XbPfc+LqgI2JKvDbfR5Rt3iJI60fVBiBW2dccfndwB
         peoRD3N3blCUWP1U1Oi9qazBNczQg4AbtTMrtj6icaDIvFVe06uy+t6ysqnKJd0bcKQx
         Zopyib9neow1LlSxl22Eu5S1g8x+YFF+crUdYeSl349oaTnUdv3hZOpMbeP53/f0HH1a
         RBdxRHEvsGtVifNenKlV23AOuGZy/w6cRcJLL5TVyfPIzufnsyCwal0dmPQRDiMMpowh
         4YfvHAvYpwVy0KmDrUhkuhHrAQXmoXmN41iFO3QCnW789kBRExa3fMf+CQAS59PvSTTm
         dVmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I08t7IqY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n19si287565pff.3.2019.03.31.00.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I08t7IqY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y13so2988738pfm.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=I08t7IqYzYmgsrpwcdYvB48JHWGMtNNyhyMUlEdhBOH5LcoxIv1tmeT9IDl1uIUPcX
         QkQZmnyASBXtu1KJzD9ePhYzzX1DsvPDLiq19/FBsBVXhXnzJ5ywT073htYRU6c1GUs5
         TN1KTV/VWBp3ub/pO/+fC2JPLBXWS7/ZBthWLynepzCArEt6TJNwRgjsDbN/zb/7SOkk
         tJ1OEKa6wgTVzeWzbPsFda8Q0zxyAuU1nUFdCOWemq4r71A4q/QZM3v8ALOXCOZu3bJf
         ODjq+l/m2kSJCtoVcgBz879pO5mQ5tpGJ2dD1LdGaAFfzUkMUJYnX7XBtexE5PW1cKt/
         Aw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=GbZoaGq/ErmAuieo7lZG3G98v7iqeLOefhgrJnSYEy89aW41VMghIgCB2M76g9r70l
         W01mGtDb2dRKkXkPPkm8/pXJjsAjpdgRfpsieHiOs/keHuIJw3VRd/q2rVH6IsX2BSpo
         2mYtubK9o9S3CZ2xs2BBBFBRCM35JZsDcUzKQaOD095tdf853kV6Pzy1ltbcaOkL+SXs
         tpM4Fq3oU+uUVuhpESYIpZUFcLgpRpDFC3mBCdLJqeNgSy5npzrhRhFtExeFEDB5jESU
         7RaUQBmyybVkx16gv8inD6lDa5VWSbtYczZ4OHKoza8y31hh/f/KcMuJl/6qnM67G8xy
         p3WQ==
X-Gm-Message-State: APjAAAUEdV9TbqiFB7mYzoVImO+Mkbzc3o4A8Egeu9i3EZaNfFPa6dXf
	9KAcgN8e22mI0yh+oZCNHz5MgmDg
X-Received: by 2002:a63:450f:: with SMTP id s15mr53833943pga.157.1554016554611;
        Sun, 31 Mar 2019 00:15:54 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.15.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:15:54 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/9] staging: rtl8723bs: os_dep: ioctl_linux.c: "foo*  bar" should be "foo *bar"
Date: Sun, 31 Mar 2019 12:45:14 +0530
Message-Id: <ac8b0f48c127dd98b58e1784125c522191f79b23.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Fix issue - "foo*  bar" should be "foo *bar".

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 46fbaac..d68d9c8 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, blInserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
+	struct iw_pmksa *pPMK = (struct iw_pmksa*)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
-- 
2.7.4


