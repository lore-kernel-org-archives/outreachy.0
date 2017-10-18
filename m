X-GM-THRID: 6473105457256857600
X-Received: by 10.80.244.1 with SMTP id r1mr4267435edm.3.1508338793161;
        Wed, 18 Oct 2017 07:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls1935358edk.5.gmail; Wed, 18 Oct
 2017 07:59:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAi2haIT0mhOjkj12OdG2eesUGTA98cvih+vW/KnWhgsJBGSoi7YII7gVQ5+kND7oOSrpvv
X-Received: by 10.80.182.75 with SMTP id c11mr4249364ede.4.1508338792575;
        Wed, 18 Oct 2017 07:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508338792; cv=none;
        d=google.com; s=arc-20160816;
        b=OgP7VI8XRjYRKHbjceJOYPFwwuJVL2tRwK0/1AtWVgxzUv0icwuMCShj9Y6pupPtte
         W0LKle7ShOrmpKX3JeacUID2X7PsxfZZ9vKYmiAjyMYkwD8yocgEqs+zSscRukaLfz1k
         V8WyTER23cIdd+M2cTdZsRlZLt+dLYHnF3eGSc4GZDuC9OOi+uVYU6v013JaC0+hXpIR
         /pR2W3GYCugKH2EFPQVEu2pyOK7f1Yh4X1fxj5Duj7/lxcGee5KjAoB8l31eR7rkjNox
         SCqJxlWCHkkkA+I+JlH1PZ+4auRPYdQtvVEAXCrlqrwvB+DekMnKmKwzNiltJ0+Wi36g
         kIDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=cs+8PfeOsQWnGZjPB06JxuNmpLN1wQ7XWgTw7x4u2p4=;
        b=u6km613imElhYVZR7gl+2YXZ43qGcN0TjusbHcnxyBgOmXDVvywKDk7R2O+ttNDjch
         Bh7n78+VkOW8XoN6oITkDOd5zZQmM3i6OxUB3vxvqbg29ovGudY1q1oPR7ui7F0bWBFd
         XRszjnh+18hnq7n6j50hZdiNXiv4P58qi1vBO//yGZg8uzaHcQzPRpFzIWpSJVC2AmQM
         sugbqgGbwTgVxVfJvWMgmDF+KrjT97bUfSLQJ7C33Z5FQVcMjlPSbjR/R96WXPGwgMaY
         tv/hq+gjs3fMa4VG+vBVLlSEH8QJDMCWsKRWqUSlMfeeryY57wl3U65la3zroEaR2G/8
         BGFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f9si720720edm.1.2017.10.18.07.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:59:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,397,1503352800"; 
   d="scan'208";a="296822844"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2017 16:59:52 +0200
Date: Wed, 18 Oct 2017 16:59:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: rtl8188eu: core:
 rtw_ap: Use list_for_each_entry_safe
In-Reply-To: <CAB3L5ozhby6izgNjoBZS6BwzOgpVcoH1fErt8PN3JhptFv0FGA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710181658000.15834@hadrien>
References: <1507196802-4143-1-git-send-email-srishtishar@gmail.com> <20171018123117.GA11890@kroah.com> <CAB3L5ozhby6izgNjoBZS6BwzOgpVcoH1fErt8PN3JhptFv0FGA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1844919114-1508338788=:15834"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1844919114-1508338788=:15834
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Wed, 18 Oct 2017, Srishti Sharma wrote:

>
>
> On Wed, Oct 18, 2017 at 6:01 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma wrote:
>       > This is a cleanup patch and doesn't change runtime behavior.
>       It
>       > changes an open coded list traversal to use
>       list_for_each_entry_safe.
>       > Done using the following semantic patch by coccinelle.
>
>       You have sent me two different patches, with this same subject.
>
>       And you have sent me lots of different patches for this same
>       driver, I
>       don't have any idea which order to apply them in.� Please resend
>       them
>       all, in an ordered patch series, properly numbered, so I know
>       what to do
>       here.
>
>
> I had sent them individually because in a patch series they would have the
> same subject, as all of them are making similar changes in different files
> of the driver. One patch for all files would probably be too long, What do
> you suggest I do in this situation ?

I don't have the specific change handy, but maybe you can incorporate
more information about the affected file or about the change itself in teh
subject line.  All subject lines need to be unique.

julia


>
> Regards,�
> Srishti�
>
>       thanks,
>
>       greg k-h
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAB3L5ozhby6izgNjoBZS6Bw
> zOgpVcoH1fErt8PN3JhptFv0FGA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1844919114-1508338788=:15834--

