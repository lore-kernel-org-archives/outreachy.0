X-GM-THRID: 6661092310784147456
X-Received: by 2002:ab0:2495:: with SMTP id i21mr8439356uan.9.1551105257504;
        Mon, 25 Feb 2019 06:34:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2706:: with SMTP id a6ls3104821uaa.0.gmail; Mon, 25 Feb
 2019 06:34:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZgHgovNHz+OOTJTVGTrhNnK8nGhfuTSKSQYmk3NuxXp3soUdr4+EyNR97wEF+8ChvzuXXS
X-Received: by 2002:a9f:2f17:: with SMTP id x23mr8441728uaj.24.1551105256751;
        Mon, 25 Feb 2019 06:34:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551105256; cv=none;
        d=google.com; s=arc-20160816;
        b=Ln+2S5uiAAY4/G30lTkSgcgo6TTUI89Uz7blh1u26yQBoKYj/bYWgv7VgA0DmHCPir
         ufjNXcj/gfODVK1IItcAUfbtP960ZH0eFp19RB5/+FHoLepggLEw2V48ly/Cmhofaxca
         6UYLoIlRIZ3rrv1zRNkGfXQu1+zcZG3sojRY5VsyQED9tZxVN62h4E8ysfQ7IHNxkUUM
         AjpsMdbr7xTRDsVcyFMn5V7AcWA1AM84OITDUqJ591kxowUZCNwmNNYKeZxKcYpKuNGM
         YShBK756lUtNwgH/weskb1AlMA4cmSn3Qbsp46n8/WaZq2g7d0x6MoZa1vyNA2nX6zOz
         lS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pxj/c85ww/6ooiH9xyR4IIDLw4wLDKqvrLyEg92rIBI=;
        b=ZUhaD3GEFewUSMaOjlkMX5vAVvvmDBevfXogFYMwolr0SOgVE5V6hkLQhz/KCa4/3Y
         1j/P7SaVEik7ju0gilScNnfWFlGXg19APlyueXXEizyMlkITbrDtd1qDAlCld8lyFntY
         dpTF/vbYtC1+I/uer3GffIhmn3JuOsRKRxENvQnicOcH/J4HMt68giEKBNIWiI0er6Lt
         jZtccqiuILD/g5ZuDFtV86Da9w8ZK5W4IC66CSulv0cnowZq6r8n7hcgn5TNM+6aK/Cm
         TIZ/VMH2hXbs0dSpwLOkQ1H100yzxAmUoWSpj7hbMt0jKc4f0kAWyZiIdAf5d0Rmrb/+
         g35g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNCk9rvu;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c15si111978vsp.2.2019.02.25.06.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:34:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNCk9rvu;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id b3so7977006otp.4
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pxj/c85ww/6ooiH9xyR4IIDLw4wLDKqvrLyEg92rIBI=;
        b=lNCk9rvuaKtrbvzA/ms7IwOdL7OziW0PG/D6kkK282j+yto8OpiF0502QE7OunIPSf
         JRy9SHHCs82Z/3z8h8J2Torz/Vs7AHJVwM/Vh0/a2sQoZeHkcAyeadVeYjfCdbXWk6Q4
         0WEYwayadVYd3QDQqnJK8hnJsqH3xUDNw3IlYdRq7gB+wACWxUSBOfvxTOpMK61VCkhU
         5S4FYzRwYE3cMhtloXDp4s+u2e5aatc44k7qSmXdneW4Do+SiTKejnkR7V6klp6VjYX6
         cHD65lgo2TQWbfG1lALGWEIQrt530m/yd55JGJOvvF0jegOMZhJ7bqZi0WQ15Q8NUpw/
         XTUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pxj/c85ww/6ooiH9xyR4IIDLw4wLDKqvrLyEg92rIBI=;
        b=sG7fCNbF5KQhzEXNgQgXUV2OMaTkJGVpnlBmeRFLMYOS27MCOaf7TG4E63BJrEY5sy
         f6+tnoaZWZ9I7Fyt5qO02f9HwvITGQW2pWzAbVBDBduWf52lnLusfUP7IlawN46PGhi5
         3fCLlbAC1sYENlGAriowfD1TSWb9LjkDBckxxJmJt91OgksEV92pfhic8rMk3PqD3sOL
         DSBWYdIR16gD/EDrMVZcQZ9yW7I64RVe8Sw1nH1+BUyHzPdR5/0a+aYytbZBihRofTvp
         osAquLnqZG4LGn4Y/SEn1xny7BLT2cJGntNjoAE5NDMTqGtAMBF7Q52Lu3z3KKoiiL0W
         jb7A==
X-Gm-Message-State: AHQUAuaRtuML69Ws1Ng1xb0bDo8ua+O0KJdeCey4D+DCaW/Wvp/9iCQU
	Wbsl2R4xVv8pUAF980XmVynrPykOp9JymaC78ow=
X-Received: by 2002:a9d:730d:: with SMTP id e13mr7787211otk.281.1551105256123;
 Mon, 25 Feb 2019 06:34:16 -0800 (PST)
MIME-Version: 1.0
References: <20190225143052.8331-1-bhanusreemahesh@gmail.com> <alpine.DEB.2.20.1902251532190.3474@hadrien>
In-Reply-To: <alpine.DEB.2.20.1902251532190.3474@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Mon, 25 Feb 2019 20:04:04 +0530
Message-ID: <CAB0Mk-OhQJ8i0C5g63hP52ogv_nw_4VJE3MXshOGhbFv32ZB0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ks7010: Match alignments
 with open paranthesis
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 25 Feb 2019 at 20:02, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Mon, 25 Feb 2019, Bhanusree Pola wrote:
>
> > Parameters of "netdev_dbg" are adjusted to match alignment with open
> > paranthesis.
> > Issue found using checkpatch.pl
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >
> > v2: commit log modified to be imperative
>
> Our messages probably crossed, but this one is not imperative either.  It
> should be Adjust parameters...

i'll fix them up.
thank you. :)
>
> julia
>
> >
> >  drivers/staging/ks7010/ks_hostif.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > index d938b0997a53..e48fc36b6ebd 100644
> > --- a/drivers/staging/ks7010/ks_hostif.c
> > +++ b/drivers/staging/ks7010/ks_hostif.c
> > @@ -730,7 +730,7 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
> >       priv->scan_ind_count++;
> >       if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
> >               netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
> > -                     priv->scan_ind_count, priv->aplist.size);
> > +                        priv->scan_ind_count, priv->aplist.size);
> >               get_ap_information(priv, (struct ap_info *)(priv->rxp),
> >                                  &priv->aplist.ap[priv->scan_ind_count - 1]);
> >               priv->aplist.size = priv->scan_ind_count;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225143052.8331-1-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1902251532190.3474%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

