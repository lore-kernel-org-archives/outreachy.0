X-GM-THRID: 6745991976602042368
X-Received: by 2002:a17:90a:9dc5:: with SMTP id x5mr8088173pjv.85.1570673813037;
        Wed, 09 Oct 2019 19:16:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls814781plr.0.gmail; Wed, 09
 Oct 2019 19:16:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx756P7Zr1XYavWunFqlie/ywHALfu+1YgWanZcIcztpuf0bWo3PM3kMns1BO0G2i5Nu/KZ
X-Received: by 2002:a17:902:8a96:: with SMTP id p22mr6194876plo.272.1570673812381;
        Wed, 09 Oct 2019 19:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570673812; cv=none;
        d=google.com; s=arc-20160816;
        b=x6UQ9YH/T/dhYesg7urHnyJuqTKpuJzg4AWld35L5DDhFYtxaIrKDGjUDYzL73aC/Q
         Lf8+YR6/R3gFeuYY5wcbwF69LKNXELDCLxy+jGl/SnGgUBiVW/BvBL9jLS1xYnbaGysD
         4nwshJ92MsrE8/9j9lJhAGlBaiOHLbE3UWHbsOZLp4BuparjawuZ6cIMtI6olg2k5cWJ
         x1q4iQMV/fBDhucCnkaNIM556lWPuaLr9AbDKSBpQ4oGhI1acMYsOuPSR/nZ0xVpy3V7
         l3URzMae3+qS21IPDgK3Y5YW+EuLRSbCpURBhYDnUZd7GcpKp8wRRZ2xhryxIPVTG1P2
         vFKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=HJQXC8/FYOpujIEzA2ScimWdeFLUjfxtBabw+6s0fss=;
        b=Xpvp7DPz63v5gJUaa3FYLRcWdVWdAQ9kdliMYZPSIfCpW+lBM36oCWgvs31fyi0Ncf
         TBXeP8Ipjpw8fIcOs7kjxk72WWn1aiXe9Vn5dOcERdFKmxkUsLmyMbERFPRJV3LgAIVA
         1pPFFQSuMZdaAx32ld90+Fpx964JjmupUs2zjkQr7a3dWhve1H4LtyaWya/gu3nTSCDb
         SeHx1wRJOSyI+NPlMnx8PmRfhFUO9kNLU9sZBeQFw58bPvRGxsciEmZDbHGKBEYwF+/U
         XsQlJsB+Vp1+8JgU5aqSGbluwD6Ap+dOLSG7gqmLRxtH3gM4a46U1WlnGQM70rIaXEjP
         bbaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gFszy8F4;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id e6si156726pjp.2.2019.10.09.19.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 19:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gFszy8F4;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id v10so2867211vsc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 19:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HJQXC8/FYOpujIEzA2ScimWdeFLUjfxtBabw+6s0fss=;
        b=gFszy8F45HX9brQ/h4RE74R2ObT/g7eqVR1dOrxcudYpEGrRIaeV3rpNwvgDDuV3Fb
         DkEy+sHdG2zFTJCLYQVhx5SchbGihtk++aw/3NT0ooauXtcOBxzNP9vYbvYcA5dXZcP9
         jB9CChDWckuhWNC+RvxZ1kmBYgD9RNwJ5BHmpGLqYm5U4OqkqfUagDatniY+Gsq4J/WK
         TiONwaSsVWZVsd/bEy/O9W70TLY1H/XKNdSZOgxk027AnR3DjlgjPyluR58rZCMmBY/F
         x3lu+Hf8CgH11sZru7YTM9jnkCwLHjXzMvYcT4JcMkElDMmXz21qLHwyB0Vkg7Lhz+2k
         1RKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=HJQXC8/FYOpujIEzA2ScimWdeFLUjfxtBabw+6s0fss=;
        b=dcu+GFe7p8yI2p3AoSJ63AwSmXxBtXNqut2lhoqbzMKzAx9oAVI/pJ4LpXIEew24ds
         3sUYZUYRdY5x+z8fPO8gujoIbwEOCHs0w5syJu5kpPWtyRS4lmyBQVgbtu1ywfCxVMPJ
         aEFYDgVBeoXhhBD14yrmilgre9giStdqbc9JC71t8A/XVgYwitsgFp0PubXnKG5npdG2
         cek9+MfHc+AOKwPRL+surtkilniCJkwWdXdO5FcvMditOej6n7bUNtKp9bheD78ciWuW
         pBgsLxyGy5Dn0a3isgKzm5Gc8Sf3FL8i+QCp/1vSnDsW4bXENBcp/blgouvC/b8yTN80
         SwAg==
X-Gm-Message-State: APjAAAWMcBDPBCl/BmNTmml0fNbR13fMbVwnhn36jYpR6/EoQqNx5dgy
	Zzefj9NDboW8v5VX0xbolyOFElO4crUg/g==
X-Received: by 2002:a67:8715:: with SMTP id j21mr3793307vsd.6.1570673812125;
        Wed, 09 Oct 2019 19:16:52 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id 1sm1658816vss.33.2019.10.09.19.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 19:16:52 -0700 (PDT)
Date: Wed, 9 Oct 2019 21:16:49 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8723bs: Fix style in definitions
Message-ID: <fc488562c0ddf3fa8a59e86be9b33506496ccd0c.1570672544.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570672544.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570672544.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix the style in definitions where commented code was previously
removed for an improved code readability.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 4c27b3a53307..76fc0d6620fb 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -738,10 +738,9 @@ void InitInterrupt8723BSdio(struct adapter *adapter)
 	struct hal_com_data *haldata;
 
 	haldata = GET_HAL_DATA(adapter);
-	haldata->sdio_himr = (u32)(		\
-								SDIO_HIMR_RX_REQUEST_MSK			|
-								SDIO_HIMR_AVAL_MSK					|
-								0);
+	haldata->sdio_himr = (u32)(SDIO_HIMR_RX_REQUEST_MSK	|
+				   SDIO_HIMR_AVAL_MSK		|
+				   0);
 }
 
 /*  */
@@ -756,8 +755,7 @@ void InitSysInterrupt8723BSdio(struct adapter *adapter)
 
 	haldata = GET_HAL_DATA(adapter);
 
-	haldata->SysIntrMask = (		\
-							0);
+	haldata->SysIntrMask = (0);
 }
 
 /*  */
-- 
2.20.1


