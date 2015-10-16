X-GM-THRID: 6206306733630947328
X-Received: by 10.182.72.166 with SMTP id e6mr14164534obv.47.1445018391993;
        Fri, 16 Oct 2015 10:59:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.202 with SMTP id 68ls1287240qgx.97.gmail; Fri, 16 Oct
 2015 10:59:51 -0700 (PDT)
X-Received: by 10.13.202.13 with SMTP id m13mr4706463ywd.57.1445018391380;
        Fri, 16 Oct 2015 10:59:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ce6si1599493pad.0.2015.10.16.10.59.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 10:59:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ez2so10814853pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 10:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TcDaxTQhNtIYcUjQr/nBkjDSjPtMLtkqozCJyIk1E6g=;
        b=jOKtjU2NqbgkBzXH2Aja5JmEYY9ykH0/JTYIlXqmH+b/r+9rPWpbuCy7ci9ShPlpeH
         dM8gWO6SnwAQpACOxeAzbYB3S/k9+3FQwyEzMH/tVmwvGGZmGWzbfbl3oF8j4iTNzQgr
         BDHQcpQ7ST1n+bKAe3trwr7gLb7am5b6kUlOGcthUbTlS4WtUGXVzsOiSxHAM2VS1i5Q
         e/uScEcjcE0+ddxvoeFVgAsTKTyVanjCrUna/sGaUlC4UrxZVF20KmUdOMsWgF/9UTVr
         hIJFDwLqVojyzyBzJJ8Em9tPMzqz4vaA8Iu+vo2+kgVts68cASM1En61tOc1gYKTaskO
         OlQA==
X-Received: by 10.68.196.202 with SMTP id io10mr18143416pbc.108.1445018391242;
        Fri, 16 Oct 2015 10:59:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id qy7sm22523864pab.37.2015.10.16.10.59.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 10:59:50 -0700 (PDT)
Date: Fri, 16 Oct 2015 10:59:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: r8723au: move * to be adjacent to pointer name
Message-ID: <20151016175941.GA17049@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move * in pointer types to be adjacent to pointer names per Linux
coding style.

Addresses checkpatch.pl: ERROR: "foo*    bar" should be "foo *bar"

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Question to reviewers:
Are checkpatch.pl CHECK errors permitted in a patch?
        ie. This driver has a lot of pre-existing CamelCase CHECKs that 
	appear when my pre-commit hook executes.  I'd like to submit other
	changes without addressing the CamelCase simultaneously.

What is the recommendation in such cases?


 drivers/staging/rtl8723au/core/rtw_ieee80211.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ieee80211.c b/drivers/staging/rtl8723au/core/rtw_ieee80211.c
index cdd7bc4..07a6490 100644
--- a/drivers/staging/rtl8723au/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723au/core/rtw_ieee80211.c
@@ -348,9 +348,9 @@ int rtw_generate_ie23a(struct registry_priv *pregistrypriv)
 {
 	u8	wireless_mode;
 	int	sz = 0, rateLen;
-	struct wlan_bssid_ex*	pdev_network = &pregistrypriv->dev_network;
-	u8*	ie = pdev_network->IEs;
-	u16 cap;
+	struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
+	u8	*ie = pdev_network->IEs;
+	u16	cap;
 
 	pdev_network->tsf = 0;
 
@@ -444,7 +444,8 @@ static int rtw_get_wpa2_cipher_suite(const u8 *s)
 	return 0;
 }
 
-int rtw_parse_wpa_ie23a(const u8* wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwise_cipher, int *is_8021x)
+int rtw_parse_wpa_ie23a(const u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
+			int *pairwise_cipher, int *is_8021x)
 {
 	int i, ret = _SUCCESS;
 	int left, count;
-- 
2.1.4


