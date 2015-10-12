X-GM-THRID: 6204685727304777728
X-Received: by 10.112.173.136 with SMTP id bk8mr5458258lbc.20.1444643914273;
        Mon, 12 Oct 2015 02:58:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.73 with SMTP id gs9ls771023wib.2.canary; Mon, 12 Oct
 2015 02:58:33 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr5446976wjc.0.1444643913793;
        Mon, 12 Oct 2015 02:58:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id ch7si463322wib.2.2015.10.12.02.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id gb1so43506710wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 02:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=se6+mS/HrxgNeOgA3ue8essFTKTI8tkFV4l5vSHhCxA=;
        b=ywZEKpFizthwUdhownMxu9FimDFOb0wRcGmwin6L6bKH5YZhjnItF2++n0POzMNRD+
         +LT4tLoKhiXm8QgAYkQVnd+gB8n9NtnZGocPhQGISUxmjqKHKdj2o9NHkcBakICVMRar
         w3tl9pVmQwt2O2RUFvQrqM9FMWbeuwjK422C9yMEChg406cYhoS+9yJ+GE9bA3v6BqFN
         +H9aRavlQoSetrt4PZH+pvhz5fywwFAO5/D3AwHsPiiujBRBt3WTYcvPdia7Cw/wOvgn
         HH98wZmFYHjDSMkQaPKvLQOKoDm4FWZOHN+UWHWX1qL7F9EwQpYyCexdO+arsai6UaXn
         X/3A==
MIME-Version: 1.0
X-Received: by 10.180.189.41 with SMTP id gf9mr12339541wic.95.1444643913673;
 Mon, 12 Oct 2015 02:58:33 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 02:58:33 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510121122220.2652@hadrien>
References: <20151012090922.GA30043@ubuntu>
	<alpine.DEB.2.10.1510121122220.2652@hadrien>
Date: Mon, 12 Oct 2015 15:28:33 +0530
Message-ID: <CAKHNQQHhftvBwJ+6ACmA-MgvaqRbwXhsCHyP8Wpc=wwQVg2wbw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: XGI_main_26: Remove
 unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 2:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove unused variable and its occurences as it is not used anywhere in
>> the code.
>> Issue found using coccinelle.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/xgifb/XGI_main_26.c | 6 +-----
>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
>> index 5a6251a4..e723082 100644
>> --- a/drivers/staging/xgifb/XGI_main_26.c
>> +++ b/drivers/staging/xgifb/XGI_main_26.c
>> @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>>       unsigned int vtotal = 0;
>>       unsigned int drate = 0, hrate = 0;
>>       int found_mode = 0;
>> -     int refresh_rate, search_idx;
>> +     int search_idx;
>>
>>       if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
>>               vtotal = var->upper_margin + var->yres + var->lower_margin
>> @@ -1266,10 +1266,6 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>>               xgifb_info->refresh_rate = 60;
>>       }
>>
>> -     /* Calculation wrong for 1024x600 - force it to 60Hz */
>> -     if ((var->xres == 1024) && (var->yres == 600))
>> -             refresh_rate = 60;
>
> Could it be supposed to be xgifb_info->refresh_rate = 60; ?
>
> julia
>

Won't that be a part of structure whose object is xgifb_info? This is
any normal int type. Plus, it doesn't give any errors when removed, it
should have if it were xgifb_info's member. Please correct me if I  am
wrong.

>> -
>>       search_idx = 0;
>>       while ((XGIbios_mode[search_idx].mode_no != 0) &&
>>               (XGIbios_mode[search_idx].xres <= var->xres)) {
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151012090922.GA30043%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

