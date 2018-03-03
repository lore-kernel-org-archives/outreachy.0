X-GM-THRID: 6528698209074675712
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.101.101.22 with SMTP id x22mr1679448pgv.4.1520082196043;
        Sat, 03 Mar 2018 05:03:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.119.67 with SMTP id s64ls2414729pgc.3.gmail; Sat, 03 Mar
 2018 05:03:13 -0800 (PST)
X-Google-Smtp-Source: AG47ELv4BP+Iw8AD02fHZir08ihU+OU/HrqiFap0xcVNv5aQWBS/5ctfdm6ILy96Grz5+8UWR7U/
X-Received: by 10.167.128.149 with SMTP id v21mr1749893pff.8.1520082192992;
        Sat, 03 Mar 2018 05:03:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520082192; cv=none;
        d=google.com; s=arc-20160816;
        b=a7C4dpwKZk/A8qlZ01mZZy4swZPNfvaSwQhgKH5ggoixZa3VApIb0HISOPEcBhHWtG
         CyuAEdH48ZyjWkIJ4IHtf5g7VPu6p1ROva/MumA4Wkhq6x4zb+H2yVyOv7be/DCDB24x
         kIWhTWscfZhlPmOdf+NBym6C7z4rqQmdcpfUDSN0qL4T98kYrN63xZW5Em5zjZ3nuAn+
         r0c55E44M7IOm96RvqB0lG3azYUhkMEFtxIGK+gg7oLYPE0hRBKLkOKc1uhKjgNq/HDf
         W7hhE9CbdvEWDm/QsNnVxnpTwBTFTSBw7aIlvshuZ0KBZYzXsFGCGKhcm3QprV14cpbP
         y5Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=gg+OXs5k4eVIImI1u9b+R1CwGGu1z7vxIvCnWIRcITU=;
        b=oNEefOY5uBR1RcUOBzlK5oN4TZwQCVBQ96DN74XSbTqI5+XixgpoABS7S6oG77z2zO
         BBUzSwp7nG2tx/W1FDS5sCkyoyumKFeOK+3vS80c8cQWA8D7OiAOXXzXpHIMwzJjprVJ
         QyfbU5lU1SnfyjMe79tt+8HyNDm96JeUM4fbN30ogjkw3kZ1AZzhMlT9ct+zBJuNhr3K
         +kjzIUKYWF6T1cYojon+6u7K062Lk9uAzSZfJA6ktZ7NquqhSAp8nvRbC1Qs5pp5OIBb
         gGDt76CZWfR3R2hNImtz6tGlY5Muz5wHzgQ0W5us30lgwKSuPxi5fWwBupuAu5xjPcSZ
         PuXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jt3yD2fR;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c0d::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qt0-x232.google.com (mail-qt0-x232.google.com. [2607:f8b0:400d:c0d::232])
        by gmr-mx.google.com with ESMTPS id w4-v6si576430plp.4.2018.03.03.05.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 05:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c0d::232 as permitted sender) client-ip=2607:f8b0:400d:c0d::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jt3yD2fR;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c0d::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x232.google.com with SMTP id v90so15175223qte.12
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 05:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gg+OXs5k4eVIImI1u9b+R1CwGGu1z7vxIvCnWIRcITU=;
        b=Jt3yD2fRSgJWxOJKIvQ12SUy79qamnTaeBqvzR1qtgD+/kxs2+lgD4Y6yD9M2KmPKA
         qoutXbRVRRSeLkJ94g9in0rVaMOAIZs87NqU6FCTxaau9y50bvj6y7X0dzz+MCktg0gM
         TubUJlXvj9Tw1CdGdGzqSvo+qbjMyQtTZnf3n4Wnw4ZoU/OJAEpPz8T/oyJLBfJtLpRT
         GbyRYUVu8ik9weOtlaxp1Ko1qSU44Xt3hgKmQlstp/d8SbEPDsmtS8gN8Ylg7qQ1q0hH
         32TEDe+tdJBdq0QPZrsUN+jymV8nvA3SHTWG/MuuovdmCgfmxelrK9pJGIvU27mXZFov
         MXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gg+OXs5k4eVIImI1u9b+R1CwGGu1z7vxIvCnWIRcITU=;
        b=YIgG9zvlzcTnc/v7gi6r2kboHW/0HjtkiDfOpZEp5s7xeVD8Frr71nHbA8WMw8bJQv
         bzbNK7ND51GVRcJc4tNdlP4HmoA0fzFxbA3FJIEkIUTlv5YnnXNICRPozlD7MhQnZp8I
         5n9AATpzuDlc9OH+iEkWpVAiRHkEy/naZGGBBqbYSI79Qm8qf2TnhLeb4inIt7t7Z44q
         1JHe8UZO19oRv+ZbW8yyMl0om3mcaN8SgDLaqHHtsCoOvzMExoFS/zj1cHcjUE9wvpBy
         k77L2mmSy1wgPk6fFC1OITV+czspFwTSrm7VM0o2I99lq8bHuAtHaXxHIM1JTLc62gYq
         /U8g==
