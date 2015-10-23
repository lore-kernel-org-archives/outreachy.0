X-GM-THRID: 6208828760687378432
X-Received: by 10.112.136.99 with SMTP id pz3mr4976151lbb.11.1445607410461;
        Fri, 23 Oct 2015 06:36:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls439318lfi.59.gmail; Fri, 23 Oct
 2015 06:36:49 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr4870557lbb.15.1445607409786;
        Fri, 23 Oct 2015 06:36:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si111160wiy.3.2015.10.23.06.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:36:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,186,1444687200"; 
   d="scan'208";a="151559055"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Oct 2015 15:36:49 +0200
Date: Fri, 23 Oct 2015 15:36:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use
 put_unaligned_le32
In-Reply-To: <CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510231536090.2437@hadrien>
References: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com> <CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1186693936-1445607399=:2437"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1186693936-1445607399=:2437
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 23 Oct 2015, Vaishali Thakkar wrote:

>
>
> On 23 Oct 2015 18:36, "Shraddha Barke" <shraddha.6596@gmail.com> wrote:
> >
> > Introduce the use of function put_unaligned_le32.
> >
> > Coccinelle semantic patch used -
>
> This is not whole patch which I wrote. So, it could be good to write
> 'simplified semantic patch'.
>
> Also, you can check the whole patch in my github account if you are
> interested. :)

Was there someone who had a problem with this in some cases?  I don't
remember...

julia

> > @@ identifier tmp; expression ptr; expression y,e; type T; @@
> >
> > - tmp = cpu_to_le32(y);
> >
> >   <+... when != tmp
> > - memcpy(ptr, (T)&tmp, ...);
> > + put_unaligned_le32(y,ptr);
> >   ...+>
> > ? tmp = e
> >
> > @@ type T; identifier tmp; @@
> >
> > - T tmp;
> > ...when != tmp
> >
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > index 9733aa6..1662c03c 100644
> > --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter
> *padapter, u32 mask, u8 arg)
> >         u8 buf[5];
> >
> >         memset(buf, 0, 5);
> > -       mask = cpu_to_le32(mask);
> > -       memcpy(buf, &mask, 4);
> > +       put_unaligned_le32(mask, buf);
> >         buf[4]  = arg;
> >
> >         FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-s
> end-email-shraddha.6596%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAK-LDb%2B8RnwEbL95WiS0e
> dnY3NCENOe%3DtnCoRekkJKEoEjOa0w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1186693936-1445607399=:2437--

