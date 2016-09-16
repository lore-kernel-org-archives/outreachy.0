X-GM-THRID: 6330964939301191680
X-Received: by 10.129.89.213 with SMTP id n204mr369068ywb.23.1474047375755;
        Fri, 16 Sep 2016 10:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.112 with SMTP id o45ls5946721oto.24.gmail; Fri, 16 Sep
 2016 10:36:15 -0700 (PDT)
X-Received: by 10.200.35.252 with SMTP id r57mr10701356qtr.30.1474047375278;
        Fri, 16 Sep 2016 10:36:15 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id p193si762430ywe.6.2016.09.16.10.36.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 10:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id v2so4736809ywg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 10:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JpJtrAOMZjTHdT/AMekU2r2hoxs7+dYtR2QU1aviPeI=;
        b=uJXjXVWKL0tpth+o1P8RSdUVkdrivZ7UaEHXttcvmCt4ZDLD14aG2S6Xlu+Aaojckk
         lsFb7CvSFJG8y0nLz27nk6Vqosa72djhcp8ecUbqwG7r8wG/nI6/4+jHlRFx5a5VxrEA
         VjYpl4gCNuV2xjNtugKfqsUDqiwWIx+2XwHzjj3yIKwdgmZq61CF29N1w1Wb4TCzN7t1
         njYq0esfuuZONgKtcMVeXhTRYufxlXdZjFSduJRuYUIEdDVPJB6ivPBPHfon8HK+aDUl
         ykoeKMsOFkyZLyDOmoeL01HEg+ZE2/3ui8qL7vPKY5jjWgLGamTE1yNw4TUUXI6rt9Px
         /Flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JpJtrAOMZjTHdT/AMekU2r2hoxs7+dYtR2QU1aviPeI=;
        b=B8ebnw5cn7CkgU5lW6zQGIac+j3L3Nsv/xRBWnjYXdfNmNt5c5j+nFUJwcDVZgaSOe
         inWaZNwT3dj/nrEU4+o0D0CCBhn49PxNOyacSBfXtjDvvEtqxVr522tbVNU3oMmY4Rf0
         +KcwlWQk6911UvIG3XS0Njxjuu49XvmCLVT4DWw8eNRrWg1gecVSZdQOPP7DnbO52HQE
         OA9Jy2gFtFX3YWH87d1w0nXVWFlZj4EsQ1rmoPa1OajDzyCyNAAmODxZ0Fh4c03i20l/
         kTvQnvvub6az4DtMBS15RzrDq0niq9uINHTT5D7j4wqy4aBhQHUEytC6VNZ3aoWMcoDg
         AvwA==
X-Gm-Message-State: AE9vXwMTvHtjKCl/CB5Wc13YZA00P5GqraVOc0IMffMwn9UuBOptrn0a3ZaIBt/4A2waW6lzQ9SuEBrkb2xGyA==
X-Received: by 10.129.117.86 with SMTP id q83mr15995003ywc.75.1474047375054;
 Fri, 16 Sep 2016 10:36:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Fri, 16 Sep 2016 10:35:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609161827310.25146@hadrien>
