X-GM-THRID: 6205449459620380672
X-Received: by 10.181.29.103 with SMTP id jv7mr1883954wid.0.1444895111790;
        Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.138 with SMTP id p10ls301541wik.21.gmail; Thu, 15 Oct
 2015 00:45:11 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1762015wjb.5.1444895111478;
        Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id i8si437670wib.1.2015.10.15.00.45.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id p11so15378652wij.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kF2Th66VtPSz8DeTD00g0Bush2LGt6cIdC58gfLB8W8=;
        b=bA2DlMN/Dhyp7PNteopHkTRl1eSJ6Ii3z6L1ys5e4jvLTq350rrxDCbfoWsjIhAHRR
         ogVVdvbzk8A+8e0NaWmGRiwbepGcW8usawGsTPYLTbckuaZsVUmxoxk5C6WHBRYeusw1
         Z7CMdDtSLIXDBZasQIa7ShXy+WnKjYcNX1fAqyCVZXImejMrvBMSkNPcuG/QkZLVWQWx
         e1JDYU5+oO1nz4bRtN09b9vRXWky5fBPGEdLkXqeH+THconytjZejjDX3ypjZGOrLvYc
         zZJH0tuqv8G3krKhMxCQO0jvmXfqTGRDrss/f4hHtzGKV8SP8zHmpocFmlFFzDPvu1/F
         j11A==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr8986014wjb.86.1444895111378;
 Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 00:45:11 -0700 (PDT)
In-Reply-To: <20151015072210.GF3134@sudip-pc>
References: <20151014103256.GA4491@ubuntu>
	<20151015064749.GB3134@sudip-pc>
	<CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
	<20151015072210.GF3134@sudip-pc>
Date: Thu, 15 Oct 2015 13:15:11 +0530
Message-ID: <CAKHNQQGjoKNPz_M4SmYwHVrgkRvU3poLCeg8QrNt34S1VMyksQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 12:52 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Thu, Oct 15, 2015 at 12:39:05PM +0530, Shivani Bhardwaj wrote:
>> On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
>> <sudipm.mukherjee@gmail.com> wrote:
>> > On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
>> >> The variables which are preceded by NULL tests on them should not be
>> >> checked again.
>> >> Semantic patch used:
>> >> @@ expression E;
>> >> statement S1, S2, S3; @@
>> >> if(E==NULL) {... return ...;}
>> >> else S1
>> >> - if(E==NULL)
>> >>   S2
>> >> - else S3
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>       -Correct the semantic patch and make commit message better.
>> >>
>> >>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>> >>  1 file changed, 9 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> index a4b6bb6..0ea521b 100644
>> >> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >>
>> >>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>> >>               /* encode mic code */
>> >> -             if (stainfo) {
>> >>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>> >>                                        0x0, 0x0, 0x0, 0x0,
>> >>                                        0x0, 0x0, 0x0, 0x0,
>> >
>> > Now this indention is looking wrong.
>> >
>> > regards
>> > sudip
>> Is it also supposed to be a part of the same patch or a series should be made?
>
> same patch as that indention problem is caused as "if (stainfo) {" is
> removed. But can the cocci script handle that? maybe you need to modify
> the indention by hand, and mention that in the commit message.
>
> regards
> sudip

I don't know if cocci script can do that. I'll have to ask Julia.
Anyway, I'll make the changes by hand.