X-Gm-Message-State: AElRT7EcnCikyZjvz0eSmyFnuLEqfp2mzOZTPvth+HCNVcHmp4kte7O3
	f0GpHvMLgxc5XSXu+9K6tV+adAESIuUXIh9+iNc=
X-Received: by 10.237.39.130 with SMTP id a2mr12731471qtd.70.1520082191752;
 Sat, 03 Mar 2018 05:03:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.176.45 with HTTP; Sat, 3 Mar 2018 05:03:11 -0800 (PST)
In-Reply-To: <605e5d6b-eeaf-4403-9d11-081db0209d6c@googlegroups.com>
References: <605e5d6b-eeaf-4403-9d11-081db0209d6c@googlegroups.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Sat, 3 Mar 2018 14:03:11 +0100
Message-ID: <CAO393ABuSUtRFE+Do7RVj9xMUjUqZk9JKQuHHuabUrDyWA-QrQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding patches
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="f403045f2f9c11a1b6056681b711"

--f403045f2f9c11a1b6056681b711
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 3, 2018 at 1:43 PM, Arushi Singhal <
arushisinghal19971997@gmail.com> wrote:

> Hello
>
> Do Outreachy Applicants need to send patches only for staging tree?
>
>
Hello Arushi,

You need to send cleanup patches only from the staging directory. Once you
are done with cleanup patches, the directory to send patches depends on the
project
specific tasks.


> Or
>
> Is the patches of Greg tree be only considered for outreachy?
>
>
All your contributions to the kernel will be considered.

Best
> Arushi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/605e5d6b-eeaf-4403-9d11-
> 081db0209d6c%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/605e5d6b-eeaf-4403-9d11-081db0209d6c%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--f403045f2f9c11a1b6056681b711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Mar 3, 2018 at 1:43 PM, Arushi Singhal <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:arushisinghal19971997@gmail.com" target=3D"_blank">arushisi=
nghal19971997@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr">Hello<br><br>Do Outreachy Applicants need to send pat=
ches only for staging tree?<br><br></div></blockquote><div><br></div><div>H=
ello Arushi,</div><div><br></div><div>You need to send cleanup patches only=
 from the staging directory. Once you are done with cleanup patches, the di=
rectory to send patches depends on the project</div><div>specific tasks.=C2=
=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">O=
r<br><br>Is the patches of Greg tree be only considered for outreachy?<br><=
br></div></blockquote><div><br></div><div>All your contributions to the ker=
nel will be considered.</div><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">Best<span class=3D"HOEnZb"><font color=3D"#888888"><br>Aru=
shi<br></font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/605e5d6b-eeaf-4403-9d11-081db0209d6c%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">http=
s://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>605e5d6b-eeaf-4403=
-9d11-<wbr>081db0209d6c%40googlegroups.<wbr>com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr">Shraddha<br></div></div>
</div></div>

--f403045f2f9c11a1b6056681b711--

