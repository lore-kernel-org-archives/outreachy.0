X-GM-THRID: 6204754090721804288
X-Received: by 10.180.210.71 with SMTP id ms7mr3033081wic.4.1444663462028;
        Mon, 12 Oct 2015 08:24:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.207 with SMTP id r198ls545580lfg.40.gmail; Mon, 12 Oct
 2015 08:24:21 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr5703355lbb.12.1444663461406;
        Mon, 12 Oct 2015 08:24:21 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id c7si507397wiy.3.2015.10.12.08.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id gb1so153519277wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FZbdY/Y9pH09JUa+uKlcT4HihEJBoulaFQFAgM95KFY=;
        b=Ewhwp2eErRIELxPyawIA9aYXO9EDcRhD8scpOMdbgFTRHPI7vwmsUv0E2rmZAotADl
         11TRNz5zCa6kNRUg0P/uSiyQQwgpXfTZpM2snOP4tXD5fuLn9Tjltv1o/Ukxd7vVtjHP
         Ipz9ykJ+1v3pl/mhku800t+bQHt2c0ys00yGvdi+2gJZgN68MLiQY5TzEzzfFCIpknW+
         LcIDCKDTFDcnsXn6lscnuQG8sJ171G2LyRpLIqtcf7AFfV237XPX5cLwpJF+3X5PVu0/
         D93+mhvVFojreFmL/Rg95SKBzpo/0P2O5FvAXTcnGO2nJxgDXE7uPTZZgGLX3J9ws2kb
         PSyw==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr14144495wiz.66.1444663461285;
 Mon, 12 Oct 2015 08:24:21 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 08:24:21 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510121624330.2652@hadrien>
References: <cover.1444655924.git.shivanib134@gmail.com>
	<d8f8cff7018b0c9905df40eaa754b53e8164324e.1444655924.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510121542430.2652@hadrien>
	<CAKHNQQGJM7VqEQnwgPjKBqQQGf8ukrB4_JX=t21F5phcf3NnAw@mail.gmail.com>
	<alpine.DEB.2.10.1510121624330.2652@hadrien>
Date: Mon, 12 Oct 2015 20:54:21 +0530
Message-ID: <CAKHNQQGF2-ykv+s9H37hmTcJs347-s3G_aPNL34faro40OaiLQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: host_interface:
 Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 7:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Mon, Oct 12, 2015 at 7:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> Remove declaration and initialization of variables that are not used
>> >> anywhere in the code.
>> >> Issue found using coccinelle.
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >>  drivers/staging/wilc1000/host_interface.c | 4 ----
>> >>  1 file changed, 4 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
>> >> index b6eea9a..9e8bbc1 100644
>> >> --- a/drivers/staging/wilc1000/host_interface.c
>> >> +++ b/drivers/staging/wilc1000/host_interface.c
>> >> @@ -4894,7 +4894,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>> >>       s32 s32Error = 0;
>> >>       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> >>       struct host_if_msg msg;
>> >> -     tenuScanConnTimer enuScanConnTimer;
>> >
>> > Got grep shows me only three uses of "tenuScanConnTimer".  One is the
>> > typedef, and the other two are removed by your patch.  So you could redo
>> > the patch and get rid of the typedef as well.
>> >
>> > Looking a bit more at the code, I see the following, which looks strange:
>> >
>> > tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> >
>> > As far as I can tell, hWFIDrv already has type tstrWILC_WFIDrv, so the
>> > cast is not necessary.  And it seems strange to have the two tests, first
>> >
>> > if (pstrWFIDrv == NULL || pfConnectResult == NULL)
>> >
>> > and then
>> >
>> > if (hWFIDrv == NULL)
>> >
>> > because the second one tests a subset of what the first one tests.
>> >
>> > Greg would also say that we don't need the type names embedded in the
>> > variable names either, but that would be a lot to change, especially since
>> > it impacts the field names too.
>> >
>> > In Coccinelle, you can make an expression metavariable that matches
>> > expressions of a particular type.  So
>> >
>> > @@
>> > type T;
>> > T e;
>> > identifier x;
>> > @@
>> >
>> > * T x = (T)e;
>> >
>> > will highlight initializations with useless casts.
>> >
>> > julia
>> >
>>
>> Thanks so much, Julia. I'm applying all of this. Thank you for the
>> coccinelle script. Also, I want to know that I've been notified about
>> one of the patch of this series that it was sent before and has not
>> been applied. So, should I send an entirely new patch series removing
>> that one or even parts of the series can be applied to the tree?
>
> Since it is all on one file, maybe the best is to send a v2 of the series
> with the redundant patch removed, the patch that removes the variable
> declaration updated to remove the type too, and as much of the rest as you
> want to do in the short term.
>
> julia

OK. Thanks. I'm sending v2.

