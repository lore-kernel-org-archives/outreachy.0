X-GM-THRID: 7019053574676021248
X-Received: by 2002:a05:6402:d47:: with SMTP id ec7mr17193205edb.230.1634299494936;
        Fri, 15 Oct 2021 05:04:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:340a:: with SMTP id c10ls3417782ejb.5.gmail; Fri, 15
 Oct 2021 05:04:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3y/lVtDgDJA704EImRHFXMV8dCzKF2fAabnU0xl/Dqsn7Sl2Yv0QfK3R2aFMPIYas2m0+
X-Received: by 2002:a17:906:274a:: with SMTP id a10mr6506686ejd.323.1634299493304;
        Fri, 15 Oct 2021 05:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634299493; cv=none;
        d=google.com; s=arc-20160816;
        b=x6GxJI7/uRR7jz9TWxvV0YRqWrPzaIBniDQfZvc4kIA+6HZlxZxeIz1zAhrApJ9tqp
         k1x0s3e0NkOgDD/JT43mUmcGeAYQNxFDkvdgbK2ebFGWoledCvcPdDitld5eZUH3SjEo
         y2qvaupR7xzmVhSJrUkHf+OSX2/OVwdZikf8AdYfSm7xfKgU9cOao7pWhGhxzk1YTVtM
         mcQRWaCZNe2uRj+8nB2Q5TfkVAyt8DYGNtpYGrhWZEOoqiGopFvl1X+MUfS10Sk5mS2I
         LZdz3T+XBhJiattW15GxpZYLNDQnMhlSlInBEYbKAsOD3B1m98Q+owkvv8WLYiMzKbTF
         ZxVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9OSynyGGGAN8wtHv0YsW4FTZom2/dUkzYJEdh5qmLC8=;
        b=j9zRizzzlo4Chsmv9SMQQslZOMwVi1tekvx8ANESkUL6s+Xva/qtzmU27S2xS32Msx
         hjryjLHzqWr5nLeDlrP/202v1pVhM3qNDRYD713kF310GkIm5xTzmbkm1MX5aFnH3OG+
         nF3S9wv0LXhVtLeFDONhqSYWuMaGy647ik/LSkAwgQI7YQ1FRoOEst7Cr+cYMv9Ge4Yh
         J8Fk8KQxCukcBvHcTkqVA4j8/1lrQRnwoR4u/KoOq4WcVzzCt9xzbd6queqjMIR54Yo7
         khyqvKFOUJLX3i+1EU/JqD1Ye7DPVEi+1M7hLE1QebwU1qQh93gnaBW8vgzGdIUzd3xJ
         NtrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=l78p7XZF;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id i5si337965edk.3.2021.10.15.05.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 05:04:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=l78p7XZF;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id t16so37033416eds.9
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9OSynyGGGAN8wtHv0YsW4FTZom2/dUkzYJEdh5qmLC8=;
        b=l78p7XZFnc118bWny728QSKjMsheZVzV1hHDs8SKytvoKJJX4FHKR5L3wOidINl2N8
         J961FGCChBqPezrNBBeeUYxn8yZYjOABZ6N/BwFdWyQ142QjUXYf07nZmtvarU0eRKwP
         AYLb6qQLRkJZhMTM8p8qdyP2SVqiQSWpfsKZfr7kRsLDFXah5YTc5w1+AShAgAPdlsay
         V+jKFqC5IOcZfowyb4SpU03m8l0x2Mih4ESvdDgS5QP3vtAoMf+I27nhbfHqMZBkU11S
         YhSpkpPy3iegNeRbUdeHtF3w+tCQlz4oHN0GgU5gG/KhwGT3ew279m30S6xiRaz4864z
         ef/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9OSynyGGGAN8wtHv0YsW4FTZom2/dUkzYJEdh5qmLC8=;
        b=myLR3MVrnhiN2Rqgu4v8RXDfuSyAnzPg4pErb9ZF/zsnGORgYpn9pKhskpFPt8DRuz
         pfdjpyQQVFsV7/hRiT3XNnk8Z2OPBLE0EsR5yIHabbbYR0ondB6hNZ5P9Nmjb/RFoneh
         CHx273M4K0tN5If6TxreFbtMw0s7pZ0MCwa+vOvSj86yTOnMKLbXgFN/0sgrcgZ6Qb7F
         MI8T/dfzVWlSt/j0b2RLY9aurTKElm95FKrLx62r+AkALK+cpp8xBswTos/8CxlA/J+s
         OAI1T7l6xOCSilGCTJMkK5VUo04wlV7l+TaWtoyx5RqDC8rfGQS4G7j85k7PHopeiWFn
         aHZA==
X-Gm-Message-State: AOAM532wgIafjiLqoPHML9Y5LpI/yngsZnVth9Iq6ufKXDVR8g1Cnr0w
	joV/zDlGpo+QDM2Qb/cNsMTk6eNc3Gs=
X-Received: by 2002:aa7:dbcf:: with SMTP id v15mr17205932edt.243.1634299492799;
        Fri, 15 Oct 2021 05:04:52 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id n10sm3993596ejk.86.2021.10.15.05.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 05:04:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: mike.rapoport@gmail.com, outreachy-kernel@googlegroups.com, mchehab@kernel.org, sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org, kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp : input_system.c : fixes the error of control reaches end of non-void function [-Werror=return-type]
Date: Fri, 15 Oct 2021 14:04:49 +0200
Message-ID: <2125107.Dqu8hxrGLC@localhost.localdomain>
In-Reply-To: <20211014223007.596789-1-kushalkothari285@gmail.com>
References: <20211014223007.596789-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Friday, October 15, 2021 12:30:09 AM CEST Kushal Kothari wrote:
> The compiler cannot tell from that code if the function will ever reach
> the end and still return something. To make that clear, replaced the last
> line with just "else" which fixes the error of "error: control reaches end 
of non-void function [-Werror=return-type]"
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  .../media/atomisp/pci/hive_isp_css_common/host/input_system.c    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/
input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/
input_system.c
> index 8e085dda0c18..91bad8f34efc 100644
> --- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/
input_system.c
> +++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/
input_system.c
> @@ -1587,6 +1587,7 @@ static input_system_err_t 
input_system_configure_channel_sensor(
>  	status = set_source_type(&config.source_type, 
channel.source_type,
>  				 &config.source_type_flags);
>  	if (status != INPUT_SYSTEM_ERR_NO_ERROR) return status;
> +	else return status;

Hi Kushal,

Aside from what Alison said about not accepting patches in this driver this 
round, please note that this is not the correct way to address that compiler 
warning.

Think about it: now, whatever "state" you get from set_source_type(), you 
always return it to the caller of input_system_configure_channel_sensor().

By doing so, you change the logic of the function and get dead code. This 
change makes the rest of the function code unreachable and introduces a huge 
bug.

While the patch cannot be accepted for Outreachy, think of a better solution 
as you may need to make similar changes in future patches.

Thanks and welcome,

Fabio M. De Francesco

>  
>  	// Check for conflicts on source (implicitly on multicast, 
capture unit and input buffer).
>  
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/
outreachy-kernel/20211014223007.596789-1-kushalkothari285%40gmail.com.
> 





