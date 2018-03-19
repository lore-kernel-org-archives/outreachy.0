X-GM-THRID: 6534657346534113280
X-Received: by 2002:a24:1f02:: with SMTP id d2-v6mr6180046itd.13.1521473701440;
        Mon, 19 Mar 2018 08:35:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ed4d:: with SMTP id r74-v6ls652048ith.8.gmail; Mon, 19
 Mar 2018 08:35:00 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsBXOLJBqs4PmczJi+UrFs7VSp+L0drNwG6d/a9GmrLjH2bdQuh64/QwTAlunr2nmFLKGJS
X-Received: by 2002:a24:7c55:: with SMTP id a82-v6mr3797574itd.45.1521473700446;
        Mon, 19 Mar 2018 08:35:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521473700; cv=none;
        d=google.com; s=arc-20160816;
        b=jwO9EsGzucd9ycUdPo20KmSafp3i4IshChg6b79OFH9IPjkV4Qgt+TNN+uOcVNUcG5
         Gws5+4Fi5VW2Cb8WZk7LFnd3UipmnonBhJSvLhlzHW90FVwtLSwyXVnwaqrXjo/ZK8Dz
         4PAs6y2ZFliobKBHALI7ZM+FM8AsgoX3sNDgMMH1Va1ehqgKQK9rIF8OOto3zUPg0x5A
         SfXtHmeMdBdp2yCYMtxIYVCjywsbV2uQjHrA4qMiC2vp+Z9CYduhQTOYt82Qufi8TKnO
         lBKeZo5rl8PRnPEOJ8wOGKSERHjYTbs6twRZzd2IM6VQwuMsbAr650lsPpFxQFeletkR
         nGKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ryGlM0LkC9m+PSL/X9UU7+9JYYwasIIC3CYkBVWjrsg=;
        b=HCyMo9z6pUzlMSpDcj/HwSNmSbI371cmTF8ePY4wca9DQ6U9eeJUchnr26W4jJ13RQ
         MARF/MrIpafNSjjjIduQzv/lwFhLoW/51nwBvdzLqNMujIOCNlhxM0NPvX/fY3ACTrDg
         7EGUXMudUQaz6TJTh627y2IM29m2bTjxCZVzkNLmQUmxYD/fTNEoSEzjA6kOFzSwBewI
         7r4psXiDxgSejV2AWt/HfNkkr8TU7td7qtMoaNyWD7g1bP59Wu2+I+73egL0O2XFbDsW
         f8ZlVbMSN6rCyy470ai6p2f3yUp2KHUn9V5MAlEJEy4eu+9pMKcZmwvPhUtQm4TxJZJG
         pxRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ccNEhPQ5;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id d85-v6si489363itb.2.2018.03.19.08.35.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 08:35:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ccNEhPQ5;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x22a.google.com with SMTP id g14so12423416iob.13
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 08:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ryGlM0LkC9m+PSL/X9UU7+9JYYwasIIC3CYkBVWjrsg=;
        b=ccNEhPQ5AvwHJ3eL5xoPiveRKWm5SAWzVGC4PmnViJkmJ4iAKVrvfeh9baj57evhnm
         Zy4FJCgVWGUJlz7fkjAWH3yJWXsDsO0i0zlZRZVkAel+JX+ftPgjWN8ELpueP1LCCgL0
         JvP0nN1a+AHSqgWJLUY3lwRFAaCw/00kob+lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ryGlM0LkC9m+PSL/X9UU7+9JYYwasIIC3CYkBVWjrsg=;
        b=dH1rqGHncno30HXH32L+gHsZSAQYYOQcvO3ZRs28PnmDYO7+4fV0dp0y4sA/0sZ9Aq
         MeZFWHDVyFLFDxjNRJq7TbWhvkTCkDjmRi1gm2O8FOL9CScJgtltpH9t8pCe9t7r1Umk
         kbVxEpWykIz2waCDoupkV5ETbFY3rS/Sg5C/kttphvzpN8wOwNW8qwxSus91Q8ov0vMh
         THkkGyX5akBPEe375jrVkNQKvMdhm1A5/qHtsjL1BP/UQfokSV9FORBeEOYZ6gRbbCT2
         1LTD80iT0XbKXtX+79BtFfE2qPoIjGPHfQLpxBAS5Fzw5KD7aId6jab6c4UxV1sNCXCB
         qq6A==
X-Gm-Message-State: AElRT7HAOChW1LXkaJ654xinmpH2n7nMVPRMcG7U7rrCyVNQQpizuVGt
	ae8d8UZ4kGirSm98HqXnGMnaYxabdgm9povh2Trc3g==
X-Received: by 10.107.44.199 with SMTP id s190mr13050859ios.123.1521473700083;
 Mon, 19 Mar 2018 08:35:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Mon, 19 Mar 2018 08:34:59 -0700 (PDT)
In-Reply-To: <20180319153015.GA6022@kroah.com>
References: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180319141241.GA17366@kroah.com> <CAC4++KDrEYS7CS-mVaN6j9wrSJRkD-ycAV2CBJ8MPDh5wOL6-Q@mail.gmail.com>
 <20180319153015.GA6022@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 19 Mar 2018 21:04:59 +0530
Message-ID: <CAC4++KDB7K4Lfn0Edp+g9gF3TzARZUuuagaMaJquEeTLmo_Q8A@mail.gmail.com>
Subject: Re: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix
 multiple line dereference
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 19, 2018 at 9:00 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?

Will remember not to top post in future emails.

> A: No.
> Q: Should I include quotations after my reply?
>
> http://daringfireball.net/2007/07/on_top
>
> On Mon, Mar 19, 2018 at 08:54:11PM +0530, Nishka Dasgupta wrote:
>> The reference (in this and other patches of the same type) is of the
>> form dev->component[something]->output[something else]. Because of the
>> line limit, this tended to be split over multiple lines even though
>> it's technically (as far as I can tell) a single argument. Such
>> splitting may have the effect of making the code harder to follow
>> (since we now have to mentally assemble the same value from multiple
>> lines of code).
>> By condensing the parts within the square brackets to 3 or 4
>> characters, I could fit the entire variable in a single line without
>> violating the 80 character limit.
>
> Yeah, but you "waste" two new variables for this, and force the reader
> to have to go backwards to try to understand what exactly the array
> values are, and be confused as to why they never change.
>
> If you don't like the statement, it can be all put on one line, and
> ignore the 80 column rule here.  Or better yet, just indent things a bit
> to keep it all on one line, or use a temp variable for the pointer
> value.

Is it advisable to ignore the 80-column rule for a change like this?
Because this is something that comes up in at least 10 more places in
another file in the same driver, so I was wondering whether to ignore
all of them, or break the 80-column limit for every such line. Which
should I do?

> As it is, I don't like this change, sorry.
>
> greg k-h

Thanking you,
Nishka Dasgupta

