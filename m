X-GM-THRID: 6330109506616295424
X-Received: by 10.66.120.143 with SMTP id lc15mr1117207pab.2.1473844759689;
        Wed, 14 Sep 2016 02:19:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls660768otw.27.gmail; Wed, 14 Sep
 2016 02:19:19 -0700 (PDT)
X-Received: by 10.129.53.208 with SMTP id c199mr1134760ywa.0.1473844759358;
        Wed, 14 Sep 2016 02:19:19 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id p193si344916ywe.6.2016.09.14.02.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id g192so554157ywh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=QkvWLkS6T5W35iqEHhxwo4uvcfxD8qWqqOs6PF2eheM=;
        b=Si2mDorwjyw1gkwi3X2UiY9PqNyXPHakYrzgat63mQS6gSs4U2wzdYaQpNiYzXich8
         4U7erQlAUxp9QCQQUxS5/Mh7iOBXD9+KUJ5ZDHSsK8pK96SkIijQlEb6DIcipdZKk1jS
         BTX9gP5FOvf7Y+ngvyvmDVpMXPf5a4j73SDZguYcdHKrY0+4jlpXqC6fmqnYgXyBoFOk
         0t68jYpF7XwL2+S3tzfEdeE6GlqC8UanY446/MKNClrqE8F5hXiS9OVvgk2+yfEhZz4W
         aoDed6MA1m2UiZoWBmyW7ugXiy81YLjXn9sKtQLhClnPgD8Bsq4D+IQIVQKqmZOhVZ6L
         cYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QkvWLkS6T5W35iqEHhxwo4uvcfxD8qWqqOs6PF2eheM=;
        b=B7rRShUfqXS+bDUoC3RjwJjSNh9vY6GCPrhBaih2AFql863xBebNwJ14O2siJkeR/M
         sHZil7W/afYR8rn1eOmsyT680ZcAjGns0nUEVd+p1H/+e7j+ITZoWIigOquSnrL+nRcF
         YO0vERnkkwNict+TDwKATaNVi/NCSSSPMp4QQAod8/XhjxAp7Ajlp0LooQZ423Wa4HP2
         CkTp3ViYBwUC9+Rn0sedq6C5JnmFN6D8RKtKcPJn2szgB9enaOg+HZ6AJsXETXq6mZvI
         SzpcUqPMmwCrlSXkvlCigUq1ELCDps4kMHhO2cEgT6IZSpl2yL4moNNiW9XFWn7a+0cU
         lvvg==
X-Gm-Message-State: AE9vXwO7ucy/GBKVfTiR3PBCBsJC08mjpTJngxzPnMr5NOUlh6KOqfageqbElGe09LfDuQu3wLVCzLgDEGpydA==
X-Received: by 10.129.99.2 with SMTP id x2mr1271115ywb.106.1473844759047; Wed,
 14 Sep 2016 02:19:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Wed, 14 Sep 2016 02:19:18 -0700 (PDT)
In-Reply-To: <0475959f-954a-445b-a442-64a01d6348c0@googlegroups.com>
References: <20160914085822.GA2558@sandhya> <CAK-LDb+M9yazGyEvCMKMztGNnJ8dWQax4iXONn=p7pRmE1w=kA@mail.gmail.com>
 <0475959f-954a-445b-a442-64a01d6348c0@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Sep 2016 14:49:18 +0530
Message-ID: <CAK-LDbL3fptSfUSNuiFmTkFSbxzXFwweexYOLFtZhRs6J+PoFQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Use x instead of x
 != NULL.
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 2:38 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
>
>
> Thank you for quick reply . Shall I send it with v2 with adding commit log
> information?
>

Yes, please.

Also, do not top-post while replying to mails.

>
>
> On Wednesday, September 14, 2016 at 2:34:07 PM UTC+5:30, Vaishali Thakkar
> wrote:
>>
>> Hi,
>>
>> On Wed, Sep 14, 2016 at 2:28 PM, Sandhya Bankar
>> <bankarsa...@gmail.com> wrote:
>> > Use x instead of x != NULL.
>>
>> Commit log should contain the information about why doing this change is
>> good
>> instead of what you are doing. Also, if you have used any tool for
>> detecting or
>> solving the issue then probably writing something like 'Issue found using
>> x'
>> would be useful. :)
>>
>> Thanks
>>
>> > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com>
>> > ---
>> >  drivers/staging/speakup/fakekey.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/speakup/fakekey.c
>> > b/drivers/staging/speakup/fakekey.c
>> > index 8f058b4..032b936 100644
>> > --- a/drivers/staging/speakup/fakekey.c
>> > +++ b/drivers/staging/speakup/fakekey.c
>> > @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
>> >
>> >  void speakup_remove_virtual_keyboard(void)
>> >  {
>> > -       if (virt_keyboard != NULL) {
>> > +       if (virt_keyboard) {
>> >                 input_unregister_device(virt_keyboard);
>> >                 virt_keyboard = NULL;
>> >         }
>> > --
>> > 1.8.2.3
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kern...@googlegroups.com.
>> > To post to this group, send email to outreach...@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/20160914085822.GA2558%40sandhya.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>> http://vaishalithakkar.in/
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/0475959f-954a-445b-a442-64a01d6348c0%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

