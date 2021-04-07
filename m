X-GM-THRID: 6947895612953067520
X-Received: by 2002:a67:cf41:: with SMTP id f1mr1177645vsm.42.1617788614217;
        Wed, 07 Apr 2021 02:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls127669uap.5.gmail; Wed, 07 Apr
 2021 02:43:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZP42QtJGvPrwQM3YibBZIN6ZYg4DxKmruDhtL9GW5yq7ucOSaDn70p5By2Ra7v+uABpdc
X-Received: by 2002:ab0:6f11:: with SMTP id r17mr1433944uah.97.1617788613211;
        Wed, 07 Apr 2021 02:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617788613; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgitRPmrdMaDYKFycEv+aYW6t6dDpYfZFETvvAAYqYPrh0JSNzpmSXqJqzAFPXQqg8
         tK7SMOEXxNUH+ql8MMaS8ZKLs2gHjnQFUi9QTm1yWdftJTL4kz77DIhlYoGnvLT4onJc
         DfZYhyRpMCSXdQfajVnzk+8V8UEk+LS5ZocJrzIlrHKy9NvlWLRTHN8QGS3t9r9yI/jQ
         Dd+NU6RTmtoZQe2bSnrN7wTYwJLNdfffwKIl8wbf84kmmUOJGMffEO9S0l3PcKFw1pyB
         guYuIkXvtiU7hfHL+8HVa+FsG2Z1N5kAlNmb+3X0MQIjSq0S4Jqy9dalJN7siRNIiHtm
         6hsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=YnqDOgHmSjexsnmm0iwWUL+2y3gQzPnbI5jlMSUTaD8=;
        b=burBvbmo98mZIXe3Xt36zOScq1RtRxJ06OEx9166axg9GjpZ+1+DI8dOnsvrmlZ0AM
         109Giif/7Hi73hH9cUexWyZRWqYffWLMSGxmWl3d3bLraaM/2x0MSLW/yCE7CkOeIZeE
         WWF7xKdyxwgctTD/hkczhp+NbFE3LCqiO+UqlAx2L0SCeFHswRhXzKEp+8ZetY8WyO/5
         WgsQ5bgjGEjVcnTZAnIbw8GQfBkhXoRO4orwF2h3mzv+hDuV+ZoTIO0jCK526CVN1VTB
         miDWTkenbzM6TtxdJIsMEJUYTLWNl07fPqKkHa/12G2JX/UxdZHZPrwa48mRl523JnBK
         wCyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-03.prod.phx3.secureserver.net (p3plsmtpa08-03.prod.phx3.secureserver.net. [173.201.193.104])
        by gmr-mx.google.com with ESMTPS id i8si1535703vko.4.2021.04.07.02.43.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) client-ip=173.201.193.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f45.google.com ([209.85.217.45])
	by :SMTPAUTH: with ESMTPSA
	id U4ihl0TO1gP25U4iil9oSL; Wed, 07 Apr 2021 02:43:32 -0700
X-CMAE-Analysis: v=2.4 cv=c6Zu/Txl c=1 sm=1 tr=0 ts=606d7ec4
 a=Q9xh53z61c245bMlE+dPJg==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f45.google.com with SMTP id t25so1343042vsq.10
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 02:43:32 -0700 (PDT)
X-Gm-Message-State: AOAM530EsqZ+GkEH60lPrjm3FD8ZCzkFpqeWy8rp2dAem1ZzbNTiQEBV
	2CtuntGA/hqqUkK1ZvOeYUT4UVj8T7+7R5DvtZ4=
X-Received: by 2002:a67:c01d:: with SMTP id v29mr1207009vsi.23.1617788611161;
 Wed, 07 Apr 2021 02:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210406160037.27225-1-fmdefrancesco@gmail.com>
 <YG1qxdRtNIIVK3fX@kroah.com> <3526833.TqPzfDAv2q@localhost.localdomain>
In-Reply-To: <3526833.TqPzfDAv2q@localhost.localdomain>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 7 Apr 2021 11:43:19 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+JGK-m7A9CSQNCicbwMj9dfekeyT9OZwnWgSFdp6U6vg@mail.gmail.com>
Message-ID: <CAK-LDb+JGK-m7A9CSQNCicbwMj9dfekeyT9OZwnWgSFdp6U6vg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>, linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfFv1iwLiYhyyIaf/VLgrXTKkV9u5agYIGi55+wRchuTFtDw8zjHTkzAiM5YSltZoQI0U+9NIU53trhNg6WRQ/vbRrZOveLHf6gFRDCjemDcdMY3O8igt
 gpxC9pibXBk7IVVNxy0rtDAKolb02G82sBnYdG7dvFVmYr2XM0w7pqutZJVOZCO9dqnk2hjvi1Z7RNFiCYyfI7dPYcNhX9NJAuzwhaQa9wQxOZig3sWCC+Df

On Wed, Apr 7, 2021 at 10:49 AM Fabio M. De Francesco
<fmdefrancesco@gmail.com> wrote:
>
> On Wednesday, April 7, 2021 10:18:13 AM CEST Greg KH wrote:
> > On Tue, Apr 06, 2021 at 06:00:37PM +0200, Fabio M. De Francesco wrote:
> > > Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> > > are not used anywhere else, therefore this patch does not break the driver.
> > >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > > Patch v3 changes nothing with respect to v2 and v1. It exists only to cc some recipients that were missing in the header of the previous email.
> > >
> > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
> > >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > This patch does not apply to my tree right now.  Can you refresh and
> > rebase your copy of my branch and rebase it and resend?
> >
> Sure. I'm about to submit that patch again in a few minutes.

Also while you're at it, don't forget to put the information under -- about
what has changed since the first version of it. Otherwise it becomes
hard for the reviewers to track the progress of each version.

Ideally it should go like below:

Changes since v2:
Changes since v1:

> Thanks,
>
> Fabio
> >
> > thanks,
> >
> > greg k-h
> >
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3526833.TqPzfDAv2q%40localhost.localdomain.



-- 
Vaishali

