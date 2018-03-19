X-GM-THRID: 6534657346534113280
X-Received: by 10.202.243.135 with SMTP id r129mr5242113oih.13.1521473053484;
        Mon, 19 Mar 2018 08:24:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.198.6 with SMTP id w6ls1607272oif.22.gmail; Mon, 19 Mar
 2018 08:24:12 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt9dtMQBvz1bz6t1JGKqbpRk7vQKhCE5uZYPpqyiqxFyFH6uIMS6liP1QJkFsrHyybraqsk
X-Received: by 10.202.180.8 with SMTP id d8mr3386957oif.6.1521473052408;
        Mon, 19 Mar 2018 08:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521473052; cv=none;
        d=google.com; s=arc-20160816;
        b=yVC8VblVxxtJvPzxT0IeB0qHzwwP6+OlEsLSBV3M4DymXI6YsSrhXeTdevSPSD6r22
         BQGfXEPZYnSUQebYOyYF+ys6VrBgNlDNcjO5Essk43Cn06dfyc651qSYkSlrEq7h7Csq
         ogWQdWBe3s9YeZiUh6VNOwkcTWH+7T1aaw+E8IoGjECN2XpBWxmWPhWfLtOokg+5Bg1f
         3bwWlMM00wklMeq4luX+2NVe7bUKiq7mmkP1LwO6gLS5YR5tUGAoIexaRZmwZKUyxIqV
         2TbqULjonooBu5XR73SQNfAx564tyzaFNZbfuli0/nzciy2+QzNGPawX/YEmoj7tayoF
         6Pcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=LZ4QUFUdS6NKhcWp4tUtXiLluu85aAEIj6+rX0eGffo=;
        b=yVLrw1IPLHZ0XeW0xc+bF23eq+UdnWUDEL3F6DNN/L+flC4py0MMFhm8ve/1ixcTy7
         P0wySYPCcBdDmlbN+AzqV28i5bwnwn1maSrjnOjraIn9+m1gUGlZRs0EFUMwP2mGWV4Q
         6/ynXvMyJlYT4Jne586oUfjGkkYf4gbwZzaEFoz0L0l06404ipC/MtWu877jc2pD28jz
         4bv6jYc5mbMijZ25wveJauvn5ooWrfgHQdr+ZW/KfeujWdObvQTlIf5fJWwDaFLtP+Sj
         cr605s/COPE1HBL82IAjS8ErFnferNNKlaAMZFOQew3m5mlECfh7vOn4S2ohQddHHvWb
         SDcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=K7oX2SGQ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id i15-v6si18054otj.4.2018.03.19.08.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 08:24:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=K7oX2SGQ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x22d.google.com with SMTP id b20so4587372iof.5
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 08:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LZ4QUFUdS6NKhcWp4tUtXiLluu85aAEIj6+rX0eGffo=;
        b=K7oX2SGQUj5ZZ+xvn8tcKPN0WzKVJr40V4IpyeWDFk9SiypRi3mMtc9FLiopvkw6/t
         Yh//4W92WVDfec2asqkQNfntpGyDMKNk5BZRc9sxO13vbT2cDnCra3ZD7fChVMn0MHet
         K8oU+MwXu5DFDNqy787m7qKX2ZWEImw+OAkTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LZ4QUFUdS6NKhcWp4tUtXiLluu85aAEIj6+rX0eGffo=;
        b=io/hUsZrjuHS/F3AuClbJPe5Z1vHGIfWun7tR8hgdtP7zc3B0JN3G758mLfk6LSMgi
         BqfnkOY5cx3k3aAHwN4xTf3Q5SgSWmqHU8yOODBl+21pEJeyWKRObphiF+YRawSKCAuO
         mqwHExdbtDXl2zRFvKGUGmkYV2FvFbFHx4WHF7dvRyqiEraBMzSk1xG0CNd9FLQjyorF
         DCwjiSeR4/s+WgR3rZDuhIYKVoKkS5IE/slD/NhDlyfU3KxPl7A5k6Nj6FLlvkdMgh5c
         U6tif41HI6+XlHLUVbYErCEi4Ze0EWMsZg8TPKE2h1MANXoQufxXRfW63jT3Mj1ApgeR
         cLfQ==
X-Gm-Message-State: AElRT7FG7KGD9nJ/dLD132n5IZKRXVYtQowIRKaWh0dTRv6KDUzy64R0
	FZAAbkUs7trJJGtZosh5yRLdaYrGKCkkztTZ5Y1zGjqP
X-Received: by 10.107.44.199 with SMTP id s190mr13007011ios.123.1521473051973;
 Mon, 19 Mar 2018 08:24:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Mon, 19 Mar 2018 08:24:11 -0700 (PDT)
In-Reply-To: <20180319141241.GA17366@kroah.com>
References: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180319141241.GA17366@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 19 Mar 2018 20:54:11 +0530
Message-ID: <CAC4++KDrEYS7CS-mVaN6j9wrSJRkD-ycAV2CBJ8MPDh5wOL6-Q@mail.gmail.com>
Subject: Re: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix
 multiple line dereference
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

The reference (in this and other patches of the same type) is of the
form dev->component[something]->output[something else]. Because of the
line limit, this tended to be split over multiple lines even though
it's technically (as far as I can tell) a single argument. Such
splitting may have the effect of making the code harder to follow
(since we now have to mentally assemble the same value from multiple
lines of code).
By condensing the parts within the square brackets to 3 or 4
characters, I could fit the entire variable in a single line without
violating the 80 character limit.

Thanking you,
Nishka Dasgupta
Nishka Dasgupta
Undergraduate Class of 2018, Ashoka University


On Mon, Mar 19, 2018 at 7:42 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Mar 19, 2018 at 02:07:42PM +0000, Nishka Dasgupta wrote:
>> Fix multiple line dereference. Issue found with checkpatch.
>
> What is a "multiple line dereference"?
>
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
>> index cff7b1e..bae7f2e 100644
>> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
>> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
>> @@ -1194,6 +1194,8 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
>>  {
>>       struct mmal_parameter_fps_range fps_range;
>>       int ret;
>> +     int mcc = MMAL_COMPONENT_CAMERA;
>> +     int mcpp = MMAL_CAMERA_PORT_PREVIEW;
>>
>>       if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
>>           (dev->exp_auto_priority)) {
>> @@ -1220,8 +1222,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
>>                fps_range.fps_high.den);
>>
>>       ret = vchiq_mmal_port_parameter_set(dev->instance,
>> -                                         &dev->component[MMAL_COMPONENT_CAMERA]->
>> -                                         output[MMAL_CAMERA_PORT_PREVIEW],
>> +                                         &dev->component[mcc]->output[mcpp],
>
> I don't see what the benifit of this change is here, a shorter line?
> It's really not worth it, don't you think?
>
> thanks,
>
> greg k-h

