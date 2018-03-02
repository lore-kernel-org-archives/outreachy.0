X-GM-THRID: 6528045049398165504
X-Received: by 10.28.87.5 with SMTP id l5mr53422wmb.23.1519972203834;
        Thu, 01 Mar 2018 22:30:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.139.138 with SMTP id o10ls2557810wra.1.gmail; Thu, 01 Mar
 2018 22:30:02 -0800 (PST)
X-Google-Smtp-Source: AG47ELuUgFdThj9aAs6dZz66n3wCG+lXLEE26Tg3HC0uXstHMkLdUD2Vak3ocQiFR8zYbh4w/sNd
X-Received: by 10.223.176.131 with SMTP id i3mr464328wra.22.1519972202754;
        Thu, 01 Mar 2018 22:30:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519972202; cv=none;
        d=google.com; s=arc-20160816;
        b=jcxsAXmR3LAWWAw1qt6rFfCXJ6TZ092A5oWZyr/rBXjX6ZsJZUoIpQo3X1TXUViyVB
         ljsVrhM04l90bsT1laVgmXMF86q5uWY1UZ7w7Bu5vBYjQJrZstNxv6N2PjazVgHAbDsy
         dtmwDKS35HdjgNXTKYQ4IckbECe4OqnUdpXvEVjZC7c4a67qRTPAic3YS0ms0uL8Udz1
         RoyPcYBBxpwOUpavBAFlaIolNUi5ii0+ndPRyvlR+Y5CHG7+sUwdSiX2ewttx2dum3kg
         eTd1Kq8ppU6JoJTiTaFHOnmVZIgrN3s3Fwz4Wp3gNoccdB7EuqE5YpTmIvmnJxbnS7Vg
         GGRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=zZkMW9cDx+Tm/JpatPyBTkZrpaRpV8xFs++VdFkJ0LM=;
        b=J5UoPq6rfUXSifpUMWAtUKuh1NURT1opeX1bjgwkrt7Ninl8qUFe0MlAnHuGL3PtO2
         pAFwlTYeyFaPe/ZIhT1QPwzEFdeuZN9uqVtgxyRHFy+j/cdu0CWkpTR/D95dLf4k/v3L
         o5HVVtAj9lyKAqQJnPFoiz9FHXNSnEl6Jl1/PBR1ypIzIKQNxHYV9c1vlVuRLbQDMHKo
         +PSaVWKoeig1JUApVjzo6XpQV8ziHNhxy/nwsB8L+H0lj6pEFHA6JdLAWwfoAFkrN87c
         TpbprfNO6c+2nT+6bM3upYY+zLWLoOd4xOZJiLsSf6WQkGJ9qnKAVIJvZDZP8LPNuWZS
         ICZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a72si20135wme.1.2018.03.01.22.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 22:30:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="315990732"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 07:30:02 +0100
Date: Fri, 2 Mar 2018 07:30:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shikha1212.goyal@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Discuss for Outreachy Round 16 with Linux
In-Reply-To: <49394e71-864c-4dbb-b58d-bb9168682e9e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803020728320.2214@hadrien>
References: <b20afe74-c4fa-4148-ae29-2532f0976356@googlegroups.com> <alpine.DEB.2.20.1803012047330.3474@hadrien> <19d5b124-ad58-48b0-b496-cb2f48f4e43a@googlegroups.com> <49394e71-864c-4dbb-b58d-bb9168682e9e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2125164322-1519972202=:2214"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2125164322-1519972202=:2214
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 1 Mar 2018, shikha1212.goyal@gmail.com wrote:

> Waiting for Reply

Waiting for a reply about what?  There was already a reply to your initial
question and you already said Thank you about it.

Part of the problem is that you are top posting, so it is not clear what
your comments are related to.  Please respond as I have done underneath te
text you are referring to.

thanks,
julia

>
> Regards
>
> On Friday, March 2, 2018 at 1:21:43 AM UTC+5:30, shikha12...@gmail.com
> wrote:
>       Thankyou
>
>       On the page it's written only one
>
>       Shikha
>
>       On Friday, March 2, 2018 at 1:17:56 AM UTC+5:30, Julia Lawall
>       wrote:
>
>              
>             On Thu, 1 Mar 2018, shikha12...@gmail.com wrote:
>
>             > [cleardot.gif] Hello
>             >
>             > I am shikha Goyal, Senior year student at a
>             university of India.
>             >
>             > I want to apply for outreachy for this round, but
>             I am afraid as on the
>             > outreachy page it is written, Linux will take only
>             1 intern.
>             >
>             > But at the same time I can see 4 projects. Want to
>             clarify the procedure and
>             > selection criteria.
>             >
>             > I qualified the eligiblity criteria for this
>             coming round.
>
>             To our understanding there will be four internships
>             available.
>
>             julia
>
>
>             >
>             > Waiting for reply.
>             >
>             > Regards
>             > shikha
>             > Amrita University
>             >
>             > --
>             > You received this message because you are
>             subscribed to the Google Groups
>             > "outreachy-kernel" group.
>             > To unsubscribe from this group and stop receiving
>             emails from it, send an
>             > email to outreachy-kern...@googlegroups.com.
>             > To post to this group, send email to
>             outreach...@googlegroups.com.
>             > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/b20afe74-c4fa-4148-
>             ae29-
>             > 2532f0976356%40googlegroups.com.
>             > For more options, visit
>             https://groups.google.com/d/optout.
>             >
>             >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/49394e71-864c-4dbb-b58d-
> bb9168682e9e%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2125164322-1519972202=:2214--

