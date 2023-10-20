Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4713FE1
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 09:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UHhj2HjC"
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5a7d9d357faso6447947b3.0
        for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 02:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697795387; x=1698400187; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WjssRk+ETr2dkM6wGtPDU2r/AgRuWsEFXlbVuwtAxGE=;
        b=UHhj2HjCseEX4Nliqn6DJBFb9QrtrVeBlTKeyu7uHKYLC4XlESkeMvNmJ6P+wqFem2
         H3JptT2dnVdXobODD/EIJh5e3dh8n9Jp0M2n0Y68dfowPaLGBNhNwBIadn3e58/TPYp1
         vGfG59QTaCV4OJAOQPXNknMjzhrA4xHiOKc1yOUVUwYt8hS1+dpgepihdxOBaynhlO7B
         ksznGO8K4P+n0bp4cDEfhi9dAUdbDxKg2FUHMC5LBw4nxkk6mEjppW67NIiOD7fwToZ7
         8GlL8R63t06SixXXFWH+BhmdknF03pE4jB0rf2vKUC+wspPVMHQbBQgxVa+aQurAuj71
         hnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697795387; x=1698400187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjssRk+ETr2dkM6wGtPDU2r/AgRuWsEFXlbVuwtAxGE=;
        b=iDecOIf1XurylvYJbbZu9fxmjTKkLp62nZzKC+4NNDs391xVvtjVWkEzD5IKFEwUkt
         1YM5m3Uc+SPFx3NG80LpGM8dPeaPepHrpRU2Dg8iAXRRlwzp05UBajs9ycGFZLEKlPkg
         Hfs/OGh6Hr2xHH1S2g09my/ZuF6wh7Xf0RplSw+0gZ8/8LNBHa+oUoQE/9aHJpN0dSUz
         tGTM8+7ELHHpF7p3JSzOsIfjBNK+Ew0NiCispukYfqpyMHNMeVhaDN2FIrbER1KDm0Ht
         v1oUVpx1xyKWrjghjs4SkEG8NOUwlVHRoG6Su8kDsoEOwVPSS94CJwjqNCy3tr9eWwu6
         OQ3Q==
X-Gm-Message-State: AOJu0YyBt7uXAP3eg/yqnDFDVTMUmwcnjyklLbDm+FbHxKAxL0+W8eq+
	Y7oulcHMoQUxDleG0M+ZfBE=
X-Google-Smtp-Source: AGHT+IHqvDQohsTp95TXCf3FYmlA3vbBwTTQCfTKlAeDQIJiQtZ6yKoeTEijp3kvUjwZAAQM1xZ5xg==
X-Received: by 2002:a0d:e84c:0:b0:5a8:277f:b378 with SMTP id r73-20020a0de84c000000b005a8277fb378mr1407415ywe.1.1697795386961;
        Fri, 20 Oct 2023 02:49:46 -0700 (PDT)
Received: from gilbert-PC ([105.112.22.35])
        by smtp.gmail.com with ESMTPSA id i128-20020a815486000000b005a7b785f66bsm557624ywb.39.2023.10.20.02.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 02:49:46 -0700 (PDT)
Date: Fri, 20 Oct 2023 10:49:42 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Outreachy status
Message-ID: <ZTJNNg1CUJx5JQcK@gilbert-PC>
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
> 
Hi Julia,

Thank you for your message. My patch series was accepted. I will do as
you have suggested.

Thanks
Gilbert
