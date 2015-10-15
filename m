X-GM-THRID: 6205449459620380672
X-Received: by 10.112.136.99 with SMTP id pz3mr1810235lbb.11.1444895410269;
        Thu, 15 Oct 2015 00:50:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.200 with SMTP id p191ls112859lfe.37.gmail; Thu, 15 Oct
 2015 00:50:09 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr1820029lbb.16.1444895409713;
        Thu, 15 Oct 2015 00:50:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id i8si439108wib.1.2015.10.15.00.50.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:50:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id p11so15867786wij.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KlyvnRMgE/tPVnhQiog+Yt3JdSGY5jCil2mb4o3OH6g=;
        b=Chn5u7LSbSTr2a7jpPAlzB+I6t0ity+bHLiEPQ61r7vRYv3gnEWjWi0EZVHWkVESgE
         x3PEt0d7wTMRtR8OgmTXC/FP8XbJpVm39BckyZvMrV2HiA4kK/JWlou9FbUM21F35eK1
         FWoRBFK6AaZhSjlB/M2AnBFOjnJ/NpR7BAq6mv0HX6CUvNMHSFOFY86SkuRa6LAyyFBi
         7ZG9tJBZ5X/uDeCNUowKjBNOrHEbON5/4ktX3C7Z+1MX80iCiBkbRVWro98hz2vYxv3v
         Cyt8u5/xqk+ilATt2K78RhQixizX7fbJDJD8HLSvPUv/IzVmpaqD//cfzA9Oi7aCruAI
         KO5w==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr9874859wjo.119.1444895409594; Thu,
 15 Oct 2015 00:50:09 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 00:50:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510150946350.2350@hadrien>
References: <20151014103256.GA4491@ubuntu>
	<20151015064749.GB3134@sudip-pc>
	<CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
	<20151015072210.GF3134@sudip-pc>
	<CAKHNQQGjoKNPz_M4SmYwHVrgkRvU3poLCeg8QrNt34S1VMyksQ@mail.gmail.com>
	<alpine.DEB.2.10.1510150946350.2350@hadrien>
Date: Thu, 15 Oct 2015 13:20:09 +0530
Message-ID: <CAKHNQQHND-GTfL8CTHVsU0_F+99_OfyB1oyh=CPcrOfcpEXfgg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 1:17 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 15 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Thu, Oct 15, 2015 at 12:52 PM, Sudip Mukherjee
>> <sudipm.mukherjee@gmail.com> wrote:
>> > On Thu, Oct 15, 2015 at 12:39:05PM +0530, Shivani Bhardwaj wrote:
>> >> On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
>> >> <sudipm.mukherjee@gmail.com> wrote:
>> >> > On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
>> >> >> The variables which are preceded by NULL tests on them should not be
>> >> >> checked again.
>> >> >> Semantic patch used:
>> >> >> @@ expression E;
>> >> >> statement S1, S2, S3; @@
>> >> >> if(E==NULL) {... return ...;}
>> >> >> else S1
>> >> >> - if(E==NULL)
>> >> >>   S2
>> >> >> - else S3
>> >> >>
>> >> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> >> ---
>> >> >> Changes in v2:
>> >> >>       -Correct the semantic patch and make commit message better.
>> >> >>
>> >> >>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>> >> >>  1 file changed, 9 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> index a4b6bb6..0ea521b 100644
>> >> >> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >> >>
>> >> >>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>> >> >>               /* encode mic code */
>> >> >> -             if (stainfo) {
>> >> >>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>> >> >>                                        0x0, 0x0, 0x0, 0x0,
>> >> >>                                        0x0, 0x0, 0x0, 0x0,
>> >> >
>> >> > Now this indention is looking wrong.
>> >> >
>> >> > regards
>> >> > sudip
>> >> Is it also supposed to be a part of the same patch or a series should be made?
>> >
>> > same patch as that indention problem is caused as "if (stainfo) {" is
>> > removed. But can the cocci script handle that? maybe you need to modify
>> > the indention by hand, and mention that in the commit message.
>> >
>> > regards
>> > sudip
>>
>> I don't know if cocci script can do that. I'll have to ask Julia.
>> Anyway, I'll make the changes by hand.
>
> Coccinelle is supposed to clean up the indentation, but it seems that it
> is not.  Could you send me your semantic patch, and I will check on it.
>
> thanks,
> julia

I just used the script to detect null tests. I used
http://coccinelle.lip6.fr/rules/notnull.cocci .
I still don't know well about making changes to cocci scripts. :(

