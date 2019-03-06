X-GM-THRID: 6664067951305424896
X-Received: by 2002:a2e:8941:: with SMTP id b1mr198631ljk.24.1551865950052;
        Wed, 06 Mar 2019 01:52:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92cf:: with SMTP id k15ls144007ljh.6.gmail; Wed, 06 Mar
 2019 01:52:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqzeakyHw5oB9Yol6PumJ2bL/e9SMTjjl/ifCpiLits0SFm0L7Hwgehkn531iAiovW6d9j1P
X-Received: by 2002:a2e:9613:: with SMTP id v19mr204598ljh.16.1551865949013;
        Wed, 06 Mar 2019 01:52:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865949; cv=none;
        d=google.com; s=arc-20160816;
        b=aFbBnyX+0jgdLmnJd86u9CzAg1BXSYnAvWsSw0MTltRYlmTrJYvCd93NODZEFj4Is4
         UnjrYDtRvn39irZnGe8B/4yGcdlAzVsAHCRtxfi7XoVcFdkbBBJ7RIf0detM11bMaJkt
         lJR4fGMK5J7O5+DKLzxXQpsacNCrNSlfAGu6lQ05U4CY2lKEyCz+YRDmMDn60A7F9aDc
         ydPGvcDCVcsNW/Q+pmOCXSMxA0sTo7+uIG8N4DNRCK1Hmyow32lpASXblmf2CrdCUc2v
         zvTUam7vL6ZsqIU8oilZMW+mGpAsQc+SDDcnVgzsBmpgbUvtsu4kZ8NBJpJJWokveY1F
         6PXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OlNu+KkaRINp8Xw2YSW06q/44gXoLcrfASUct2VZQAY=;
        b=D7Fefm9BC37Twsm/Vlxa3aCPMxCONOJXB76YgQjVnTbIpByOsgDzOBnJJMlijWfE6d
         u15oSubQ6mQFzmF8lTHPipovt+R21eKafRpqHy4637Kwra7+C6cwZG7uw0XN0ejUkkUl
         Pp0D3tXy22XrbjbeVAq/FcpMPE0w8FvOguicZl/NPxAg3pVcniLl0RmgpJiR8ZA/qP/A
         ZT3o+5Z1/B0fISXG/tAyD/fxGdlyWsFG867W8G4qBxHa0Yu939prcMpTqZIy7fn2KxQJ
         SNpORtY9lDqYajeuablHKSah6RiNjyvjOlZisX+KYX+ByYJEvpoy5fhAoaVdttfELIMO
         B/0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m65si13750lfm.1.2019.03.06.01.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:52:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,447,1544482800"; 
   d="scan'208";a="372149071"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 10:52:28 +0100
Date: Wed, 6 Mar 2019 10:52:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Fwd: [PATCH] Staging: pi433: Fix line over
 80 characters issue
In-Reply-To: <CACw+u4FaS0PDoxh2urUrqgBfRJWD7qY7xchgVEaKLZ06PD6a+A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903061051570.3557@hadrien>
References: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com> <20190306091521.GD7927@kroah.com> <CACw+u4GRhRY5kgjQgd-sYOLp4nfHU-tp_oKfK74i+QR7cnWQNg@mail.gmail.com> <CACw+u4FaS0PDoxh2urUrqgBfRJWD7qY7xchgVEaKLZ06PD6a+A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1140504101-1551865941=:3557"

--8323329-1140504101-1551865941=:3557
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Wed, 6 Mar 2019, Debleena Sen wrote:

>
>
> ---------- Forwarded message ---------
> From: Debleena Sen <idebleenasen@gmail.com>
> Date: Wed, Mar 6, 2019 at 2:54 PM
> Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
> To: Greg KH <gregkh@linuxfoundation.org>
>
>
> On Wed, Mar 6, 2019 at 2:45 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Tue, Mar 05, 2019 at 09:13:06AM -0800, Debleena Sen wrote:
>       > Break the lines after '&' and match the alignment with '(' to
>       remove the
>       > checkpatch.pl warning. Remove whitespace after '&' if any.
>       >
>       > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
>
>       This has the same subject line as your previous patch, yet does
>       different things :(
>
>       Please resend them all, as a patch series, with unique subject
>       lines.
>
>       thanks,
>
>       greg k-h
>
> �
> Actually in pi433/rf69.c there were like 16 warnings of the same type. In my
> previous patch I had fixed only one warning. In this patch, I fixed all of
> them. They have the same styling issue and I did the same thing on all the
> lines. So I thought to put the same subject because essentially all of them
> are same.

Every patch in the Linux kernel needs a different subject.

julia

>
> Debleena�
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CACw%2Bu4FaS0PDoxh2urUrq
> gBfRJWD7qY7xchgVEaKLZ06PD6a%2BA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1140504101-1551865941=:3557--

