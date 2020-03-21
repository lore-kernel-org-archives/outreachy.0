X-GM-THRID: 6806789560169660416
X-Received: by 2002:a05:6102:386:: with SMTP id m6mr10657716vsq.49.1584829523363;
        Sat, 21 Mar 2020 15:25:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:29c5:: with SMTP id p188ls59474vsp.10.gmail; Sat, 21 Mar
 2020 15:25:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vst/JzE1WyReMOnsI4AMFTqU87o+QuOE9PHSKEGYRpaTNzVhwWExC6ZdInHsiaYdY2FqLvO
X-Received: by 2002:a67:e46:: with SMTP id 67mr11001922vso.17.1584829521704;
        Sat, 21 Mar 2020 15:25:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829521; cv=none;
        d=google.com; s=arc-20160816;
        b=0r847BxNrxNe9DRjUgGYQyBiucYs5VFQuD5b3P8tN6gQ1QqxhtncwICDVkBbJdULrn
         ZHbwykehkncbx5s0YJBnpPbVU0LFg9Bd5i2UvWx4xZPHfLCnTnM7LjFQTvpUSlu9lDQL
         WVNvuVGjU+Pg2ufPx+BJmn8kpzv/12URfrbqd/g1zVpYoW2mnCikREkHaQjh96nG2zxq
         dwGDUxZvk7FHfjPhWI8/2l/zfyetBtvjk1cKGqp6wb4gllP9G3nnFaU7/OSIy1aAx+/c
         ygl13nw2np5+uTyfId39lYSZzbjSsyQE38ak0cge18Yf+6wKG/GMHyTcsGHqF8o5OSzq
         nYBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mAhmgr201F3GjjWTmMCpMYY5Zc1UTBtq2w4m7TVaIeU=;
        b=u6ngB7TfrxQVb7R54PIutAunmskaRiadHbB66ma8OnB6N4RjbxPeYg4JthOeGuv2Ms
         hB8dAnxImINJsdnTwsSDYCwX2sOP7cdrGg3wMGR9LSnl4ZKfMil6HNBVAmVgtVsab5wi
         34KyBt3GFpUjIHtXSjoZKCoIPxkWDMwvb3uSoud1ofRkxN/12HaZvGfd+FwXNhHWpGFx
         Kwhqk3xpvcUkScBdBobO+cNzHPOnwGYPfoec4bVgu8YUePZPAsIANBTOV887fihkF/pN
         GFOwMObKnVjBY+qutObaT+8wJV3t+ia9BsACpl1b0TceaEHuFPB3bX8NbaHZJr9Bjj7w
         8Zrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+2HJ7IE;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c9si514315vsq.2.2020.03.21.15.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:25:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+2HJ7IE;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id u68so5380454pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mAhmgr201F3GjjWTmMCpMYY5Zc1UTBtq2w4m7TVaIeU=;
        b=O+2HJ7IEtf1noDrpRDmSJCnPcn+fcsUAQCahss8+FtCDyzZy0Sz6nWT9ZDz5hvFxpC
         AWjGFmKcOcOcxMnRV2Y8eEJhUzcQ3MDQ2qePOGDndplF29nInBW8XdIw26zJGKchzMT+
         XUflKsB6rxWFFIAQ+D3jBHXqTQ0aOz3nSP8C6+jJi2P81inIhv9re1/eA5g3+8TxmCSN
         T41SMtzn3maq9Q1P3JZEjwGAXeH4BGltcns+9lhvetm0NpjnIwvdq763uc0HcT04+Kmd
         Xbl1TB+7dNGeWPRFqt90d6Z48lWY0jIHleuNBpjevZvEl0aF39hCx+dhyoSuqewEw/C2
         x4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mAhmgr201F3GjjWTmMCpMYY5Zc1UTBtq2w4m7TVaIeU=;
        b=ohtY91wreE5Txv7o/QEoH2N2oNijStF6rWiEs32ZJVb86AU4eSAfXwv5zrLvEBZs+w
         j3y9eBLUJ9aNhs4/aDV8LaXqrROGv7qDCvrVUQKsyOISlEK+OmGxHII7fp3i0FMrjwax
         nk8aMXitHSzKHONW3AZOqLTTfcFFiicK8n+z+Qv7CHw3Ig8XvMX3QNKHXVeTGJgvlXBP
         KANyaz0FkSqPLJ2hoL78bUKrWuHt4EpYFJtTl0uEDrwtyXeTxXL1si7oMj1QnDat8Ohf
         GISGo/mZBrm6nAHve8fUe6xDdsm1eLxBVMHxDfH6GsDHjOG3rdFl9dE7EsqRpfYjhsgK
         dCAg==
X-Gm-Message-State: ANhLgQ2j8sDEQ0j1XTlR05ZfK8uBHsLLd+3mpAl11dl/RYURvUy+Gp+4
	vN2Mt+K8WwR3ZqXBIOV+XJ8=
X-Received: by 2002:a63:7416:: with SMTP id p22mr13500492pgc.32.1584829520646;
        Sat, 21 Mar 2020 15:25:20 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id x11sm6998244pgq.48.2020.03.21.15.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:25:20 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 05/11] Staging: rtl8188eu: pwrseqcmd: Add space around operators
Date: Sun, 22 Mar 2020 03:55:13 +0530
Message-Id: <4847208f6bc4ef05b3f685e390dea6b2fc4b4464.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/pwrseqcmd.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff pwrseqcmd_old.o pwrseqcmd.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/pwrseqcmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index 249cbc375074..77edd7ad19a1 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -85,7 +85,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
 				else
-					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd)*1000);
+					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd) * 1000);
 				break;
 			case PWR_CMD_END:
 				/* When this command is parsed, end the process */
-- 
2.17.1


