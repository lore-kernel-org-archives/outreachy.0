X-GM-THRID: 6750107807793545216
X-Received: by 2002:a81:9342:: with SMTP id k63mr16545625ywg.261.1571657203104;
        Mon, 21 Oct 2019 04:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8410:: with SMTP id u16ls1931180ybk.0.gmail; Mon, 21 Oct
 2019 04:26:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMNcTQ3mivj81TyT/wv0U4vUH5gG9hOOmSQaMwyKZyPXoetqQNjpq8PIWQZdCCdLCuA8dn
X-Received: by 2002:a25:33d4:: with SMTP id z203mr15860021ybz.149.1571657200938;
        Mon, 21 Oct 2019 04:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571657200; cv=none;
        d=google.com; s=arc-20160816;
        b=dOAzdfVVlKn0aJXlU06/+GfCC/9HgxGD8++Vw6G9w74neFUPcnzc5BjESY8f1zCXs4
         0LquxU5nadOa7lAjkM+DxQrPvlHGJIBMDVcsi8aXFBOf2r+AgLXpjepRUi/+40kQkgY5
         AuRhSG/EercqrWKcLlF71e+IfSj/jfiqZrZYD+lRTDdeFlNOP0NWsXRQNxYjC6kKbh8o
         9vc5IYmCFeysxiUkL2WLVAy7oES9r5sFEvz/Nb7+aN2zEKIBYOQid2fUc8iydH6AnxIi
         7WhsqUjULfI2YyVaf7JR5O5plzTqy2xWYCJ+zB604Sa2uOOSTbPFQxnBg+IJoDETMjat
         rc9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=aUi2/VJtmixNPhwhodsHkXcgqWtA7dbZdxaVTgu5jUY=;
        b=Hh4rK0WCZ7m9MrLzfnhZdaa2xnMnf30/mMebjR1YiamFfcakNx4aqcLI/4NQSowX2W
         e57Rk6+h4X2o6PY9bOS39mDLjGLAI0FBD8EgWplivc2teakPd8I5cVrzEf5M1BJiQcn5
         1/mYjeln7pKaF6FGSlRaOHPwAedWzD2XbX00k4SNggaLscB81r8H1VmUcM3c4hvPYheM
         MTbCiPA+rXPHbSViXL04CGawfucQm6DuTPpvXJkVMtK1IIaJey4gXWHEJ9YPGch9814n
         37sStMes0v6+8jVvb3AONoXV1WBBjXCS3JXhq4dpb0Vp40xdaRaHI7SNe+Zi6MMDFikp
         sPdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-08.prod.phx3.secureserver.net (p3plsmtpa06-08.prod.phx3.secureserver.net. [173.201.192.109])
        by gmr-mx.google.com with ESMTPS id u129si608018ywc.1.2019.10.21.04.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 04:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.109 as permitted sender) client-ip=173.201.192.109;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f175.google.com ([209.85.208.175])
	by :SMTPAUTH: with ESMTPSA
	id MVpeiDJeSfTtLMVpfiBzo4; Mon, 21 Oct 2019 04:26:39 -0700
Received: by mail-lj1-f175.google.com with SMTP id b20so12894158ljj.5
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Oct 2019 04:26:39 -0700 (PDT)
X-Gm-Message-State: APjAAAVu2xbVu1udAHJ7vv15Fc7zm4gsPwNMOuEtoaaDnl+bLTyq7qLK
	n4+HckQn3IF2SCFHm6FZX+wEOjd/Q4WlQjiOWUA=
X-Received: by 2002:a2e:9f08:: with SMTP id u8mr8711947ljk.124.1571657198423;
 Mon, 21 Oct 2019 04:26:38 -0700 (PDT)
MIME-Version: 1.0
References: <399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8@googlegroups.com> <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
In-Reply-To: <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 21 Oct 2019 16:56:26 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKH6QshOeOEa=6H6CxNNm3uvT24gOH907sNNTshwNUThQ@mail.gmail.com>
Message-ID: <CAK-LDbKH6QshOeOEa=6H6CxNNm3uvT24gOH907sNNTshwNUThQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Suggested commit orden for patchsets?
To: Javier Arias <jarias.linux@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4wfAM49k+8E1f3wREHy86cWMYWtTN37etvPb9hXmIw19knRSzBaCqS4PUn2kr+AS8Tm+GOc3rMh4veLCUa+JVqI7yTLhXA1+5pRmN+RwRXCjqlNwBIm0K8
 qn0o6pPaz4d9rmm73sjyIuG4be99eKYgIzsXVVUNR8th2mnMYti/mJf5jKKfMWRrwOEhpmLB2l7gaJSCktJmIEdgmr9bc+xij7A=

On Mon, Oct 21, 2019 at 10:49 AM Vaishali Thakkar
<vthakkar@vaishalithakkar.in> wrote:
>
> On Mon, Oct 21, 2019 at 9:55 AM Javier Arias <jarias.linux@gmail.com> wro=
te:
> >
> > Hello everyone,
>
> Hi Javier,
>
> > I have a question related to the commit order, as I received feedback a=
bout how a commit order makes more sense for patchsets, but when I start fi=
nding an specific issue the next commits in the patchset are usually just t=
o fix warnings displayed by checkpatch after the first fix, so I don't feel=
 like changing the commit order would be productive for me.
>
> I'm not sure if I understand your question correctly but your
> first fix shouldn't introduce any new warnings. Every fix you
> do or every commit you create should not have any
> checkpatch warnings.
>
> Also, can you possibly provide a link to which feedback
> you're talking about here so that people can check it
> and give you suggestions accordingly for your confusion.

Also, if you're looking for a detailed document on the ordering
of commits based on the type of fix, you can find it here:

https://kernelnewbies.org/PatchPhilosophy#How_to_break_up_changes

> > So my question are:
> > Is there a suggested commit order for patchsets even if this is the cas=
e?
> > is it enough if I describe the reason why I used certain commit order i=
n the cover letter?
> >
> > Thanks in advance for your answers.
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/outreachy-kernel/399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8%40googlegroups.co=
m.

