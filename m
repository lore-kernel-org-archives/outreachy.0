X-GM-THRID: 6812465234894127104
X-Received: by 2002:adf:ee8d:: with SMTP id b13mr3454890wro.251.1586150687223;
        Sun, 05 Apr 2020 22:24:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f642:: with SMTP id x2ls2861790wrp.2.gmail; Sun, 05 Apr
 2020 22:24:46 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ7Hutc4AkEnigZdLDujkanii/qMvwQWPBM0aKH8AxDjMj6P/dqOOSxXbmUA9iQ7EfFCdvo
X-Received: by 2002:adf:a2dd:: with SMTP id t29mr22562834wra.338.1586150686264;
        Sun, 05 Apr 2020 22:24:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586150686; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5zh7W18LeyZ9c8O5IWdxd6Ha3SlC8P4kGKwMji9h0uiuHVV6SOhIu0sl63Ytjhdyc
         k9jp46hRCUwQ7rHm79jONuQGfiJq+fDec+ojqUH9lGBWOUMVDADOB+jHIUw04TiSamo/
         ryyS/2I5tFJ/5LOWotDTUFaOIt86hpAnnbZFD2vmU2Kq8xs0T8gtM65cj0oI/riqCo81
         nsSQ2lDhBTTandNMLSuuhZUSIglOTMX49I5uTkaEKkalScUrKSZaFUeWRGdVyeai0QJU
         rAEzAgb5Y6nJ/mPrO4PoNxuKVizasAjB9Xv1drB1dnQIjxtcjEdkNTnLhXi5DgpoL/vU
         Ldgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tJvZPiNLjRZCnSP1bl147LbqOWxEccJBcWpl1/7UWXM=;
        b=MbR9PWXJNpmF+gKMLHj6CNBKKtjd7p3CRi0ffITSGig4x12VnIMevg9fIofInJj2qC
         Xihzn4z123/4d2lydENjkfQR+HZHhBfcS83CsgqE8eXcHtKLx+90p10OB4OvGhr3+7MX
         ZJ9IDFEyLUylfujcXi2GBKNSF8a0yg+2SJK3cxooWGjS2IIMfDqtGO3MUhH86fjJ+vRo
         kdnBUWDLZIH2VWAb3aXVwrEJl6IHjjVnbICjkVOgVsM/CM4A5OwvyZ6CMzLsAxzcTsQm
         DYMdNUSmpDKlMvMFCJ15qj3F+QimoP1UiVdsE2ePeY0VViL0KXSfIGAf8WHj178lr4/b
         wz9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id y15si297848wrh.1.2020.04.05.22.24.46
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 22:24:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26366 invoked from network); 6 Apr 2020 05:24:45 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 05:24:45 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] staging: rtl8723bs: hal: Correct misspelt enum name
Date: Mon,  6 Apr 2020 10:54:13 +0530
Message-Id: <2dfe995b1b7cb2cd895131b0d998c6abc87f8f6f.1586150254.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586150254.git.vkor@vkten.in>
References: <cover.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt enum name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index b77d1fe33a28..16e8f66a3171 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -541,7 +541,7 @@ typedef enum tag_Operation_Mode_Definition {
 
 /*  ODM_CMNINFO_WM_MODE */
 typedef enum tag_Wireless_Mode_Definition {
-	ODM_WM_UNKNOW     = 0x0,
+	ODM_WM_UNKNOWN    = 0x0,
 	ODM_WM_B          = BIT0,
 	ODM_WM_G          = BIT1,
 	ODM_WM_A          = BIT2,
-- 
2.20.1


