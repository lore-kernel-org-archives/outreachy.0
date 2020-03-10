X-GM-THRID: 6802581190455853056
X-Received: by 2002:a17:906:33d4:: with SMTP id w20mr19968592eja.190.1583849359674;
        Tue, 10 Mar 2020 07:09:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls2438069ejb.6.gmail; Tue, 10
 Mar 2020 07:09:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtrERq56nwY5Z1jctVvT3nCLN05lQBBp9NPc5nl8lH+otI12cMqSWPGIod/To/6Y6+m6zo8
X-Received: by 2002:a5d:5446:: with SMTP id w6mr12723950wrv.419.1583849358526;
        Tue, 10 Mar 2020 07:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583849358; cv=none;
        d=google.com; s=arc-20160816;
        b=xVgB4lN9v5lJOvLj1fkDAJOmU5LHXMQfBxWRlA6yJPQvV6Tr2cNVR91I6I5LRFAKgG
         0dH7ob8XzdkOD/w/tI1h4vIq7ByJCTpcAIDqGVylwy/ICz/cc5S+cDEc86gooi3VuOmQ
         FpSUPPf9iCVjxQO2EWYck6Gac9ccCBK+cuptK9YVXk+wpIDSzmpZX+dLG4lIcpdRG3WT
         nbcdB4ZB0Vd3JzOqPEgbLLUBdO+ibI8BCCZr6CXHPqG6ySipLUxBo58AkXzozIsihbI/
         +f8R9Ou5xBgke7tb7nZdZZbu5sVA0myeYgE6C7E+RP9eW/q8vzPdOLYzUOFeybgMeygj
         mvSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=vFaSP3RYlIYAt+9ULZrk1R2grHPlmed2KXyKBGGuGmq4s+MI6jjF/pXWti9CAh/KbM
         ZA1b+IH3i5DD89x2/0WTMGpekRHQULf+OSsXwpV88LxDNxWlZV5yFXALHxaD4hDkzmex
         KH1pUz4sk4pLc+dIpxMKs9I2smiGswkuoaG/uisxSarTtkSJTdgRa3b2Cjiy8b6KPJbJ
         Fazt9P3ksIViifz54sv2ZW+DtzhWF80sLSMIQcWpWDDDfMLHMDpDmDKKkt2U7F4cHVsr
         d64a5BL6+GgUwY0+kH1oTcd7Js4KjIwxKRyCeqaVo2rkxpz4tBoT2X/0cW4486DZUSMR
         Ckuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Al3zcYoh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q202si112139wme.2.2020.03.10.07.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Al3zcYoh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x341.google.com with SMTP id n2so1510420wmc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=Al3zcYohj6E3QMNDttsI3ARjQA4owAR4ssOCp2zckJntSmQLZ0d6+mfFoeKdc4Me3U
         EY4u9HtjmCOF//ZJmhAleit0/XU11vlqPCdTI3A3kmbL4IXZ78OoF4o4MqtyLa7Xxz1R
         WyZ/RKxlHZQD3ld5xG+MboSNmTtiK0iNdBvK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=I6J4mZPT+nr519VzNgHtnNRElFjdpfM7JE50sFPTKmjATErBzWuGVhMNOfaTRQsawu
         G2lK69CbZ7njdpnUXsbans4YZx8FckP5nr6Wk/IpO1OqQ0u8+CR2IUMvB1/alDFZ+8rX
         1n2VSyt9dRf/aP6s6YyEjBPy8mfc4NWd1sqFXtFs+6Z0+Qu8eYG7vN6NWRwGb0JI2+oN
         ZF1h/ws9IWPZWoUD2A8SCQBo2BnDpj+buxpkunVyGGZiPnkVvzjPEnqKLAyJFWDI8vNO
         y7VH1JA5UIxwEstCyJiVjAlkbGJz6XcxnzxCKUku+dC0uySwI16U3oysbh1pCH153QZ0
         rZdw==
X-Gm-Message-State: ANhLgQ0l6zKhLKFcCzlezZrZCaGa2zuNtUggEs0aDPwmls729pE8PWQq
	mM5IfCAstHEc8089tS1JLmYAl0F2l2e99A==
X-Received: by 2002:a05:600c:214f:: with SMTP id v15mr2446403wml.110.1583849357842;
        Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id v8sm64262427wrw.2.2020.03.10.07.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: vt6655: power.c: code reformatting for improved readability
Date: Tue, 10 Mar 2020 15:09:08 +0100
Message-Id: <3fada7fe76047ecf06d0345c0ab9216424a126f2.1583848946.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583848946.git.lu@pplo.net>
References: <cover.1583848946.git.lu@pplo.net>
In-Reply-To: <cover.1583848946.git.lu@pplo.net>
References: <cover.1583848946.git.lu@pplo.net>

Improve line grouping for better understanding the course of action and where
every comment belongs to.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index a68ec527679a..6b0407694e54 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -59,8 +59,10 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
 	}
+
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* Set HWUTSF */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
 
@@ -96,10 +98,13 @@ void PSvDisablePowerSaving(struct vnt_private *priv)
 {
 	/* disable power saving hw function */
 	MACbPSWakeup(priv);
+
 	/* clear AutoSleep */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* clear HWUTSF */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
+
 	/* set always listen beacon */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 
-- 
2.17.1


