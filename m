Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51AD1373
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 12:10:34 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id d13so9618330pjh.0
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 05:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679227834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=As1ZmldYwSNSTRLCMNu+YmcVM/O57Ua/eapW1aDV7Dg=;
        b=Df5D+TAcoM9mi1MyYKYxNS1AQq3N2YJ4uhtiH5yEVQA4VvhMCH535iE5oGLT74p12F
         vwhEFmAVrVzQWaGLWVqkRIaNqBaO1DPEECiTFHbIxzNHTtkhKcwJVpQgbPKl+yjDynrX
         wAKX+uWWbK4278kKUDRg7oBalL1kpJImKZWgqAh3rZNS+Fv/F55YOBksuuB4SlGOW0Be
         HBSwZB0uyRakaeSxIT0QcZA4jogRj77m8aRqC1oFQrLUwmvcTK7FPlcxVpFkRGGFNeNz
         9wkSRUTqJyoH1CXAdodEalpjQmbhErbk3iFjFB/JKmYcugMwnO5zFAQd0jXBn6YNiowd
         2Uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679227834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=As1ZmldYwSNSTRLCMNu+YmcVM/O57Ua/eapW1aDV7Dg=;
        b=j6IDm8TPASyd9UIgxwamt2GOYJ1+fZ5whpr4foYsBCgn6INXmLPzH6tHicfztpCm4H
         EPqjOXleRd6jItttfcf4RMzV2HlrSWIDSQUEPeWRuv0EtCxH7urtAKceMzwnm94G6mCH
         OmLjlkq05aG7Nq0kbJwWsfqwSF/0EbbwDvUlRs7NIzSGtu4RzmuiOrAFzQ16j2DdN2Rx
         3FH4+G3Oi/bJFVp4T7QflW0nUm7GlC0UoqLRutbm+gg/1YEM4O9H+W/dGNop6UciPMiF
         sZ1RFhcakwHm71QUi6NxEM05S9J/AMErtNZnPOd9WnFneIpMcsYNFjcIVgIIenA8+6WT
         jxzw==
X-Gm-Message-State: AO0yUKXQmdPPfo3VFzb3oz7ebhR1wE8rCHzW3HobhWUnh2k8FiawVgZy
	Vrp1iuYHdEFbSd0Y9ZIV8Ozpkrh2tqcw6Q==
X-Google-Smtp-Source: AK7set8FPeUSd/4l43MTTo/Vt3D8Ep7atWuV7KNcTwcwCZJPyL1i53NHAVty8q78yeMP9D5he5RVQA==
X-Received: by 2002:a17:90a:1a13:b0:23b:4376:f8cb with SMTP id 19-20020a17090a1a1300b0023b4376f8cbmr15575374pjk.26.1679227833960;
        Sun, 19 Mar 2023 05:10:33 -0700 (PDT)
Received: from sumitra.com ([117.209.117.91])
        by smtp.gmail.com with ESMTPSA id j12-20020a17090a840c00b0023371cb020csm3300426pjn.34.2023.03.19.05.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 05:10:32 -0700 (PDT)
Date: Sun, 19 Mar 2023 05:10:26 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230319121026.GA53959@sumitra.com>
References: <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
 <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303190956120.2867@hadrien>

On Sun, Mar 19, 2023 at 09:56:33AM +0100, Julia Lawall wrote:
> Maybe try make tegra_defconfig
>

Hi, 

Error: Can't find default configuration "arch/x86/configs/tegra_defconfig"!

REgards,
SUmitra

> julia
