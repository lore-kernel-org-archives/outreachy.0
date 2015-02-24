X-GM-THRID: 3247770173440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,352ba3b1521f4ad9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr2411011lbb.7.1424804839708;
        Tue, 24 Feb 2015 11:07:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.84 with SMTP id be20ls534189lab.89.gmail; Tue, 24 Feb
 2015 11:07:19 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr2376350lbc.0.1424804839062;
        Tue, 24 Feb 2015 11:07:19 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22f.google.com (mail-lb0-x22f.google.com. [2a00:1450:4010:c04::22f])
        by gmr-mx.google.com with ESMTPS id mv2si4078963lbc.0.2015.02.24.11.07.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 11:07:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22f as permitted sender) client-ip=2a00:1450:4010:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22f.google.com with SMTP id b6so27141832lbj.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 11:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=wrDPG/V6zwnhn315NHBt3ltyWS5GXxuMA27F+kEdFDA=;
        b=mL9SIyjKp8R7onL60uVotzJ3tUQ/vD7h/HgzfDyupfUK8RiUJAfnVVbin0jqOFkfH6
         iznreaRoUki4x0KY6LtBR7+yiUY91LM9MLYHYlAfnSIkeM/b4IwYx0H+qRdf/+O5D6H3
         Yh+TPgel+uJy5CL5pxHaEvyExJaxi5VOE1thgRL/F5QA4J+gEF3TeDt2ZoeVr9BNiAoC
         y/PbN6utGUIE8MQICMP6wNO4jylyBZnvC3a3iLKfWSueu2dMNb6GtXJRpe86cg3I5Km5
         n00t+g7SkfbpMy0pA55j9irUiPkvIxLc+Qc5AQO6Od5lji0LAzHcDkPUCZhoTdeGbyRQ
         2ykA==
MIME-Version: 1.0
X-Received: by 10.152.37.166 with SMTP id z6mr15247943laj.98.1424804838936;
 Tue, 24 Feb 2015 11:07:18 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Tue, 24 Feb 2015 11:07:18 -0800 (PST)
In-Reply-To: <23670050.lCeLkYodT8@wuerfel>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
	<f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com>
	<23670050.lCeLkYodT8@wuerfel>
Date: Tue, 24 Feb 2015 20:07:18 +0100
Message-ID: <CAL7P5jJsPdvWTmWrBQucp8w9wJaCUGX_rEQVE37AypWEuGzB0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/6] Staging: rtl8192u: Remove TRUE and
 FALSE macros
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 24, 2015 at 8:03 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tuesday 24 February 2015 18:30:30 Ksenija Stanojevic wrote:
> > Remove TRUE and FALSE boolean macros, since Linux kernel has already a
> > boolean type, bool, defined in linux/stddef.h
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8192U.h | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> > index c9d8c10..6c2e438 100644
> > --- a/drivers/staging/rtl8192u/r8192U.h
> > +++ b/drivers/staging/rtl8192u/r8192U.h
> > @@ -40,8 +40,6 @@
> >  #define RTL8192U
> >  #define RTL819xU_MODULE_NAME "rtl819xU"
> >  /* HW security */
> > -#define FALSE 0
> > -#define TRUE 1
> >  #define MAX_KEY_LEN     61
> >  #define KEY_BUF_SIZE    5
>
> The patches in this series all look good to me, but the order is wrong:
> You should first change all users of the macro and remove it in the final
> patch. Alternatively you could submit a single larger patch to do it
> all at once. There is not really a reason to split it up by file if
> all the changes are for the same driver and are completely trivial.
>
>         Arnd

Ok,  but should I also change TRUE and FALSE to true and false in
 commented code?

