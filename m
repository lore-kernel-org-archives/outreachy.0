X-GM-THRID: 6664782574497300480
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr1387761otb.68.1551802961215;
        Tue, 05 Mar 2019 08:22:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a80d:: with SMTP id r13ls774548oie.0.gmail; Tue, 05 Mar
 2019 08:22:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYneLYuC0GfghW8yigP3Ftdwbujyh0C2m/gj9RZ4b6Uuuk3d7Qza0O582Wkomd0G3Kj50Xp
X-Received: by 2002:aca:f156:: with SMTP id p83mr14798081oih.18.1551802960269;
        Tue, 05 Mar 2019 08:22:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551802960; cv=none;
        d=google.com; s=arc-20160816;
        b=xix0LBU4NPNQJwJTlqBip76sS1gT5KwYACF4/eevRu9UOk2CZAC8CyiPNPvMzsVJKA
         J97J3C7DUZxpdMnh8tnBXwWjdGHg8x2QBHmDyLrmlp/L+dlwszbHXgYhp0AAtDmySFET
         9a5WpYYxu2FqDx35lx125jiOwU3W/gp2MxhgvUBTdqWXytlSvYdXpNrhAZaaQmge8pLa
         vVCaMikhi/sf8su/rN9s9o2xg8hJaj8ID5wQr1r298U6uX+rNY4zUo1RdI6Y/X0ZEoHm
         6v8CtjZ7p20mnirnB6oS4Znr3KQ+5gbcoE8F2kE85tEy9kfBZOSFxWMfoPzfFEHZCuJd
         tGQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hjnoCwCiA14tbJtJN7Wsx2ShSh1udRcNUAXC0PHYaio=;
        b=zz/BaE5XW8AVmYOhj7j1H+PlRxVXx/GROyZQKz5lf236/F6+dcwKn7loojTopLoqM2
         IPmgsiu9duvp58t+c5wPOEpSD6vfQoEl0TET1K3w1ZLxtPReJsGuEPENWnZHZjipS5qh
         vYl/SJK6aU/jmnAoJ+YDyK7DyWtO4IqsQpalCyXLnHJauZzFpeg/2LoZ0+jZdQISMEhA
         A/cL42O+TvpOU5etYBQl9I9HQ2zFO3Oy7D2EiCMvUc+4BDQghnlqzx9q69cFoOUu/dYw
         wCn6rfnzzDf85qWrF4jgkUGZOS4j6KhXxbj5hE4MDlGUn3EAMfOYGdCDxKr9c/fO54+z
         7hqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEB7VQR0;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 135si525456oia.1.2019.03.05.08.22.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:22:40 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEB7VQR0;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id u9so6080021pfn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hjnoCwCiA14tbJtJN7Wsx2ShSh1udRcNUAXC0PHYaio=;
        b=uEB7VQR0pzN9y9XZ9DP1xXnwEUiPVE8FeNMdEuy1jfoDxUmXnSrllyx7aOiGLS0Oui
         vwqt2IVdUmQtydAXddHRHOaIW4PgKK2dQeFQoKuiNHtU5j9swyozQ9Ff5knlhuCo302W
         95bJ/ELCJsSopUbUejJ3A2d7IItgc1YSk4PppDd9nOSnn/vT8GQFQhEnLTcRKsCN8HoJ
         YoJbBVWi/hhySDuiNynwKvkJhgofthidu2jnyeZbiRXZODiHoXIFebv4IErhupOrDQxU
         k9pSW8Oe8sLdVRd3ArbZoPSqTcUi633viyeG1MR18YIUWhYQuEWv/K1s6DtgDWA53XCy
         48mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hjnoCwCiA14tbJtJN7Wsx2ShSh1udRcNUAXC0PHYaio=;
        b=TviOAaB8FVwPOhajHHzKeQ8gM6K2b78yW8joQPV3HWqeWz1zkYA9HKzwEZgnn+VKa2
         DKWumjmfPEupetaqSBsnglvxfZYgUruHcSCpfxrB9NWd5uGubWud7V3ajLHUQUMPVnWq
         UKVol85M+yElbHtPtWiOH1gjoyn7CW8gBdmK/ELcOZgyktqxEFuR5Ifs66jPlfZWdKts
         nbkgdBJOoewQUA6mhEs2zu3Ocf8+rWx2gYQJPAVQJy8V038sXb7Ivi9wbAe80cPTnL3x
         Hyl79pWTcfyiFeT7bRfWBFo46un92DYzpVkGJ8tZQ68IpZ9ZriDutO4YCQqCRDWncjkO
         Y/tA==
X-Gm-Message-State: APjAAAUHAecgSiXZv9cf707Vy9ljaxL8u0X9mufnpXeVvKrIl0JAsQKa
	do0Fo8buVEh9t5iAqJwkTynZtZXKpSeSsQ==
X-Received: by 2002:a62:6453:: with SMTP id y80mr2574810pfb.203.1551802959597;
        Tue, 05 Mar 2019 08:22:39 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e88:a284:c1b4:4aa8:71c5:d127])
        by smtp.gmail.com with ESMTPSA id u67sm13183823pfu.51.2019.03.05.08.22.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 08:22:38 -0800 (PST)
Date: Tue, 5 Mar 2019 21:52:29 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/2] staging: fbtft: Avoid CamelCase.
Message-ID: <20190305162229.GA32171@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
CamelCase`.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  -- Make conversion from macro to inline function.

 drivers/staging/fbtft/fb_watterott.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 502d67f..90b7c07 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000700) >> 6) |\
-			   (((c) & 0x0018) >> 3))
+inline int rgb565_to_rgb332(u16 c)
+{
+	return ((c & 0xE000) >> 8)  | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);
+}
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
@@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565_to_rgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


