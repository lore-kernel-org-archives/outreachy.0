X-GM-THRID: 6751717661102571520
X-Received: by 2002:a19:1ce:: with SMTP id 197mr3170958lfb.16.1572015796655;
        Fri, 25 Oct 2019 08:03:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:971a:: with SMTP id r26ls1285269lji.12.gmail; Fri, 25
 Oct 2019 08:03:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxMbqoWbHMg1uuJasuZZgpA0CjMRT+N0PlyIagqBPjU9oZD6RvYHN/AdOKlTs9u54PUP2Ut
X-Received: by 2002:a2e:9942:: with SMTP id r2mr2838850ljj.168.1572015795597;
        Fri, 25 Oct 2019 08:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572015795; cv=none;
        d=google.com; s=arc-20160816;
        b=n4Sl6xH1iL4osri/u0pVB2k1eNPLI8ETNLNqRO3gHhnj87sf/ZFRvVfgddQ+sk79zl
         R4oV4t63CIIgIbd8N27+ccAEFsFeCqgJAeQY/msnML0Ot/f5CW3KOpWsZjf/C97GUBZU
         cD8gZLe+qE3P767aZS47717257338xK1QmMunDo9t+Ajqm3yxtKA8VsugWTchMYY4AmO
         bT74cU6qpbEQEfkSH8e0lIkJLJOYultftr5QiPsiiQbHixCMn37uDV7xydJrTrE+FpQV
         pZRWKn/JVO2fXiOWOAFKWt7Itjg6nk2Xl6yeVnhLpYOBSBoKF8nLnjxvetvU3BK3i4wk
         yUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8lzSPUlApnHzWRQoCtStVMOcpBItOkPoT4tsUFZuQls=;
        b=Kz5KnhXU9aMw7jhSUxCWZRfbJTMiDSZy22dlug7TtoGOPZ+D1zzJxA0RyLL7SZEPiv
         zz5QAsmSYv0jqwYhVY4MMF4/Nv4a/L1pG/DPtGhETxLaxOFa4m4MJ4C6JLKGxmOXDVXF
         FLZTMBfkIanlX1qMMF4l6SDrw81EZ+lPw2r0pbJioK6CyavX9+yviuJsXLwYV6VMbTTx
         AECmO7LQvt4zYUUbo+CScLtJGcfC9dY5AM2fqBDgZEqszeMmPmmEsewC7u4lHwNsdQYH
         pL6w5foz/ij1GSG41WbLufqV3sBtIvRc241Y9KSf4ubxjZmdqclmgqfZ9c9Mhjsyoi/W
         g04Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q25si145939ljg.5.2019.10.25.08.03.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:03:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,229,1569276000"; 
   d="scan'208";a="408249600"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 17:03:14 +0200
Date: Fri, 25 Oct 2019 17:03:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: evan chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: clocking-wizard: Remove
 static function unused
In-Reply-To: <CANR89jZNmuJmmpfEc6FtR0fnEqVLh4z4G5cwuugDSWJEYZF5uA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910251702180.3307@hadrien>
References: <20191025123245.GA13135@ik-ubuntu> <alpine.DEB.2.21.1910251520470.3307@hadrien> <CANR89jZNmuJmmpfEc6FtR0fnEqVLh4z4G5cwuugDSWJEYZF5uA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> I will remove that too. Also SIMPLE_DEV_PM_OPS is declared, but never
> defined

What do you mean by that exactly?

julia

