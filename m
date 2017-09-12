X-GM-THRID: 6464879882982653952
X-Received: by 10.202.77.215 with SMTP id a206mr1147732oib.119.1505222144789;
        Tue, 12 Sep 2017 06:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls1227971itj.19.gmail; Tue, 12 Sep
 2017 06:15:44 -0700 (PDT)
X-Received: by 10.129.157.20 with SMTP id u20mr9721416ywg.223.1505222051528;
        Tue, 12 Sep 2017 06:14:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505222051; cv=none;
        d=google.com; s=arc-20160816;
        b=r17TbBj6wfXFphJkE6aZMpFKfikFQwobe1Rd2I9mXyzHdJYMtEjoaX4TsRF2Lz4Rxl
         8TmHc+rHvLnSSH+Qx0NpXizYgULq36Inr7edc3cNzQt+8fMOhmKc/RVap1DYaugI49Lw
         MhxpgDiNkDsmcmKEWjdZYy0sK8JmyEO2jkMvHGSoy/0gTiZZ3uGpPx3OuXIPzecLPhQt
         Gvo4VjOZsaPFJxk7RvfnokuG5h+3Ez3mVPf7u3Mg3xeSfbAN4LkWDpctHMUxvoMY3TMR
         HEhLGWkxVq4jpFmSFuPYK52jdJXcl+4o3Fd+xN76So/uWzUsdztt8MGdhEf4vN8lhBc7
         Z2Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=zeNU+jEwpYILOlDpbB/2jzro1NEPhIFlIcxJyPOVXFw=;
        b=bFyhfag01qyvQ/tA9R+8UuSsb26hJeba/Q6s8tIBSmrQ9+llCT8wWlWmdGdlqCmRwX
         zJqSERonTq/b4Msfhq2XE66fbcKMKGawwOMjwFU1flTq7ywiRZG3SgTVtrstoc1aHYcn
         DqMFqSdBX/ksLoWiFgm4srrxwEFD0vonphGmbV01xJmtmQxEM3sRQAIahujzeT/9eqsl
         BafIvPeZVtNEn/ZInqHNzQGCpVWNDrYa8j7xBV0pCUhUFTfTD8lBj3qI3sI6+IM/VzWd
         JYF5wC0kC0MncEmtvShtU5Aayosdd1Qq3JcdPrpYsWOI6MDBKIejErhfDfimm0JNTKbY
         b+wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=deDXeCM8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id q65si1153257pfj.8.2017.09.12.06.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 06:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=deDXeCM8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so5993446pfe.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=zeNU+jEwpYILOlDpbB/2jzro1NEPhIFlIcxJyPOVXFw=;
        b=deDXeCM8Cla4XTfJSB+hgfWsYLb6JDezNu6rQYQ5NAQyuSkNOMn8QPF33ygx3id3FU
         NGb29JF43h2rMBszV/+DbraSRPvxNoXU7Lrz/whCkNNhgM/by59pZXAO6R9maImxWrpz
         WK2N0NMMGvGNgXtk3dwLU0l4aiTbyw7NtjDl8XCA5kKcjmLrpW3Lo6D7Zzit1f0OsewC
         0eGu0czt4etBihrnwUJI2tY9oOTJmHB2e5nrRuJOAl8o+KrSL9rSJTGvLGCIYB+hTJQp
         UiYl4JnI/Kh8pSmrmS3kTYwgzddsVPi/2uzUg/QUxvgS5d2jtd0UiKnQtMkDtrwDqF8j
         R8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zeNU+jEwpYILOlDpbB/2jzro1NEPhIFlIcxJyPOVXFw=;
        b=CgAdvPlPN7pAk3G3Qyt68HFuVSPjTomlUdE/GQUukxJjw8fXXvCyl8BwPpXx//Sv9D
         0gKpFkDbrSEXd5Tb0cb+hioPu4fz1ZTtuT163r9KZ1PDwAbqwn3IcToyBaoGlc+fzYN5
         h/ayYcJXuYHIJNb1afKd1yvHD10GH9MJpcJ3yWL1VUSntxJ7X886DfslACM7jKgTRRKv
         UpxNKxooqLFZinlkHKMynr76ov4jlG0Ldne6PhrHGlbRCEkuNzp/nY05L5S2+JbomD5O
         W5r9/0PKWgOMLhtjZulmNVUylQFI/hmFg4iAzrja0M2a02qcqO1E0hU5OfVdPlXGzVqm
         yF5Q==
