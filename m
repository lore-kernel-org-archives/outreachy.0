Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF70A44
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:33:03 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id le6so9520404plb.12
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 01:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679214783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oQJtI21/SFR0sO0YChZwJzev4KVTVmLvkdFRygIudxg=;
        b=nm6Tm5OK+TTEgo3s1zc71PSqVgs55D++Vkd1eBSMgM1OAVbs+OxkKes84KLRqo8XmG
         5SDoxKY+dmLIm1TT2UVHmccrfPkrllNqA++t8Xas4NrKl3iaddL+y8dur5BO/j31KZS6
         6xEvjEwi2Oh+6miUwqO0wWOLDTHDKrWb6E1xuvGHLJ/Z9xsVsfl01ZDp8adOykC1lgOO
         skTBMw+DkBbyxPZRv/BBgXE1z7W6ZqS+htOBYgOu/T6euCrmK+cxh2N33AnwEZ+nznRy
         7yFuDuzzsnZHKiaQQBxFCU0auQcIEQDnXKl5SI+JBHL1wwxVSkV9lql73ok874HXUBrc
         PHEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679214783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQJtI21/SFR0sO0YChZwJzev4KVTVmLvkdFRygIudxg=;
        b=ILoJY+GEkp1rAiylutgLpH83V6Qv06qmx0HO6ThuqhUHbduYP+hPBPsP96YOYsEVqg
         VU4UyZ0D7YP4p3OJ2lNPLOhMaQPFVXLiBQGcX8Vmtjum2Nr34c5m4qTnio9TR1jQVtdP
         di7waxI/ROMDs2XBDcw1Q0YMrF6mODydVZ8GN7PrOC9L6e+u2hBQkyJzPaGY54gBWW0Y
         hq2lcj8bisoot0FDgieaqUJZaE64wihGL1mIF09ITRBWKmM6Q2w1U0DxisS3U3p+pYEH
         PMO2bGVgk2r3wrLMcICkPpfwCvli5DRrCQiWy22NBL1xdBzCfq3vJCkRJEi2oiqsicHM
         cWXQ==
X-Gm-Message-State: AO0yUKW9t7bSepxNFWxrpLSZsUgsivx3UmtKTwO3v/2TdKzOA4Jc6V/+
	lQxRKW70w5Ja1cyYmkpNx9k+n4301nASpg==
X-Google-Smtp-Source: AK7set+uTuKPk6Wjs0yzI8mJRvXDc5kJSzS7qsXJEQHzli0Yq2sdnyGzFIZGYVyeVKDfpvU2EzcGIQ==
X-Received: by 2002:a17:902:d2c7:b0:19e:65db:7ac3 with SMTP id n7-20020a170902d2c700b0019e65db7ac3mr14149854plc.68.1679214782664;
        Sun, 19 Mar 2023 01:33:02 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id l9-20020a170902d34900b001a064282b11sm4372652plk.151.2023.03.19.01.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 01:33:01 -0700 (PDT)
Date: Sun, 19 Mar 2023 01:32:56 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230319083256.GB50179@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>

On Sun, Mar 19, 2023 at 09:08:01AM +0700, Bagas Sanjaya wrote:
> On 3/19/23 00:57, Sumitra Sharma wrote:
> > Cleaning the build worked for me. Thanks.
> > What do you mean by enabling the NVEC_PAZ00?
> > 
> 
> I mean you should set the config as Y or M (if permitted).
>

Hi I am still not able to locate the driver when I am running the
command 'make menuconfig'. Hence not able to configure it as 'M'.


Regards,

Sumitra
> -- 
> An old man doll... just what I always wanted! - Clara
> 
