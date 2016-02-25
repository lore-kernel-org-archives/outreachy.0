X-GM-THRID: 6255244617068838912
X-Received: by 10.66.222.138 with SMTP id qm10mr21124564pac.41.1456413270924;
        Thu, 25 Feb 2016 07:14:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls457231qge.52.gmail; Thu, 25 Feb
 2016 07:14:30 -0800 (PST)
X-Received: by 10.140.147.139 with SMTP id 133mr14166253qht.21.1456413270266;
        Thu, 25 Feb 2016 07:14:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-oi0-x234.google.com (mail-oi0-x234.google.com. [2607:f8b0:4003:c06::234])
        by gmr-mx.google.com with ESMTPS id k15si228309igt.3.2016.02.25.07.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:14:30 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) client-ip=2607:f8b0:4003:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x234.google.com with SMTP id x21so41372751oix.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0fwKST/RyGTtObAFvivVWtL23YOjviWgSD4ZBz5t45A=;
        b=rVm+AtJXVYsw2dQDOHoIw5sLzlFCGfsumll1nYtgvrI/wKxHlssF/dzdK2ajOwZk/Q
         BGJ30eW9wB5ECeVCtirtWNvc7c8u3XpBu5RONSoCray3iTH70PbiU9t/9vWnkJV6R7fx
         xfSx3bJfu4HRlzxKeC25ZK12sopAp7mLq2l4LNwyKy9ggseEiJmfmSfEY+cEAMj7NaxM
         Iwp2XGx2Zaoyf1RxGYCPhxwDDWG2gkzkcGZuJkG8MHmQ/f8oVlquSjGFPtb9x50377Pp
         dt6whB+tSC9GzpNL2U+W59vCpX1y7rqYnVLH1Uhtz4n0Nh72ctzoQOPk1ohDkI64r3xX
         A1Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=0fwKST/RyGTtObAFvivVWtL23YOjviWgSD4ZBz5t45A=;
        b=HC6Xfd9PtpyAksDyEsgBWOyk5LQRFAndOAjud7Y8FqeUiZqYABoLAvJfPVgQP37+3O
         0ScijJxVAQLUj8fIRVBQVJDWf1doO5oEI34Mz9KgBHPB1wBM2Mo8U+xz1hpofQpHshFs
         sV18cVmhj8CxUz8a+bX/gqIc55EhqrrLGMJuv6tB3YuVOoZa/lfeMY9gA20pEzeBr1mK
         9VQaarlDM1VwBw5VxuIj522c0vnKQqzyTmhxnhuIPGWh6GCxt1E6nmnGOoRCyO+YSuzu
         P86alShANy1pxSMZ71WHsqi+klYsI7F897JfRzOWna6QhtyYn5dymcXCHkrm7BtmQU7i
         whDg==
X-Gm-Message-State: AG10YORZYlrUcVC69HA/33JRQD8A3ukoHHNgPPj0ol/eb2szOPFAkjnj/0dz4CkCzvSb/0V1iQzZwZFI8SMtNw==
MIME-Version: 1.0
X-Received: by 10.202.206.66 with SMTP id e63mr36076503oig.88.1456413270020;
 Thu, 25 Feb 2016 07:14:30 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Thu, 25 Feb 2016 07:14:29 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251605300.2708@hadrien>
References: <20160225200301.GA8020@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602251605300.2708@hadrien>
Date: Thu, 25 Feb 2016 10:14:29 -0500
Message-ID: <CANnt6Xm5QxmtCmq4FipyGM_ypu53iSc-QNojyi7hiRK8_iQ87g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Drop void pointer cast
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113d395c9b3b90052c99a34e

--001a113d395c9b3b90052c99a34e
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 10:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 25 Feb 2016, Janani Ravichandran wrote:
>
> > Void pointers need not be cast to other pointer types.
> > Semantic patch used:
> >
> > @r@
> > expression x;
> > void *e;
> > type T;
> > identifier f;
> > @@
> >
> > (
> >   *((T *)e)
> > |
> >   ((T *)x) [...]
> > |
> >   ((T *)x)->f
> > |
> > - (T *)
> >   e
> > )
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/rdma/hfi1/hfi.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rdma/hfi1/hfi.h
> b/drivers/staging/rdma/hfi1/hfi.h
> > index d4826a9..838459f 100644
> > --- a/drivers/staging/rdma/hfi1/hfi.h
> > +++ b/drivers/staging/rdma/hfi1/hfi.h
> > @@ -1173,7 +1173,7 @@ int handle_receive_interrupt_dma_rtail(struct
> hfi1_ctxtdata *, int);
> >  /* calculate the current RHF address */
> >  static inline __le32 *get_rhf_addr(struct hfi1_ctxtdata *rcd)
> >  {
> > -     return (__le32 *)rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;
> > +     return rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;
>
> I'm not sure at all about this.  I think your semantic patch needs a case
> for pointer arithmetic too...  Pointer addition of eg 1 adds 1 * the size
> of the pointed object.
>
> Oh yes. This is not right. Thanks for bringing it to my attention.

Janani.

> julia
>
> >  }
> >
> >  int hfi1_reset_device(int);
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160225200301.GA8020%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113d395c9b3b90052c99a34e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 25, 2016 at 10:07 AM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOE=
nZb"><div class=3D"h5"><br>
<br>
On Thu, 25 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Void pointers need not be cast to other pointer types.<br>
&gt; Semantic patch used:<br>
&gt;<br>
&gt; @r@<br>
&gt; expression x;<br>
&gt; void *e;<br>
&gt; type T;<br>
&gt; identifier f;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 =C2=A0*((T *)e)<br>
&gt; |<br>
&gt;=C2=A0 =C2=A0((T *)x) [...]<br>
&gt; |<br>
&gt;=C2=A0 =C2=A0((T *)x)-&gt;f<br>
&gt; |<br>
&gt; - (T *)<br>
&gt;=C2=A0 =C2=A0e<br>
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rdma/hfi1/hfi.h | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rdma/hfi1/hfi.h b/drivers/staging/rdma/hf=
i1/hfi.h<br>
&gt; index d4826a9..838459f 100644<br>
&gt; --- a/drivers/staging/rdma/hfi1/hfi.h<br>
&gt; +++ b/drivers/staging/rdma/hfi1/hfi.h<br>
&gt; @@ -1173,7 +1173,7 @@ int handle_receive_interrupt_dma_rtail(struct hf=
i1_ctxtdata *, int);<br>
&gt;=C2=A0 /* calculate the current RHF address */<br>
&gt;=C2=A0 static inline __le32 *get_rhf_addr(struct hfi1_ctxtdata *rcd)<br=
>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return (__le32 *)rcd-&gt;rcvhdrq + rcd-&gt;head +=
 rcd-&gt;dd-&gt;rhf_offset;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return rcd-&gt;rcvhdrq + rcd-&gt;head + rcd-&gt;d=
d-&gt;rhf_offset;<br>
<br>
</div></div>I&#39;m not sure at all about this.=C2=A0 I think your semantic=
 patch needs a case<br>
for pointer arithmetic too...=C2=A0 Pointer addition of eg 1 adds 1 * the s=
ize<br>
of the pointed object.<br>
<br></blockquote><div>Oh yes. This is not right. Thanks for bringing it to =
my attention.</div><div><br></div><div>Janani.=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
julia<br>
<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 int hfi1_reset_device(int);<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160225200301.GA8020%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160225200301.GA8020%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113d395c9b3b90052c99a34e--

