X-GM-THRID: 6617179960834523136
X-Received: by 2002:a1c:8ecb:: with SMTP id q194-v6mr1504060wmd.11.1540704450564;
        Sat, 27 Oct 2018 22:27:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a1d7:: with SMTP id v23-v6ls56642wrv.24.gmail; Sat, 27
 Oct 2018 22:27:29 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fDY5cES0l87w/OSHrt8qzBjb53jpbJZB5o++9JJH63OM20A7C4PCmZM8/qQlFzgAfopxrh
X-Received: by 2002:a5d:500d:: with SMTP id e13-v6mr509079wrt.9.1540704449676;
        Sat, 27 Oct 2018 22:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540704449; cv=none;
        d=google.com; s=arc-20160816;
        b=03R0Af3ZOwFrS84VxfC1OeQrQCxu38D4RjNHsRAHnAFMyxhFPQM1jg3gj5yKLsXwGZ
         3aKU27k03Mvdcf0VLt3gtHOoXa+xGKr3oDKLbn2OW33/DZcYI9cHUt3XKTy+DyNdNYOG
         kyke1jokt8f2V5ThCvG3+68gQxSAfxV+OL+Wm6EWMsyPsZky0F5fB+pjDBhTb3tCDx52
         UNWKZeCgBwalAOz/2VoI70yMjgsf+YVceqgmLStUAPNKGUW1AReWMdQjDMGrJNZkRAho
         69kDpwRK2zbNKqbEbCeNfZYK8UWKycGO3r08SSnX7iEHftL+MTPJPgt4+Sz2NAxduGG5
         HOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ho6HMvmFoLeWCw9zH1uI1RlptHYHzpPOf3D4llT3yNA=;
        b=YB3NxJZdfDHtqqeJcBXNHsq+AxBLt1Hnh0CPW5CLGz/ewRq052jvUayCwK3+9vW2SG
         syTBQq4Xz+n+65pRXJOO6ZkWEXRJwsLmRl34A20lq/7f/g2IAACDgVchSipGxMjw1d7l
         kIuGRg6nV/e0LH5eake152AVtEMME5CQVaQ3yFWwpobwDl8yLjPf+G2Q+PyoDonMhDxs
         61uP1NvIVx4wqTal6JtuRHzxxRAa48oeQk4Doo/+lSpcLAkTT6+qtMqWHDcTc/VLMmEu
         k9hEd7bLPIjMMBmcK3T48zSZ4Sq1l9+AkD+xHaQOzBDvI6pOQcvF3lVM8Hr/kVSpsIDd
         ll9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h74-v6si382053wmd.4.2018.10.27.22.27.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 22:27:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,434,1534802400"; 
   d="scan'208";a="353118329"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 06:27:29 +0100
Date: Sun, 28 Oct 2018 06:27:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] FirstPatch Wiki Change
In-Reply-To: <20181027231742.GA11614@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810280627040.2450@hadrien>
References: <20181027231742.GA11614@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 28 Oct 2018, Ioannis Valasakis wrote:

> Hi all!
>
> I wanted to added a few changed to the FirstPatch Outreachy
> Kernelnewbies wiki but I get the option that the page is immutable. On
> top of that, when I am choosing Load/Save from the menu, I don't get the
> whole page 'source' but a very tiny version of it.
>
> Anyone knows how could I edit and send my Wiki patch over to you? Thank
> you for the help :)

What are your changes?

I can make you a site editor, and then you can make the changes directly.

julia

>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181027231742.GA11614%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