References: <20160916161701.GA25197@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609161827310.25146@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 16 Sep 2016 23:05:34 +0530
Message-ID: <CAKG5xWgnBVkb5kZ2i4tcF4tuKUjZmfCcxBOVrCbCbfFbey9MrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Replace
 explicit NULL comparison with ! operator
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 10:02 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 16 Sep 2016, sayli karnik wrote:
>
>> This patch replaces the explicit NULL comparisons with ! operator.
>> It was found using Coccinelle:
>>
>> @@
>> expression e;
>> @@
>> - e == NULL
>> + !e
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/media/davinci_vpfe/vpfe_video.c | 17 ++++++++---------
>>  1 file changed, 8 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
>> index 3319fb8..7483de0 100644
>> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
>> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
>> @@ -37,7 +37,7 @@ static struct media_entity *vpfe_get_input_entity
>>       struct media_pad *remote;
>>
>>       remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
>> -     if (remote == NULL) {
>> +     if (!remote) {
>>               pr_err("Invalid media connection to isif/ccdc\n");
>>               return NULL;
>>       }
>> @@ -54,7 +54,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
>>       int i;
>>
>>       remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
>> -     if (remote == NULL) {
>> +     if (!remote) {
>>               pr_err("Invalid media connection to isif/ccdc\n");
>>               return -EINVAL;
>>       }
>> @@ -75,8 +75,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
>>       }
>>       /* find the v4l2 subdev pointer */
>>       for (i = 0; i < vpfe_dev->num_ext_subdevs; i++) {
>> -             if (!strcmp(video->current_ext_subdev->module_name,
>> -                     vpfe_dev->sd[i]->name))
>> +             if (!strcmp(video->current_ext_subdev->module_name, vpfe_dev->sd[i]->name))
>
> Here you reformatted exiting code in an unpleasant way.  Checkpatch should
> have complained about this.
>
> You might wonder why Coccielle did this, when there is not == NULL here.
> The reason is that Coccinelle has a feature called an "isomorphism" that
> makes it consider some forms of code to be pretty much the same as some
> other forms of code.  In particular, if you make a pattern with x == NULL,
> it will also match !x and NULL == x, because for most purposes they are
> all the same.
>
> That is not what you want here, though.  Just put disable is_null in
> between the initial @@ of your rule (ie @disable is_null@), and the
> problem will go away.  You can find the definition of is_null in the file
> standard.iso in your Coccinelle distributions.  You can read more about
> isomorphisms in the tutorial:
>
> http://coccinelle.lip6.fr/papers/tutorial.pdf
>
> slide 38 and onwards.
>

Ah, this is interesting! I'll read up and send a v2.

thanks a lot!

sayli

> julia
>
>>                       video->current_ext_subdev->subdev = vpfe_dev->sd[i];
>>       }
>>       return 0;
>> @@ -107,7 +106,7 @@ __vpfe_video_get_format(struct vpfe_video_device *video,
>>       int ret;
>>
>>       subdev = vpfe_video_remote_subdev(video, &pad);
>> -     if (subdev == NULL)
>> +     if (!subdev)
>>               return -EINVAL;
>>
>>       fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
>> @@ -236,7 +235,7 @@ static int vpfe_video_validate_pipeline(struct vpfe_pipeline *pipe)
>>        * format of the connected pad.
>>        */
>>       subdev = vpfe_video_remote_subdev(pipe->outputs[0], NULL);
>> -     if (subdev == NULL)
>> +     if (!subdev)
>>               return -EPIPE;
>>
>>       while (1) {
>> @@ -413,7 +412,7 @@ static int vpfe_open(struct file *file)
>>       /* Allocate memory for the file handle object */
>>       handle = kzalloc(sizeof(struct vpfe_fh), GFP_KERNEL);
>>
>> -     if (handle == NULL)
>> +     if (!handle)
>>               return -ENOMEM;
>>
>>       v4l2_fh_init(&handle->vfh, &video->video_dev);
>> @@ -683,14 +682,14 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
>>       }
>>       /* get the remote pad */
>>       remote = media_entity_remote_pad(&video->pad);
>> -     if (remote == NULL) {
>> +     if (!remote) {
>>               v4l2_err(&vpfe_dev->v4l2_dev,
>>                        "invalid remote pad for video node\n");
>>               return -EINVAL;
>>       }
>>       /* get the remote subdev */
>>       subdev = vpfe_video_remote_subdev(video, NULL);
>> -     if (subdev == NULL) {
>> +     if (!subdev) {
>>               v4l2_err(&vpfe_dev->v4l2_dev,
>>                        "invalid remote subdev for video node\n");
>>               return -EINVAL;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916161701.GA25197%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

