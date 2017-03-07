X-GM-THRID: 6394872359829897216
X-Received: by 10.25.150.2 with SMTP id y2mr426609lfd.21.1488922363070;
        Tue, 07 Mar 2017 13:32:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.29 with SMTP id g29ls180752ljb.37.gmail; Tue, 07 Mar
 2017 13:32:42 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr517821ljd.12.1488922362472;
        Tue, 07 Mar 2017 13:32:42 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p144si176393wme.2.2017.03.07.13.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:32:42 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id g70so1086401lfh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 13:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q86nz/iLsT+S3boYsitjnu+2n9BgVKDNEy5nuAmLW+0=;
        b=gRLMCaaSqp9whVL01w1Sc8wjb7sNbyrb+Gfvydex9QPPLxZb/wbB35Vu94DUNm/uTH
         cGVFZTxhbCM+FtXhKFwd7m9mW7LNvgD/+zMlXWU2w8/u7mcKzrYR4ctDha3wPca9M1KM
         Th1MrGeR8k0IXKm440tJlz7QG5QSj4Y+w42XSnWK6D9w8nBkkoDhDBMTUCR/0TKbOH8L
         tvPipDWNejBgG4Hp6qStMihmCdX/yJlZ+XYXlg7v/IQ22g5y1I5c5cnSiBFkt92qbzYQ
         BEmaW9gq1xoT8cvhVJRFujX8YAw43QXmbxMaJwDal1uPdplxGKJfO/dd7elTIDqI33jw
         8hJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q86nz/iLsT+S3boYsitjnu+2n9BgVKDNEy5nuAmLW+0=;
        b=n++Y4l3xI1rlZ50Bz12iKxi5cAvCJ+x2uAwn1Bx1G4GTHctMpoMlFY+MydWl97DXrw
         v3CkWiBp2UDVtFZPvZQG3DSZ4EVNYKl8rn4QbmO5cG25E8fHt4CL9eQTmOarSAIgNQR9
         0SdUwEukdQsgxdFGz7YpsujklQheMr4nCHmsyh72lYH+nmo2WKlCANyuo3DFCOJKvAtm
         oNJ0mXwZLPyK+LUd/kWTploX/5zafmwXClc5rA3XK+eDmHA5KtPKg2z061t7MgHAVK4H
         HGTA4Lvo/+nzopl+T/hClJLcm92ohpDgf8/qxX5X7kiNzV8wwaLdoe+X0iwr6uGt7KLf
         P4NA==
X-Gm-Message-State: AMke39n7wMYT6IuBzJQdzg9gHU7j285aWyZ2c9bPE/TrmGgnyw7C/IK2W8ZXZ+lW+V7eIijlwrwcIT4aJwfC4A==
X-Received: by 10.25.196.203 with SMTP id u194mr623732lff.37.1488922362217;
 Tue, 07 Mar 2017 13:32:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.217 with HTTP; Tue, 7 Mar 2017 13:32:41 -0800 (PST)
In-Reply-To: <20170307213044.GA11835@fireworks>
References: <20170307213044.GA11835@fireworks>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 7 Mar 2017 23:32:41 +0200
Message-ID: <CALta04xHwx5RZbGDrPV6mQmkYh_gej2ts1YHAvspSjMB85Q5cw@mail.gmail.com>
Subject: Re: [PATCH] media:atomisp:pci: Use error codes instead of bool variables
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a114b28307f8f70054a2ac0ab

--001a114b28307f8f70054a2ac0ab
Content-Type: text/plain; charset=UTF-8

