X-GM-THRID: 6399943776789331968
X-Received: by 10.28.193.199 with SMTP id r190mr50425wmf.9.1490119053034;
        Tue, 21 Mar 2017 10:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.101 with SMTP id h98ls549396ljh.2.gmail; Tue, 21 Mar
 2017 10:57:32 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr5132630ljd.14.1490119052111;
        Tue, 21 Mar 2017 10:57:32 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id x188si898562wmx.0.2017.03.21.10.57.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:57:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [10.145.117.233] (82-132-219-38.dab.02.net [82.132.219.38])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 99D534038F;
	Tue, 21 Mar 2017 17:57:24 +0000 (GMT)
Date: Tue, 21 Mar 2017 17:57:22 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.DEB.2.20.1703211826110.3785@hadrien>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com> <20170321160348.GA1859@d830.WORKGROUP> <CA+XqjF9dVy33Dsv0H2z8xtaNeMOW7SQgr4qa4wLwz6xFNVTsUA@mail.gmail.com> <alpine.DEB.2.20.1703211738500.3785@hadrien> <20170321170221.GB2793@d830.WORKGROUP> <CA+XqjF8Lsjf_55z+KdsWTxdGubG5PO1PYOY_N4wZDNrSNEBYBg@mail.gmail.com> <alpine.DEB.2.20.1703211826110.3785@hadrien>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [PATCH 0/2] IIO coding tasks
To: Julia Lawall <julia.lawall@lip6.fr>,Arushi Singhal <arushisinghal19971997@gmail.com>
CC: Alison Schofield <amsfield22@gmail.com>,Jonathan Cameron <jic23@kernel.org>,Hartmut Knaack <knaack.h@gmx.de>,outreachy-kernel@googlegroups.com,Michael Hennerich <Michael.Hennerich@analog.com>,lars@metafoo.de,Greg KH <gregkh@linuxfoundation.org>,speakup@linux-speakup.org,driverdevel <devel@driverdev.osuosl.org>,linux-kernel@vger.kernel.org,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <10EF084D-7EC6-493D-98D1-26B70E67771D@jic23.retrosnub.co.uk>



On 21 March 2017 17:27:02 GMT+00:00, Julia Lawall <julia=2Elawall@lip6=2Ef=
r> wrote:
>
>
>On Tue, 21 Mar 2017, Arushi Singhal wrote:
>
>>
>>
>> On Tue, Mar 21, 2017 at 10:32 PM, Alison Schofield
><amsfield22@gmail=2Ecom>
>> wrote:
>>       On Tue, Mar 21, 2017 at 05:39:38PM +0100, Julia Lawall wrote:
>>       >
>>       >
>>       > On Tue, 21 Mar 2017, Arushi Singhal wrote:
>>       >
>>       > > On Tue, Mar 21, 2017 at 9:33 PM, Alison Schofield
>>       <amsfield22@gmail=2Ecom>
>>       > > wrote:
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Mar 21, 2017 at 07:00:17PM =
+0530, Arushi
>>       Singhal wrote:
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0> Patchseries of IIO coding tasks
>>       > >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0This wouldn't be a patchset=2E=C2=
=A0 Although they touch the
>>       same
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0driver, the changes are unrelated=
=2E=C2=A0 See more below=2E=2E=2E
>>       > >
>>       > > This I have send as a Patchset because as you have
>mentioned
>>       below that the
>>       > > [PATCH 2/2] was already done before by someone but I think
>>       so it is not yet
>>       > > applied in the Greg's tree yet=2ESo I have done both the
>>       changes and as they
>>       > > should be applied one after other so that's why I have send
>>       them as
>>       > > Patchset=2E
>>       >
>>       > For the IIO patches, it is better to work on the IIO tree,
>not
>>       Greg's=2E
>>       > Greg manages staging, not IIO=2E=C2=A0 The IIO patches should a=
ppear
>>       in Greg's
>>       > tree eventually=2E
>>       >
>>       > julia
>>
>>       We didn't direct applicants to create an iio tree=2E=C2=A0 At thi=
s
>>       point,
>>       it seems more than is necessary=2E=C2=A0 They can follow the
>directions
>>       in the
>>       task descriptions and avoid the collisions=2E
>>
>>       Of course, they are welcome to create a tree to iio/testing=2E
>>
>>       (IMHO it's more overhead/busy work and maybe not the best use
>>       of time in the home stretch of the application period=2E)
>>
>>       alisons
>>
>>
>> Hi Alison
>> As you have mentioned that my [PATCH 2/2] is already being done
>someone=2E So
>> how can I make the changes of [PATCH 1/2] on top of it as [PATCH 2/2]
>is not
>> yet applied on the staging tree=2E
>
>Make a patch that applies to the current state of the IIO tree=2E  Just
>clone that one like you cloned the staging one=2E
>
>julia
>
Slight amendment,=2E Normally would be the togreg branch which doesn't reb=
ase=2E

