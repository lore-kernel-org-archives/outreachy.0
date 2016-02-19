X-GM-THRID: 6252763365254365184
X-Received: by 10.182.79.134 with SMTP id j6mr14789217obx.4.1455916391858;
        Fri, 19 Feb 2016 13:13:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.105 with SMTP id x102ls264718ioi.65.gmail; Fri, 19 Feb
 2016 13:13:11 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr10714845pfq.9.1455916391288;
        Fri, 19 Feb 2016 13:13:11 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id hy4si652417igb.2.2016.02.19.13.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 13:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id y8so44452259igp.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 13:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GeLIJEJAsJjkYeWjHJl2dOnUyRMJeEGH7tBWrtNvlUg=;
        b=1JFcC8AiXvlwCurfJ1QrexSiZAmHnzFNHOXZZ6Y/+u6A9R9gWM8uzM1MBgSXP7Wj3n
         L1a/Lsk0gVDiu0Tiez4L5AEAobIY2A6xm7TXt5gY5w5KGGSw1HTP87Ihgm90j9FObtdh
         jqwROFLrJtkOVPukd1+33+3FiKDTBWTtIuMOvsS2va34ElbokizHsYE3yi42WAgf44Wv
         aGGDovA0K+zNxFv7z5TVCuJo3qxoKUIbk/y/c1DIp4fihZgDClCJEeSdNtwwRLugVBTj
         SZlpwXxUJEta3FMqNBbNBHa9SpOtdXe0p8yhKtJD+RSASUfCr2dDvKts1TVElIZokhuh
         ZfxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GeLIJEJAsJjkYeWjHJl2dOnUyRMJeEGH7tBWrtNvlUg=;
        b=cJA2XiBKodaHEMg9Pb+laDVPai9hTHbWFfrkcaYHDch966kp3tSnfrfPGIpLellFfP
         3VilYio6nGHTn2Dm9KWypbTYPYC6gPDlTPWHJiq7+cKDO4r48iQNnA+Rti8vaTDaVxhB
         C8xJ3wtabytYm7SJNWY/qbpcKpnADC/60P3c+Efd1PBNVxUGp+PjMB+Sq7BvO89z+2WT
         iw2zD/49URqxYo31dNzKGIKah9bpyyWTdx8NHaq9drAIB2EtkqRYsGKVuHZJv81Cv4Mv
         0XZhdv7EyVs6QupGI+NdgOu97VVTf/cGTRAetoyHn0o1Zya9obUvsnbiCHsf+foDlANN
         /8eQ==
X-Gm-Message-State: AG10YOSDP48GIQcOyepDdq8wOGJm7T3T1kM3DxSv8An6TNRK8ack4JFctQGhjtL0lGYF43uslxqLKLc0ZNws+g==
X-Received: by 10.50.141.193 with SMTP id rq1mr558igb.44.1455916391127; Fri,
 19 Feb 2016 13:13:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.164.6 with HTTP; Fri, 19 Feb 2016 13:12:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602182213230.2821@hadrien>
References: <cover.1455834014.git.thaissa.falbo@gmail.com> <a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo@gmail.com>
 <alpine.DEB.2.10.1602182213230.2821@hadrien>
From: =?UTF-8?Q?Tha=C3=ADssa_Falbo?= <thaissa.falbo@gmail.com>
Date: Fri, 19 Feb 2016 19:12:51 -0200
Message-ID: <CAKqL7ZVnFHPjQJ53uuHFWrYZEg6oKgNN9Rg1hiex3SEhu6ms+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: davinci_vpfe:
 remove unnecessary case and enum
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Tha=C3=ADssa Falbo



2016-02-19 1:13 GMT-02:00 Julia Lawall <julia.lawall@lip6.fr>:
> Why is it unnecessary?  There should probably be more information in the
> commit message.
>
> julia
>
> On Thu, 18 Feb 2016, Thaissa Falbo wrote:
>
>> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
>> ---
>>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 6 ------
>>  1 file changed, 6 deletions(-)
>>
>> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/s=
taging/media/davinci_vpfe/dm365_isif.c
>> index 747d29f..b1e6fd0 100644
>> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
>> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
>> @@ -227,7 +227,6 @@ static int
>>  isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
>>  {
>>       struct vpfe_isif_device *vpfe_isif =3D &vpfe_dev->vpfe_isif;

Here, the variable was set to a constant

>> -     enum isif_frmfmt frm_fmt =3D ISIF_FRMFMT_INTERLACED;
>>       struct v4l2_pix_format format;
>>
>>       v4l2_fill_pix_format(&format, &vpfe_dev->vpfe_isif.formats[pad]);
>> @@ -254,11 +253,6 @@ isif_config_format(struct vpfe_device *vpfe_dev, un=
signed int pad)
>>               return isif_set_buftype(vpfe_isif,
>>                               ISIF_BUFTYPE_FLD_INTERLEAVED);
>>

And then used into one of the cases.

>> -     case V4L2_FIELD_NONE:
>> -             frm_fmt =3D ISIF_FRMFMT_PROGRESSIVE;
>> -             /* buffer type only applicable for interlaced scan */
>> -             break;
>> -
>>       case V4L2_FIELD_SEQ_TB:
>>               return isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARA=
TED);
>>

After the switch, if was never used. There is only the return of the functi=
on.

>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/outreachy-kernel/a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git=
.thaissa.falbo%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

