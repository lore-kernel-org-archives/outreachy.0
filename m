X-GM-THRID: 6527238351782674432
X-Received: by 10.55.195.210 with SMTP id r79mr10462366qkl.62.1519743700964;
        Tue, 27 Feb 2018 07:01:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.77.8 with SMTP id a8ls914938qkb.3.gmail; Tue, 27 Feb 2018
 07:01:39 -0800 (PST)
X-Google-Smtp-Source: AG47ELvvQ6oobEQBkkTrlpfr6TRZzUbp8PLbqiUfuSG1ZnpUpf09Nw31hKBVD21fvlO6Hq5e5FYF
X-Received: by 10.55.52.85 with SMTP id b82mr5649266qka.12.1519743699215;
        Tue, 27 Feb 2018 07:01:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519743699; cv=none;
        d=google.com; s=arc-20160816;
        b=is2w4BETSTQw22Lfe53iSnTnxwg8mdZNF2ZhdyR+NdVvCNGs87msorQAgo+gFXsI6D
         EhNDd8ObPSoN2OkQ+u3bjHvNqU4cZq4RwzKbVt/0cfl0rrtbE5Y3AS/nypxVY67YeFh1
         H7mkWY24wmH0e8TU58VeP/+/wa7mpElC/kG3UixlpBQDkQH8ujm0LXAS7kd1p/DJCJnn
         dMnunO7H2hvAfA4sN7USvsg33qVqHuc7gFQrIv9tvSsBNWrcdPI4MrHNDvJ7YizzPRmC
         mfNRXg51xCUS6CPcr7xJ4hswjGhY3dUpi9Jk+k5jKTWa34848tItOYs+B6gHHiD5C8Bz
         QRxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:arc-authentication-results;
        bh=6CP/UvR7Qu+kMruq/J6d/oJpsGYIujfGh68C4hXLn+0=;
        b=heRZQCU3gK7vxgWM3FNh9Y/QOMjRwE9hD3aTg0d8r4aAMHJ+kL02NAeJC59TpUMygS
         pVBhYxn25mNtDSBBbAMagqH3UmJLdN1Jgv21ah6bT+bkTljT5AtJQeUudzYitLe95Sij
         2yk+gF2CKdGRTVWZFg0EYOGhKFiNG0GqcCFHm5VNWwdg+OSUcAFm2KfW7atEfoNrxPks
         gjuI9XX3mRef03QsADyIaXbk2WINLrBVFKKNayhiaQgwwL8fM01oxKHaUK+yn78Gd5Fh
         GWNOrx1D55RXLjfHP94Jut0ds8lBssqi9MOfHTCyLW4AUIJK6e7B9kuiBPED2DV0vzDE
         fTiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fMzysthi;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::235 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gs051095@gmail.com>
Received: from mail-ot0-x235.google.com (mail-ot0-x235.google.com. [2607:f8b0:4003:c0f::235])
        by gmr-mx.google.com with ESMTPS id o5si750141qke.2.2018.02.27.07.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 07:01:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::235 as permitted sender) client-ip=2607:f8b0:4003:c0f::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fMzysthi;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::235 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x235.google.com with SMTP id l12so4024563otj.7
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 07:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6CP/UvR7Qu+kMruq/J6d/oJpsGYIujfGh68C4hXLn+0=;
        b=fMzysthil1/YXATkVcBcbHn+D4foYo9SFqRp5AIDPwdABfpUQfCE6vS7HXX8MQnYVO
         FmUbpfge/aeh+lI2SUBHHPzDE3FdW6XnxuMLRgv6auDLO7SZRVmEwLmdFgJZdrFi45K5
         I4o7U1gZpKFuhCR7f8DIGd7HA8k/Yy2oZiZXCtkNdrpCi6jt9MiBJpt2H1IIt/nPyuVG
         21PzMfuwPx1Z6ZqdZkhb/n5OE5gJFltYnasIkV+sT7TIjU9q6RClp2z75EugTB3dTrOe
         d4ufMXv7oJw2le8vpbhOZuRGEdWOa4jNBwZVi5eYXUEsLEVrZV97nHD2614quAQGepBv
         yGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6CP/UvR7Qu+kMruq/J6d/oJpsGYIujfGh68C4hXLn+0=;
        b=QrEkhFKShQ1yiv6HOfubrXjfEm2L78lHHc4iUR09759x6COKuaA2q3O6HGzkIjqCvj
         vRkLqMgB8HbXtPXDupMbaJL1BJPMtvwCUQH4UJjjPQu37ClbPS0lsVFB41kW2HoxeIid
         UT19UiWbZ5JfI725dURoXRZldUS4rahfhDh6dpEtmVtziB8XrfLI5cSZkJBx9Vs5qQ7t
         HCfyW1FZyU7A8PoK3aMzH+meAZy+lw9S6NFeTdHLXsRKJAA81A3rBeKaxsTxl3Js8PcE
         6cDNJargIAfT29tJ65wPdS3dBxIFtDvr1xqflwaEiJOLlNWHfy+N+aGtHvO5LOO3cbiD
         p8Cg==
