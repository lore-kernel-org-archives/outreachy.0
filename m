X-GM-THRID: 6621495393645494272
X-Received: by 2002:ac8:2194:: with SMTP id 20mr3122750qty.51.1541687088146;
        Thu, 08 Nov 2018 06:24:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2208:: with SMTP id n8ls784136qtc.6.gmail; Thu, 08 Nov
 2018 06:24:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5d2fM2tckPx7WgsFY4EWIsAipFGv87M1ZtTIPqMX8KZiyKIdZuEUX7oM4BEDED0PP97fQ1W
X-Received: by 2002:ac8:3f4a:: with SMTP id w10mr3077543qtk.52.1541687087057;
        Thu, 08 Nov 2018 06:24:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687087; cv=pass;
        d=google.com; s=arc-20160816;
        b=yVotc6L3pK6iVQEgvdp/67vQA8km+06oUxhSsQtaBO6IRgpXQmxhCMJkK7KGJAjkLM
         AvkCHukyoSnjc0nQUbbdWsqpoJJLE1eS58CJAC84lHlJjfML8wGW9N2Mn5GxZMMR3N7r
         ITpyD12MrLajOUo3lE7KMazLIsrYEv22pmlnjYSgFWC2Z2hSsNVephMFuacKPb1ZDEAf
         WJvFVMJR4hUJYYvXkoixId0fGioPUGnsR06OyE1m/ERvaSPyIoDrqHzMy5+Jqlj1/cNj
         OPhQZr2yOC9/wt9cdUweYmODDTyDBzo1DpSviYgtFIEZZliypc2LohcBxEA8rrzvBXIU
         NQPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
        b=b1Rowhh7C2cd9DBCIHRTHLzEj189kIOS02ItVR0wyOycoJXTDf7tg+vdc6lawmXTYO
         LOjmKyFlBMtyevKDGBMciu1YoHZaZXu7JPsMtb984Db/NyAEaL7Sbz4lHKDUJUy5qbke
         K8hW9UKN4QCOJ9jNTA3EUyxRXRy68M58ash+cpNOquGwpQeusRbz5oAEgruwkkTrD9Wx
         wVORAbJ/qTPRsHq39VdKo2jFEUKaOT91VvHfWH1wNxU9PE2KHDP76SxHOpRfU4ghIRIM
         TE9yJXRCSpHrOSmAiN24pwpVTPU2zO3WnQwq7h1YH20EhLk8d0oQOQy7zp46+xESNbfw
         EqgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ZBcvgaCH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id s34si207777qtk.1.2018.11.08.06.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:46 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ZBcvgaCH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687082; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=B/78ashioBNIu83c4jPyhDcQgNSPkl+H+xpbqgtyRN2Iw2Z0awb4BLTceDYag0RuP78mEkvKdFnBem+RNLGQ2Cul57oMIa/pu8AQe6a3xX6gZvoZI/ftAYvK2ZFaywtxsJ1IZPXV8YXKZroOoqKAypIorGEsI57r9ftAoVeANi8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687082; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=; 
	b=c+axSsb+CHtmlbUx4vBUo2N5cvaStQCDxCVU9MTOWfb7GsiyEX4OwPgK8hDEUubEARTr9DDkJAAf4y8m18Qr7D4KmRKxAbFFK5jrXr9WG0+f64xCujiQTh7PtrJcpZGR/Y37ttTYrqjtDsPXjb7/tYFl86Rhs05k0XNdMQfQYFs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687082;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1016; bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
	b=ZBcvgaCHXQ5TebrdIY9AMlK4wXXNNh5PLukyTMRwUQI7XhR9FPl259ezKvSHQc2D
	4njOJh4bDaB2o2W7FkqMr6k95wHwYUCFiq88Lh9gZwclVOC9EV0u8e7olbj+qho1Tup
	AiaCPAYmXlrIRHAtVnagsSBR2BG1WP+HQ/OrCbho=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687081597144.0987436636808; Thu, 8 Nov 2018 15:24:41 +0100 (CET)
Date: Thu, 8 Nov 2018 14:24:38 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 05/15] greybus: staging: align arguments with parentheses
Message-ID: <d24f277ccc31f4807b54513acff6ef5c7d6b19b2.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align arguments with the right side of the open left parentheses.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index ebb7a2ee17dc..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
 int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnecting_operation(struct gb_control *control,
-					u16 cport_id);
+				       u16 cport_id);
 int gb_control_mode_switch_operation(struct gb_control *control);
 void gb_control_mode_switch_prepare(struct gb_control *control);
 void gb_control_mode_switch_complete(struct gb_control *control);
-- 
2.19.1



