X-GM-THRID: 6806841558557523968
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr26830554wro.386.1584923094173;
        Sun, 22 Mar 2020 17:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls1595720wmb.1.canary-gmail; Sun,
 22 Mar 2020 17:24:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqCWAchKgwCrmBGDGKPZ8nC19NVECFvBDwJmhuV22F3DsyV8IPZij5E25xuUXGt8nk4hqq
X-Received: by 2002:a1c:9ac2:: with SMTP id c185mr23624995wme.45.1584923093070;
        Sun, 22 Mar 2020 17:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584923093; cv=none;
        d=google.com; s=arc-20160816;
        b=DnVIwyD1tys0ZrnJDmR+U286YRmyRM9T0KMlOYpJbHe+RojM1uQmpFHDPzeOXi6PEO
         wV/38xeeaeH2jgSbCzYxCJVYUbXdzZbqRujyq/KE+bFwLnSJQIV5+lYYI+mAYmILhJ3l
         wJ9fFGhIfqlfPL0lINu3zH8VzPQraoLTaDMflE6FAkW4pr83h04eSydQYXDzfTD4CgEu
         RA2Fqw5KWi/S1x+wrJaNBQGjn7IJ3LA6vlja/hhTJ6bgOxIcAFM+es9UIPlvbZOb2x+X
         VnCCYFUS3ArLlm1rkolNBILFnDZyaCo1E+EUdkxAoPmm+GHTltlIwjbIeqR8rHtznQL3
         F3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9k3bZ9Ed/Q7SahFa3gwMYEqPlfkfbYS9Y2mUpZ5Qqpc=;
        b=QezrgluxillkB4H8/goYVLogH2j+w4rB2QtWyLkKrYQBFU7soSg/banS073/AHLw3F
         ZelptBvcCuMnSVgZG9INOD5FOEzzIgsREK6MoqLng66PUyttS1IRAulKwjTf88+gH2Q/
         vQERqhApen9D1x5tPiruecdJbAcJNTrD3A4BhmA0aLCfMx+SA0Hi8stfehj9/GRPqrol
         Fkg8LcwE0vLfRfJirINJAm2cW3vSw6ONx2wANv95SrnKbUC7psu0zyc/0UivzQxXrUI2
         uJ6QzzicYRXDGL421aVFEmD5GRhe1WnDdGvCP0/hGawFjr2q+18YK1JocHOeXE9aLo6L
         aV4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USYCbzKk;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id g78si34907wmg.0.2020.03.22.17.24.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:24:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USYCbzKk;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id v4so5175466lfo.12
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 17:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9k3bZ9Ed/Q7SahFa3gwMYEqPlfkfbYS9Y2mUpZ5Qqpc=;
        b=USYCbzKkHmqPBgwyyHXWX/i7HUzsYGrugl1lEpHLpSHqJDp3uzc991dB/t7vauOrxx
         3Dj8Z1gnu8UFIDhYNElhliL/siv1jV9Ah47+NNCCd+cmZezzILVFz1bra/AzXrUeg14L
         B6U4zOmMqCvLH4T3ZCONo0yP5ssXtEm8LR2EB2maSAVfMAv2xf4gO+nue4+c3VmjAsyg
         UTinRFtpyDk3K2GgbYmmXhG4YJ0cFBFGFATxU+JsgWi0um9QCk53veQUoBF0+lQYBUJw
         NJtm9keJpr7Vyt5y2YeS6pmFpykgshcEdhaoqg8OOEcOtcf81zQJqxsDFRmQK3D7Q6Jt
         TfAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9k3bZ9Ed/Q7SahFa3gwMYEqPlfkfbYS9Y2mUpZ5Qqpc=;
        b=Nbfu+uWzxxBYtQZQtUVcQkgRgzVgN+Qfq1Rv9JFOzPobUNE4BCUhRf+sbKsxXhSeUl
         Ya8GmUVYC6qRbhP7ANM317sm8i3M56pKs6YxVK0MHuBo4Ast5SnldSBDbaACmwfmds0W
         639VwUW9NSUwTpCmQNAzhlWbao6xqTvZEXJHnq3Mm1a7z5UpuHTcZa8Nj6SMwbsHoBoa
         6E5cOPF579q0TM7neNfQSITu0wnsOP6HVCgMxhMtYiy9NNSyHkB77IEchpzd8Tp/kSQ1
         CiDBmaS7htDJJ9vhYYwT1Ql6thB0Pl0X6Cbj0hsTeviI24kOSXkr6Ca2KxoveVQG61zR
         qGrw==
X-Gm-Message-State: ANhLgQ1wk36z6PhsdPXQ6IR9YGYu1+EchWxC9XL7QvdTiWxXKrLWDx4+
	ga3nopsxNns7ipfN2+rjMDdGs2QdVmI=
X-Received: by 2002:ac2:5de1:: with SMTP id z1mr11256212lfq.95.1584923092719;
        Sun, 22 Mar 2020 17:24:52 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.39])
        by smtp.gmail.com with ESMTPSA id r21sm3171676lfe.85.2020.03.22.17.24.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Mar 2020 17:24:52 -0700 (PDT)
Date: Mon, 23 Mar 2020 03:24:50 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: hp100: line over 80 characters
Message-ID: <20200323002450.GA15867@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add a spaces character before that for correct syntax.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 32a9e29..280b5a0 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -550,7 +550,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			local_mode = 3;
 		} else if (chip == HP100_CHIPID_LASSEN &&
 			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
-			   (HP100_BM_WRITE | HP100_BM_READ)) {
+			    (HP100_BM_WRITE | HP100_BM_READ)) {
 			/* Conversion to new PCI API :
 			 * I don't have the doc, but I assume that the card
 			 * can map the full 32bit address space.
-- 
2.7.4


