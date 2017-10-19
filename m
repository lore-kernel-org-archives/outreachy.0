X-GM-THRID: 6477977779126140928
X-Received: by 10.202.75.69 with SMTP id y66mr1105510oia.58.1508439072898;
        Thu, 19 Oct 2017 11:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.212.132 with SMTP id l126ls2039520oig.1.gmail; Thu, 19 Oct
 2017 11:51:12 -0700 (PDT)
X-Received: by 10.202.106.138 with SMTP id f132mr1150996oic.42.1508439072134;
        Thu, 19 Oct 2017 11:51:12 -0700 (PDT)
Received: by 10.202.245.206 with SMTP id t197msoih;
        Thu, 19 Oct 2017 11:45:23 -0700 (PDT)
X-Received: by 10.36.103.138 with SMTP id u132mr1813913itc.38.1508438723336;
        Thu, 19 Oct 2017 11:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508438723; cv=none;
        d=google.com; s=arc-20160816;
        b=sFwwF2LT1HlyJqv73dBvW9f4umEKy0fik6g1ubRcrdHgawMnn4p9TUQk0bjzbywvIC
         zu+vrGSOaOWjilnptVBoY7ATDkIEnmz2wmXhsVO7Xn3nGI0iesYgRYJQVC4UidpSMF5z
         WK89Z8Q/IwYvxH0mKVWu6pXDz2lx/0mILWUjH8dfwkgKlAQ3gEpa8blDyIe0jR1jNHQf
         rz90zZvA0fdcAu0rjMtld4dTqfekGSMNyLyG2fda4/dj27iqwAj7X8Vi3dcQyK5Yneer
         K31mlWCtbwKap2B5xOjZISxbFVwQ5wD2vQ31808NO9ztawVs3OqIMbqwZGwLZgbKz9rI
         aetQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=oTfn6yeUaGw0wx29KTfNVsWzu0CG82HE2fUM9gKUkDw=;
        b=HOIVrBvIWxuHu47CvMn5xDWcqtnPH9PKawdVCqqBB8KpocvDCsCiM3Kun3eY/nO9WK
         SLR91apNpvz5MBAmXEpjWRFK8qnf++1Z0mq25Wit/vD+RbpvsaFD230693TA7FSVp3Am
         s8Jt58K0MinuZVkvH4o4ILnGCnNqN47Fjc+L2YWePoX7RqfvjftvKUTBVFzo1TIQSTpW
         oYoAYlynBeCSdGZPz0yjYzm9rk2KlGEnW18bFhPsIpRLB8FnZNKz0kCPTw1XkVhTHB0G
         HTgz/xmmQBjjNETdWBQKxH2T8zeR+E5qM6gyNlgBd9CfF4W4/plWH+YkujxTQvRD8Yeo
         fJhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=diBwWTKX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id a205si95636itg.1.2017.10.19.11.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 11:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=diBwWTKX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id n189so4364513ywd.6
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 11:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oTfn6yeUaGw0wx29KTfNVsWzu0CG82HE2fUM9gKUkDw=;
        b=diBwWTKXt3bTKL0hpXySNlCBwaPZgvijFL0kdBs17LnNjSY1xn43hajO1KDmyk47B4
         onAdTvZwz2QiYmLlTbr5DFH5LWPFStNeOjVb6kT7rlMqlXpfz5HjpA/fv/MODMfe1REg
         pldI1SeFB617OnEwsZUjoHykJANbrlBgKPj1QoQrXSQ32VOvD4qWWgGdD8Wkg4w7JFCP
         gSfDSYmrmfMHvnHPVMEV5jrmqIXnnqwS6/z8mR5eHm7hzL3e5Bd88nv02Af9LaJJZOwX
         JRBHjisRWjalkPqendQztHQ5LRjg7FbtX5ENyGCGzKgt9Tw8jTlxfXq0PltXzeb63vbr
         hhzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oTfn6yeUaGw0wx29KTfNVsWzu0CG82HE2fUM9gKUkDw=;
        b=VRCLxnPoOELKRKJMVBSS9ggVeJC3LUFO1QEJTquhTi+8p181Q6mFlsjRiZ+ilzGHqy
         mJuMK3K0WTnKd5AQbQ4Y9pJUqbTXvPSQm/ABUh402NYXgjvT1kTC7GlIKTHbZ5lpF3Y1
         7cAgVWjsDCiSg29tp8HC46MhWOJzgijJynOBwp266pv9cdbE/dFzYaHCdu0fFu32aBfh
         Nt2UUutzzGkxe+lVRyN7cmbUAbnxiYYCzRKADLaVyNvAu0e7uSUvNrpHftjuTAZRalq7
         gE0OwzTIrNSSqa0vDjXb3CqAF4Ms2i/O4Gw1iTBXCiQ432JFLlMaPE49OgiB+mBDU9mc
         grtg==
