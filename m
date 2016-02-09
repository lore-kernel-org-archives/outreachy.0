X-GM-THRID: 6249299693524746240
X-Received: by 10.28.156.83 with SMTP id f80mr615403wme.1.1455029191211;
        Tue, 09 Feb 2016 06:46:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.216 with SMTP id i207ls603677wmf.16.gmail; Tue, 09 Feb
 2016 06:46:30 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr610227wmd.7.1455029190720;
        Tue, 09 Feb 2016 06:46:30 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id w129si805019wme.1.2016.02.09.06.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:46:30 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id g62so26171882wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=BGgdFllKlXpt+9nH5yB5eWjsVLq+RTKVYHDsBgZdTmg=;
        b=La1fZt29HylOfAH4apL8kC/CJymFpjRjc1LQ3jg1l3Po/47iMCW2b4wRukxTknDS/e
         zOehHBLoDpEFkEqGX+V2uCMnD13acWPZU89HAoZ3NlMiLKcfw8yx4vOorh5F67Ygt02J
         8bjG5B9skFpLIStvOjTQn9RPyzw/efRsG7Zr+BPtvb7jd2nPGm4hcw7bMbn1bVFoZkOE
         Aq8sYxXUAjN7PFjGBPoukE88/XnnUweJ2YcjZQ7d7sZERa/2ZoPFmuYizPB6gqFxUhmq
         xnOMX3l3oEZKodk0S+d+tNfngVgzbYtGBQW2TTZwlnjeAHmgfkZuP5a3XlNwkINC79JK
         ZSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=BGgdFllKlXpt+9nH5yB5eWjsVLq+RTKVYHDsBgZdTmg=;
        b=JY2OTziXosGA0IqzoRuOGPjjTtnyBnEUW8lCK2ArEDRsPIXs3sZ5I1YqS5ntGHK+T3
         7zfmMKjvsyf6kkTVbTX9QndMf+4AggowaHNmQ+VTPZkKWUuHHn4oN6EWa9Tlx/xp33uy
         TrMtcEom0kyKeDHqi3HCuvWRBJNcDFWmvrm9bsM/CHAZMf1l2pzraUct/xVltzi89AMC
         5pf71vDYkFBokmXudOBhrURFTp6BkLGXkbdEg84+y5OG4BfbjSL9DpnGK1U8W3/Cg1ZK
         7fj6Lkvfcgux1O2auT6rokedmTsYCpC0Jhu3UbOmjyStE38g9L1de1c1EUfqHd+pPr+s
         0xQg==
X-Gm-Message-State: AG10YOTN31DIrI30Ys9p7DLYqfHmo5cHG/nrYGXFeKvEwMldYcENq3Ilu1dE6hmU477IFctS9o1DIeX3btKPKw==
MIME-Version: 1.0
X-Received: by 10.28.34.139 with SMTP id i133mr5590231wmi.3.1455029190608;
 Tue, 09 Feb 2016 06:46:30 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 9 Feb 2016 06:46:30 -0800 (PST)
In-Reply-To: <CANnt6XmdYvrRJGPoPxtUr0TZcfF8nE02fh3NrvENCN2WK7xv9g@mail.gmail.com>
References: <20160209193352.GA6417@janani-Inspiron-3521>
	<CAEnQRZD=hq5UA0D72PkAjDV5Gr9MLuDcGKd7UCu6+071Z5X=cA@mail.gmail.com>
	<CANnt6XmdYvrRJGPoPxtUr0TZcfF8nE02fh3NrvENCN2WK7xv9g@mail.gmail.com>
Date: Tue, 9 Feb 2016 16:46:30 +0200
Message-ID: <CAEnQRZAxfHgX=DXn5bYJjWDoOMn1ebt29Vx+Vx2tgYR82o0+rw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: Use kcalloc instead of kzalloc
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 4:42 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
>
>
> On Tue, Feb 9, 2016 at 9:36 AM, Daniel Baluta <daniel.baluta@gmail.com>
> wrote:
>>
>> On Tue, Feb 9, 2016 at 9:33 PM, Janani Ravichandran
>> <janani.rvchndrn@gmail.com> wrote:
>> > Use kcalloc rather than kzalloc when multiplied with size to prevent
>> > integer overflows. This change also makes code nicer to read.
>> >
>> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
>> > ---
When sending v2 add here a line documenting the history of this
patch e.g:

Changes since v1:
    * removed parenthesis around kzalloc first parameter

>> >  drivers/staging/rdma/hfi1/efivar.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/rdma/hfi1/efivar.c
>> > b/drivers/staging/rdma/hfi1/efivar.c
>> > index 7dc5bae..feef163 100644
>> > --- a/drivers/staging/rdma/hfi1/efivar.c
>> > +++ b/drivers/staging/rdma/hfi1/efivar.c
>> > @@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned
>> > long *size,
>> >         if (!efi_enabled(EFI_RUNTIME_SERVICES))
>> >                 return -EOPNOTSUPP;
>> >
>> > -       uni_name = kzalloc(sizeof(efi_char16_t) * (strlen(name) + 1),
>> > +       uni_name = kcalloc((strlen(name) + 1), sizeof(efi_char16_t),
>> >                            GFP_KERNEL);
>>
>> there is no need for parenthesis around first parameter:
>> -> (strlen(name) + 1 ).
>
> Can I send a version 2 of this?

Yes sure. Please keep the Cc list and also make sure you add v2 near
the PATCH tag.

e.g [PATCH v2] staging: rdma: Use kcalloc instead of kzalloc

You can either editor our .patch file or use --subject-prefix="PATCH
v2" parameter of git format-patch :).

>>
>>
>> >         temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);

