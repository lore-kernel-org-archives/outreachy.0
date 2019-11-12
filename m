X-GM-THRID: 6758464167600979968
X-Received: by 2002:a05:6214:14ed:: with SMTP id k13mr7312059qvw.236.1573577731093;
        Tue, 12 Nov 2019 08:55:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:bec4:: with SMTP id o187ls1077513qkf.12.gmail; Tue, 12
 Nov 2019 08:55:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqzy0FmBhS37f4cTGRg+i8VL5v2gZ1XQRXgvgJM/e3bImInv/4EbbySYBgcKQM9fwAAHIyBI
X-Received: by 2002:a37:ba44:: with SMTP id k65mr16796340qkf.169.1573577729952;
        Tue, 12 Nov 2019 08:55:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577729; cv=none;
        d=google.com; s=arc-20160816;
        b=j6Dpc8Ypz5XxFjYxL2gih0R0KsMBx94eVfdJsAtzhGe81D3GCnrzDnYdwniX0JpIzx
         ZiU3BHMkO73RNTSfROsBcFvnFpaDyygIzw/bDquxDSI7oGPzfaPHtBlL744HVpqKNrqC
         1vHb6Ov1U/JNeOKcdP5cgquM3Yvsaic2eFJBCnxvUuDOAsM9zBXM1ZYVPBOL1nOJfzoF
         JSep2nwwRAK/rMg9W88DfE0vIESU/G5N0YAL52wM+SPZk8XHAkRlfLDWbIfRAbsa50Tl
         N1GMoe5/YAKtC2SPltRWWG8UIOOrt9b+QXWwYOw1+X9UdW/1ADofquM/oM7LcNwBsIzS
         cUkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=Smkk3sdlb1N8JaITQjXzXQ225KF3N4EyYwW87g4iCSB7+AfUujzScX4tf5IC0SkYmd
         ncFW112KfqKAG3DFPS/pVY0Bfw4437hDNdDvGlQ2kmdTrfKmxVyOR43NeneHKHNwk/ls
         hipXp8PVK8PCQ/avJMZLaT7WWe2WENNUsiIcIzyjLmRcA1k3WLIgMeFLuBHJ8yrOwVhI
         8FBFWsvT98JWX/ojUR1aDtYZv9z66DSpGGxw/Sa0sJuccYvrGZGkqX37inxajkbY01Fu
         XlTbppXm3pyA3kn+DeYIiuDgkmdFRuHAov1ypYWmYNCBRizQYdGDJPvOYKri815KVHbf
         /wcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lMuvqXuC;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id z194si1146194qka.5.2019.11.12.08.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:55:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lMuvqXuC;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id e2so15063402qkn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=lMuvqXuCUyxt7K6tw9iOUffeRkz8nL6/nayHdtv/eE/m5Yvq0Mp4Bu4wUl8ev822K2
         5ufbDyuNNAROGVvkDCJqzwz13Xv3qFlQahfuRzUZy23A941vJzNeqTun+9xBVx679mGp
         k/oIKvH7b02vXAlDy+l7Apd29jJQ40PjtgN5YVYovPovRgYOD2xF+8WIOGxxBv5Ggwja
         NL2zK6/j+8yzelhwsoxah7QpAmL1SIWHrPfitW//1jwjKw/KNcYuozjMTmJHXGrKK7RD
         ndS997Xal8ryO2bJj39mwK2UTvSINOFki/KZa1/zr255ochOuFcOAHLDhDlymSvo5SCD
         uMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=MaRVmNqZ6/0baj2qO2p6z8Uo23Jhsb43BS8F9VVk28i4kVMYdP/w8cbbSnSyQcfU4t
         B9F2m2iEs4FVARXmz7asSgBBiSUDg5X7djn3OGf+RFO3lVlsjE+VwT9JvlZSrTIduMuI
         GCA0g//Yct8SvasJKpQgzGWf28+r9q+EUCQVFsouocsYpHLVidktLXzzznCH2n1x6CYf
         xXfxh9RYgPnieb5MLH5T1axnollHpZtApVyqoF3h7OF842bV2craMTmXKyGqIYcf/hZ2
         8QsWQ3KwvbkBP5SndxqhXdgUK3hx69UPdKgQ3BgCnDkjRgxEEDGMHIQwbXr0sILwno6q
         OFaQ==
X-Gm-Message-State: APjAAAXC0dicIhI1CE6Dx/xzwJ88LMqkSVn8RiLmOrZ9RJcTazfv/q7v
	IQVNrWdoWiczigbTWxlvGvg=
X-Received: by 2002:a37:582:: with SMTP id 124mr16678884qkf.396.1573577729731;
        Tue, 12 Nov 2019 08:55:29 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id n56sm11283172qtb.73.2019.11.12.08.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:55:29 -0800 (PST)
Date: Tue, 12 Nov 2019 11:55:27 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 7/9] staging: rtl8723bs: Fix incorrect type in argument
 warnings
Message-ID: <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

Fix incorrect type in declarations to solve the 'incorrect
type in argument 3' warnings in the rtw_get_ie function calls.
Issue found by Sparse.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index db6528a01229..bb63295e8d4e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
 {
 	struct iw_event iwe;
 	u16 cap;
-	u32 ht_ielen = 0;
+	sint ht_ielen = 0;
 	char *custom = NULL;
 	char *p;
 	u16 max_rate = 0, rate, ht_cap =false, vht_cap = false;
@@ -760,7 +760,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u32 ht_ielen = 0;
+	sint ht_ielen = 0;
 	char *p;
 	u8 ht_cap =false, vht_cap =false;
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-- 
2.20.1


