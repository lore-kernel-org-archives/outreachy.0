X-GM-THRID: 6468559183298953216
X-Received: by 10.13.233.68 with SMTP id s65mr1583248ywe.179.1506078830921;
        Fri, 22 Sep 2017 04:13:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.74.196 with SMTP id c4ls1470712pgu.28.gmail; Fri, 22 Sep
 2017 04:13:49 -0700 (PDT)
X-Received: by 10.98.238.16 with SMTP id e16mr4727894pfi.20.1506078829809;
        Fri, 22 Sep 2017 04:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506078829; cv=none;
        d=google.com; s=arc-20160816;
        b=LzosjH9Xmtc4IX2AY3iOMAyk/kkd2TLjKARlu+gMxwh1yj8Apg/GV5RSBirt+2Cr/A
         WV9pOMtLsvKpxysbNfZObQ5tk45yvu5VUk896P8VYQPAhvZ1srgB4g0Rf9qS6a3mNtxK
         2Vqym8a9OhuuwGQpbTbJ8abZnaeyB3bhJSSLSevaGLOu6ltgVn3BO9fdYQQn57z5XrAp
         GgN2NIn6oABNuAdcxrXBiI9QPc8ewbRuMIfJRC2ae07iJsw/YvziLRBZ3GX1bn5FWPyS
         oEKgByZQqNs8CiRHYI4LsjteFtDcz/xyjmfMJUHSPldMGw7A2oYNzzf9sjaamgYBe7ej
         9X0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=cZnbKTstxAD4n3IbC0vN+Kvjq/yGDcJQIt/OMLcwdsmwcVKRUUlNggwr+2R6vxVb25
         m7TT764taT2/wJz7SstySIY7uNTvT845VUfMZIUjQpQZr53Uz+ybTRGkS3BxY8HQwufz
         dHKTSCkPFHMiWHHrcWhqEFqg3sZ3JZs7uguTk29Ul4U3Xz7KUFUQNceb8891kPPfP9t+
         5M93QkHZTRSn5yOwDo29gYst+97OkeS2rMF4Yiv1spzDzFcaN+8wU+uF+1xBg8CLG/ee
         q1wyw/9y/+kw85PeZIxhyJfqaY6lDpJg6f5pF+cO5UgC4pLvCpsSojoWxWOiBmeiwDcZ
         CYJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CBVF/6v6;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id t77si342817pfi.13.2017.09.22.04.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CBVF/6v6;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so334346pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 04:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=CBVF/6v6bdEHyVt2DAqfKNbCqzNQQO8bUIR0YFVTvpbkQSdG/BTyUeTmPJIeRfu5Da
         F0YupgZCgtc5Cp2Ya8DBltwljsSngLAnsMbeMENmTthlgX8jTeBW7IcRj1OIw/hfY/Qp
         bPyULMifn9jG8OuWIQqurU+V9ti03d5tIdSQD/x/B7GwmiGKcYCKAmERbcYtdxPAuyHe
         Ho0L58MlMRVhShLuaH9tHnnDphskiRB4uXccShvvplue1RpzcHkY3SYsS+gInpMXyDud
         lsrrhNYnXJenusG3iScrZXfwkmFX/Er2bJkUM57jp/AaAR4QjmsFA3QpFp9txdQvSx/X
         Ueow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=rNlzNp7BUplT/sh2zHMnIw/bPgoiwnYm65V4aDS54uEuKEvfssoR6mR16L+cXfJMLb
         4NFHmhdBYFtl0xuEA8m7frzyh/H3hcAYyQdy9jDVDrcT1h/8cX/Zl9Oqgyx98Urxqb4j
         6XKKF2Z03h90zTmsBktpvXESOXIhrh7mWxuYQrqNDNaBIBu0jPci6CNzYh5+wq34Bcja
         m8pOyVVDMLsoNbJ6d9pelL/ANrqJK5Sl6RUtiRn3JbWMbneu7BLF/aftdnWtXUfwn2H5
         fOW/AKcoKBpZi+9HHIpsewvEXhgbYjvlJ2UChLPJfZEjRB0gcXHkYzuxsD/Cv96R50hB
         R5nQ==
X-Gm-Message-State: AHPjjUgMnzuaiGpRoGRWIs5LXvyeK30/VcAiHX4jNwzYVwymW2PqSudW
	NQ/tN89dw6BQ3aJXcuA/q/A=
X-Google-Smtp-Source: AOwi7QCvW0/XJLdWin2T0J8xuFFsHP4cP3eg/K5aUbIHkcSckWOT923BrT9vD2euid4PhBkNwzJvcw==
X-Received: by 10.84.234.197 with SMTP id i5mr8944328plt.184.1506078829520;
        Fri, 22 Sep 2017 04:13:49 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id 2sm6473626pfv.128.2017.09.22.04.13.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:13:49 -0700 (PDT)
Date: Fri, 22 Sep 2017 16:43:39 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr
Subject: [PATCH 1/3] staging: rtl8188eu: remove unneeded conversions to bool
Message-ID: <10c934c340d28c6a1db63724df7663fca643d18b.1506078496.git.aishpant@gmail.com>
References: <cover.1506078496.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506078496.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch suppresses the following warning issued by coccicheck:
WARNING: conversion to bool not needed here

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..2db2ca6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -707,7 +707,7 @@ static int issue_probereq_ex(struct adapter *padapter,
 	unsigned long start = jiffies;
 
 	do {
-		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
+		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
 
 		i++;
 
@@ -1283,7 +1283,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
+		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
 
 		i++;
 
@@ -1410,7 +1410,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
+		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
 
 		i++;
 
@@ -1517,7 +1517,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
 	unsigned long start = jiffies;
 
 	do {
-		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
+		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
 
 		i++;
 
-- 
2.7.4


