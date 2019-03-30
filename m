X-GM-THRID: 6674191522051653632
X-Received: by 2002:a02:7342:: with SMTP id a2mr6988424jae.16.1553956318740;
        Sat, 30 Mar 2019 07:31:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4687:: with SMTP id j129ls1584703itb.1.gmail; Sat, 30
 Mar 2019 07:31:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfewoOsleJiwFqIpohiyv452TmDhtXqAg2pczFz0S7ATZ0QT0dpIavNjudAZ/hbzYZSscm
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr3496059ite.23.1553956317797;
        Sat, 30 Mar 2019 07:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956317; cv=none;
        d=google.com; s=arc-20160816;
        b=AhrpgUTiM3Gx7eQXw+qkICz7plazGBi5JOYpF2K2IXnkYwRuWmB5a287Cv2hzj32IX
         i5iJUfVPCIUzucxvRiKv9U+Fr+75DlKnd0DMJjgmOlfm6jvwNNpRyU4aulXLR8tmx7k8
         SQ0BTj1kAzimcb+nQoa70gOpSNKYIGoX72b4pDcyjeRfM/3RT9NpG/9ehhkWri1Bgx9y
         zKYUePx+UK76hXz7hIKdbhZU/ULDOiPa6N2dr7DAA8blTrOLrnceeMT2u5HTgltooC4Z
         H8QAzSsKakeDFFmb8AzDmX/gviMCkEeI3eEmYR43YjVkjmqsFidJlgO575LvSe57Njq3
         xkug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=k999cbFnzI7F6HAEyXeNOB95g8GoOOs5yB7gll0BZH4=;
        b=Xz6cMDj1s3urrEWSrzipa1JlNQhFaLXDIFFfxgO1wnEtJ4sYs/l/UPbGhuCEulG1fr
         FRji2kSOOGRqsace9w57MfLVttXQEtVHGsTImQx2VycK5jCiRkPaWCVG5KaT6bWBcoAu
         Wkgk0iQrh3PVxclaZXpIw7uSowBXrz06rHXTLFvRx5fVXEjGSNspkUMAykrI38mO6wk3
         MtjtpumMnTglQRnXTSmlRO6SmafIEE+iNhdu7+x1TSe2S+nRh2CTfIyvsuFcGbNLWexS
         vnqZRBMZhpoBgrZptOBS9NCq4wmayTD7SDTf22oquuTiiEtOA3AJy/EcRNiE5aBcwL3e
         KMLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rea3rdlz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 196si1031848itw.0.2019.03.30.07.31.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rea3rdlz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u9so2563228pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=k999cbFnzI7F6HAEyXeNOB95g8GoOOs5yB7gll0BZH4=;
        b=rea3rdlzE2EX/yGjPz4n6VNxgdaj78XykJfk/RK6qV2ehapvHTMb1kc1hgXOhcFzCU
         fMg7P/seR5lOwAzdlVuZ4qX8SGotTqFHyhylJepdE2WQV5C3OxnI0pKJxY5SHSLCrsiM
         nEoL/SwbjPYbGfvxdGtWis1irOnO5yVjp/4N290UM4WkV3Q+V/6By/3hjwA2Yjt1qHCI
         ZOqzDxN138OI32SUlIwnzK3eR22FPZD3d4pAp5FLD9wjprNr64dt6Ak0f7QcFroGXgBE
         k50wFcXVVhhoEa65s+GicD3iF8PiHXsxoIoEzhH6OVN9dl08JhTnJlCbctwWkDZzVAjX
         IAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=k999cbFnzI7F6HAEyXeNOB95g8GoOOs5yB7gll0BZH4=;
        b=b/lKOj04pf8tHJpDS7sTT/feulAyAzNdtlQCi4U63V/v5UVo9X/AZ4T0yGEXcHpd4B
         p2J5h+7Cw/l3jLPi+UijjjP3v9c3EG2yyAyfyNs7qdKkAq2/S3sTFUBOLMehKXCAuZgg
         1P90G8GjmVop/IpiszCR7FmNvJ9LLClFYPCHIOyAumQErVfPa97gOu3zY3ssiMxN6E78
         0LlodmHkyLvtpn+WHp7ZlZ81WFS8WDBWEHokocj8KRWzIwtzQDKwUXi+18j4FtWUzESS
         jw4Ema+uVi7nKl0ZRp8nW3D8yxsvfM/eI55X8+AXI4ghBCb1h7mEpOdc540sJSo7hQd+
         1/Dw==
X-Gm-Message-State: APjAAAWcqho0iKSE31+1hslbg8cM+c2bedzTT7DRGJ90EwYJPX+2q/ic
	fZIMJyyrAHI3y+VO+sPeKpld8Plw
X-Received: by 2002:a62:b61a:: with SMTP id j26mr52270375pff.151.1553956316902;
        Sat, 30 Mar 2019 07:31:56 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.31.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:31:56 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/5] staging: rtl8723bs: core: rtw_cmd.c: Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:27 +0530
Message-Id: <3a3ae283b9ef09bded7a759220fb60cb4603fd2f.1553955183.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Return value directly without saving it in a variable and remove that
variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca..814a4b7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -297,18 +297,12 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 
 u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
 {
-	u32 res;
-
-	res = _rtw_init_cmd_priv(pcmdpriv);
-	return res;
+	return _rtw_init_cmd_priv(pcmdpriv);
 }
 
 u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
 {
-	int	res;
-
-	res = _rtw_init_evt_priv(pevtpriv);
-	return res;
+	return _rtw_init_evt_priv(pevtpriv);
 }
 
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
-- 
2.7.4


