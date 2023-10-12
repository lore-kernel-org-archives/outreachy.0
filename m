Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF61863B3
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 05:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IyIohrEJ"
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1c871a095ceso4889085ad.2
        for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 22:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697087694; x=1697692494; darn=lists.linux.dev;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRUIrcAmiAuxgrSpJrLpozQtM7sLAlk6GfQunU9PiRU=;
        b=IyIohrEJmzd+2mrrWcMX8Fx7NMz9C26LBwaQCUjXxBWwcJpr6At1txuAfsFxppsFL+
         xmNxgO+GOR3Tsa4b1egOKeoxSbmWcfMfkVb2l6oIkz1QU8/gPH0cpxBBnMYjhQpiUDAL
         AIrDfJULG1QQyFSJP0Q0wyt7boEiCrFlhKLGQyBo2I1O8MZPibzplXPvVZ5grEQWt/f2
         zjqtzoa8ynf4QHp69SJ7GbTtw3D3W+2POhX1AUBER/q6tJ5gGrW7+uBh5sscdnnxoD8r
         PnHDz9eiACsLNrbyeIKytyZLaxHyh/1/DFa9o1/jpzWfQ+b3kAKuGgbSYaIU3yqtPteX
         MXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697087694; x=1697692494;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRUIrcAmiAuxgrSpJrLpozQtM7sLAlk6GfQunU9PiRU=;
        b=UPE9LY4FpJ5fmfsBVfoGMvDcPgxemwO5nlMeYyljO6TmBvZ8eFYRj8gZY56Yh2wZGP
         Aqkk5SnklInsnVKUyoLLMUz8AYATr66kyvnRYkaFveJqpxpzam2amBnypxFwxJiHLGAR
         /pqOUkq3tImMfJaGPhWmJKIX6TQb5FTPioRv+yOpkaLDyqYitwXqDtWrYVfd/LEdyEIT
         Q8esKz2ArJdXv5oWo545wGmURgScvlxEFGCaEkXPJ1zm2tV3UA1qYKn5ko7g+JnQd3zy
         ADz6p+aHqK5CyX7XHSbfyKGSY6qobfFZWtAvPhwj7oPO0pqZ2J/WXseZlthrE5FgVD/m
         Ux2w==
X-Gm-Message-State: AOJu0Yx2n6/y5wXHyw8i1IO5e8E+8wxSJX/ZiU38cxTAGpeImf+bMvm2
	pMpd3yGY0Cdo9CudLj2Cmro8md3vGzLaOg==
X-Google-Smtp-Source: AGHT+IH8y8HYFQEFT8Vf6APsF7hiUhSPUmtI+QGRLFeEKw2FdhCvjFPbYwiww2TbBvBT/gDfSkdZJg==
X-Received: by 2002:a17:903:264a:b0:1c9:c496:bde3 with SMTP id je10-20020a170903264a00b001c9c496bde3mr4970986plb.53.1697087693864;
        Wed, 11 Oct 2023 22:14:53 -0700 (PDT)
Received: from Negi (2603-8000-b93d-20a0-29fa-db66-4c18-1f0a.res6.spectrum.com. [2603:8000:b93d:20a0:29fa:db66:4c18:1f0a])
        by smtp.gmail.com with ESMTPSA id u18-20020a17090341d200b001c7283d3089sm833444ple.273.2023.10.11.22.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 22:14:53 -0700 (PDT)
Date: Wed, 11 Oct 2023 22:14:52 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] Introduction and a quick question
Message-ID: <20231012051452.GD16374@Negi>
References: <20231012024411.GC16374@Negi>
 <alpine.DEB.2.22.394.2310120633190.3080@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2310120633190.3080@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 12, 2023 at 06:34:15AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 11 Oct 2023, Soumya Negi wrote:
> 
> > Hello!
> >
> > My name is Soumya. I'm one of the applicants to Outreachy's December 2023
> > round. Very excited to get working with everyone here:)
> >
> > For our final application, can we include old patches as well? Or are we to
> > record only recent ones?
> 
> You need to contribute patches in this round.  You can mention previous
> patches in your application, but indicate that they are from a previous
> round.

Got it. Thank you!
> 
> julia
> 
> 
> >
> > Looking forward to contributing,
> > Soumya Negi
> >
> >
> >
