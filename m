X-GM-THRID: 6664599067722514432
X-Received: by 2002:a24:3608:: with SMTP id l8mr502755itl.35.1551730392837;
        Mon, 04 Mar 2019 12:13:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls156307itb.3.canary-gmail; Mon,
 04 Mar 2019 12:13:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqxmPJXyyt5/SPO6VksWUy56uYE+7KTTw98MJCtJWKlVjWVYtEKyYjfEkFfai0ouqw3kv9S/
X-Received: by 2002:a24:1452:: with SMTP id 79mr552593itg.17.1551730391818;
        Mon, 04 Mar 2019 12:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551730391; cv=none;
        d=google.com; s=arc-20160816;
        b=jZH5uXke6iLQFbKIFcUuc/eYJqVkYgSUFEVuPWicSDpDHSakG6hOfdbsVBVGV4CqoU
         aV0E6J3xvJNfJvtfvBu/2eMOJak79L1wVkto0tIZQ0GrtIyXcfk6t2lK2NQqDX7Sxipx
         AcSlO50iLNdXcuwYosVE6+xhiJKqeW5+wuMAOMftvbyVgilGNVzZZYPZLLnNKXTp90gL
         K5WI07jpOtxXFYez47yzF99nuCL6USsufrGRb6P3u4ErDVKYZttqy3X+74Izi3arbmvH
         m7/RsKxZE5GZ23SJC1KeQY2r+Utcgjw6swRe7KxbknfELdHtq9aaIKRb0XElbit8rGvv
         6nrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ugDI+Zgyi3LBnNCKY5519WNPY7uttCMO90EAiNppjWE=;
        b=ojO92xPBZej/tQcCsKuBhwT2awNPb8Jx8xr5n3L/dH9kGr24mx3M1PsLv2cTHQm4WJ
         P/USDvrLIbSXnyQuwdZJeqGzk2TO0MN2HyrappVdUnhrVhZ7b+lpkzXB/L/04ezQ3BaK
         kfwEPZdB6RzbOunR/55SKQx9WVtCu/iyFeYvI/ykbfE3bWh9Km6I4xVGVmQkU3zdtF5u
         dzjtnEfn+/t/yPCsFIB6I0hHWSRSFdkjTWEWvx6oCXWIQQSGHgbXoSsadlk4HaqCA7mw
         jM9GGSZXupv7J8yuY51V8K6xI3Oc2qkN3amkJ34NM7b/3PDoe1GnKrwwg57lTic8VokA
         qBbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LllBprO7;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id u1si459292itb.2.2019.03.04.12.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 12:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LllBprO7;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt1-x82d.google.com with SMTP id p25so6550798qtb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 12:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ugDI+Zgyi3LBnNCKY5519WNPY7uttCMO90EAiNppjWE=;
        b=LllBprO7oGR6q0uejwbpuUDQ8t2lgRrZpChQA6Y4Yx05ELKNLSB0P3jE+EXoX3BX5K
         2/oGlEsgeEDaHs8JyDmoILOG604yj8R2TE3aEa3cvEJIwJpv99THSXW1GNc3HSRorYGR
         B0SCKAYM3gQXBtX97y/eL22pHTP+beMJmHJb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ugDI+Zgyi3LBnNCKY5519WNPY7uttCMO90EAiNppjWE=;
        b=FYKbd6P9ePQNJk0LCuRIkA1LUo2tkC6wYBmscSCOJT1ijDhLgKIdZDcemP9kDNPsab
         K0FmkfxROn//2E2lUSER7tXyBuaLqTUKhn22LyiJXsNyIb5WNYa3GLfBlDW4JOc1qSdl
         YD7IgAfIIEJPHf+MLPN7woyhoiPI1GyA29sQz67jg1kj95kBsPK7EklWv0DwyQodH00a
         Vr8KQGJWEDVjjXKykoEV3i+/2q04vCKlIXXaL+18wQ04edAA+GY8AqeKS882qFfCgsLR
         prnPJ61gbYAylpg6rK/rBqwyg7GumqAPELMgF/CanjsJ7HfgGNu2Himlgthz+XTiilxg
         HoQQ==
X-Gm-Message-State: APjAAAWyCwuGMsBHwl5oSzxilYgm6ah8C9evBzxfS+eC6sIHFB1upHPr
	tdIyCELJDaftBE34GJn+YG1nnDcjerW0lgJZVUT6Vw==
X-Received: by 2002:a0c:86a6:: with SMTP id 35mr15931214qvf.221.1551730391347;
 Mon, 04 Mar 2019 12:13:11 -0800 (PST)
MIME-Version: 1.0
References: <20190304173947.30135-1-nishka.dasgupta@yahoo.com> <20190304190228.GD13830@kroah.com>
In-Reply-To: <20190304190228.GD13830@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 5 Mar 2019 01:42:56 +0530
Message-ID: <CAC4++KAwPEjSSTbgnRYXCU=z_WNJAs3rbAtL0XboZ-OCmjCmrg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: Add brackets to
 avoid precedence issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, johan@kernel.org, elder@kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 12:32 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 04, 2019 at 11:09:47PM +0530, Nishka Dasgupta wrote:
> > Add parentheses around arguments to avoid precedence issues. Issue found
> > by Checkpatch.
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > ---
> >  drivers/staging/greybus/camera.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > index 615c8e7fd51e..7b653a4fd63f 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
> >
> >  #define GB_CAMERA_MAX_SETTINGS_SIZE  8192
> >
> > -#define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, format)
> > -#define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev, format)
> > -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, format)
> > +#define gcam_dbg((gcam), format...)  dev_dbg(&gcam->bundle->dev, format)
> > +#define gcam_info((gcam), format...) dev_info(&gcam->bundle->dev, format)
> > +#define gcam_err((gcam), format...)  dev_err(&gcam->bundle->dev, format)
>
> Please explain how adding an extra () helps anything here.
>
> I think checkpatch is very confused.  Always use your brain when running
> it, as it is just a perl script and sometimes gets things wrong (like
> here.)
I thought adding brackets just demarcates the parameter(s)? If that is
not necessary or useful, then I won't submit this patch in future.

> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304190228.GD13830%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
- Nishka

