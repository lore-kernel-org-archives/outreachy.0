X-GM-THRID: 6526929159245004800
X-Received: by 10.25.149.20 with SMTP id x20mr996994lfd.5.1519739941149;
        Tue, 27 Feb 2018 05:59:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls164603lfa.11.gmail; Tue, 27 Feb
 2018 05:58:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELuRUF154h6KMxaoVwTZ7xRWQjW35B3OuBhXWyxSEhnSDhS5mhFD8OFdVNCAjOLcEZitA1jo
X-Received: by 10.25.233.93 with SMTP id g90mr375658lfh.16.1519739939684;
        Tue, 27 Feb 2018 05:58:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519739939; cv=none;
        d=google.com; s=arc-20160816;
        b=KKpOp0pN1RcUxayX0aXiApRpua89ixGl+POp0OcC/OOaXwsAbEfV2hZaosuU54zhhY
         gdCu8+zMWqfB+jsl3mUO0AVAHDGyadLBNEVJaoepMsgZTN3aVdca4OwBEQ6Gy4pccgC1
         ROI7lcofYsklA/Kjl9Q9fsED7PPGTpMo/Y0LBmfsoLMlr8xwEaLivrOK6nflBNqgLsFg
         /UznwWWFoby1bUtIzDHWb2gQThEF9kNm4XEeyQdd6nDHLo3ZSHuEnUUdPxzbH2/InGmN
         qwPyrLG01QjwYbS6w9R3s4I/O78cXZhipiibbLAdvWsqTpzuTkyWT5WHlLTK4Sd9OJFB
         B8UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=qMZrtaTH29jRqzqFwytSYeMVbCtoxqtgBTweOoP5iYg=;
        b=zxbpHvepXfAqJcYoWfwT3WmLIK7+ywkpDTY3cNziyRtWe9p6rlor4r97FG39mzkDHx
         E4wdtTl73xKEsVUWqT5sbVuuEamspKbScJZXlUhM3lYyv2+FbYs/cGm99NmjTDO/4bW7
         HXT4nz+SxkIHzOYetK4/3BOE3FM1gkWmbY4/lemDjQYjXjNGIYUF0sABJfSxmHLY51nI
         X1dO0NGz3ptaD1tDciyoDS9eJa++cx5XETboNvsiQWYHvyV5QpJEhGreh+gMMfF9+FNF
         zZCJYR9kogwxsI6PFEJ/E2KGwfXI/r4LLn5u/zM1yXObRSYT6buZXE/qFc2ugJI+YrMn
         nTqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u72si262151lfi.4.2018.02.27.05.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:58:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,401,1515452400"; 
   d="scan'208";a="315492315"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 14:58:58 +0100
Date: Tue, 27 Feb 2018 14:58:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re:
In-Reply-To: <1519739588-3783-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802271458340.18318@hadrien>
References: <alpine.DEB.2.20.1802271437470.18318@hadrien> <1519739588-3783-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Feb 2018, Nishka Dasgupta wrote:

> Hi,
> Weren't the original values already integers because of the "e8" appended?
> If this was an unnecessary patch, I will try to do better next time.

I think that they remain floats.

julia

> Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519739588-3783-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

