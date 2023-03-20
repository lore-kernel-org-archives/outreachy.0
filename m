Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83B91846
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 09:53:20 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id p20so11794766plw.13
        for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 02:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679306000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xUbChdCpGg5Ez7sKErWOXkeqVyoRDWt4WzYgw+OTa8I=;
        b=COgnPmIQWzwhrSoxSvpzUnrp7Bv0tj4JotK9xat/Zaenp6RNynwHg7v4zkc1oZkPbm
         3NcKjhxiiMP2Kb1owtHqhmp7jwI0YPwYNf4iQ9Mz9O9ef6IaqV4tqqe+6IYMtwvmLM+l
         Uq6jO3sMmEEWUA5YksSfdnRUf5E04k4RRrLAEyIPhyQawOEGULQ14KnL+/fymdjOh2Mp
         dDh/ZWRaq3uOuq3pmyNjIrylZ2KGM977MNmBBHA51uDdF6GXEQzdTs3aMwMY6+AZuyo0
         wYZu75H5IY26gcUFTZR3guogFA5ZtZ8K6Fa5KtJ7W5mbivzB1kEfIyZlZ5XefQ2yru/r
         JvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679306000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xUbChdCpGg5Ez7sKErWOXkeqVyoRDWt4WzYgw+OTa8I=;
        b=TrZPfEh+QdIjjJTckdGLzaQx8goYoXONE5LA/SEGRhAeuCdeikkrA9V7ju2I8bnhoF
         Y/K5ZvrbRjYrIh8CP0WkUmADqeP3APSr43F7ah+PWiNqKEiR7QgeQdDzAz8xB74AQBwg
         UOH1G2TAdqpuZxqzJFpb+2I1FcQUyDcnNhQCzbJ/EjIl2sVJYK289otmvZhuP+HjfiyA
         N5HHVr/PKKowG1b/lJfra1quE0J9yizngvJ+8WiF/eP3709EfXacNM5cDC5qEIRDloBu
         uf+kMEhOYy1SMvRvt/Eh1utN1reYHO1HSdfMrdngnn9RUxcnYsvViZykEOm/kEg3NM9Z
         EhqA==
X-Gm-Message-State: AO0yUKWqM+3TvvIbQq5Sp1Ake1zjMvD9BInu7Cf5Az5NPdzKrrkge+Dx
	23Xna6dyL6w6Mx0kJ1Eu0uw=
X-Google-Smtp-Source: AK7set+oEWjXLeWKNMFgGfwcxNx18bAOpJ9W+kHudQrMCzEv0gsEb3JxvvajuRvjZp1Mu+MbjLo4Fg==
X-Received: by 2002:a17:902:d507:b0:19a:96ea:3850 with SMTP id b7-20020a170902d50700b0019a96ea3850mr11968761plg.17.1679305999991;
        Mon, 20 Mar 2023 02:53:19 -0700 (PDT)
Received: from sumitra.com ([210.212.97.176])
        by smtp.gmail.com with ESMTPSA id f9-20020a17090274c900b001a1b245f8b4sm4665533plt.236.2023.03.20.02.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 02:53:19 -0700 (PDT)
Date: Mon, 20 Mar 2023 02:53:14 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230320095314.GC126429@sumitra.com>
References: <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
 <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien>
 <20230319121026.GA53959@sumitra.com>
 <alpine.DEB.2.22.394.2303191336090.2867@hadrien>
 <20230320084630.GB126429@sumitra.com>
 <da5bf7f-b8b5-143-8e58-9c1dc4214fad@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da5bf7f-b8b5-143-8e58-9c1dc4214fad@inria.fr>

>>On Mon, 20 Mar 2023, Bagas Sanjaya wrote:

> On 3/20/23 15:46, Sumitra Sharma wrote:
> > Hi julia,
> >
> > This did worked.
> >
> > But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.
> >
>
>> Oh dear, you don't know how to use menuconfig...
>>
>> When you execute `make menuconfig`, you'll be presented with menu when
>> you can choose what config you want to enable. To find the desired config
>> (NVEC_PAZ00 in this case), press `/` and type in the config name. If
>> found, you will see menu location for config symbols that match. Then
>> follow the shown path.

> Actually, this isn't the issue.  You have to have the ARCH=arm as well.
> Otherwise, / provides instructions, but there is no way to follow them.

Yes you are correct locating the mocule in menuconfig is my issue. Do you mean 'make menuconfig ARCH=arm'.

Sorry for such a long thread. :(

Regards,
Sumitra