X-Gm-Message-State: APf1xPDEsUqlGjJfe5A++p1bM7WCWj1K79HVUrd2suJv8GL5+AagXClr
	Rt9xpk/WMkZIj0YjC1vUt8OL6LrrV/DJ/sDHwTk=
X-Received: by 10.157.85.156 with SMTP id m28mr9944356oth.72.1519743698538;
 Tue, 27 Feb 2018 07:01:38 -0800 (PST)
MIME-Version: 1.0
References: <CANfc03LJc2HcyPBMRvrX6ad6+ENfexTC3MCV6C-7AMjUKKTDvQ@mail.gmail.com>
In-Reply-To: <CANfc03LJc2HcyPBMRvrX6ad6+ENfexTC3MCV6C-7AMjUKKTDvQ@mail.gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 27 Feb 2018 15:01:27 +0000
Message-ID: <CAOCi2DFKNtNyTynp67hNNAoDarL7az-hHuDUj1E8zk5NeeDSYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Mac User problem
To: "Hetavi (Haley) Shah" <hashah@crimson.ua.edu>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="94eb2c0ebdb44d2527056632e718"

--94eb2c0ebdb44d2527056632e718
Content-Type: text/plain; charset="UTF-8"

Hi Haley,

You can install a virtual box and mount Ubuntu (or any other Linux distro
of your choice). I installed oracle virtualbox and Ubuntu 14.04 and it
worked perfectly for me. There are tons of tutorial of you Google for this.

Thanks!
Gargi

On Tue, Feb 27, 2018 at 2:18 PM Hetavi (Haley) Shah <hashah@crimson.ua.edu>
wrote:

> Hello,
>
> I wanted some help from any other Mac users here?
>
> I have a Mac and so I can not run Linux Kernel on it.  Is there any other
> way that I can get to this project or do I need to download something?
> If you are a Mac user and you were able to get to the project, can you
> guide me on what did you ?
>
> Thank you,
> Haley Shah.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CANfc03LJc2HcyPBMRvrX6ad6%2BENfexTC3MCV6C-7AMjUKKTDvQ%40mail.gmail.com
> <https://groups.google.com/d/msgid/outreachy-kernel/CANfc03LJc2HcyPBMRvrX6ad6%2BENfexTC3MCV6C-7AMjUKKTDvQ%40mail.gmail.com?utm_medium=email&utm_source=footer>
> .
> For more options, visit https://groups.google.com/d/optout.
>
-- 
Sent from Phone. Please excuse brevity.

--94eb2c0ebdb44d2527056632e718
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi Haley,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">You can install a virtual box and mount Ubuntu (or any other Linu=
x distro of your choice). I installed oracle virtualbox and Ubuntu 14.04 an=
d it worked perfectly for me. There are tons of tutorial of you Google for =
this.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks!</div><div =
dir=3D"auto">Gargi</div><br><div class=3D"gmail_quote"><div>On Tue, Feb 27,=
 2018 at 2:18 PM Hetavi (Haley) Shah &lt;<a href=3D"mailto:hashah@crimson.u=
a.edu">hashah@crimson.ua.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div>Hello,=C2=A0<br><br>I wanted some help from any other Mac use=
rs here?=C2=A0<div><br></div><div>I have a Mac and so I can not run Linux K=
ernel on it.=C2=A0 Is there any other way that I can get to this project or=
 do I need to download something?=C2=A0</div><div>If you are a Mac user and=
 you were able to get to the project, can you guide me on what did you ?</d=
iv><div><br></div><div>Thank you,</div><div>Haley Shah.</div><div><br></div=
></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/CANfc03LJc2HcyPBMRvrX6ad6%2BENfexTC3MCV6C-7AMjU=
KKTDvQ%40mail.gmail.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/CANfc03LJc2H=
cyPBMRvrX6ad6%2BENfexTC3MCV6C-7AMjUKKTDvQ%40mail.gmail.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/optout</a>.<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">Sent from Phone. Please excuse brevity.<=
/div>

--94eb2c0ebdb44d2527056632e718--

