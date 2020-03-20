X-GM-THRID: 6806104906273914880
X-Received: by 2002:a2e:9c8:: with SMTP id 191mr3782408ljj.259.1584669857282;
        Thu, 19 Mar 2020 19:04:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls725663lfn.7.gmail; Thu, 19 Mar
 2020 19:04:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsv+mrjNCAwdx01L3nue4+9jijGeFNrDMiCvDmDGJlwqcFeEcSh7V77Ifz4I9/eLGCvVO8k
X-Received: by 2002:a05:6512:6d4:: with SMTP id u20mr3876845lff.209.1584669856099;
        Thu, 19 Mar 2020 19:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584669856; cv=none;
        d=google.com; s=arc-20160816;
        b=TmrHbGYYhkGDsk4rk5OIqi0ChEaSUWebTuWXrO0oLisf/JzGqvyVRRJFYQ7UTU8uYt
         GlcEhDb5fLcOQoj953S0l4fl5EgGbsrnLheaMZ9lf3FVtO8TIY4syISA0fRxV0ckdHiS
         Bp4NW9mtKNmxDb9vWxIqTzw1HM7/Pq7gAfytBT4J3eoxbjzLoMe0CZDwd2W1+2N1FoNm
         xEP/GrQ0WaIz6W/dhJTpF9PHxK7EBWq5KFPu/p4Mp0w0N2hZCmCie+1Xs2J6qv29zLGg
         9fukN1DBG5aR5IYTdb5mFWnIGirhf3IhJ10FCJSZ6ycwOUTcShqNpiuKFT517IRUD/Lg
         xm7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=dURnOLMWVhf/6hLW2YLgR3BMx/L067EYXHTibEeIv+TN/d9lVIq0a16mfe9ZclQOnK
         jPU+xlOoBn3wEuOqzJGgjqC/OdWFto3nnadOjteTBACF1rwg5S/q9OtcKayigUD+oLPz
         MEGFv5gEfw5CESiChTLxr5QcHNS+3zfx7Bf8MwITCnIfO9QZA2qLBfE9xiulq8nqH15K
         rzn+Ll3Cl59ogF8aBxCfQOjz9+nzRReaTHN5MJlLQ+HL6DnqpPkYAPDTK7SXkoCLFYIS
         ETxx0GmLgOuj/D2SQp6wPl/LbnSrUdqHsyG6YCz1dVA3LAbBgYgJ5QHqAOazSd+XckL4
         tDPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K2BRwCnz;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id w6si198545lfa.1.2020.03.19.19.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 19:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K2BRwCnz;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id t21so3283133lfe.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 19:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=K2BRwCnzwJh5p/UZaRKctv0Cbh13bOYtrrCUE7fhlqs0II4ZpMF7b4AhC4bitInNTD
         6jjsGuhkQ9HY8lc1Z5PIDvBvpjO6j2tf6TLy0sKK8KOVQL96Xr4gSDwNOmGS0Fe0m8aJ
         lN7m1t4iEOTHGsI5Dv/o3i5SZgM9IVdB3FLb95aA4pdW0UPppiPBdeVW9MjLTGTmRI2F
         HlbjYhLu4vc9hO2oN608KkpCKOxX9MdfDiBD0jKy1Kgce+bgPl1yEDCyV5haxcByluzG
         1y60r5X59pki/dVHRI0/jAMKkGYZeDW8Wzl3LmljV/GGoI2VHZVC8hd8Ydzr63q9kGU0
         e7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=V96OtFK0XSXIUk/tpIVPJBDY1oMnJqmj0UO1b5tC46HcPJgcShJAvq5LKPRhCTZbV2
         CA6V3NhZdd3Ew65RGAlX7HfDyYcYGhVE0TBzuM8kv8aL2za/pUkXBNZr3O23kqlbI6qU
         U9BQ/Y5DDAgPINJkyH0nwWdbNVZ+aOoq0ZDrFCM2Y/0UXsxo884MkjpRcvS6tMdydnXL
         0mMM72zz9st1AwCqWm4/EcUUUwz0ex8A3eeKBLcyKk/hq+OR7wfE6WKUM42PjXv7PSm3
         6brxwaTvBU82YUF7X7kiiat6GvIApFSlo186fymeQw29qSd/yFWAq9lo3g1hLHXF+5yE
         p61A==
X-Gm-Message-State: ANhLgQ125h+Xasr0WTGHNY3cnLB1jYs31rZ2u5tKNl+Vi8rp8IFROZf5
	pBrzkA5jDLY7zazH8u9obLw=
X-Received: by 2002:a19:c206:: with SMTP id l6mr2943454lfc.118.1584669855850;
        Thu, 19 Mar 2020 19:04:15 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id d12sm2403163lfi.86.2020.03.19.19.04.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 19:04:15 -0700 (PDT)
Date: Fri, 20 Mar 2020 05:03:58 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8712: Avoid multiple line dereference
Message-ID: <5227586f7d1d91ee6f19b1ad8e69b1eefac32f0b.1584668081.git.gokcekuler@gmail.com>
References: <cover.1584668081.git.gokcekuler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584668081.git.gokcekuler@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

merge a line -> with a line ending with a sign

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 74dac74..7d5a50a 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1094,8 +1094,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			src_ssid = pmlmepriv->assoc_bssid;
 			if (!memcmp(dst_ssid, src_ssid, ETH_ALEN)) {
 				if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-					if (is_same_network(&pmlmepriv->
-					    cur_network.network,
+					if (is_same_network(&pmlmepriv->cur_network.network,
 					    &pnetwork->network)) {
 						_clr_fwstate_(pmlmepriv,
 							_FW_UNDER_LINKING);
-- 
2.7.4


