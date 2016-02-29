X-GM-THRID: 6254203377087938560
X-Received: by 10.50.79.233 with SMTP id m9mr8448836igx.8.1456726525232;
        Sun, 28 Feb 2016 22:15:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.162 with SMTP id x2ls393687igl.34.gmail; Sun, 28 Feb
 2016 22:15:24 -0800 (PST)
X-Received: by 10.67.13.228 with SMTP id fb4mr11460949pad.39.1456726524660;
        Sun, 28 Feb 2016 22:15:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id i133si1550960ywe.7.2016.02.28.22.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 22:15:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id d32so52691893qgd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 22:15:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=mzYLxwuQg+98cz8FIFLW2Cy4/98jUGb/aiYttwIGh2U=;
        b=bu5tTGQRALMrpeojypqtNnESlhr0VyQS/firwxLFsKDDbNvIxbmTfNR60YxPuSS8z1
         FXDhih5DFF6bAArWfnIgQ0SLUcBwf84xe2mNuD52k16GBs38xPhTZwuBA34ALn+60iwN
         9R2yCwaoPT8JjMagtUOjtWK1qdnrXUjDLYZ/gkROxwf4rCQwB5/eiAtN4fNj46fwJqsv
         9M++7myXyK/CXOI1PQm+E53OWXQJXPBCAuBpk7lRIQePG+sdXgl6bhKloq5/+T4rtLdB
         c2iYuLSavgzkeHb5vBmi1DGanv0LOFtmUV6QBMUiXv8ccYAiDNZt4JphJISG3ndM9sW4
         1RGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=mzYLxwuQg+98cz8FIFLW2Cy4/98jUGb/aiYttwIGh2U=;
        b=LjLMEb/KFACbI0A+yxxADLsq3TR7JdV6gfx6D2KkNfAOWHkfjHh8CM1d75l3k5HB2N
         WSzMmtjAYH0D7tuulTAbOteU04w7kh8mhEdlZmYrXhGCOuF7Wq0sxdktQjNK+lAsch5C
         KLZb/lydu3EG17uP7/pAoEPHyV7QZxAaCCFxp5pKXtldgKgIpkWJ3QiGWXqds0Smg4Zj
         4MPNhQr6H3YimzbsXbTNOhU0G+So8HLw4/zp1aM1a0F3bWYVPHCf0S5Hmp3TxrW42qGx
         rTWF2p9Uo3I3zEeTb+ep8Xicx8Qn+2/I2KkJEZ+ewgagh3CUmOMsZm3xgiRARg9VLZs8
         XNHw==
X-Gm-Message-State: AD7BkJIx33nR4kldFkj8U6IJGiaSW2ltZFMKxdhI6YpEioH0z6MHyiQfDMY+GKuQeGa+Y2S6YxJjMebE2V0vsQ==
MIME-Version: 1.0
X-Received: by 10.140.143.134 with SMTP id 128mr18514684qhp.25.1456726524446;
 Sun, 28 Feb 2016 22:15:24 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 28 Feb 2016 22:15:24 -0800 (PST)
In-Reply-To: <20160228182036.GA2929@d830.WORKGROUP>
References: <20160222194313.GA9769@amitoj-Inspiron-3542>
	<1456681879-2605-1-git-send-email-amsfield22@gmail.com>
	<alpine.DEB.2.02.1602281856040.2147@localhost6.localdomain6>
	<20160228182036.GA2929@d830.WORKGROUP>
Date: Mon, 29 Feb 2016 11:45:24 +0530
Message-ID: <CA+5yK5Fq3sWmsophQFMw=3teFOfUsjU2pg-ZtWq=2zNfE-i0-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] reordering remove actions in iio drivers
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 11:50 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Feb 28, 2016 at 06:56:56PM +0100, Julia Lawall wrote:
>> On Sun, 28 Feb 2016, Alison Schofield wrote:
>>
>> > Hi Amitoj,
>> >
>> > I just worked on a similar patch, and yours caught my attention.
>> > It's not clear that it is OK to reorder the .remove actions.
>> > Although it may seem counterintuitive to do anything *after*
>> > you've unregistered your device, it is indeed done purposely
>> > and safely in many iio drivers.  It usually needs to stay that way.
>> >
>> > Check out more discussions of this on linux-iio.
>> >
>> > And, consider the source...I'm just trying to figure this stuff
>> > out too!
>>
>> Which patch of Amitoj's are you referring to (or which file), and if
>> possible do you have a more specific link for the discussion on linux-iio?
>>
>> thanks,
>> julia
>
> I'm seeing this threaded with original patch, but I guess you're not.
> It is in reference to:
>         [PATCH] staging: iio: accel: Replace iio_device_register with
>         devm_iio_device_register
>
> There is a lot of linux-iio discussion when this devm was originally
> introduced with 30+ patches to migrate. Search devm_iio_device_register
>
> and another later on when an intern tried to apply it:
> http://article.gmane.org/gmane.linux.kernel.iio/13354/match=devm_iio_register
>
> The accel case might be ok...just a heads up on the considerations.
>
> alisons
I did not know this, but after your heads up I did check previous such
patches accepted for iio drivers and I believe you're right. Thanks
for pointing it out. Will be careful about this in the future.

Thanks,
Amitoj

