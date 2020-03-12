X-GM-THRID: 6802850530437627904
X-Received: by 2002:a17:906:d209:: with SMTP id w9mr6437142ejz.315.1584017993851;
        Thu, 12 Mar 2020 05:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:58a:: with SMTP id 10ls3071287ejn.11.gmail; Thu, 12
 Mar 2020 05:59:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsFY6lh1Tk2D05rJoA+GYPLXy0RcyWxe0ImEcVTRuZu39aPsCzCTguvZQLRmLGAOl8xJL7D
X-Received: by 2002:a17:906:370a:: with SMTP id d10mr6812919ejc.281.1584017992472;
        Thu, 12 Mar 2020 05:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584017992; cv=none;
        d=google.com; s=arc-20160816;
        b=QWolqo/Rmh8S88ACC1+fNUft9gKPo05DyOESfydq6BGyVWE9khj9NeDvG8CLo3z3NP
         +FDaw5pgWkek4iHTvavobs98EPmiChR7l2srZt/Fx8UIhvFsMBBHvqyLj67S0og4ElSs
         ZJZ8Ev1ATv/vBA0KnQap/BJD6QKyUQnSaihvuSAPFsncSCVDseCnGZDOce1dDYF4dTk6
         8/rinn2CEmk5SorRvzoxUZONsHxpDpx8JG17EoJ+yzpq+spY7K+QzA2vL7iKa0Xy2t0e
         w1F8E03nHqSqhleywuwqEgc8aSG9psJ2hLBkFog6VxuBIe921J3pkHV6z3tTkH1RUkg8
         Nkfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=10pwkRcHmryEtFXoJ1xC2RG13o2zWxuPmzGUlbb2JBg=;
        b=sdN09K8pw2WKrpRiMmA3BvbjffyJ0cYkdrqgkR+8SB+9DG1Mwql0Qv5DOZjSw5pBOI
         +6jtzAxsBROP/G1dF9LuppA8ZLKjTjEd8ZQng2okeJYa9BING1ey0lLW6lNjyFIa3WVG
         Ad7s8ece78AggWoER0CeGpvzSt+88I4LAxT2XyzmaEWci0HiomUy1qHCs5qVIqRYsd1S
         bg9+vHVfQDiadRXkxrVYtgSZSiaGigyTXleiaT4vQWsOGEqu/N9/RYPs6CnQ1KCd6Mre
         9pinws1Tk+sL2DoTw7+GjNNfW70NkbuSuouWT8sMmaBhHNTtF3NXDxUafDv9eY5VQh5f
         vauw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d7si248966edo.5.2020.03.12.05.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:59:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,544,1574118000"; 
   d="scan'208";a="342136502"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 13:59:51 +0100
Date: Thu, 12 Mar 2020 13:59:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, Larry.Finger@lwfinger.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove
 an unneeded variable
In-Reply-To: <53433b4e1b0e28e1ebf25f8bb5f395f6880f39ba.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003121358500.2418@hadrien>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>   <20200312082739.GA54601@kroah.com>  <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com>  <alpine.DEB.2.21.2003121335310.2418@hadrien>
 <53433b4e1b0e28e1ebf25f8bb5f395f6880f39ba.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


> I deleted the declaration because it will be of no use if I delete
> other two lines which is the only use of that variable.
> I am Extremly sorry, but I am not understanding what need to be done.

As far as I could see there was another use of the variable in an if
branch.  Those can be easy to overlook.  Just be sure that you get a .o
file after compiling the code that you changed and you should be mostly
ok.

julia

