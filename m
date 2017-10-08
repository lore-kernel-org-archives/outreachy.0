X-GM-THRID: 6474399283336445952
X-Received: by 10.98.71.212 with SMTP id p81mr428431pfi.14.1507438559921;
        Sat, 07 Oct 2017 21:55:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.193 with SMTP id w1ls523178pgq.27.gmail; Sat, 07 Oct
 2017 21:55:59 -0700 (PDT)
X-Received: by 10.98.190.26 with SMTP id l26mr383495pff.7.1507438559286;
        Sat, 07 Oct 2017 21:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438559; cv=none;
        d=google.com; s=arc-20160816;
        b=fv6Zc2orVo3A/p43ulx1Fg6Qaf6Z0/Nyi/V6hQS7Gxp9gjpTokoQPdN/6qGfqT8uyC
         1syH5sYdu39PLEWYee77nFGCwBo51mu7gcJs8PwGJrFNCKA2pjdc+r6ukm5PJj/Pd2xa
         ENmCYzJdTxmQ9mV9hOQWQMifqfKEWkqwWkv6L5WURDwIeXM2j621CuPkMW0A067WNLvF
         kShSPyUYQ+p11AlR+H1E01ETZNBolWTY8dPG70jkqPaNWmBdfMakMn6xRd47yHT7CaT/
         VS9xLSN0QK73wGXlZ8sAYinnT3+dVzM18lnUmDudwLSge6hOTxEbdm3hxv1d/TJNfNiy
         Kaqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=lisOQmhHh+Vte0A5HtbxELMlrgfpQYH28zBq/8QbclI=;
        b=v2VnGcLkLOJ7lFSJ0EzYDzy1XeOB28iM7HmfeqRJgbvK/V+Z5S4hBr+59ewZMXr3HK
         axk/dlo9tHqc14JEi57kgSChw9mdAqQ+mkWVdIh3LnBObFelLjwey2wFXpAgDLmQgtXv
         LgRTZScnYC6kdI3xRZof3ry4erK/TW/0Sozun7K6MXfapWp+tqWw1xRHHRlBLwoMAcFK
         OzlPaAj+48ivnDC1Urz5ANOFNbEwIk90BxPyaB5ouxNcnQC2mTosS2JAiVz5C6lCpld3
         ishvG5ci2yodXSS7PEu2uuqiFM+4/+PcXuYINUXnHpceZk4OdWhVV8OLMnTtbldwv6Nk
         jfww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CM81uQ1l;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w11si556760pfk.4.2017.10.07.21.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CM81uQ1l;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id l24so5524508pgu.2
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lisOQmhHh+Vte0A5HtbxELMlrgfpQYH28zBq/8QbclI=;
        b=CM81uQ1lSewrd9qn5sAckLZZVsB7mfH+EhulAJbZKcNok6jLkG8zBx0sY8tDKCEF6E
         d9nSg0xrieCXmvcZ3mu3Nma4julBSX/yjRU6C7FQbIslQn+NSVgdinC8UYjvvWqfAAQZ
         U7vRcgdaGwMRSlptdmRsrOU8iZXawwv1lWFGYCwtpi0aljOelAs+HeHg5RgTQlCDserB
         67cF6SgwbxoL+iKXVQXntzjtX5u0fQCYH4ukPDJE3Exu0n2oM6QYx3l1DINI7/SzY/4m
         nT2mlkNQ7HjOuNj5OLA4OhqY6OkvRY1shVE/c1HSub58PG2i9HlizP/zvmXbGM5UAHci
         K1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=lisOQmhHh+Vte0A5HtbxELMlrgfpQYH28zBq/8QbclI=;
        b=DnKj4q+Zl3NAdrTF/JGN9QkTshQbZCwGdG9iBGYIj+FZb4tG+QdNFR9mGBBQrokY/Q
         Znme46gl67t5S0B7/W13KeYFR3fGu+n04Khl1OI3aNM8hfd0LZJ3u6xu2RgClHRGfFco
         LxTFDXx7xIoYHzo0ObjWUGkWuLuVFK+17BEZxcnY+jCZdsgWYudW1XZglKNDTTP07YvC
         I0pqZk6cNjsdNeBzNrke+UFdPb82YAU387YGC3WLOKjtgbRufmu7vg6JVJ72eYqeduVl
         xlEiOvcb6hERW+LKeC3lcnSmck/Mhr2Wft4wI9e+XHSLQiAGnopKqydLuv69WFzRYhSm
         0k0g==
X-Gm-Message-State: AMCzsaWQoXw8mYk8FmDA1sykVUgCuSmSIbTQsAMlR2hnLx4M2XLn1ffS
	JhFpK8lPDgEeyVEAivK3UqRvXg2d
X-Google-Smtp-Source: AOwi7QAPmIt/STg1ncVkdREv8Vx4QGxtTIOGj6Tq3eOWar/4jo4T90R/wiFSKQpUf87IbrgDa8SfNQ==
X-Received: by 10.84.245.137 with SMTP id j9mr6051168pll.423.1507438559018;
        Sat, 07 Oct 2017 21:55:59 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id l5sm10211987pfk.114.2017.10.07.21.55.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:55:58 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 2/6] staging: rtl8723bs: remove unused variables
Date: Sun,  8 Oct 2017 10:24:52 +0530
Message-Id: <720f0fae9eaa80037ffe69f1331c5f4c48589626.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

It seems these two operations are just dead code. The values of these
variables are not used subsequently.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index d815a69..e5354ce 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -590,14 +590,10 @@ u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum NDIS_802_11
 u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 {
 
-	u8 bdefaultkey;
-	u8 btransmitkey;
 	sint		keyid, res;
 	struct security_priv *psecuritypriv = &(padapter->securitypriv);
 	u8 ret = _SUCCESS;
 
-	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
-	btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;	/* for ??? */
 	keyid = wep->KeyIndex & 0x3fffffff;
 
 	if (keyid >= 4) {
-- 
2.7.4


