X-GM-THRID: 6528044448013615104
X-Received: by 10.25.210.78 with SMTP id j75mr245972lfg.26.1519936172051;
        Thu, 01 Mar 2018 12:29:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls897079lfa.11.gmail; Thu, 01 Mar
 2018 12:29:30 -0800 (PST)
X-Google-Smtp-Source: AG47ELuvSW0Y9di9i0RBfHo1p/nD8Zus2wNoMQD3ZSkUsoYz1KNiNxeh9YStF8IsbMHDzTR/8ARZ
X-Received: by 10.25.78.9 with SMTP id c9mr254468lfb.24.1519936170457;
        Thu, 01 Mar 2018 12:29:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519936170; cv=none;
        d=google.com; s=arc-20160816;
        b=bQ8tkubOi8NTTjmrE/sEMIEflKlQzRg0+Nl8CtUkfD0IXIQUkytZ3V+4wU07U0lxYe
         Q0uRlYg6L6KgtwcKQiEj8vgVeQ/OAj9lbuYHhzGeket7t5G3c3a+4cv3UC4nnqLl2I/+
         2tqKWXNPAkuYArXhNyKr/gS/IEPOZi8bA/GJljp+CGpKmy+C/U1eUhkKXDpesT04/DaW
         93SO7rjEe/fbOwZJ7FNk0+20es+6CZ9oJOUqaD2I2+inT58b1YKx+ehETYGp7BQcO8pd
         2yX3yEHEvBeN+Vgr82P76ZMHnCbcpGTduVmucsNpnkg2xTymvU6Nm5adcFwmlwtpwa2W
         7Q5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xOjccOkcdmmj3yePpo9VMyRM7zyOyQXbT5P00TqwQ0E=;
        b=lPH42XI0LOKUPEZ6xFyj66GbTUdAVk5XCNJVltW/wtWAygPWeD4bNjmwE+q+Cp9/0X
         klZ6zE4Rx1XTgyyogPpYgfn2qrXGDOloqVvnlkvoRkaLovBCV9Ym2Xddz/rZnbfM/AoX
         QkOpSpSE+swxhiWca2U7hgPw4kML7mlL39L5ve0DxJdjcdK17IQItZUNLuivtPwtHy6K
         xuV8q/Jo+CrJHF5G8Tfbxel1WRC+0r9y7QPpRRdSU8vDV2oRrt8tjYocO8aSHD96ZwGc
         Xi+myd0lSuShEnNN48x3wbrozdCOmYUC6TeqKiGO/dm9ASnVHyn3/NPkdEHxbg0gyJcI
         JFUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7si235233lfc.2.2018.03.01.12.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:29:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,409,1515452400"; 
   d="scan'208";a="256635206"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 21:29:29 +0100
Date: Thu, 1 Mar 2018 21:29:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com, 
    rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [Outreachy kernel] Re:
In-Reply-To: <1519935610-27428-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803012126130.3474@hadrien>
References: <20180301193342.GA12402@kroah.com> <1519935610-27428-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> This is with reference to your last email pointing out that you have no
> context for what I am responding to. Unfortunately, I have been unable
> to get mutt to load my inbox, so I could not and cannot quote text
> directly. I have done my best to reproduce the conversation below in a
> coherent fashion; nonetheless, I apologise for any persisting lack of
> clarity.
>
> An hour ago I submitted the following commit with respect to
> drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c: [PATCH v2]
> staging: vc04_services: bcm2835-camera: Add blank line
>
> Your reply: Checkpatch is wrong here, don't you think? Are you sure this
> is actually doing what you think it is?
>
> My reply: Checkpatch suggested two warnings for this file in consecutive
> lines: "static VCHI_CONNECTION_T *vchi_connection;" and "static
> VCHI_INSTANCE_T vchi_instance;". Both warnings said to add a blank line
> after the declaration. If checkpatch was wrong, is it okay if I submit a
> version 2 with a blank line only after "vchi_instance" and not below
> "*vchi_connection" (effectively undoing one of my commits)?
>
> Your response: First off, I have no context as to what you are
> responding to here, please always quote the email you are responding to
> properly.  Reviewers deal with hundreds of emails a day, and not having
> context for what you say doesn't really work :( Also, properly wrap your
> email lines at 72 columns, your email client should do this for you,
> right?  Please respond to the email with the correct context and I will
> be glad to respond.  Right now, I have no idea what you are referring
> to.
>
> (I am sorry for the suboptimal formatting. I think I managed to linewrap
> this email properly, however.) My question remains: may I submit a
> revised commit that effectively undoes the first "add blank line"
> commit, i.e. the one that added a line between "static VCHI_CONNECTION_T
> *vchi_connection" and "static VCHI_INSTANCE_T vchi_instance"?  Thank you
> for your time, and apologies again for the confusion.

You don't submit patches to fix the incorrect changes you have proposed
and that have not been integrated.  Just start with the original staging
tree and send patches against that.

You can use git rebase to remove a previous commit in your tree (read the
manual to find the proper options).  Or if you don't care about your tree,
you can remove it and start over.

julia


>
> Regards,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519935610-27428-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

