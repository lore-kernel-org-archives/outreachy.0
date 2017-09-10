X-GM-THRID: 6463845646554103808
X-Received: by 10.46.21.27 with SMTP id s27mr588146ljd.41.1505046933006;
        Sun, 10 Sep 2017 05:35:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.201 with SMTP id b192ls712518wmb.22.gmail; Sun, 10 Sep
 2017 05:35:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCxg+xdtQKW/OFjHD8VRELK88W0Gt5Nj5aT5G/qvChE8//lOOLszb9MydIse05eE8SlXK+g
X-Received: by 10.28.72.135 with SMTP id v129mr612486wma.14.1505046932048;
        Sun, 10 Sep 2017 05:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505046932; cv=none;
        d=google.com; s=arc-20160816;
        b=D2XQSzPzoIJ+jOAvJZQu5Mh09/UFdjvO8YMn4+1itEZcCPohgQ/RKs5JYK4hFwzHhx
         SipnNvsTrPKu6Nv0VtiVB9c9zfClC/NHn/6q+cD+B/RI3vk+RPLdDzRqhO0EZ9SWHgir
         i6iRcbVm+fo40sHFbZWQQwa229dR9b0AGiHn8vjLh2JabbMxFNt2a4ld+1bKWmFDIw/+
         yRi0iJBulKI2DPCyiX/UVJ9Rnbt5MXTXkta5Ukbxr2v999DkAc4X3GV7AtJTPZgitN6Y
         zsJe0rQoL5DoMXDx5zBL0hrk1ct6nw97FCXw2CgdgfGPd/6T9wmUm8/64uxfNtfEvUdP
         8wbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1DeVgIHQtusa1pGA4ifHuP+AlhtCWMmqaxo8ll7xmlg=;
        b=c8XDg/BvegRJFLNSN61nB/CT8aRUzuvTrB+Z8d44CsS4DRdYFn/O3A9Mfk+1j5B6Kn
         zoU7fydcHo4297w4FEzgXAFXBTbkiWC31pJ3PRVzGtNxs1S0+FknMpwEhHrtBmJ/KAkF
         ew1ZhJs9mIQLOfCUj1wTH0e1XJH1Kz77FA6Mk3uVfWiZ4nr+pzFixHh+LN5EA4IRCyrQ
         kNY+jffC7vAVpsjO0UHNk2GM6j7R7Y1jYkZP2NociaZNwDq/kSdOmT4etzqrfSNKpGgn
         3d9eI/2h3/0BBSHd3OrxAkIJL9juYR2k/sgIH3RHwRmKPvEBG65mHTYkCyZfIxmnG992
         XWiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si578342wmj.0.2017.09.10.05.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 05:35:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="290359458"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 14:35:31 +0200
Date: Sun, 10 Sep 2017 14:35:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Add spaces
 around '=', '|', '<<'
In-Reply-To: <d57755da-b3c9-464b-bee2-33e497a558c9@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709101434350.6842@hadrien>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com> <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com> <alpine.DEB.2.20.1709101409290.6842@hadrien> <9109a945-6df7-4267-8526-9e7110bd292e@googlegroups.com> <alpine.DEB.2.20.1709101418370.6842@hadrien>
 <d57755da-b3c9-464b-bee2-33e497a558c9@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-304945834-1505046931=:6842"

--8323329-304945834-1505046931=:6842
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 10 Sep 2017, Harsha Sharma wrote:

>
>
> On Sunday, September 10, 2017 at 5:49:29 PM UTC+5:30, Julia Lawall wrote:
>       > No, this command "git log --pretty=oneline --abbrev-commit
>       > 7b2a57c^..f46968c" also gives no matches found but
>       > "git log --pretty=oneline --abbrev-commit " shows these commit
>       ID's.
>
>       What is the does
>
>       git log --oneline | head -20 give?
>
> This contains the output of above command.
> https://gist.github.com/hs256/c4549dbaf7ce0e76a280781faff8d2d9

Git log linearizes the commits.  Maybe there is some problem in this
respect.  The folowing discussion shows ways to get the parent of a
commit.  Maybe you can check that each of your commits has the parent as
the previous one:

https://stackoverflow.com/questions/44112593/how-to-get-parent-of-specific-commit-in-git

julia

>
> Thanks .
>
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/d57755da-b3c9-464b-bee2-
> 33e497a558c9%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-304945834-1505046931=:6842--

