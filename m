X-GM-THRID: 6802140913724293120
X-Received: by 2002:adf:de84:: with SMTP id w4mr14091482wrl.350.1583755968300;
        Mon, 09 Mar 2020 05:12:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5710:: with SMTP id a16ls5645306wrv.5.gmail; Mon, 09 Mar
 2020 05:12:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv9zHyhE1tGvOlfM6f24zij2EJ+hfAInh0Ac161sKNQ2AON4TWkVHD0Z1XeXvk2nUbS6zFV
X-Received: by 2002:a5d:4683:: with SMTP id u3mr1300592wrq.251.1583755966922;
        Mon, 09 Mar 2020 05:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583755966; cv=none;
        d=google.com; s=arc-20160816;
        b=SvS1eh/o0P0UzwXDCLuhzk9tbeDS9tSEN8gZH3eitGXPKh2NyCX0QaGt8Pb18Z5Ohg
         SGfVk9wi3TJEWUf2g+W9P51dZmAJZr2SD8O1k6ixEez4qhqpNeT70EnddcZx84BIW/c+
         UN8KIdaEuTcovtwAAt6y7/EsFJDdoTa785i6OpReKuEBLiDpOzL+dM70ucpf9SG7VWVs
         69KlNHUBp5WUn75vGARvIWNTCkc4TQM1I5516tmlAX5P6JEviWFcaKHJ92H7Hbj5Y6+o
         kvOS9m9BTeQ8KH/7xlqgKaBzD+V1EBzuQNLq4wb0AkU62RYVkONuSk16MPSDaiDgJlL2
         htLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BpYt1/bkcg8YIH5h/EONveQv0F+cObzFggn3GChnQwU=;
        b=Fjxq/5U6f2snzFRGXuunFcwDg+mZWVZHQRLgM6wbrHUe8eXJw0ZwXm6hs4qT+CgpFM
         9y3r/NHz1+AndJRSvvcXGgyOg159HzmjsX4Fo6BvWoVeRDbvjGYgsmiKW3DBHl3QU83B
         3IH0hih99v7pqoXTsnwLqHwJReTCq+eJdT9fZkwTAlS0aLoYZNLKPv8Vhs+XoUzTRNKg
         +r/yK4zpUE0FAJBJa+tMtA2Zb6+ReNhdsvX/VvgNrGikNtZH1f2srMfyf/9MjKClFipA
         MQN2oeuAaotlWNme72B9tsdE7X+FYvD9uinFc6ZTF6Z8nBFa5WEizkP+DV02SI2zZbxn
         2z4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgsNsUrB;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y185si361702wmd.2.2020.03.09.05.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 05:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgsNsUrB;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id p9so9600094wmc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 05:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BpYt1/bkcg8YIH5h/EONveQv0F+cObzFggn3GChnQwU=;
        b=EgsNsUrBKjQJOwnbf8vJh0clmRyhY+lJoxtnVHxmANz1ntyIz5GpX9E6hth517bcyv
         5e1jz1gQDIVoi2edyg3dDhCqVpukXOYf42Gp4Qoek2nCHH0gaZANVXl7HFIfKOEYPgK0
         e4GG8+fVsqi0kwLEEFE7wYqCVRafQaNVYp+dontwF1KHgA+0zUAN5StxNjpHv5Wor3GZ
         GwYjs4HYMXcVe4xWI21apM0r1ifES3eltDx4V4Ra/pC5TN7BeFXk6XAGLbDQkQp+amPt
         OMAR/oUsKNQWU/D4jWR9jzbbPJl+ChwHguRdjtqQDDdTLx2PZZU6U5fBCDdl2bW3bkjj
         RGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BpYt1/bkcg8YIH5h/EONveQv0F+cObzFggn3GChnQwU=;
        b=WTUoNo40qAEkyn8sWEVgUyGmW8oUxdTDzFR0hgLyd1DNfMwzRsrPwmUBzLGa6wihWz
         pY507y+JEEdr1Q2KvjlqYJqedhMKllTznawZmOkYk1WwENFFh93e00h36SbAUG9wd8Kb
         +eUt+2FPMVv3vYD3eb+Qjsqp7zYNr1dcm0QzJlGAAzbdheBFNSASnjB9NFz0ThHb533M
         lJWjmyrjzFCClCSzvw/muuccRaEFmpavyqXdrLRfiy2DNSmdWP/6VaC7DrTlpYhckkpx
         tv10lFRanDO3fBmJAsrszI1ZQ7SajR1BZmGCalIrw3bxFR+5VBZroDbYCQeHo/ngq73G
         ar+Q==
X-Gm-Message-State: ANhLgQ1pSn+n87774Eg35qwadA8gWXRly92qvpD5595k9P+HpFjXCZVV
	tkCc4Djd8+2Fckm83CkfO7TVCljIBVklKqhz7sOP3ZEo
X-Received: by 2002:a05:600c:208:: with SMTP id 8mr20671618wmi.79.1583755966370;
 Mon, 09 Mar 2020 05:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200309094036.3957-1-payalskshirsagar1234@gmail.com> <20200309125757.6e2cba34@elisabeth>
In-Reply-To: <20200309125757.6e2cba34@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Mon, 9 Mar 2020 17:42:34 +0530
Message-ID: <CAJyzNh=nuXipPXe6-Bun_OZmmF5b24e5Hz-N55apwQ-whAcR9g@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: qlge: remove blank line
To: Stefano Brivio <sbrivio@redhat.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c9581505a06aebe0"

