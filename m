X-GM-THRID: 6528085796947230720
X-Received: by 10.223.169.234 with SMTP id b97mr647033wrd.8.1520013500735;
        Fri, 02 Mar 2018 09:58:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.0.78 with SMTP id 75ls409485wma.4.gmail; Fri, 02 Mar 2018
 09:58:19 -0800 (PST)
X-Google-Smtp-Source: AG47ELsTnjO57/MFUKF2kyM6gNgWptIDyfUh1xC9uxbDvGXFK57MSeA83N4cB3pme+mFVJ7fWF2h
X-Received: by 10.28.247.5 with SMTP id v5mr256981wmh.12.1520013499381;
        Fri, 02 Mar 2018 09:58:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520013499; cv=none;
        d=google.com; s=arc-20160816;
        b=jADaxAbq23v6wsKjInCiQF3iZ4vrO4HaOiefjZwA3klbijqPXaev8LpFtzUhXl84GR
         puhXvSVwZtAC6zMiTQj6/k5Teb7mg3sV+Aw95OyA/xdPF8LuZeO3QbRAIXLFl3d6whbh
         cs0JI/G1c/BbjfTK8F/k5X9V6Ce5adffZ8adHorEFbFUtIMzvK96tsNN70oXMe/ZBUHV
         5p8hKQbWyvOfwx0O44uMr+M7nixyQnlpDRk/bJuyleNOBYnFZHTPdr/4O5pxk0CBuJQp
         3ZBRUIGrATIKUIGT4pSi+VHzfBUPOxsDZRFVLsFEMmCsUzX6nKuIMG+GzOsRnXFrX59/
         R2Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=TnYva+NhoWjAKOkfUel71DDHo0egt9b/85Ss5Xf+s48=;
        b=SmBGr/oIgZ2K6R2IhhX5OlFWBleH+mF7NjmYPAnpKhA9otC1/SSQrQxrl1+EAjYksr
         N4srtxVZJnRV9iW3aep6SB67xoT4N2c/rx0gyULhuw8X5e7g+ZB6mnQYgO5lOGJ5pl/3
         V3hpMPH7oAhTXEprUT8uV3IHm78zL821xxslNES5tz/a3oFKMcAt2dj9guL+7KOcLjkV
         yFoaY3TTCy5363WUDxKQojAY2Df5evtQeX/gx79Kn34ij62kpfbhFoCqZcOLmLBCZXNY
         8sq+1LZgalbVsv3u13UN5myIe1lxrgY1ngulYfOH+b8DvCg+CtF5PpRI5dJcOWitb/yH
         0KJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si49689wmg.2.2018.03.02.09.58.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 09:58:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,413,1515452400"; 
   d="scan'208";a="256750441"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 18:58:18 +0100
Date: Fri, 2 Mar 2018 18:58:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Questions regarding the application process
In-Reply-To: <1519938402-28218-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803021856320.17455@hadrien>
References: <1519938402-28218-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> The introduction to this mailing list says: "once your first patch is
> accepted, add that as a contribution for the project(s) you're
> interested in". I had two questions about this:
>
> 1. Will different projects require disjoint patches to be added as
> contributions?

No.  You will have the best hcance of being picked for a particular
project if you do the small tasks for that project, but it is not an
absolute requirement.

> 2. Does a response of "Acked-by" mean the patch in question has been
> accepted?

No.  It just means that the ack-er thinks it looks OK.  It needs to appear
in Greg's staging tree.  You will get a message from him when he takes
your patches.

julia

