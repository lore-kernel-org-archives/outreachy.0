X-GM-THRID: 6671224625234444288
X-Received: by 2002:a63:29c8:: with SMTP id p191mr1081284pgp.197.1553265533373;
        Fri, 22 Mar 2019 07:38:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls3553571pga.1.gmail; Fri, 22 Mar
 2019 07:38:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUlJjxk0WJ1p1CL4uJFwZgOUJ9oIzgREueVFkr5IqVthErkfTrnggVyXATJ+29lm+E4GHG
X-Received: by 2002:aa7:9219:: with SMTP id 25mr9795376pfo.205.1553265532681;
        Fri, 22 Mar 2019 07:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265532; cv=none;
        d=google.com; s=arc-20160816;
        b=inrZlUPrWKSzHBNGq0i3R+PIQiniNE7ikFxZXsm47Na8nxGgmJUrcRMR0bi2dpsMH2
         skBuyGFLAC55G4df9Enr8/ikYefvJVL8UbxU6ZGWKC8Iy5pp2ED7vVrjf2kFNyYY3QOq
         dkPwdOVsrlqWZgMLDYY0zL9xJByIOwA4Lzlxl/QAJcSpFLgMBZcvDem7qW9YkuyteTYT
         CmvTgAd37O7Achg2chpgTPnL2kdxs35KoNA1G6HKhe3xam19sv7velTtUbvwUHiT7u98
         6YPDG8xSzhxyYO6M5AINpIkEGUzCmSVlMjNJrvmEFCp1fe+lDIn46RQ0LLRk26MM3dLe
         Tnmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=haeeLvJ+8mFPaelSlxMwtb0Jlv5hYqPFx4MDRGPDa/I=;
        b=P5ZnWDxFMdelBCf0ZTHbyeg5FC1AayLxnkl9arEI4Flp5aR7bM7WBf7/ykn6X7J7gf
         GJsMKxdZW7Y5fVjgzFIiWd1fkjSSBTVkp3XEj3TEbf3+jIyRHQF+BG3CtNnHQFQtmx5f
         wxr4/elkJhkT9MlaZSJ/3HOD1zRbUPO9a8i4UsYbC55yK3Y+K+J09donwdMFqyGoyac2
         ZaHLlZhB04PNsOgZizouqHskzmUIruLLK8Lp1eCijWUxc+nKXLYji6zowcw8/w5J3Hos
         hhrJJgrcqD4fofys4DMwMoi2dpK7+DxjB7NFWqjFzDcCKUALRiOBDS5ydjcc0FE6w7/d
         VWOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=jnKZ7bSx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic307-21.consmr.mail.sg3.yahoo.com (sonic307-21.consmr.mail.sg3.yahoo.com. [106.10.241.38])
        by gmr-mx.google.com with ESMTPS id c6si475524pgm.2.2019.03.22.07.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) client-ip=106.10.241.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=jnKZ7bSx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265530; bh=haeeLvJ+8mFPaelSlxMwtb0Jlv5hYqPFx4MDRGPDa/I=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=jnKZ7bSxXj/XX2uHus9HfyD8d66eKyJ0q9snvtHVyxDVVOgVxKpgOYVjTBVC8Io+R3tSljMXWBGmpAvSleQ0WZySQi89sh+2O7nLWr58GOeK+AvIpd6uLqCLkDvFaNQc0WRQscqJ8kcIH5xleRKFuZdr+TKyewJVu3AwEIZxD0993gcPfG47youzsvpmU2CpvSjbNbayz6xOIschlr/360Me58xh9gzRNCVmF5Q/ATSiJJ2G4a8ghVuv1tZ/N5ah+byBC6NF4KgMPUsPfkYjAamkE3freU9XWnJf+HZttS59vwh5yz3AbaeoJgf+W+1taDrfNnA5Ngc7kzS7PTP8xA==
X-YMail-OSG: TZzpJKEVM1nX62vbD1ioxzz2ft.0QvWtmEs.ESyzUHG9YkD6BW11D7YA1Ahry9F
 uronwIYGVMGIFmvInKC1FzNX6Ypad.LS7kKYwaU0.Y6rzybldLGylHwi5oJZdj4pHF9zxFiln9BK
 PIO_uaG55t2nDjaLKQG1p5IgEXA3EKsSoDKwn_9Z9Mw30fRF5btHaCZRZX64xNlcj3zF_J5MssGf
 6PsSHsHH18rOMjppli9qK15L7RfmuLNyVSGQj.EVOjXDnQ4tHOl3hFr4iCv0rtZ4axeswMA_wtMn
 wG.SKqKPGtphanwdb8Sp1e6ZHyFvMHo5.tpsUzcDczySvBsVBfzTE29tmJsQXeWjEJLfspPbQWv0
 UuflfgLG0LuLUt7xGt4FHEMZRbiEtEmb5.uB6vvfEXdIafKs9K0u.SuXdW2kgacHCilg9zt0GJ9t
 T3X.SUefXubHAaLvTjlGP5__314boMfv7gR32HAymHqS0eauzTQJ8dKk_sEhopXxWiaatzKAze7s
 HEB24PUw84_Gwzpv8FL6sUoakvWgFreox8mXjV8dURBV84biGu9Vg7rmed3xRj..8sAntpv2ldLD
 c9PY0DZoQHVTbekGwOLhdFSNKkuS.F_JOemdMR5HE50n3KpGMY1csABIc2HkGkaPeMbyuIRUfT96
 RooOS0Wq2zlL_D_KiR2L6xyvoumihX_skCm6N_wzu_kBtm7ZdbtReQZ__IobzBsY_Ei.Owa5hcWf
 oJqMsGRICpM18tJ4TyRfJqA5IpxlYhpYypNTXN8vscpjb_LC6exwRzC.APQCg58Tv1apzsViy8dd
 IeSTNs6rq4KIKSaQ.F4DO4Owd13lh18e2OHILcVQRLh3CYlW3cIXC3XvxoNcjS78IkTrZRoYigeB
 SFPMLiJVwOq7bKkIbPQIdvxGgnSlTmme.b6PJxwPk6_8QMIbC.L6CuYnnDLOKTbVTR6vaOY_Fcod
 XYztKN.F6IA5gC5e.1AJTcCrGL_hwzNvU2t.H_2lUE.zLp5YlkmTjVSFWgHxYzxJa1guE3kLP8J3
 f6TLBfztVDt21XeeNMlQMKuT3i8eCEy8n.dHTsCKcngjPTkA7gqz9AmQNbsCE6X.hJaD3FdG4AAj
 yc5C9AsqrRBP9P0poQG7DX0uWmASJTuu4WeBbMA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:50 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:46 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 5/5] staging: rtl8723bs: core: Remove return variable in rtw_io.c
Date: Fri, 22 Mar 2019 20:08:27 +0530
Message-Id: <20190322143827.24480-6-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary local return variable in rtw_io.c. Issue found with
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Remove trailing whitespace.

 drivers/staging/rtl8723bs/core/rtw_io.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
index d341069097e2..985eaa49ad3c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_io.c
+++ b/drivers/staging/rtl8723bs/core/rtw_io.c
@@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
 
 	_read8 = pintfhdl->io_ops._read8;
 
-	r_val = _read8(pintfhdl, addr);
-	return r_val;
+	return _read8(pintfhdl, addr);
 }
 
 u16 _rtw_read16(struct adapter *adapter, u32 addr)
-- 
2.19.1