With all the current churn might be best to use the testing branch and i w=
ill fix up any issues if i
 have to rebase as result of build tests=2E

Will=2Esend Greg a pull later anyway, so should be less difference after h=
e pulls that=2E

J
>> Please suggest me=2E
>> Thanks
>> Arushi
>>       >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0> Arushi Singhal (2):
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>=C2=A0 =C2=A0staging: ad7759: Repl=
ace mlock with driver
>private
>>       lock
>>       > >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0This one is already been submitted=
=2E=C2=A0 If you have a v2
>>       for it,
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0then v2
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0the original patch=2E
>>       > >
>>       > > Is it submitted by me only before? And this is not the v2=2E
>>       > > I have just resed it=2E
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>=C2=A0 =C2=A0staging: iio: ade7759=
: Move header content to
>>       implementation
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0file
>>       > >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0This patch is done and applied alre=
ady=2E=C2=A0 See the
>>       Coding Task #1
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0notes
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0in the IIO Tasks page=2E
>>       > >
>>       > > Not at applied I think so=2E
>>       > > Thanks
>>       > > Arushi
>>       > >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0alisons
>>       > >
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>=C2=A0 drivers/staging/iio/meter/a=
de7759=2Ec=C2=A0 =C2=A0| 56
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0+++++++++++++++++++++++++++++++++--
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>=C2=A0 drivers/staging/iio/meter/a=
de7759=2Eh=C2=A0 =C2=A0| 53
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------------
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>=C2=A0 2 files changed, 54 inserti=
ons(+), 57 deletions(-)
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0> --
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0> 2=2E11=2E0
>>       > >=C2=A0 =C2=A0 =C2=A0 =C2=A0>
>>       > > > --
>>       > > > You received this message because you are subscribed to
>>       the Google
>>       > > Groups "outreachy-kernel" group=2E
>>       > > > To unsubscribe from this group and stop receiving emails
>>       from it,
>>       > > send an email to
>>       outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>>       > > > To post to this group, send email to
>>       > > outreachy-kernel@googlegroups=2Ecom=2E
>>       > > > To view this discussion on the
>webvisithttps://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/2017032113=
3021=2E6737
>>       -1-ar
>>       > > ushisinghal19971997%40gmail=2Ecom=2E
>>       > > > For more options, visit
>>       https://groups=2Egoogle=2Ecom/d/optout=2E
>>       > >
>>       > >
>>       > > --
>>       > > You received this message because you are subscribed to the
>>       Google Groups
>>       > > "outreachy-kernel" group=2E
>>       > > To unsubscribe from this group and stop receiving emails
>>       from it, send an
>>       > > email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>>       > > To post to this group, send email to
>>       outreachy-kernel@googlegroups=2Ecom=2E
>>       > > To view this discussion on the
>webvisithttps://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/CA%2BXqjF9=
dVy33Dsv0
>>       H2z8x
>>       > > taNeMOW7SQgr4qa4wLwz6xFNVTsUA%40mail=2Egmail=2Ecom=2E
>>       > > For more options, visit https://groups=2Egoogle=2Ecom/d/optou=
t=2E
>>       > >
>>       > >
>>
>>
>>
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

