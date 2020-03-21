X-GM-THRID: 6806472827203485696
X-Received: by 2002:a2e:908f:: with SMTP id l15mr6748885ljg.120.1584755449759;
        Fri, 20 Mar 2020 18:50:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls1294858lfg.9.gmail; Fri, 20
 Mar 2020 18:50:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt/1/BNON6d5QIplCcPBf/te5Sf4/+lWdN4T3uR3B7zaouhiCTv8LvqlsKeZOinyWEXaBr7
X-Received: by 2002:a05:6512:10c4:: with SMTP id k4mr6834808lfg.98.1584755448509;
        Fri, 20 Mar 2020 18:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584755448; cv=none;
        d=google.com; s=arc-20160816;
        b=cjy6Qt46L/yVuf6iae/919uYseZ9UOKaZHj+2nYmlTgTgyiEND92HPf2KWjMQHyzIT
         rYXVmSYg0SGaRjyFK3dzKOpBWfFo4pVa31ZpsILA/36Ffi1zkU2+UchSdXbVuhUuFzpj
         nY4G1O6UGiiONyVDVZAbI2I6dRrBHbh21ds8zZ975bAFyUg1AxQ8UtnMwXtFn5aABvrS
         LinQ2RTEvJFCrO2zxfouI2StqhB8/ttr7D04njNpVYeO8dz4RYVmmm9d4jEbnvrHiy89
         37eGv1/TYnsM4PDpPxL7HIJXcvVB9aDMJswRiuVKczOZu+Cj+2rNI1f16T9HjQw3kse/
         FZkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=g0bPDjSNybEFuzHJ/tWzn24HJ1174mpwdzyqf30tOGA=;
        b=pDHfGnJHytkpUzeW35lbcnxdYFeZo/EnLT4tK3Q6mH2JFjd96CKrUscFjAMcaO6MzF
         q++m2INYIqlD54tSGimhwhlJxvsDCmmVDAWhvEcgNRYtY9Q/zP5Eze+R0NtdH4A9Hwn4
         MoVTf2zum0CmG6K5PFTGMsH5fnPlQ0eINTSCVvgf+TBjc8wApCDEHs4tadMUUQ2n1ol2
         PAYR9/oooPoX8QQ+Jp7wiklJ6+04UD9vbjMR3QJ/+Gkvq5h033wKEiMEb4bYGhXhvnSM
         qXlBPmCty5k0SRJyY7nJloBorSqtZsaJKWeqAiqsjKjKmGbp/qT0h22M8u5mGsnn0s5f
         KJxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGlTJTDS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a21si544477lff.3.2020.03.20.18.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 18:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGlTJTDS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id y17so8474465ljk.12
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 18:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g0bPDjSNybEFuzHJ/tWzn24HJ1174mpwdzyqf30tOGA=;
        b=bGlTJTDSP2bQbHgp/l6oxIvFS5NVi8MzSA3Q1zfjGKn4uZPa9Q8XxtDOoRauA+ttwo
         3MgQmvgSo2G5zvnu3OQF2d2IqJJqfxvBU2TvTIgyTc447ZyTjjG4CDzJzKT1O+kvHc0F
         nekWqjCyhAAysjQymB93lX/1cjBxFbdDHoYOphsOrbyYudyzgp4foPOz/MElA8cupqMe
         5/Lpg817i5YShrBvZNWEMYbw6kFSQtfYYLu23G0TmO31GA8YTx/y5drY6F1bA/iu/QpK
         jNcEyHYkNiur/3/EussHO0KkueJBumrWSrH3DzcUz9hvw418+WV2yNAElHYBx8vTbP9O
         aKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g0bPDjSNybEFuzHJ/tWzn24HJ1174mpwdzyqf30tOGA=;
        b=H7aUj865G6P084eo9c9J6qF/UutkD3ojQqlhEGfzJX/R1CV73DMbLwNS1iUOtGuCyL
         wRRiGrI8PLFzVvPw951WrZKPUvSD3kE/3U9WnXaiE7poHHszDxllyw0pVkNXE5+8I6pn
         SN80ISIx8ARoBdPikQcN9S3WWn9ocAXLJrsFbKW3GD8xFlDlpqwBvrX7nwZZ93UDaH6X
         J/qrurszHkfxNzw0W1sj/40G/pcxf9DHy9jAVew34YBbpQUwGzT+TFDOLcErJ4qREqlW
         mX7U+L53U+lhFKq/Y5DoIMsJfZZg6Mp/j+2Ll1ekCPLvwsltunP7hy22bGpjey9f0D2/
         fSDQ==
X-Gm-Message-State: ANhLgQ0i8m7PwYCONKVW5fWtxOiVVWQvVzLKIxZsa344RurDTMS0nlTR
	mEsDv7gW/FMv6oR6uahaEQVuLUfRb9g=
X-Received: by 2002:a2e:91c6:: with SMTP id u6mr6831776ljg.207.1584755448304;
        Fri, 20 Mar 2020 18:50:48 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id 133sm4205029ljj.91.2020.03.20.18.50.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 18:50:47 -0700 (PDT)
Date: Sat, 21 Mar 2020 04:50:44 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: quoted string split across lines
Message-ID: <20200321015044.GA18620@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Quoted string merge to upper line

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 551cd52..6487b3a 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2931,8 +2931,7 @@ static struct pci_driver hp100_pci_driver = {
  */
 
 MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>, "
-              "Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
+MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>,Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
 MODULE_DESCRIPTION("HP CASCADE Architecture Driver for 100VG-AnyLan Network Adapters");
 
 /*
-- 
2.7.4


