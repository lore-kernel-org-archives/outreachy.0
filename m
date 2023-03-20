Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D5B1383
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 08:46:36 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id p20so11640969plw.13
        for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 01:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679301996;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yDwU53DYtPY2PRmOpVdEd/oKY0Ye+ukysbl1+5X/Ebc=;
        b=nxoG03Hpo+nKFQYdzy3xeOM6pX/XF6F36b/UJx5tp5WrVx/PD86yUokvWd3EKPHpDE
         o67EE3ht47AuL2ba3LUkW//utr8IT/n83we/gGh+jxjDAgDGZAiGFI7AQUd5/HJ87vHO
         7mSHFz2IAYjmRnWzvJVl1NXDgzRlJNvZJHhF6Knbtl9QwlKzdE5LX4LFHkh4GB043NGZ
         q2fIBITTQK8fbkGoIJYdba9XP+FuxOKmru6/aWdhCnKHodZlKtW738crX+w2daGN7lTx
         BNC/wGtq5RmbIUgDKM+Wnrs4xzw5izi57Yrz6Z10v2Txz8pDRMcMwvHWHg+FL8aDBZ0a
         jPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679301996;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDwU53DYtPY2PRmOpVdEd/oKY0Ye+ukysbl1+5X/Ebc=;
        b=bNtCnHEDvpstvDm+gX8PnyT3I2tNJUUmT6Mtle6ChJNwXUC+q9maidV9psOF+iZiBc
         l9qSc3wXOxGxnsIRYGYekbNMVKRqJ4Zs6KMI7bDIBCblmdjxR+wyOOYaXIPNZZ7nv9TS
         aPTnhmt4/lpg7QB80YrYAhmQAuAsiQWLKZu5zEaiDOT9KOZxIYPT7820+dZFmiJHfNuu
         sU56X9KeCeKHDHF/AZORuEOfRlFhG03htSOO0BdqZaXl89sJOZOjCmqENXrC0T/INEbm
         Ob2YoBHMXmJous+x2vgTDLCW4RHy3Qo5DHH5ALjEdIvEinzW/N9TZYo75lyreyU5JFnd
         JiAA==
X-Gm-Message-State: AO0yUKV77E5wlyacWcy5SRIgtfO4KHZIubBR6O6TSbW4+fgGmTNVR+KZ
	2ASRcnmpSzkvokw50STl0mvBdOO0OUIZeQ==
X-Google-Smtp-Source: AK7set+v25r3M+v+J8uR61gp01QZesE6ickX4yAUOrd63WKpwUwxDWDgirjYiXXoB2esr9IepLKDdQ==
X-Received: by 2002:a17:902:f552:b0:1a1:cf70:33d5 with SMTP id h18-20020a170902f55200b001a1cf7033d5mr2949264plf.56.1679301996130;
        Mon, 20 Mar 2023 01:46:36 -0700 (PDT)
Received: from sumitra.com ([210.212.97.176])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709027b8100b00199536fbc6fsm6075148pll.280.2023.03.20.01.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 01:46:35 -0700 (PDT)
Date: Mon, 20 Mar 2023 01:46:30 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230320084630.GB126429@sumitra.com>
References: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
 <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien>
 <20230319121026.GA53959@sumitra.com>
 <alpine.DEB.2.22.394.2303191336090.2867@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303191336090.2867@hadrien>

On Sun, Mar 19, 2023 at 01:36:51PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> 
> > On Sun, Mar 19, 2023 at 09:56:33AM +0100, Julia Lawall wrote:
> > > Maybe try make tegra_defconfig
> > >
> >
> > Hi,
> >
> > Error: Can't find default configuration "arch/x86/configs/tegra_defconfig"!
> 
> make ARCH=arm tegra_defconfig
> 
> You can see that because find . -name tegra_defconfig gives:
> 
> ./arch/arm/configs/tegra_defconfig
>

Hi julia,

This did worked.

But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.

Regards,

Sumitra

> julia
> 
> 
> >
> > REgards,
> > SUmitra
> >
> > > julia
> >
