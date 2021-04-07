X-GM-THRID: 6948342597010063360
X-Received: by 2002:a17:906:151a:: with SMTP id b26mr2659068ejd.492.1617787852335;
        Wed, 07 Apr 2021 02:30:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:e211:: with SMTP id gf17ls844752ejb.8.gmail; Wed, 07
 Apr 2021 02:30:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQfhoQ6Jw5oghc5FyedPFhSt/zNqAusghVAlMZUCAdVeTo7GS3Zx8xGhg2dnjD2qRyeNDf
X-Received: by 2002:a17:906:7150:: with SMTP id z16mr2582473ejj.103.1617787850925;
        Wed, 07 Apr 2021 02:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617787850; cv=none;
        d=google.com; s=arc-20160816;
        b=jjsSa/zRLcgrZrXXG0nkXuF8UrEVBpH/fN91vJsEPGRod8E3r+JUxrmavIKrAD7Kf+
         qn3Vq61mc4+r32TKy4ypFWKUFeTi1j7aZ+cEfBGyLj8EB1eWj7ZaVqw/7PZUim3e3FlV
         c2a8tdjBRg6056rvepxHCH6Od8CiAU52LUzMNFOTpsx7pbIXQUM0jWnht6NNQFDvgRGm
         eI9pkyk0mE2lKeUK0QpK0JiFZbKs5f26pedgno4oeJAoF90ADAiAyEpSLezMolYuKUEP
         e5wgx1h6kTk0t1asQ169Ly2B8ACkl7JW/aHosvpFuvK5vTB+cM5I6q8nJvq8oCGLNES3
         etQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=M+6GqVIlsluT7FdXsJJtXy1o3ui55E+ovW1gQ+7xpPg=;
        b=TLHumUevbXp/383xYx7K7NKm5o2MiTCpV7A/+gfOfH2zpT2pxljMiap27HSXM7A0Bn
         MvZHmRlugwEYYc/XbtvCN7m8Rf89j7cnSGUAZznIjO/FUto69zsgkui/5uYCMX+30f6R
         bnxg/gadHDAFIJ7Fz499YwBmB+7WSzBbz3tC3sxgAHwVHZruGmzjgdJ64mGex4DWr3wV
         p1pAXyF02Ns/HTHLuHi5W1Hb4cJ9ZvIGE349saHGGHE6MQJ995jBvVy/zlQd6lB44FzD
         CjADnwJKsAkqpYp4fv+Z8CPZ7J+KTR53b9pJNL69GjlPODiwBe0A62i9jD1y74USMvK6
         dF5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNHDkWuL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id h11si521702edz.2.2021.04.07.02.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNHDkWuL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x630.google.com with SMTP id hq27so26476435ejc.9
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 02:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=M+6GqVIlsluT7FdXsJJtXy1o3ui55E+ovW1gQ+7xpPg=;
        b=nNHDkWuLX/g4T/aj4MaRROG2kPyKXlNHUwQt84bH3xItx7AxDuTmIv4w+f2xmUKMBX
         zFtve5MOj9P8EvjMKt9gJsEhsnSzOPlfP6RX2dKfbsw1Fui+4J10fjo6Kz2stsucJ8tb
         FsFIA0pI66uvtx0ZTTnv060kr+nGzWYCc+H8A1VRLvAsR0GSfb5mujFyEHrAFnbaWyw9
         GSeMaFsQsZHE1ELJJ7cGuJSJk756gN9WQFxAonq9DJ80ZoIncCk9dm94aPv0ExpCC5Ob
         cJqx9Ah/iPXzeS4/bPfdoScxHBZbYrdncz9gx2ruUo3/ra0PW+f3cLd/PhRMX1sJfmKS
         xQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M+6GqVIlsluT7FdXsJJtXy1o3ui55E+ovW1gQ+7xpPg=;
        b=hW4Ot920baocZdZL69on+3YwhctVZYwGcxzOGi8jfZiDAlnRueBimMfEk0j0r4VaOl
         8doX+/5Q3bnvKMCOXhjC1oQM9Lfaiz/NFajgS7ox8Ml3uFSBYjRZs7VBDa2zuo4qthSD
         imZAMsE1xTyxGgjyF4f1dbHcU8aO+ZuaxNGTmcMdO/DlkRJIPXYRHYheYXJDALzCBGMd
         nFt+98gVe6nFSzFZwlgNJumcQ4Q/DNGx/wlPegfOXfS8O+P/UEeSapxpGn7FPxTJrBS5
         ikwdgsKTEZaJLaXNkW2adirSJe3rW1oqiGem17vSx1BGhEzcl9qDjihoprliVBAvoAm3
         pWOw==
