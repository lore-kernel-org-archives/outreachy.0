X-GM-THRID: 6667904381849960448
X-Received: by 2002:ac8:60d3:: with SMTP id i19mr11256789qtm.26.1552492469553;
        Wed, 13 Mar 2019 08:54:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls635740qvc.1.gmail; Wed, 13 Mar
 2019 08:54:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxdTsUjxHjQ8krWu2kVKcrZbcojRfgtVEiUNqGm+ko9OM2ellRn8c67sGXhCCtBOccmEMMu
X-Received: by 2002:a0c:80e1:: with SMTP id 88mr4734363qvb.21.1552492468964;
        Wed, 13 Mar 2019 08:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552492468; cv=none;
        d=google.com; s=arc-20160816;
        b=RZSQOCaaUEf32KA9BOCjd6Hjp2ttu1KO6oKHyY44+R0PHdT8Eu2G7RCdDCALwkLwsM
         UmNy5I+2rW0oDO4LMftWuqmVfRT+uFYNqtPAf4insBVkN4vtUG2PchFSvaASeIhbFKCF
         huLLtEJkkVGs1j/+QG6aOnIeHECmAzmzY9+VdByoxF1JW3+gZl4kMbOXZTXoqTpvvKwU
         1bDBBQrB65mw5sMP3/DWbfPvCB0+YsA+CkAwnKYfCknQeT+694ydfXg29CymfXwdDlMZ
         7/+g7xNp7hPelMSPSdyyZset6tfz601Ytot8Vws72/BniPJ708iBJVhGdONXUXFkWgZM
         GDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3BObiEMCHvx6Zaic0b2pqOZwLGl9diR0ljAqEk0h8yE=;
        b=mcO+9Fu5Fky3mpj0pqLgBlq7xB2gyD0TSpxEXGY43zJd5EcWHYKXFJgGrjEn6LaBm+
         hPUWAJW3X2cBbYgFMrkJ9HZj96MSXgCfTKH5oiO/Z9k0PG0OSNEnOSsrZs9Ro5oISlnP
         0oxs5kJiG0SjeMpqL3XS1wLlSJVYxBEOhj6Q0M3ndnapgmdb5Z6J8FotcON3gwzAaDFt
         NLguagXuPxvn13LsVweEvbJpjwtb+nsdddjvyq1mybMS4j0MpRiG3cQE82JpH+30jrsq
         goxt55PRH8G7/WgurHf+55LYMrbhwuGwck49dutCa9zJvoRI13Y4OO78r9ds+WRnLvXX
         G7eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsovu8Oz;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c6si125424qtp.4.2019.03.13.08.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsovu8Oz;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id c18so2160412otl.13
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 08:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3BObiEMCHvx6Zaic0b2pqOZwLGl9diR0ljAqEk0h8yE=;
        b=fsovu8Oz+OCzGpsQQN+PyQbmKStsXYubmabdr1fdYPcPqVApNgAGDHZrpvo09UbCWL
         FVtdcIaCz7k5WmF2aACJ5GU5xWkzT2pVISgWvmvhCZ0XTEH49PzxoNAhmxq5qiRUDTeC
         9QXALyjkht7WEwEurKmSwVI3PHnGkQ9ynguMKhnC+fTJuA6xYT1FGBZyUaIyAfq28wsw
         5j6H4997S5irOCqQfao87wnL/kuWMOggfwQ9WRQcTAmeGcwk4o9nNaJ0WLNnTjvKDa4Z
         GXrbrFiDWrPc0L81ob76jNMZjmGfind2E9Cjnt0XVY0GbXKcTmescvCtC7f58XjoE40b
         xBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3BObiEMCHvx6Zaic0b2pqOZwLGl9diR0ljAqEk0h8yE=;
        b=PyrLBRvu3+fp+oIoFGJh4Cr0limOzNfKr7PuzXMgenOlJFw7C2NQVsTYACzvTHiiAs
         zO5tuij+/Suff0n2Y8gGH70vqG6nT4gw3ZgJLwJ+woHkeedUXiJxZqdW4VsV2JpwcATP
         MJjP8qEa1H+f2NmaS8u/+cafEPIEc4l88pYLcJpJ/hfQY4FOLDSRSZ++OLyS7nCioimI
         FCyOgipF+Krs2flhRYQ9j4NWvwNtuKpHe5KsAVRcpAVNZ0LCdTZUHyGs52/F5KfYM/Fz
         v7aMfC2YCkH+tZAn9Yq/JZ2rRIWSOaTs6kCqqKpSILxbnoJ3+8Apbxv/BCm6Mlw7Jq0/
         0OGA==
X-Gm-Message-State: APjAAAVZBC8Vf3xAre6GBXhUbz3bTSz0E30mxAljGE8/vDZBVRjTiWDy
	7Jc2LjFDhBQSvljGfT+2MMs=
X-Received: by 2002:a9d:6d98:: with SMTP id x24mr28697933otp.318.1552492468204;
        Wed, 13 Mar 2019 08:54:28 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id v8sm4730563otq.4.2019.03.13.08.54.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 08:54:27 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl872bs: Remove local variables in functions
Date: Wed, 13 Mar 2019 10:54:25 -0500
Message-Id: <20190313155425.5548-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove declarations of local variables in functions rtw_init_cmd_priv
and rtw_init_evt_priv.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca3bbad..814a4b7677a9 100644
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
2.17.1


