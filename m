X-GM-THRID: 6210951142862487552
X-Received: by 10.28.145.198 with SMTP id t189mr1308619wmd.5.1446125387707;
        Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.12 with SMTP id g12ls330722wmd.36.canary; Thu, 29 Oct
 2015 06:29:47 -0700 (PDT)
X-Received: by 10.28.88.135 with SMTP id m129mr706701wmb.4.1446125387265;
        Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id 13si264519wml.2.2015.10.29.06.29.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id fv8so42863765wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=g6bGYahrRnUaHGQPc3mfEAHwOxMkrMnTQ5b7536xdjU=;
        b=jgLK5XoJ7AAlV1c3PuYAMIcNxgJFD48gr9oHqvPC370yoRkTl7C2owG99NfzMf0C4D
         FJ3a+l+CFfiDdmnsU+3VHwrwHHzsyHfBhjwhan/tQZ4khpk8OKczcGydOTurVp5EEkGi
         NNIJf97jbxNhwfrOSN7sillt34m1XuQ23udLrEsl7qRLVdA0QwFag+vLc9bYNjMS6Fyd
         oKmeEq1NGi+UTIgn7Y8VuXOwgaFJ78rlH/xHmbtLtkdUyf9fCQCNVYgIierqkVxV+E5V
         C+Xe88RShFpKlsH31zvIwjfl/3bmuinG9YgRowSiZPjlXQor4tNPskCSxtxx0Nx0XIgc
         IQMQ==
MIME-Version: 1.0
X-Received: by 10.194.190.47 with SMTP id gn15mr2496712wjc.119.1446125387108;
 Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 29 Oct 2015 06:29:47 -0700 (PDT)
In-Reply-To: <20151029105619.GD1331@sudip-pc>
References: <20151029062222.GA36689@ubuntu>
	<20151029105619.GD1331@sudip-pc>
Date: Thu, 29 Oct 2015 18:59:47 +0530
Message-ID: <CAKHNQQF4bkGwVifU=ap75yMVwr3oA0Ni6V+qCfVExYx+w4swxw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: rpc: Remove
 unnecessary wrapper function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7bf0c86e00375705233e4ecc

--047d7bf0c86e00375705233e4ecc
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 4:26 PM, Sudip Mukherjee <sudipm.mukherjee@gmail.com
> wrote:

