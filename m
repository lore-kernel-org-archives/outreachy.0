X-GM-THRID: 6800771854723186688
X-Received: by 2002:a05:600c:301:: with SMTP id q1mr2784139wmd.182.1583483336963;
        Fri, 06 Mar 2020 00:28:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls726880wme.2.canary-gmail; Fri,
 06 Mar 2020 00:28:55 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuktLA/7/xaeTE8T8/aJX34t46SzY/NdIyX0b4gRemGv52fZe2pnYqWAoy8Pg1vFaBtvTOG
X-Received: by 2002:a1c:4b0d:: with SMTP id y13mr2781315wma.4.1583483335322;
        Fri, 06 Mar 2020 00:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583483335; cv=none;
        d=google.com; s=arc-20160816;
        b=axwLy1os0Z2kuSgoc2/gU5d6TEr4OSD4eYdhS/T5YV6ovPEtuNwHn1JLiDWSg+Bsul
         QdUt+rIy6vkm/KcwDry/I5jGmXJYgihLWRhjoVRe9HWkxAKOtcobtqCyIJtrckSsa1z0
         YuE3TCGwgp1lxbJ9Y1W8C05n4LlWWf1zvD7GdwDmlNWZjC37KBr2U47ETU1vOk9RQF0o
         VnKkla0oY8f7qXKUhtgd8MpiZcF3H4A0cz4q//dd+/efrCWXdMu+Gt7ek7gkZSHWaTDD
         t5J0tT8BhZgOdBdRXkiDxZw+OspPdb0i60FhCkrzwe1GpToPtetQEP2UmtddtCZra0Ia
         ijhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MxY8OIEP+Tph7lyWlHlAwHMOa7EVTxq9gzJLVH2QLic=;
        b=Ar7+K5hRT3yszzOssD7hlqV1PiRGGgLuecWcnLUOplXjf5gnyBfBM+L7jFGF0w3de6
         cAysL8txW9wnPD01VFjooQG1xCZZBldCXnHI4BcEDgN6gjdM9oAFwdd3/kVYb3MymPvU
         tqQRSeMMB/La9+wqSLZF/KpgWxHVh/hzvnN0ZpYwHlLC35yCiwQuW2e0Fv6YV3kCnK6i
         WYYSmPiH9xzC50gIdMl7eCYODt4UsOdJiaHaknbYRgx37r7TRzqdoMyA1ZCDLYaJJRrY
         LZsc3Ssfi4V/iMyVobU44EErqG3sFf9yS6qU/p/h+9JJI+Bo5+QjaWYoRHcjdIJymHZv
         AJCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n7si35824wmc.1.2020.03.06.00.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2020 00:28:55 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,521,1574118000"; 
   d="scan'208";a="439097241"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2020 09:28:54 +0100
Date: Fri, 6 Mar 2020 09:28:54 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
In-Reply-To: <CANTOzWFk6e4pE33UP9yty0H2BSSM_L-u_PCERL9WWoaCZ9K8mg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003060927380.2978@hadrien>
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com> <20200305182833.GA2106984@kroah.com> <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com> <alpine.DEB.2.21.2003060747320.2978@hadrien>
 <CANTOzWFk6e4pE33UP9yty0H2BSSM_L-u_PCERL9WWoaCZ9K8mg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In the place where you invoke checkpatch, can you do ls (not less) for
each of the following files:

		"COPYING", "CREDITS", "Kbuild", "MAINTAINERS", "Makefile",
		"README", "Documentation", "arch", "include", "drivers",
		"fs", "init", "ipc", "kernel", "lib", "scripts",

eg

ls COPYING
ls CREDITS

etc.

Send a screenshot of the results.

julia

