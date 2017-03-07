X-GM-THRID: 6394891696717430784
X-Received: by 10.223.152.248 with SMTP id w111mr87740wrb.1.1488926995795;
        Tue, 07 Mar 2017 14:49:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls185280ljd.10.gmail; Tue, 07 Mar
 2017 14:49:55 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr497686lfa.4.1488926995177;
        Tue, 07 Mar 2017 14:49:55 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id n128si492172wmf.2.2017.03.07.14.49.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:49:55 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id g70so1185399lfh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=O/6z0MGu3Qc4eVNf4EO9XVFlYKh1hOA4uO4mC4nIBBU=;
        b=TvouNasvP6IWnCUSG54JD2z+H4adPNMbgxH4Ww2JmDtTz/0ywRYddqtwFl7XkFA7O6
         htb7AWASu9FAHC0IJIJwQDHGrSDqxay2CjWx3f7AkVhVj/WYqQ2iEN4EIgGXDv90k9B/
         fdUD4G+75Vgps0K4vzXGKBc8CRttF4WQTEJaYniKtWb5E6dOTq5dCu9usNKzRHxK3GDG
         PG0CIXD+RqVPl7L5t0XKKH3G/X1QwdeO4kbn3cpPmH8d+5GGlP0Npd3+OBzNzob9SJhQ
         QQLCbFBKphvHSliB8Ztk4uTjaPUNO7xx7UuFQVZ4fkG+S25aDtrgDKHhmeBE2tF84sfL
         bCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=O/6z0MGu3Qc4eVNf4EO9XVFlYKh1hOA4uO4mC4nIBBU=;
        b=q2PBvWqEGf7tjYUZ7Xbs8OReoQ93irFmavVqoWICg2fX3YmGkRjyx/1m8npWMJiaPc
         JPrH4HqmhubElOyWMrMkPfZSE31Kxs8HdCCR6nBav14UJF3ikSNprL7NCfHhZnfBHqws
         DAdpbzha4A1/TSTRVgvCaDECnuTdIACjhGtzQpBzEqWHKHxPfEXJ30/3BwaDiA4AT+8Y
         1tSWnn17R0HptTh+KIrli/iD+CFVGSHLteBMDszfD9LUyg2ulVU3tinxeoFh7dXpPjZw
         STNU+P1dMj6gs5S9h0wbZsYEWhw4ZuCbKPTEm99/Ae+dNFg/0JoGFZ/q0yINCOmA3MOS
         e2hg==
X-Gm-Message-State: AMke39lAe2Uz+yfhs0xZZGefENC1Y4M9F2nUF7MFHjGupPSQuyZrW4xnu5IlHVB0cFKrgBH5I/5hOKIv+wll9Q==
X-Received: by 10.25.23.215 with SMTP id 84mr734344lfx.148.1488926994499; Tue,
 07 Mar 2017 14:49:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.217 with HTTP; Tue, 7 Mar 2017 14:49:54 -0800 (PST)
In-Reply-To: <20170307224547.GA14835@fireworks>
References: <20170307224547.GA14835@fireworks>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 8 Mar 2017 00:49:54 +0200
Message-ID: <CALta04z8QGobSHBjmxjzX98gWpPd684aGU25dS7JvG-JKaG2Sg@mail.gmail.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: Remove unnecessary variable
 used to store return value
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114083569a92b3054a2bd417

--001a114083569a92b3054a2bd417
Content-Type: text/plain; charset=UTF-8

