X-GM-THRID: 6334961343676809216
X-Received: by 10.194.96.237 with SMTP id dv13mr1324228wjb.6.1474980848509;
        Tue, 27 Sep 2016 05:54:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.203.196 with SMTP id b187ls1809889wmg.10.canary; Tue, 27
 Sep 2016 05:54:02 -0700 (PDT)
X-Received: by 10.28.67.132 with SMTP id q126mr205795wma.22.1474980842798;
        Tue, 27 Sep 2016 05:54:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si1193466wmd.1.2016.09.27.05.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 05:54:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,405,1470693600"; 
   d="scan'208";a="194806664"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Sep 2016 14:54:02 +0200
Date: Tue, 27 Sep 2016 14:53:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, Michael.Hennerich@analog.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: cdc: add comment
 to mutex
In-Reply-To: <CAAbeOSuN_FAYa_PUDQRQBsyvuKriv5SQykZwsM8KM=9dsMJOGg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609271448210.3044@hadrien>
References: <20160927104504.GA13155@life-desktop> <20160927111608.GA18326@kroah.com> <CAAbeOSuN_FAYa_PUDQRQBsyvuKriv5SQykZwsM8KM=9dsMJOGg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1568120614-1474980839=:3044"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1568120614-1474980839=:3044
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 27 Sep 2016, Anchal Jain wrote:

> >That's the best description for this?  I don't understand this, do you?
> >
> >Why no ' ' after and before '*'?
>
> because the in C we prefer in the comment in like that
> /*....*/
> not like this
> /'*'....'*'/

Normally comments /* look like this */, /*not like this*/.

> If I used this there is not problem the compiler should read as a comment
> because in normal C program we can use comment in these pattern /..../
> but according to  Linux kernel Coding style
>
> And I am not sure it is the best description may be it is not fully correct
> if you want to do some change in comment than I can.

I think it is a problem that can only be solved with a good understanding
of what the mutex is used for.  You may want to look at what comments are
associated with mutex declarations in other files.

julia

> Thank you,
>
> On Tue, Sep 27, 2016 at 4:46 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
>       > Fix the checkpatch.pl issues:
>       > CHECK: struct mutes definition without comment
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       > ---
>       >  drivers/staging/iio/cdc/ad7150.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/iio/cdc/ad7150.c
>       b/drivers/staging/iio/cdc/ad7150.c
>       > index f6b9a10..88c6ebe 100644
>       > --- a/drivers/staging/iio/cdc/ad7150.c
>       > +++ b/drivers/staging/iio/cdc/ad7150.c
>       > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>       >       u8 mag_timeout[2][2];
>       >       int old_state;
>       >       char *conversion_mode;
>       > -     struct mutex state_lock;
>       > +     struct mutex state_lock; /*generic mutex for cdc and
>       drivers*/
>
>       That's the best description for this?  I don't understand this,
>       do you?
>
>       Why no ' ' after and before '*'?
>
>       thnks,
>
>       greg k-h
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSuN_FAYa_PUDQRQBsy
> vuKriv5SQykZwsM8KM%3D9dsMJOGg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1568120614-1474980839=:3044--

