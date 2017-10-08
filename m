X-GM-THRID: 6474399283336445952
X-Received: by 10.98.76.206 with SMTP id e75mr409182pfj.10.1507438563951;
        Sat, 07 Oct 2017 21:56:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls691575ple.9.gmail; Sat, 07 Oct
 2017 21:56:03 -0700 (PDT)
X-Received: by 10.98.144.15 with SMTP id a15mr257354pfe.33.1507438563299;
        Sat, 07 Oct 2017 21:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438563; cv=none;
        d=google.com; s=arc-20160816;
        b=lQTSCq1DmNkYREpmzXJ5V0XCNac1GasjT89WcfCjphHAXpd/ynuAmo5DR+x8JGI5dF
         DWIrRUX0SglLgGmzE9M1qg90jSnTjjpD1mokpvoYLq7MoCpN7f7uh6la9TfzsCv9Anme
         dNwHqFejJz/QzgvMTXrB9sn7A4xABaarR6FuqLMxEJlb6UfOmhmeiQSnMSbYThHK+CRv
         VGBE0/uUqJYmKc2yr3UznekyKCGjiPYEUK8SjkjixZVP+GWV6V9wQmL8FaC8ZgLgRkTX
         xlrKtTs81QdUfwPlO1/c3j9jbDMvBqTCczXrnPbposGkhe6dkzonVneMW03NYFYQsbh9
         0bCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=ajP9aQVEm4IxC8aolzN7AzXlOV24SPhrOaJaERscxVE=;
        b=untUqdvqpNPri2RGw4VQQDjhQNNwVCYD/7FnK82mqUODtN6y+cnH9MU5swdIvMGrsF
         4udFI8S7gJA0xwtKqKuiSFvE3KrbVd1em400xBYNUhjdBvl0Nb4vRxrnKIlujKj2aeaK
         JMYx5TQXlQN1pQoAemtHVdonLn6MZWuQ6C+af5C2IAuY2b5pNb9kkJTC76x4EUZP8eSI
         aOrmXjCtOBs71JGlnsiVacAYicwyTXTBtSnY5xXlYY/uouKXZHY96zD4xrxioD22Lbpk
         vI9X2tF1knWgEJkUMuKlBIsduV32/bbr9mtmR/09mbjbZTsEmGUjniJyy4f7dxE4EPl8
         ZxEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qdkYmzEs;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a24si172825pfc.5.2017.10.07.21.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qdkYmzEs;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id a7so20711873pfj.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ajP9aQVEm4IxC8aolzN7AzXlOV24SPhrOaJaERscxVE=;
        b=qdkYmzEs2usi6dkj/Q/be4WVcAAKD7+tSwRdwqP4m6fx2P6kGoIJAUp51B3DNpxIvi
         e5XjODXfUUpninr/UvqZ+wNvEsAVcQ0E6/Feu/cc1vL5iUEd8O89uIOFlRTIFmDzNKZr
         C5wH1mkUBQgs2h+ODIodhItJ7eGX8JLn3bUpkgsws9ISKzVmlj1vkaMyxT8LSjvHUnzn
         idqg/rSUcTCxyhWoX1fwDV7dNxOAhlW8rRh3fPXSrsLVvcI85bbLX95VXKhOX2IsUO9F
         FlZv6/rkliwIvBJuyzdqzxkhtAbB2PzGLRUA5+gv8uMD7vmMMs/51KHz6sfOg9IINMm+
         viiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ajP9aQVEm4IxC8aolzN7AzXlOV24SPhrOaJaERscxVE=;
        b=fpRP/5585cjxR0Sdwhqh5sORylc1Uk9kJqj9DraPzqgJ+b2ZQZLg2BEiVWuy+GZXi4
         qn7toTo6vL6PbokAo/jvdMGXYsf1tFIbUtTjEp7fWvJ5FY0O9m4LZH5eWpS0EN9mGSxh
         hhI+xE7ZGGo1zhpglHCYPYKsPQaCXTyXAwtmoPFkppHLaXyzTitnou6HFfWt0HRdqXWz
         +R0CffMeWWvXozb56LaHt3PDpjhPfebcgNsnaGh+1ZKl0gYQ2L2twW7wTMW0sjVO80XA
         mIZFYkIsm2lnT6wIrba82A5iu5c5oH0VbhOWM3wtxWCKdMvP43cz7CY+whiE7h/fzoG1
         Yphg==
X-Gm-Message-State: AMCzsaVUKz+xiKnSgB0b1E62zGB3/3nXSdU+QgyyvzFd493B0QEHHRFl
	9T6r+AGAsKRXsI2mhCchvPE=
X-Google-Smtp-Source: AOwi7QCCMiGeEjmHUT6trpjoeT65yXL7fD5kV5y3e4d/fqXxusbbml1enUtCZB/10tU0BCLe/6I3EA==
X-Received: by 10.99.152.68 with SMTP id l4mr6102276pgo.443.1507438563047;
        Sat, 07 Oct 2017 21:56:03 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id w10sm9103667pfg.40.2017.10.07.21.56.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:56:02 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 3/6] staging: rtl8723bs: Change type to bool
Date: Sun,  8 Oct 2017 10:24:53 +0530
Message-Id: <3ab5fc49fd28cd0601426adb6437dcd763d077fb.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

res and Match have only either 'true' or 'false' values.
So making them of type bool for better readability of code.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index c6ebb9d..03dd684 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -604,10 +604,10 @@ struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 
 u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 {
-	u8 res = true;
+	bool res = true;
 	struct list_head	*plist, *phead;
 	struct rtw_wlan_acl_node *paclnode;
-	u8 match = false;
+	bool match = false;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 	struct __queue	*pacl_node_q = &pacl_list->acl_node_q;
@@ -630,10 +630,10 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 
 
 	if (pacl_list->mode == 1) /* accept unless in deny list */
-		res = (match == true) ?  false:true;
+		res = !match;
 
 	else if (pacl_list->mode == 2)/* deny unless in accept list */
-		res = (match == true) ?  true:false;
+		res = match;
 	else
 		 res = true;
 
-- 
2.7.4


