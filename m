X-GM-THRID: 7024064041486123008
X-Received: by 2002:a17:907:1c84:: with SMTP id nb4mr6002607ejc.396.1635432038363;
        Thu, 28 Oct 2021 07:40:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:960a:: with SMTP id gb10ls1758087ejc.0.gmail; Thu,
 28 Oct 2021 07:40:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDlFI8bhT3fJTSKTkYf512Rno8ginRQwODwmvYXV3WfkPmtRCapkXynhXo7rbWVWn2UD7s
X-Received: by 2002:a17:907:3e92:: with SMTP id hs18mr5779346ejc.433.1635432036407;
        Thu, 28 Oct 2021 07:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635432036; cv=none;
        d=google.com; s=arc-20160816;
        b=OWn47ySgaCwEfhFyFG3qbPuUvS+OQFL7HVSkcLP2b4Unui/KIK585GW+8yZgs/nrur
         GRvC/wQhIqnPHdaOoWHI3RbWITijnH5Sl2gBRDAUSh9uAeZvEWHSj/5gOYeon0CIpx9t
         LWF5zonYb5x+6iCQuigcKMfg7VHcxuH/TTjawTyupCEam661igKNSAJOEgtJ9nXNtmlm
         t7R+W3KtcQiiMke44jETwskVS6MFlwU+A0Crz7DFmfXJt8VtliEeg5h5YsrK8soxDniX
         ON6Kq5ib0fZcRqS32+IDoSWAdtYsFGwh9LTqfGydKDN2+ojHYHmWB2o0XFEZelpmCqgL
         YAtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr:ironport-data;
        bh=ZoyeY4Wl6nHdKvNI7kuVoxICG9L5Mdey0U8e+wm+Ah8=;
        b=w0rqpNQkxbZGi0J5EIDkvD7eVAM4hPjdjBL7g96Z0sy/78nW7WibWgf10UgwZUEE7f
         SlyXfyIS3ArHdzjsajnUOXfNXZECc2utjhRrRpXr7uay7g1HHUdsEmBMJVV4oAAvagWL
         Gh8vgUVXhZEwlkpxgSLpx0ZiY4FGnrbvFHmn6jI5anlD3RVtty/JIiLmnFS6hoUCxG9U
         jCqP0TJmCXliVNEtnn8p7MaGAI1XdXO6m0djElotO884UpuvQdkyOewfSAvsge2LDSmV
         ADoKFId3I6PeR2+kcyzpLAPCx1ktFJEm0Vn5rBoImlJ8TZhc2Gd1kF3W2fJY8fMLhJ/A
         DyMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 6si125507edx.5.2021.10.28.07.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 07:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-Data: =?us-ascii?q?A9a23=3Aga/KPqB0g3RQ3BVW/37iw5YqxClBgxIJ4g17XOL?=
 =?us-ascii?q?fU1HrgGkr3mdRn2AfWz2GP/vfYGrzeNggO4q0909V7Z+Ax9UxeLYW3SE0HigS8?=
 =?us-ascii?q?aIpJvzAcxyuZ3vKRiH7ofMOA/w2MrEsF+hpCC+DzvuRGuK59yAljfvYHuCU5NP?=
 =?us-ascii?q?sYUideyc1EU/Ntjozw4bVsqYw6TSIK1vlVeHa+6UzC3f5s9JACV/43orYwP9ZU?=
 =?us-ascii?q?FsejxtD1rA2TagjUFYzDBD5BrpHTU26ByOQroW5goeHq+j/ILGRpgs1/j8tA9+?=
 =?us-ascii?q?/k7v9GqEIau6Pe1bezCMMAu773UMqSi8ai87XMNIedENWgnONls94zNFltJqqS?=
 =?us-ascii?q?A5vMLekdOE1AkgFSX8hVUFB0PqdSZSliuSQxlfBd3rqyvl0C0swPI4w9eN+AGU?=
 =?us-ascii?q?I/vsdQBgDaxyOifi/xrm2UeJrrssmJcjveogYvxlIyizFF/svSpDSBqbH/9lV2?=
 =?us-ascii?q?B8/gcdBGfvRfc0EcSEpZxPFCzVAIFoYC5IWmOaum2nxdCBepFuJpK0xpW/Jw2R?=
 =?us-ascii?q?Z3r/3PcHJUtWORNlJmkuEoWXf4mX0HlccOcD34T6E9G+8w/TTlCz6Xo06ELyj6?=
 =?us-ascii?q?uUshFyV23xVBBAIPXO/oP+kmgu9VshZJkg85CUjt+4x+VatQ927WAe3yENoFDZ?=
 =?us-ascii?q?0t8F4SrJhrljXk+yKs0DJWy4eQyAHc9I88sk7WVQXOpayt4uBLVRSXHe9ExpxL?=
 =?us-ascii?q?oupkA4=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Aw+FPzaOMK6uACMBcTsCjsMiBIKoaSvp037BL?=
 =?us-ascii?q?7TETdfU7SKelfqyV9sjzkCWatN9zYhEdcLK7VJVoKEm0naKdo7N+AV7IZmjbUR?=
 =?us-ascii?q?6TXeZfBPzZslnd8kPFm9K1rZ0QFpSWX+eAb2RHsQ=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.87,190,1631570400"; 
   d="scan'208";a="995267"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2021 16:40:36 +0200
Date: Thu, 28 Oct 2021 16:40:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: vt6655: Introduce `data`
 temporary variable
In-Reply-To: <186358f460f2093dc8a60a8120be3dc6f830c81f.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110281639360.9518@hadrien>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>  <2039159.k92FijXA2m@localhost.localdomain>  <alpine.DEB.2.22.394.2110281332040.9518@hadrien>  <39890856.3BBMun7449@localhost.localdomain>
 <186358f460f2093dc8a60a8120be3dc6f830c81f.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> On Thu, 2021-10-28 at 13:32 +0200, Julia Lawall wrote:
> > Would it be better as data[i] ?
> >
> > Could there be a better name than "data"?  Perhaps "table"?
>
> Hmm, now when I'm thinking about, it indeed looks like a better option.
> I would even say that `data` (or `table`/`init_table`) can be only used
> in the AL7320 case and we can go with `al2230_init_table` for AL2230.
> The line would be 61 characters long, way below the limit.
>
> What do you think?

That would amount to dropping patch 4?  That seems fine.  It is better to
avoid creating aliases.

julia

