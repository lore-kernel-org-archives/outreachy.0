X-GM-THRID: 6210868560555671552
X-Received: by 10.182.50.135 with SMTP id c7mr4152634obo.47.1446166951176;
        Thu, 29 Oct 2015 18:02:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.67 with SMTP id ru3ls252100obb.34.gmail; Thu, 29 Oct
 2015 18:02:30 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr4109630obc.7.1446166950602;
        Thu, 29 Oct 2015 18:02:30 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x234.google.com (mail-io0-x234.google.com. [2607:f8b0:4001:c06::234])
        by gmr-mx.google.com with ESMTPS id lo7si9727igb.3.2015.10.29.18.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 18:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) client-ip=2607:f8b0:4001:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x234.google.com with SMTP id l68so65282880iol.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 18:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=OUHaGbt52qQUXAPSMf5uX5WvAOXCav3bgcBVypZ61V0=;
        b=FNIdT2uLIM/WesiJbu4h5ZJ+QyS9lNebbRIuYIHfEukQSGuiHlutZRKItN0/2gwHGj
         rVc2Cf2pZVXIQRexDeEssTLuClBayJLZWz1AAiReQxNfDFhtdoQ1j9nPK+audT6nd6SP
         homwfngUpgj/unoxk4mEBiv3sMRbOkJLUsO8z1YeAPgqjNv1vsn5EbDiybazP1EV2bU9
         lI6NxKxXDvLKSPhWqicPhg3z8lexSLvMSUw5iJCmhDI2zGz6nUwvtmQscw5q4UHjw4jc
         08453ml7dbY5RgqMxBqF1iVHXzAs8764Ni4zNEW5wZT8E3sqsMeB/8fFN6uLOt1FLH27
         QfWA==
MIME-Version: 1.0
X-Received: by 10.107.151.195 with SMTP id z186mr8424149iod.8.1446166950439;
 Thu, 29 Oct 2015 18:02:30 -0700 (PDT)
Received: by 10.107.149.205 with HTTP; Thu, 29 Oct 2015 18:02:30 -0700 (PDT)
In-Reply-To: <3936694.NLtiS3J4cs@wuerfel>
References: <1446080515-29734-1-git-send-email-ksenija.stanojevic@gmail.com>
	<3936694.NLtiS3J4cs@wuerfel>
Date: Thu, 29 Oct 2015 18:02:30 -0700
Message-ID: <CAL7P5jKGVmw=OypR=u7vLWRnALNVC5kmUXKtJsuCKMHWkp79JQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Fix sparse endian warning
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi Arnd,

On Thu, Oct 29, 2015 at 2:40 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Wednesday 28 October 2015 18:01:55 Ksenija Stanojevic wrote:
>> Fix following sparse warning:
>> warning: cast to restricted __le16
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/das16.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
>> index 056bca9..fd8e0b7 100644
>> --- a/drivers/staging/comedi/drivers/das16.c
>> +++ b/drivers/staging/comedi/drivers/das16.c
>> @@ -801,9 +801,10 @@ static void das16_ai_munge(struct comedi_device *dev,
>>         unsigned short *data = array;
>>         unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
>>         unsigned int i;
>> +       __le16 *buf = array;
>>
>>         for (i = 0; i < num_samples; i++) {
>> -               data[i] = le16_to_cpu(data[i]);
>> +               data[i] = le16_to_cpu(buf[i]);
>>                 if (s->maxdata == 0x0fff)
>>                         data[i] >>= 4;
>>                 data[i] &= s->maxdata;
>
> The patch looked wrong to me at first because you use the same
> pointer for both little-endian and cpu-endian data, but I checked
> the function in more detail and think your solution is correct.
>
> However, I think this needs more explanation to why this is a
> valid solution here, and it would be good to do the same thing
> for the other handful of comedi drivers that provide a 'munge'
> callback. Most of them seem to have fixed endianess and use the
> same code as this one, but there are some examples that currently
> do not do endianess conversion, and it would be good to check if
> that is correct. I suspend those only work on little-endian
> machines.

My understanding was that since "array" is pointer of type void, it can be
used to store any type of data and offset of the array would be the same
because unsigned short and __le16 are both 16 bits in size.

Ksenija

