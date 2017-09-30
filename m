X-GM-THRID: 6471588062686085120
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.28.24.207 with SMTP id 198mr1122347wmy.12.1506786223337;
        Sat, 30 Sep 2017 08:43:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.5 with SMTP id 5ls1237316wmj.2.canary-gmail; Sat, 30 Sep
 2017 08:43:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC6d/Nd9Cc6Kh5/yEcdiIiR4ZuN1EafcddtMDW1Q0237pp2qrCTkogw2FNioQJJleus7qGv
X-Received: by 10.28.55.209 with SMTP id e200mr1162197wma.0.1506786222455;
        Sat, 30 Sep 2017 08:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506786222; cv=none;
        d=google.com; s=arc-20160816;
        b=cR1srmPc8/YPi6/e0UNB5lFRcCS+4MSzodrA3MyJxIT40P8Pc3Jy5tp0NH9RBlRfIA
         eIjKCNdB0HvH5Q82ZazyljEsddsDe7znJbeePUU+ssUWt6RUz4m3tRgDZ185qUUzvXH5
         DxUEfic83ly8boEEipUvhYcZMBliQ22sJcoVaAwUht+TEk1J9q12djkKCBZ8DQWEyvHV
         g6y9rzwMzAGo9kas6irsLtUH3stsmbksI9nRqW5y+ZrLoIXXODVoojuUDTa5xzx3OJDz
         fngen10M93Cjcwwg6HPhmro1PAVUGbYN4kBEURPPnqqScevzP3kam2+e5Y/jdlU9zr52
         gk6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=emro46r+36gviEYMlYtQkaYiTrZyLC1uAdMsK1a9nF8=;
        b=G7+SKL2zLG9OGm1MomxcAtgU1Va+STtB95ar+amvB6GrtgdE771jrF3LCX4jaiRXu6
         lMyPwbR283Dwvt46d/b1bQpxDkKp+RT+IACcjtUUfXXYFjTpis+oatXhV6z8/jdp16sC
         3RSsw5Xe6LTVAFO5ml4l1qanumqE8IFc/KzTga+uBYrjiATYzneSSkJqmnTJ/4zlENEG
         krNi/z9JOItIyaqSjBxN/08j4HXa1Ol3pGRVfJa7ID8Ym3KHPPF/Rb7AF6Ofm5S7gfiU
         RRK2V5U7MD79eBSOUxDAt6xstpcIx/dh+FokX1LcuR3yCZo8AXxSQh03yz3hvIeXvr3r
         JErw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si923802wme.4.2017.09.30.08.43.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 08:43:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,458,1500933600"; 
   d="scan'208";a="239238421"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 17:43:41 +0200
Date: Sat, 30 Sep 2017 17:43:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Message bounced with tag "Message blocked"
 when trying to send patches through mutt
In-Reply-To: <0c3f5e38-f678-4704-bf85-6708a7db3411@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709301739330.4961@hadrien>
References: <0c3f5e38-f678-4704-bf85-6708a7db3411@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1450973243-1506786221=:4961"

--8323329-1450973243-1506786221=:4961
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 30 Sep 2017, Keerthi Reddy wrote:

> Hi all, 
> Since the last 2 days, when I am trying to send a patch through mutt, my
> mail got bounced with a
> reply "message blocked" (screenshot attached).Well its not like normal
> bouncing which
> happens when we enter incorrect email address.

You don't need to send patches to the speakup mailing list.  Actually, the
suggested get_maintainer command line is:

git show HEAD | perl scripts/get_maintainer.pl --separator , --nokeywords
--nogit --nogit-fallback --norolestats --nol

where --nol means "no lists".  So far, no one has complained about
outreachy patches being sent to mailing lists (which perhaps shows that
this round is doing a good job of sending good quality patches), but if
the speakup mailing list is rejecting outside mails, you can just drop it.

julia


>
> When I compose a mail through Gmail website, the message gets blocked. Again
> the same
> problem :(
>
> So I thought that there a problem with authentication, so I enabled 2 factor
> authentication. 
> Even after that, the problem has not solved.
>
> I tried git send-email but again the same problem :(
>
> I then searched through groups with similar problem. I found some links
> https://support.google.com/a/answer/1071514?hl=en
>
> the above link tells that Google has marked my e-mail as spam :( But I am
> sure I didnt send
> any bulk mail/ spam mail. 
>
> Question 1: How can I report google to white list my email. 
>
> I still don't understand what the problem is. I am not able to send patches
> now.
>
> Question 2: what are the other alternatives that I should go with? like what
> patch sending tools
> that I can go with?
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/0c3f5e38-f678-4704-bf85-
> 6708a7db3411%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1450973243-1506786221=:4961--

