X-GM-THRID: 6392397624378392576
X-Received: by 10.25.202.67 with SMTP id h3mr669034lfj.30.1488955624010;
        Tue, 07 Mar 2017 22:47:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls256643lja.1.gmail; Tue, 07 Mar 2017
 22:47:02 -0800 (PST)
X-Received: by 10.46.7.80 with SMTP id i16mr720603ljd.5.1488955622366;
        Tue, 07 Mar 2017 22:47:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si245379wmg.0.2017.03.07.22.47.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 22:47:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="263618046"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 07:47:01 +0100
Date: Wed, 8 Mar 2017 07:47:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: iio: ad7280a: Group
 similar macros into enums
In-Reply-To: <CAKG5xWiuKm2VboRAR2ALz+SnHPbcBTQvH2Hw+Rpkfm2P+GK2Qg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703080736250.2108@hadrien>
References: <20170307191112.GA29306@sayli-HP-15-Notebook-PC> <20170307191746.GA22068@kroah.com> <CAKG5xWiuKm2VboRAR2ALz+SnHPbcBTQvH2Hw+Rpkfm2P+GK2Qg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-425489450-1488955622=:2108"

--8323329-425489450-1488955622=:2108
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 8 Mar 2017, sayli karnik wrote:

>
>
> On Wed, Mar 8, 2017 at 12:47 AM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Wed, Mar 08, 2017 at 12:41:12AM +0530, sayli karnik wrote:
> >> The patch groups similar macros into enum data types.
> >
> > Why?
> >
> > What benefit does this provide?
> As suggested by Lars, I converted the macros to an enum data type, so that
> it is clear what their function is-
> https://groups.google.com/d/msg/outreachy-kernel/VM6Wu-fJVfQ/VngpohNBAwAJ
>
> >
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >> Changes in v2:
> >> Corrected the order of both the enums.
> >> Used enum data type names instead of unsigned int inside struct
> >> ad7280_platform_data.
> >>
> >>  drivers/staging/iio/adc/ad7280a.h | 24 ++++++++++++++----------
> >>  1 file changed, 14 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/adc/ad7280a.h
> b/drivers/staging/iio/adc/ad7280a.h
> >> index ccfb90d..e22694f 100644
> >> --- a/drivers/staging/iio/adc/ad7280a.h
> >> +++ b/drivers/staging/iio/adc/ad7280a.h
> >> @@ -13,15 +13,19 @@
> >>   * TODO: struct ad7280_platform_data needs to go into include/linux/iio
> >>   */
> >>
> >> -#define AD7280A_ACQ_TIME_400ns                       0
> >> -#define AD7280A_ACQ_TIME_800ns                       1
> >> -#define AD7280A_ACQ_TIME_1200ns                      2
> >> -#define AD7280A_ACQ_TIME_1600ns                      3
> >> +enum ad7280a_acq_time {
> >> +     AD7280A_ACQ_TIME_400ns = 0,
> >> +     AD7280A_ACQ_TIME_800ns,
> >> +     AD7280A_ACQ_TIME_1200ns,
> >> +     AD7280A_ACQ_TIME_1600ns,
> >
> > Before your change, you instantly knew that the 1600ns value needed to
> > be 3.  Now I need to count an enum.  Does this seem like a better
> > change?
>
> Hmm we do need to count.
> But,
> -I feel grouping into an enum organizes similar #defines in a better way.
>
> -You get free compile time checking of valid values using enums. For example
>
> public static int VALUE_ONE = 0;
> public static int VALUE_TWO = 1;
>
> does not ensure,
>
> void selectOption(int value) {
> ...
> }
> will only accept 0 or 1 as a parameter value. Using an enum, that is
> guaranteed.

Regrettably in C it is not.

Still, using enums does make it possible to design tools that do such
checking.  With a random bunch of defines it is less clear what goes with
what.

>
> -Also it avoids the repetitive #defines.
>
> >Are you _sure_ the compiler sets the values properly?

Page 105 of this document

WG14/N1256 Committee Draft — Septermber 7, 2007 ISO/IEC 9899:TC3
http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1256.pdf

says:

An enumerator with = defines its enumeration constant as the value of the
constant expression.  If the first enumerator has no =, the value of its
enumeration constant is 0. Each subsequent enumerator with no = defines
its enumeration constant as the value of the constant expression obtained
by adding 1 to the value of the previous enumeration constant.


One could also check whether the actual value is important, eg the
constant is passed to a device, or if it is just used as an internal flag.

julia

> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWiuKm2VboRAR2ALz%2
> BSnHPbcBTQvH2Hw%2BRpkfm2P%2BGK2Qg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-425489450-1488955622=:2108--

