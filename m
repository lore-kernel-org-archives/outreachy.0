X-GM-THRID: 6468559183298953216
X-Received: by 10.159.252.11 with SMTP id n11mr465919pls.11.1506601877054;
        Thu, 28 Sep 2017 05:31:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.130.66 with SMTP id 60ls1233579plc.14.gmail; Thu, 28 Sep
 2017 05:31:16 -0700 (PDT)
X-Received: by 10.99.113.18 with SMTP id m18mr582584pgc.167.1506601876005;
        Thu, 28 Sep 2017 05:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506601875; cv=none;
        d=google.com; s=arc-20160816;
        b=uQ6jG6GtUVhx9s6B9IY5xaGLAxbVb8fUufJkS09QzPFWaA6gCr/+c6kU4wAhdjZKdf
         QKXFHZ1Li5rOYFdnt1Z0y/6dXwr7RgKlKVGKRosPhDG4htW20oJJw/1ML1a1ANKA+ujw
         53Vls+31aJLf1ARGgFUacZCvhZsl22MkTGY+DUHlcsgoSt1XjNk23ngcnXIxjxoWxc3y
         3EyD+1GjpBCyUSfFdKyTn4jEueaPCBADR1u6EYrrF6pmSIVwv9NIGXE9AwOjBCY8KOO7
         QuEXzM+qSVa6JeecOPliv9EmxTxqXAY8Ucaa49XdpnIrB/mjDfzr8o7YwN/1qoXSXPXm
         Tmfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=aok5ZNRgTDTezZpZrYhDVvf/MVTjoScbya9eWq4vRRrWInTWkY6FDXRT583+GOzjML
         XWiAg+4DmTz3wxvp5Q1htRpcyUgoyU+wGlQtnGcOBGELlqPTp+Ls+SIYP0FopptqDzdw
         ICNcjrkvJ7HzmpTRmjbNWldc4n8Rh0VrvBQ6BWc8FzKxKsaWCh9GlJjB6owqKL5fjGtd
         5iJzlo7SSh6aHfdvlhU6WvHVmalj5DUPabCQOMPx9OweRRbpB5cuTe/HDAk6N/XSyuYX
         CM8sUf4Y5yplpz409h/D6spVpf8M5uygOdk8y7JLQsPKv2Hmfjds6lRUt71IZoquHHFv
         /eBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cz0b1i3A;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h3si203103pfk.9.2017.09.28.05.31.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cz0b1i3A;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so1396836pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 05:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=cz0b1i3Alx4iOGjgArusJTML/rKF8Osk7GUjHRbXzUMl4kZofQJS0jSbtodNFg4qtP
         jHv3n7h4RI+hhzs4mpT6e67/iWTizrZZJvz4Z5K5Yyctc6qGqSR2QlvzbIuvV4zpnHyl
         AuQyQaz3IwhwjBGqN/X91IYIp7qZ0x1/8gpvougJ7dT95xcL1rra+ZRejtWH+w3/fT0k
         0xOsLSq/u8CgB8XV8wL2O+GROXWnYFtnmWF5gCYpUosXqmBCpI0YO80VJ07dtEmtrPJl
         GzpcB6/dGq9UttqBasORNJpL00y8/qZcIvVsgfyMg8z5j3EsM3D0L/TdWAbjiHtz1pGD
         pSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FMcCG57Wla2VmX4EK1mhf5+PSNpJOcR1eoG+oNhGJD4=;
        b=d1Ggvfc4E387gPFUJ/rblp/uo5VH0I72TPmff2eaY5gnumoFxokWfErah1MtT/Lf3H
         NvFRmJcT4VsbIJmi8rMiQ22bNSZUqYjknYk32Us7WdBnXlb5vZq5htb/DYP4P/k//wTi
         XrMBWgtF941Q8rrCbxIgPjdimApeorK+N28fvfuLWbPVaof+/X4NJ9ikGHTLKEcMIL0a
         o+sry+0FSNePIuMue91XXghibILLwzwja1GsmZwyVwPoKtFaru9gYn/AD0AcRqJ37fSA
         Qd9nBA/4ljFmH8FKp1e33Xaj+TeZbYPyU+dNi2cPToFlZCLBRxl1f96KTaL8GnFxSHWl
         P0IA==
X-Gm-Message-State: AHPjjUi5o1tHVoiclT5Of4KZtwhsfEsSOokV4zS/raFltXk2qO2JlEdn
	Lw1ISBJ72IcgnddYdkqIf11dpXgG
X-Google-Smtp-Source: AOwi7QD7PIVYHerVsJJFdaS4puYn+uRS3R5oPhikQNVThaZKJjeea8zCuVRMKBYhW/fSl5xbUdhV0A==
X-Received: by 10.84.238.138 with SMTP id v10mr3960444plk.37.1506601875746;
        Thu, 28 Sep 2017 05:31:15 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.14.65])
        by smtp.gmail.com with ESMTPSA id l74sm3286018pfi.9.2017.09.28.05.31.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:31:15 -0700 (PDT)
Date: Thu, 28 Sep 2017 17:44:49 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 1/3] staging: rtl8188eu: remove unneeded conversions
 to bool
Message-ID: <6a5c3bb8fd3dfeec5f3fb6068cc71373fc79b5a2.1506600813.git.aishpant@gmail.com>
References: <cover.1506600813.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506600813.git.aishpant@gmail.com>
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