> On Thu, Oct 29, 2015 at 11:52:23AM +0530, Shivani Bhardwaj wrote:
> > Remove the function srpc_post_active_rqtbuf() and replace its only call
> > with the function srpc_post_active_rdma() by adding and typecasting the
> > appropriate parameters.
> >
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/selftest/rpc.c | 17 +++++------------
> >  1 file changed, 5 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c
> b/drivers/staging/lustre/lnet/selftest/rpc.c
> > index 162f9d3..cb895c3 100644
> > --- a/drivers/staging/lustre/lnet/selftest/rpc.c
> > +++ b/drivers/staging/lustre/lnet/selftest/rpc.c
> > @@ -445,15 +445,6 @@ srpc_post_active_rdma(int portal, __u64 matchbits,
> void *buf, int len,
> >  }
> >
> >  static int
> > -srpc_post_active_rqtbuf(lnet_process_id_t peer, int service, void *buf,
> > -                     int len, lnet_handle_md_t *mdh, srpc_event_t *ev)
> > -{
> > -     return srpc_post_active_rdma(srpc_serv_portal(service), service,
> > -                                  buf, len, LNET_MD_OP_PUT, peer,
> > -                                  LNET_NID_ANY, mdh, ev);
> > -}
> > -
> > -static int
> >  srpc_post_passive_rqtbuf(int service, int local, void *buf, int len,
> >                        lnet_handle_md_t *mdh, srpc_event_t *ev)
> >  {
> > @@ -798,9 +789,11 @@ srpc_send_request(srpc_client_rpc_t *rpc)
> >       ev->ev_data  = rpc;
> >       ev->ev_type  = SRPC_REQUEST_SENT;
> >
> > -     rc = srpc_post_active_rqtbuf(rpc->crpc_dest, rpc->crpc_service,
> > -                                  &rpc->crpc_reqstmsg,
> sizeof(srpc_msg_t),
> > -                                  &rpc->crpc_reqstmdh, ev);
> > +     rc = srpc_post_active_rdma(srpc_serv_portal(rpc->crpc_service),
> > +                                rpc->crpc_service, &rpc->crpc_reqstmsg,
> > +                                sizeof(srpc_msg_t), LNET_MD_OP_PUT,
> > +                                (lnet_process_id_t)rpc->crpc_dest,
>
> why do you need the typecast to lnet_process_id_t?
>
> crpc_dest is already of the type lnet_process_id_t.
> check lustre/lnet/selftest/selftest.h file.
>
> regards
> sudip
>

Thanks for pointing out. I've sent v2. Please check that.
Thank you

--047d7bf0c86e00375705233e4ecc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 29, 2015 at 4:26 PM, Sudip Mukherjee <span dir=3D"ltr">&lt;=
<a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blank">sudipm.mukh=
erjee@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v class=3D"HOEnZb"><div class=3D"h5">On Thu, Oct 29, 2015 at 11:52:23AM +05=
30, Shivani Bhardwaj wrote:<br>
&gt; Remove the function srpc_post_active_rqtbuf() and replace its only cal=
l<br>
&gt; with the function srpc_post_active_rdma() by adding and typecasting th=
e<br>
&gt; appropriate parameters.<br>
&gt;<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com">shivanib134@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/selftest/rpc.c | 17 +++++-----------=
-<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/stag=
ing/lustre/lnet/selftest/rpc.c<br>
&gt; index 162f9d3..cb895c3 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/selftest/rpc.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/selftest/rpc.c<br>
&gt; @@ -445,15 +445,6 @@ srpc_post_active_rdma(int portal, __u64 matchbits=
, void *buf, int len,<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int<br>
&gt; -srpc_post_active_rqtbuf(lnet_process_id_t peer, int service, void *bu=
f,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0int len, lnet_handle_md_t *mdh, srpc_event_t *ev)<br>
&gt; -{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return srpc_post_active_rdma(srpc_serv_portal(ser=
vice), service,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf, len, LNET_MD_OP_PUT,=
 peer,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LNET_NID_ANY, mdh, ev);<b=
r>
&gt; -}<br>
&gt; -<br>
&gt; -static int<br>
&gt;=C2=A0 srpc_post_passive_rqtbuf(int service, int local, void *buf, int =
len,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 lnet_handle_md_t *mdh, srpc_event_t *ev)<br>
&gt;=C2=A0 {<br>
&gt; @@ -798,9 +789,11 @@ srpc_send_request(srpc_client_rpc_t *rpc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ev-&gt;ev_data=C2=A0 =3D rpc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ev-&gt;ev_type=C2=A0 =3D SRPC_REQUEST_SENT;<=
br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0rc =3D srpc_post_active_rqtbuf(rpc-&gt;crpc_dest,=
 rpc-&gt;crpc_service,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;rpc-&gt;crpc_reqstms=
g, sizeof(srpc_msg_t),<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;rpc-&gt;crpc_reqstmd=
h, ev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D srpc_post_active_rdma(srpc_serv_portal(rpc=
-&gt;crpc_service),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rpc-&gt;crpc_service, &amp;rpc-&=
gt;crpc_reqstmsg,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(srpc_msg_t), LNET_MD_OP_P=
UT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (lnet_process_id_t)rpc-&gt;crpc_=
dest,<br>
<br>
</div></div>why do you need the typecast to lnet_process_id_t?<br>
<br>
crpc_dest is already of the type lnet_process_id_t.<br>
check lustre/lnet/selftest/selftest.h file.<br>
<br>
regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888">sudip<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">Thank=
s for pointing out. I&#39;ve sent v2. Please check that.<br></div><div clas=
s=3D"gmail_extra">Thank you<br></div></div>

--047d7bf0c86e00375705233e4ecc--

