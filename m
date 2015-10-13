X-GM-THRID: 6202672545102036992
X-Received: by 10.112.136.99 with SMTP id pz3mr6938457lbb.11.1444737280394;
        Tue, 13 Oct 2015 04:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.4 with SMTP id t4ls1034724wiz.45.canary; Tue, 13 Oct
 2015 04:54:39 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr4147535wib.2.1444737279973;
        Tue, 13 Oct 2015 04:54:39 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id c7si705707wiy.3.2015.10.13.04.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q12so27918386wie.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=bdp3GxeM9C9lthDWmUhJn9e7wFfMgRUT5tMNHvo+UGc=;
        b=dTVxV58x0j9dcqma4iEwAR0vnOq/e6yBiZDoNJ2KKPXbaJH5o0x436Tvfe/0Ui99Zf
         Xavbk1yjKUZefPYJPBMEPa1qtswOGdQK2fQydCK8UrsRdGL4m7/+2M2oJdcFZutCFy4R
         8kl1mg22OidxhXCAIyt1ncNcdZgxfO8vD+8DKhcpGyT7frTYwAKE2xKJ7INpKbwKko33
         T+s3OJzZLdx+2wXORsn8aPIAd0HqhzP8zhudN2lysZNw91MfaA6xZlHmwbjn872Psub7
         uA37+egsqRI1P+jQg74c0RUJqTkBDBAGTnltuvW4KVagC/VGDGeRgE3nca9svd9srjH8
         eOzA==
MIME-Version: 1.0
X-Received: by 10.194.202.137 with SMTP id ki9mr34789137wjc.16.1444737279648;
 Tue, 13 Oct 2015 04:54:39 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Tue, 13 Oct 2015 04:54:39 -0700 (PDT)
In-Reply-To: <CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
	<CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
	<CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
	<alpine.DEB.2.10.1510131155580.2391@hadrien>
	<CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com>
Date: Tue, 13 Oct 2015 14:54:39 +0300
Message-ID: <CAEnQRZDzCzABtDYC8bEetjj3O7hZNC1CHaDZq6oVY2zZVDb08w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 13, 2015 at 1:05 PM, Ioana Ciornei <ciorneiioana@gmail.com> wro=
te:
> On Tue, Oct 13, 2015 at 12:56 PM, Julia Lawall <julia.lawall@lip6.fr> wro=
te:
>>
>>
>> On Tue, 13 Oct 2015, Ioana Ciornei wrote:
>>
>>> On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com=
> wrote:
>>> >
>>> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.co=
m> wrote:
>>> > > Indent parameters and arguments passed to function calls to match
>>> > > open paranthesis
>>> > >
>>> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>>> > > ---
>>> > > Changes in v2:
>>> > >     - nothing
>>> > > Changes in v3:
>>> > >     - rework changes in order to avoid introducing new checkpatch w=
arnings
>>> > >
>>> >
>>> > <snip>
>>> >
>>> > > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_sta=
te *st)
>>> > >                         st->iio_attr[cnt].dev_attr.store =3D
>>> > >                                 ad7280_store_balance_sw;
>>> > >                         st->iio_attr[cnt].dev_attr.attr.name =3D
>>> > > -                               kasprintf(GFP_KERNEL,
>>> >
>>> > This line looks good to me as it is. Is there any particular reason
>>> > for which you we want GFP_KERNEL to be moved on the next line?
>>> >
>>>
>>> I chose to move kasprintf on the next line and all the others
>>> arguments also in order to improve readability.
>>> I had to choose between leaving the kasprintf where it was and
>>> properly align the arguments to match the open bracket but
>>> cross the 80 char limit or moving the kasprintf call on the next line
>>> so the arguments are somewhat distinguishable.
>>>
>>> Was this a bad call?
>>
>> It's not really normal to see the first argument on a different line.
>> Do the other arguments not fit if they are lines up with the right side =
of
>> the (?  Perhaps it is possible to break up the longer arguments more so
>> that they fit better?
>>
>
> The first argument fits, the problem is with the other ones.
> Well, now that I think of... yes there is a solution to this.
> If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
> the problems would be solved.
>
> Is this a proper way to handle it?


There will be one line of 81 chars. This is ok in my opinion.

As an alternative, we can move the closing parenthesis on a new line
but this is ugly:

=C2=BB       =C2=BB       =C2=BB       =C2=BB       kasprintf(GFP_KERNEL,
=C2=BB       =C2=BB       =C2=BB       =C2=BB       =C2=BB
"in%d-in%d_balance_switch_en",
=C2=BB       =C2=BB       =C2=BB       =C2=BB       =C2=BB         dev * AD=
7280A_CELLS_PER_DEV + ch,
=C2=BB       =C2=BB       =C2=BB       =C2=BB       =C2=BB         dev * AD=
7280A_CELLS_PER_DEV + ch + 1
=C2=BB       =C2=BB       =C2=BB       =C2=BB       =C2=BB         );


So, let's go with having a line with 81 chars.

thanks,
Daniel.

