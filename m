X-GM-THRID: 6746399399110246400
X-Received: by 2002:a9d:53c4:: with SMTP id i4mr11391954oth.151.1570768704045;
        Thu, 10 Oct 2019 21:38:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:66c3:: with SMTP id t3ls1199810otm.3.gmail; Thu, 10 Oct
 2019 21:38:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVLvYU1v/5TsYRybm3j/bVcacRACcPZLQXkTSNU7sqNqA4dJ/FLMGuc10tevM1nduD6tnV
X-Received: by 2002:a9d:6a59:: with SMTP id h25mr11120195otn.324.1570768703155;
        Thu, 10 Oct 2019 21:38:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768703; cv=none;
        d=google.com; s=arc-20160816;
        b=gn8ay2PJobja5dEGYa3oHT5IY/2HA+auEk9xhlrEybrntOE4q9g3mJ9Fe5WJx+XQ+v
         0nHv7mf3ks8eqdOKIZd3Ny8CVNhyCHHvmZQkwo+bu6ZXR9uMLPMs1KfFWi2d+5lrv00f
         oTa+NpeL4drKlIE43FBXpMK7a//ZaABEKGs+1D5yUdUqJY84J2t/X0HzPgPajoHiiC7I
         CwlCO1wrYtjrQiLHjVwb9GINIdn2v9NTOdTzERQu1gnL+e/W/QjrSQrr98iBnd8g3Caf
         NZ4zjiINvPqrImoFkSJZAFP5hTr7RJgLqRMxmeMqxqJaK5PYxlpijMwDRX1qZgy5Yo7V
         L1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=g2z++3eMtQoZ+4AOCCn7l/Askvoay4I3uZCI0H0hHcI=;
        b=iEkVv5r+hbjiwzEZaQw+7SNwX0wrcwoOjEUIe7Jkcrp5gqdH6+wl2kIGiT2jXCeUTF
         Ws6M2R/H/kCeosEZoHdkNVZWVEBhYj7X5wCdWlzvtGHkQVtfrzwK3QdINcdJRcO8gtOY
         v1LI2EVTKKz9EOEWZNttegIXz+5i8sbzMJdmW057qu5Eg3VlDHL99AvHkCLzUp/LyMIx
         hO5uGv68ICleKdPlBOerX+ijJbmZM4J39zsnP3DVXp53ZwjyTAlPY5JXxPBHM9wyQkci
         /PWc6Nr3Lv58YcvfUqgpmKe9J1TojtWnhOfz24l+6JpdIGf8opHs1O9wyyJTB5NTPp+a
         ujCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bpACmlEr;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id v3si77976oth.4.2019.10.10.21.38.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:38:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bpACmlEr;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id b1so5390501vsr.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g2z++3eMtQoZ+4AOCCn7l/Askvoay4I3uZCI0H0hHcI=;
        b=bpACmlEr/GHIyfPcm+yI8mKDDOM+/V8aVkcnBi0CwXTLDiN3DxpB5zFQwPPmIMGGDZ
         MbQgtKyRVVOHEz7opz9IMFcMXnxDH8WkxtiJPyopVaXxicuXoTSYZ2DaQT5Asym27TD7
         lGy5mt54GAjWF6/NhnD2IK/edvLwnnksD+0pex5v79hoePnEMUOifubaaEW7RJLcFDAY
         5/YDjsojkpmvsePWsWSw/dxUJokxuzEoUSSUQ9RnR9j6sw3f+pIrGHXCYr1hRyA6KcJZ
         FMA2d1kzUTJhDv8NdgX2QidEY1ujLv8CENjmoTIJGzqSxY57yVFo07hTdbE5JVix76Bv
         hS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=g2z++3eMtQoZ+4AOCCn7l/Askvoay4I3uZCI0H0hHcI=;
        b=i1S65rTlqRQThwwP3eubrfHocXViVIlGgnDE8dpjgooWCsRMZ1bD+9oy8Almwwr89W
         7tJ6yw0LAQQkNDZy5pXl1bnvz/wda+783MOqJqD3Z7sjSjGk/egqsJ1illoHEGLTMscI
         jz9Jei42EIC7eqY/aBqOHuIbWFlkALOLEFvJznIKcEqu5RNSfxB3pndSHtE0hqHs5dML
         +2RSEo+ZaFnTsolFfhLulCk8mx/Xi4PIgzMUFtuc0KSGtTnBN//SSpt8RwnccC7cQzjJ
         SgvC/JlkxKCdZMYIatvKhtEtp25UuK5pzR9hPJo/H1b0kdLkikKd+iKfhvufl+PbtO3I
         7tqw==
X-Gm-Message-State: APjAAAVpaRfs6zjPICJzTfDGQxqjbVqd5bNgnG6qQK857W4ySdrCwNQC
	dCJyggMkFpAEW96wN71meiCEIr3oySgKjQ==
X-Received: by 2002:a67:f4cf:: with SMTP id s15mr1707587vsn.58.1570768702731;
        Thu, 10 Oct 2019 21:38:22 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id d3sm2199593vsd.34.2019.10.10.21.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:38:22 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:38:20 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8723bs: Fix function call format
Message-ID: <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix function call format by following the coding style guidelines
for argument wrapping in function calls.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 08570e78d5e2..a809521da53d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_index = hdrlen + 8; /*  8 is for extiv */
 
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(
-				ctr_preload,
-				a4_exists,
-				qc_exists,
-				pframe,
-				pn_vector,
-				i+1,
-				frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-			);
+		construct_ctr_preload(ctr_preload,
+				      a4_exists,
+				      qc_exists,
+				      pframe,
+				      pn_vector,
+				      i+1,
+				      frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+
 
 			aes128k128d(key, ctr_preload, aes_out);
 			bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
-- 
2.20.1


