X-GM-THRID: 6329500500280475648
X-Received: by 10.157.62.230 with SMTP id b93mr10061402otc.14.1473702804942;
        Mon, 12 Sep 2016 10:53:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.175 with SMTP id 44ls7266247otf.31.gmail; Mon, 12 Sep
 2016 10:53:24 -0700 (PDT)
X-Received: by 10.129.79.144 with SMTP id d138mr14410146ywb.19.1473702804512;
        Mon, 12 Sep 2016 10:53:24 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id h17si1055411vkf.0.2016.09.12.10.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 16so5536698vko.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gdW9DISjUQZae3uSnLp3x8mX+bIBJjD84iVaMtbYsls=;
        b=P9zp9SRqberenegV/t8BtZimdLhXqqbVkNlh5psNB5Qp6gKm63fsYanO/xHnDuXm/R
         UNS+y9jO5pq5BSUlH7lLisbC5ZR1kG1xc5Rg0691s/R11AmtxLCWw60K2a0GgtHd6SSe
         l8S3IIWyRR316XkpPtDkHi0MgsIL7zpSyXsB9NoMAN0tLxcBle9rmKAXkWmfO6Xcc894
         dfzPp5lQX20b3eazScuh8WwLMh7GkUd/P0a7/VtiVKU6ets6Nm7x2hTDT5nv8xEwJnHp
         goFLbR2Un8l9PDynn32wKFO9k/Of8JBeEXvwoIeE2ioFaLH75Hoy6jFRDo53jNPkNT4c
         OPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gdW9DISjUQZae3uSnLp3x8mX+bIBJjD84iVaMtbYsls=;
        b=ZZQnHxOwJyQKnnaN5zL/2JAb4cHKNjSQbwPZZ2CjjqTnc2SV4VJ3JY5doQdIWl8c6a
         AtUpUQjs2ouqtQGnJwJVJQFCPbgH9O2igN5TrKDYfDoIYTB49rw5q/nO/+bmZIFfQSW9
         hjjL2F6voxT5zWXh3Hc9Zxk8KKeqDohRM7lW8Q3bqDpErWw5k782OmeBNqcRllAPlyFR
         iaNYehtR2SQss43/2tK4gKNOxYIcm/W4D72whcvQF9jJ0iZA1jnkCue3Mu4l7/pDBsMr
         M0DyUs0DaE/bZZXKYpTRIMFctNPHcuCNzPbfJBf4FjDzgRdKN0iWnMQQGLYy/MFqgTtI
         Z9iA==
X-Gm-Message-State: AE9vXwNa2YKuElvR0vFAUSCtB+VGFfVqRSjchuOTZUCo0Gh17oTG1R9HksLvTJQFx0gvG/D6FMgYw9tFmBCQ4w==
X-Received: by 10.31.188.144 with SMTP id m138mr13664925vkf.84.1473702804245;
 Mon, 12 Sep 2016 10:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Mon, 12 Sep 2016 10:53:23 -0700 (PDT)
In-Reply-To: <CAOCi2DFUU3B+MF4NDtr=vqjOd4kZgFJfK9-SnoavzyAjnygsfQ@mail.gmail.com>
References: <20160912173343.11114-1-gs051095@gmail.com> <alpine.DEB.2.10.1609121938240.29099@hadrien>
 <CAOCi2DFUU3B+MF4NDtr=vqjOd4kZgFJfK9-SnoavzyAjnygsfQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Mon, 12 Sep 2016 23:23:23 +0530
Message-ID: <CAK-LDb+Z2-m2yO3e3jKWEkVL0NiQJFPD=wBqanPS8tkh3OM37Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Moving begin & end comment quotes to
 separate line
To: Gargi Sharma <gs051095@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>, 
	wsa+renesas@sang-engineering.com
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 12, 2016 at 11:16 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Thank you for your patience Julia! I'll keep all these pointers in mind
> while sending the next patch. Should I send another patch with a new commit
> message and subject?

Hi,

One minor point on non-technical side. When responding to email, make sure you
respond inline, rather than top-posting.

