X-GM-THRID: 6949235058169348096
X-Received: by 2002:a62:7ac8:0:b029:246:e38c:58ac with SMTP id v191-20020a627ac80000b0290246e38c58acmr21624907pfc.10.1618337815879;
        Tue, 13 Apr 2021 11:16:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5f88:: with SMTP id t130ls9123553pgb.7.gmail; Tue, 13
 Apr 2021 11:16:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZi26kylTn+EiO0DORvCeLCPKXbInluuZtC4n5FN7PIFHYmenj13XiaEN6kU8zPCSUxwuF
X-Received: by 2002:aa7:88c6:0:b029:250:bf78:a4a3 with SMTP id k6-20020aa788c60000b0290250bf78a4a3mr3863172pff.70.1618337814547;
        Tue, 13 Apr 2021 11:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618337814; cv=none;
        d=google.com; s=arc-20160816;
        b=RK1n23+1qIAgQUNhVEOdlbD+hfF65I7LbLgqSzU5IBkyT8DJSI8026O4NVtjreU0+U
         4g5TCUgKHyPn+XaKkZLX0GnyK12hvP7F0nQC3ee6L1IVTIvliZGZJNgASLOkTDOuZW2W
         CPuSM/ai32r8CKFJ4ZVbF2iPJ+s8CPwhbkwXT2Yrm37V1gVaX5ME0hnIG9DVu+cqIyPF
         HZ2UGfXrL9P64SVLM84cOcM57lqbM0U/tQPFYVssDJUPf7/EVOL5LxKDW6CeBsVtYTgT
         5bCsDxGxQLh2f4YfuwMdES/Jbv9EiGg57435J8jWIbPqYgKTZYVF5zBQIHG1nUole2Vz
         Jjug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=SzVy8JflJE6VXT5JeDWyenyHzsFPZ9nxiTnDoe1PycE=;
        b=ikF/yeKteE3apzSVm3tH3WdB+BnTBnS/AuK6uaQQ7Hb61fTM4Rip6Bq7ERLKRMaVoq
         ZaB8OTlF+XV3v0Omv33NX2DqXJD2b4s/ISegzQESmbX+16Q148n1oyJV1RcQxB6NJXYs
         1rcG86mrHjSqCwIDg17RfibOUquzvznQw78+2RAPhVYTGxfZdyIVFyfkcYhthTuW6nnR
         LM06jZpTnVazjTYJ3pp3AsDqrC+64J4VJ4rshMi2ni3aXW+nptr998RbjMNrNmH4RZHe
         8LqKI1Aby0N/gCid7f0E+vIok4meAjR6SFJphwzdAMSfHxuJhDyXk07STN4ws4uG75yg
         K5Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqgS+qC2;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id t19si222003pjq.3.2021.04.13.11.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqgS+qC2;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82d.google.com with SMTP id y12so13456262qtx.11
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 11:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=SzVy8JflJE6VXT5JeDWyenyHzsFPZ9nxiTnDoe1PycE=;
        b=LqgS+qC27bKzUmYEgRQ5yMm3F3XmxxNCDijrZCPNYEoEGyZXG+vzDb/Cp/Sbx3z+Lh
         n3u1Obm/P/L0hfs8hxUUfWPM7t//qb1yjFZ4iUmtg8rW5lITwm8qfATgPIQFk5d3NoG0
         3mak+heq+gIhbWDGuvFlNRr8/qB+EjkxiWXYF+zeyCyi7wkQeICw/5yo8btW6no9HcDq
         HJ/SG5i7/iZZ8UTncNkM9wK/dLhvmbD6vSwC2rnC594lWUZEGPTYy4/BNiVW1ffN4OlJ
         nwlpqF5Tw6Jc6ztvkIDTwjbB48XPFEBJ86hr5huFxdoHXjhpqE0JTOXqsvn5oKEqjGzi
         utvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=SzVy8JflJE6VXT5JeDWyenyHzsFPZ9nxiTnDoe1PycE=;
        b=OtqEevP4M6/Ky2Jkw359G+eR4FndHpPC6ZHHQTYTCeveieKc06MQW64ja+vMpB1CQ3
         BgOikvkARHj6YdL3bu2syy0lQeEKXMXxhbj58qPQlsO2932Dy4BPHNRKkxTlAKf7d97L
         wP/FdIcQ2wUyVGNs4ySZVn9Vatk9OkXWbwai+f0EGNQ6ls52iBCqn0/Y5EKYI2SP9l7A
         qbxxpfSm3NbE2r0K8gyEBMY3nV6gDGsTQXfoB8ZKS8oIhKQ2vYgioSF9DCp1YnY8GWyn
         1A8MZWetXNvsnyWTNxlSUPDlh7fvoPpv7PSIyXFm5EzY3vUyKfjZgeBo929UdZPQatGR
         BPsw==
X-Gm-Message-State: AOAM533TaToTm8oK3r+W75jBG8LT7+ahocTkLxhD/nRtrqRgzybvejK3
	ipOs6y+qHynJixume1Q+BAw=
X-Received: by 2002:ac8:1e0f:: with SMTP id n15mr17632906qtl.9.1618337814282;
        Tue, 13 Apr 2021 11:16:54 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:83a0:18ef:c76d:6086? ([2001:1284:f016:a037:83a0:18ef:c76d:6086])
        by smtp.gmail.com with ESMTPSA id k18sm10697750qkg.53.2021.04.13.11.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 11:16:53 -0700 (PDT)
Message-ID: <68c7a01df0d71708d63f66c7d40b64f7041faeee.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH 1/2] staging: media: omap4iss: Align
 line break to the open parenthesis in file iss.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Tue, 13 Apr 2021 15:16:50 -0300
In-Reply-To: <6823f86b-843f-1abf-e8b7-7be1044b7150@xs4all.nl>
References: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
	 <aed4449f7f054eee329a808527c2a08d79076c78.1617994571.git.alinesantanacordeiro@gmail.com>
	 <6823f86b-843f-1abf-e8b7-7be1044b7150@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em ter, 2021-04-13 às 16:32 +0200, Hans Verkuil escreveu:
> On 09/04/2021 21:01, Aline Santana Cordeiro wrote:
> > Aligns line break with the remaining function arguments
> > to the open parenthesis. Issue found by checkpatch.
> > 
> > Signed-off-by: Aline Santana Cordeiro <  
> > alinesantanacordeiro@gmail.com>
> 
> Obsolete, a similar patch from Beatriz Martins de Carvalho <  
> martinsdecarvalhobeatriz@gmail.com>
> has already been applied in the media subsystem tree.
> 
> Regards,
> 
>         Hans
> 

Okay, thank you for letting me know.

Aline

> > ---
> >  drivers/staging/media/omap4iss/iss.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/omap4iss/iss.c
> > b/drivers/staging/media/omap4iss/iss.c
> > index dae9073..c89f268a 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -960,7 +960,7 @@ iss_register_subdev_group(struct iss_device
> > *iss,
> >                 }
> >  
> >                 subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev,
> > adapter,
> > -                               board_info->board_info, NULL);
> > +                                                  board_info-
> > >board_info, NULL);
> >                 if (!subdev) {
> >                         dev_err(iss->dev, "Unable to register
> > subdev %s\n",
> >                                 board_info->board_info->type);
> > 
> 



