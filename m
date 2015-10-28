X-GM-THRID: 6210381585761435648
X-Received: by 10.50.134.199 with SMTP id pm7mr2561950igb.0.1446043948093;
        Wed, 28 Oct 2015 07:52:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.65 with SMTP id 62ls533850ion.83.gmail; Wed, 28 Oct
 2015 07:52:27 -0700 (PDT)
X-Received: by 10.66.253.37 with SMTP id zx5mr26549738pac.37.1446043947630;
        Wed, 28 Oct 2015 07:52:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id m7si1288791ywe.1.2015.10.28.07.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 07:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qgem9 with SMTP id m9so8253765qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3xm/ZfV2a4ffJ0PWY411s9tmJa1tc4QHjB1L06m7vPU=;
        b=C7vFEzoJNdZd2fSBINix08mNMTP/1Tj9dT5xwCTRi1KxHY2RjmKFB1RYYOI3erEZKh
         VjqOFRpKv9cX2Nmd+NIfPwdnK5VujP91TFPwS6k6Xko2PhbGUnYqYE+gSOywEPcR68lZ
         q2hl/xwfS2W/u/LKwf34undyQGPJzC6mHxqL4ZSyagNcvURvm5JavIHVzU2ETg4j7Rgl
         PF6cwoUYtPHe901fohBycReKEwt/ILEPSXL1N1s606bcNq6VPr02VDc/i9yCCbTSEPs0
         uk1h80hvt+iUNEqnrHBxm7sYF5MTVsugCGC8ilr8aFMKlNa4UbCb75jQ4dZdsHObRGHV
         8MKQ==
MIME-Version: 1.0
X-Received: by 10.140.91.135 with SMTP id z7mr24684666qgd.91.1446043947370;
 Wed, 28 Oct 2015 07:52:27 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 28 Oct 2015 07:52:27 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510281504190.2456@hadrien>
References: <cover.1445966850.git.amitoj1606@gmail.com>
	<fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510281027490.2456@hadrien>
	<CA+5yK5GM1eLSCVEN-3HBCqSrPu0=hBxcQAG9k6z0H6VW4g2UUg@mail.gmail.com>
	<alpine.DEB.2.10.1510281504190.2456@hadrien>
Date: Wed, 28 Oct 2015 20:22:27 +0530
Message-ID: <CA+5yK5Fdoe58dqvzCCj6HeeD=3-QXOd8Y1yCRmiaHpZ_twBofQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8188eu: core: Remove
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 28, 2015 at 7:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 28 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> On Wed, Oct 28, 2015 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> >
>> > On Tue, 27 Oct 2015, Amitoj Kaur Chawla wrote:
>> >
>> > > Remove wrapper function that can be replaced by a single line of code.
>> > >
>> > > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> > > ---
>> > >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++++++---------------
>> > >  1 file changed, 9 insertions(+), 15 deletions(-)
>> > >
>> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> > > index 0270755..fec9ce1 100644
>> > > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> > > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> > > @@ -701,12 +701,6 @@ exit:
>> > >       return ret;
>> > >  }
>> > >
>> > > -static inline void issue_probereq(struct adapter *padapter,
>> > > -                               struct ndis_802_11_ssid *pssid, u8 *da)
>> > > -{
>> > > -     _issue_probereq(padapter, pssid, da, false);
>> > > -}
>> >
>> > If issue_probereq is not going to be used, then maybe _issue_probereq
>> > should be renamed as issue_probereq?  Is _issue_probereq actually ever
>> > called with something other than false as the last argument?
>>
>> I can rename it to issue_probereq.
>>
>> It isn't called anywhere with something other than false.
>> Your thoughts?
>
> If you are sure that the argument is always false, maybe it could be
> simplified away.  It looks like the whole setup with the _ was a hack to
> allow that value to vary in some case, but maybe it isn't needed any more.
>
> julia

In the function _issue_probereq there's an if condition based on the
argument that is always false. So we can remove the if condition for
the argument being true.

-- 
Amitoj