X-Gm-Message-State: AOAM533GKp29mxaWjqeARiFE3zLpfVF5VYKIhaEcVgRln0mDc/M8uB3T
	GTVtQxvzx+Vrgl4cXg8dCQI=
X-Received: by 2002:a17:906:4a5a:: with SMTP id a26mr2736461ejv.8.1617787850692;
        Wed, 07 Apr 2021 02:30:50 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id lm24sm12287231ejb.53.2021.04.07.02.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 02:30:50 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove camelcase
Date: Wed, 07 Apr 2021 11:30:48 +0200
Message-ID: <2654358.BPhQiNMsfF@localhost.localdomain>
In-Reply-To: <20210407091752.27350-1-fmdefrancesco@gmail.com>
References: <20210407091752.27350-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 7, 2021 11:17:52 AM CEST Fabio M. De Francesco wrote:
> Remove camelcase. Issue detected by checkpatch.pl. The symbols aren't
> used in other files, so this change doesn't break the driver's code.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> This is a necessary v2 patch because v1 cannot anymore apply to the current staging/testing tree
> 
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
> index b9aca99478db..616d20106392 100644
> --- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
> +++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
> @@ -112,7 +112,7 @@
>  #define REG_RSVD3_8723B					0x0168
>  #define REG_C2HEVT_MSG_NORMAL_8723B	0x01A0
>  #define REG_C2HEVT_CMD_SEQ_88XX		0x01A1
> -#define REG_C2hEVT_CMD_CONTENT_88XX	0x01A2
> +#define REG_C2HEVT_CMD_CONTENT_88XX	0x01A2
>  #define REG_C2HEVT_CMD_LEN_88XX		0x01AE
>  #define REG_C2HEVT_CLEAR_8723B			0x01AF
>  #define REG_MCUTST_1_8723B				0x01C0
> @@ -429,13 +429,13 @@
>  #define	IMR_RXFOVW_8723B		BIT8	/*  Receive FIFO Overflow */
>  
>  /* 2 ACMHWCTRL 0x05C0 */
> -#define	AcmHw_HwEn_8723B		BIT(0)
> -#define	AcmHw_VoqEn_8723B		BIT(1)
> -#define	AcmHw_ViqEn_8723B		BIT(2)
> -#define	AcmHw_BeqEn_8723B		BIT(3)
> -#define	AcmHw_VoqStatus_8723B		BIT(5)
> -#define	AcmHw_ViqStatus_8723B		BIT(6)
> -#define	AcmHw_BeqStatus_8723B		BIT(7)
> +#define	ACMHW_HWEN_8723B		BIT(0)
> +#define	ACMHW_VOQEN_8723B		BIT(1)
> +#define	ACMHW_VIQEN_8723B		BIT(2)
> +#define	ACMHW_BEQEN_8723B		BIT(3)
> +#define	ACMHW_VOQSTATUS_8723B		BIT(5)
> +#define	ACMHW_VIQSTATUS_8723B		BIT(6)
> +#define	ACMHW_BEQSTATUS_8723B		BIT(7)
>  
>  /*        8195 (RCR) Receive Configuration Register	(Offset 0x608, 32 bits) */
>  #define	RCR_TCPOFLD_EN			BIT25	/*  Enable TCP checksum offload */
> 
I'm sorry I put the wrong patch version number in the subject and in the body.
Please diregard this patch. I'm about to send v4.

Thanks,

Fabio





