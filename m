X-GM-THRID: 6252743439403712512
X-Received: by 10.182.79.134 with SMTP id j6mr14813505obx.4.1455916724001;
        Fri, 19 Feb 2016 13:18:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.147 with SMTP id z19ls391758qgz.50.gmail; Fri, 19 Feb
 2016 13:18:43 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr14361860ywc.54.1455916723437;
        Fri, 19 Feb 2016 13:18:43 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-ig0-x233.google.com (mail-ig0-x233.google.com. [2607:f8b0:4001:c05::233])
        by gmr-mx.google.com with ESMTPS id ug8si684440igb.3.2016.02.19.13.18.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 13:18:43 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::233 as permitted sender) client-ip=2607:f8b0:4001:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::233 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x233.google.com with SMTP id y8so48228289igp.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 13:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=Nm78+6WPiE8LgQHF9XhKQV8NFDnPHI89H3GnMckemUo=;
        b=iZ6JQHwsM2EhFak0YxQymbMGj4XtjBvcowqohMMcpwiNT8QJcKsKNGiJrci+TUODv5
         nmJlcfpv+iMmDpZ4x58gnJJrQXpMreRI+ZvgmveAXUkmRlgUxWYAUwDfn/yocd4jmlqH
         xfVqomJ00P4Z43YJbel2IiQIGiJ6uP0d49XXk0U5I1TwgnxL0Dt+cyVhDa0d3XHnZb6+
         QiupomYIlMdoBzbOOblev1DJRmFIGUdi/49kMLuVpyu41iboQR89x70LTXRCk8Tboc1w
         ZzM7TzOwd/pLP3NEu4G90etMiemXpDv4WIPS0UvjM1kQG6pi5YG5ezIRwacCvS1RFCco
         OjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=Nm78+6WPiE8LgQHF9XhKQV8NFDnPHI89H3GnMckemUo=;
        b=Ljj9iM+wSPZriG+CmttvkAYRDzHXjdx6dXDQPjG1leAAuHFrNhOQRyJ24q+eQ7U1t/
         h7Jh+6RjVdXKD/iJGj5yIvszKCuzEAcLgucFbDwvjwvxQzaR98qm24dTIzb3T6lQPbRC
         jpCEdao5TJ6BNKQkBBdP1kShugZMLkyxYW7iQRHNifZocomV2/oUEQ3JGgh4Q9lCuK65
         NvFrmYHKKJ/w07vHNBPfLvzIqejSwxaBBPO0xRWP8GMHehTPpPr2xqLBwhBwQpzwrA3Y
         DwVhWvNih/jgKidPXf7W60vto//VMOBB2/Fi44YuiTSz4bE2QVaoHqnAJpGptx3tJGry
         Vt3Q==
X-Gm-Message-State: AG10YOQ+7sC7hJcfV514jE36PToVyDtJni6xeOzYukVZ5T52E1VTJCkcbnfMRXmddHzvVH0/5bLjCdTznmk46A==
X-Received: by 10.50.39.41 with SMTP id m9mr48304igk.44.1455916723291; Fri, 19
 Feb 2016 13:18:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.164.6 with HTTP; Fri, 19 Feb 2016 13:18:23 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602182214340.2821@hadrien>
References: <1455830274-15956-1-git-send-email-thaissa.falbo@gmail.com> <alpine.DEB.2.10.1602182214340.2821@hadrien>
From: =?UTF-8?Q?Tha=C3=ADssa_Falbo?= <thaissa.falbo@gmail.com>
Date: Fri, 19 Feb 2016 19:18:23 -0200
Message-ID: <CAKqL7ZW0+C-GuoJgnJ-pX-8cWjEnBNVWF_64fw7OTHAne6DkgQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: remove
 ret variable in switch statements
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

2016-02-19 1:16 GMT-02:00 Julia Lawall <julia.lawall@lip6.fr>:
> On Thu, 18 Feb 2016, Thaissa Falbo wrote:
>
>> Remove ret variable in functions that used it to determine the return.
>> Simplified the return logic for these functions.
>>
>>
>> Found with Coccinelle script:
>>
>> @@
>> local idexpression ret;
>> expression c,d;
>> identifier label;
>> @@
>>
>> switch ( ... ) {
>> case label :
>> ...
>> - ret = c;
>> - break;
>> + return c;
>> ...
>> default:
>> ...
>> - ret = d;
>> + return d;
>> ...
>> }
>> ... when != ret
>> - return ret;
>
> Perhaps this is OK for this example, but it doesn't seem like a generlly
> useful rule.  There could be some cleanup code that is executed between
> the end of the switch and the return ret that is not getting executed.
>
>>
>> @@
>> type T; identifier i;
>> @@
>> - T i;
>> ... when != i
>>
>>
>>
>> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
>> ---
>>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++--------
>>  drivers/staging/media/davinci_vpfe/dm365_isif.c  | 11 +++--------
>>  2 files changed, 6 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
>> index ac78ed2..ff47a8f3 100644
>> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
>> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
>> @@ -1350,21 +1350,16 @@ error:
>>   */
>>  static long ipipe_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
>>  {
>> -     int ret = 0;
>> -
>>       switch (cmd) {
>>       case VIDIOC_VPFE_IPIPE_S_CONFIG:
>> -             ret = ipipe_s_config(sd, arg);
>> -             break;
>> +             return ipipe_s_config(sd, arg);
>>
>>       case VIDIOC_VPFE_IPIPE_G_CONFIG:
>> -             ret = ipipe_g_config(sd, arg);
>> -             break;
>> +             return ipipe_g_config(sd, arg);
>>
>>       default:
>> -             ret = -ENOIOCTLCMD;
>> +             return -ENOIOCTLCMD;
>>       }
>> -     return ret;
>>  }
>>
>>  void vpfe_ipipe_enable(struct vpfe_device *vpfe_dev, int en)
>> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
>> index cfad426..71d3314 100644
>> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
>> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
>> @@ -625,21 +625,16 @@ static int isif_set_params(struct v4l2_subdev *sd, void *params)
>>   */
>>  static long isif_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
>>  {
>> -     int ret;
>> -
>>       switch (cmd) {
>>       case VIDIOC_VPFE_ISIF_S_RAW_PARAMS:
>> -             ret = isif_set_params(sd, arg);
>> -             break;
>> +             return isif_set_params(sd, arg);
>>
>>       case VIDIOC_VPFE_ISIF_G_RAW_PARAMS:
>> -             ret = isif_get_params(sd, arg);
>> -             break;
>> +             return isif_get_params(sd, arg);
>>
>>       default:
>> -             ret = -ENOIOCTLCMD;
>> +             return -ENOIOCTLCMD;
>>       }
>> -     return ret;
>>  }
>>
>>  static void isif_config_gain_offset(struct vpfe_isif_device *isif)
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455830274-15956-1-git-send-email-thaissa.falbo%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

Hi!

Yes, I was afraid of the coccinelle script not working for more
examples because there could be more handling of the ret variable. I
thought the line "... when != ret" would catch?

Anyways, is this patch ok?


Thaissa

