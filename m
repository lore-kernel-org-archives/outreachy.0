X-GM-THRID: 6206306733630947328
X-Received: by 10.129.155.83 with SMTP id s80mr14035599ywg.55.1445125172587;
        Sat, 17 Oct 2015 16:39:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.11 with SMTP id n11ls996763ion.59.gmail; Sat, 17 Oct
 2015 16:39:32 -0700 (PDT)
X-Received: by 10.107.132.77 with SMTP id g74mr19016609iod.10.1445125172215;
        Sat, 17 Oct 2015 16:39:32 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si2601847pbc.1.2015.10.17.16.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 16:39:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so56524862pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 16:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=r8+KYcii6+MlmaUA1w47cj/ByfXn8Zzq2se7comwm/I=;
        b=FhW5A1a+36rZXoXH708LZafvWgCU+70nOCTFQGWLNm3TjrMmAg6wV8sroPynS79nM0
         Czf3eJo2FwgzXZtH3X7PkhyFc+Jm5VJYTdDh1PPgXem+Rc+y3P4QQasw05Du1DrbaUGK
         OeagZBWIBsDdB8atVCbHITEUdt94C1F3m5TX7SEfoi0jv/3jpcgxZkr4v9GBXoO6nFM/
         Bxu+cJciadvG/++bnX5QbxuIPNujF74YJW5VJy+EgUBE2um+FUhavTWkzqQkgQRtiV1H
         qanW+sseBWfo+8atpSO/aMb6eDfmbur3EOqBP6RNJUWJaIRJNHYgE0rxADSzkDeyUsz8
         tZmw==
X-Received: by 10.68.57.238 with SMTP id l14mr25466957pbq.150.1445125172043;
        Sat, 17 Oct 2015 16:39:32 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ou3sm2756250pbb.44.2015.10.17.16.39.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 16:39:31 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: r8723au: move * to be adjacent to pointer name
Date: Sat, 17 Oct 2015 16:39:23 -0700
Message-Id: <1445125163-2116-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151016175941.GA17049@Ubuntu-D830>
References: <20151016175941.GA17049@Ubuntu-D830>

Move * in pointer types to be adjacent to pointer names per Linux
coding style.

Addresses checkpatch.pl: ERROR: "foo*    bar" should be "foo *bar"

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

(Rebased and resending)

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


