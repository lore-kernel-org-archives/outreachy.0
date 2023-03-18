Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E8F23DA
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 12:49:45 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id bc12so7333766plb.0
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 05:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679143784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2LD4+OM7dgX74STuRb5ihnaBH/rwMJvt0c1UQlCrCRI=;
        b=oQq4Mj2oDXvsM0J4oeSC6v023VjLzNu42ytLCdw1hpOEh6U7MhOXgIEfegufi4L44l
         +jgDAbLqohumreApsU3kBI6NxNOeUYRo28j/QJStnyBux8OfupUfFWEVlzM2dNKJoBjs
         FX2y/LrdGK3+xX9nHU8WzVim+I3RVx7fF//WpbFaQYgiOJQcGPMvcF16FlxRpTPJHYs0
         jT726fHcxIRoCNcvhJQ0Wu2smCqp/c0JTCmqV9nYqSTeB52HtrhWUHoyOtXnnNksrB5Z
         7zcX6/Vi7GGsaLDas8RKHzwQUgBZsbEIGDwGtuMJeXxxRFfbtgnW5EZrMKjh1B7IOCFX
         oa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679143784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2LD4+OM7dgX74STuRb5ihnaBH/rwMJvt0c1UQlCrCRI=;
        b=BEgwc7Uo780AoXLVPmgUrSqZ+LCgmucb/idCuDajBbiFKxf2I3bVH12wxAP55Y6nfR
         XM7OTtzuTDd+GProLuuMkFdJrkRP17Ecq5mlS/RjquZAYEpNFKPcE2ifdc8T4pQ0GG0N
         /6TWxWtCKNHRkigQ3H8PtfHpJUOIDIAZtP62w6cMgm1N16yzstg1k9O3UOH/eGZHhXdl
         L95+egUswrh4YGcwuJll4Z0u4zgFWDW2OeFShBoorxXSrYOZfIdllG8SET//g8RRCAhE
         yg2WEcpM+joOaBP+YQvTnZamriDfQ9pBqGBAx8y4OuyR9jE1/u/IJXILArmwLe/8eqzW
         4qCA==
X-Gm-Message-State: AO0yUKUMIpxCLn2NV+x+Ji80tdAD7b8yeiPa2jVoraqzqDa8sV5ewbWH
	tpLd845eUVKtDtApYxtvgfjJ0ldqmV8=
X-Google-Smtp-Source: AK7set944IL0xcbZNWoA6j6YSH3nwJv0/4pF5EFjaSjD/m0qko8aLepPUdty3LPOcVi1MiQo89g/eQ==
X-Received: by 2002:a17:902:6944:b0:1a0:76d1:545c with SMTP id k4-20020a170902694400b001a076d1545cmr4644471plt.10.1679143784508;
        Sat, 18 Mar 2023 05:49:44 -0700 (PDT)
Received: from sumitra.com ([117.199.163.158])
        by smtp.gmail.com with ESMTPSA id 12-20020a170902c20c00b001a1a07d04e6sm3234395pll.77.2023.03.18.05.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:49:43 -0700 (PDT)
Date: Sat, 18 Mar 2023 05:49:37 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230318124937.GA39892@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>

On Sat, Mar 18, 2023 at 07:34:25PM +0700, Bagas Sanjaya wrote:
> On 3/18/23 19:15, Sumitra Sharma wrote:
> > HI,
> > 
> > I tried your way. Build and Install aarch64-linux-gnu-gcc, added the
> > path and run the command 'make -j2 ARCH=arm
> > CROSS_COMPILE=aarch64-linux-gnu-'
> > 
> 
> The ARCH is wrong. In this case it should have been `ARCH=arm64`.
>

Sorry, for such a silly mistake.

However I run the command "make -j2 ./drARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-" and got 
make[3]: Nothing to be done for 'drivers/staging/nvec/'.

I think  this is because it is not yet created as a module.

This was my initial issue.

Regards,

Sumitra

> 
> -- 
> An old man doll... just what I always wanted! - Clara
> 
