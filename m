X-GM-THRID: 6806824358191824896
X-Received: by 2002:adf:dd8f:: with SMTP id x15mr27489381wrl.201.1584921067193;
        Sun, 22 Mar 2020 16:51:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:24c:: with SMTP id 12ls37564wmj.1.experimental-gmail;
 Sun, 22 Mar 2020 16:51:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvd5ca7SRQuOdsLLH1JJVBHwqc6vK/QCJTuP+IRgDJzSg8/L15ilkyy0wJz2na2t2EsoX1O
X-Received: by 2002:a1c:5419:: with SMTP id i25mr20302438wmb.89.1584921065573;
        Sun, 22 Mar 2020 16:51:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584921065; cv=none;
        d=google.com; s=arc-20160816;
        b=A5su6qKOcJsdasOqUxoec/fQcBbCPxmu6M98AbiBKwthvWbFi9hbW/WIhjkrP36GGO
         sm5XP54VoQaPf+v6sW2Doi/FbdGepMaomzFmN9fVPJ+cuHV7VdzYDSIYIIiUV3UGr07L
         tYfKMv2/CAVKfggDsFn8TvtqieadU/VPvfikvYu6NNItduK0++9UBtIMQrjJMkGTnNHQ
         ItB5RPUwhZERo989ilJFOhdEKq/wzZ8UZq/z/3k+204R6Fw9J2cYlL+wbGAShkXep8sz
         b6l/Gkn7o3PWUrBngaD1EZ/CynUhALhZow0B6P/UHK4I86fLAknEtkqjTI13hdp4O2/p
         YoGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VFOXHR2vAexD9G4Xvi4Ur+/hYQshZUm7mxB5gPivt/Y=;
        b=00KSZ3edzCscmictelayG5oLs+RSQMmuOeOmZVA5caGRNsHsBXLl5q1wR1fag5GQ3B
         fra93IdrHdtcJ4M2jH1RSsmdGDpwmjr1Aicd2P/TL1ScYrmHwRRqGJDJNKvFjnNdpVQp
         /MRuQSpY+1cnv8Lm5KYn+gC+hVGBLjto51PQFj0Zy346Bm71Voy7PElcB+QZp41KD1ft
         bFnO+VrWW8NTwND25viVUgxxM1RRhqx3YwLvwtl2TfMBNQIsjoJi2aX27H3AvRnCIuYM
         VZ5dxWNYqkurS0yAlgQQoZglhqHq+coffLbNGfVGK9lwpS8InTeAV4d9sErGYUCDblBa
         k/vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQKESszA;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q205si615199wme.4.2020.03.22.16.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 16:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQKESszA;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id j17so8828187lfe.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 16:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VFOXHR2vAexD9G4Xvi4Ur+/hYQshZUm7mxB5gPivt/Y=;
        b=jQKESszAY+b81TmVxpLhXrBfnGng1iVz0300Ew/pY+AsAHvIBPcNgBLUFrfQuGHksK
         uvrx1ENSGW/2sl5Z9a3uAWURr3yjztJr48jXtxCk6nvD/epfxJJCDIVkfC5N89zP9Ten
         Mz3ibynk8ekLbVXIGbYU7IK63U6kgDxZpDCh25n2zCMmSml9pLE9Twy605j+0cRyNwtM
         t4BpQeHONus7uhNOSqDNNSy1j1vHUgW1KasB9e7AKstP56dmcpfXLGsERKtL7c2CbW60
         RVJzyyQNqIQZG5U2dnKiayaYIZsRAEt+J3uTyT9ZyviafKtsWFDlWWklTQzo41/9cDtx
         E5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VFOXHR2vAexD9G4Xvi4Ur+/hYQshZUm7mxB5gPivt/Y=;
        b=JzpUmYILmC03BKQ0uXgDCn94rIAEIV67E+v5V8vfYbUY6BBnQn/G5wr2dYx0Xnnl5B
         5sI2fDrlOJHLvbP+U0DMjRS5D/blR1V/uoAVL+SSFc+U0iAnlN8JonH10ZeAEXOSkJmT
         DDfRMHCzH9AYRNUDeVsWkwDDmE3H+Dd82S3FELTZ2vcB7dS8s1Gw4qBe/Ofio7PfUbMD
         aL0DImgVetTcjUrqjwNDE9KaqaVr/UWcn/moimUfJOCXZ8/A9pb1DVhC0w5yAS1AqrSS
         stKBuJGq/RDmYwClCqk3N66YC18DjzDBn0BS9eG9sQqT1PBPCBD16DKBeQpcKLJn6YWd
         LVbQ==
X-Gm-Message-State: ANhLgQ28CmJvwKrWcObp584IiXFpwYZEypN3GNVEGOzxJiLmZP2a0Gka
	l9KlcSs9yJVnqJIUi4EUT6vJLH3DnUo=
X-Received: by 2002:a19:c217:: with SMTP id l23mr11743811lfc.40.1584921065064;
        Sun, 22 Mar 2020 16:51:05 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.39])
        by smtp.gmail.com with ESMTPSA id k23sm7546626ljk.40.2020.03.22.16.51.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Mar 2020 16:51:04 -0700 (PDT)
Date: Mon, 23 Mar 2020 02:51:03 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: hp100: Remove unnecessary braces
Message-ID: <20200322235103.GA14205@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete unnecessary blank line.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 43607fb..32a9e29 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2792,8 +2792,7 @@ void hp100_RegisterDump(struct net_device *dev)
 			/* Display Register contents except data port */
 			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0)) 
 				printk("0x%.2x = 0x%.4x\n", Register, inw(ioaddr + Register));
-			
-		}
+			}
 	}
 	hp100_page(PERFORMANCE);
 }
-- 
2.7.4


