X-GM-THRID: 6616381756005154816
X-Received: by 2002:a2e:3805:: with SMTP id f5-v6mr925532lja.24.1540716439380;
        Sun, 28 Oct 2018 01:47:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e96:: with SMTP id f22-v6ls671193ljk.0.gmail; Sun, 28
 Oct 2018 01:47:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dwWUfPF3N2W1JaGkqmpK7Duzum0GCKIW4OjTbQA63YKYXY3eAeMdv46G8sB6nywyPiXqN9
X-Received: by 2002:a2e:9c4a:: with SMTP id t10-v6mr21491ljj.16.1540716438373;
        Sun, 28 Oct 2018 01:47:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540716438; cv=none;
        d=google.com; s=arc-20160816;
        b=F+VS6Sy9iCFRVWp4YiDsn1X49Zy/W2ki0AUBgFMAQ2w93IzVx3GAnMdMs0Z8kdIs3C
         cBEFXSZ5U37eG0hciJ7UDGL9kRb9AO0f33JSRw8PvgRZbUXtQhxGUlknORzAxstNTVd9
         SdeUwNegYHCpWoF9zJNc0pSNAO6DsPazN4UB3OaMpHSCsOLy1yXCkoY/DYReDhozb5YJ
         jEe/59O8bHMGs6jQq6YU7NNB60heoRokbIRjz4+K7A3m2KfdnHbyN5j677GyyOHXxVoC
         h51NrCWgk0+kkOOKFcAy/PVJQNbOFrPa06bfRbt0g4M9rV6W/4r78Bw5eMe6Eq9wkvJZ
         RSnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ix6BqwZsGc73lLNjzuTpxIWkJ3C+PqSMDGs0LXPl0gg=;
        b=pI588r1P4c4eesw0mJrvz7OxLLa4dCKfiluINO6nAZ7Ff00oGnWTJNHyshjuhfiDqe
         D21o/ODkHIPFjexVfiFViMokWlWtyBgE6YRugwXrMPAdnXRodXUvY5mGlHS/U9AfOT2b
         UIK4FUqYPy1moYkufEkmYz+BOJ2xikNpfYdsOeKxVRnfISCBmbCpSOJ3pSIG7tpkjDtu
         P5gWJC2PkFo1dpmJJSRO8YuYOy96yxqXrzy1eUyaQoxdKpxVK/kURnc2Z6QDiTOiiAC/
         BgS7Qf0VUOMsI5qEMpipvKU0bXjDZPd4Ln0OHS+ZG86ByLpASA4HTo83I3M00ZIF1AE+
         eOTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i127-v6si252180lfi.1.2018.10.28.01.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 01:47:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,435,1534802400"; 
   d="scan'208";a="283541470"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 09:47:16 +0100
Date: Sun, 28 Oct 2018 09:47:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Sasha Levin <sashal@kernel.org>, 
    Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
In-Reply-To: <20181028075209.GA1938@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.21.1810280932030.2450@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com> <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com> <20181026204225.GH2015@sasha-vm> <20181028075209.GA1938@himanshu-Vostro-3559>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> The "possible alignement issues" in CHECK report is difficult to figure
> out by just doing a glance analysis. :)
>
> Linus also suggested to use bool as the base type i.e., `bool x:1` but
> again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.

If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
int?  But my little experiments suggest that the size is the smallest that
fits the requested bits and alignment chosen by the compiler, regardless of
the type.

bool x:1 has the advantage that anything that is not 0 is considered true.
So for bool x:1, x = 4 is true, while for int x:1, x = 4 is false.

But the :1 adds instructions, so at least for only one bool, where little
space is saved, it is probably not worth it.

julia

