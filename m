X-GM-THRID: 6533243345849810944
X-Received: by 2002:a19:1450:: with SMTP id k77-v6mr873546lfi.27.1521148234019;
        Thu, 15 Mar 2018 14:10:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:cfcb:: with SMTP id f194-v6ls639665lfg.2.gmail; Thu, 15
 Mar 2018 14:10:32 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt0+acGYtL8QGXKArbzmIJi12k8xV4iGwUv8j+PMibsJYYdb8pUej4yyxjk/0e/SW3zFD2+
X-Received: by 2002:a19:9b88:: with SMTP id d130-v6mr879988lfe.43.1521148232137;
        Thu, 15 Mar 2018 14:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521148232; cv=none;
        d=google.com; s=arc-20160816;
        b=MLTF87VXyBQ8yM98ZilzJbXebDQYWtlZV5GC3Oqa/aVn2kpj7sM3quY5q88k0vGOgZ
         Jnk4yGSAvjH6tpev5DTgAAno6weFU81zxhVZTkvBTFi93H1wV3eIJR+gv4CGxs7jmPkB
         WE9tXohkpPwnZ4AxtnTuSNQd0R3wnFgaOW0b3QeDUKHTbxikimdCaYU5ocW3naBptu2Y
         J9uRJrpXIoFFWtxN50+8DrU1E5oTocx+FcidlvQuodmf4vaMSq0ijD+cj7RT1scAs0fs
         aGIxjrOubecxZiVy5nzOT7DBfBVLKRlSH1XUJWnUeoku82oLkfIOvpuwHA5DN2qwnNFa
         SYvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=qilAOEiGIAEGUSw36WbCL7apBuNycAKv5WaoMOcX2QU=;
        b=AoSJCYW2qTrsvMyG2VfZwYr9er7MUFkQjmvkVYHvvjZUW9Dz9I0oADqkCDmEfCmJzF
         hU5UYtP91aziJVht0NTXzFjJN4kWpyPG6301SXdES7NuqmqIdZgUcx2f9CAl3CKsXPLq
         bWhJ3FgixqXEXpCceqvONza1YNQp8aJisKavR4DKL451dkUS2EaXI2W97D8BNq59+fFA
         4u5J2r+kg2BNL1yh/aLKSWU/rOR/JDTPjgo55X78RKhUVqteTJbPWYh50NneHkx4dqtZ
         F99Yv5Qn5bh3IAN5v8XkB308vtwvKDE5mZKY9jTJnYsTVrEde/A734Vh78u4dzIcqs1S
         3tMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id w7-v6si183181lfc.2.2018.03.15.14.10.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 14:10:31 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 8112312D24;
	Thu, 15 Mar 2018 22:10:30 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QY1pofeH8cmc; Thu, 15 Mar 2018 22:10:30 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id E49F712D21;
	Thu, 15 Mar 2018 22:10:29 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ewa8q-0003iC-Rf; Thu, 15 Mar 2018 22:10:28 +0100
Date: Thu, 15 Mar 2018 22:10:28 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove else after
 return
Message-ID: <20180315211028.owusqtj5kugbnv7o@var.youpi.perso.aquilenet.fr>
References: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1803151952070.3302@hadrien>
 <CAC4++KCjSxSvzW_bhZ-+UHW=hhfSu=kZyknD2gkpEKyM_=iAxw@mail.gmail.com>
 <alpine.DEB.2.20.1803152029420.3302@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1803152029420.3302@hadrien>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Julia Lawall, on jeu. 15 mars 2018 20:32:35 +0100, wrote:
> But the new code is longer and has more code duplication, so I think that
> the code was better off the way it was.

Yes, please :)

Samuel

