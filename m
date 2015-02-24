X-GM-THRID: 3247770173440
X-Received: by 10.180.87.166 with SMTP id az6mr2343306wib.1.1424806332316;
        Tue, 24 Feb 2015 11:32:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.34 with SMTP id ir2ls224518lac.84.gmail; Tue, 24 Feb
 2015 11:32:11 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr2388549lbb.19.1424806331750;
        Tue, 24 Feb 2015 11:32:11 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x235.google.com (mail-lb0-x235.google.com. [2a00:1450:4010:c04::235])
        by gmr-mx.google.com with ESMTPS id mv2si4085839lbc.0.2015.02.24.11.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 11:32:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) client-ip=2a00:1450:4010:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x235.google.com with SMTP id z11so27285592lbi.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 11:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=TGU0vK4G8AHSfJey46S5Pc+YU33X53dvXBwh1wiH2kc=;
        b=hloDQwS8VAqNrjO5FWqFcJu6lcaCwiMSfpC+BJ2getnZh9LagOzjZFnfqN256Hgjd1
         heYpK806BXOJwxHloki+owbHfJ+yERPIpUB1LcA/Z0kLFGh1ZPIoQ+Df8RmBXBnQMlI5
         b6Gesb6G+5FUdZOO3AvEf8jfKwgu+KKPkkMRCQ3fByOuodGpAME3XR7uB8/KYzPulN9e
         mYQg/eX8UzDO5yOrRtallw0S/uf3/aTW9My5O/T32k5hP7W9w+MniDRwHee7WM4NKNBx
         VBX3xym9hSkjpV1Dnc6J324f6MOIRWyV7ailWFllrQkufcrHe/KPjkNiD+2hGvWTqnBs
         6VWQ==
MIME-Version: 1.0
X-Received: by 10.112.181.231 with SMTP id dz7mr15174907lbc.47.1424806331648;
 Tue, 24 Feb 2015 11:32:11 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Tue, 24 Feb 2015 11:32:11 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502242028410.2049@localhost6.localdomain6>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
	<f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com>
	<23670050.lCeLkYodT8@wuerfel>
	<CAL7P5jJsPdvWTmWrBQucp8w9wJaCUGX_rEQVE37AypWEuGzB0A@mail.gmail.com>
	<alpine.DEB.2.02.1502242028410.2049@localhost6.localdomain6>
Date: Tue, 24 Feb 2015 20:32:11 +0100
Message-ID: <CAL7P5jJNq-6Tzy3YzuS0DTgEsDcRCjtdp9An6oY7mTqNLaFiXg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/6] Staging: rtl8192u: Remove TRUE and
 FALSE macros
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2015 at 8:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 24 Feb 2015, Ksenija Stanojevi=C4=87 wrote:
>
>> On Tue, Feb 24, 2015 at 8:03 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> >
>> > On Tuesday 24 February 2015 18:30:30 Ksenija Stanojevic wrote:
>> > > Remove TRUE and FALSE boolean macros, since Linux kernel has already=
 a
>> > > boolean type, bool, defined in linux/stddef.h
>> > >
>> > > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> > > ---
>> > >  drivers/staging/rtl8192u/r8192U.h | 2 --
>> > >  1 file changed, 2 deletions(-)
>> > >
>> > > diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl=
8192u/r8192U.h
>> > > index c9d8c10..6c2e438 100644
>> > > --- a/drivers/staging/rtl8192u/r8192U.h
>> > > +++ b/drivers/staging/rtl8192u/r8192U.h
>> > > @@ -40,8 +40,6 @@
>> > >  #define RTL8192U
>> > >  #define RTL819xU_MODULE_NAME "rtl819xU"
>> > >  /* HW security */
>> > > -#define FALSE 0
>> > > -#define TRUE 1
>> > >  #define MAX_KEY_LEN     61
>> > >  #define KEY_BUF_SIZE    5
>> >
>> > The patches in this series all look good to me, but the order is wrong=
:
>> > You should first change all users of the macro and remove it in the fi=
nal
>> > patch. Alternatively you could submit a single larger patch to do it
>> > all at once. There is not really a reason to split it up by file if
>> > all the changes are for the same driver and are completely trivial.
>> >
>> >         Arnd
>>
>> Ok,  but should I also change TRUE and FALSE to true and false in
>>  commented code?
>
> Is there a lot of it?  One could consider whether it should just be
> removed.
>
> julia

Only at few places there are instances of TRUE, FALSE,
but  there is a lot of commented code.

