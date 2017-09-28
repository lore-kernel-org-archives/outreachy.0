X-GM-THRID: 6468559183298953216
X-Received: by 10.98.102.148 with SMTP id s20mr452731pfj.28.1506601909622;
        Thu, 28 Sep 2017 05:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.164.225 with SMTP id l30ls1234904plg.8.gmail; Thu, 28 Sep
 2017 05:31:48 -0700 (PDT)
X-Received: by 10.99.53.134 with SMTP id c128mr650903pga.165.1506601908902;
        Thu, 28 Sep 2017 05:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506601908; cv=none;
        d=google.com; s=arc-20160816;
        b=pPJ30d/ZyF7UVfwX+Uj0q/93Jv1VCBoB/W1X7g6yONvu5eC1x3chYMvIwYOLE/nnh8
         yHINvHMkLSBbSlWOS5W4l7BfRE9GwJXu3L32K+N8+XSB4mn88+XtKfwauyAPB5d7GoXR
         4gEvlHIR7WzAvn+t5IGQGYNRVZplVsQ/MXAgoQrTsrju1aYJXH/Ws46dQDcxJlfcGVbf
         Nn+hrI4PCXzcim4VdJqs02bwhmG28UMmvagWUwl3+C5LtzBQVBAqM5YEM2DKIre2XqAi
         UX0vFaOHIbO9d13vJ+L2mgl9rlOuC53ZYSWlSaohHKffXYvYYHTa0oTfBQQYVdG9n/kk
         X6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=UeAaf4zjdIE5gEUiCzP3jeVdk/xFA/W+RU8FN9fX6oz6HsOOxQkiVpnOwEuq+yDYdA
         3JeAsubiGT3CfgebKeBlqHZlQ3aP6LDCrk4kfqBKK6htSHkTbzoQSoZDlBXma7NeFqRO
         Pf8Uxqrl6PraCaDM5Y3GEKn4jLjAFqR/taJg1CV3jjGPYWNeY5jW5XrPiwfMAka2fBNV
         rKFbZ63vs3xYgToDu0YNQEy01MtV/F9M17ty5i7tfWbzrDRgYdBl56vf6dNUk0TSd2MI
         N0sb1Z4t5Mc5v6xsbD6DHsEuJBgfnmehEP9Eh+61awjPEQFRxTgwtq5Wse1R6rF7EzBY
         +2Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T/iVdmZv;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c200si183360pfb.14.2017.09.28.05.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T/iVdmZv;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so1398092pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 05:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=T/iVdmZvufieqTz9X9NVc3BDWIAjBpqBk+TiBMs0bUgEzcCb7cOnQB86DEGX/jRgG8
         bCHSYAetJ3D+twVERoAA/tCuM4xBAGnj2izsSsP1SVFgvBIvZiA2VTYl+xlPqWBs7gsD
         imrX4XclwNdjiac6JhvsTfxOkyhhPWpz6VWvkXMGfmrht0HqkoCMaoVieIX2RGGIANfX
         BFZfXN5SvO6KxaqGV11y+R0GBoDSrnSC+yctEsmUMJfmYFH8OOyhPcHmHHBxg5Izw4c9
         C+J7fALaNoEkS0iw2KVEaU2AyZ1UBkRJCNPfcao7XbbojDaNXBsTl2Fs1MQ1D3gDf+VH
         uq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=HDHjnDHx0BU6Vtqv6c5X6HTiW/iDF6bIuk31+2X8aqV3sW+3hexggYQIcDQj1HCtJN
         yQjfbukow9/2ta24XRaJhNZLSYgz4LPgLdOBS87rUvpjDee3UfhUPGgeSrYwwqq8pbjv
         cQz6SOrwhsRfXOfDcNt6tR/lk2jeC7S+gC+zFHuDObmoswoKJYUHm8661QiZ3Iyplshx
         qrQ2ZAf05mUyMGB1MduoBMKhoo68OsLXp0pLMUQgvlaS7LGXYaXmm/AVizLhEZTpX9vz
         MovY3Mn+E4QH1O0gYIhoIFtpjdOqAAXUpC7fnQZDn1OOmgpvaeGCCf1WdeSk69VxAtu2
         19lQ==
X-Gm-Message-State: AHPjjUhPv8R0svfz+t24yPCfLBxCLHxnfnqC1fUtqCYwQhYMtHlzeq/2
	umtpEl8TjEs6NR+mvsEfdqXRuWnY
X-Google-Smtp-Source: AOwi7QDwibvxF8t4svnoHzC5X1Qvm/XoJAyTeBPP/2THOjjMKEM7tFNY5fVrYEAC/Jz2nBbC5l/o5g==
X-Received: by 10.99.151.2 with SMTP id n2mr4329036pge.315.1506601908649;
        Thu, 28 Sep 2017 05:31:48 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.14.65])
        by smtp.gmail.com with ESMTPSA id b8sm3142322pfl.62.2017.09.28.05.31.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:31:48 -0700 (PDT)
Date: Thu, 28 Sep 2017 17:45:22 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 2/3] staging: rtl8188eu: remove implicit bool->int
 conversions
Message-ID: <8c636886fa91173aa3124270ba600950d3261249.1506600813.git.aishpant@gmail.com>
References: <cover.1506600813.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506600813.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Implicit type conversions are bad; they hinder readability of code and have
potential to cause bugs. Here the variable wait_ack is always supplied a bool
value while in function declarations it is defined as an int type. Fix it by
defining wait_ack a bool type in all usages.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 2db2ca6..99f3d5c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1196,7 +1196,7 @@ static void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1316,7 +1316,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1442,7 +1442,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
-- 
2.7.4


