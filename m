X-GM-THRID: 6464551056446586880
X-Received: by 10.101.64.132 with SMTP id t4mr7582614pgp.75.1505146512081;
        Mon, 11 Sep 2017 09:15:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.219.5 with SMTP id c5ls5664609itg.2.gmail; Mon, 11 Sep 2017
 09:15:11 -0700 (PDT)
X-Received: by 10.159.60.24 with SMTP id u24mr6809788uah.122.1505146511390;
        Mon, 11 Sep 2017 09:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505146511; cv=none;
        d=google.com; s=arc-20160816;
        b=R2M7inS1Db+0Hd5iR6YZ9Vaij+7x/ofw2qqH2tW7DI78o5KRWMyM/CKE06jMuulaLg
         q0CQWN2Ri0ldT6FflE1NXD4LwVj7VYUaH0IUZJ06pvbd8IhgysaRrrEcejq5Q7smG/k6
         FfdeMcM3nhFcyOnry3WySm192597QD6qFLMym0aWNSZyx3V+RTieXBW1mJGdK5MBWnSB
         PQNYiqf3En+fzgz3HD5X08bv9c3ZIozhZCbyuhb8MAjJhhYGKB/tglPdERUY/kH9RMGp
         nSkSDDPsTjiLxfIqxwrKoGQbHTgupkttEIJRD2ldvljM/TJrgbsl8w03oCfrt2K+Zt/O
         9jEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=G021SnO9N0bX83mTS4QHX4/LhoQoP9zKvT55Op1EMnI=;
        b=UBdvU9jacwgUwS3g0Fs1H2F1gk+LGo3Rl+Yu1A264GF5Vvak/ZPX0G5nnMwV2tovfv
         jz2kKF0RKO1rNip7hSzZkv4ZeJo4DeYcoFzu5XpJCRQ44MwrN219tcdcmk2UoYL7zl1q
         WloQeJEfhyD61OnhxS09FYPdnevfQoeIu9/pepFjsww7pEw8uLjjm6du4pgkPGgN1qv5
         2+Tk1klNuGNgqIjN7TQgvthUvLhnjxHhI+/SXNfu2D6hFOeVC51Qe1wmbC5RWbon8W3T
         hsJkPwK3gFn77Wd+m9SplPIMaVgw8ies0ppvgh/opdZKa6Z/+aF8toMn4iryafBE6gdq
         fS/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0bFjig0;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id u127si517494ywg.1.2017.09.11.09.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:15:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0bFjig0;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id g128so5712872qke.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=G021SnO9N0bX83mTS4QHX4/LhoQoP9zKvT55Op1EMnI=;
        b=j0bFjig09KPHzm04WY/KGL7Yf2+x5PCISRBDzB6h0Wv2V5Qv2HQKNiAfmrrvWH270V
         zbJiQgdr4Q8hfyaIT0EI2XG6Sr9BtOHih0a0d5yuM5mqNGDgoYplD2G3FV/gT8UOMdFh
         ifCBnPMw0Sz1sUbE5gJAmWt6a7w0JPkwPBEf2rM2rzrLsiZtqUbPv4RdotnW1P+aeA3g
         rsWlWzQDDCivYWvpg9htHxIUVqcnaXSIsqM4OndFFG9ztrwq+m4+KHaYyrD1N3qqVygZ
         +mZM3YN+4FCheQxKQuoasO4sTATEqi7kGVXgW6FEvGJKPdP857ccJ6KfWNgZvZZzI9R8
         YsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=G021SnO9N0bX83mTS4QHX4/LhoQoP9zKvT55Op1EMnI=;
        b=KrpY1vy3yozs+J/cUhbL1u2JxiDdieX2RrzSc7JOvZW8CmHafIivOlK3uf3Mxno3OC
         fBDZNnAF9mu/4MCinz8QvE7MZ+2Ti6II2Ipk8Kn6sBY9+8qWRrRQxHqHYCuXlJHRfqsf
         O5Ec9h+YjnwRBl0is5NKCgKCMCsC6QzTg8AaMTT6WSg+dbQ88n9b8oN7RQQKX10JoGuL
         CwGtJKyAVv4bbXn55Lu3y20Ug9u/+t/P+dCFlkMPrCoDkudko6qTi1c+j7r8QcLwu31N
         GZtY3YtQnu5y8KVtjo3yxzdQxBuUFaaay4F8JKklMcw2wzamQNAnBeIvH7ipe/uhwKSt
         2amw==
X-Gm-Message-State: AHPjjUjN3rOfh/r+wuUKPqUc+s8lg1I6tU/LYh8b/vwO5T/FxVzk8KK2
	v0wv7y9Rs51NK0UI0VpZ7r8To4lKag==
X-Google-Smtp-Source: AOwi7QCUvAwoHSeR0FXUA29DqRslocRcG9L8HMm7V8hxxyoEoI5G5qIOEdEI8w/imcQDpyuKWKcohICHfWofVX98/bA=
X-Received: by 10.55.158.6 with SMTP id h6mr14976791qke.32.1505146510921; Mon,
 11 Sep 2017 09:15:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Mon, 11 Sep 2017 09:15:10 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709111809180.13726@hadrien>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
 <20170911160449.GA11886@kroah.com> <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
 <alpine.DEB.2.20.1709111809180.13726@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Mon, 11 Sep 2017 21:45:10 +0530
Message-ID: <CAB3L5oxwadCBOwir99x=D4Rmby6ZWPfDtFrMNwtFOpv8zhO4iQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ccree: Don't use volatile
 for monitor_lock
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 9:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 11 Sep 2017, Srishti Sharma wrote:
>
>> On Mon, Sep 11, 2017 at 9:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
>> >> The use of volatile for the variable monitor_lock is unnecessary.
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>> >> index e5c2f92..7d77941 100644
>> >> --- a/drivers/staging/ccree/ssi_request_mgr.c
>> >> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>> >> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>> >>       dma_addr_t dummy_comp_buff_dma;
>> >>       struct cc_hw_desc monitor_desc;
>> >>
>> >> -     volatile unsigned long monitor_lock;
>> >> +     unsigned long monitor_lock;
>> >
>> > While volatile is not right, odds are, this is still totally wrong as
>> > well.  How about using a "real" lock instead?
>>
>> I tried to find where is this variable being used in the code, but I
>> didn't find any usage of it . It might be an important attribute of
>> this structure definition but, I don't see it's value being set to
>> anything or being used somewhere .
>
> Try removing it and see if the code still compiles.  There is always a
> danger that a use of something could be constructed using ## in a macro,
> although given the uses of ## for this driver, it doesn't seem likely
> here.

Yes, I'll do that.

Regards,
Srishti
>
> julia

