X-GM-THRID: 6666918096348905472
X-Received: by 2002:a9d:5388:: with SMTP id w8mr19557846otg.20.1552344054723;
        Mon, 11 Mar 2019 15:40:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a80d:: with SMTP id r13ls5207488oie.0.gmail; Mon, 11 Mar
 2019 15:40:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+v0f6I1syxZr3ri4McXvdnwUZj6IGCfid5o0NSrBmis/7QiAhHUPHs1m9FZlgh8kkcwAt
X-Received: by 2002:aca:cc8c:: with SMTP id c134mr78888oig.36.1552344053698;
        Mon, 11 Mar 2019 15:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552344053; cv=none;
        d=google.com; s=arc-20160816;
        b=uySMwDxC4QR83Mgl0fuoCWeFeB8NvpWk50P/gN9tLgsnig4Hp7JrBUb/n1mCc7qHl1
         Lx3czGUMp+J29Y46l2Rg1US8rcjXUO24RL/V3dPyOA4WKtR4zQ1GwXlygv/Ju4uSJEwi
         045v4qJXHlvSc7aVRZO4yoJa2GmJeIDL6tpRXVoPaKwF2Q/mg+T1m/nJPGgMVJHPXUrx
         0L8co0+XtvKMVxrhQgrFmKGJDvyDmhYj5jOncBWRZQ5iumj2EHV7/3Ea4Pewzukh5JqO
         +pQgcwYgM8IcO3E0285fkVjPkOQKMKxFM2JKB6q+II7fG2tX9+6QByIqq68gub9lX3fx
         IoRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+2abcYUTeNV/z19kg3mZOm8sqYdq30U5pv0koAKUP/4=;
        b=AFIpk4HHsjbI2ggpIXufqH6LRC05pcJg0FwATqibaqQLGeXlmgZxiOmwTxf3Xa2HYu
         PhCQStxNzxrD12U7pwFZzOWJMAwffJVNZ/+sRsKZ5s2v5qOA6EYsWdL0+dEukE8ZmA7+
         oDo5BY2lO7h4GJ8NToGRdkgJHWDXfEr6I2ljvFaONtA6kepmQFeO9c6a5/mlc0Ko1gP+
         47hweEeo97W07n+iBxhn8RYDSQPZ6dS+3bm4hTfWgPNn5qZoejjJ65sl88g73us9DJdj
         bOPCW9TFqR1t+OGvIpY1lIClqTXMf9IZPiQbIPiAuHqTpHfOyuV1iFq2dyfyuNDmyRfn
         jVnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FxRv9CkP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d128si340681oia.3.2019.03.11.15.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FxRv9CkP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE4792148D;
	Mon, 11 Mar 2019 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552344052;
	bh=XwYm/PkgDoYJ6S9wPKlx9om+4uXUfMHQHRpYf4XgQhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FxRv9CkP2gx/ad850yL98qki1o2nIMoXPsRcW5WlQtAG9UqveO9nW5O8ZsnNEm17u
	 Y8ftVdvM3F9YOKRQW62NeX2vu45jG8IsikCQISOl5oXdFg3QaTRRgHQnSMUVxv0/Qk
	 08esdid9qVoFBBeHlnwzUUsV96f3j62Z2FgoDfiE=
Date: Mon, 11 Mar 2019 15:40:52 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Octave <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1 1/3] staging: rtl8192e: add SPDX GPL-2.0+ license
 identifier
Message-ID: <20190311224052.GA31563@kroah.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
 <20190311000702.12740-2-jbi.octave@gmail.com>
 <20190311030449.GA17063@kroah.com>
 <CAOuULM61DXcVaTHhXvwnmS0FdREQjsFLnKxC4abGG2OcD092wQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOuULM61DXcVaTHhXvwnmS0FdREQjsFLnKxC4abGG2OcD092wQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 11, 2019 at 10:15:03PM +0000, Jules Octave wrote:
> >Why did you pick this specific license?  It does not seem to match the
> >license text in this file at all.
> 
> >Be _VERY_ careful when doing stuff like this.  If you get the license
> >wrong, lawyers can get mad at you :(
> 
> >Also, the file name "dot11d.c" should be in the subject line, as you are
> >not adding the identifer to the whole driver, only one file.
> 
> >Please fix this up and resend the whole series.
> 
> >thanks,
> 
> I read online that the default license is GPL-2.0+  as it is not indicated
> in the file. I think I was wrong. I would have asked the maintainer first.

Where did you read that?  The default license for the Linux kernel is
"GPL-2.0" no "+" at all.

> Okay, I will just reset it and try to think how to deal with it . I have in
> mind a GPL 1.0+ as it covers from 1 and above, I don t know if it can be
> fine. I have to ask the maintainer. I am sorry.

As the wording of the text says to refer to the LICENSE file, and that
is GPLv2, that should be the license for this file as well.

But if you do not understand license issues, I would stay away from this
and work on other tasks.  It's tricky and people get upset if you get it
wrong :)

thanks,

greg k-h

