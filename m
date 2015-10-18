X-GM-THRID: 6207028887884398592
X-Received: by 10.180.89.41 with SMTP id bl9mr3179288wib.1.1445187617371;
        Sun, 18 Oct 2015 10:00:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.1 with SMTP id fw1ls456647wic.26.canary; Sun, 18 Oct
 2015 10:00:16 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr3179274wib.1.1445187616516;
        Sun, 18 Oct 2015 10:00:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id hs5si394252wib.1.2015.10.18.10.00.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fx6so20829724wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dnRN2A16UYcKgZ3kndurUbfYqQY8gfnwNeSD6Ops63I=;
        b=Xx83uXHpOayadw+ziO6t8Lsf9ClucC51ir6Z/bdYJLF103cgutUSn4BQ4tuWQ7CbC0
         vKalOJp2aI4u0RE68hrQ3cFONB76u+fgfVENhDS33YmWYAEfuEgjIVdsLCKXaE6RHne8
         Y7AxWh8USMLFNHQalDtkONOr/Om5oHeqT1RI5BbZfLyzIK0lwLu2v6KIS616S8ACrI1C
         9eZXdV86Kvc6zAjbeDerAXD4l4Ne1cx1rOvEW8LRbqy61Rgg8tt8bwVmPOuOJrSNiyGr
         0LPQ34/7uwhkJtRH+l6fuF1/x25xe/yFxnthIBeinqje5L7q9kwgWCy9Yp6S74zxgwwE
         /vAQ==
MIME-Version: 1.0
X-Received: by 10.180.189.102 with SMTP id gh6mr14961417wic.95.1445187616420;
 Sun, 18 Oct 2015 10:00:16 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 10:00:16 -0700 (PDT)
In-Reply-To: <CAEnQRZAduH-jJ1ei44dO2HME91+oDXBFPp2x787wGY6N1pDtTw@mail.gmail.com>
References: <20151018164156.GA31672@ubuntu>
	<CAEnQRZAduH-jJ1ei44dO2HME91+oDXBFPp2x787wGY6N1pDtTw@mail.gmail.com>
Date: Sun, 18 Oct 2015 22:30:16 +0530
Message-ID: <CAKHNQQFXKH=_18wBX4L_-zTfW-Qoi27n=x37DBCYHPkpqchiLQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lcommon_misc: Correct
 block comments
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 10:28 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Sun, Oct 18, 2015 at 7:41 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> Alignment of block comments should be correct.
>> Fix checkpatch WARNING: Block comments use a trailing */ on a separate
>> line
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/lclient/lcommon_misc.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
>> index 8389a0e..d80bcedd 100644
>> --- a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
>> +++ b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
>> @@ -48,7 +48,8 @@
>>  /* Initialize the default and maximum LOV EA and cookie sizes.  This allows
>>   * us to make MDS RPCs with large enough reply buffers to hold the
>>   * maximum-sized (= maximum striped) EA and cookie without having to
>> - * calculate this (via a call into the LOV + OSCs) each time we make an RPC. */
>> + * calculate this (via a call into the LOV + OSCs) each time we make an RPC.
>> + */
>>  int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
>>  {
>>         struct lov_stripe_md lsm = { .lsm_magic = LOV_MAGIC_V3 };
>> @@ -74,7 +75,8 @@ int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
>>         cookiesize = stripes * sizeof(struct llog_cookie);
>>
>>         /* default cookiesize is 0 because from 2.4 server doesn't send
>> -        * llog cookies to client. */
>> +        * llog cookies to client.
>> +        */
>>         CDEBUG(D_HA,
>>                "updating def/max_easize: %d/%d def/max_cookiesize: 0/%d\n",
>>                def_easize, easize, cookiesize);
>
> While at it please also add an empty comment line at the begining:
>
> /*
>  * first text line
>  * ..
>  */
>
> Like here: http://lxr.free-electrons.com/source/Documentation/CodingStyle#L467

All right. Thank you.