X-Gm-Message-State: AMCzsaUM+LoluBuj1pu+2vbdRHSLUAE8eRiE2sIfgEA74pcDT2wkrXI9
	RdP/Uj1yI6rQZsutPwuaeKaof3oYuVeIPRc+ohE=
X-Google-Smtp-Source: ABhQp+T8ih7VfAziTjWViV6WRU5EeRbuzWAH4y+fsgy1Enn7OKOA3DZuP/tN4LzUmV9EWBKEALh5zSIYEXlofjW4/Ig=
X-Received: by 10.37.177.36 with SMTP id g36mr1581900ybj.248.1508438722948;
 Thu, 19 Oct 2017 11:45:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.189.13 with HTTP; Thu, 19 Oct 2017 11:45:22 -0700 (PDT)
In-Reply-To: <3243e74f5c0d1d61cc2fc2e98146032bdca40bcc.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com> <3243e74f5c0d1d61cc2fc2e98146032bdca40bcc.1508270576.git.georgiana.chelu93@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 19 Oct 2017 14:45:22 -0400
Message-ID: <CADnq5_NK5OkkutvXg_w1+9A_cVfa3p03_EXvYDKEGh3vMdTe9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/amd/powerplay: Place the constant on the right
 side of the test
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Alex Deucher <alexander.deucher@amd.com>, Julia Lawall <julia.lawall@lip6.fr>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 17, 2017 at 4:22 PM, Georgiana Chelu
<georgiana.chelu93@gmail.com> wrote:
> Move the constant on the right side of the comparison in order to
> make the code easier to read.
>
> Issue found by checkpatch script:
> * WARNING: Comparisons should place the constant on the right side of
> the test
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>

Applied the series.  Thanks you!

Alex

> ---
>
> Changes in v2:
> * adjusted the subject prefix of the patches
>
>  drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
> index 769ac11a9215..f14c7611fad3 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
> @@ -1021,7 +1021,7 @@ static int get_vddc_lookup_table(
>
>         table = kzalloc(table_size, GFP_KERNEL);
>
> -       if (NULL == table)
> +       if (table == NULL)
>                 return -ENOMEM;
>
>         table->count = vddc_lookup_pp_tables->ucNumEntries;
> @@ -1130,12 +1130,12 @@ int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
>
>         hwmgr->pptable = kzalloc(sizeof(struct phm_ppt_v2_information), GFP_KERNEL);
>
> -       PP_ASSERT_WITH_CODE((NULL != hwmgr->pptable),
> +       PP_ASSERT_WITH_CODE((hwmgr->pptable != NULL),
>                             "Failed to allocate hwmgr->pptable!", return -ENOMEM);
>
>         powerplay_table = get_powerplay_table(hwmgr);
>
> -       PP_ASSERT_WITH_CODE((NULL != powerplay_table),
> +       PP_ASSERT_WITH_CODE((powerplay_table != NULL),
>                 "Missing PowerPlay Table!", return -1);
>
>         result = check_powerplay_tables(hwmgr, powerplay_table);
> @@ -1229,7 +1229,7 @@ int vega10_get_number_of_powerplay_table_entries(struct pp_hwmgr *hwmgr)
>         const ATOM_Vega10_State_Array *state_arrays;
>         const ATOM_Vega10_POWERPLAYTABLE *pp_table = get_powerplay_table(hwmgr);
>
> -       PP_ASSERT_WITH_CODE((NULL != pp_table),
> +       PP_ASSERT_WITH_CODE((pp_table != NULL),
>                         "Missing PowerPlay Table!", return -1);
>         PP_ASSERT_WITH_CODE((pp_table->sHeader.format_revision >=
>                         ATOM_Vega10_TABLE_REVISION_VEGA10),
> --
> 2.11.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