You can have a look at the details about how to respond to mails:

https://kernelnewbies.org/FirstKernelPatch#head-9799d3ebaa1221875dfdb0a05c4063dc4eb474a1

> Best,
> gargi
>
> On Mon, Sep 12, 2016 at 11:12 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>>
>> On Mon, 12 Sep 2016, Gargi Sharma wrote:
>>
>> > Changes made to ks7010/eap_packet.h lines 54,63,65,67,71,77 where the
>> > end quotes and
>> > begin quotes for the multi line comment were not in a separate line.
>>
>> The commit message exceeds 80 characters per line.
>>
>> Actually, it's not necessary to put the line numbers that are modified.
>> That can be seen from the patch itself.  The idea instead is to put some
>> information in the subject line about what files the patch affects.  Then
>> the maintainer can orient himself before looking at the actual change.
>>
>> You can find what should be done using git long --oneline file
>> For example, for your file:
>>
>> git log --oneline drivers/staging/ks7010/eap_packet.h
>>
>> gives:
>>
>> c5d9a03 staging: ks7010: cleanup file headers
>> 5d7696b staging: ks7010: indent eap_packet.h
>> 13a9930 staging: ks7010: add driver from Nanonote extra-repository
>>
>> So your subject line could be:
>>
>> [PATCH] staging: ks7010: adjust comment begin and end markers
>>
>> Your subject text is also OK, but it is a bit more verbose.  It is better
>> to put the smallest number of words that will convey the idea, and put the
>> full details in the main log message.
>>
>> julia
>>
>>
>> >
>> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> > ---
>> >  drivers/staging/ks7010/eap_packet.h | 21 ++++++++++++++-------
>> >  1 file changed, 14 insertions(+), 7 deletions(-)
>> >
>> > diff --git a/drivers/staging/ks7010/eap_packet.h
>> > b/drivers/staging/ks7010/eap_packet.h
>> > index 16a392a..ad5dff8 100644
>> > --- a/drivers/staging/ks7010/eap_packet.h
>> > +++ b/drivers/staging/ks7010/eap_packet.h
>> > @@ -51,24 +51,31 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN =
>> > 2,
>> >  struct ieee802_1x_eapol_key {
>> >       unsigned char type;
>> >       unsigned short key_length;
>> > -     /* does not repeat within the life of the keying material used to
>> > -      * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
>> > +     /*
>> > +      * does not repeat within the life of the keying material used to
>> > +      * encrypt the Key field; 64-bit NTP timestamp MAY be used here
>> > +      */
>> >       unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
>> >       unsigned char key_iv[IEEE8021X_KEY_IV_LEN];     /*
>> > cryptographically random number */
>> >       unsigned char key_index;        /* key flag in the most
>> > significant bit:
>> >                                        * 0 = broadcast (default key),
>> >                                        * 1 = unicast (key mapping key);
>> > key index is in the
>> > -                                      * 7 least significant bits */
>> > -     /* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key
>> > as
>> > -      * the key */
>> > +                                      * 7 least significant bits
>> > +                                      */
>> > +     /*
>> > +      * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key
>> > as
>> > +      * the key
>> > +      */
>> >       unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
>> >
>> > -     /* followed by key: if packet body length = 44 + key length, then
>> > the
>> > +     /*
>> > +      * followed by key: if packet body length = 44 + key length, then
>> > the
>> >        * key field (of key_length bytes) contains the key in encrypted
>> > form;
>> >        * if packet body length = 44, key field is absent and key_length
>> >        * represents the number of least significant octets from
>> >        * MS-MPPE-Send-Key attribute to be used as the keying material;
>> > -      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
>> > +      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
>> > +      */
>> >  } __attribute__ ((packed));
>> >
>> >  #define WPA_NONCE_LEN 32
>> > --
>> > 2.9.2
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/20160912173343.11114-1-gs051095%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFUU3B%2BMF4NDtr%3DvqjOd4kZgFJfK9-SnoavzyAjnygsfQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

