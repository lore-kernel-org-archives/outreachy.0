X-GM-THRID: 6802607426621145088
X-Received: by 2002:a17:907:2150:: with SMTP id rk16mr14793383ejb.0.1583872878290;
        Tue, 10 Mar 2020 13:41:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls1765804edd.7.gmail; Tue, 10 Mar
 2020 13:41:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsEEQ0Xi5BT9un1q930tK26mk70aaO6BorKM+dem+OrFxh2xJnVJQAesVZnFNSWjvSU9iQ9
X-Received: by 2002:aa7:dd4f:: with SMTP id o15mr7344021edw.359.1583872876845;
        Tue, 10 Mar 2020 13:41:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583872876; cv=none;
        d=google.com; s=arc-20160816;
        b=c3+GfOb5GXHSV4EK24P3hXKkZIk0KMErebjvSGMLTU4JZOVCKOZvgTdkDjuJ4hTvb9
         Pdtk4iYVCM7PBhyl9uaboWqDrJDnaThu+TrnmMkEO/vDDFSs4+0M+GzpPjsHI9mYHYZe
         qUArijpOKACUnyVmPY4KAbx5NtsnQ82IoDp0rBTYu0ctcDuGWta7ZCMHSK+Ed3EBr3bb
         xREUemr0eXMitW9EFsfHCA724R4g1KAgBt384RNCNuS95gayBmRtqF5mbGuFdA+D5Qzb
         g3sG2oKOQMrDZ7IvosR/jMbyCBC4a7z8uHM6kMM7UKqVT9H176h+dB949ZMIHMfYkBLL
         XnIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6lwnJrCegBUhhsfjdNwjuh1VGzNt7jw5ouZtlCqO+T0=;
        b=tO/TPfdTbqDM5eS641rLcuC80wayzhgU0mTGQXWjX5c2Y7FkeW+39PVVqajCoBPzgX
         nA79G8bAZVeSytZ0EPyRpaM9hcQyIjQwzlKksmSKbJ1kt7/FUX5fsqZyOeZA6xoJxyE4
         Jm9hHVwzO8MNsLZJtTzNN0Bw6bPcU4nwrxIYn8kxm8TCmboPlttwJIOrvoM87kHnt5/m
         qaU8QqTn4v3JxjfIPcQwqZA5V19eKnJdMjN9UZr+ddKVMMTfg4b4VsPlFQLVsg/jnOkk
         1ij0wOTUDmBJ0xasUu8C2OerdqbHuqFMxijoX/OdY6vWg2fjzkbt6+6BelheoxsRgzO2
         ancA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l21si449813edq.4.2020.03.10.13.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:41:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,538,1574118000"; 
   d="scan'208";a="341931234"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 21:41:16 +0100
Date: Tue, 10 Mar 2020 21:41:15 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging : comedi : dt2801 : remove
 old unused code
In-Reply-To: <b14f8972-f6c7-4ca6-8fe6-55fc3517a186@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003102139120.2313@hadrien>
References: <20200310155053.GA27759@deeUbuntu> <b14f8972-f6c7-4ca6-8fe6-55fc3517a186@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-666883780-1583872876=:2313"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-666883780-1583872876=:2313
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 10 Mar 2020, Deepak Varma wrote:

> True. I added those manually to be sure. Would you suggest I resubmit v4 or
> it is okay for now and should be taken care in my next submission???

Please stop top posting and please stop removing the comments that you are
replying to.  Your message should be self contained.  The person looking
at only the message should understand the whole context of what you are
saying.

I think you are asking about the extra ---.  Don't worry about it.

julia

>
> Thank you.
> Deepak.
>
> On Tuesday, 10 March 2020 21:21:05 UTC+5:30, Deepak Varma wrote:
>       there are 2 #if 0 blocks that have no recent history of any
>       change. We
>       can remove those code blocks for improved readability of the
>       code.
>
>       Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>       ---
>        drivers/staging/comedi/drivers/dt2801.c | 22
>       ----------------------
>        1 file changed, 22 deletions(-)
>
>       diff --git a/drivers/staging/comedi/drivers/dt2801.c
>       b/drivers/staging/comedi/drivers/dt2801.c
>       index a29880981d81..aad02faa2f83 100644
>       --- a/drivers/staging/comedi/drivers/dt2801.c
>       +++ b/drivers/staging/comedi/drivers/dt2801.c
>       @@ -87,17 +87,6 @@
>        #define DT2801_STATUS                1
>        #define DT2801_CMD                1
>        
>       -#if 0
>       -/* ignore 'defined but not used' warning */
>       -static const struct comedi_lrange range_dt2801_ai_pgh_bipolar =
>       {
>       -        4, {
>       -                BIP_RANGE(10),
>       -                BIP_RANGE(5),
>       -                BIP_RANGE(2.5),
>       -                BIP_RANGE(1.25)
>       -        }
>       -};
>       -#endif
>        static const struct comedi_lrange range_dt2801_ai_pgl_bipolar =
>       {
>                4, {
>                        BIP_RANGE(10),
>       @@ -107,17 +96,6 @@ static const struct comedi_lrange
>       range_dt2801_ai_pgl_bipolar = {
>                }
>        };
>        
>       -#if 0
>       -/* ignore 'defined but not used' warning */
>       -static const struct comedi_lrange range_dt2801_ai_pgh_unipolar
>       = {
>       -        4, {
>       -                UNI_RANGE(10),
>       -                UNI_RANGE(5),
>       -                UNI_RANGE(2.5),
>       -                UNI_RANGE(1.25)
>       -        }
>       -};
>       -#endif
>        static const struct comedi_lrange range_dt2801_ai_pgl_unipolar
>       = {
>                4, {
>                        UNI_RANGE(10),
>       --
>       2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/b14f8972-f6c7-4ca6-8fe6-
> 55fc3517a186%40googlegroups.com.
>
>
--8323329-666883780-1583872876=:2313--

