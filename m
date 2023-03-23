Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B0020E6
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 06:29:00 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id bn14so4497952pgb.11
        for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 23:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679552940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ikMiSg/U0UGNIau2rR9QiAlc850HTXumk/E6XUQq3wI=;
        b=dC55QC2Oq6jECIVWYGwjz4R2efaORsTAnmQ4i9Wmp525rOkhAW8Wsw3OWndRfOivxV
         PNMU1Zd5eKXgO9h0+HhZhmaC9RWSpAqLSrb6e9x5auWzorlBWkNASgsbiUQVIS/HZJxa
         EJkVJjRbrqTqWi//04OB2zfV/0ZHEsm5u86sXK10CnHPrTk+e0gLJk2FcARSd+R/Uf06
         SYxm29FuXgYh4ue+mfwkasYf5g4RYxmA5u0WpqQo6J+U55VcsruQczYD12jfrNOQgMJR
         Ni6t0v/k+GK/wF+js2QdeZHFrdNOoMHreW3t/kVEq5Ix4zgaOvlT+e2mlP2JkeajICWO
         pEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679552940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikMiSg/U0UGNIau2rR9QiAlc850HTXumk/E6XUQq3wI=;
        b=y1c1gj9jGXjChjUKD5Lh+5Q9I4wSI5VMWu/YZ1OgyhLYkd7fSsBFSwlJvM/Pem4s9o
         OkpW8bxS5BuIaRXVGOIy3QKvlqbO25wL+68aX7RGLewGEQfSkWKbdXip5jTEzndJorUP
         SNpr35DbUezEj2RAoZEI11HVTREJ7TIcX/c3otm5HG9LhVUSyjHZqR3D+vN50tD+dW1w
         rl7kFK9ArKt9k+xahvSID0cGnLd5R1n0mnXV194+h3lYx4iA0swQVoE9+4lQ3DtPWefu
         lyQX7f59JJh3VoGDlxEsPEHUfO2Ao7UOoNZfTKwvXSW7FRzvPlv5pGdTPNmdHMjFEXXA
         wB2A==
X-Gm-Message-State: AO0yUKXfTfKCbrzeAaZBNdg0SoGvI83+6KwbDpXW1/zKOoM7YG1TEOlF
	A8TZkuXVmGidTOq0ges3kXk=
X-Google-Smtp-Source: AK7set9LTD1w9IaURlecAmX3buru5V2RiRURcn/jvEJwGPj74U6EzRexiW7gIAUa8q6CmOqu0GbdiQ==
X-Received: by 2002:aa7:954a:0:b0:628:642:c533 with SMTP id w10-20020aa7954a000000b006280642c533mr6046420pfq.31.1679552940172;
        Wed, 22 Mar 2023 23:29:00 -0700 (PDT)
Received: from sumitra.com ([117.207.139.205])
        by smtp.gmail.com with ESMTPSA id j20-20020aa78014000000b0062584bdfe50sm10997165pfi.84.2023.03.22.23.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 23:28:59 -0700 (PDT)
Date: Wed, 22 Mar 2023 23:28:53 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Warn on macros with flow control statements
Message-ID: <20230323062853.GB155612@sumitra.com>
References: <20230316080834.GA43491@sumitra.com>
 <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
 <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
 <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch>

On Fri, Mar 17, 2023 at 11:19:12PM -0700, Ira Weiny wrote:
> Julia Lawall wrote:
> > > Based on the flow control I would do something like this.  It is a bit more
> > > verbose but is very clear what is happening.
> > >
> > 
> > Ira, what do you think of my suggestion of
> > 
> > err = err || qlge_fill_seg_(...);
> > 
> > It would avoid 40 lines of ifs, and would still avoid calling
> > qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
> > recall this being done elsewhere, so maybe all the ifs would be
> > preferable.
> 
> Oh sorry.  I miss read your suggestion and I thought it was going to
> continue running qlge_fill_seg_() for all the other calls.  I read this
> as:
> 
> err = err | qlge_fill_seg_(...);
> 
> Not sure why.  Just late I guess.
> 
> Yes your suggestion would work.  I do think it is a bit odd though.
>

Hi Ira,

I would like to know why do you think this is odd? 

PS: I was trying to implement your suggestion and was able to connect to
what julia wrote here. 

For reference this is the link to your suggestion https://lore.kernel.org/outreachy/64154d438f0c8_28ae5229421@iweiny-mobl.notmuch/

Regards,
Sumitra

> Ira