On 7 March 2017 at 23:30, Georgiana Rodica Chelu <
georgiana.chelu93@gmail.com> wrote:
> Show the reason of failure by using the corresponding error code.
> It helps to better understand why something failed.
>
> ---
>  .../css2400/runtime/isys/src/virtual_isys.c        | 26
++++++++++------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>
> diff --git
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> index f1fc3b5..cf97a9e 100644
> ---
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> +++
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> @@ -48,7 +48,7 @@ more details.
>  #ifndef ISP2401
>
>  #endif
> -static bool create_input_system_channel(
> +static input_system_err_t create_input_system_channel(
>         input_system_cfg_t      *cfg,
>         bool                    metadata,
>         input_system_channel_t  *channel);
> @@ -198,7 +198,7 @@ ia_css_isys_error_t ia_css_isys_stream_create(
>                 return false;
>
>         rc = create_input_system_channel(isys_stream_descr, false,
&(isys_stream->channel));
> -       if (rc == false) {
> +       if (!rc) {
>                 destroy_input_system_input_port(&isys_stream->input_port);
>                 return false;
>         }
> @@ -217,7 +217,7 @@ ia_css_isys_error_t ia_css_isys_stream_create(
>         /* create metadata channel */
>         if (isys_stream_descr->metadata.enable) {
>                 rc = create_input_system_channel(isys_stream_descr, true,
&isys_stream->md_channel);
> -               if (rc == false) {
> +               if (!rc) {
>
destroy_input_system_input_port(&isys_stream->input_port);
>
destroy_input_system_channel(&isys_stream->channel);
>                         return false;
> @@ -299,12 +299,11 @@ ia_css_isys_error_t
ia_css_isys_stream_calculate_cfg(
>   * Private Methods
>   *
>   **************************************************/
> -static bool create_input_system_channel(
> +static input_system_err_t create_input_system_channel(
>         input_system_cfg_t      *cfg,
>         bool                    metadata,
>         input_system_channel_t  *me)
>  {
> -       bool rc = true;
>
>         me->dma_id = ISYS2401_DMA0_ID;
>
> @@ -327,15 +326,11 @@ static bool create_input_system_channel(
>                 me->ibuf_ctrl_id = IBUF_CTRL2_ID;
>                 break;
>         default:
> -               rc = false;
> -               break;
> +               goto exit;
>         }
>
> -       if (!rc)
> -               return false;
> -
>         if (!acquire_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id))) {
> -               return false;
> +               goto exit;
>         }
>
>         if (!acquire_ib_buffer(
> @@ -346,16 +341,19 @@ static bool create_input_system_channel(
>                         cfg->online,
>                         &(me->ib_buffer))) {
>                 release_sid(me->stream2mmio_id,
&(me->stream2mmio_sid_id));
> -               return false;
> +               goto exit;
>         }
>
>         if (!acquire_dma_channel(me->dma_id, &(me->dma_channel))) {
>                 release_sid(me->stream2mmio_id,
&(me->stream2mmio_sid_id));
>                 release_ib_buffer(&(me->ib_buffer));
> -               return false;
> +               goto exit;
>         }
>
> -       return true;
> +       return INPUT_SYSTEM_ERR_NO_ERROR;
> +
> +exit:
> +       return INPUT_SYSTEM_ERR_CREATE_CHANNEL_FAIL;
>  }
>
>  static void destroy_input_system_channel(
> --
> 2.7.4
>


Hi Julia,

I tried to follow your advice regarding the boolean variables.
The exploration of the code revealed me that there are some
error messages that can be used instead of the bool variables.

This patch is the improved version of this patch (link
<https://groups.google.com/forum/#%21topic/outreachy-kernel/l67ua6JYA9A>).


Regards,
Georgiana

--001a114b28307f8f70054a2ac0ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br><br>On 7 March 2017 at 23:30, Georgiana Rodi=
ca Chelu &lt;<a href=3D"mailto:georgiana.chelu93@gmail.com">georgiana.chelu=
93@gmail.com</a>&gt; wrote:<br>&gt; Show the reason of failure by using the=
 corresponding error code.<br>&gt; It helps to better understand why someth=
ing failed.<br>&gt;<br>&gt; ---<br>&gt; =C2=A0.../css2400/runtime/isys/src/=
virtual_isys.c =C2=A0 =C2=A0 =C2=A0 =C2=A0| 26 ++++++++++------------<br>&g=
t; =C2=A01 file changed, 12 insertions(+), 14 deletions(-)<br>&gt;<br>&gt; =
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isy=
s/src/virtual_isys.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/r=
untime/isys/src/virtual_isys.c<br>&gt; index f1fc3b5..cf97a9e 100644<br>&gt=
; --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src=
/virtual_isys.c<br>&gt; +++ b/drivers/staging/media/atomisp/pci/atomisp2/cs=
s2400/runtime/isys/src/virtual_isys.c<br>&gt; @@ -48,7 +48,7 @@ more detail=
s.<br>&gt; =C2=A0#ifndef ISP2401<br>&gt;<br>&gt; =C2=A0#endif<br>&gt; -stat=
ic bool create_input_system_channel(<br>&gt; +static input_system_err_t cre=
ate_input_system_channel(<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 input_system_=
cfg_t =C2=A0 =C2=A0 =C2=A0*cfg,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0metada=
ta,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 input_system_channel_t =C2=A0*chann=
el);<br>&gt; @@ -198,7 +198,7 @@ ia_css_isys_error_t ia_css_isys_stream_cre=
ate(<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return=
 false;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D create_input_sys=
tem_channel(isys_stream_descr, false, &amp;(isys_stream-&gt;channel));<br>&=
gt; - =C2=A0 =C2=A0 =C2=A0 if (rc =3D=3D false) {<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 if (!rc) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 destroy_input_system_input_port(&amp;isys_stream-&gt;input_port);<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;=
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; @@ -217,7 +217,7 @@ ia_css_i=
sys_error_t ia_css_isys_stream_create(<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
/* create metadata channel */<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (isys_=
stream_descr-&gt;metadata.enable) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D create_input_system_channel(isys_stream_des=
cr, true, &amp;isys_stream-&gt;md_channel);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc =3D=3D false) {<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!rc) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 destroy_inpu=
t_system_input_port(&amp;isys_stream-&gt;input_port);<br>&gt; =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dest=
roy_input_system_channel(&amp;isys_stream-&gt;channel);<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
eturn false;<br>&gt; @@ -299,12 +299,11 @@ ia_css_isys_error_t ia_css_isys_=
stream_calculate_cfg(<br>&gt; =C2=A0 * Private Methods<br>&gt; =C2=A0 *<br>=
&gt; =C2=A0 **************************************************/<br>&gt; -st=
atic bool create_input_system_channel(<br>&gt; +static input_system_err_t c=
reate_input_system_channel(<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 input_syste=
m_cfg_t =C2=A0 =C2=A0 =C2=A0*cfg,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0metada=
ta,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 input_system_channel_t =C2=A0*me)<b=
r>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 bool rc =3D true;<br>&gt;<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 me-&gt;dma_id =3D ISYS2401_DMA0_ID;<br>&gt=
;<br>&gt; @@ -327,15 +326,11 @@ static bool create_input_system_channel(<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 me-&gt;ibuf_c=
trl_id =3D IBUF_CTRL2_ID;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 break;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>&gt; =
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D false;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto exit;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (!rc)<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>&gt; -<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!acquire_sid(me-&gt;stream2mmio_id, &=
amp;(me-&gt;stream2mmio_sid_id))) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return false;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 goto exit;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&g=
t;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!acquire_ib_buffer(<br>&gt; @@ -=
346,16 +341,19 @@ static bool create_input_system_channel(<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cfg-&gt;online,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;(me-&gt;ib_buffer))) {<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 release_sid(me-&gt;=
stream2mmio_id, &amp;(me-&gt;stream2mmio_sid_id));<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto exit;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!acquire_dma_chann=
el(me-&gt;dma_id, &amp;(me-&gt;dma_channel))) {<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 release_sid(me-&gt;stream2mmio_id, &=
amp;(me-&gt;stream2mmio_sid_id));<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 release_ib_buffer(&amp;(me-&gt;ib_buffer));<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto exit;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return tr=
ue;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 return INPUT_SYSTEM_ERR_NO_ERROR;<br>&gt=
; +<br>&gt; +exit:<br>&gt; + =C2=A0 =C2=A0 =C2=A0 return INPUT_SYSTEM_ERR_C=
REATE_CHANNEL_FAIL;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static void destr=
oy_input_system_channel(<br>&gt; --<br>&gt; 2.7.4<br>&gt;<br><br><br>Hi Jul=
ia,<br><br>I tried to follow your advice regarding the boolean variables.<b=
r>The exploration of the code revealed me that there are some<br>error mess=
ages that can be used instead of the bool variables.<br><br>This patch is t=
he improved version of this patch (<a href=3D"https://groups.google.com/for=
um/#%21topic/outreachy-kernel/l67ua6JYA9A">link</a>).<br><br><br></div>Rega=
rds,<br></div>Georgiana<br></div>

--001a114b28307f8f70054a2ac0ab--

