X-GM-THRID: 6138556841984
X-Received: by 10.112.214.234 with SMTP id od10mr4442364lbc.3.1425383862617;
        Tue, 03 Mar 2015 03:57:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls31751lac.3.gmail; Tue, 03 Mar
 2015 03:57:42 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr4430890lbc.1.1425383862125;
        Tue, 03 Mar 2015 03:57:42 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id i8si90259wif.1.2015.03.03.03.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 03:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggy19 with SMTP id y19so39391291wgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 03:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=DTBCU1Eo/+6owZ3Yjn1nO9bAnRSkjUELfAquwWYhBLE=;
        b=vzvTwrZp7A2MBghvv7qZ96n5MR3BvUMex89BRYNn/QZ+ZnzpeZQk5WN56WLl/baLe6
         Cfqznbf44xKAzDmhew6iuFPJD5eg+BrQWVgA1JXGKiI4Hw2lF548u6hqqpsKky4D8rC1
         zfi4Vb5YVGRAA0OZT0y3GUl5mqpahb7FzAc7GiVRAndw0neKNMdDhCI3sUIPukEGu8B4
         ge5E8Eypehuc9es25sNKA7L1dxxGvz/GgosI0Sty2VxuKGR7ZMtS9ZWmNRtY6cMjb1Dl
         pUUzncrDRePi9CD8A8vNGdfKI7Wdb92eVlg7cspZs19N3CUrJ5IGgxKyZwiUY3qdGA6e
         fAEQ==
MIME-Version: 1.0
X-Received: by 10.194.58.84 with SMTP id o20mr69726133wjq.75.1425383862026;
 Tue, 03 Mar 2015 03:57:42 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Tue, 3 Mar 2015 03:57:41 -0800 (PST)
In-Reply-To: <CAEnQRZDFF_mvL=hUbC4T3S04kwUq1SZDqQdvWrd1_35Y8q_Uuw@mail.gmail.com>
References: <20150303112705.GA11879@waves>
	<CAEnQRZDFF_mvL=hUbC4T3S04kwUq1SZDqQdvWrd1_35Y8q_Uuw@mail.gmail.com>
Date: Tue, 3 Mar 2015 13:57:41 +0200
Message-ID: <CAEnQRZCwdbgk+cyJnXCgUz9EY-e-PtwPPCEY9PhJCzEPkdZx2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: meter: add check on
 return variables
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

+ list :)

On Tue, Mar 3, 2015 at 1:57 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Tue, Mar 3, 2015 at 1:27 PM, Aya Mahfouz
> <mahfouz.saif.elyazal@gmail.com> wrote:
>> Adds checks on variables that are used to return values. If
>> the value is less than zero, this indicates that an error
>> occured and hence a message is printed through dev_err. Labels
>> have been added too, since the check is done more than once.
>>
>> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
>> ---
>> v1: added checks on last calls only.
>> v2: added checks on all calls that return values along with labels.
>> v3: added changelog that was missed in v2.
>>
>>  drivers/staging/iio/meter/ade7758_core.c | 35 ++++++++++++++++++++------------
>>  1 file changed, 22 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
>> index 70e96b2..cab392f 100644
>> --- a/drivers/staging/iio/meter/ade7758_core.c
>> +++ b/drivers/staging/iio/meter/ade7758_core.c
>> @@ -303,14 +303,18 @@ static int ade7758_reset(struct device *dev)
>>         int ret;
>>         u8 val;
>>
>> -       ade7758_spi_read_reg_8(dev,
>> -                       ADE7758_OPMODE,
>> -                       &val);
>> +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
>> +       if (ret < 0) {
>> +               dev_err(dev, "failed to read from device");
>> +               goto error_ret;
>> +       }
>>         val |= 1 << 6; /* Software Chip Reset */
>> -       ret = ade7758_spi_write_reg_8(dev,
>> -                       ADE7758_OPMODE,
>> -                       val);
>> -
>> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
>> +       if (ret < 0) {
>> +               dev_err(dev, "failed to reset device");
>> +               goto error_ret;
>> +       }
>> +error_ret:
>>         return ret;
>>  }
>>
>> @@ -444,14 +448,19 @@ static int ade7758_stop_device(struct device *dev)
>>         int ret;
>>         u8 val;
>>
>> -       ade7758_spi_read_reg_8(dev,
>> -                       ADE7758_OPMODE,
>> -                       &val);
>> +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
>> +       if (ret < 0) {
>> +               dev_err(dev, "failed to read from device");
>> +               goto error_ret;
>> +       }
>>         val |= 7 << 3;  /* ADE7758 powered down */
>> -       ret = ade7758_spi_write_reg_8(dev,
>> -                       ADE7758_OPMODE,
>> -                       val);
>> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
>> +       if (ret < 0) {
>> +               dev_err(dev, "failed to stop device");
>> +               goto error_ret;
>> +       }
>>
>> +error_ret:
>>         return ret;
>>  }
>
> Is there any particular reason for which you preferred gotos here?
> I don't think we need them. Just directly return ret;.
>
> Daniel.

