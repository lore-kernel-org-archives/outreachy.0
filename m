X-GM-THRID: 6477997622457008128
X-Received: by 10.107.151.211 with SMTP id z202mr5780797iod.85.1508591386414;
        Sat, 21 Oct 2017 06:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.139 with SMTP id l11ls2919924ioi.16.gmail; Sat, 21 Oct
 2017 06:09:45 -0700 (PDT)
X-Received: by 10.107.10.93 with SMTP id u90mr5478982ioi.24.1508591385636;
        Sat, 21 Oct 2017 06:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508591385; cv=none;
        d=google.com; s=arc-20160816;
        b=AXgIY21LVQHaaHcZ2eLTyvD3BYW5hV2yQCKT9CDae1nY//nX8s/3TthUxY52B7TADr
         71XNFZ+JF09ImzCH05BBUECCNMLp4pD/NOqqUqxkM9/6a7BQRrrvQwNmlVZKUhz/szts
         5PPu8kh801y44TNH2tCqRfTASk2Za7cKCsJiAk0/XXV7K+/xngFHmkA/R6J7IW7k1UoL
         Avb4/gua1ceN8dQv2wqYzJqLax/pZIdy2u/Whd2rJTk1dFKCP9tYkaBwS9NrQpymdqOp
         Y04/LmEX8xCP/hZ5WYYV2gqE0tcF+TRNsZshzrF47PaeJPkfQrslhwp9z9TK2yU3QGg2
         bLLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=n1jAnYL7Ea/JUEmEZmOrpUyME64OdnIfrQGtr/PkGFU=;
        b=OZa7eSGD0RpCULsrGgD9doiX2cM7eXVpLt1imZAjRefsSojdOS4L3PdlrZfjxVmaY8
         WNEv7dNuf2Z51IX+k4uMGLO125H22uw8JyGZ5J0PTcxGJMCH7K7/0pr9i7IunYukZxS9
         JC1UspKzaTHiCtZEMGCHWHX84xpjOR+mEoeAdVLZlPM88ExCvaLuFWU/iXmTXcjtW6e3
         DfU9WeSP7AGdQOewSs+8RdiMHtaxMjJZqZtjCD6lDLFf6Ppe2n8SN9DMBT5AYaJwmoHL
         PBTIfz9ZzehoFJi9sCnce9LcMWfMYVvMsc1lFPmHTkWs96VEnOhUbbulhm6xmBEcq/lp
         ITpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lnawCIQM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x234.google.com (mail-qt0-x234.google.com. [2607:f8b0:400d:c0d::234])
        by gmr-mx.google.com with ESMTPS id c29si193488iod.3.2017.10.21.06.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 06:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) client-ip=2607:f8b0:400d:c0d::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lnawCIQM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x234.google.com with SMTP id v41so21415452qtv.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 06:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=n1jAnYL7Ea/JUEmEZmOrpUyME64OdnIfrQGtr/PkGFU=;
        b=lnawCIQM9u2woHIkQ3xPM2qb329/fGiZ350lPsYAfXWapU+jwee0uA5RzLr9aZjlKN
         ipgXGQ+kSBEqq1fpMVLsJtRbqNCz2E1OA9CH4XyKD9pvTFWmU3wm91k4RQ0LzMrbn6Cg
         VXY/Z5iW8hS5B9PCn+1I03/nmtHV/3CAe4ArZqSv+EfXUlOPWD1Ye2JmA1n6z9VOiM5L
         wGgRGU1T/0Hz74PBFTns2ArRiGMJGnQRyBwGlET8OZ4/0CYxdjp+daLVdbQyh7HpvZdY
         RvqVSSIATOxRRXQOYOgJff3dgbbXiOO9YG4E0Qu95PRdbwf0tVTbpwg6nNfWFmYNer6Z
         97CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=n1jAnYL7Ea/JUEmEZmOrpUyME64OdnIfrQGtr/PkGFU=;
        b=mhqBYQLb5TphXz3j5enHvC0UKd1vPyjqbhByK0lZ2RnBAbcJH6OQeDv0LgY8KW9nqq
         s7kxWMRgvYPNCg6BesFxF/h/X2LeEbfnpX+7CxfyoGIwFvIDJXM5jG/8I4juTOWWfWm/
         IKM6iT/r8WEIYsoBRyRi135Q7tZWhLc+wo8a1p8TPzj4zEjxi2oXXHyP2i3w6YX/ObN3
         bAWhrSnUoI/gEjhhIm4KTg0TUZUIJoxDtmfRamO3rxIGJqyT9JcHSlC2R2kv8x+n4FPb
         ZjfiNqjpdrrbL312TajuVr3AEBE0DdY6oyRbPIAAbPC9oKfukO0cwLfkl9d8VL296qID
         rODg==
