X-GM-THRID: 6332661608531099648
X-Received: by 10.129.5.216 with SMTP id 207mr18434515ywf.6.1474476853851;
        Wed, 21 Sep 2016 09:54:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls4454215ita.17.gmail; Wed, 21 Sep
 2016 09:54:12 -0700 (PDT)
X-Received: by 10.107.52.68 with SMTP id b65mr7978971ioa.100.1474476852503;
        Wed, 21 Sep 2016 09:54:12 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by gmr-mx.google.com with ESMTPS id w124si3329448ywc.4.2016.09.21.09.54.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22a.google.com with SMTP id i129so63648557ywb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 09:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZS8a+wL2qFhokroahnPwWvPhSodelAHVno+i8zh47X4=;
        b=NH+Y9YNGtwib8E/t8r3IutaS1iS8jV7w2CPN9NgLpwpd46NX3Qy2080ZKRCQz+dfI9
         OF3z1xEVX+J3k3ZvFpDau7z4O7gn+VSy2xyjIGSr0SbP8kG5YIGwQ/duwWvnGsjnQxSa
         zGkTCdmoasIvcBv2DRAfE7JxAiZFSmRBz1M67bP2fMEkCEl84Ed2gbro0oTkyqR/FNyI
         tRdHavUY1lhV+kyuatw9RaWeMUK4ESIKzN9iFfFGSxe2FufaDOoUfju2QlTxR6LvqjM6
         60lYl4fazIYG/1QvOeyvA/NKNcaBr9dcGBYVs4e+vm5O5gcRW2iG+ScXM2yuOD1/WYfm
         ZZjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZS8a+wL2qFhokroahnPwWvPhSodelAHVno+i8zh47X4=;
        b=EzPfbo6NsosMdludh7pUlqybA62qYgoQY4HsxZAA/jMlJkfqv59ins9qRrfgGvbupz
         o+t+k6DuLl1s6/A5w35J1/dn/MAmX3McsceiABAKBdoa/WF0E6gFk0i64iFA5/7v3sY1
         YyBSpnuc5ftgekGkK/E4Yn8gtTcKatXomFaxAa0bXiGbkzsZDM6E3FGIsavhQ5uyqo2V
         lbJQqmHMIzYfdEcOZZ8g1Ittx47RD0XUP8u3E8m8upT4IDytbrPgOLtVAd5qZF/Ihb8D
         QSNCM4ZUJ9wIKaBwNIFqiNus7XnUuoxRzoTdQhliPGPyKM/JK18hgU/zaCHBd3ZSXfPg
         3+Dg==
X-Gm-Message-State: AE9vXwMzKStKkfoNO4otOLTOi4G8MwwRMEMBWgdiTL20fXLQrp+9h8PHOSMllYP50nAXGp0OgpiFkULZR/JBGw==
X-Received: by 10.129.124.214 with SMTP id x205mr20340105ywc.153.1474476852298;
 Wed, 21 Sep 2016 09:54:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.137 with HTTP; Wed, 21 Sep 2016 09:53:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609211852230.14829@hadrien>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
 <20160921162649.GA2358@d830.WORKGROUP> <CAKHNQQF3MsCTkicKWN3MvWBtdneHb0_dkPs4v0apW5yRZ8D3Gg@mail.gmail.com>
 <alpine.DEB.2.10.1609211852230.14829@hadrien>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Wed, 21 Sep 2016 22:23:31 +0530
Message-ID: <CAKHNQQEPaRidGeQr1QAZFdBcWi2X27XV9fqic1w7fACtebKH_w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Mutt/Gmail Issue
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>, gnudevliz@gmail.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 21, 2016 at 10:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 21 Sep 2016, Shivani Bhardwaj wrote:
>
>> On Wed, Sep 21, 2016 at 9:56 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > Hi Liz,
>> > Similar to Namrata, I don't know answer to specific question, but
>> > I can share my .muttrc and .esmtprc that got it working for me.
>> >
>> > And then there were some things I did over in my gmail account settings
>> > probably related to selecting IMAP.
>> >
>> > amsfield22@d830:~$ cat .muttrc
>> > set sendmail="/usr/bin/esmtp"
>> > set envelope_from=yes
>> > set from="Alison Schofield <amsfield22@gmail.com>"
>> > set use_from=yes
>> > set edit_headers=yes
>> > set spoolfile="imaps://amsfield22:mypasswd@imap.gmail.com/"
>> > set folder="imaps://imap.gmail.com/"
>> > set record="=Sent"
>> > set postponed="=Drafts"
>> >
>> > amsfield22@d830:~$ cat .esmtprc
>> > identity "amsfield22@gmail.com"
>> > hostname smtp.gmail.com:587
>> > username "amsfield22@gmail.com"
>> > password "mypasswd"
>> > starttls required
>> >
>> >
>> Hello,
>>
>> Just in case you don't know the exact settings to be done in your
>> gmail, you can check my blog post here:
>> https://unixia.wordpress.com/2016/05/01/setting-up-mutt/
>
> Thanks Shivani.
>
> Could I put a link to this in the kernel tutorial?
>
Yes, please. It would be great!

> julia
>
>>
>> Shivani
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160921162649.GA2358%40d830.WORKGROUP.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQF3MsCTkicKWN3MvWBtdneHb0_dkPs4v0apW5yRZ8D3Gg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

