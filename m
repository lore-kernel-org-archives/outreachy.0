X-GM-THRID: 6528652482510323712
X-Received: by 10.25.80.68 with SMTP id z4mr610849lfj.31.1520070470523;
        Sat, 03 Mar 2018 01:47:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.143 with SMTP id y137ls370654lfd.5.gmail; Sat, 03 Mar
 2018 01:47:49 -0800 (PST)
X-Google-Smtp-Source: AG47ELsTGc0zMn4CKliTbd+N6HTHTaj4ptbG2JsKK5W/i8mwXQ7aZf7jC0yH7zAuGdSL+2pMcQdh
X-Received: by 10.25.141.7 with SMTP id p7mr609190lfd.29.1520070469045;
        Sat, 03 Mar 2018 01:47:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520070469; cv=none;
        d=google.com; s=arc-20160816;
        b=0kZ2QYvnQK2hYL00M96wooGAhMRBWVNBWEBRB9155Ac1d23lzZpPcZG+wrRYhwgZl8
         eXCTRWzFobcCoW1QZgkcbbkdIk+7rmNQPOTsLKqtMlkIH911a2R7VCdP29fKIWBCyUfw
         80xwfFMfCUvcLXdT3fnFTmtIoyXl1Lv3Jb48CBJeMXLPfGjw3KhsLoZMoGCjqtlq513W
         m0qCaHwxF4q34mPXUKbvURfYzxCgHEQlexxT2EN7Vl0lrDOFgJq/yykr7Tz1bvApYD1h
         sD50dLM6kywtwNnSTdWuKUX84n2O1CaORwgeADonlaDtFpO6krTWnh4lufQTDavmcCJD
         c5+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lagWHr7xR0ZrY1wKDBQNFNOIydn0sZANaBJzxtQ0hqo=;
        b=oY9r/9nNO3Pqh9YaRR3UANEEGLOt8HNpc4W2hbrklAZk9OjOevREIM68TWf0kG+PkE
         Kmy5zj+cYn3GcAPgDA+syyXbC7F9wFymFIHhLuAwlbNRrcIip7/o33wHzBlaxGoWHgjv
         D4HuAyyKMbjrIFnkM7epjV8cPtZ784MH+Qe20V84QVIe9Z5rQS8MhGSbrEhXlHESheGs
         dlLo39kCtkipdqZoiKsyBKb3VPGRE5oTpJ9jumIwhN7sL7sQv+LIdjYLtIijPMKqbV2Q
         bqASLGQJNlwNr2vYC8V9LqsFtoTPgd1/nEpfINce3/6tmNGWCS4jFY6CvHlBRL8v/9i+
         nJBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 7si186102ljw.5.2018.03.03.01.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 01:47:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,417,1515452400"; 
   d="scan'208";a="316191984"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 10:47:48 +0100
Date: Sat, 3 Mar 2018 10:47:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amisha Rawat <amisharawat2103@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Confused!!
In-Reply-To: <410a9069-6240-44df-9b7f-d57dad8f17de@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803031046100.3191@hadrien>
References: <410a9069-6240-44df-9b7f-d57dad8f17de@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-684573159-1520070468=:3191"

--8323329-684573159-1520070468=:3191
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 3 Mar 2018, Amisha Rawat wrote:

> Hi
> I am very much interested to study linux kernel . I am versed with C and
> python .How should i begin  when i am unable to understand linux kernel
> basic newbies tutorial?

The tutorial is the way to begin.  Please ask about anything you are not
clear about.  There will also be a kernel-specific chat on irc this
evening at 5pm UTC.  You can find out how to join the irc channel in the
How to apply section here:

https://kernelnewbies.org/OutreachyIntro

julia


>
> Regards
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/410a9069-6240-44df-9b7f-
> d57dad8f17de%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-684573159-1520070468=:3191--