X-Gm-Message-State: AHPjjUibVMZ0GYeNWPVNhbh4PRIZZeA23BQ54XCE2aVoFfi1EIxCX/Gi
	z1MQ9iW3ePahoQ==
X-Google-Smtp-Source: AOwi7QAhCPpyYtpXT6jL6EOxBIZVD5xlGVJ3Y4iMuELgab7CeicoeoIwbGZwwmf+eAJKM2CuWSleOQ==
X-Received: by 10.84.194.1 with SMTP id g1mr2610530pld.74.1505222051237;
        Tue, 12 Sep 2017 06:14:11 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id i87sm11930177pfi.184.2017.09.12.06.14.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 06:14:10 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary spaces
Date: Tue, 12 Sep 2017 18:42:06 +0530
Message-Id: <1505221926-2865-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Space between function name and open parentheses '(' is prohibited.
Space is required around most binary operators '=', '==', '+=',
'<', ':', '+', '-'
Space required before '&', '*'
Space is required after ',', ';'

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c | 30 +++++++++++++--------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 80ca2d7..49cb701 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -19,7 +19,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 
-static void _dynamic_check_timer_handlder (void *FunctionContext)
+static void _dynamic_check_timer_handlder(void *FunctionContext)
 {
 	struct adapter *adapter = FunctionContext;
 
@@ -51,8 +51,8 @@ void rtw_os_indicate_connect(struct adapter *adapter)
 {
 	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
 
-	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==true) ||
-		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ==true))
+	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
+		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
 	{
 		rtw_cfg80211_ibss_indicate_connect(adapter);
 	}
@@ -99,7 +99,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		/* reset RX BIP packet number */
 		pmlmeext->mgnt_80211w_IPN_rx = 0;
 
-		memset((unsigned char *)&adapter->securitypriv, 0, sizeof (struct security_priv));
+		memset((unsigned char *)&adapter->securitypriv, 0, sizeof(struct security_priv));
 
 		/*  Added by Albert 2009/02/18 */
 		/*  Restore the PMK information to securitypriv structure for the following connection. */
@@ -116,9 +116,9 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 	{
 		/* if (adapter->mlmepriv.fw_state & WIFI_STATION_STATE) */
 		/*  */
-		struct security_priv *psec_priv =&adapter->securitypriv;
+		struct security_priv *psec_priv = &adapter->securitypriv;
 
-		psec_priv->dot11AuthAlgrthm =dot11AuthAlgrthm_Open;  /* open system */
+		psec_priv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;  /* open system */
 		psec_priv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
 		psec_priv->dot11PrivacyKeyIndex = 0;
 
@@ -150,7 +150,7 @@ void rtw_os_indicate_disconnect(struct adapter *adapter)
 void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 {
 	uint	len;
-	u8 *buff,*p, i;
+	u8 *buff, *p, i;
 	union iwreq_data wrqu;
 
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("+rtw_report_sec_ie, authmode =%d\n", authmode));
@@ -168,22 +168,22 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 		}
 		p = buff;
 
-		p+=sprintf(p,"ASSOCINFO(ReqIEs =");
+		p += sprintf(p, "ASSOCINFO(ReqIEs =");
 
-		len = sec_ie[1]+2;
-		len = (len < IW_CUSTOM_MAX) ? len:IW_CUSTOM_MAX;
+		len = sec_ie[1] + 2;
+		len = (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
 
-		for (i = 0;i<len;i++) {
-			p+=sprintf(p,"%02x", sec_ie[i]);
+		for (i = 0; i < len; i++) {
+			p += sprintf(p, "%02x", sec_ie[i]);
 		}
 
-		p+=sprintf(p,")");
+		p += sprintf(p, ")");
 
 		memset(&wrqu, 0, sizeof(wrqu));
 
-		wrqu.data.length =p-buff;
+		wrqu.data.length = p - buff;
 
-		wrqu.data.length = (wrqu.data.length<IW_CUSTOM_MAX) ? wrqu.data.length:IW_CUSTOM_MAX;
+		wrqu.data.length = (wrqu.data.length < IW_CUSTOM_MAX) ? wrqu.data.length : IW_CUSTOM_MAX;
 
 		kfree(buff);
 	}
-- 
1.9.1


