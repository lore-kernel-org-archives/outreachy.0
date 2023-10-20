Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4FCB653
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 05:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ArHyavyr"
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6c63588b554so298868a34.0
        for <outreachy@lists.linux.dev>; Thu, 19 Oct 2023 22:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697781590; x=1698386390; darn=lists.linux.dev;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uvYCPjJEO2JrIJsmW/cgtCjdgrALH/zvRIX+Y73GZnM=;
        b=ArHyavyr/u7EWEcxWK+mpifU2JoDy4Mdk6rGGcrApLN+qkki+6yRHMCqOMXWcTWbo3
         MvZfjnrUkhoIgf09WatiONbJD5MuDa2SiAYG9DqGE12mJfsUwhI6neluVQfcuEa2VSd3
         Oh175Ql+//B587i9fzJEtJWEvC1uez5lLiHzrYTU3VrqdCKWxG9kabPBcOvHqij9T2bF
         NvVKFJXLSuoffgXyMcuXeYxYdErRcGRQh/sTltZTu79I7im4K+wx2qBQw3KFxcko+/O2
         aBIiU6jajmJFLe6Z3JQ0sRKsM6J7rhQeWEIaCsg+iqGWPMp7WoZ6ACeC2Sa4a42qwiht
         JcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697781590; x=1698386390;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uvYCPjJEO2JrIJsmW/cgtCjdgrALH/zvRIX+Y73GZnM=;
        b=etAfuJMFotzlErg3JaUKHEK8FvfoV0FnEwgeGzlBoa19ZOakaRbLL/9OVnIXt6ApJc
         jYgxWIPyXJZK/xLO3xsbm1+zunI//Mm0cYL5f5MDa8kcuJa3z+FccA2kF7QTcwJD2kI5
         uSG/z7e2o05oYQlGRB9VfpvuP/8fuWIie7hBNmjf+/296xzV1wyFuDzzsfHGg53yyXWo
         GDvf6vzqJ1yt92mtGq836DPIFbNGOH4WTQrlgJP3/kc2rsp6htXAUO8tKkHEv9LJONSe
         XmgYBb6HKg9kiToeU6ScgoRujOm40KRFeSfficVt1Uy9VjLP7SdliRaEiNNTKiH3De6Q
         XM+Q==
X-Gm-Message-State: AOJu0YynAo0KnUSdwwAzhdoLLiCut4ATyzyOE8q9clrbpeYfJz5ZVyuH
	FJ0E5pgSKYeyznOQJZbNJZz0POGjbgFmdQ==
X-Google-Smtp-Source: AGHT+IHIcm9Jph0fM5qEk188xlIpymdQMQzcSJUB8dSSotKN0mTqlND6SE8WKTOTMm9P//ZWcl3HBw==
X-Received: by 2002:a9d:73c3:0:b0:6bf:1444:966d with SMTP id m3-20020a9d73c3000000b006bf1444966dmr906774otk.1.1697781589786;
        Thu, 19 Oct 2023 22:59:49 -0700 (PDT)
Received: from Negi ([68.181.16.134])
        by smtp.gmail.com with ESMTPSA id x11-20020a634a0b000000b005b529d633b7sm680053pga.14.2023.10.19.22.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 22:59:49 -0700 (PDT)
Date: Thu, 19 Oct 2023 22:59:48 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Outreachy status
Message-ID: <20231020055948.GB27881@Negi>
References: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 20, 2023 at 07:28:04AM +0200, Julia Lawall wrote:
> Hello,
> 
> Thanks everyone (both applicants and reviewers) for all of the
> contributions so far!
> 
> There are 10 days left in the contribution period.  If you have a good
> number of patches either accepted or in the pipeline, please contact
> mentors for projects that you may be interested in.
> 
> If you are interested in more than one project, please feel free to
> contact more than one set of mentors.  In your final application, you can
> apply for more than one project.  But it would be helpful to rank them, if
> you have a preference between them.
> 
> I look forward to seeing your future contributions, and let me know if you
> have any questions.
> 
> julia
Hi Julia,

While recording patchset contributions is mentioning the cover letter in
the decription sufficient or should each patch be recorded in the
application?

Thanks,
Soumya
