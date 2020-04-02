X-GM-THRID: 6810919292495724544
X-Received: by 2002:a05:6512:4c4:: with SMTP id w4mr1470178lfq.153.1585817880459;
        Thu, 02 Apr 2020 01:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:91d5:: with SMTP id u21ls474073ljg.5.gmail; Thu, 02 Apr
 2020 01:57:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypLF5L8Cank21FDr5868ibnGwKQ/O9v6MLsEIi/EXBxnQqXFxFk/gbmwkCSI/vSeqvSMdA2m
X-Received: by 2002:a2e:b04d:: with SMTP id d13mr1404631ljl.278.1585817879005;
        Thu, 02 Apr 2020 01:57:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585817879; cv=none;
        d=google.com; s=arc-20160816;
        b=KfvE5ls3yKltVFLUKZZ8EKhZR/Dx2l8k92QbKtnYPL5OTOUNtp7sMfBjh5/GpZLufl
         EIeFZai/RcAV4Dfk7DvTu04Z57JuUyLPrXTQ5FH9Dx8IVDiRezW5tDWasTIwYFHBRctI
         FRcKnl4z1skkOCaGKpVKzkuTlIpf57kGMXSmbgZF6YffKEfTp/g234OBgyph1FmSO2vb
         hrogSS4xtlxWUrOrza+SuLNgUqLzHA4LZ5GnxM3DXUxODDv70bhAoNWgaPw6cnDJfuJV
         p8hFS311HEjn2Nrbnp3GQNVA/sPvGN/651KNuWZy5+aoEudbjSQjmgKVHqH8tLkr05tM
         IS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JVlzGMqZK1SP55YvEPF0XIY1/7yAmfAQtnzkZRPkaOA=;
        b=FErSK1KegWDe/kXozMXBmRqNsZ6Po4BPpdsS0Wpl3B5qIOiVF+4p5b6MW5qZk0mE5J
         DTEsSNzYVCTucxnR8foBhsvkFwDDca4KaAUM/70JSeSEOOu8JUDK6skNQI5uErO6OY1+
         0V5jGOpWlCYbrVg8WOUigfWIZQz/EFr7zBmdo2QvpJF3UBWSsCT9eoDgTwIynA/YSz5m
         bj/Al0LI0JD5ViFg3UQxxLcE4sFwwnVHFjKIE7HMK27BQawsQEjw/IxOK0dgFd55Snga
         hhBK7SlvsI9u1txwkSm6ATQyxvxmgVSbQhbogoGA2WS7oS0FNl7XAn+2UOTm4UnWXq0a
         oNtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e4si279958ljn.1.2020.04.02.01.57.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,335,1580770800"; 
   d="scan'208";a="344679110"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 10:57:58 +0200
Date: Thu, 2 Apr 2020 10:57:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: John Wyatt <jbwyatt4@gmail.com>
cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix parenthesis
 alignment
In-Reply-To: <f8b3b9bb6544fb093b4c51b9626bfe8692e17b4c.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2004021056580.3130@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>  <alpine.DEB.2.21.2004020910570.3014@hadrien> <f8b3b9bb6544fb093b4c51b9626bfe8692e17b4c.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Apr 2020, John Wyatt wrote:

> On Thu, 2020-04-02 at 09:11 +0200, Julia Lawall wrote:
> >
> > On Wed, 1 Apr 2020, John B. Wyatt IV wrote:
> >
> > > Fix 2 parenthesis alignment issues.
> >
> > Please try to find a way to describe what you have done that doesn't
> > involve the word "Fix".  What have you done and why?
> >
>
> Understood.
>
> How about:
>
> Move spacing on function arguments to to comply with kernel style guide
> on parenthesis alignment.

It's better (but drop the second "to" :).

Obviously in this case it's not a big deal, but it's better to get out of
the habit of just saying "fix".

julia

