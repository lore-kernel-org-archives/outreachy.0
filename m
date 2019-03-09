X-GM-THRID: 6666274038276423680
X-Received: by 2002:a1c:c704:: with SMTP id x4mr1792648wmf.7.1552138718442;
        Sat, 09 Mar 2019 05:38:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8085:: with SMTP id b127ls18801wmd.0.canary-gmail; Sat,
 09 Mar 2019 05:38:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqw6TWLwquRxoPmA0rEHDi3tq7BkbOpMDrTZFYIFEyeNpXuyNWZOCumS/CH0nPJmhJtekrTe
X-Received: by 2002:a1c:c60c:: with SMTP id w12mr1722690wmf.3.1552138717680;
        Sat, 09 Mar 2019 05:38:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138717; cv=none;
        d=google.com; s=arc-20160816;
        b=PEWZheTjkqlbAlrog55JHvQ9kADykrCMkIgIBgj+JY+fJKkgpH/SYNrgPDbcqdp5cS
         lk1qStK+Spv+a4zJo4lNz3ZLGuvGjiH5WYliNpMD7YWXWh7j73Y0l3nlMGhrUKabnNG3
         277zEClARwZ1Mvc//q7plE0qv1NqyYimjT3NKGaenzz/d9kQ+SjDiYVb+f3FyQpwueip
         njOZuUBTbKzWA0whOYqScjQLgwz+BZop+kHEw03/wkvNwzHBE5aMe2BXyS4CY4Z+tccQ
         JibuAvMpZvZcE3HC6LHFx4yz0c976RHJ5JMc2FYnmRCaseQsjhAGDo36XAB6faYFzoLT
         IQ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YVk6D7qYU0oKBwk3w9HQ6Ql2wGnBEsfZkypiscLm4jI=;
        b=epwtPTrdXXLPBdZ1P35GzKNy9v9+1RKTYwPLyj1hmQFhUZjWoQ/8PbFOkyhwFn/VvD
         xxAhhx0OaK90r4KPnogjfHl2Gt+qMPENaXxf3NepQ217GZOUXlkyLHFbkyY9B789Sp2m
         x7aXjpOfwZ9XbJRzp3avJ7HZ5Ex5CaKS3K10/ZG7+9hj0b98zcnSZvdtVqX9vlQh7hX9
         nwBHccmDICqKieQeQzRGYfH8lanXqblNY5ZJrbO4JK8wfO6ARvZIalNfHYypq+i94A/Y
         t3uK3RYjEtDMYp7/rUwccM8Xn3YmxZbsIAnDlKv+1c5yQDAL5xlPmmepjn2fUI36WOAm
         ym3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v189si406965wma.2.2019.03.09.05.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:38:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="372631396"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 14:38:37 +0100
Date: Sat, 9 Mar 2019 14:38:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix assignment
 operator alignment
In-Reply-To: <9474be9e-9cd2-46a6-8b24-539b28e4a86c@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903091437490.2452@hadrien>
References: <20190309031718.GA18429@branx011-Vostro-430> <alpine.DEB.2.21.1903090734060.2558@hadrien> <9474be9e-9cd2-46a6-8b24-539b28e4a86c@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1645005409-1552138717=:2452"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1645005409-1552138717=:2452
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 9 Mar 2019, Branden Bonaby wrote:

>  
>       Fixes confusing assignment operator alignment as highlighted by checkpath
>
>       > The commit message should be in the imperative.  Fix rather than Fixes.
>
>       > Fix is actually, not a very good word, because it doesn't describe what
>       > you actually did.
>
>       > checkpath -> checkpatch
>
>       > I believe that checkpatch would also be warning about an ( at the end of
>       > the line, and the change has preserved that problem.  Maybe a better
>       > solution would be to leave the function call where it is and move the
>       > argument up to the same line.  If it seems more readable that way, going
>       > slightly over 80 characters could be OK.  One would have to see how it
>       > looks.
>
>       > julia
>
>  
> thanks for the feedback.
> the only thing is when I move the function call and its arguments to the same like like below it makes the line 103 characters long
> msg1.channellist.data.data[i] = ieee80211_frequency_to_channel(request->channels[i]->center_freq);

My suggestion was to leave the function name on the second line where it
was.  You have to make some compromises.

> I could do something like move each member in the argument under each other leaving the "->" at the end and then making a new line under it

No, never do this.

julia

> but other than those two its probably better I leave that line alone since I don't want to break it.
> what do you think?
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9474be9e-9cd2-46a6-8b24-539b28e4a86c%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1645005409-1552138717=:2452--

