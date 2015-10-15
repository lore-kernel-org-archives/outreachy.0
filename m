X-GM-THRID: 6205449459620380672
X-Received: by 10.13.225.21 with SMTP id k21mr6337294ywe.43.1444893737196;
        Thu, 15 Oct 2015 00:22:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.36 with SMTP id tp4ls297529obb.72.gmail; Thu, 15 Oct
 2015 00:22:16 -0700 (PDT)
X-Received: by 10.182.33.97 with SMTP id q1mr5141114obi.45.1444893736919;
        Thu, 15 Oct 2015 00:22:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id el2si1320499pbb.0.2015.10.15.00.22.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id p3so31428316pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=J9x4eHlhjM3ebR9klMA1ARy+cYxr9Gb1GQ3ApvdXuxs=;
        b=ZHtHPEOZbk32vSEFBjG/66BAnIG4tZ40yF6qM8FuhHP8eO07y6r2x+Yv0ML0M3OtNY
         48LLRCI3RGNFPBZfafTw7lcJECr7BRc8qPey2WQhVPl5M8evtHYychgl+mGxGaflORXH
         uxm/ofx+gZ5esb7QdIFQ2CuBhm96qg80uIpo+BI3x6MFZVzne949eBg0ofgnGHw4+pl6
         uWUjurVqmNcL78EF7s3JIHowu26Wa8F7CUYbhei0faV5yxK/Zrfwdwc5Sktlm8O8MS74
         BgBSHubMugwr1uCuCIlm04Z8gw9TZzPmCkdUC0HvqMjtkMek3+3MkHmp32thzBeT/6Mx
         ENAQ==
X-Received: by 10.68.226.196 with SMTP id ru4mr8463524pbc.107.1444893736750;
        Thu, 15 Oct 2015 00:22:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.135.176])
        by smtp.gmail.com with ESMTPSA id ln10sm13549199pab.29.2015.10.15.00.22.15
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 00:22:16 -0700 (PDT)
Date: Thu, 15 Oct 2015 12:52:11 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
Message-ID: <20151015072210.GF3134@sudip-pc>
References: <20151014103256.GA4491@ubuntu>
 <20151015064749.GB3134@sudip-pc>
 <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 15, 2015 at 12:39:05PM +0530, Shivani Bhardwaj wrote:
> On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
> >> The variables which are preceded by NULL tests on them should not be
> >> checked again.
> >> Semantic patch used:
> >> @@ expression E;
> >> statement S1, S2, S3; @@
> >> if(E==NULL) {... return ...;}
> >> else S1
> >> - if(E==NULL)
> >>   S2
> >> - else S3
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >> Changes in v2:
> >>       -Correct the semantic patch and make commit message better.
> >>
> >>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
> >>  1 file changed, 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> index a4b6bb6..0ea521b 100644
> >> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
> >>
> >>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
> >>               /* encode mic code */
> >> -             if (stainfo) {
> >>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
> >>                                        0x0, 0x0, 0x0, 0x0,
> >>                                        0x0, 0x0, 0x0, 0x0,
> >
> > Now this indention is looking wrong.
> >
> > regards
> > sudip
> Is it also supposed to be a part of the same patch or a series should be made?

same patch as that indention problem is caused as "if (stainfo) {" is
removed. But can the cocci script handle that? maybe you need to modify
the indention by hand, and mention that in the commit message.

regards
sudip