--000000000000c9581505a06aebe0
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 9, 2020, 5:28 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Mon,  9 Mar 2020 15:10:36 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > Remove unnecessary multiple blank lines.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge_dbg.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_dbg.c
> b/drivers/staging/qlge/qlge_dbg.c
> > index 44fb3a317b8d..670361873d1d 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -552,7 +552,6 @@ static int ql_get_probe_dump(struct ql_adapter
> *qdev, unsigned int *buf)
> >       buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
> >                          PRB_MX_ADDR_VALID_FC_MOD, buf);
> >       return 0;
> > -
> >  }
> >
> >  /* Read out the routing index registers */
> > @@ -610,7 +609,6 @@ static void ql_get_mac_protocol_registers(struct
> ql_adapter *qdev, u32 *buf)
> >
> >       for (type = 0; type < MAC_ADDR_TYPE_COUNT; type++) {
> >               switch (type) {
> > -
> >               case 0: /* CAM */
> >                       initial_val |= MAC_ADDR_ADR;
> >                       max_index = MAC_ADDR_MAX_CAM_ENTRIES;
> > @@ -1204,7 +1202,6 @@ int ql_core_dump(struct ql_adapter *qdev, struct
> ql_mpi_coredump *mpi_coredump)
> >  err:
> >       ql_sem_unlock(qdev, SEM_PROC_REG_MASK); /* does flush too */
> >       return status;
> > -
> >  }
> >
> >  static void ql_get_core_dump(struct ql_adapter *qdev)
> > @@ -1838,7 +1835,6 @@ void ql_dump_tx_desc(struct tx_buf_desc *tbd)
> >       pr_err("tbd->flags = %s %s\n",
> >              tbd->len & TX_DESC_C ? "C" : ".",
> >              tbd->len & TX_DESC_E ? "E" : ".");
> > -
> >  }
> >
> >  void ql_dump_ob_mac_iocb(struct ob_mac_iocb_req *ob_mac_iocb)
>
> You should update the commit title to reflect the fact you're removing
> multiple excess newlines. For my taste, that doesn't warrant a re-send,

though.


> Okay:)

Payal

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
>
> --
> Stefano
>
>

--000000000000c9581505a06aebe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Mar 9, 2020, 5:28 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@r=
edhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On Mon,=C2=A0 9 Mar 2020 15:10:36 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@gmail.com</a>&gt; wro=
te:<br>
<br>
&gt; Remove unnecessary multiple blank lines.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/qlge/qlge_dbg.c | 4 ----<br>
&gt;=C2=A0 1 file changed, 4 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/ql=
ge_dbg.c<br>
&gt; index 44fb3a317b8d..670361873d1d 100644<br>
&gt; --- a/drivers/staging/qlge/qlge_dbg.c<br>
&gt; +++ b/drivers/staging/qlge/qlge_dbg.c<br>
&gt; @@ -552,7 +552,6 @@ static int ql_get_probe_dump(struct ql_adapter *qd=
ev, unsigned int *buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D ql_get_probe(qdev, PRB_MX_ADDR_FC_CL=
OCK,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 PRB_MX_ADDR_VALID_FC_MOD, buf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; -<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /* Read out the routing index registers */<br>
&gt; @@ -610,7 +609,6 @@ static void ql_get_mac_protocol_registers(struct q=
l_adapter *qdev, u32 *buf)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (type =3D 0; type &lt; MAC_ADDR_TYPE_COU=
NT; type++) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0switch (type) {<=
br>
&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 0: /* CAM *=
/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0initial_val |=3D MAC_ADDR_ADR;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0max_index =3D MAC_ADDR_MAX_CAM_ENTRIES;<br>
&gt; @@ -1204,7 +1202,6 @@ int ql_core_dump(struct ql_adapter *qdev, struct=
 ql_mpi_coredump *mpi_coredump)<br>
&gt;=C2=A0 err:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ql_sem_unlock(qdev, SEM_PROC_REG_MASK); /* d=
oes flush too */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return status;<br>
&gt; -<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static void ql_get_core_dump(struct ql_adapter *qdev)<br>
&gt; @@ -1838,7 +1835,6 @@ void ql_dump_tx_desc(struct tx_buf_desc *tbd)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;tbd-&gt;flags =3D %s %s\n&quot;=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tbd-&gt;len &amp; TX_D=
ESC_C ? &quot;C&quot; : &quot;.&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tbd-&gt;len &amp; TX_D=
ESC_E ? &quot;E&quot; : &quot;.&quot;);<br>
&gt; -<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 void ql_dump_ob_mac_iocb(struct ob_mac_iocb_req *ob_mac_iocb)<br=
>
<br>
You should update the commit title to reflect the fact you&#39;re removing<=
br>
multiple excess newlines. For my taste, that doesn&#39;t warrant a re-send,=
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">though.</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><br></blockquote></div></div><div dir=3D"auto">Okay:)=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Payal</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
Reviewed-by: Stefano Brivio &lt;<a href=3D"mailto:sbrivio@redhat.com" targe=
t=3D"_blank" rel=3D"noreferrer">sbrivio@redhat.com</a>&gt;<br>
<br>
-- <br>
Stefano<br>
<br>
</blockquote></div></div></div>

--000000000000c9581505a06aebe0--