On 8 March 2017 at 00:45, Georgiana Rodica Chelu <
georgiana.chelu93@gmail.com> wrote:
> Remove the local variables used to store the return value because
> their initial value does not change during the function execution.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  .../media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c   |
4 +---
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c      |
4 +---
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c        |
3 +--
>  3 files changed, 3 insertions(+), 8 deletions(-)
>
> diff --git
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> index 239ef31..2ed5162 100644
> ---
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> +++
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> @@ -105,8 +105,6 @@ input_system_error_t ia_css_isys_init(void)
>  #elif defined(USE_INPUT_SYSTEM_VERSION_2401)
>  input_system_error_t ia_css_isys_init(void)
>  {
> -       input_system_error_t error = INPUT_SYSTEM_ERR_NO_ERROR;
> -
>         ia_css_isys_csi_rx_lut_rmgr_init();
>         ia_css_isys_ibuf_rmgr_init();
>         ia_css_isys_dma_channel_rmgr_init();
> @@ -120,7 +118,7 @@ input_system_error_t ia_css_isys_init(void)
>         isys_irqc_status_enable(ISYS_IRQ1_ID);
>         isys_irqc_status_enable(ISYS_IRQ2_ID);
>
> -       return error;
> +       return INPUT_SYSTEM_ERR_NO_ERROR;
>  }
>  #endif
>
> diff --git
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> index b251ba4..4a7a603 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> @@ -37,12 +37,10 @@ enum ia_css_err
>  ia_css_mipi_frame_specify(const unsigned int size_mem_words,
>                                 const bool contiguous)
>  {
> -       enum ia_css_err err = IA_CSS_SUCCESS;
> -
>         my_css.size_mem_words = size_mem_words;
>         (void)contiguous;
>
> -       return err;
> +       return IA_CSS_SUCCESS;
>  }
>
>  #ifdef ISP2401
> diff --git
a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> index 00b2d16..9caf0b6 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> @@ -825,7 +825,6 @@ configure_isp_from_args(
>         bool two_ppc,
>         bool deinterleaved)
>  {
> -       enum ia_css_err err = IA_CSS_SUCCESS;
>  #ifdef ISP2401
>         struct ia_css_pipe *pipe = find_pipe_by_num(pipeline->pipe_num);
>         const struct ia_css_resolution *res;
> @@ -853,7 +852,7 @@ configure_isp_from_args(
>         /* Remove support for TNR2 once TNR3 fully integrated */
>         ia_css_tnr3_configure(binary, (const struct ia_css_frame
**)args->tnr_frames);
>  #endif
> -       return err;
> +       return IA_CSS_SUCCESS;
>  }
>
>  static void
> --
> 2.7.4
>


This patch is the improved of this one (link
<https://groups.google.com/forum/#%21topic/outreachy-kernel/7os1b-WHVJg>).
I chose to create a new patch because the file was slightly
different due to the passed time between the two patches.


Regards,
Georgiana

--001a114083569a92b3054a2bd417
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><br><br>On 8 March 2017 at 00:45, Georgiana=
 Rodica Chelu &lt;<a href=3D"mailto:georgiana.chelu93@gmail.com">georgiana.=
chelu93@gmail.com</a>&gt; wrote:<br>&gt; Remove the local variables used to=
 store the return value because<br>&gt; their initial value does not change=
 during the function execution.<br>&gt;<br>&gt; Signed-off-by: Georgiana Ro=
dica Chelu &lt;<a href=3D"mailto:georgiana.chelu93@gmail.com">georgiana.che=
lu93@gmail.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0.../media/atomisp/pci/atom=
isp2/css2400/runtime/isys/src/isys_init.c =C2=A0 | 4 +---<br>&gt; =C2=A0dri=
vers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c =C2=A0 =C2=A0=
 =C2=A0| 4 +---<br>&gt; =C2=A0drivers/staging/media/atomisp/pci/atomisp2/cs=
s2400/sh_css_sp.c =C2=A0 =C2=A0 =C2=A0 =C2=A0| 3 +--<br>&gt; =C2=A03 files =
changed, 3 insertions(+), 8 deletions(-)<br>&gt;<br>&gt; diff --git a/drive=
rs/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c =
b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_=
init.c<br>&gt; index 239ef31..2ed5162 100644<br>&gt; --- a/drivers/staging/=
media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c<br>&gt; +++=
 b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys=
_init.c<br>&gt; @@ -105,8 +105,6 @@ input_system_error_t ia_css_isys_init(v=
oid)<br>&gt; =C2=A0#elif defined(USE_INPUT_SYSTEM_VERSION_2401)<br>&gt; =C2=
=A0input_system_error_t ia_css_isys_init(void)<br>&gt; =C2=A0{<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 input_system_error_t error =3D INPUT_SYSTEM_ERR_NO_ERR=
OR;<br>&gt; -<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ia_css_isys_csi_rx_lut_rm=
gr_init();<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ia_css_isys_ibuf_rmgr_init()=
;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ia_css_isys_dma_channel_rmgr_init();<=
br>&gt; @@ -120,7 +118,7 @@ input_system_error_t ia_css_isys_init(void)<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 isys_irqc_status_enable(ISYS_IRQ1_ID);<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 isys_irqc_status_enable(ISYS_IRQ2_ID);<br>=
&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return error;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 return INPUT_SYSTEM_ERR_NO_ERROR;<br>&gt; =C2=A0}<br>&gt; =C2=A0#end=
if<br>&gt;<br>&gt; diff --git a/drivers/staging/media/atomisp/pci/atomisp2/=
css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/=
sh_css_mipi.c<br>&gt; index b251ba4..4a7a603 100644<br>&gt; --- a/drivers/s=
taging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c<br>&gt; +++ b/drive=
rs/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c<br>&gt; @@ -37,=
12 +37,10 @@ enum ia_css_err<br>&gt; =C2=A0ia_css_mipi_frame_specify(const =
unsigned int size_mem_words,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
onst bool contiguous)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 enum i=
a_css_err err =3D IA_CSS_SUCCESS;<br>&gt; -<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 my_css.size_mem_words =3D size_mem_words;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (void)contiguous;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return =
err;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 return IA_CSS_SUCCESS;<br>&gt; =C2=A0}<=
br>&gt;<br>&gt; =C2=A0#ifdef ISP2401<br>&gt; diff --git a/drivers/staging/m=
edia/atomisp/pci/atomisp2/css2400/sh_css_sp.c b/drivers/staging/media/atomi=
sp/pci/atomisp2/css2400/sh_css_sp.c<br>&gt; index 00b2d16..9caf0b6 100644<b=
r>&gt; --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c=
<br>&gt; +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp=
.c<br>&gt; @@ -825,7 +825,6 @@ configure_isp_from_args(<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 bool two_ppc,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool de=
interleaved)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 enum ia_css_err=
 err =3D IA_CSS_SUCCESS;<br>&gt; =C2=A0#ifdef ISP2401<br>&gt; =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 struct ia_css_pipe *pipe =3D find_pipe_by_num(pipeline-&gt;p=
ipe_num);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct ia_css_resolutio=
n *res;<br>&gt; @@ -853,7 +852,7 @@ configure_isp_from_args(<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /* Remove support for TNR2 once TNR3 fully integrated=
 */<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ia_css_tnr3_configure(binary, (cons=
t struct ia_css_frame **)args-&gt;tnr_frames);<br>&gt; =C2=A0#endif<br>&gt;=
 - =C2=A0 =C2=A0 =C2=A0 return err;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 return I=
A_CSS_SUCCESS;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static void<br>&gt; --=
<br>&gt; 2.7.4<br>&gt;<br><br><br>This patch is the improved of this one (<=
a href=3D"https://groups.google.com/forum/#%21topic/outreachy-kernel/7os1b-=
WHVJg">link</a>).<br></div>I chose to create a new patch because the file w=
as slightly<br>different due to the passed time between the two patches.<br=
><br><br></div><div>Regards,<br></div><div>Georgiana<br></div></div></div>

--001a114083569a92b3054a2bd417--

