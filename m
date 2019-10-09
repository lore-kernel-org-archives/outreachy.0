X-GM-THRID: 6745592460667256832
X-Received: by 2002:a9d:3e4e:: with SMTP id h14mr724128otg.223.1570580680974;
        Tue, 08 Oct 2019 17:24:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c743:: with SMTP id x64ls74226oif.10.gmail; Tue, 08 Oct
 2019 17:24:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsPKyGxtZDIxUa7AaooPEF4cP473JQX0A2IpjW4ns85ig6tNKy3agaP3/F2cP+XGS/l8iF
X-Received: by 2002:a05:6808:281:: with SMTP id z1mr285367oic.56.1570580679600;
        Tue, 08 Oct 2019 17:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570580679; cv=none;
        d=google.com; s=arc-20160816;
        b=XGuF9/+AaGrMw6yj8n1wZde5PY7aYPe+pImVPxT8/QmAaiPqfC2QX7FBXCQ35BB8U7
         el2P1WK5pQcRM4P5koSl/wB+j0wUK6Wj2tu+nMu1OdRwxagr7mmTK+rYsf3KukkzqWLF
         7xgMfggcMZU2ieNBykkXQRZ0PqAG0YAhPizhOYY18r3g978b6NQxsKipHK9uAdiGQM3y
         UIGVOgrl4ConqENKAi6rRYPDv6ivCJafvpnBGXMSGhL4MfPkPMRcaFWx8gVDiPgawIZm
         dlxNcT/zv9Hvw3fiARVLfcM8uyimj0zTfpD0lCtnsJHsyVBxRqioLJczMSK3KHLr5L5v
         vrJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=N2TqY07yYwCqAD/fmaVOvxsNzufzGpwXd6zx/2o3bmokhf3Rq03np7PGrf91+3iS7O
         OzxsT+Q/F17teCOXgQ+KcoRo+6hCdyE0Acak6fATyFjdp1qzwc64wKsSoQlKWFZs9auI
         UVmoTUiQswl+q9MHXwlPlBUeGajgJL78VOeKzZPy2gvhITfvvkIBdr4vzmaXlVuvx2/e
         uWLn8rFBq4NZI0JmdsHYpCJ71bafxt/35gQpMNsbOCh3noWGWtCHWcb2uKzqXr5ERRNV
         NSEWsQ365sqp0yTE/Un7bS0KD2k1/fv+2KiXAmKEss1DV4ExDgdL+PTa5hEGEMTYsKAe
         RuMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PiV0kQfe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id n10si11196otf.2.2019.10.08.17.24.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 17:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PiV0kQfe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id s7so368721vsl.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 17:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=PiV0kQfeD+FkVZPIq+BRwFHoTvuogT3BEWsfWX3tOzbWKTj2HJ2fKrCNtfUx7RJtLC
         kjPDIXNTs9Bbv98wCiu6UXsvytbM2UwFZy/666OiXFBoxAYr+tV3wZtVuoq6Es3B7HS1
         JgtsKENopxBxdajs9zODJgpmIGu7MXkW6VmDm5QFllSnroZevPzF89qYGcyFHn5HSTRt
         xzypGDuVpBg87hbm0GT2W4Ss+dfdBLjUSlzrFnTbh+vPIy25x3qAmKnffKlWer7twWx4
         LnfljC40T/OVqZX9KiOYVAFTZ3nOE2JKferVVxREfa9L136F3CllSSLS/k6b+NMwsIaR
         fB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=RWeCZrBec9cX5pNPQHivAriwaoCl/VW14F6loHfppql4RcPPxlPY8WIzxIwqzH/Bue
         wLNgbvh1HK0MdHMhfVaxICZNpGCkElywx2tTrpWTsYjyIzerZ4MEjDcY0DDhL4dnvl1a
         ABeetHskqwW6DCwGZbB/Q3Zf3pJlrINFVBorunMZUftb5RW7x5byaIU8HBlcuvrPQ65V
         2LDZ67bkUpEwEiChUy9Tzzrgtw0sZjs8olEKlfe7iJw28o9DkhCJqaLAHtwWnSGF0zH9
         qC9h1LT/nP2HKm+ja+s1RgqD4fbYXj6rjwncRFN5emz0vrDHp2ZLAxWTM5iRjY/dEe9K
         wJxw==
X-Gm-Message-State: APjAAAVOVGvUdWPn6VjOrhR/mDs5r8uqOGHUWdcrnRrVweZo5jZlO0z4
	c0SwXyb5sLOHma3QvXlD93eQZDtEzeK/tw==
X-Received: by 2002:a67:c40f:: with SMTP id c15mr327551vsk.94.1570580679168;
        Tue, 08 Oct 2019 17:24:39 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id j16sm133236vkl.14.2019.10.08.17.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 17:24:39 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:24:36 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <9a8f7b026780b3a7387c29f1d67a7c23d4b159eb.1570577926.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570577926.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570577926.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Break last two function call arguments into two separate lines.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 6d18d23acdc0..43af76b9fa49 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter *padapter)
 	#ifdef DBG_EXPIRATION_CHK
 	if (phead != plist) {
 		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n"
-			, FUNC_NDEV_ARG(padapter->pnetdev), pstapriv->auth_list_cnt);
+			, FUNC_NDEV_ARG(padapter->pnetdev)
+			, pstapriv->auth_list_cnt);
 	}
 	#endif
 	while (phead != plist) {
-- 
2.20.1


