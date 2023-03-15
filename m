Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32823A3
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 07:44:14 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id r4so3949001ilt.8
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 00:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678866253;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g2P5l3PRXHqX+QiOWL/0oAue+Z6Pj8QtoR6jw2ascBI=;
        b=V0NuCkHTjp5KKWGASBM5RzDOWelsmb7Ei+hQNGBBtmwG8rTqUBC+uzI+8Knik9ouWU
         gR3b1NpNVw3QPyfDxHJZKfr9hfQ8e+Oz1BDTVXPPAPNIDLoGxLWeKaic3W49CTVINB58
         9UCBM6jvMAo4C5HakUaQtGXRzBoTU+W03CIjYkr6YD7ugPGX8y0DOrYWmSH3iSPC/FIL
         FrHRmFqDXVkI2TEzPvf1RrR3AT26M1/UursQpbcweKpz5MyFxAVN7BLFhaIpeeke3jkD
         S2ongfsxCMC6XIxF+qeMXoUhE5mA5U5+V3Tz/+5AA2/9rLZjOWMfnmIwpltKyPmevNiN
         YkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678866253;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2P5l3PRXHqX+QiOWL/0oAue+Z6Pj8QtoR6jw2ascBI=;
        b=p73b88vdmxvsPA2mndXOQ647ULA2rYjiYGnGXxwX5VVrnSLZjiya7/G5ndnaQwUdql
         vDBrrNZilymr52vIbuyx9Qr8Ggj3KipI2kxwkl/HacNPEw0S2zYsePJ+34UKKVtsXPTr
         shB2zHOBiQnzBcv65gH80mwp667W/t8I6ieHR6d3ALyASoME/fEkM3snpFh4vd1UBQ1u
         I9Oj4GzEzMvQa1cECkewmwHYX/fR8GpL/HiCV25Tb3BQY94nuPB6lhTmV4975xdcAQdK
         QmGiqBRcUAXtxbQ4+ctRL/ubSCNUS/bVDd0kE7pb55YKhdp5J+Ugf3BI4+LxvjpnmQGX
         VWSQ==
X-Gm-Message-State: AO0yUKU1BRw6pK0UNy555rniqpQP2zupMzxZ1uDrQzsxBfhhjmDvlf7d
	wXH+ou6XeNMhLVIUhxbzYQs=
X-Google-Smtp-Source: AK7set/YpFkyOlOYdC5PWXRfyYp5R8l04S3AAEPkPs/TNcetG5w47PlhJa1nYhtGZFB85dI+0Olmsg==
X-Received: by 2002:a05:6e02:2163:b0:313:e73b:d3dd with SMTP id s3-20020a056e02216300b00313e73bd3ddmr4755773ilv.13.1678866253234;
        Wed, 15 Mar 2023 00:44:13 -0700 (PDT)
Received: from gmail.com ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id 18-20020a920d12000000b003231253132dsm1403197iln.83.2023.03.15.00.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 00:44:12 -0700 (PDT)
Date: Wed, 15 Mar 2023 01:44:10 -0600
From: Mark Heim <questioneight@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <20230315074410.GB224213@gmail.com>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBEIAKymniRkamjr@aschofie-mobl2>

On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> Hi Applicants,
> 
> We want to support you finding cleanups. Today I spent some time
> looking through staging and am working up a small todo list that
> may be useful.

I'm interested in doing the required demo for the kernel. Let
me know what I should do next presupposing there is a list of tasks.

> 
> I posted one such cleanup to Menna because I saw them submit a
> couple of attempts at a first patches.
> 
> I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> their first patches. Keep going! Ask for help finding your second
> patch if needed.
> 
> Anyone else who wants help in finding their first patch, please reach
> out. I imagine their are some folks exploring here, that I haven't
> met on the list yet. 

Hello, that's me! I was originally working on the Outreachy LLVM
project but had short term health problems, and that meant I let
that opportunity get away. 

> 
> Finally, it seems we won't be holding to the traditional 10 cleanup
> patch requirement this round! Please continue your efforts and I'll
> redirect you towards projects after a 'few' cleanup patches are
> accepted into staging.
> 

I have some catching up to do. I dug through a little more
than a page of Linux mailing list messages but was able to
glean a bunch of things that were helpful. These are things like
patch creation best practices, posting on code style, joining
a mailing list, and documentation.

Hope to hear from everyone later.

(here's a question: is it best practice to include 100 percent
of the message pre-insertion of comments, or can I delete some
of the original message?)

> Thanks,
> Alison
> 
> 
> 
