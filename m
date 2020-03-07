X-GM-THRID: 6801528463992815616
X-Received: by 2002:a1c:ed0c:: with SMTP id l12mr11073969wmh.151.1583604559485;
        Sat, 07 Mar 2020 10:09:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls3905600wme.3.gmail; Sat, 07
 Mar 2020 10:09:18 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuIMIv61BcjBIoF3rNsGtVoDRwH84Lhp9K9ng6aud6aWpRifSBHlyLillt2AFXiTPe1+6o/
X-Received: by 2002:a7b:c019:: with SMTP id c25mr10995653wmb.126.1583604557945;
        Sat, 07 Mar 2020 10:09:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583604557; cv=none;
        d=google.com; s=arc-20160816;
        b=jgBuinGjyLKqa/jmrAroOHmzQyYtIJNLzVX7Z6qT9Z0nS9VLLGPr+mrZR9iIUwnxSV
         meN5l5dWBOsMB9DQPdOMktZ4wBPxasmPxXfOegIf3tLSGNdEkitIjMzA5EUq9iEy8SEh
         kCrGxbI+gf85ni7Egs/vUj7Iv6Pi8fMPhJgZOA1BFcD7Orwg2DA1OsVXx33mbhBDikwP
         9vwxAzaOh9k7l3J87mj3gaaISV3Talad//6o8h+6bqUqQg3WS+X1qlWpf7fadT4J4BPg
         YnwwIkkqPhgJZrpXm+qdbEOa9aLTKdm07xjx5fLqtY83mmSQJ3xZBODlcttgC/wx7PXV
         mh3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xiXhuQJ5pzGlHYVGqwmP32kUF8Iy38tx91w8LSk/tA4=;
        b=i1T8K46lbT9sM+lQHOz/cRtQLH4zw27PV0VYl/OzBK7bqQjXk86MFn5BO0Z4TIgJ2L
         uUrwpbxH6o+6pXdg1d7lnRBI+KvuHDGyNwVKgAKT3XlUkaQDiWhrVkt/FXIrkO5IWt51
         xLj5ZbKFC9rcEGXaNH7BeU7jtWW+lkd1C6n1XCNulxwctWzMCUYAN04b5fQqBffKqV2Z
         KawTf2vAJImVjavapJomLvu0lgW7r/dBzXkwx1UmsUY8xnbx27MTtfS0swY6NRoLF+Ox
         qSo+0w9+PEJDups1CPnXA2NW09AWDx7DPt7i+mCuhx400EE5GYLQohUZERcGMkKKL0Z2
         5XCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o194si514995wme.2.2020.03.07.10.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 10:09:17 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,527,1574118000"; 
   d="scan'208";a="341614786"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2020 19:09:17 +0100
Date: Sat, 7 Mar 2020 19:09:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] New here
In-Reply-To: <20200307180359.GA24478@supernova>
Message-ID: <alpine.DEB.2.21.2003071907270.2294@hadrien>
References: <20200307180359.GA24478@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 7 Mar 2020, Lourdes Pedrajas wrote:

> Hi, I'm a new applicant for this 2020, newbie programmer too. For me is the
> first time participating in a large project like this.
>
> While reading kernelnewbies wiki, it says: 'drivers/staging contains both
> drivers that are on their way into the kernel and those that are on theirway
> out of the kernel.' How to know which of them are in their way out? I tried a
> git grep, but maybe there is a better way to know it. Thank you!

Perhaps you could tell with git if there is a file move.

But don't worry too much about it.  If you do something that is not useful
for this reason, Greg will tell you.

julia


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200307180359.GA24478%40supernova.
>

