X-GM-THRID: 6884588339702267904
X-Received: by 2002:a9d:67cc:: with SMTP id c12mr6110588otn.359.1602946795736;
        Sat, 17 Oct 2020 07:59:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6319:: with SMTP id q25ls1310774otk.11.gmail; Sat, 17
 Oct 2020 07:59:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOlyK7YlHnc0p3ljuhgrS86cpi1Qk5XKsHwL0FmW8L6UFLxNLHiuBtwkQTi1EkmGW2Nt01
X-Received: by 2002:a05:6830:19ce:: with SMTP id p14mr6564801otp.315.1602946794514;
        Sat, 17 Oct 2020 07:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602946794; cv=none;
        d=google.com; s=arc-20160816;
        b=Pvn+ZXXVu1I2f8FSCEnnGTwvC9BFhNw53eou2NUH259N1/Dm+8OS+sHQGDaisqXlOu
         3AgBRabfn4xi1Tln42Gjycucc2any2avZbpLNsLm7U3+OggYuxhob126TpXuRWo/98Fg
         9b8h5kg1NvDMyBMmbTV+oF5KeL5zIKf/KtTo0GqUU6SfhGzV0rlbMQupjPaHe8uEHlps
         Ni4V2gjqqvDDZZ3XWiChVVj5lL1inKWjwsqGYIfIxeZEyyh3hjvDLuzUWNCm6PcnXV6E
         LKRM4qZguNpysEyNBomJWBuPJTM0wRS9GJx0gLf6unaI0xnS3lGt4Ht6pXrS0BXephxB
         fG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=/yuwmHvCETyKPzkhZ6ZGjV+2hICew3FWKkRp//N2BIg=;
        b=bNQg86Iih1dvdhTYwwu9h21TyILmiCSWRciVrU7Tt9h/MidJCRkXGUBYZ4eX3t7rUc
         K/L4qXHCendCnDU88f4x/5mYKDf56JK2Uytq6Ryh+2ierYwMBeACYaxogia1lgQukboO
         xmQLanULWhuX/rlaxv6CkJxUc0IjEO8OZ+Mmq/VzON1d+yFKY5ODavc8v/JLY6rxfeci
         GcKutJ3iICiVzqPkA+ixi9pWtt5f5iwoeW3WUSMElNo61U6QVWtkozzqnQ/Ug4udMlIu
         TFmBShdOdJE4LPwhEwCzoGE2XDSoSbh0MMrHTO0Qfflvbz3F05Lj5mARRIyva4JQnNQL
         j8hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-02.prod.phx3.secureserver.net (p3plsmtpa12-02.prod.phx3.secureserver.net. [68.178.252.231])
        by gmr-mx.google.com with ESMTPS id p17si430746oot.0.2020.10.17.07.59.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 07:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) client-ip=68.178.252.231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by :SMTPAUTH: with ESMTPSA
	id TngXkuEKAFgdSTngXkznga; Sat, 17 Oct 2020 07:59:53 -0700
X-CMAE-Analysis: v=2.3 cv=AZDP4EfG c=1 sm=1 tr=0
 a=62Vrlwq93dyS4LaSTMevfw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=ag1SF4gXAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=Yupwre4RP9_Eg_Bd0iYG:22
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ot1-f54.google.com with SMTP id m11so5516860otk.13
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2020 07:59:53 -0700 (PDT)
X-Gm-Message-State: AOAM533Hw4Dvkjq+H25q38oAb9li2YWeWmvb4OFGTh5uTZjrbyf1lnkd
	xPxwBwATAQMnNuAMtzZyGBWGv/bFKS243rZdCU0=
X-Received: by 2002:a9d:3f44:: with SMTP id m62mr6532964otc.364.1602946793126;
 Sat, 17 Oct 2020 07:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <20201006202903.GA8346@linux> <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
 <20201017140508.GA3003212@kroah.com> <CAN+ihrpqYw_29OHpQHAxAadOFt8h3dovo-ZKMQN_OcbtEx4HcQ@mail.gmail.com>
In-Reply-To: <CAN+ihrpqYw_29OHpQHAxAadOFt8h3dovo-ZKMQN_OcbtEx4HcQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 17 Oct 2020 20:29:41 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLau+vAhJEmHWv0g6ncf_WKBAhiy54W8cciZ3r38YOnZg@mail.gmail.com>
Message-ID: <CAK-LDbLau+vAhJEmHWv0g6ncf_WKBAhiy54W8cciZ3r38YOnZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] media: staging: atomisp:
 Corrected error handling in function
To: leonf08 <leonf008@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4wfDD5vW9ZyZ6bJtf5oZ6TCo61BPPX4C88sYtLss2GSs+Am9SbuImj3DSsOy5Gc9Zuq1XyZe3B+PkAvbvvxjLVISUTzF6EfEYw0rMSN8S8ybsOGRGwJy1i
 kUWWVIq05THQVE13TdoHGU+qq+/KBg3VWujri02yPYiWqDf8zCvYT/efXUzuZSObP//NaQYgS5sFRraXhl8KJZ01Xj+O/B6ti+M=

On Sat, Oct 17, 2020 at 8:19 PM leonf08 <leonf008@gmail.com> wrote:
>
> Thanks a lot. I must haven=E2=80=99t noticed that.

Please avoid top-posting while replying to emails of
others. [Checkout 'Responding to emails' part of the
tutorial on kernelnewbies]

> =D1=81=D0=B1, 17 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 16:04, Greg KH <=
gregkh@linuxfoundation.org>:
>>
>> On Sat, Oct 17, 2020 at 03:58:41PM +0200, leonf08 wrote:
>> > Hello. I=E2=80=98ve sent recently my first two patches and haven=E2=80=
=99t received any
>> > feedback. Can I expect it. I=E2=80=99m a newbie in kernel contribution=
 process, so
>> > don=E2=80=99t know all the details.

I don't see any patches from you in the pending emails or
otherwise on the web interface of the list.

Anyway, I would suggest that you send new patches for some
other issues as it seems that your previous patches were fixing
things in staging/media. You can verify if they landed in the list
by checking on the web interface.

>> > Thanks.
>> >
>> > =D0=B2=D1=82, 6 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 22:29, Leonid =
Kushnir <leonf008@gmail.com>:
>> >
>> > > This patch fixes check of a result of 'power_up()' function call in
>> > > function 'gc0310_s_power()' to do "error handling" instead of "succe=
ss
>> > > handling" as Dan Carpenter noted in his comment on the previous patc=
h.
>> > > Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and dir=
ect
>> > > value of 'ret' is checked in IF statement now.
>> > >
>> > > Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
>> > > ---
>> > >  drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---
>>
>> As the instructions say, for patches in drivers/staging/media/*, there
>> is no guaranteed response time, and so it is not good to do work in
>> there for the outreachy application process.
>>
>> Please pick some other directory under drivers/staging/ that is not the
>> media/ subdir.
>>
>> Again, the instructions should already say that, I recommend reading it
>> again fully.
>>
>> thanks,
>>
>> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/CAN%2BihrpqYw_29OHpQHAxAadOFt8h3dovo-ZKMQN_OcbtEx4HcQ%40=
mail.gmail.com.



--=20
Vaishali


--=20
Vaishali