X-Gm-Message-State: AMCzsaVy5IDX3d8x71kNUJoqedUEuPcOlNwae/KQlVuV64Ch9Hf2rks8
	DF8th9Js4SvfpRzlrcrscQ/A8EwJNHxfNg1XA/A=
X-Google-Smtp-Source: ABhQp+Qp5xXhysbzS08hrcrYvPkepB5h6m21ybExtHcxDNWdMPDuGRxna4vqM7GUsvsZkA3Z9naJn4NysB+d4mnlIHM=
X-Received: by 10.200.48.37 with SMTP id f34mr12264475qte.228.1508591385319;
 Sat, 21 Oct 2017 06:09:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.20.119 with HTTP; Sat, 21 Oct 2017 06:09:44 -0700 (PDT)
In-Reply-To: <20171018140310.GB5315@kroah.com>
References: <20171017213911.15653-1-georgiana.chelu93@gmail.com> <20171018140310.GB5315@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sat, 21 Oct 2017 16:09:44 +0300
Message-ID: <CALta04zprXi3ACeRKd8=_aXd0Rp2iHqhD-GAVG7kBMof-BOxBg@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: rtl8723bs: Check sscanf return value
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On 18 October 2017 at 17:03, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 18, 2017 at 12:39:11AM +0300, Georgiana Chelu wrote:
>> Check the sscanf return value and handle it. The function returns
>> the number of items of the argument list successfully filled.
>>
>> Issue found by checkpatch.pl.
>> WARNING: unchecked sscanf return value
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>
>> Changes in v2:
>> * compared the return value of scanf to the right value
>> * improved the commit message
>>
>>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>> index 3fca0c2d4c8d..fe538cc088f0 100644
>> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>> @@ -2356,7 +2356,11 @@ static int rtw_wx_read32(struct net_device *dev,
>>
>>       bytes = 0;
>>       addr = 0;
>> -     sscanf(ptmp, "%d,%x", &bytes, &addr);
>> +     ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
>> +     if (ret != 2) {
>> +             ret = -EINVAL;
>> +             goto exit;
>> +     }
>
> Are you sure that the code requires 2 values here?
>
>>
>>       switch (bytes) {
>>               case 1:
>> @@ -2393,12 +2397,15 @@ static int rtw_wx_write32(struct net_device *dev,
>>       u32 addr;
>>       u32 data32;
>>       u32 bytes;
>> +     int ret;
>>
>>
>>       bytes = 0;
>>       addr = 0;
>>       data32 = 0;
>> -     sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);xbytes, &addr, &data32);
>> +     if (ret != 3)
>> +             return -EINVAL;
>
> Same here, are you sure that 3 values are required?
>

I think I understand what you are saying. The 'addr' and 'data32'
could be 0 because one can write 0 bytes at the starting address of
the 'padapter' structure. Also, the switch statement handles the case
when 'bytes' does not have one of the expected values.

Please, tell me if I understood correctly.


Thanks,
Georgiana


> thanks,
>
> greg k-h

